import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Genera el servidor autocontenido que copia la etapa final del Dockerfile.
  output: "standalone",
};

export default nextConfig;
