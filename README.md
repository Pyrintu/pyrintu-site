# Pyrintu — Marketing site (GitHub Pages)

This repository contains the static marketing + demo site for Pyrintu. It's free to host on GitHub Pages.

Contents:
- index.html — landing page and small demo agent UI (mock LLM).
- assets/ — add your logo images:
  - assets/logo-horizontal.png (header)
  - assets/logo-square.png (favicon/social)
  - assets/logo-mark.png (optional)
- manifest.json — PWA manifest.
- CNAME — (optional) contains your domain pyrintu.software. Only add this file if you want to map the repo's Pages site to that domain.

How to deploy (quick):
1. Push these files to the `main` branch of this repository.
2. In the repository Settings -> Pages: set Source to "Deploy from a branch" -> choose `main` and folder `/ (root)`. Save.
3. Your site will be published at `https://<your-github-username>.github.io/<repo-name>/` or at your custom domain if you add DNS records matching the CNAME.

How to connect email capture (free):
- Right now the waitlist form stores emails in the browser (localStorage) as a mock.
- To store emails for real (free), create a free Supabase project and:
  - Create a table `waitlist(email text primary key, created_at timestamptz default now())`
  - Create a Supabase anon key and endpoint and swap the JS snippet in index.html to POST to the Supabase REST endpoint or use supabase-js client.
- I can produce the exact JS snippet for Supabase when you say "Connect Supabase" and provide the project URL and anon key.

Next steps I can take for you (no payment required):
- Wire the form to Supabase (free) — I'll give exact commands and environment variables to set up.
- Add a simple dashboard (static SPA) for logged-in users that uses Supabase Auth (magic link) and shows agent runs (mock) — free to run.
- Produce a zip package with the PNG assets you provided integrated into assets/ (ask for "Package and zip with provided PNGs").
