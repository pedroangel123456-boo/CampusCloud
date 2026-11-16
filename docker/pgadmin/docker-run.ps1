docker run -d `
  --env-file "$PSScriptRoot\.env" `
  --name pgadmin-campuscloud `
  --network campus-network `
  -p 8083:80 `
  -v campuscloud-pgadmin-data:/var/lib/pgadmin `
  --restart always `
  dpage/pgadmin4:6.17