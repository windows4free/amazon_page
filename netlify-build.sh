#!/bin/bash

# Instalar Flutter
git clone https://github.com/flutter/flutter.git
export PATH="$PATH:`pwd`/flutter/bin"

# Verificar instalación
flutter --version

# Obtener dependencias
flutter pub get

# Compilar
flutter build web
