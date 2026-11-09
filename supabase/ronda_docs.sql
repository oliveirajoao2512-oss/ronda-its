create table if not exists public.ronda_docs (
  coll text not null check (coll in ('config','programacao','ronda','reimpressao','assinatura')),
  id text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (coll, id)
);
alter table public.ronda_docs enable row level security;
create policy "ronda_docs leitura" on public.ronda_docs for select to anon, authenticated using (true);
create policy "ronda_docs inserir" on public.ronda_docs for insert to anon, authenticated with check (true);
create policy "ronda_docs alterar" on public.ronda_docs for update to anon, authenticated using (true) with check (true);
create policy "ronda_docs apagar" on public.ronda_docs for delete to anon, authenticated using (coll <> 'config');
grant select, insert, update, delete on public.ronda_docs to anon, authenticated;
alter publication supabase_realtime add table public.ronda_docs;
