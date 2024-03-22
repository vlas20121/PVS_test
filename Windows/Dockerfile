# escape=`
FROM mcr.microsoft.com/dotnet/framework/runtime:4.8

SHELL ["cmd", "/S", "/C"]

# INSTALL chocolatey
RUN `
  @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile`
  -InputFormat None -ExecutionPolicy Bypass `
  -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; `
  iex ((New-Object System.Net.WebClient).DownloadString `
  ('https://chocolatey.org/install.ps1'))" `
  && `
  SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# INSTALL Visual Studio Build Tools components (minimal)
RUN `
  choco install -y visualstudio2019buildtools `
  --package-parameters "--quiet --wait --norestart --nocache `
  --add Microsoft.VisualStudio.Workload.VCTools;includeRecommended `
  --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools`
  ;includeRecommended"

# INSTALL PVS-Studio
RUN `
  choco install -y pvs-studio
