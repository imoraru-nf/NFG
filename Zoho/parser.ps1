$stream_reader = New-Object System.IO.StreamReader{D:\Github\NF-EMS\Zoho\apis.txt}
$line_number = 1
while (($current_line =$stream_reader.ReadLine()) -ne $null)
{
Write-Host "$line_number  $current_line" *>> "D:\Github\NF-EMS\Zoho\log.txt"
#| out-file "D:\Github\NF-EMS\Zoho\log.txt" -Append
$line_number++
}