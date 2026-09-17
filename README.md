# Resume Workspace & Directory Index

Welcome to your central **Resume Workspace**! This directory contains your modular resume source files written in [Typst](https://typst.app/), their compiled single-page PDF outputs, synchronized Markdown versions, and reference documents.

---

## 📌 Resume Variants Overview

| Variant Name | Target Role | Typst Source (`.typ`) | Compiled PDF (`.pdf`) | Markdown File (`.md`) |
| :--- | :--- | :--- | :--- | :--- |
| **Java Cloud Full-Stack Resume** | Java 21, Spring Boot, React, Microservices, AWS | [mahendrash_fullstack_resume.typ](mahendrash_fullstack_resume.typ) | [mahendrash_fullstack_resume.pdf](mahendrash_fullstack_resume.pdf) | [mahendrash_fullstack_resume.md](mahendrash_fullstack_resume.md) |
| **General Full-Stack Resume** | Full-Stack Engineer (Alternate Contact) | [mahendrahongunti.typ](mahendrahongunti.typ) | [mahendrahongunti.pdf](mahendrahongunti.pdf) | [mahendrahongunti.md](mahendrahongunti.md) |
| **Data Analyst Resume** | Data Analysis, Power BI, SQL | [mahendrash_data_analyst_resume.typ](mahendrash_data_analyst_resume.typ) | [mahendrash_data_analyst_resume.pdf](mahendrash_data_analyst_resume.pdf) | [mahendrash_data_analyst_resume.md](mahendrash_data_analyst_resume.md) |

---

## 📂 Directory File Inventory

### Primary Source & Output Files
* **[mahendrash_fullstack_resume.pdf](mahendrash_fullstack_resume.pdf)**: Full-stack software engineer resume PDF (Mahendra S H).
* **[mahendrahongunti.pdf](mahendrahongunti.pdf)**: Full-stack software engineer resume PDF (Mahendra Hongunti, alternate contact).
* **[mahendrash_data_analyst_resume.pdf](mahendrash_data_analyst_resume.pdf)**: Data Analyst resume PDF.

### Reference Documents
* **[Releving-letter-infosys.pdf](Releving-letter-infosys.pdf)**: Infosys relieving letter reference.

### Project & Version Control Files
* **`.git/`**: Git repository folder tracking version history.
* **`.gitignore`**: Git rules file excluding `.DS_Store` and build scratch files.

---

## 🛠️ Handy Terminal Commands

### Recompile Typst Source to PDF
```bash
# Recompile Full-Stack Resume
typst compile mahendrash_fullstack_resume.typ mahendrash_fullstack_resume.pdf

# Recompile All Resumes
for f in *.typ; do typst compile "$f" "${f%.typ}.pdf"; done
```

### Git Version Control Commands
```bash
# Check modified files
git status

# Commit new edits
git add .
git commit -m "Update skills and experience"
```
