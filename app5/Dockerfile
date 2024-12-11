# Use a Microsoft Windows Server Core image with .NET runtime
FROM mcr.microsoft.com/dotnet/aspnet:6.0-windowsservercore-ltsc2022

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Add metadata for the author
LABEL author="Your Name" \
      description="MyApp Docker Image with Health Check" \
      version="1.0"

# Run the application
ENTRYPOINT ["dotnet", "MyApp.dll"]

# Add a health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 `
    CMD powershell -Command `
    try { `
        $response = Invoke-WebRequest -Uri http://localhost:80/health -UseBasicParsing; `
        if ($response.StatusCode -eq 200) { exit 0 } else { exit 1 } `
    } catch { exit 1 }
