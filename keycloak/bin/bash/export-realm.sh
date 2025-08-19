#!/bin/bash

KEYCLOAK_URL="http://localhost:8180"
REALM_NAME="household"
ADMIN_USER="admin"
ADMIN_PASS="admin"
OUTPUT_FILE="realm-export.json"

echo "アクセストークンを取得中..."
ACCESS_TOKEN=$(curl -s -X POST "${KEYCLOAK_URL}/realms/master/protocol/openid-connect/token" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "username=${ADMIN_USER}" \
  -d "password=${ADMIN_PASS}" \
  -d 'grant_type=password' \
  -d 'client_id=admin-cli' | jq -r '.access_token')

if [ "${ACCESS_TOKEN}" == "null" ] || [ -z "${ACCESS_TOKEN}" ]; then
  echo "アクセストークンの取得に失敗"
  exit 1
fi

echo "アクセストークン取得成功"

echo "レルム情報をエクスポート中..."
curl -s -X GET "${KEYCLOAK_URL}/admin/realms/${REALM_NAME}" \
  -H "Authorization: Bearer ${ACCESS_TOKEN}" | jq '.' > "${OUTPUT_FILE}"

if [ $? -eq 0 ]; then
  echo "エクスポート成功: ${OUTPUT_FILE}"
else
  echo "エクスポートに失敗"
  exit 1
fi
