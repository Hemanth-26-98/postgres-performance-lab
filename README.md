# PostgreSQL Performance Lab

## 🚀 Objective
This project demonstrates SQL query optimization and performance tuning using PostgreSQL.

## 📊 Dataset
- 10,000 users
- 50,000 orders

## 🐢 Slow Query
A join query without indexing causes performance issues when filtering large datasets.

## ⚡ Optimization
- Added indexes on:
  - orders(status)
  - orders(user_id)
- Improved query performance significantly

## 🧠 Key Concepts
- Query Optimization
- Indexing
- Execution Plans (EXPLAIN ANALYZE)
- Join Performance

## 🛠️ Tech Stack
- PostgreSQL

## ▶️ How to Run
1. Run schema.sql
2. Run data.sql
3. Execute slow_queries.sql
4. Apply indexes from optimized_queries.sql

## 📌 Learnings
- Indexing reduces query execution time
- Understanding execution plans is crucial
- Database performance is critical for scalable systems

- ## 📈 Performance Analysis

Used EXPLAIN ANALYZE to compare query execution.

### Before Index
- Sequential Scan (slow)

### After Index
- Index Scan (fast)

---

## 🚀 Results

- Query execution improved after indexing
- Reduced execution time significantly
- Improved join performance on large dataset

---

## 🔍 Problem vs Solution

### Problem

## 📊 Performance Impact

- Before indexing: Sequential Scan (higher execution time)
- After indexing: Index Scan (reduced execution time)
- Improved query performance on large dataset (50k+ rows)

- ## 🧪 Real-world Scenario

This project simulates a production scenario where large datasets cause slow queries, and indexing is used to optimize performance.
Query was slow due to lack of indexing on large dataset.

### Solution
Added indexes on frequently used columns:
- orders(status)
- orders(user_id)
