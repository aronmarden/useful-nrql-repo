# Useful NRQL Queries

This repository contains a collection of useful NRQL (New Relic Query Language) queries that I've created and found valuable over time.

## About

NRQL is New Relic's query language that allows you to retrieve, analyze, and visualize data stored in the New Relic Database (NRDB). This repository serves as a personal collection of queries that I reference regularly.

## Repository Structure

The repository is organised into categories based on the type of data or use case:

```
useful-nrql-repo/
├── infrastructure/
├── apm/
├── browser/
├── mobile/
├── synthetics/
├── consumption/
└── custom/
```

Each directory contains queries specific to that domain.

## Usage

Each query file includes:
- Description of what the query does
- The NRQL query itself
- Any parameters that need to be modified
- Example output or visualization information (when relevant)

## Examples

```sql
# Application Error Rate
SELECT count(*) as 'Errors', percentage(count(*), WHERE error is true) as 'Error Rate' FROM Transaction WHERE appName = 'YOUR_APP_NAME' SINCE 1 day ago TIMESERIES
```

## Contributing

Feel free to add new queries that you find useful:

1. Create a new file in the appropriate category directory
2. Include a descriptive name for the query
3. Add comments explaining what the query does and how to use it
4. Test the query to ensure it works as expected

## Resources

- [New Relic NRQL Documentation](https://docs.newrelic.com/docs/query-your-data/nrql-new-relic-query-language/get-started/introduction-nrql-new-relics-query-language/)
- [NRQL Syntax Reference](https://docs.newrelic.com/docs/query-your-data/nrql-new-relic-query-language/get-started/nrql-syntax-components-functions/)

## License

This repository is available for anyone to use and contribute to.

aronmarden: can you provide this entierly in a markdown format that I can copy and paste, right now that isn't in an easy to copy format 

GitHub Copilot: # Useful NRQL Queries

This repository contains a collection of useful NRQL (New Relic Query Language) queries that I've created and found valuable over time.

## About

NRQL is New Relic's query language that allows you to retrieve, analyze, and visualize data stored in the New Relic Database (NRDB). This repository serves as a personal collection of queries that I reference regularly.

## Repository Structure

The repository is organized into categories based on the type of data or use case:

```
useful-nrql-repo/
├── infrastructure/
├── apm/
├── browser/
├── mobile/
├── synthetics/
└── custom/
```

Each directory contains queries specific to that domain.

## Usage

Each query file includes:
- Description of what the query does
- The NRQL query itself
- Any parameters that need to be modified
- Example output or visualization information (when relevant)

## Examples

```sql
# Application Error Rate
SELECT count(*) as 'Errors', percentage(count(*), WHERE error is true) as 'Error Rate' FROM Transaction WHERE appName = 'YOUR_APP_NAME' SINCE 1 day ago TIMESERIES
```

## Contributing

Feel free to add new queries that you find useful:

1. Create a new file in the appropriate category directory
2. Include a descriptive name for the query
3. Add comments explaining what the query does and how to use it
4. Test the query to ensure it works as expected

## Resources

- [New Relic NRQL Documentation](https://docs.newrelic.com/docs/query-your-data/nrql-new-relic-query-language/get-started/introduction-nrql-new-relics-query-language/)
- [NRQL Syntax Reference](https://docs.newrelic.com/docs/query-your-data/nrql-new-relic-query-language/get-started/nrql-syntax-components-functions/)

## License

This repository is available for anyone to use and contribute to.