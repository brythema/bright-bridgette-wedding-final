# Bright & Bridgette — Wedding Website

## ✅ Complete. Here's what's ready:

| File | Purpose |
|------|---------|
| `index.html` | Public wedding site — guests take the quiz, predictions are saved |
| `admin.html` | Planner dashboard — shows live results in real-time |
| `netlify.toml` | Netlify configuration (already included) |

**Database:** Supabase project `fdomkgrocrcoqhlrowal` — table `predictions` is created and ready.
**Credentials:** Already embedded in both HTML files.

---

## 🚀 Deploy to Netlify (1 minute)

### Option A: Drag & Drop (easiest)
1. Go to **https://app.netlify.com/drop**
2. Drag the entire `WEDDINGS/` folder onto the page
3. Netlify gives you a live URL instantly (e.g., `https://xxx.netlify.app`)

### Option B: Through Netlify Dashboard
1. Go to **https://app.netlify.com** and sign up (free)
2. Click **"Add new site"** → **"Deploy manually"**
3. Drag the `WEDDINGS/` folder
4. You'll get a live URL

---

## ✅ How to Test

1. **Open the Netlify URL** in a browser — that's your wedding site
2. Scroll to the **Predictions** quiz, answer all 8 questions, hit Submit
3. Open `admin.html` in a new tab (same Netlify URL + `/admin.html`)
4. The live results should appear within seconds — no refresh needed

---

## 🔗 Your Links

- **Supabase Dashboard:** https://supabase.com/dashboard/project/fdomkgrocrcoqhlrowal
- **Your Site (after deploy):** https://xxx.netlify.app (you'll set this up)

---

## How It Works

```
Guest on index.html → fills quiz → Supabase API (predictions table)
                                                        ↓
Admin on admin.html ← real-time subscription ←───────────┘
```

- **index.html** submits predictions to Supabase
- **admin.html** listens to Supabase in real-time via Postgres changes
- No server code needed. Free tier handles everything (500MB DB, 5GB bandwidth).
