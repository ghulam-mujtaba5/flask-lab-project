from flask import Flask, request, jsonify, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/health')
def health():
    return 'OK', 200

@app.route('/data', methods=['POST'])
def data_endpoint():
    if not request.is_json:
        return jsonify({'error': 'Invalid JSON'}), 400
    payload = request.get_json()
    # Echo back received data with a message
    return jsonify({'received': payload, 'message': 'Data processed'}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
