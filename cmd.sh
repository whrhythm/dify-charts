
PGPASSWORD=difyai123456 pg_dump -h 10.67.100.103 -p 30753 -U postgres -d dify -Fc -f backup.dump

kubectl -n create configmap db-backup --from-file=database-backup=db/backup.dump
kubectl create configmap db-backup --from-file=database-backup=db/backup.dump
kubectl get cm db-backup -oyaml > db-backup.yaml
