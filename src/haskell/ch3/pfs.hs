

--duplicateOdds list = map (*2) $ filter odd list

duplicateOdds = map (+1) . map (*2) . filter odd