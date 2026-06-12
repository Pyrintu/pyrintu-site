-- SQL to create the waitlist table and permissive policies for anon (use in Supabase SQL editor)

create table if not exists public.waitlist (
  email text primary key,
  created_at timestamptz default now()
);

-- If your Supabase project has Row Level Security enabled by default, enable these policies:
alter table public.waitlist enable row level security;

create policy "Allow anon select" on public.waitlist
  for select using (true);

create policy "Allow anon insert" on public.waitlist
  for insert with check (true);

-- Optionally, allow anon delete (not recommended for production):
-- create policy "Allow anon delete" on public.waitlist for delete using (true);
