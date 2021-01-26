<#

Julian Bruegger
25.01.2021
TelefonnotizTool ICT-BZ

#>


param($number, $name, $else)

$name = $name+$else
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(400,400)
$Form.minimumSize = New-Object System.Drawing.Size(450,450) 
$Form.maximumSize = New-Object System.Drawing.Size(450,450) 
$Form.text                       = "Telefon-Notiz Tool"
$Form.TopMost                    = $false
$FormImage = [system.drawing.image]::FromFile(".\bin\3cx_notes.png")
$Form.BackgroundImage = $FormImage
$Form.BackgroundImageLayout = "Zoom"
$Form.icon                       = "./bin/favicon.ico"


$numberbox                       = New-Object system.Windows.Forms.TextBox
$numberbox.multiline             = $false
$numberbox.text                  = "$number"
$numberbox.width                 = 250
$numberbox.height                = 20
$numberbox.location              = New-Object System.Drawing.Point(95,24)
$numberbox.Font                  = New-Object System.Drawing.Font('Calibri',10)

$Tel_Nr                          = New-Object system.Windows.Forms.Label
$Tel_Nr.text                     = "Telefon:"
$Tel_Nr.AutoSize                 = $true
$Tel_Nr.width                    = 25
$Tel_Nr.height                   = 10
$Tel_Nr.Anchor                   = 'top,left'
$Tel_Nr.location                 = New-Object System.Drawing.Point(30,25)
$Tel_Nr.Font                     = New-Object System.Drawing.Font('Calibri',10)

$mailbox                         = New-Object system.Windows.Forms.TextBox
$mailbox.multiline               = $false
$mailbox.width                   = 250
$mailbox.height                  = 0
$mailbox.location                = New-Object System.Drawing.Point(95,58)
$mailbox.Font                    = New-Object System.Drawing.Font('Calibri',10)

$namebox                         = New-Object system.Windows.Forms.TextBox
$namebox.multiline               = $false
$namebox.text                    = "$name"
$namebox.width                   = 250
$namebox.height                  = 20
$namebox.location                = New-Object System.Drawing.Point(95,88)
$namebox.Font                    = New-Object System.Drawing.Font('Calibri',10)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "E-Mail:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.Anchor                   = 'top,left'
$Label1.location                 = New-Object System.Drawing.Point(30,60)
$Label1.Font                     = New-Object System.Drawing.Font('Calibri',10)

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Name:"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.Anchor                   = 'top, left'
$Label2.location                 = New-Object System.Drawing.Point(30,90)
$Label2.Font                     = New-Object System.Drawing.Font('Calibri',10)


$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 250
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(95,118)
$TextBox1.Font                   = New-Object System.Drawing.Font('Calibri',10)

$company                         = New-Object system.Windows.Forms.Label
$company.text                    = "Firma: "
$company.AutoSize                = $true
$company.width                   = 25
$company.height                  = 10
$company.location                = New-Object System.Drawing.Point(37,120)
$company.Font                    = New-Object System.Drawing.Font('Calibri',10)

$betrefflable                    = New-Object system.Windows.Forms.Label
$betrefflable.text               = "Betreff:"
$betrefflable.AutoSize           = $true
$betrefflable.width              = 25
$betrefflable.height             = 10
$betrefflable.Anchor             = 'top,left'
$betrefflable.location           = New-Object System.Drawing.Point(32,150)
$betrefflable.Font               = New-Object System.Drawing.Font('Calibri',10)

$infolable                       = New-Object system.Windows.Forms.Label
$infolable.text                  = "Weitere Infos:"
$infolable.AutoSize              = $true
$infolable.width                 = 25
$infolable.height                = 130
$infolable.location              = New-Object System.Drawing.Point(2,188)
$infolable.Font                  = New-Object System.Drawing.Font('Calibri',10)

$betreffbox                      = New-Object system.Windows.Forms.TextBox
$betreffbox.multiline            = $false
$betreffbox.width                = 250
$betreffbox.height               = 20
$betreffbox.location             = New-Object System.Drawing.Point(94,148)
$betreffbox.Font                 = New-Object System.Drawing.Font('Calibri',10)


$ComboBox1                       = New-Object system.Windows.Forms.ComboBox
$ComboBox1.text                  = "comboBox"
$ComboBox1.width                 = 100
$ComboBox1.height                = 20
$ComboBox1.location              = New-Object System.Drawing.Point(-138,300)
$ComboBox1.Font                  = New-Object System.Drawing.Font('Calibri',10)

$moreinfobox                     = New-Object system.Windows.Forms.TextBox
$moreinfobox.multiline           = $true
$moreinfobox.text                = "$else"
$moreinfobox.width               = 250
$moreinfobox.height              = 145
$moreinfobox.location            = New-Object System.Drawing.Point(95,184)
$moreinfobox.Font                = New-Object System.Drawing.Font('Calibri',10)

$cancle                          = New-Object system.Windows.Forms.Button
$cancle.text                     = "cancle"
$cancle.width                    = 60
$cancle.height                   = 30
$cancle.location                 = New-Object System.Drawing.Point(171,355)
$cancle.Font                     = New-Object System.Drawing.Font('Calibri',10)
$cancle.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#ff0000")


$coppybutton                     = New-Object system.Windows.Forms.Button
$coppybutton.text                = "copy to clipboard"
$coppybutton.width               = 126
$coppybutton.height              = 30
$coppybutton.location            = New-Object System.Drawing.Point(248,355)
$coppybutton.Font                = New-Object System.Drawing.Font('Calibri',10)

$Form.controls.AddRange(@($numberbox,$Tel_Nr,$mailbox,$namebox,$TextBox1,$Label1,$Label2,$betrefflable,$infolable,$betreffbox,$moreinfobox,$company,$cancle,$coppybutton,$ComboBox1))


$cancle.Add_Click({$form.Close()})
$coppybutton.Add_Click(
{  
    $text = "Telefon Nummer: "+$numberbox.Text +"`r`nE-Mail: "+$mailbox.Text+"`r`nName: "+$namebox.Text+"`r`nFirma: "+$TextBox1.Text+"`r`nBetreff: "+$betreffbox.Text+"`r`nWeitere Infos: "+$moreinfobox.Text

    Set-Clipboard $text
    #$form.Close()

})

[void]$Form.ShowDialog()


