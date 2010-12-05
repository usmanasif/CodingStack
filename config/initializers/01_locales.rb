I18n.backend.store_translations 'br', {}
I18n.backend.store_translations 'ca', {}
I18n.backend.store_translations 'de', {}
I18n.backend.store_translations 'el', {}
I18n.backend.store_translations 'en', {}
I18n.backend.store_translations 'es', {}
I18n.backend.store_translations 'es-419', {}
I18n.backend.store_translations 'fr', {}
I18n.backend.store_translations 'gl', {}
I18n.backend.store_translations 'ia', {}
I18n.backend.store_translations 'ja', {}
I18n.backend.store_translations 'ko', {}
I18n.backend.store_translations 'mk', {}
I18n.backend.store_translations 'nl', {}
I18n.backend.store_translations 'pt-BR', {}
I18n.backend.store_translations 'pt-PT', {}
I18n.backend.store_translations 'ru', {}
I18n.backend.store_translations 'te', {}

I18n.load_path << Dir[ File.join(RAILS_ROOT, 'config', 'locales', '**', '*.{rb,yml}') ]

# You need to "force-initialize" loaded locales
I18n.backend.send(:init_translations)

AVAILABLE_LOCALES = ["br" "ca", "de", "el", "en", "es", "es-419", "fr", "gl", "ia", "ja", "ko", "mk", "nl", "pt-BR", "pt-PT", "ru", "te"] #I18n.backend.available_locales.map { |l| l.to_s }
AVAILABLE_LANGUAGES = I18n.backend.available_locales.map { |l| l.to_s.split("-").first}.uniq

## this is only for the user settings, not related to translatewiki.net
DEFAULT_USER_LANGUAGES = ['en', 'es', 'es-419', 'fr', 'pl', 'pt-BR', 'pt-PT', 'ja', 'el', 'de', 'ko', 'nl', 'ru', 'tl', 'it']

RAILS_DEFAULT_LOGGER.debug "* Loaded locales: #{AVAILABLE_LOCALES.inspect}"

require "i18n/backend/fallbacks"
I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.default_locale = :"en"
