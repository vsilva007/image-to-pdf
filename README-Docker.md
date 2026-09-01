# Docker para image-to-pdf

Este kit está preparado para Next.js 16 / React 19 y ofrece dos modos aislados:
desarrollo con hot reload y producción con la salida `standalone` de Next.js.

## Instalación

Copia el contenido de este directorio a la raíz real del proyecto, de forma que
`Dockerfile`, `compose.yaml`, `package.json`, `next.config.ts` y `src/` queden al
mismo nivel. El `next.config.ts` incluido sustituye al actual únicamente para
añadir `output: "standalone"`.

Los scripts crean automáticamente `.env` desde `.env.example` si todavía no
existe. También puedes crearlo o editarlo antes de arrancar:

```sh
cp .env.example .env
```

## Arranque

```sh
# Desarrollo, en primer plano y con hot reload
./scripts/docker-dev.sh

# Producción, compilada y en segundo plano
./scripts/docker-prod.sh

# Logs (por defecto del servicio prod)
./scripts/docker-logs.sh

# Parar sin borrar cachés/volúmenes
./scripts/docker-down.sh

# Parar y limpiar también dependencias y caché persistentes
./scripts/docker-down.sh --clean
```

La aplicación queda disponible en `http://localhost:3000`. Para cambiar el
puerto del host, define por ejemplo `APP_PORT=8080` en `.env`.

La declaración de `env_file` usa la sintaxis clásica (`- .env`) para funcionar
tanto con Docker Compose antiguo como con las versiones actuales.

## Notas

- Es recomendable generar y versionar `package-lock.json` con `npm install`.
  Mientras no exista, la imagen instalará desde `package.json`; cuando exista,
  utilizará automáticamente la instalación reproducible `npm ci`.
- Las variables `NEXT_PUBLIC_*` se incrustan durante el build de Next.js. Si la
  app usa alguna, debe estar disponible al construir la imagen, no solo al
  arrancar el contenedor.
- No se ejecuta la aplicación como root en la imagen de producción.
