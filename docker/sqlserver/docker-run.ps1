docker run `
  --env-file "$PSScriptRoot\.env" `
  -d `
  --name sqlserver-campuscloud `
  --network campus-network `
  -p 1433:1433 `
  -v campuscloud-sql_data:/var/opt/mssql `
  --restart always `
  mcr.microsoft.com/mssql/server:2025-CU8-ubuntu-24.04