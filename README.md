# Resume Workspace & Directory Index

Welcome to your central **Resume Workspace**! This directory contains your modular resume source files written in [Typst](https://typst.app/), their compiled PDF outputs, synchronized Markdown versions, and reference documents.

---

## 📌 Resume Variants Overview

### `mahendrash/` — Mahendra S H (mahendrashongunti@gmail.com | +91-7892041114)

| Variant | Typst Source | PDF | Markdown |
| :--- | :--- | :--- | :--- |
| **Full-Stack Resume** | [mahendrash_fullstack_resume.typ](mahendrash/mahendrash_fullstack_resume.typ) | [mahendrash_fullstack_resume.pdf](mahendrash/mahendrash_fullstack_resume.pdf) | [mahendrash_fullstack_resume.md](mahendrash/mahendrash_fullstack_resume.md) |
| **Data Analyst Resume** | [mahendrash_data_analyst_resume.typ](mahendrash/mahendrash_data_analyst_resume.typ) | [mahendrash_data_analyst_resume.pdf](mahendrash/mahendrash_data_analyst_resume.pdf) | [mahendrash_data_analyst_resume.md](mahendrash/mahendrash_data_analyst_resume.md) |

### `maahi2001sh-mahendrahongunti/` — Mahendra Hongunti (maahi2001sh@gmail.com | +91-9180165234)

| Variant | Typst Source | PDF | Markdown |
| :--- | :--- | :--- | :--- |
| **Full-Stack Resume** | [mahendrahongunti_fullstack.typ](maahi2001sh-mahendrahongunti/mahendrahongunti_fullstack.typ) | [mahendrahongunti_fullstack.pdf](maahi2001sh-mahendrahongunti/mahendrahongunti_fullstack.pdf) | [mahendrahongunti_fullstack.md](maahi2001sh-mahendrahongunti/mahendrahongunti_fullstack.md) |
| **Data Analyst Resume** | [mahendrahongunti_data_analyst_resume.typ](maahi2001sh-mahendrahongunti/mahendrahongunti_data_analyst_resume.typ) | [mahendrahongunti_data_analyst_resume.pdf](maahi2001sh-mahendrahongunti/mahendrahongunti_data_analyst_resume.pdf) | [mahendrahongunti_data_analyst_resume.md](maahi2001sh-mahendrahongunti/mahendrahongunti_data_analyst_resume.md) |

---

## 📂 Directory Structure

```
reseume-make/
├── mahendrash/                          # Mahendra S H (primary contact)
│   ├── mahendrash_fullstack_resume.typ/pdf/md
│   └── mahendrash_data_analyst_resume.typ/pdf/md
├── maahi2001sh-mahendrahongunti/         # Mahendra Hongunti (alternate contact)
│   ├── mahendrahongunti_fullstack.typ/pdf/md
│   └── mahendrahongunti_data_analyst_resume.typ/pdf/md
├── infosys-documents/                   # Reference documents
│   └── Releving-letter-infosys.pdf
└── README.md
```

---

## 🛠️ Handy Terminal Commands

### Recompile Typst Source to PDF
```bash
# Recompile all resumes in all directories
for d in mahendrash maahi2001sh-mahendrahongunti; do
  for f in "$d"/*.typ; do typst compile "$f" "${f%.typ}.pdf"; done
done
```

### Git Version Control Commands
```bash
# Check modified files
git status

# Commit new edits
git add .
git commit -m "Update skills and experience"
```
