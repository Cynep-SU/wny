wordpad
Set-Content .\OUT2.txt -Value "SessionID"
Add-Content .\OUT2.txt -Value (ps wordpad).SI

ac .\OUT2.txt -Value "Handle"
ac .\OUT2.txt -Value (ps wordpad).Handle

ac .\OUT2.txt -Value "Modules"
foreach ($item in (ps wordpad).Modules)
{
    ac .\OUT2.txt -Value $item
}
cat out2.txt
(ps wordpad).Kill()