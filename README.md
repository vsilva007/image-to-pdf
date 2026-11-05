<p align="center"><img src="docs/assets/readme-banner.svg" alt="Images to PDF — a browser-based converter adapted by Smart Studio" width="1200"></p>

<div align="center">

# Images to PDF

**Turn multiple images into one PDF—privately, quickly, and entirely in your browser.**

[![Next.js](https://img.shields.io/badge/Next.js-16-000000?logo=next.js&logoColor=white)](https://nextjs.org/)
[![React](https://img.shields.io/badge/React-19-149ECA?logo=react&logoColor=white)](https://react.dev/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-4-06B6D4?logo=tailwindcss&logoColor=white)](https://tailwindcss.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

Image conversion runs in your browser. No account is required.

</div>

<p align="center"><a href="#how-it-works">How it works</a> · <a href="#run-locally">Quick start</a> · <a href="README-Docker.md">Docker</a> · <a href="#credits-and-license">Credits &amp; license</a></p>

Adapted by [Smart Studio](https://smartstudio.dev) from [metehandemir/image-to-pdf](https://github.com/metehandemir/image-to-pdf). Original authorship and MIT attribution are preserved in [NOTICE.md](NOTICE.md).

---

## Why Images to PDF?

Images to PDF is a lightweight, open-source converter built with privacy in
mind. Add your images, arrange them in the order you want, and download a
single PDF. All processing happens locally in the browser, so your files are
never sent to a server.

| Feature | Description |
| --- | --- |
| 🔒 **Private by design** | Conversion happens entirely on your device |
| 🖱️ **Easy image selection** | Drag and drop files or choose them from your device |
| ↕️ **Flexible ordering** | Reorder images with drag and drop or arrow controls |
| 📐 **Original dimensions** | Each PDF page follows the dimensions and orientation of its image |
| 🖼️ **Popular formats** | Supports PNG, JPG, JPEG, and WEBP images |
| 🌗 **Theme aware** | Automatically adapts to light and dark system themes |
| ⚡ **No setup for users** | Runs directly in any modern web browser |

## How it works

1. Add one or more images by dropping them into the upload area or selecting
   them from your device.
2. Arrange the images in the order they should appear in the PDF.
3. Select **Convert to PDF** to generate and download `converted.pdf`.

> [!NOTE]
> The converter reads images in browser memory and generates the PDF locally.
> This describes image processing, not the hosting provider’s technical logs or
> every network request made to load the application.

## Run locally

### Requirements

- [Node.js](https://nodejs.org/) 20.9 or newer
- npm

### Development

```bash
git clone https://github.com/vsilva007/image-to-pdf.git
cd image-to-pdf
npm ci
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

### Production

```bash
npm run build
npm start
```

### Docker

The repository also includes development and production Docker workflows. See
the [Docker guide](README-Docker.md) for setup instructions and helper scripts.

## Tech stack

- [Next.js](https://nextjs.org/) — application framework
- [React](https://react.dev/) — user interface
- [Tailwind CSS](https://tailwindcss.com/) — styling
- [jsPDF](https://github.com/parallax/jsPDF) — client-side PDF generation
- [TypeScript](https://www.typescriptlang.org/) — type-safe development

## Available scripts

| Command | Purpose |
| --- | --- |
| `npm run dev` | Start the local development server |
| `npm run build` | Create an optimized production build |
| `npm start` | Run the production server |
| `npm run lint` | Check the code with ESLint |

## Contributing

Contributions are welcome. Fork the repository, create a focused branch, make
your changes, and open a pull request. Before submitting, run:

```bash
npm run lint
npm run build
```

## Project resources

- [SmartStudio.dev](https://smartstudio.dev/) — tools, products, and resources
  for building thoughtful digital experiences
- [Next.js documentation](https://nextjs.org/docs)
- [jsPDF documentation](https://github.com/parallax/jsPDF#readme)
- [Docker setup guide](README-Docker.md)

## Credits and license

Released under the [MIT License](LICENSE). Original application by [metehandemir](https://github.com/metehandemir/image-to-pdf); Docker workflows, documentation and adaptation by Victor Silva (Smart Studio). See [NOTICE.md](NOTICE.md) for the upstream license reference. Dependencies retain their own licenses.

<p align="center"><strong>Smart Studio</strong><br><a href="https://smartstudio.dev/open-source">Explore our open-source tools</a></p>
