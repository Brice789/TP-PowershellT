param(
    [string]$InputFolder
)

$InputFolder = "TP07_RS1/PowerShell-q2/books";

Get-ChildItem -Path $InputFolder | ForEach-Object {
    $baseName = $_.BaseName
    $outputDir = Join-Path $InputFolder $baseName
    New-Item -Path $outputDir -ItemType Directory -Force

    $lineCounter = 0                                                        
    $fileCounter = 1
    $fragmentContent = @()

    Get-Content $_.FullName | ForEach-Object {
        $lineCounter++
        $fragmentContent += $_

        if ($lineCounter -eq 5000) {
            $fragmentFileName = Join-Path $outputDir "$($baseName)_Part$fileCounter.txt"



            $fragmentContent | Out-File -FilePath $fragmentFileName

            $fileCounter++

            #Tuo
            $lineCounter = 0                    
            $fragmentContent = @()
        }
    }
                                                                        
    if ($fragmentContent) {

        
        $fragmentFileName = Join-Path $outputDir "$($baseName)_Part$fileCounter.txt"
        $fragmentContent | Out-File -FilePath $fragmentFileName
    }
}

Write-Host "La Fragmentation est complete."
