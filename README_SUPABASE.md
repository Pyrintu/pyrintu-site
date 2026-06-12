# Supabase connected

I updated index.html to save waitlist emails directly to your Supabase project using the anon key you provided.

What I added:
- assets/logo-horizontal.svg and assets/logo-square.svg as simple SVG placeholders based on your brand colors.
- supabase/waitlist.sql — SQL to create the waitlist table and permissive RLS policies so the anon key can insert & select.
- index.html updated to use the Supabase JS client and write to the `waitlist` table.

Important notes:
- The anon key is public by design (used in client apps) but do NOT use the Supabase service-role key in the browser.
- Ensure you run the SQL in supabase/waitlist.sql in your Supabase SQL editor to create the table and policies.
- If you prefer strict RLS, adjust the policies and use Edge Functions or server-side endpoints to write to the table.

Next steps I'll take based on your choices:
- Enable GitHub Pages if you asked (I can guide you). Note: CNAME file currently points to pyrintu.software. If you want to map the domain now, ensure DNS A records are set as described in README. Otherwise, remove CNAME before enabling Pages if you don't want to configure DNS yet.
- Add a small dashboard (auth + list) as a static page that uses Supabase Auth (magic link) and reads waitlist entries (you approved G). I'll prepare that next commit.
