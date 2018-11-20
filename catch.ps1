try {
    PING.EXE google.comm
}
catch {
    Write-Host "Success"
}
finally {
  Start-Process chrome.EXE 
}