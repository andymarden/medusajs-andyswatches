#!/bin/sh
set -e

cd /server/apps/backend

echo "Building Medusa backend..."
pnpm build

echo "Preparing built server..."
cd /server/apps/backend/.medusa/server
pnpm install --prod

echo "Running database migrations..."
pnpm medusa db:migrate

echo "Starting built Medusa backend..."
pnpm start
