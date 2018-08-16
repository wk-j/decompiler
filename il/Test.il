
// .assembly extern mscorlib {}

.method static void main() cil managed {
    .entrypoint
    ldstr "Hello, world!"
    call void [mscorlib]System.Console::WriteLine (string)
    ret
}

/*
ilasm il/Test.il
mono il/Test.exe
monolinker -c link -a il/Test.exe -out minimal
*/