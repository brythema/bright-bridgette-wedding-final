# Bright & Bridgette — Wedding Website

## ✅ Live on Vercel (2026-10-18)

| File | Purpose |
|------|---------|
| `index.html` | Public wedding site — guests take the quiz |
| `admin.html` | Planner dashboard (`/admin.html`) — shows results when a database is connected |
| `SUPABASE-SETUP.sql` | One-time SQL to create the `predictions` table (re-connection only) |

**Database: STANDALONE (offline mode).** The site ships with **no database** and no embedded
credentials. The quiz runs fully in the browser; admin.html shows an "Offline — no database"
state. The previously used Supabase project `fdomkgrocrcoqhlrowal` was dead/unreachable
(measured NXDOMAIN 2026-09-25; owner decision 2026-10-18: retire it, keep the site standalone).

## Re-enabling live predictions (optional, owner action)
1. Restore or create a Supabase project, run `SUPABASE-SETUP.sql`.
2. Paste the project URL + anon key into the two empty constants at the top of the script
   blocks in `index.html` (section 0) and `admin.html` (SUPABASE block).
3. Redeploy (`vercel --prod --scope hemabryt` from this folder).

## 🚀 Deploy (Vercel, team hemabryt)
```
vercel --prod --scope hemabryt
```
Static site, no build step. `.vercelignore` ships only `index.html` + `admin.html`
(dev/docs artifacts stay off the public site).

## 🔗 Links
- **Live:** https://bright-bridgette-wedding.vercel.app (+ `/admin.html`)
- **Supabase Dashboard (if re-connecting):** supabase.com/dashboard

## How It Works
```
Guest on index.html → quiz (browser-only, offline mode)
[optional] → Supabase predictions table ← admin.html real-time (only when configured)
```
