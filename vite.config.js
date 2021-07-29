import { defineConfig } from "vite";
import elmPlugin from "vite-plugin-elm";
import { svelte } from "@sveltejs/vite-plugin-svelte";

export default defineConfig({
  plugins: [elmPlugin(), svelte()],
});
