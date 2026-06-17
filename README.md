# jpaek1002.github.io

Personal website of Jay Paek, built with [Jekyll](https://jekyllrb.com/) and
deployed to GitHub Pages.

## Structure

```
_config.yml            Site configuration + nav menu
_layouts/              default / page / post templates
_posts/                Blog posts (YYYY-MM-DD-blog.md)
assets/css/style.css   Stylesheet
index.md               Home / About me
experience.md          Experience
projects.md            Projects
courses.md             Courses
publications.md        Publications
resources.md           Resources
blog.md                Blog index (lists _posts)
images/ projects/ evaluations/ resources/ blogs/ FullCV.pdf
                       Static assets (PDFs, photos, post images)
```

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Then open <http://localhost:4000>. (Jekyll 4 is used locally and in CI.)

## Deployment

Deploys automatically on every push to `main` via the workflow in
`.github/workflows/jekyll.yml`.

One-time setup: in the repo **Settings → Pages**, set **Source** to
**GitHub Actions**. (This site previously published from the `/docs` folder,
which has been removed.)

## Writing a blog post

Add a file to `_posts/` named `YYYY-MM-DD-blog.md`:

```markdown
---
layout: post
title: "Month Dayth, Year"
subtitle: "Optional week/context line"
---

Body in Markdown. Inline HTML is fine for floated images, tables, and embeds.
```

Helpers available in `style.css`:

- `<figure class="imgfloat">…</figure>` — left-floated image with text wrap
  (follow the wrapped section with `<div class="clear"></div>`).
- `<div class="video shorts">…</div>` — responsive YouTube embed.
- `<div class="table-scroll">…</div>` — horizontally scrollable table on mobile.
