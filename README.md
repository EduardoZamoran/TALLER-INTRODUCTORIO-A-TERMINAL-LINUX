# Primeros pasos en Linux: la terminal

Taller práctico · CASS IEEE · Universidad de Guadalajara

Materiales de práctica del taller. Antes de empezar, instala Ubuntu en Windows (WSL) siguiendo la guía de instalación que te compartimos.

## Cómo obtener los materiales

Dentro de Ubuntu, escribe estos comandos uno a la vez:

```
wget -O setup.sh "https://raw.githubusercontent.com/EduardoZamoran/taller-linux-cass/main/setup.sh"
bash setup.sh
```

Esto crea la carpeta `~/taller_cass` con los archivos de práctica. Para comprobarlo:

```
ls ~/taller_cass
```

Si `wget` no está instalado: `sudo apt install -y wget`

## Contenido de `taller_cass`

- `poema.txt`: texto para practicar la lectura de archivos
- `datos/mediciones.csv`: tabla de mediciones de sensores
- `laboratorio/`: carpetas para practicar navegación y manejo de archivos

## Contacto

Instructor: Luis Eduardo Zamora Morán
