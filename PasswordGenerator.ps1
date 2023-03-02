# Definir comprimento da senha
$length = 10

# Definir caracteres permitidos na senha
$allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-=,./<>?;:{}[]|\"

# Gerar senha aleatória
$password = ""
for ($i = 0; $i -lt $length; $i++) {
    $randomIndex = Get-Random -Minimum 0 -Maximum $allowedChars.Length
    $password += $allowedChars[$randomIndex]
}

# Exibir senha gerada
Write-Output $password
