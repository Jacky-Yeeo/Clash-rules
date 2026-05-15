$repo = "D:\Github\Shadowrocket-Rules\conf"
$log = Join-Path $repo "auto-sync.log"

Set-Location $repo

"[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] Start sync" | Add-Content $log

git switch conf 2>&1 | Add-Content $log
git add -A 2>&1 | Add-Content $log

$changed = git status --porcelain

if ($changed) {
    $msg = "Auto sync config $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $msg 2>&1 | Add-Content $log
}

git pull --rebase origin conf 2>&1 | Add-Content $log
git push origin conf 2>&1 | Add-Content $log

"[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] End sync" | Add-Content $log
"" | Add-Content $log

