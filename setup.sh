#!/bin/bash
# Taller de introducción a Linux - CASS IEEE UdeG
# Crea los materiales de práctica en ~/taller_cass

DEST="$HOME/taller_cass"

if [ -d "$DEST" ]; then
    echo "La carpeta $DEST ya existe. Bórrala o renómbrala y ejecuta de nuevo."
    exit 1
fi

mkdir -p "$DEST"/datos
mkdir -p "$DEST"/laboratorio/practica1
mkdir -p "$DEST"/laboratorio/practica2/lecturas
mkdir -p "$DEST"/laboratorio/proyectos

# ---------- poema.txt (Sonatina, Rubén Darío - dominio público) ----------
cat > "$DEST"/poema.txt << 'POEMA'
SONATINA
Rubén Darío

La princesa está triste… ¿qué tendrá la princesa?
Los suspiros se escapan de su boca de fresa,
que ha perdido la risa, que ha perdido el color.
La princesa está pálida en su silla de oro,
está mudo el teclado de su clave sonoro;
y en un vaso olvidada se desmaya una flor.

El jardín puebla el triunfo de los pavos-reales.
Parlanchina, la dueña dice cosas banales,
y, vestido de rojo, piruetea el bufón.
La princesa no ríe, la princesa no siente;
la princesa persigue por el cielo de Oriente
la libélula vaga de una vaga ilusión.

¿Piensa acaso en el príncipe de Golconda o de China,
o en el que ha detenido su carroza argentina
para ver de sus ojos la dulzura de luz?
¿O en el rey de las Islas de las Rosas fragantes,
o en el que es soberano de los claros diamantes,
o en el dueño orgulloso de las perlas de Ormuz?

¡Ay! La pobre princesa de la boca de rosa,
quiere ser golondrina, quiere ser mariposa,
tener alas ligeras, bajo el cielo volar,
ir al sol por la escala luminosa de un rayo,
saludar a los lirios con los versos de mayo,
o perderse en el viento sobre el trueno del mar.

Ya no quiere el palacio, ni la rueca de plata,
ni el halcón encantado, ni el bufón escarlata,
ni los cisnes unánimes en el lago de azur.
Y están tristes las flores por la flor de la corte,
los jazmines de Oriente, los nelumbos del Norte,
de Occidente las dalias y las rosas del Sur.

¡Pobrecita princesa de los ojos azules!
Está presa en sus oros, está presa en sus tules,
en la jaula de mármol del palacio real;
el palacio soberbio que vigilan los guardas,
que custodian cien negros con sus cien alabardas,
un lebrel que no duerme y un dragón colosal.

¡Oh quién fuera hipsipila que dejó la crisálida!
(La princesa está triste. La princesa está pálida)
¡Oh visión adorada de oro, rosa y marfil!
¡Quién volara a la tierra donde un príncipe existe
(La princesa está pálida. La princesa está triste)
más brillante que el alba, más hermoso que abril!

—¡Calla, calla, princesa —dice el hada madrina—,
en caballo con alas, hacia acá se encamina,
en el cinto la espada y en la mano el azor,
el feliz caballero que te adora sin verte,
y que llega de lejos, vencedor de la Muerte,
a encenderte los labios con su beso de amor!

Fuente: Prosas profanas y otros poemas (Buenos Aires, 1896).
Edición: 2017-UNED, poemas.uned.es
FIN
POEMA

# ---------- datos/mediciones.csv ----------
cat > "$DEST"/datos/mediciones.csv << 'CSV'
fecha,sensor,voltaje,temperatura,estado
2026-11-02 08:00,A,3.30,24.1,OK
2026-11-02 08:05,B,3.28,24.3,OK
2026-11-02 08:10,A,3.31,24.6,OK
2026-11-02 08:15,C,3.27,25.0,OK
2026-11-02 08:20,B,3.29,25.2,OK
2026-11-02 08:25,A,3.30,25.5,OK
2026-11-02 08:30,C,2.95,26.1,ERROR
2026-11-02 08:35,B,3.28,26.4,OK
2026-11-02 08:40,A,3.31,26.8,OK
2026-11-02 08:45,C,3.26,27.0,OK
2026-11-02 08:50,B,3.30,27.3,OK
2026-11-02 08:55,A,3.29,27.7,OK
2026-11-02 09:00,C,3.27,28.0,OK
2026-11-02 09:05,B,3.31,28.4,OK
2026-11-02 09:10,A,3.30,28.9,OK
2026-11-02 09:15,C,3.28,29.2,OK
2026-11-02 09:20,B,3.12,35.8,ERROR
2026-11-02 09:25,A,3.30,29.6,OK
2026-11-02 09:30,C,3.29,29.9,OK
2026-11-02 09:35,B,3.28,30.1,OK
2026-11-02 09:40,A,3.31,30.4,OK
2026-11-02 09:45,C,3.27,30.8,OK
2026-11-02 09:50,B,3.30,31.0,OK
2026-11-02 09:55,A,3.29,31.3,OK
2026-11-02 10:00,C,3.28,31.5,OK
CSV

# ---------- laboratorio/ ----------
cat > "$DEST"/laboratorio/practica1/notas.txt << 'T'
Notas de la practica 1
Aqui se practica copiar, mover y renombrar archivos.
T
echo "Este archivo esta oculto: se ve solo con ls -a" > "$DEST"/laboratorio/practica1/.oculto.txt

cat > "$DEST"/laboratorio/practica2/lecturas/sensor_a.txt << 'T'
Lectura sensor A
Voltaje: 3.30 V
Temperatura: 24.1 C
T
cat > "$DEST"/laboratorio/practica2/lecturas/sensor_b.txt << 'T'
Lectura sensor B
Voltaje: 3.28 V
Temperatura: 24.3 C
T

cat > "$DEST"/laboratorio/proyectos/pendientes.txt << 'T'
Pendientes del proyecto
- Revisar el circuito
- Escribir el reporte
- Probar los sensores
T

echo "Listo. Materiales creados en $DEST"
echo "Entra con:  cd ~/taller_cass"
