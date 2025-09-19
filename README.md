
#  NTI Scholarship Database Project

##  Description

This project is a **complete database system** built from scratch using SQL Server to organize and analyze data of NTI scholarship applicants.
It covers the full data lifecycle: **design → collection → cleaning → loading → querying → insights → storytelling.**

The project demonstrates how **structured data** can generate meaningful insights that support smarter decisions.

---

##  Database Design

The database consists of the following main entities:

* **Person**: applicant’s personal info (name, age, gender, learning style).
* **Education**: university, graduation year, GPA.
* **Track**: available study tracks.
* **Expectation**: applicant’s goals and desired track.
* **Application\_Status**: submission results (Accepted, Pending, Rejected).
* **Skills + Person\_Skills**: applicants’ skills and proficiency levels.
* **Feedback**: evaluations and comments.

Relationships were built using **Foreign Keys** to ensure integrity and consistency.

---

##  Data Collection & Cleaning

* Data collected via a **survey (42 participants)**.
* Performed **data cleaning & transformation**, e.g.:

  * Converted `GraduationYear` from text → numeric.
  * Dropped temporary tables (`Person11`, `Education11` …).
  * Fixed missing values (set unknown names to `"N/A"`).

---

##  Key Queries & Insights

### Sample Questions Answered:

1. Average applicant age + gender distribution.
2. Top GPA applicants.
3. Most popular study tracks ( *Data Analysis ranked first* ).
4. Acceptance rate vs GPA.
5. Students’ goals (career shift, skill development, etc.).

### Insights:

* **Age Distribution** → Applicants include both current students & graduates seeking career change.
* **Learning Styles** → Variety of preferences (hands-on, lectures, self-learning).
* **Gender Balance** → 57% Female vs 43% Male applicants.
* **GPA Trends** → Many applicants have GPA > 3.0, showing strong academic performance.

---

##  Tools & Technologies

* **SQL Server**
* **Excel** (for survey collection)
* **GitHub** (version control & project hosting)

---

##  Reflection & Learnings

This project taught me how to:

* Build a **normalized relational database** from scratch.
* Handle **real, imperfect data** (cleaning, type conversion, missing values).
* Transform **queries into insights** and wrap them into a **data story** instead of just raw results.

---

##  Repository Contents

* `SQL_Scripts/` → database creation & queries.
* `Dataset/` → survey dataset (cleaned version).
* `Presentation/` → project slides.
* `README.md` → project documentation (this file).

---

##  Final Thought

> *This project showed me how even small datasets can tell powerful stories, drive insights, and support smarter decisions.*


