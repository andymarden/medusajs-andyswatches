#!/bin/sh
set -e

cd /server/apps/backend

echo "Building Medusa backend..."
pnpm build

echo "Running database migrations..."
pnpm medusa db:migrate

echo "Starting Medusa backend..."
pnpm start
