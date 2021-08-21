# Beginn der Schleife

do{

# Variabeln zurücksetzen

[int] $x = 1
[int] $z1 = 1
[int] $z2 = 1
[int] $z3 = 1
[string] $next = "n"

Set-WinUILanguageOverride -Language de-DE
Clear-Host

# Titel

Write-Host "Willkommen zum ZahlenSortierer 7000" -foregroundcolor green ;

#Variabeln definieren

try{

    $z1 = Read-Host "Geben Sie die 1. Zahl ein."

    $z2 = Read-Host "Geben Sie die 2. Zahl ein."

    $z3 = Read-Host "Geben Sie die 3. Zahl ein."
    
}catch{
     Write-Host "Ungültige Eingabe. Das Programm wird beendet." -ForegroundColor red ; pause ; exit ;
}

# Berechnungen durchführen

if($z1 -gt $z2){
    $x = $z1 ; $z1 = $z2 ; $z2 = $x;
}

if($z2 -gt $z3){
    $x = $z3 ; $z3 = $z2 ; $z2 = $x;
}

if($z1 -gt $z2){
    $x = $z1 ; $z1 = $z2 ; $z2 = $x;
}

# Resultat ausgeben

Write-Host "$z1 < $z2 < $z3" -ForegroundColor Yellow

# Bedingung für Schleife setzen

$next = Read-Host "Möchten Sie nochmals sortieren? (J/N)"

    if ($next -eq "n"){
        Write-Host "Vielen Dank, dass Sie den ZahlenSortierer 7000 verwendet haben. Made by Sandro Lenz, 2019" -foregroundcolor Green ; pause ; exit
}

}while ($next = "j")
