create table if not exists public.plates_kv (
  owner_id text not null,
  key text not null,
  value jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (owner_id, key)
);

alter table public.plates_kv disable row level security;
