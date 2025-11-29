# Imagem base
FROM python:3.12-slim

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos do projeto
COPY . /app

# Instalar dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor porta usada pelo Flask
EXPOSE 8000

# Rodar aplicação Flask
CMD ["python", "app.py"]
