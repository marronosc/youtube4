from flask import Flask, render_template
import os

# Importar el blueprint del extractor
from routes.extractor import extractor_bp

app = Flask(__name__)

# Registrar el blueprint del extractor
app.register_blueprint(extractor_bp)

@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)