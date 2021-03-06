# Use MesloLGS NF fontfamily for the icons

function prompt {


    #Colors/icons
    $icon = "";
    $iconColor = "Blue";
    $iconBackground = "White";
    
    $locColor = "White";
    $locBackground = "Blue";

    # clock
    $date = Get-Date -Format "hh:mm:ss";

    # Path
    $loc = Get-Location;
    $loc = $loc -ireplace "$($env:userprofile -ireplace "\\", "\\")", " ~";
    $loc = $loc -ireplace "`\\", "/";
    $loc = $loc -ireplace "`:", "";

    # Git integration
    $git = "";
    if ( Test-Path "$(Get-Location)\.git" ) {
        $git = " $(git branch)";
    }

    # Write
    Write-Host "╭─" -ForegroundColor Gray -NoNewline;

    ## Icon
    Write-Host "" -ForegroundColor $iconBackground -NoNewline;
    Write-Host $icon -ForegroundColor $iconColor -BackgroundColor $iconBackground -NoNewline;
    Write-Host "" -ForegroundColor $iconBackground -BackgroundColor $locBackground -NoNewline;
    ## Location
    Write-Host "  $loc  $git  $date" -ForegroundColor $locColor -BackgroundColor $locBackground -NoNewline;
    Write-Host "" -ForegroundColor $locBackground -NoNewline;

    ## End
    Write-Host "`n" -NoNewline;
    Write-Host "╰─" -ForegroundColor Gray -NoNewline;
    " "
}

function listHidden {
    Get-ChildItem -Hidden
}

New-Alias -Name ll -Value listHidden;

function listIp {
    Get-NetIPConfiguration
}

New-Alias -Name ipa -Value listIp;