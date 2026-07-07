#!/bin/sh
set -e

pnpm --filter ./apps/backend build
pnpm --filter ./apps/backend medusa db:migrate
pnpm --filter ./apps/backend start
