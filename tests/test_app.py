import pytest

from app import app, db


@pytest.fixture
def client():
    app.config.update(
        TESTING=True,
        SECRET_KEY="test-secret-key",
        SQLALCHEMY_DATABASE_URI="sqlite://"
    )

    with app.app_context():
        db.create_all()

        with app.test_client() as test_client:
            yield test_client

        db.session.remove()
        db.drop_all()


def test_homepage(client):
    response = client.get("/")
    assert response.status_code == 200


def test_about_page(client):
    response = client.get("/about")
    assert response.status_code == 200


def test_shop_page(client):
    response = client.get("/shop")
    assert response.status_code == 200