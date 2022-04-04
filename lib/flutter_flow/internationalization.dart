import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['pt', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String ptText = '',
    String enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'ip2b2azd': {
      'pt': 'Digite o nome do produto: ',
      'en': '',
    },
    'ctkrs62y': {
      'pt': 'Digite o valor:',
      'en': '',
    },
    'bcgi8ids': {
      'pt': 'Adicionar',
      'en': '',
    },
    'x4ymeija': {
      'pt': 'Produtos',
      'en': '',
    },
    's0uneym5': {
      'pt': 'Criar Produto',
      'en': '',
    },
    'h0j1duuc': {
      'pt': 'Home',
      'en': '',
    },
  },
  // login
  {
    'qh2dd5cq': {
      'pt': 'Bem Vindo ao',
      'en': '',
    },
    'wedl9kye': {
      'pt': 'Login',
      'en': '',
    },
    'ai6cfwmq': {
      'pt': 'Login',
      'en': '',
    },
    'z2a6i1m9': {
      'pt': 'Insira seus dados para continuar',
      'en': '',
    },
    'iywhcksj': {
      'pt': 'Endereço de Email',
      'en': '',
    },
    'a2m3vk6f': {
      'pt': 'Digite seu email aqui.',
      'en': '',
    },
    'sbcd4tzs': {
      'pt': 'Senha',
      'en': '',
    },
    'nvksydpo': {
      'pt': 'Digite sua senha aqui.',
      'en': '',
    },
    'e45tuvji': {
      'pt': 'Login',
      'en': '',
    },
    'boupjz4i': {
      'pt': 'Forgot Password?',
      'en': '',
    },
    'l6zhftoo': {
      'pt': 'OR',
      'en': '',
    },
    '17i1xxzj': {
      'pt': 'Use a Social Platform to Login',
      'en': '',
    },
    '8emuhdhl': {
      'pt': 'Crie sua conta',
      'en': '',
    },
    'czy6qbls': {
      'pt': 'Crie sua conta',
      'en': '',
    },
    'zr56rg6w': {
      'pt': 'Enter the information below to get started.',
      'en': '',
    },
    '0lxhs8uv': {
      'pt': 'Email Address',
      'en': '',
    },
    'h7mpehew': {
      'pt': 'Enter your email here...',
      'en': '',
    },
    'm3g0q259': {
      'pt': 'Password',
      'en': '',
    },
    'ikfu10ri': {
      'pt': 'Enter your password',
      'en': '',
    },
    '1wlqzlv1': {
      'pt': 'Confirm Password',
      'en': '',
    },
    'eb1ylq5u': {
      'pt': 'Enter the same password as above.',
      'en': '',
    },
    'jtsp3uuv': {
      'pt': 'Create Account',
      'en': '',
    },
    'kaop5scz': {
      'pt': 'OR',
      'en': '',
    },
    'iz7k1a39': {
      'pt': 'Use a Social Platform to Create Account',
      'en': '',
    },
    'w9e14ngt': {
      'pt': 'Home',
      'en': '',
    },
  },
  // lista
  {
    'wrf9ilwq': {
      'pt': 'Deslogar',
      'en': '',
    },
    '2r3j63fs': {
      'pt': 'api',
      'en': '',
    },
    'd34tvmjf': {
      'pt': 'Home',
      'en': '',
    },
  },
  // teste
  {
    'l6rujxko': {
      'pt': 'Contas',
      'en': '',
    },
    '3w248vwu': {
      'pt': 'Home',
      'en': '',
    },
  },
  // dados
  {
    'wxprxm3r': {
      'pt': 'Contas',
      'en': '',
    },
    'd1d05qgi': {
      'pt': 'Home',
      'en': '',
    },
  },
  // dados_completo
  {
    'yknylh6o': {
      'pt': 'Page Title',
      'en': '',
    },
    '7syxxivi': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '7955z8v7': {
      'pt': '',
      'en': '',
    },
    'nhslszrm': {
      'pt': '',
      'en': '',
    },
    'g2qvfipf': {
      'pt': '',
      'en': '',
    },
    'z6a6k509': {
      'pt': '',
      'en': '',
    },
    '16qjiapb': {
      'pt': '',
      'en': '',
    },
    '81rm445k': {
      'pt': '',
      'en': '',
    },
    'ulljhfwa': {
      'pt': '',
      'en': '',
    },
    'z6gzq2lt': {
      'pt': '',
      'en': '',
    },
    'h8mayp4v': {
      'pt': '',
      'en': '',
    },
    'djgynkh9': {
      'pt': '',
      'en': '',
    },
    'pvtwvc59': {
      'pt': '',
      'en': '',
    },
    'rfi2e0rt': {
      'pt': '',
      'en': '',
    },
    '0mshp57r': {
      'pt': '',
      'en': '',
    },
    'wr4rfawe': {
      'pt': '',
      'en': '',
    },
    'dbxf61qj': {
      'pt': '',
      'en': '',
    },
    '60mj0p2g': {
      'pt': '',
      'en': '',
    },
    'jt9ym805': {
      'pt': '',
      'en': '',
    },
    'mxo79jlx': {
      'pt': '',
      'en': '',
    },
    'g0ikfmmy': {
      'pt': '',
      'en': '',
    },
    '4nh3nxf2': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
