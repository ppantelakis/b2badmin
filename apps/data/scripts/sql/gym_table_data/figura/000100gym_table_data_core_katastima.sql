INSERT INTO core_katastima(
            mykatastima, mykatastimanum)
    VALUES (:mykatastima,:mykatastima);
update core_katastima set fkparentlng=id where fkparentlng is null;