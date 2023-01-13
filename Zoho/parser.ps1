$stream_reader = New-Object System.IO.StreamReader{D:\Github\NFG\Zoho\api.txt}
$line_number = 1
while (($current_line =$stream_reader.ReadLine()) -ne $null)
{

try {  
$response = Invoke-WebRequest -Uri $current_line
Write-Warning  $response.content
Write-Host "$line_number  $response.content" *>> "D:\Github\NFG\Zoho\log.txt"
}
catch { 
Write-Warning $_.Exception.Message
Write-Host "$line_number  $_.Exception.Message" *>> "D:\Github\NFG\Zoho\log.txt"
}
$line_number++
}
$stream_reader.Close()