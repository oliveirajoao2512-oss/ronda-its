# Ronda de ITs

Sistema de ronda de instruções de trabalho (IT) no chão de fábrica.

- **Programação:** sobe o PLANEJAMENTO / APONTAMENTO do dia (.xlsm). Lê a aba PLANEJAMENTO, separa por GRUPO 1–4 e MONTAGENS e marca os turnos (X ou vazio = parado).
- **Ronda:** por máquina e PN, operador treinado e IT correta, com o motivo quando estiver errada.
- **Dashboard:** zonas mais defasadas, ranking de team leaders (por zona e turno), motivos, máquinas, evolução diária e exportação em CSV.
- **Reimpressão:** registro de PN e solicitante, com aviso de reincidência de perda de documento.

Página estática (um único `index.html`). Os dados ficam na tabela `ronda_docs` do Supabase (colunas `coll`, `id`, `data` jsonb).

## Publicar no Cloudflare Pages
Workers & Pages → Create → Pages → Connect to Git → este repositório. Framework: None, build command vazio, output directory `/`.
