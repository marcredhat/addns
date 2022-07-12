export CDE_TOKEN=$(curl -k -u cdpuser1 https://9dsd6b7z.cde-zndwdw6m.apps.ecs3.clouderalab.local/gateway/authtkn/knoxtoken/api/v1/token | jq -r '.access_token')
