FROM php:8.3-cli-alpine

LABEL fr.asso.ort.lyon.author="Billy Villena <billy.villena@lyon.ort.asso.fr>"
LABEL fr.asso.ort.lyon.usage="Cours « Framework - Symfony » "
LABEL fr.asso.ort.lyon.updated_at="2024-04-03T21:48:21.641Z"

# Install system dependencies
RUN apk update \
    && apk add --no-cache \
        bash \
        curl \
        git \
        wget

# Instal composer
COPY --from=composer:2.7 /usr/bin/composer /usr/local/bin/composer

WORKDIR /usr/env

# Define user to prevent root-user; set host current user gid and uid to bind both users for better permissions
RUN addgroup --gid 1001 env \
    && adduser --disabled-password --uid 1001 --ingroup env env \
    && chown -R env /usr/env

USER env
