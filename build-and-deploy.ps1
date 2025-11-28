# Build and Deploy Script for GitHub Pages
# This script builds the Pug template and copies files to docs/ folder

Write-Host "Building portfolio site..." -ForegroundColor Green
npm run build

if ($LASTEXITCODE -eq 0) {
    Write-Host "Copying files to docs/ folder..." -ForegroundColor Green
    Copy-Item -Path "dist\*" -Destination "docs\" -Recurse -Force
    Write-Host "✓ Build complete! Files are ready in docs/ folder." -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Yellow
    Write-Host "  1. git add ." -ForegroundColor Cyan
    Write-Host "  2. git commit -m 'Update portfolio'" -ForegroundColor Cyan
    Write-Host "  3. git push" -ForegroundColor Cyan
} else {
    Write-Host "✗ Build failed! Please check the errors above." -ForegroundColor Red
}

