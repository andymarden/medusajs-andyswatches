#!/bin/sh
set -e

cd /server/apps/storefront

echo "Building storefront..."
pnpm build

echo "Starting storefront..."
pnpm start
