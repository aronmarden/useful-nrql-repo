# CCU Pre/Post Optimization Comparison Query

## Description

This NRQL query compares New Relic's Core Compute Unit (CCU) consumption between two time periods to evaluate the impact of optimization efforts. The query calculates the total CCU consumption before and after optimization, and shows the percentage change for each product capability.

## Purpose

Use this query to:
- Measure the effectiveness of CCU optimization initiatives
- Identify which product capabilities showed the greatest improvement
- Quantify cost savings in terms of CCU consumption

## Query Details

The query:
- Compares two specified time periods (pre and post optimization)
- Filters for the CoreCCU metric
- Excludes certain data categories and product capabilities
- Provides a breakdown by product capability
- Calculates percentage change to easily identify improvements

## Usage

1. Set the time windows by modifying the `SINCE` and `UNTIL` parameters
   - Pre-optimization period: `SINCE '2025-02-01' UNTIL '2025-03-01'`
   - Post-optimization period: `SINCE '2025-03-01' UNTIL '2025-04-01'`

2. Run the query in New Relic's query builder

3. Interpret the results:
   - Positive percentage changes indicate reductions in consumption
   - Negative values indicate increased consumption

## Visualization

This query is best visualized as a table showing:
- Pre-optimization CCU consumption
- Post-optimization CCU consumption
- Percentage change

A bar chart can also be effective for comparing the pre/post values across product capabilities.

## Notes

- Ensure the time periods are of equal length for fair comparison
- This query filters out certain data types (LiveArchive, IAST, etc.) to focus on relevant consumption