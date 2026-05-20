param([switch]$Manual)

$repo = "D:\Github\Shadowrocket-Rules\release"
$log = Join-Path $repo "auto-sync.log"
Set-Location $repo

if ($Manual) {
    Write-Host "Start sync: $repo"
}

"[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] Start sync" | Add-Content $log

git switch release 2>&1 | Add-Content $log
git add -A 2>&1 | Add-Content $log

$changed = git status --porcelain

if ($changed) {
    $msg = "Auto sync rules $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $msg 2>&1 | Add-Content $log
}

git pull --rebase origin release 2>&1 | Add-Content $log
git push origin release 2>&1 | Add-Content $log

"[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] End sync" | Add-Content $log
"" | Add-Content $log

if ($Manual) {
    Write-Host "Sync finished. Log: $log"
    Read-Host "Press Enter to close"
}