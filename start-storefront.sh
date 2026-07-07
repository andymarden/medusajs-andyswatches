#!/bin/sh
set -e

pnpm --filter ./apps/storefront build
pnpm --filter ./apps/storefront start
