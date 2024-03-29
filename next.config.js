/** @type {import('next').NextConfig} */
const nextConfig = {
    async redirects() {
        return [
            {
                source: '/',
                destination: '/songs',
                permanent: false,
            },
        ]
    },
}


module.exports = nextConfig
