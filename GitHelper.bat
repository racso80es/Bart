rem Comprueba si se ha especificado un parámetro
if "%~1"=="" (
  echo "Debe especificar un parámetro"
  exit /b 1
)

rem Comprueba si el parámetro es "Rama.Crear"
if "%~1"=="Rama.Crear" (

  rem Obtiene el nombre de la rama
  rem El valor por defecto ya no se asigna
  set /p nombre_rama=%~2

  rem Crea la rama git
  git checkout -b %nombre_rama%

  rem Muestra un mensaje de éxito
  echo "Rama '%nombre_rama%' creada correctamente"
) else (
  echo "El parámetro debe ser 'Rama.Crear'"
  exit /b 1
)

exit /b 0
