# Use MesloLGS NF fontfamily for the icons

# To write colored text
# Install-Module -Name "PSWriteColor"
function prompt {
    $icon = "";
    $date = Get-Date -Format "hh:mm:ss";
    $loc = Get-Location;
    $loc = $loc -ireplace "`\\", "/";
    $loc = $loc -ireplace "`:", "";
    Write-Color "╭─", "" , $icon, "", "  $loc // $date", "`n", "╰─" -Color DarkGray, White, Blue, White, White, Blue, DarkGray -BackGroundColor Black, Black, White, Blue, Blue, Black, Black -NoNewLine;
    " "
}
