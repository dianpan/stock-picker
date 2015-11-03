# stock-picker
Quick and dirty algorithms to identify which stocks might be high performing.

## Objectives
- Learn things
  - backend processing
    - cron jobs
    - offline processing
    - db
  - external apis
    - YQL
  - working in independent / limited mentoring environment
  - testing / evaluation
  - using design docs

## Overview
### Phase 1 Goals
- Create a database to store historical stock information
- Populate db with all stock symbols on Nasdaq, NYSE, American stock exchanges
- Create and use tool to populate db with historical prices
- Configure nightly cron job to run tool each night and update db with latest price data
- Create tool to compute [a single, pick one] buy/sell metric for a stock
- Create evaluation tool to evaluate metric quality based on historical data

### Phase 1 Stretch
- Create automated job to compute metric results for all stocks on daily basis
- Create tool to select highest scoring stocks and provide list of recommended stock picks

### Phase 1 Non goals
- Robotic / automatic trading
- Monitoring / alerts
- Etrade integration / oauth
- D3 / HighCharts stock data visualization
- Use React.js to create homepage
- Multiple buy/sell metrics

### System Architecture
![alt tag](https://raw.github.com/username/projectname/branch/path/to/img.png)

### Component Design
- Symbol Seeder Tool
  - Should be idempotent
  - Input: CSV file containing stock symbol info
  - Output: stock symbol stored in Stock table

- Scraper #1
  - Input: stock symbols
  - Output: start date of stock, end date (if any)

- Scraper #2
  - Input: stock symbol, start date, end date or current day’s date
  - Output: stock quote data as JSON objects to store in Quotes table