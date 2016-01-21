$downloadFileName="C:\vagrant\SQLEXPRWT_x64_ENU.exe"
If (Test-Path $downloadFileName){
  echo "The SQL Server installer is already downloaded. Skipping..."
}Else{
  echo "Downloading the SQL Server installer. This may take a few minutes..."
  (New-Object System.Net.WebClient).DownloadFile("https://download.microsoft.com/download/8/D/D/8DD7BDBA-CEF7-4D8E-8C16-D9F69527F909/ENU/x64/SQLEXPRWT_x64_ENU.exe", $downloadFileName)
}
