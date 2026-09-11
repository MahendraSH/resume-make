import re
import glob

def process_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # 1. Update text fill colors to black/dark gray, removing blue/slate
    content = re.sub(r'fill:\s*rgb\("#1e293b"\)', 'fill: rgb("#000000")', content)
    content = re.sub(r'fill:\s*rgb\("#0f172a"\)', 'fill: rgb("#000000")', content)
    content = re.sub(r'fill:\s*rgb\("#0284c7"\)', 'fill: rgb("#000000")', content)
    content = re.sub(r'fill:\s*rgb\("#475569"\)', 'fill: rgb("#000000")', content)
    content = re.sub(r'fill:\s*rgb\("#64748b"\)', 'fill: rgb("#000000")', content)
    content = re.sub(r'#let primary-color = rgb\("#00509E"\)', '#let primary-color = rgb("#000000")', content)

    # 2. Update Headers to use MAHENDRA S H and one line for links
    content = re.sub(r'\[Mahendra S H\]', '[MAHENDRA S H]', content)
    
    # 3. Fix line breaks in the header links (for Group 1 & 2)
    # We want to replace the '\' in the middle of the links with ' | '
    # It's usually like: ] \ \n #link
    content = re.sub(r'\]\s*\\\n\s*#link', '] | #link', content)

    # 4. Replace group 1 macros
    # section-divider
    content = re.sub(
        r'#let section-divider = line\(length: 100%, stroke: 0\.5pt \+ rgb\("#cbd5e1"\)\)',
        r'#let section-divider = line(length: 100%, stroke: 0.5pt + rgb("#000000"))',
        content
    )
    
    # section
    section_g1 = r'#let section\(title\) = \{\n\s*v\(1pt\)\n\s*text\(size: 9\.5pt, weight: "bold", fill: rgb\("#0284c7"\) \|\| rgb\("#000000"\)\)\[#title\].*?\n\s*v\(-7pt\)\n\s*section-divider\n\s*v\(0\.5pt\)\n\}'
    content = re.sub(
        r'#let section\(title\) = \{\n\s*v\(1pt\)\n\s*text.*?\[#title\].*?\n\s*v\(-7pt\)\n\s*section-divider\n\s*v\(0\.5pt\)\n\}',
        '#let section(title) = {\n  v(1pt)\n  text(size: 9.5pt, weight: "bold", fill: rgb("#000000"))[#upper(title)]\n  v(-7pt)\n  section-divider\n  v(0.5pt)\n}',
        content,
        flags=re.DOTALL
    )

    # work-item-header
    work_item_g1 = r'#let work-item-header\(company, location, date, role\) = \{\n\s*grid\(.*?\n\s*\)\n\}'
    replacement_work_item = '''#let work-item-header(company, location, date, role) = {
  text(weight: "bold", size: 8.5pt)[#company] + [ --- ] + text(weight: "bold", size: 8.5pt)[#role] + [ | ] + text(size: 8.5pt)[#date | #location]
  v(2pt)
}'''
    content = re.sub(r'#let work-item-header\(company, location, date, role\) = \{.*?\n\}', replacement_work_item, content, flags=re.DOTALL)

    # project-item
    project_item_g1 = r'#let project-item\(title, tech, date\) = \{.*?\n\}'
    replacement_project_item = '''#let project-item(title, tech, date) = {
  text(weight: "bold", size: 8.5pt)[#title] + if tech != "" [ --- #tech ] else []
  v(2pt)
}'''
    content = re.sub(r'#let project-item\(title, tech, date\) = \{.*?\n\}', replacement_project_item, content, flags=re.DOTALL)

    # 5. Replace group 2 macros
    # section
    content = re.sub(
        r'#let section\(title\) = \{\n\s*v\(8pt, weak: true\)\n\s*text.*?\[#title\]\n\s*v\(-8pt\)\n\s*line\(length: 100%, stroke: 0\.5pt \+ rgb\("#CCCCCC"\)\)\n\s*v\(2pt, weak: true\)\n\}',
        '#let section(title) = {\n  v(8pt, weak: true)\n  text(size: 11pt, weight: "bold", fill: primary-color)[#upper(title)]\n  v(-8pt)\n  line(length: 100%, stroke: 0.5pt + rgb("#000000"))\n  v(2pt, weak: true)\n}',
        content,
        flags=re.DOTALL
    )

    # item
    item_g2 = r'#let item\(title, date, location, subtitle: none\) = \{.*?\n\}'
    replacement_item = '''#let item(title, date, location, subtitle: none) = {
  [
    #text(weight: "bold")[#title]
    #if subtitle != none [
       --- #text(weight: "bold")[#subtitle]
    ]
    #if date != none and date != "" [
       | #date
    ]
    #if location != none and location != "" [
       | #location
    ]
  ]
  v(2pt)
}'''
    content = re.sub(r'#let item\(title, date, location, subtitle: none\) = \{.*?\n  \]\n\}', replacement_item, content, flags=re.DOTALL)
    # the regex above is tricky. Let's simplify with DOTALL from #let item to the first \n} that closes it.
    
    # project
    project_g2 = r'#let project\(title, tech\) = \{.*?\n\}'
    replacement_project = '''#let project(title, tech) = {
  [
    #text(weight: "bold")[#title]
    #if tech != none and tech != "" [
       --- #tech
    ]
  ]
  v(2pt)
}'''
    content = re.sub(r'#let project\(title, tech\) = \{.*?\n\}', replacement_project, content, flags=re.DOTALL)

    # Clean up Linkedin and Github texts in links
    content = re.sub(r'linkedin\.com/in/[a-zA-Z0-9-]+', 'LinkedIn', content)
    content = re.sub(r'github\.com/[a-zA-Z0-9-]+', 'GitHub', content)
    
    with open(filepath, 'w') as f:
        f.write(content)
        
    print(f"Processed {filepath}")

for filepath in glob.glob('/Users/mahendra/Desktop/reseume-make/*.typ'):
    process_file(filepath)
