# �I�薼�̕����񒊏o
function getPlayerName([String]$str) 
{
    $Index = $str.IndexOf('�I�薼 : ')
    if($Index -eq -1){
        $name = "no information"
        return $name
    }
    $name = $str.Substring(6,$str.Length-6)

    return $name
}

# �A���t�@�x�b�g�\�L�̖��O���J�^�J�i�\�L�ɕϊ�����
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
                    $kananame += '�A'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '�E�A'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += '�o'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $kananame += '�K'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += '�p'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += '���@'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += '�}'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += '�n'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += '�i'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += '�J'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += '�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += '�T'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += '�J'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += '�_'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += '�^'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += '�t�@'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += '�U'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += '�N�T'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += '�j��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += '�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ga") {
                    $kananame += '�K'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += '�b�^'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += '�g��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += '�b�T'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += '�X�^'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += '�b�p'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += '�O��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += '�N��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += '�g��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += '�J'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += '�b�t�@'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += '�b�K'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += '�b�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += '�K'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += '�b��'
                    #$kananame += '����'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += '�b�c�@'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += '�b�J'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += '�b�o'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += '�b�_'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += '�^'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += '���i'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += '�b�J'
                    $tmpname = ""
                    break
                }
                Write-Host "A else | $tmpname"
            }
            "i" {
                if($tmpname -eq ""){
                    $kananame += '�C'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '�E�C'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "I") {
                    $kananame += '�C'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += '�r'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $tmpname += $strArr[$i]
                    Write-Host "Italian spell |$tmpname"    
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += '�W'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += '�W'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += '�q'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += '�j'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += '�s'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += '���B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += '�C'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += '�e�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += '�~'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += '�L'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += '�f�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += '�E�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += '�c�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += '�t�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += '�`'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += '�E'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += '�N�V'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += '�j'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += '�b�e�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += '�b�V'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += '�X�e�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += '�[��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += '�b�s'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += '�b�`'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += '�b�r'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += '�b�a'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += '�N��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += '�g��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += '�L'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += '�b�t�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += '�b�W'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += '�b�W'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += '�M'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += '�b��'
                    #$kananame += '����'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += '�b�c�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += '�e�B'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += '���j'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += '�b�L'
                    $tmpname = ""
                    break
                }
                Write-Host "I else | $tmpname"
            }
            "u" {
                if($tmpname -eq ""){
                    $kananame += '�E'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '�E�E'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "U") {
                    $kananame += '�E'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += '�u'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += '�t'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += '�t'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += '�k'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += '�g�D'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "q") {
                    $kananame += '�N'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    if($strArr[$i] -eq "e"){
                        break
                    }else{
                        $kananame += '�O'
                        $tmpname = ""
                        break    
                    }
                }elseif ($tmpname -eq "c") {
                    $kananame += '�N'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += '�v'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += '�E�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += '�Y'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += '�V��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += '�k'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += '�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += '�N'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += '�h�D'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += '�X'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += '�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += '�b�g�D'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += '�b�X'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += '�[��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += '�X�g�D'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += '�b�v'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += '�b�u'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += '�b�d'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += '�N��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += '�g��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += '�N'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += '�b�t'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += '�b�O'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += '�b�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += '�O'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += '�b�d'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += '�b�N'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += '�g�D'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += '���k'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += '�b�N'
                    $tmpname = ""
                    break
                }
                Write-Host "U else | $tmpname"
            }
            "e" {
                if($tmpname -eq ""){
                    $kananame += '�G'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "�f") {
                    $kananame += '�E�G'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "E") {
                    $kananame += '�G'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += '�x'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += '�w'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += '�l'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += '�['
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += '�W�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $kananame += '�W�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += '�C�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += '�e'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += '�t�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += '�P'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += '�f'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += '�`�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += '���F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += '�y'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "w") {
                    $kananame += '�E�H'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += '�['
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += '�N�Z'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += '�l'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gu") {
                    $kananame += '�Q'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += '�W�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += '�[��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += '�b�e'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += '�b�Z'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += '�X�e'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += '�b�y'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += '�b�`�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += '�b�x'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += '�b�f'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += '�N��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += '�g��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += '�P'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += '�b�t�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += '�b�W�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += '�b�W�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += '�Q'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += '�b��'
                    #$kananame += '����'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += '�b�c�F'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += '�e'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += '���l'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += '�b�P'
                    $tmpname = ""
                    break
                }
                Write-Host "E else | $tmpname"
            }
            "o" {
                if($tmpname -eq ""){
                    $kananame += '�I'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq " " -or $tmpname -eq "'") {
                    $kananame += '�E�I'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "O") {
                    $kananame += '�I'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "b") {
                    $kananame += '�{'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "c") {
                    $kananame += '�R'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += '�c�H'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "p") {
                    $kananame += '�|'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "m") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "r") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "h") {
                    $kananame += '�z'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "n") {
                    $kananame += '�m'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "v") {
                    $kananame += '���H'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "k") {
                    $kananame += '�R'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "d") {
                    $kananame += '�h'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "g") {
                    $kananame += '�S'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "f") {
                    $kananame += '�t�H'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "l") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "s") {
                    $kananame += '�\'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "j") {
                    $kananame += '�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "y") {
                    $kananame += '��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "t") {
                    $kananame += '�g'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "z") {
                    $kananame += '�]'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "x") {
                    $kananame += '�N�\'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gn") {
                    $kananame += '�j��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gi") {
                    $kananame += '�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gl") {
                    $kananame += '�[��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tt") {
                    $kananame += '�b�g'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ss") {
                    $kananame += '�b�\'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "st") {
                    $kananame += '�X�g'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "pp") {
                    $kananame += '�b�|'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cc") {
                    $kananame += '�b�R'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cr") {
                    $kananame += '�N��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "tr") {
                    $kananame += '�g��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ff") {
                    $kananame += '�b�t�H'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "zz") {
                    $kananame += '�b�c�H'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ll") {
                    $kananame += '�b��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gg") {
                    $kananame += '�b�S'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "jj") {
                    $kananame += '�b�W��'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "gh") {
                    $kananame += '�S'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "rr") {
                    $kananame += '�b��'
                    #$kananame += '����'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "ch") {
                    $kananame += '�R'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "bb") {
                    $kananame += '�b�{'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "dd") {
                    $kananame += '�b�h'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "th") {
                    $kananame += '�h'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "nn") {
                    $kananame += '���m'
                    $tmpname = ""
                    break
                }elseif ($tmpname -eq "cch") {
                    $kananame += '�b�`��'
                    $tmpname = ""
                    break
                }
                Write-Host "O else | $tmpname"

            }
            # �q���̏ꍇ
            {$_ -notmatch "a","i","u","e","o"} {
                if($tmpname -notmatch "a","i","u","e","o"){
                    switch ($tmpname) {
                        "b" {
                            if($strArr[$i] -eq "b"){
                                break    
                            }else{
                                $kananame += '�u'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "y" {
                            if($strArr[$i] -match "a","i","u","e","o"){
                                break                                
                            }else{
                                $kananame += '�C'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "h" {
                            if($strArr[$i] -match "a","i","u","e","o"){
                                break    
                            }else{
                                $kananame += '�['
                                $tmpname = ""
                                break                                
                            }
                        }
                        "v" {
                            if($strArr[$i] -match "a","i","u","e","o"){
                                break    
                            }else{
                                $kananame += '��'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "n" {
                            if($strArr[$i] -eq "n"){
                                break    
                            }else{
                                $kananame += '��'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "nn" {
                            break
                        }
                        "nny" {
                            $kananame += '�j�['
                            $tmpname = ""
                            break                                
                        }
                        "s" {
                            if($strArr[$i] -eq "s"){
                                break    
                            }else{
                                $kananame += '�X'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "k" {
                            if($strArr[$i] -eq "k"){
                                break    
                            }else{
                                $kananame += '�N'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "d" {
                            if($strArr[$i] -eq "d"){
                                break
                            }else{
                                $kananame += '�h'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "t" {
                            if($strArr[$i] -eq " "){
                                $kananame += '�g'
                                $tmpname = ""
                                break    
                            }elseif($strArr[$i] -eq "t"){
                                $kananame += '�b'
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
                                $kananame += '�C'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "r" {
                            if($strArr[$i] -eq "r"){
                                break
                            }else{
                                $kananame += '��'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "c" {
                            if($strArr[$i] -eq "c" -or $strArr[$i] -eq "h"){
                                break
                            }else {
                                $kananame += '�N'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "l" {
                            if($strArr[$i] -eq "l"){
                                break    
                            }else{
                                $kananame += '��'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "f" {
                            if($strArr[$i] -eq "f"){
                                break    
                            }else{
                                $kananame += '�t'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "g" {
                            if($strArr[$i] -eq "g" -or $strArr[$i] -eq "l" -or $strArr[$i] -eq "n" -or $strArr[$i] -eq "h"){
                                break
                            }else{
                                $kananame += '�O'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "m" {
                            if($strArr[$i] -eq " "){
                                $kananame += '��'
                                $tmpname = ""
                                break                                
                            }else{
                                $kananame += '��'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "z" {
                            if($strArr[$i] -eq "z"){
                                break    
                            }else{
                                $kananame += '�X'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "p" {
                            if($strArr[$i] -eq "p"){
                                break    
                            }else{
                                $kananame += '�v'
                                $tmpname = ""
                                break                                
                            }
                        }
                        "�f" {
                            $kananame += '�E'
                            $tmpname = ""
                            break                                    
                        }
                        "gi" {
                            $kananame += '�W'
                            $tmpname = ""
                            break                            
                        }
                        "w" {
                            if($strArr[$i] -eq " " -or ($strArr[$i] -notmatch "a","i","u","e","o")){
                                $kananame += '�E'
                                $tmpname = ""
                                break    
                            }else{
                                break
                            }
                        }
                        "x" {
                            if($strArr[$i] -eq " "){
                                $kananame += '�b�N�X'
                                $tmpname = ""
                                break    
                            }else{
                                break
                            }
                        }
                        "ch" {
                            if($strArr[$i] -eq "r"){
                                $kananame += '�N'
                                $tmpname = ""
                                break
                            }elseif($strArr[$i] -eq "" -or $strArr[$i] -eq " "){
                                $kananame += '�`'
                                $tmpname = ""
                                break
                            }elseif($strArr[$i] -notmatch "a","i","u","e","o","r",""," "){
                                $kananame += '�q'
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
                                $kananame += '�b�t'
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
                            $kananame += "�E"
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

# ���C������
# System.Windows.Forms�A�Z���u����L����
[void][System.Reflection.Assembly]::Load("System.Windows.Forms, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b77a5c561934e089")

# OpenFileDialog�N���X���C���X�^���X�����A�K�v�ȏ���ݒ�
$dialog = New-Object System.Windows.Forms.OpenFileDialog
$dialog.InitialDirectory = "C:\"
$dialog.Title = "�t�@�C����I�����Ă�������"
# �_�C�A���O��\��
if($dialog.ShowDialog() -eq "OK"){
    # �mOK�n�{�^�����N���b�N���ꂽ��A�I�����ꂽ�t�@�C�����i�p�X�j��\��
    $dialog.FileName + " ���I������܂����B"
}

$nameArr = Get-Content $dialog.FileName | Select-String "�I�薼 : "

for($i=0; $i -lt $nameArr.Count; $i++){
    $namestr = $nameArr[$i]
    $name = getPlayerName($namestr)
    $kananame = getKanaName($name)
    Write-Host "No[$i] : $name  $kananame"
}


