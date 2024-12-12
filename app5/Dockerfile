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


