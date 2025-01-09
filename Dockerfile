# Use uma imagem base Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos para o container
COPY . /app

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Comando padrão ao iniciar o container
CMD ["python", "app.py"]
