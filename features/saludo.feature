Feature: Saludo

    Saluda a la persona

    Scenario: Pido el Nombre
    Given inicio la aplicación
    And inicio el chat
    Then el mensaje 0 es "¿Puedes decirme tu nombre?"

    Scenario: Saludo usando Nombre
    Given inicio la aplicación
    And inicio el chat
    When ingreso "Pepe"
    Then el mensaje 0 es "Buen día, Pepe"

