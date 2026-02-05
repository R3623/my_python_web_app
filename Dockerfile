# Otran'ny oe manao installation necessaire any amin'ny virtual machine mba ampandeha anle code
FROM python:3.9-slim
# Mametraka ny working directory ao anaty virtual machine
WORKDIR /app
# Mandika ny fichier requirements.txt ao anaty container . Ao anaty workdir le fichier no alefa
COPY requirements.txt .
# Tsy maintsy mila mametraka ireo dependencies rehetra mba ho installena
RUN pip install -r requirements.txt
# Mandika ny fichier . ao anaty container
COPY . .

# Mba ahafahana miacceder anle portnle app refa mandeha
EXPOSE 5000
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
#  mba ahafahan'ilay n'importe quel address ip mlance anle application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

