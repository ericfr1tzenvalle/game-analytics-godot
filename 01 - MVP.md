## Referência

- [[mvp.canvas]]
## Etapas

- [x] Gerenciamento de turno básico
- [x] Interface visual básica
- [x] Visual da carta e organização de nós
- [ ] Sistema vitoria e derrota
- [x] Inimigo básico
- [ ] Botão para iniciar outra partida
- [ ] Sistema de lançamento de cartas
- [ ] Sistema para armazenar eventos

- Proximos passos
- [ ] Adicionar identificação para diferenciar múltiplas instâncias de inimigos.
- [ ] Permitir que o CombatController decida quando remover o inimigo morto.


## Scripts
- Enemy.gd: Responsável por armazenar variáveis, estado e interface básica (será separado depois). 
Tem métodos como is_dead(): para verificar se está morto, sinais para o futuro CombatController died()
take_damage() e heal() para logicas de dano e cura e initialize_enemy() e update_health_bar() para inicialização 
das variáveis e atualização da barra de vida e textos.
