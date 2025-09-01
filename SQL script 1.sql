CREATE VIEW address
AS
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://pvkadldep1.dfs.core.windows.net/gold/SalesLT/Address/',
        FORMAT = 'DELTA'
    ) AS [result]
