[root@ecs3 ~]# ./cdeutils.sh init-user-in-virtual-cluster -h 9dsd6b7z.cde-zndwdw6m.apps.ecs3.clouderalab.local -u marc -p marcprincipal -k ./marc.keytab
INFO : Deleting old secrets in dex-app-9dsd6b7z..
INFO : Running command: bash -c "kubectl delete --ignore-not-found=true secret marc-krb5-secret    -n dex-app-9dsd6b7z"
INFO : Exit code = 0
INFO : Running command: bash -c "kubectl delete --ignore-not-found=true secret marc-krb5-principal -n dex-app-9dsd6b7z"
INFO : Exit code = 0
INFO : Temporarily copying files to desired names..
INFO : Running command: bash -c "cp ./marc.keytab    marc-krb5-secret"
INFO : Exit code = 0
INFO : Running command: bash -c "cp marcprincipal marc-krb5-principal"
INFO : Exit code = 0
INFO : Creating new secrets in dex-app-9dsd6b7z..
INFO : Running command: bash -c "kubectl create secret generic marc-krb5-principal --from-file=./marc-krb5-principal -n dex-app-9dsd6b7z"
secret/marc-krb5-principal created
INFO : Exit code = 0
INFO : Running command: bash -c "kubectl create secret generic marc-krb5-secret    --from-file=./marc-krb5-secret     -n dex-app-9dsd6b7z"
secret/marc-krb5-secret created
INFO : Exit code = 0
INFO : Deleting temporary files..
INFO : Running command: bash -c "rm marc-krb5-secret marc-krb5-principal"
INFO : Exit code = 0
