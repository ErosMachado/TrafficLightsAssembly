# Projeto de Semáforo em Assembly

Este projeto simula um sistema de semáforos utilizando o microcontrolador 8051. Foi desenvolvido com o **EdSim51** para programação e teste em Assembly e simulado com o **Proteus** para verificar a interação dos componentes e interrupções externas. 

## Descrição do Projeto

O sistema controla os semáforos de veículos e pedestres em um cruzamento. Dois botões conectados às interrupções externas (**INT0** e **INT1**) simulam os botões de pedestres:

- **INT0**: Ativa o semáforo de pedestres, mudando para **verde**, enquanto o semáforo de veículos muda para **vermelho**.
- **INT1**: Retorna o semáforo de pedestres para **vermelho** e restaura o semáforo de veículos para sua sequência normal.

O sistema inclui:
- Temporização com diferentes delays.
- Transição automática entre os estados.
- Modo de alerta (luzes amarelas piscando) ativado por **SW1**.

## Imagem do Circuito

![proteus_img](https://github.com/user-attachments/assets/56950af6-ce28-4a5b-96f4-0788cfc66f06)


---

# Traffic Light Project in Assembly

This project simulates a traffic light system using the 8051 microcontroller. It was developed with **EdSim51** for Assembly programming and testing, and simulated with **Proteus** to validate the components and external interrupts' interaction. 

## Project Description

The system controls vehicle and pedestrian traffic lights at an intersection. Two buttons connected to external interrupts (**INT0** and **INT1**) simulate pedestrian buttons:

- **INT0**: Activates the pedestrian light, turning it **green**, while the vehicle light turns **red**.
- **INT1**: Returns the pedestrian light to **red** and restores the vehicle light to its normal sequence.

The system includes:
- Timing with various delays.
- Automatic transition between states.
- Alert mode (flashing yellow lights) activated by **SW1**.

---

## Links úteis

1. Documentação do EdSim51: [Link](http://www.edsim51.com/)
2. Download do Proteus: [Link](https://www.labcenter.com/)
