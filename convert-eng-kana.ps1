# 選手名の文字列抽出
function getPlayerName([String]$str) 
{
    $Index = $str.IndexOf('選手名 : ')
    if($Index -eq -1){
        $name = "no information"
        return $name
    }
    $name = $str.Substring(6,$str.Length-6)

    return $name
}

# アルファベット表記の名前をカタカナ表記に変換する
function getKanaName([String]$str){
    $kananame = ""
    analyzeName($str, $kananame)
    return $kananame
}

function analyzeName([String]$str, $kanastr){
    $kananame = @()
    $tmpname = ""
    $kanastr = ""
    $strArr = $str.ToCharArray()
    $len = $strArr.Length

    for($i=0;$i -lt $len; $i++){
        switch ($strArr[$i]) 
        {
            "a" {
                if($tmpname -eq ""){
                    $kananame += 'ア'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '・ア'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += 'バ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $kananame += 'ガ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += 'パ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += 'ラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += 'ラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += 'ヴァ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += 'マ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += 'ハ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += 'ナ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += 'カ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += 'ジャ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += 'サ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += 'カ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += 'ダ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += 'ヤ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += 'タ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += 'ファ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += 'ワ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += 'ザ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += 'クサ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += 'ニャ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += 'ジャ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ga") {
                    $kananame += 'ガ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += 'ッタ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += 'トラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += 'ッサ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += 'スタ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += 'ッパ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += 'グラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += 'クラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += 'トラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += 'カ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += 'ッファ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += 'ッガ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += 'ッジャ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += 'ガ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += 'ッラ'
                    #$kananame += 'ルラ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += 'ッツァ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += 'ッカ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += 'ッバ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += 'ッダ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += 'タ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += 'ンナ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += 'ッカ'
                    $tmpname = ""
                    break
                }
                Write-Host "A else | $tmpname"
            }
            "i" {
                if($tmpname -eq ""){
                    $kananame += 'イ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '・イ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "I") {
                    $kananame += 'イ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += 'ビ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $tmpname += $strArr[$i]
                    Write-Host "Italian spell |$tmpname"    
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += 'リ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += 'ジ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += 'ジ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += 'ヒ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += 'ニ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += 'ピ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += 'ヴィ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += 'リ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += 'イ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += 'ティ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッリ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += 'ミ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += 'キ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += 'ディ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += 'ウィ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += 'ツィ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += 'フィ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += 'チ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += 'ウ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += 'クシ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += 'ニ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += 'ッティ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += 'ッシ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += 'スティ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += 'ーリ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += 'ッピ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += 'ッチ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += 'ッビ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += 'ッヂ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += 'クリ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += 'トリ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += 'キ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += 'ッフィ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッリ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += 'ッジ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += 'ッジ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += 'ギ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += 'ッリ'
                    #$kananame += 'ルリ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += 'ッツィ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += 'ティ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += 'ンニ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += 'ッキ'
                    $tmpname = ""
                    break
                }
                Write-Host "I else | $tmpname"
            }
            "u" {
                if($tmpname -eq ""){
                    $kananame += 'ウ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '・ウ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "U") {
                    $kananame += 'ウ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += 'ブ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += 'フ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += 'ル'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += 'フ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += 'ヌ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += 'ユ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += 'トゥ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッル'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += 'ム'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "q") {
                    $kananame += 'ク'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += 'ル'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    if($strArr[$i] -eq "e"){
                        break
                    }else{
                        $kananame += 'グ'
                        $tmpname = ""
                        break    
                    }
                }elseif ($tmpname -eq "c") {
                    $kananame += 'ク'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += 'プ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += 'ウェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += 'ズ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += 'シュ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += 'ヌ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += 'ジュ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += 'ク'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += 'ドゥ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += 'ス'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += 'ジュ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += 'ットゥ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += 'ッス'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += 'ール'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += 'ストゥ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += 'ップ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += 'ッブ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += 'ッヅ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += 'クル'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += 'トル'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += 'ク'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += 'ッフ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッル'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += 'ッグ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += 'ッジュ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += 'グ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += 'ッル'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += 'ッヅ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += 'ック'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += 'トゥ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += 'ンヌ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += 'ック'
                    $tmpname = ""
                    break
                }
                Write-Host "U else | $tmpname"
            }
            "e" {
                if($tmpname -eq ""){
                    $kananame += 'エ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "’") {
                    $kananame += '・エ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "E") {
                    $kananame += 'エ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += 'ベ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += 'レ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += 'レ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += 'ヘ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += 'ネ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += 'ゼ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += 'ジェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $kananame += 'ジェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += 'イェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += 'テ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += 'フェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += 'ケ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += 'デ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += 'チェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += 'ヴェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッレ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += 'メ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += 'ペ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += 'ウォ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += 'ゼ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += 'クセ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += 'ネ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gu") {
                    $kananame += 'ゲ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += 'ジェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += 'ーレ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += 'ッテ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += 'ッセ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += 'ステ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += 'ッペ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += 'ッチェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += 'ッベ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += 'ッデ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += 'クレ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += 'トレ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += 'ケ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += 'ッフェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッレ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += 'ッジェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += 'ッジェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += 'ゲ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += 'ッレ'
                    #$kananame += 'ルレ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += 'ッツェ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += 'テ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += 'ンネ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += 'ッケ'
                    $tmpname = ""
                    break
                }
                Write-Host "E else | $tmpname"
            }
            "o" {
                if($tmpname -eq ""){
                    $kananame += 'オ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '・オ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "O") {
                    $kananame += 'オ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += 'ボ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += 'コ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += 'ツォ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += 'ポ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += 'ロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += 'モ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += 'ロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += 'ホ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += 'ノ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += 'ヴォ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += 'コ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += 'ド'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $kananame += 'ゴ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += 'フォ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += 'ロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += 'ソ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += 'ジョ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += 'ヨ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += 'ト'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += 'ゾ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += 'クソ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += 'ニョ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += 'ジョ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += 'ーロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += 'ット'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += 'ッソ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += 'スト'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += 'ッポ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += 'ッコ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += 'クロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += 'トロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += 'ッフォ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += 'ッツォ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += 'ッロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += 'ッゴ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += 'ッジョ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += 'ゴ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += 'ッロ'
                    #$kananame += 'ルロ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += 'コ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += 'ッボ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += 'ッド'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += 'ド'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += 'ンノ'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += 'ッチョ'
                    $tmpname = ""
                    break
                }
                Write-Host "O else | $tmpname"

            }
            # 子音の場合
            {$_ -notmatch "a","i","u","e","o"} {
                if($tmpname -notmatch "a","i","u","e","o"){
                    switch ($tmpname) {
                        "b" {
                            if($strArr[$i] -eq "b"){
                                break    
                            }else{
                                $kananame += 'ブ'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "y" {
                            if($strArr[$i] -match "a","i","u","e","o"){
                                break                                
                            }else{
                                $kananame += 'イ'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "h" {
                            if($strArr[$i] -match "a","i","u","e","o"){
                                break    
                            }else{
                                $kananame += 'ー'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "v" {
                            if($strArr[$i] -match "a","i","u","e","o"){
                                break    
                            }else{
                                $kananame += 'ヴ'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "n" {
                            if($strArr[$i] -eq "n"){
                                break    
                            }else{
                                $kananame += 'ン'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "nn" {
                            break
                        }
                        "nny" {
                            $kananame += 'ニー'
                            $tmpname = ""
                            break                                
                        }
                        "s" {
                            if($strArr[$i] -eq "s"){
                                break    
                            }else{
                                $kananame += 'ス'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "k" {
                            if($strArr[$i] -eq "k"){
                                break    
                            }else{
                                $kananame += 'ク'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "d" {
                            if($strArr[$i] -eq "d"){
                                break
                            }else{
                                $kananame += 'ド'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "t" {
                            if($strArr[$i] -eq " "){
                                $kananame += 'ト'
                                $tmpname = ""
                                break    
                            }elseif($strArr[$i] -eq "t"){
                                $kananame += 'ッ'
                                $tmpname = ""
                                break    
                            }else{
                                break
                            }
                        }
                        "th" {
                            break
                        }
                        "j" {
                            if($strArr[$i] -eq "j"){
                                break
                            }else{
                                $kananame += 'イ'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "r" {
                            if($strArr[$i] -eq "r"){
                                break
                            }else{
                                $kananame += 'ル'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "c" {
                            if($strArr[$i] -eq "c" -or $strArr[$i] -eq "h"){
                                break
                            }else {
                                $kananame += 'ク'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "l" {
                            if($strArr[$i] -eq "l"){
                                break    
                            }else{
                                $kananame += 'ル'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "f" {
                            if($strArr[$i] -eq "f"){
                                break    
                            }else{
                                $kananame += 'フ'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "g" {
                            if($strArr[$i] -eq "g" -or $strArr[$i] -eq "l" -or $strArr[$i] -eq "n" -or $strArr[$i] -eq "h"){
                                break
                            }else{
                                $kananame += 'グ'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "m" {
                            if($strArr[$i] -eq " "){
                                $kananame += 'ム'
                                $tmpname = ""
                                break                                
                            }else{
                                $kananame += 'ン'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "z" {
                            if($strArr[$i] -eq "z"){
                                break    
                            }else{
                                $kananame += 'ス'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "p" {
                            if($strArr[$i] -eq "p"){
                                break    
                            }else{
                                $kananame += 'プ'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "’" {
                            $kananame += '・'
                            $tmpname = ""
                            break                                    
                        }
                        "gi" {
                            $kananame += 'ジ'
                            $tmpname = ""
                            break                            
                        }
                        "w" {
                            if($strArr[$i] -eq " " -or ($strArr[$i] -notmatch "a","i","u","e","o")){
                                $kananame += 'ウ'
                                $tmpname = ""
                                break    
                            }else{
                                break
                            }
                        }
                        "x" {
                            if($strArr[$i] -eq " "){
                                $kananame += 'ックス'
                                $tmpname = ""
                                break    
                            }else{
                                break
                            }
                        }
                        "ch" {
                            if($strArr[$i] -eq "r"){
                                $kananame += 'ク'
                                $tmpname = ""
                                break
                            }elseif($strArr[$i] -eq "" -or $strArr[$i] -eq " "){
                                $kananame += 'チ'
                                $tmpname = ""
                                break
                            }elseif($strArr[$i] -notmatch "a","i","u","e","o","r",""," "){
                                $kananame += 'ヒ'
                                $tmpname = ""
                                break
                            }else{
                                break
                            }
                        }
                        "ll" {
                            break                            
                        }
                        "ff" {
                            if($strArr[$i] -notmatch "a","i","u","e","o"){
                                $kananame += 'ッフ'
                                $tmpname = ""
                                break    
                            }else{
                                break
                            }
                        }
                        "cc" {
                            break                            
                        }
                        "cch" {
                            break                            
                        }
                        " " {
                            if($i -eq $len - 1){
                                break
                            }
                            $kananame += "・"
                            $tmpname = $null
                            #$tmpname = ""
                            break
                        }
                    }
                }
                $tmpname += $strArr[$i]
                Write-Host "Not consonant |$tmpname"
                break
            }

            Default { break }
        }
    }
    $kanastr = $kananame -join ""
    $kananame = $kanastr
    
    Write-Output([String]$kananame)
}

# メイン処理
# System.Windows.Formsアセンブリを有効化
[void][System.Reflection.Assembly]::Load("System.Windows.Forms, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b77a5c561934e089")

# OpenFileDialogクラスをインスタンス化し、必要な情報を設定
$dialog = New-Object System.Windows.Forms.OpenFileDialog
$dialog.InitialDirectory = "C:\"
$dialog.Title = "ファイルを選択してください"
# ダイアログを表示
if($dialog.ShowDialog() -eq "OK"){
    # ［OK］ボタンがクリックされたら、選択されたファイル名（パス）を表示
    $dialog.FileName + " が選択されました。"
}

$nameArr = Get-Content $dialog.FileName | Select-String "選手名 : "

for($i=0; $i -lt $nameArr.Count; $i++){
    $namestr = $nameArr[$i]
    $name = getPlayerName($namestr)
    $kananame = getKanaName($name)
    Write-Host "No[$i] : $name  $kananame"
}


