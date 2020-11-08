module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  purge: {
    content: ["src/**/*.elm"],
    options: {
      whitelist: [],
    },
  },
  theme: {
    extend: {
      keyframes: {
        fade: {
          to: {
            opacity: 1,
          },
        },
      },
      animation: {
        fade: "fade 1s ease-in-out forwards",
      },
    },
  },
  variants: {},
  plugins: [],
}
