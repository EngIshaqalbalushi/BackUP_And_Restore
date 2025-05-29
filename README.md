# SQL Server Backup & Recovery Practice

## 📘 Project Overview

This project demonstrates practical knowledge and application of different SQL Server backup types, including:
- Full Backup
- Differential Backup
- Transaction Log Backup
- Copy-Only Backup
- File/Filegroup Backup (theoretical only)

It also includes:
- SQL scripts to perform backup operations
- A real-world hospital backup schedule simulation
- Full database recovery from a simulated crash
- Reflections and answers to critical recovery-related questions

---

## 🧠 Part 1: Research – SQL Server Backup Types

### 🔹 Full Backup
- **When used**: Weekly or as a base for other backups.
- **What it includes**: Entire database.
- **Pros**: Complete, easy to restore.
- **Cons**: Time-consuming, large size.
- **Example**: Banking system – Sunday night full backups.

### 🔹 Differential Backup
- **When used**: Daily between full backups.
- **What it includes**: Changes since the last full backup.
- **Pros**: Faster and smaller than full.
- **Cons**: Requires latest full backup.
- **Example**: E-learning platform – nightly differential backups.

### 🔹 Transaction Log Backup
- **When used**: Frequently (e.g., hourly) for minimal data loss.
- **What it includes**: All changes in the transaction log since the last log backup.
- **Pros**: Point-in-time recovery, minimal loss.
- **Cons**: Requires FULL recovery model, multiple files to restore.
- **Example**: Ticketing system – hourly backups during sales.

### 🔹 Copy-Only Backup
- **When used**: Ad hoc backups without disrupting backup chain.
- **What it includes**: Same as full/diff, but isolated.
- **Pros**: Safe for testing.
- **Cons**: Can’t be used as part of differential/log backup chains.
- **Example**: Testing backup for dev migration.

### 🔹 File/Filegroup Backup
- **When used**: Large databases; backup specific parts.
- **What it includes**: Specific files or filegroups.
- **Pros**: Flexible for large DBs.
- **Cons**: Complex restores.
- **Example**: Multi-terabyte hospital record system.

---

## 🧪 Part 2: Practice – Backup TrainingDB

### 🔨 SQL Script Summary

1. **Create DB & Table**
```sql
CREATE DATABASE TrainingDB;
USE TrainingDB;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    EnrollmentDate DATE
);
INSERT INTO Students VALUES
(1, 'Sara Ali', '2023-09-01'),
(2, 'Mohammed Nasser', '2023-10-15');
