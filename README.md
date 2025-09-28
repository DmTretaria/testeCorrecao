# Escala Conjugal - Sistema de Avaliação de Relacionamentos Refinado

Este é um sistema web avançado para avaliação de relacionamentos através da Escala Conjugal, desenvolvido com tecnologias modernas para ajudar casais a compreenderem melhor suas dinâmicas relacionais.

## ✨ Funcionalidades Principais

### 🏠 Dashboard Interativo
- Interface principal moderna com design glassmorphism
- Animações suaves e responsivas
- Cards informativos sobre privacidade e funcionalidades
- Botões com feedback visual e estados de loading

### 📋 Sistema de Avaliação Dupla
- **Primeira Pessoa**: Coleta dados pessoais e 24 respostas estruturadas
- **Segunda Pessoa**: Modal de confirmação e formulário para cônjuge
- **Validação Inteligente**: Verificação em tempo real de preenchimento
- **Progress Bar**: Acompanhamento visual do progresso (0-100%)

### 📊 Análise Comparativa Avançada
- Comparação automática entre respostas dos parceiros
- Cálculo de percentual de concordância
- Visualização detalhada de respostas individuais
- Resumo estatístico com métricas importantes

### 📄 Geração de PDF Profissional
- Relatório completo com todas as respostas
- Design profissional com branding
- Comparativo estatístico incluído
- Download automático com nome personalizado

## 🎨 Design e UX

### Interface Moderna
- **Gradientes**: Paleta de cores harmoniosa (azul/roxo)
- **Glassmorphism**: Efeitos de vidro fosco e backdrop blur
- **Animations**: Transições suaves e animações CSS
- **Responsivo**: Adaptável para desktop, tablet e mobile

### Experiência do Usuário
- **Feedback Visual**: Estados hover, focus e loading
- **Validação em Tempo Real**: Indicação imediata de campos obrigatórios
- **Modais Elegantes**: Confirmações e alertas bem desenhados
- **Alertas Contextuais**: Notificações toast para ações do usuário

## 🛠️ Tecnologias e Arquitetura

### Frontend
- **HTML5**: Estrutura semântica e acessível
- **CSS3**: Grid, Flexbox, Custom Properties, Animations
- **JavaScript ES6+**: Classes, Modules, Async/Await
- **Web APIs**: FormData, LocalStorage, Intersection Observer

### Bibliotecas Externas
- **jsPDF 2.5.1**: Geração avançada de PDFs
- **html2canvas 1.4.1**: Captura de elementos para PDF
- **Font Awesome 6.0**: Biblioteca completa de ícones
- **Google Fonts**: Tipografia Inter para melhor legibilidade

## 📁 Estrutura do Projeto Refinada

```
escala-conjugal-spa/
├── index.html                 # Dashboard principal
├── src/
│   ├── form.html             # Formulário avançado com modals
│   ├── scripts/
│   │   ├── dashboard.js      # Lógica do dashboard + animações
│   │   └── form.js           # Sistema completo de avaliação
│   └── styles/
│       ├── dashboard.css     # Estilos modernos do dashboard
│       └── form.css          # Estilos avançados do formulário
├── wix-version/              # Versão para Wix (se aplicável)
├── README.md                 # Documentação completa
├── INSTRUÇÕES.md             # Guia de uso detalhado
├── GUIA_IMPORTACAO_EXCEL.md  # Instruções para Excel
├── EXEMPLO_ESTATISTICAS.md   # Exemplos de análises
└── DEMONSTRACAO_IMPORTACAO.md # Demo de importação
```

## 🚀 Como Usar o Sistema

### 1. Inicialização
1. Abra `index.html` em um navegador moderno
2. Clique em "Iniciar Avaliação" no dashboard
3. Uma nova aba será aberta com o formulário

### 2. Primeira Pessoa
1. Preencha nome completo e idade
2. Responda às 24 questões sobre o relacionamento
3. Cada questão tem 3 opções de resposta
4. Acompanhe o progresso na barra superior
5. Clique em "Enviar Respostas"

### 3. Confirmação para Segunda Pessoa
1. Modal aparece perguntando sobre o cônjuge
2. "Cancelar" volta ao dashboard
3. "Adicionar" inicia formulário para segunda pessoa

