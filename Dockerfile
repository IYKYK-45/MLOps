#Step1: use a lightweight python base image
FROM python:3.11-slim

#Step2: set the directory where the code will live inside the container
WORKDIR /app

#step3: copy only the requirements first(for better caching)
COPY requirements.txt .

#step4: install libraries
RUN pip install --no-cache-dir -r requirements.txt

#step5: copy your api code into the container
COPY . .

#STEP6: EXPOSE THE PORT YOUR APPS RUN ON
EXPOSE 8000

#STEP7: THE COMMAND TO RUN WHEN THE CONTAINER STARTS
CMD ["uvicorn","api:app","--host","0.0.0.0","--port","8000"]
