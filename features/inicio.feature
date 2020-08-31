Feature: Inicio de la aplicación 

    Esta aplicación se invoca desde la pagina de Kleer

    Scenario: Titulo de la aplicación
    When inicio la aplicacion
    Then el titulo es "Chatea con Kleer"

    Scenario: Saluda al iniciar
    Given inicio la aplicacion
    When inicio el chat
    Then el mensaje 1 es "Hola"
