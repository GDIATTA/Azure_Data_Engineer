-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://lakegauss.dfs.core.windows.net/filegauss/Folder2/Newyorkstate1_parquetformat/part-00000-dcc113f0-98e4-4d54-a76f-00b0cefe49cc-c000.snappy.parquet',
        FORMAT = 'PARQUET'
    ) AS [result]
