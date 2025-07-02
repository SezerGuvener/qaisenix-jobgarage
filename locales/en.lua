local Translations = {
    cfg = {
        targetLabel = 'Araç Listesini Görüntüle',
        header = 'Araç Listesi',
        officer = 'Konuştuğunuz kişi: ',
        pay = 'satın almak için.',
        success = 'Başarılı bir şekilde araba aldınız.',
        error = 'Yeterince paran yok..',
        progbar = 'Aracınız hazırlanıyor..'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})