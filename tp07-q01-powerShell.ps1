param(
    [string]$InputFolder, 
    [string]$OutputCsvFile
)

$InputFolder = "TP07_RS1/PowerShell-q1/imagesPs"
$OutputCsvFile = "/Users/bricelewis/Documents/Code/Linux-Script/TP-Final/output.csv"

# Avoir tout les .jpg d'un fichier, puis faire un tri
$files = Get-ChildItem -Path $InputFolder -Recurse | 
         Sort-Object -Property Length -Descending | 
         Select-Object -First 5

# Select et exporter CSV
$files | Select-Object @{Name="filePath"; Expression={$_.FullName.Replace($InputFolder + '\', '')}}, Length | 
        Export-Csv -Path $OutputCsvFile -NoTypeInformation

#Write-Host "CSV file Done"
