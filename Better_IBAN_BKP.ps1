#Script By WhATaPlaYer
#while($valueFor -lt 2){
cls

function Get-RandomCharacters($length, $characters) { 
    $random = 1..$length | ForEach-Object { Get-Random -Maximum $characters.length } 
    $private:ofs="" 
    return [String]$characters[$random]
}

$randKtNrIntF3 = Get-RandomCharacters -length 3 -characters '1234567890'
$randKtNrIntL6 = Get-RandomCharacters -length 6 -characters '1234567890'

#region KontoNr. PZ

$multOper = 1
$arrrryyyyy = @()

for($xY = 5; $xY -gt -1; $xY--)
{
$textBAIN = $randKtNrIntL6.ToCharArray()[$xY]
#Write-Host $textBAIN" is new number"                   #<- for DEBUG
$multOper++
$impVal = ([int]$textBAIN - 48) * $multOper             #convert char in Int32 -> -48
$impVal
$arrrryyyyy += $impVal
}

#Write-Host -ForegroundColor Red "Now lets calc!"       #<- for DEBUG
$harry = 0

for($aB = 5; $aB -gt -1; $aB--){
$harry = $arrrryyyyy[$aB] + $harry
$harry
}

#Write-Host -ForegroundColor Red "Value is "$harry      #<- for DEBUG
#endregion
$harry
$kntNrPz2 = $harry % 11 
$kntNrPz = 11 - $kntNrPz2 #$kntNrPz2 % 11

#$kntNrPz % 11                                          #<- for DEBUG

if($kntNrPz -eq 10)
{
$kntNrPz8 = 0
Write-Host -ForegroundColor Red "Wert angepasst zu "$kntNrPz8

$randKtNr = "$randKtNrIntF3$randKtNrIntL6$kntNrPz8"

$blzParse = 70090100

$lkDE = 1314                                            #D = 13 / E = 14

$lkDE0 = $lkDE * 100


$pZreal = 98 - ("$blzParse$randKtNr$lkDE0" % 97)
$pZ = "{0:d2}" -f [int]$pZreal                          #maybe try also $pZ = [bigint]$pZreal

#region
$iban = "DE$pZ$blzParse$randKtNr"

Write-Host "Your IBAN is: $iban"
#endregion


if(("$blzParse$randKtNr$lkDE$pz" % 97) -eq 1)
{
Write-Host -ForegroundColor Green "IBAN ist korrekt!"
$valueFor = 2
}
else
{
Write-Host -ForegroundColor Red "IBAN ist nicht korrekt!"
$valueFor = 1
}
}
else
{
$randKtNr = "$randKtNrIntF3$randKtNrIntL6$kntNrPz"

$blzParse = 70090100

$lkDE = 1314                                            #D = 13 / E = 14

$lkDE0 = $lkDE * 100


$pZreal = 98 - ("$blzParse$randKtNr$lkDE0" % 97)
$pZ = "{0:d2}" -f [int]$pZreal                          #maybe try also $pZ = [bigint]$pZreal

#region
$iban = "DE$pZ$blzParse$randKtNr"

Write-Host "Your IBAN is: $iban"
#endregion


if(("$blzParse$randKtNr$lkDE$pz" % 97) -eq 1)
{
Write-Host -ForegroundColor Green "IBAN ist korrekt!"
$valueFor = 2
}
else
{
Write-Host -ForegroundColor Red "IBAN ist nicht korrekt!"
$valueFor = 1
}
}