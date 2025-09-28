# Instruções para Executar a Aplicação

## Como executar localmente:

1. **Navegue até a pasta do projeto:**
   ```
   cd "c:\Users\Danilo\OneDrive\Área de Trabalho\Correção escala COnjugal\escala-conjugal-spa"
   ```

2. **Abra o arquivo principal:**
   - Clique duas vezes no arquivo `index.html`
   - OU abra seu navegador e navegue até o arquivo
   - OU use o comando no PowerShell:
   ```powershell
   Start-Process "index.html"
   ```

## Fluxo da Aplicação:

### 1. Dashboard Inicial
- Página principal com botão "Iniciar Avaliação"
- Design moderno com gradientes e animações

### 2. Opções de Preenchimento
- **🆕 Importar do Excel**: Carrega dados de arquivo .xlsx
- **🆕 Baixar Modelo**: Gera template Excel para preenchimento offline
- **Preencher Manualmente**: Formulário tradicional na web

### 3. Formulário da Primeira Pessoa (se manual)
- Campos: Nome Completo e Idade
- 24 perguntas com 3 opções de resposta cada
- Ao finalizar, aparece popup para confirmar cônjuge

### 3. Confirmação do Cônjuge
- Modal com pergunta: "Para dar continuidade é necessário cadastrar as respostas do cônjuge. Deseja continuar?"
- Opções: Cancelar (volta ao dashboard) ou Adicionar (continua)

### 4. Formulário da Segunda Pessoa
- Mesmo formulário, mas para o cônjuge
- Botão muda para "Analisar"

### 5. Resultados
- Mostra respostas de ambas as pessoas lado a lado
- Nome e idade de cada pessoa
- Todas as 24 respostas organizadas
- Botão "Gerar Estatísticas"
- Botão "Salvar como PDF"
- Botão "Voltar ao Dashboard"

### 6. Estatísticas por Grupos
- Análise das respostas agrupadas por categorias:
  - **SIC**: Satisfação com Intimidade e Comunicação
  - **SAOE**: Satisfação com Aspectos Organizacionais e Estruturais
  - **SAE**: Satisfação com Apoio Emocional
- Contadores de respostas por pessoa e por grupo
- Percentual de concordância entre os cônjuges
- Botão "Salvar Estatísticas como PDF"
- Botão "Voltar aos Resultados"

## Recursos da Aplicação:

✅ **Dashboard responsivo** com design moderno
✅ **Formulário completo** com 24 perguntas da escala conjugal
✅ **Sistema de navegação** entre primeira e segunda pessoa
✅ **Armazenamento temporário** dos dados
✅ **Visualização comparativa** dos resultados
✅ **🆕 Importação via Excel** (.xlsx) com validação automática
✅ **🆕 Geração de template** Excel personalizado
✅ **Análise estatística por grupos** (SIC, SAOE, SAE)
✅ **Cálculo de concordância** entre cônjuges
✅ **Geração de PDF** com todas as respostas
✅ **Geração de PDF** com estatísticas detalhadas
✅ **Interface intuitiva** e acessível
✅ **Design responsivo** para mobile e desktop

## Tecnologias Utilizadas:
- HTML5 semântico
- CSS3 com animações e gradientes
- JavaScript vanilla (sem dependências externas)
- jsPDF para geração de PDF (CDN)

## Navegadores Suportados:
- Chrome/Edge 60+
- Firefox 55+
- Safari 12+

A aplicação está totalmente funcional e pronta para uso!