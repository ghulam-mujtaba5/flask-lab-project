import json
from app import app


def test_home():
    response = app.test_client().get('/')
    assert response.status_code == 200
    assert b"Hello from Flask Lab" in response.data


def test_health():
    response = app.test_client().get('/health')
    assert response.status_code == 200
    assert b"OK" in response.data


def test_post_data():
    client = app.test_client()
    payload = {'name': 'test', 'value': 123}
    response = client.post('/data', data=json.dumps(payload), content_type='application/json')
    assert response.status_code == 200
    data = response.get_json()
    assert data['received'] == payload
    assert data['message'] == 'Data processed'
