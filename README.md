# INFO 531 — Assignment 2 (Week 3): SQL DDL/DML & Joins
**Course:** Data Warehousing and Analytics in the Cloud (Master’s in MIS/ML, University of Arizona)  

**Repo area:** `assignment-02-sql-worker/`

## What’s here
- `scripts/worker.sql` — full DDL + inserts + queries (Q1–Q20).
- `deliverables/INFO531_Assignment_Week3.pdf` — PDF submission with screenshots/results.

## Task summary
You’ll build a **Worker** database in MySQL, load tables per the physical model, and answer Q1–Q20 with SQL that **explicitly specifies join types**.

### Schema objects created
- `Worker.Department`
- `Worker.Employee`
- `Worker.Equipment`
- `Worker.EmployeeEquipment` (junction)
- `Worker.Training`
- `Worker.EmployeeTraining` (junction)
- `Worker.Trainer`

### Queries covered
- Single-row and multiple-row subqueries
- INNER/LEFT joins across Employee/Department/Equipment/Training/Trainer
- DISTINCT, ORDER BY, and filtered selections

## Quick start

### 1) Create DB & load everything (CLI)
```bash
mysql -u <user> -p
SOURCE scripts/worker.sql;
```

### 2) Or run in MySQL Workbench

* Open `scripts/worker.sql`
* Run all; you should see created tables and result sets for Q1–Q20.

> **Important:** The assignment requires that all table definitions and data displays are done via SQL (no GUI table designers). All joins must use explicit `JOIN` syntax (`INNER JOIN`, `LEFT JOIN`, etc.).

## File structure

```
├── Dataset
│   └── employee_data.xlsx
├── INFO531_Assignment_Week3.pdf
├── README.md
├── deliverables
└── scripts
    └── worker.sql

```

## Notes

* `worker.sql` is idempotent-friendly if you DROP the schema first or run in a fresh instance.
* All rows are ordered by PK(s) in outputs, as requested.
* Trainer-last-name check (NULL/empty) is included per spec.

```

---

