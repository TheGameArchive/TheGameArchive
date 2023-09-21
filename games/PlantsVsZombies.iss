; See PlantsVsZombies.exe for download

; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Plants Vs Zombies"
#define MyAppVersion "1.0"
#define MyAppPublisher "BL1Z33"
#define MyAppURL "https://thegamearchive.github.io/"
#define MyAppExeName "PlantsVsZombies.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{ED7F106A-DE49-413D-8A01-E6CDB915255A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\brayd\Downloads\Plants vs. Zombies\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\brayd\Downloads\Plants vs. Zombies\bass.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\brayd\Downloads\Plants vs. Zombies\eula.rtf"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\brayd\Downloads\Plants vs. Zombies\main.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\brayd\Downloads\Plants vs. Zombies\PlantsVsZombies.par"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\brayd\Downloads\Plants vs. Zombies\Core\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\brayd\Downloads\Plants vs. Zombies\properties\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
