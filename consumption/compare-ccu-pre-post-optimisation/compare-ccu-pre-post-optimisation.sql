FROM
    NrConsumption
    JOIN (
        FROM
            NrConsumption
        SELECT
            sum(consumption) AS 'pre-ccu-optimisation'
        WHERE
            metric = 'CoreCCU'
            AND (
                version = '0.4.2'
                OR nr.customerStructure = 'customer_contract'
            )
            AND dimension_dataCategory != 'LiveArchive'
            AND dimension_productCapability != 'IAST'
            AND dimension_productCapability NOT LIKE 'Entities & Relationships%'
            AND dimension_computeType NOT LIKE 'Entity%' FACET dimension_productCapability 
        SINCE '2025-02-01' until '2025-03-01' -- specify the 'pre' time window for the comparison
        LIMIT
            MAX
    ) ON dimension_productCapability
SELECT
    latest (`pre-ccu-optimisation`) as 'pre-ccu-optimisation',
    sum(consumption) AS 'post-alert-optimisation',
    (
        (
            (
                latest (`pre-ccu-optimisation`) - sum(consumption)
            ) / latest (`pre-ccu-optimisation`)
        ) * 100
    ) as '% change'
WHERE
    metric = 'CoreCCU'
    AND (
        version = '0.4.2'
        OR nr.customerStructure = 'customer_contract'
    )
    AND dimension_dataCategory != 'LiveArchive'
    AND dimension_productCapability != 'IAST'
    AND dimension_productCapability NOT LIKE 'Entities & Relationships%'
    AND dimension_computeType NOT LIKE 'Entity%' FACET dimension_productCapability 
SINCE '2025-03-01' until '2025-04-01' -- specify the 'post' time window for the comparison
LIMIT
    MAX