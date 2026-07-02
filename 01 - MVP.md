## Referência

- [[mvp.canvas]]
## Etapas

- [x] Gerenciamento de turno básico
- [x] Interface visual básica
- [x] Visual da carta e organização de nós
- [ ] Sistema vitoria e derrota
- [x] Inimigo básico
- [ ] Botão para iniciar outra partida
- [x] Sistema de lançamento de cartas [% 50]
- [ ] Sistema para armazenar eventos
- [ ] Refatoração do código e README.md para Inglês

- Proximos passos
- [ ] Adicionar identificação para diferenciar múltiplas instâncias de inimigos.
- [ ] Permitir que o CombatController decida quando remover o inimigo morto.
- [X] Adicionar DropZone capaz de reconhecer o Card
- [ ] Encaminhar a carta para o CombatController


## Scripts
- Enemy.gd: Responsável por armazenar variáveis, estado e interface básica (será separado depois). 
Tem métodos como is_dead(): para verificar se está morto, sinais para o futuro CombatController died()
take_damage() e heal() para logicas de dano e cura e initialize_enemy() e update_health_bar() para inicialização 
das variáveis e atualização da barra de vida e textos.
- Card_view.gd: responsável por armazenar as variáveis da carta, como custo, nome, efeito e etc.
Tem métodos drag and drop, carta implementa o método _get_drag_data() que é um método nativo do godot, que identifica
quando um control está sendo arrastado e retorna os dados dele.
- Drop_zone.gd: responsável por identificar se é uma carta que está sendo draggable acima do dropzone e se for
posteriormente sera responsavel por chamar o CombatController.
