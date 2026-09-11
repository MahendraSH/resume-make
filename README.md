# Resume Workspace & Directory Index

Welcome to your central **Resume Workspace**! This directory contains your modular resume source files written in [Typst](https://typst.app/), their compiled single-page PDF outputs, synchronized Markdown versions, and reference documents.

---

## 📌 Resume Variants Overview

| Variant Name | Target Role | Typst Source (`.typ`) | Compiled PDF (`.pdf`) | Markdown File (`.md`) |
| :--- | :--- | :--- | :--- | :--- |
| **Java Cloud Full-Stack Resume** | Java 21, Spring Boot, React, Microservices, AWS | [mahendrash_fullstack_resume.typ](mahendrash_fullstack_resume.typ) | [mahendrash_fullstack_resume.pdf](mahendrash_fullstack_resume.pdf) | [mahendrash_fullstack_resume.md](mahendrash_fullstack_resume.md) |
| **Fullstack AI Resume** | Fullstack, AI Integrations | [mahendrash_fullstack_ai_resume.typ](mahendrash_fullstack_ai_resume.typ) | [mahendrash_fullstack_ai_resume.pdf](mahendrash_fullstack_ai_resume.pdf) | [mahendrash_fullstack_ai_resume.md](mahendrash_fullstack_ai_resume.md) |
| **Backend & Data Engineer Resume** | Data Engineering, Advanced SQL, Python | [mahendra_sh_data_engineer_resume.typ](mahendra_sh_data_engineer_resume.typ) | [mahendra_sh_data_engineer_resume.pdf](mahendra_sh_data_engineer_resume.pdf) | [mahendra_sh_data_engineer_resume.md](mahendra_sh_data_engineer_resume.md) |
| **Data Analyst Resume** | Data Analysis, Power BI, SQL | [mahendrash_data_analyst_resume.typ](mahendrash_data_analyst_resume.typ) | [mahendrash_data_analyst_resume.pdf](mahendrash_data_analyst_resume.pdf) | [mahendrash_data_anaylist.md](mahendrash_data_anaylist.md) |

---

## 📂 Directory File Inventory

### Primary Source & Output Files
* **[mahendrash_fullstack_resume.pdf](mahendrash_fullstack_resume.pdf)**: Main 1-page full-stack software engineer resume PDF.
* **[mahendrash_fullstack_ai_resume.pdf](mahendrash_fullstack_ai_resume.pdf)**: Fullstack and AI Engineer resume PDF.
* **[mahendra_sh_data_engineer_resume.pdf](mahendra_sh_data_engineer_resume.pdf)**: 1-page PDF for Backend & Data Engineering roles.
* **[mahendrash_data_analyst_resume.pdf](mahendrash_data_analyst_resume.pdf)**: 1-page PDF for Data Analyst roles.

### Reference Documents
* **[Releving-letter-infosys.pdf](Releving-letter-infosys.pdf)**: Infosys relieving letter reference.
* **[demo.ts](demo.ts)**: Demo TypeScript script for checking skill categorization.

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
