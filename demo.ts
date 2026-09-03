
const SKILL_CATEGORIES = [
  {
    category: "Languages",
    skills: ["Java", "JavaScript", "TypeScript", "SQL", "HTML/CSS" , "c", "c++"]
  },
  {
    category: "Frameworks & Libs",
    skills: ["React.js", "Next.js", "Spring Boot", "Spring Batch", "Astro", "Express.js", "Tailwind CSS", "Shadcn UI", "Redux" , "Node.js" , "express.js" , "Tanstak-query" ,"react-table",'react-hook-form', "zod"]
  },
  {
    category: "Databases & ORM",
    skills: ["PostgreSQL", "MySQL", "MongoDB", "Prisma" , "SQLite" , "Sequelize"  ,"Drizzle ORM"]
  },
  {
    category: "Tools & DevOps",
    skills: ["AWS SQS", "Camunda BPM", "Git", "GitHub", "RESTful APIs", "JWT", "Cloudinary"]
  },
  {
    category: "Others",
    skills: ["zed", "vscode", "intellij" , "ai-agnents" , "ai-chart"]
  }
]
const skills = SKILL_CATEGORIES.flatMap(cat => cat.skills)

console.log(skills)
