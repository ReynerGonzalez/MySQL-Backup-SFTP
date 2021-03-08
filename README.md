# MySQL Backup SFTP

Un script para realizar respaldos de MySQL a un servidor externo por medio de FTP o SFTP

## Instalación

### Instale en el gestor de claves ssh [sshpass](https://www.redhat.com/sysadmin/ssh-automation-sshpass) 

```bash
sudo yum install sshpass
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