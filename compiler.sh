#!/bin/sh

echo "

---- COMPILER DESIGN ----

1. LEXICAL ANALYZER USING C
2. LEXICAL ANALYZER USING LEX
3. DISPLAY NUMBER OF LINES, WORDS AND CHARACTERS USING LEX
4. LEX PROGRAM TO CONVERT abc to ABC

5. YACC SPECIFICATION TO RECOGONIZE VALID ARITHMETIC EXP
6. YACC SPECIFICATION TO RECOGONIZE VALID IDENTIFIER
7. IMPLEMENTATION OF CALCULATOR USING LEX AND YACC
8. BNF RULES INTO YACC FORM AND GENERATE ABSTRACT SYNTAX TREE
9. EPSILON CLOSURE OF ALL STATES IN GIVEN NFA WITH EPSILON TRANSITION

10. NFA WITH EPSILON TRANSITION TO NFA WITHOUT EPSILON TRANSITION
11. NFA TO DFA
12. MINIMIZE DFA
13. FIND FIRST AND FOLLOW OF GRAMMAR
14. RECURSIVE DESCENT PARSER FOR GIVEN GRAMMAR
15. SHIFT REDUCE PARSER

16. CONSTANT PROPAGATION
17. INTERMEDIATE CODE GENERATION FOR SIMPLE EXPRESSIONS
18. BACK-END OF COMPILER (TAKES IN 3 ADDRESS CODE AND PRODUCES 8086 INSTRUCTIONS)

"

read -p "pick your poison: " choice </dev/tty

echo -e "\n\n"

if [[ choice -eq 1 ]]
then 
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Lexical_Analyzer/lexical_analyzer.c
elif [[ choice -eq 2 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Lexical_Analyzer_Using_Lex/lexical_analyzer.lex
elif [[ choice -eq 3 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Line_Count/line_count.lex
elif [[ choice -eq 4 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/String_Operation/string_operation.lex
elif [[ choice -eq 5 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Arithmetic_Exp/arith_exp.l
  elif [[ choice -eq 6 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/stopandwait.c
elif [[ choice -eq 7 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/tcppgm.c
elif [[ choice -eq 8 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/udppgm.c
elif [[ choice -eq 9 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/udppgm.c
elif [[ choice -eq 10 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Epsilon_remove/epsilon_remove.c
elif [[ choice -eq 11 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/NFA_to_DFA/nfa_to_dfa.c
elif [[ choice -eq 12 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Minimize_DFA/minimize_dfa.c
elif [[ choice -eq 13 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/First_And_Follow/first_and_follow.c
elif [[ choice -eq 14 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Recursive_Descent_Parser/recursive_descent.c
elif [[ choice -eq 15 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Shift_Reduce_Parser/shift_reduce.c
elif [[ choice -eq 16 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Constant_Propagation/constant_propagation.c
elif [[ choice -eq 17 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Intermediate_Code_Generation/inter_code.c
elif [[ choice -eq 18 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/CD_Lab_S7/master/Three_Address_To_Assembly/three_addr_to_assm.c
else 
  echo "Invalid: $choice"
fi
#clear