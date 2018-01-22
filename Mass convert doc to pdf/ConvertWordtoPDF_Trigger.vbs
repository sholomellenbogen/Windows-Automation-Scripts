Option Explicit

Dim Word
Dim WordDoc
Set Word = CreateObject("Word.Application")

' Make Word visible 
Word.Visible = False
Word.DisplayAlerts = False


'Open the Document
Set WordDoc = Word.Documents.open("\\OMS037\Fa_Users\ellenbs\Scripts\ConvertWordToPDF_MACRO.docm")

'Run the macro called foo
Word.Run "ConvertWordToPDF"

' Close Word
Word.Quit
'Release the object variables
Set WordDoc = Nothing
Set Word = Nothing 

wscript.echo "ALL FILES CONVERTED!"
wscript.quit