$Theme = "naturewhite"

if (ls | findstr "$Theme.tdesktop-theme")
{
    rm "$pwd\$Theme.tdesktop-theme"
}

Compress-Archive -Path .\source\* -DestinationPath .\export.zip
mv .\export.zip ".\$Theme.tdesktop-theme"