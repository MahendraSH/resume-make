# Resume Workspace & Directory Index

Welcome to your central **Resume Workspace**! This directory contains your modular resume source files written in [Typst](https://typst.app/), their compiled single-page PDF outputs, synchronized Markdown versions, and reference documents.

---

## 📌 Resume Variants Overview

| Variant Name | Target Role | Typst Source (`.typ`) | Compiled PDF (`.pdf`) | Markdown File (`.md`) |
| :--- | :--- | :--- | :--- | :--- |
| **Java Cloud Full-Stack Resume** | Java 21, Spring Boot, React, Microservices, AWS, Camunda BPM, Apache Camel | [mahendra_sh_fullstack_resume.typ](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_fullstack_resume.typ) | [mahendra_sh_fullstack_resume.pdf](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_fullstack_resume.pdf) | [mahendra_sh_fullstack_resume.md](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_fullstack_resume.md) |
| **Data Analysis & LLMOps Resume** | LLMOps, Data Analysis, Python, Advanced SQL, Langfuse, Power BI, F1/Drift Metrics | [mahendra_sh_data_analysis_fullstack_resume.typ](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_data_analysis_fullstack_resume.typ) | [mahendra_sh_data_analysis_fullstack_resume.pdf](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_data_analysis_fullstack_resume.pdf) | [mahendra_sh_data_analysis_fullstack_resume.md](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_data_analysis_fullstack_resume.md) |
| **Remote Full-Stack Resume** | Remote Software Engineering | [mahendra_sh_remote.resume.typ](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_remote.resume.typ) | [mahendra_sh_remote.resume.pdf](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_remote.resume.pdf) | — |
| **Standard Resume Variant** | General Software Engineer | [mahendra_sh_resume.typ](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_resume.typ) | [mahendra_sh_resume.pdf](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_resume.pdf) | — |

---

## 📂 Directory File Inventory

### Primary Source & Output Files
* **[mahendra_sh_fullstack_resume.pdf](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_fullstack_resume.pdf)**: Main 1-page full-stack software engineer resume PDF.
* **[mahendra_sh_data_analysis_fullstack_resume.pdf](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_data_analysis_fullstack_resume.pdf)**: Tailored 1-page PDF for LLMOps & Data Analysis roles (NavaX / ArisGlobal IJB target).
* **[mahendra_sh_fullstack_resume.typ](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_fullstack_resume.typ)**: Typst layout source code for the full-stack resume.
* **[mahendra_sh_data_analysis_fullstack_resume.typ](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_data_analysis_fullstack_resume.typ)**: Typst layout source code for the LLMOps resume.
* **[mahendra_sh_fullstack_resume.md](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_fullstack_resume.md)** & **[mahendra_sh_data_analysis_fullstack_resume.md](file:///Users/mahendra/Desktop/reseume-make/mahendra_sh_data_analysis_fullstack_resume.md)**: Clean Markdown versions for easy copy-pasting into online job application forms.

### Reference Documents
* **[my-new-reusme.pdf](file:///Users/mahendra/Desktop/reseume-make/my-new-reusme.pdf)**: Raw imported resume draft reference.
* **[Releving-letter-infosys.pdf](file:///Users/mahendra/Desktop/reseume-make/Releving-letter-infosys.pdf)**: Infosys relieving letter reference.

### Project & Version Control Files
* **`.git/`**: Git repository folder tracking version history.
* **`.gitignore`**: Git rules file excluding `.DS_Store` and build scratch files.

---

## 🛠️ Handy Terminal Commands

### Recompile Typst Source to PDF
```bash
# Recompile Full-Stack Resume
typst compile mahendra_sh_fullstack_resume.typ mahendra_sh_fullstack_resume.pdf

# Recompile Data Analysis / LLMOps Resume
typst compile mahendra_sh_data_analysis_fullstack_resume.typ mahendra_sh_data_analysis_fullstack_resume.pdf
```

### Verify PDF Page Count (Must be 1 Page)
```bash
python3 -c "import pypdf; print('Pages:', len(pypdf.PdfReader('mahendra_sh_fullstack_resume.pdf').pages))"
python3 -c "import pypdf; print('Pages:', len(pypdf.PdfReader('mahendra_sh_data_analysis_fullstack_resume.pdf').pages))"
```

### Git Version Control Commands
```bash
# Check modified files
git status

# Commit new edits
git add .
git commit -m "Update skills and experience"

# View version history
git log --oneline
```
