module.exports = {
    purge: [
        '_includes/**/*.html',
        '_layouts/**/*.html',
        // './_posts/*.md',
        '*.html',
    ],
    // mode: 'jit', // doesn't work with jekyll-postcss plugin https://github.com/tailwindlabs/tailwindcss-jit/issues/41
    darkMode: false, // or 'media' or 'class'
    theme: {
        extend: {},
    },
    variants: {
        extend: {},
    },
    plugins: [
        require('@tailwindcss/typography'),
    ],
}
