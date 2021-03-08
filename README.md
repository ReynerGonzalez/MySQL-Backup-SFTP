# MySQL Backup SFTP

Un script para realizar respaldos de MySQL a un servidor externo por medio de FTP o SFTP

## Instalación

### Instale en el servidor origen [rsync](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/selinux_users_and_administrators_guide/chap-managing_confined_services-rsync) 

```bash
sudo yum install rsync
```

### Instale en el servidor destino [rsync](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/selinux_users_and_administrators_guide/chap-managing_confined_services-rsync) 

```bash
sudo yum install rsync
```

### Complete los valores de las variables

En el archivo mysql_backup_sftp.sh

### Brinde permisos de ejecución al script

```bash
sudo chmod +x mysql_backup_sftp.sh
```

## Uso

Ejecute el archivo

```bash
sh mysql_backup_sftp.sh
```

## Contribuir
Solicitudes Pull son bienvenidas. Para cambios mayores, por favor abra un caso primero para conversar acerca del cambio que se desea realizar.

Por favor asegurese de tener la versión actualizada

## License
[MIT](https://choosealicense.com/licenses/mit/)