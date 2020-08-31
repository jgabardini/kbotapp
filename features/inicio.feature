Feature: Feature name

    Iniciar el chatbot

    Scenario: Bienvenida
    When inicio la aplicación
    Then en nombre de la app es "Chatea con Kleer"

    Scenario: Iniciar el chat default en español
    Given inicio la aplicación
    When inicio el chat
    Then el mensaje 1 es "Hola"

