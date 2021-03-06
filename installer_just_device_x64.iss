#define AppVer "0.3.8"
#define AppName "Screen Capturer Recorder Device Only x64"

[UninstallRun]
Filename: regsvr32; WorkingDir: {app}; Parameters: /s /u PushDesktop.ax
[Run]
Filename: regsvr32; WorkingDir: {app}; Parameters: /s PushDesktop.ax
[Files]
Source: source_code\x64\releasex64\PushDesktop.ax; DestDir: {app}
Source: ChangeLog.txt; DestDir: {app}
Source: README.TXT; DestDir: {app}; Flags: isreadme

[Setup]
ArchitecturesAllowed=x64
AppName={#AppName}
AppVerName={#AppVer}
DefaultDirName={pf}\{#AppName}
DefaultGroupName={#AppName}
UninstallDisplayName={#AppName} uninstall
OutputBaseFilename=setup {#AppName} v{#AppVer}
OutputDir=releases

[Icons]
Name: {group}\Readme; Filename: {app}\README.TXT
Name: {group}\configure\Release Notes for v{#AppVer}; Filename: {app}\ChangeLog.txt
Name: {group}\configure\Uninstall; Filename: {uninstallexe}
Name: {group}\configure\re-register capture device after install msvcr100; Filename: regsvr32; WorkingDir: {app}; Parameters: PushDesktop.ax
