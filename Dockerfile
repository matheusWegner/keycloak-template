FROM quay.io/keycloak/keycloak:26.0.5

WORKDIR /opt/keycloak

COPY themes /opt/keycloak/themes
COPY realm-export /opt/keycloak/data/import
