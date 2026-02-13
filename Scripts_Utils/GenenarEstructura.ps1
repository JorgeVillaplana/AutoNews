# --- CONFIGURACIÓN ---
$RutaProyecto = "C:\AutoNews"
$ArchivoSalida = "C:\AutoNews\Notas\Proyecto AutoNews\Estructura de carpetas actual.md"
$Ignorar = @(".git",".obsidian","venv") # Añade aquí lo que quieras omitir separado por comas
# Normalizamos entradas de ignorados a minúsculas para comparación consistente
$IgnorarNormalizado = $Ignorar | ForEach-Object { $_.ToLower() }

# --- LÓGICA REPARADA ---
function Get-ArbolTexto {
    param (
        [string]$Path,
        [string]$Prefix = ""
    )

    $Resultado = ""
    # Obtenemos contenido filtrado (comparamos en minúsculas para evitar problemas de mayúsculas)
    $Items = @(Get-ChildItem -Path $Path -Force -ErrorAction SilentlyContinue | Where-Object { $IgnorarNormalizado -notcontains $_.Name.ToLower() })


    $Count = $Items.Count
    for ($i = 0; $i -lt $Count; $i++) {
        $Item = $Items[$i]
        $EsUltimo = ($i -eq $Count - 1)

        # Definición de conectores
        if ($EsUltimo) {
            $Conector = "\--- "
        } else {
            $Conector = "+--- "
        }
        $Resultado += "$Prefix$Conector$($Item.Name)`r`n"

        # Si es carpeta, recursión
        if ($Item.PSIsContainer) {
            # Construcción del prefijo para la recursión
            if ($EsUltimo) {
                $NuevoPrefix = $Prefix + "    "
            } else {
                $NuevoPrefix = $Prefix + "|   "
            }
            $Resultado += Get-ArbolTexto -Path $Item.FullName -Prefix $NuevoPrefix
        }
    }
    return $Resultado
}

# --- EJECUCIÓN ---
if (Test-Path $RutaProyecto) {
    Write-Host "Generando estructura..." -ForegroundColor Cyan
    
    # Obtenemos el nombre de la carpeta raíz de forma segura
    $NombreRaiz = (Get-Item $RutaProyecto).Name
    
    # Generamos el cuerpo del árbol
    $CuerpoArbol = Get-ArbolTexto -Path $RutaProyecto
    
    # Montamos el Markdown línea a línea sin indentación para evitar espacios extra
    $MarkdownLines = @()
    $MarkdownLines += '# Estructura del Proyecto'
    $MarkdownLines += "Actualizado: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    $MarkdownLines += ''
    $MarkdownLines += '```text'
    $MarkdownLines += $NombreRaiz
    $MarkdownLines += $CuerpoArbol.TrimEnd("`r`,`n")
    $MarkdownLines += '```'

    # Guardamos con codificación UTF8 para evitar problemas con tildes
    $MarkdownLines | Out-File -FilePath $ArchivoSalida -Encoding utf8

    Write-Host "¡Listo! Árbol guardado en: $ArchivoSalida" -ForegroundColor Green  
} else {
    Write-Host "La ruta del proyecto no existe: $RutaProyecto" -ForegroundColor Red
}

Read-Host -Prompt "Presiona Enter para finalizar"