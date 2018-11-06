module ApplicationHelper
  def default_meta_tags
    {
      site: 'TEDRadio',
      title: "日本語音声で聞けるTEDメディア",
      reverse: true,
      charset: 'utf-8',
      description: "TEDRadioは、外国語のTEDでも日本語音声で聞けるTED日本語音声メディアです。字幕を見るために目が離せなくなっていたTEDも、楽に聞けるようになりました。有名TEDを是非日本語で聞いてみてください！",
      # keywords: 'キーワード',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: 'TEDRadio',
        title: '日本語音声で聞けるTEDメディア',
        description: 'TEDRadioは、外国語のTEDでも日本語音声で聞けるTED日本語音声メディアです。字幕を見るために目が離せなくなっていたTEDも、楽に聞けるようになりました。有名TEDを是非日本語で聞いてみてください！',
        type: 'website',
        url: request.original_url,
        image: request.original_url+"tedradio_ogp.png",
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@hatsu',
      }
    }
  end
end
