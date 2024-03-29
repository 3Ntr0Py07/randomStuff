main_main_pc0:
        TEXT    main.main(SB), ABIInternal, $176-0
        LEAQ    -48(SP), R12
        CMPQ    R12, 16(R14)
        PCDATA  $0, $-2
        JLS     main_main_pc526
        PCDATA  $0, $-1
        PUSHQ   BP
        MOVQ    SP, BP
        SUBQ    $168, SP
        FUNCDATA        $0, gclocals·DsEZEqsV1VFgO2VgUUolkQ==(SB)
        FUNCDATA        $1, gclocals·oBOi0WCQJoUsYkvBUcT48w==(SB)
        FUNCDATA        $2, main.main.stkobj(SB)
        XORL    AX, AX
        XORL    CX, CX
        XORL    DX, DX
        XORL    BX, BX
        JMP     main_main_pc67
main_main_pc36:
        XORPS   X0, X0
        CVTSQ2SD        AX, X0
        MOVSD   X0, -8(DX)(BX*8)
        MOVQ    main.i+80(SP), AX
        INCQ    AX
        MOVQ    CX, SI
        MOVQ    BX, CX
        MOVQ    SI, BX
main_main_pc67:
        MOVQ    CX, main.times.len+64(SP)
        MOVQ    DX, main.times.ptr+120(SP)
        CMPQ    AX, $100
        JGE     main_main_pc229
        MOVQ    AX, main.i+80(SP)
        MOVQ    BX, main.times.cap+72(SP)
        PCDATA  $1, $1
        CALL    time.Now(SB)
        XORL    DX, DX
        JMP     main_main_pc512
main_main_pc109:
        MOVQ    BX, main..autotmp_59+104(SP)
        MOVQ    AX, main..autotmp_60+96(SP)
        MOVQ    CX, main..autotmp_61+128(SP)
        PCDATA  $1, $2
        NOP
        CALL    time.Now(SB)
        MOVQ    main..autotmp_60+96(SP), DI
        MOVQ    main..autotmp_59+104(SP), SI
        MOVQ    main..autotmp_61+128(SP), R8
        PCDATA  $1, $1
        CALL    time.Time.Sub(SB)
        MOVQ    main.times.len+64(SP), BX
        INCQ    BX
        MOVQ    main.times.cap+72(SP), CX
        CMPQ    CX, BX
        JCS     main_main_pc184
        MOVQ    main.times.ptr+120(SP), DX
        JMP     main_main_pc36
main_main_pc184:
        MOVQ    AX, main.elapsed+88(SP)
        MOVQ    main.times.ptr+120(SP), AX
        MOVL    $1, DI
        LEAQ    type:float64(SB), SI
        PCDATA  $1, $0
        CALL    runtime.growslice(SB)
        MOVQ    AX, DX
        MOVQ    main.elapsed+88(SP), AX
        NOP
        JMP     main_main_pc36
main_main_pc229:
        XORL    AX, AX
        XORPS   X0, X0
        JMP     main_main_pc248
main_main_pc236:
        MOVSD   (DX)(AX*8), X1
        INCQ    AX
        ADDSD   X1, X0
main_main_pc248:
        CMPQ    AX, CX
        JLT     main_main_pc236
        XORPS   X1, X1
        CVTSQ2SD        CX, X1
        DIVSD   X1, X0
        MOVUPS  X15, main..autotmp_30+152(SP)
        MOVQ    X0, AX
        PCDATA  $1, $3
        CALL    runtime.convT64(SB)
        LEAQ    type:float64(SB), CX
        MOVQ    CX, main..autotmp_30+152(SP)
        MOVQ    AX, main..autotmp_30+160(SP)
        MOVQ    main.times.len+64(SP), DX
        SHRQ    $1, DX
        MOVQ    DX, main..autotmp_58+112(SP)
        MOVQ    os.Stdout(SB), SI
        NOP
        LEAQ    go:itab.*os.File,io.Writer(SB), AX
        MOVL    $17, DI
        MOVL    $1, R8
        MOVQ    R8, R9
        MOVQ    SI, BX
        LEAQ    go:string."Average time: %f\n"(SB), CX
        LEAQ    main..autotmp_30+152(SP), SI
        PCDATA  $1, $1
        CALL    fmt.Fprintf(SB)
        MOVQ    main.times.len+64(SP), CX
        MOVQ    main..autotmp_58+112(SP), AX
        NOP
        CMPQ    CX, AX
        JLS     main_main_pc501
        MOVQ    main.times.ptr+120(SP), CX
        MOVSD   (CX)(AX*8), X0
        MOVUPS  X15, main..autotmp_35+136(SP)
        MOVQ    X0, AX
        PCDATA  $1, $4
        NOP
        CALL    runtime.convT64(SB)
        LEAQ    type:float64(SB), CX
        MOVQ    CX, main..autotmp_35+136(SP)
        MOVQ    AX, main..autotmp_35+144(SP)
        MOVQ    os.Stdout(SB), BX
        NOP
        LEAQ    go:itab.*os.File,io.Writer(SB), AX
        LEAQ    go:string."Median time: %f\n"(SB), CX
        MOVL    $16, DI
        LEAQ    main..autotmp_35+136(SP), SI
        MOVL    $1, R8
        MOVQ    R8, R9
        PCDATA  $1, $0
        CALL    fmt.Fprintf(SB)
        ADDQ    $168, SP
        POPQ    BP
        RET
main_main_pc501:
        CALL    runtime.panicIndex(SB)
main_main_pc506:
        INCQ    DX
        NOP
main_main_pc512:
        CMPQ    DX, $1000000000
        JLT     main_main_pc506
        JMP     main_main_pc109
main_main_pc526:
        NOP
        PCDATA  $1, $-1
        PCDATA  $0, $-2
        CALL    runtime.morestack_noctxt(SB)
        PCDATA  $0, $-1
        JMP     main_main_pc0