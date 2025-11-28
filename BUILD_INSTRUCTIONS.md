# Build Instructions for GitHub Pages

After editing `src/pug/index.pug`, follow these steps:

## Option 1: Manual Build (Two Commands)

1. **Build the site:**
   ```bash
   npm run build
   ```

2. **Copy to docs folder (for GitHub Pages):**
   ```bash
   Copy-Item -Path "dist\*" -Destination "docs\" -Recurse -Force
   ```

## Option 2: Quick Build Script (One Command)

You can combine both steps into one command:

```bash
npm run build && Copy-Item -Path "dist\*" -Destination "docs\" -Recurse -Force
```

## Then Commit and Push

After building, commit and push your changes:

```bash
git add .
git commit -m "Update portfolio content"
git push
```

GitHub Pages will automatically update your live site!

---

## Development Mode (Optional)

If you want to preview changes locally with live reload:

```bash
npm start
```

This will build the site and open it in your browser with auto-refresh.

