-- Run this in Supabase SQL Editor (one time only)
-- Go to https://supabase.com/dashboard/project/fdomkgrocrcoqhlrowal/sql/new

-- 1. Create the predictions table
CREATE TABLE IF NOT EXISTS predictions (
  id BIGSERIAL PRIMARY KEY,
  answers JSONB NOT NULL,
  inserted_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Enable real-time so admin.html updates instantly
ALTER PUBLICATION supabase_realtime ADD TABLE predictions;

-- Done! The table is ready.
