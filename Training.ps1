param(
    [string]$InputFolder, 
    [string]$OutputCsvFile
    )

$InputFolder = "/Users/bricelewis/Documents/Code/Linux-Script/TP-Final/The Great Gatsby.txt";

# Ensure the input folder exists


Get-Content "/Users/bricelewis/Documents/Code/Linux-Script/TP-Final/TP07_RS1/PowerShell-q2/books/The Adventures of Sherlock Holmes/The Adventures of Sherlock Holmes_Part1.txt" | ForEach-Object {
    if ($_ -match '5000') {
        # Prints 5000 if found in the line
        "Found 5000"
    }
}


Write-Host $fileCounter




# Select the required properties and export to CSV

Write-Host "$InputFolder.GetType().FullName";

# $var5 = "Hello, World"
# $var5.GetType().FullName


Set-Variable -Name "myVariable" -Description "This is my sample variable"

#Write-Host "$InputFolder.FullName";
Write-Host $InputFolder.Length;


Get-Content TheGreatGatsby.txt