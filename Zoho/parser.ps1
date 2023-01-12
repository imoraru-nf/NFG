$stream_reader = New-Object System.IO.StreamReader{D:\Github\NFG\Zoho\apis.txt}
$line_number = 1
while (($current_line =$stream_reader.ReadLine()) -ne $null)
{
$response = Invoke-RestMethod -Uri $current_line -Method Get
Write-Host "$line_number  $response" *>> "D:\Github\NFG\Zoho\log.txt"
$line_number++
}