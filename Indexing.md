# Index Structure of Database
## Outline
1. Single level ordered indexes
2. multi-level indexes
3. multiple dimensional indexes

## Introduction of index stucture
1. Index file is the secondary file (relational tables are primary file)
2. Defined according to indexing fields(根據特定欄位建立index)
3. 以disk block而非record為單位搜尋


## Single Level ordered indexes
### Two criteria for us to divide ways of single level indexing: 
1. Whether primary file is sorted according to primary key
2. Whether the index file is created according to indexing field (Primary file所根據排序的欄位是否是indexing field)

| Types of indexing | Index field used for Physical Ordering of the file | Index field not used for Physical Ordering of the file |
| -------- | -------- | -------- |
| Index field is key     | Primary Index     | Secondary Index (Key)     |
| Index field is not key    | Clustering Index     | Secondary Index (NonKey)     |

## Four Ways of Indexing
1. Primary Index:
    * Property: Primary file is sorted accoding to primary key, which is also the indexing column. 
    * Since we don't have **repeated value** in the column and the **column is sorted**, we only need to store the first value of each block(Anchor record).
2. Clustering Index:
    * Property: Primary file is sorted accoding to indexing field, but the indexing field is not the key.
    * Indexing structure: The index file stores the **non-repeated value** and the block pointer points to **the block the first value located**.
3. Secondary Index(Key):
    * Property: The **indexing field is Key**, but Primary file is **not sorted by the indexing field**.
    * Store all the key's value in indexing file and the corresponding block pointer points to the block the key located.
4. Secondary Index(NonKey)
    * Property: The indexing field is **not Key**, but Primary file is **not sorted by the indexing field**.
    * Since there are repeated values, Secondary Index(NonKey) uses additional blocks to record block pointers. The composition is as fellows:
        * **Index file**: record the non-repeated field value and the block poitners point to the block of poitners.
        * **Blocks of block pointers**: record the locations of the data in the data file.



## Why indexing can make query searching more efficient
1. After building index files, DB will search the values in index files and index files normally will be **smaller** than data file. So the searching efficiency will increase.
2. The usage of **B+ Tree** and B+ Tree allows us to seach index more efficienly by building tree structure.