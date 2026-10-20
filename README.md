# Checklist colaborativo do TCC

A interface é hospedada no GitHub Pages e o progresso compartilhado usa Supabase Realtime.

## Configuração (necessária uma única vez)

1. Crie um projeto em https://supabase.com/dashboard (o plano gratuito deve bastar para este checklist).
2. No projeto, abra SQL Editor, cole e execute o arquivo [supabase-setup.sql](./supabase-setup.sql).
3. Em Project Settings → API (ou Connect), copie a Project URL e a publishable key (ou a chave anon legada). Não use a chave service_role.
4. Edite [config.js](./config.js) no GitHub, substitua os dois valores COLE_ pelos dados do seu projeto e salve/commit.
5. Ative GitHub Pages em Settings → Pages: Deploy from a branch, branch main, folder /(root).

## Permissões
Qualquer pessoa com o link pode marcar e desmarcar tarefas, conforme solicitado. Qualquer visitante também pode desfazer marcações. Não há login nem histórico de auditoria. Nunca publique a chave service_role.