### 4. Segunda Pessoa
1. Mesmo processo da primeira pessoa
2. Botão muda para "Analisar" 
3. Após envio, resultados são processados

### 5. Visualização de Resultados
1. Dados de ambas as pessoas exibidos
2. Comparativo estatístico automático
3. Botão "Salvar como PDF" disponível
4. Opção "Nova Avaliação" para recomeçar

## ⚙️ Funcionalidades Técnicas Avançadas

### Validação Inteligente
- Verificação em tempo real de campos obrigatórios
- Validação de tipos de dados
- Feedback imediato ao usuário

### Sistema de Progress
- Cálculo automático de campos preenchidos
- Atualização visual da barra de progresso
- Feedback percentual em tempo real

### Geração de PDF Avançada
- Loading modal durante processamento
- Formatação profissional do documento
- Tratamento de quebras de página
- Nome de arquivo personalizado

### Comparação Inteligente
- Cálculo automático de concordâncias
- Geração de estatísticas detalhadas
- Visualização gráfica dos resultados

## 🎯 Características Especiais

### 📱 Responsividade Total
- **Desktop**: Layout em grid otimizado
- **Tablet**: Adaptação de colunas e espaçamentos
- **Mobile**: Design empilhado e botões otimizados

### 🔒 Privacidade e Segurança
- **Processamento Local**: Dados nunca saem do dispositivo
- **Sem Servidor**: Funcionamento 100% client-side
- **Armazenamento Temporário**: Dados limpos ao encerrar

### ⚡ Performance
- **Lazy Loading**: Recursos carregados sob demanda
- **Debounced Events**: Otimização de eventos
- **CSS Optimizado**: Uso eficiente de recursos

## 🔧 Personalização do Sistema

### Modificar Questões
```javascript
// Em form.js - alterar array de questões
this.questions = [
    "Nova questão personalizada...",
    // Adicionar/remover questões conforme necessário
];
```

### Alterar Opções de Resposta
```javascript
// Em form.js - modificar opções disponíveis
this.options = [
    { value: 1, text: "Opção personalizada 1" },
    { value: 2, text: "Opção personalizada 2" },
    { value: 3, text: "Opção personalizada 3" }
];
```

### Personalizar Cores e Visual
```css
/* Em dashboard.css e form.css */
:root {
    --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    --accent-color: #ff6b6b;
    /* Modificar conforme preferência */
}
```

## 📊 Métricas e Analytics

O sistema gera automaticamente:
- **Concordância Total**: Percentual de respostas iguais
- **Diferenças**: Número de respostas divergentes
- **Análise por Questão**: Comparação item por item
- **Perfil Individual**: Respostas detalhadas de cada pessoa

## 🌐 Compatibilidade e Requisitos

### Navegadores Suportados
- **Chrome**: 80+ (recomendado)
- **Firefox**: 75+
- **Safari**: 13+
- **Edge**: 80+

### Recursos Necessários
- **JavaScript**: Habilitado
- **CSS3**: Para animações e layout modernos
- **Conexão à Internet**: Para fontes e ícones externos

## 🚀 Instalação e Deploy

### Uso Local
1. Clone ou baixe o repositório
2. Abra `index.html` no navegador
3. Não requer servidor web

### Hospedagem Web
1. Upload de todos os arquivos para servidor
2. Configure HTTPS (recomendado)
3. Teste em diferentes dispositivos

## 🤝 Suporte e Contribuição

### Relatório de Problemas
- Descreva o problema detalhadamente
- Inclua navegador e versão utilizados
- Forneça passos para reproduzir

### Sugestões de Melhoria
- Novas funcionalidades desejadas
- Melhorias de interface
- Otimizações de performance

---

## 📄 Licença e Créditos

© 2025 Escala Conjugal - Sistema Refinado  
Desenvolvido com ❤️ para relacionamentos mais saudáveis

**Tecnologias**: HTML5, CSS3, JavaScript ES6+, jsPDF, Font Awesome, Google Fonts  
**Design**: Glassmorphism, Material Design, Responsive Web Design