-- Execute este script no SQL Editor do Supabase.
create table if not exists public.tcc_tasks (
 id text primary key,
 completed boolean not null default false,
 updated_at timestamptz not null default now()
);
insert into public.tcc_tasks (id, completed) values
('1-1', false),
('1-2', false),
('1-3', false),
('1-4', false),
('1-5', false),
('2-1', false),
('2-2', false),
('2-3', false),
('2-4', false),
('2-5', false),
('3-1', false),
('3-2', false),
('3-3', false),
('3-4', false),
('4-1', false),
('4-2', false),
('4-3', false),
('4-4', false),
('4-5', false),
('4-6', false),
('4-7', false),
('4-8', false),
('5-1', false)
on conflict (id) do nothing;
alter table public.tcc_tasks enable row level security;
grant select, update on public.tcc_tasks to anon;
grant select, update on public.tcc_tasks to authenticated;
drop policy if exists "Anyone can read TCC checklist" on public.tcc_tasks;
create policy "Anyone can read TCC checklist" on public.tcc_tasks for select to anon, authenticated using (true);
drop policy if exists "Anyone can update TCC checklist" on public.tcc_tasks;
create policy "Anyone can update TCC checklist" on public.tcc_tasks for update to anon, authenticated using (true) with check (true);
do $$ begin alter publication supabase_realtime add table public.tcc_tasks; exception when duplicate_object then null; end $$;
