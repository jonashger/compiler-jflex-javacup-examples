@echo off
echo "... Compilando Analisador Léxico"
java -jar %HomePath%/.m2/repository/de/jflex/jflex/1.6.1/jflex-1.6.1.jar Lexer.lex

echo "... Compilando Analisador Sintático"
java -jar %HomePath%/.m2/repository/net/sf/squirrel-sql/thirdparty/non-maven/java-cup/11a/java-cup-11a.jar -parser Parser -symbols Sym Parser.cup
echo ""
echo "-- Fim da compilacao --"
echo "Desenvolvido por Jonas H."

pause