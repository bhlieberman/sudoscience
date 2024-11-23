/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["lib/**/*.ml"],
  theme: {
    extend: {},
  },
  plugins: [require("@tailwindcss/typography"), require('daisyui'),],
  daisyui: {
    themes: ["aqua", "cyberpunk", "valentine"]
  }
}

