Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.13?download=true
inline.NumInlined: 762
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(i64 1, !5910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21461)
    #dbg_value(i64 1, !5910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21461)
    #dbg_value(ptr poison, !5915, !DIExpression(), !21463)
    #dbg_value(i64 1, !5929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21463)
    #dbg_value(i64 1, !5929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21463)
  %i.b = icmp eq i64 %.val3, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECshovLROGBtMy_11quinn_proto.exit, label %bb.c, !dbg !21492

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21491
  %.val4 = load ptr, ptr %i.c, align 8, !dbg !21491, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %.val4, !5911, !DIExpression(), !21464)
    #dbg_value(i64 1, !5912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21464)
    #dbg_value(i64 %.val3, !5912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21464)
    #dbg_value(ptr poison, !4304, !DIExpression(), !21466)
    #dbg_value(ptr poison, !4311, !DIExpression(), !21468)
    #dbg_value(ptr %.val4, !4308, !DIExpression(), !21466)
    #dbg_value(ptr %.val4, !4314, !DIExpression(), !21468)
    #dbg_value(ptr %.val4, !4317, !DIExpression(), !21470)
    #dbg_value(ptr %.val4, !4323, !DIExpression(), !21472)
    #dbg_value(i64 1, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21466)
    #dbg_value(i64 1, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21468)
    #dbg_value(i64 1, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21470)
    #dbg_value(i64 1, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21472)
    #dbg_value(i64 %.val3, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21466)
    #dbg_value(i64 %.val3, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21468)
    #dbg_value(i64 %.val3, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21470)
    #dbg_value(i64 %.val3, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21472)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val3, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !dbg !21493
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECshovLROGBtMy_11quinn_proto.exit, !dbg !21494

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !dbg !21491  ; 2 uses
    #dbg_value(ptr poison, !5955, !DIExpression(), !21474)
    #dbg_value(ptr poison, !5961, !DIExpression(), !21476)
    #dbg_value(ptr poison, !5905, !DIExpression(), !21478)
    #dbg_value(i64 1, !5910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21478)
    #dbg_value(i64 1, !5910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21478)
    #dbg_value(ptr poison, !5915, !DIExpression(), !21480)
    #dbg_value(i64 1, !5929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21480)
    #dbg_value(i64 1, !5929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21480)
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECshovLROGBtMy_11quinn_proto.exit5, label %bb.e, !dbg !21495

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21491
  %.val2 = load ptr, ptr %i.e, align 8, !dbg !21491, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %.val2, !5911, !DIExpression(), !21481)
    #dbg_value(i64 1, !5912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21481)
    #dbg_value(i64 %.val, !5912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21481)
    #dbg_value(ptr poison, !4304, !DIExpression(), !21483)
    #dbg_value(ptr poison, !4311, !DIExpression(), !21485)
    #dbg_value(ptr %.val2, !4308, !DIExpression(), !21483)
    #dbg_value(ptr %.val2, !4314, !DIExpression(), !21485)
    #dbg_value(ptr %.val2, !4317, !DIExpression(), !21487)
    #dbg_value(ptr %.val2, !4323, !DIExpression(), !21489)
    #dbg_value(i64 1, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21483)
    #dbg_value(i64 1, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21485)
    #dbg_value(i64 1, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21487)
    #dbg_value(i64 1, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21489)
    #dbg_value(i64 %.val, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21483)
    #dbg_value(i64 %.val, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21485)
    #dbg_value(i64 %.val, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21487)
    #dbg_value(i64 %.val, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21489)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !dbg !21496
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECshovLROGBtMy_11quinn_proto.exit5, !dbg !21497

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECshovLROGBtMy_11quinn_proto.exit5: ; preds = %bb.d, %bb.e
  ret void, !dbg !21491

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a, !dbg !21491
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 !dbg !469 {
bb.a:
    #dbg_value(ptr %0, !4196, !DIExpression(), !21545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21546), !dbg !21547
    #dbg_value(ptr %0, !4202, !DIExpression(), !21501)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21548
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21549
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !21549, !alias.scope !21546 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !21549, !alias.scope !21546 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21549
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !21549, !alias.scope !21546, !noundef !2579 ; 3 uses
    #dbg_value(ptr poison, !4205, !DIExpression(DW_OP_deref), !21503)
    #dbg_value(ptr poison, !4210, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !21503)
    #dbg_value(ptr poison, !4209, !DIExpression(), !21503)
    #dbg_value(ptr poison, !4213, !DIExpression(), !21505)
    #dbg_value(ptr poison, !4218, !DIExpression(), !21507)
    #dbg_value(ptr poison, !4227, !DIExpression(), !21509)
    #dbg_value(ptr poison, !4251, !DIExpression(), !21511)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !21550
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !21551

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21549
  %.val.i = load i64, ptr %i.e, align 8, !dbg !21549, !alias.scope !21546
    #dbg_value(ptr poison, !4222, !DIExpression(), !21507)
    #dbg_value(i64 %.val.i, !4223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21507)
    #dbg_value(i64 %.val.i, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21509)
    #dbg_value(i64 %.val1.i, !4223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21507)
    #dbg_value(i64 %.val1.i, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21509)
  %i.f = add i64 %.val3.i, 1, !dbg !21552
    #dbg_value(i64 %.val.i, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21513)
    #dbg_value(i64 %.val1.i, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21513)
    #dbg_value(i64 %i.f, !4260, !DIExpression(), !21513)
    #dbg_value(i64 %i.f, !4272, !DIExpression(), !21515)
    #dbg_value(i64 %i.f, !4277, !DIExpression(), !21517)
    #dbg_value(i64 %.val.i, !4261, !DIExpression(), !21518)
    #dbg_value(i64 %.val.i, !4273, !DIExpression(), !21515)
    #dbg_value(i64 %.val.i, !4283, !DIExpression(), !21517)
    #dbg_value(i64 %.val1.i, !4262, !DIExpression(), !21518)
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !21553   ; 2 uses
    #dbg_value(i1 false, !4285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21520)
    #dbg_value(i64 %i.g, !4287, !DIExpression(), !21522)
  %i.h = add i64 %.val1.i, -1, !dbg !21554
    #dbg_value(i64 %i.h, !4288, !DIExpression(), !21522)
  %i.i = add i64 %i.h, %i.g, !dbg !21555          ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !21555
    #dbg_value(i1 true, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21524)
  tail call void @llvm.assume(i1 %i.j), !dbg !21556
  %i.k = sub i64 0, %.val1.i, !dbg !21557
  %i.l = and i64 %i.i, %i.k, !dbg !21558          ; 3 uses
    #dbg_value(i64 %i.l, !4263, !DIExpression(), !21525)
    #dbg_value(i64 %i.l, !4287, !DIExpression(), !21527)
  %i.m = add i64 %.val3.i, 17, !dbg !21559
    #dbg_value(i64 %i.m, !4288, !DIExpression(), !21527)
  %i.n = add i64 %i.m, %i.l, !dbg !21560          ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !21560
    #dbg_value(i1 %i.o, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21529)
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !21561
  tail call void @llvm.assume(i1 %i.q), !dbg !21561
    #dbg_value(i64 %.val1.i, !4293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21531)
    #dbg_value(i64 %.val1.i, !4237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21532)
    #dbg_value(i64 %i.n, !4293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21531)
    #dbg_value(i64 %i.n, !4237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21532)
    #dbg_value(i64 %i.l, !4293, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21531)
    #dbg_value(i64 %i.l, !4237, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21532)
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !21562
  tail call void @llvm.assume(i1 %i.r), !dbg !21563
    #dbg_value(i64 %.val1.i, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21533)
    #dbg_value(i64 %.val1.i, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21534)
    #dbg_value(i64 %i.n, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21533)
    #dbg_value(i64 %i.n, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21534)
    #dbg_value(i64 %i.l, !4236, !DIExpression(), !21534)
    #dbg_value(i64 %i.l, !4299, !DIExpression(), !21536)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
    #dbg_value(ptr %.val2.i, !4300, !DIExpression(), !21536)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4224, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21533)
    #dbg_value(ptr poison, !4304, !DIExpression(), !21538)
    #dbg_value(ptr poison, !4311, !DIExpression(), !21540)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21538)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21540)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21542)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21544)
    #dbg_value(i64 %.val1.i, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21538)
    #dbg_value(i64 %.val1.i, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21540)
    #dbg_value(i64 %.val1.i, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21542)
    #dbg_value(i64 %.val1.i, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21544)
    #dbg_value(i64 %i.n, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21538)
    #dbg_value(i64 %i.n, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21540)
    #dbg_value(i64 %i.n, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21542)
    #dbg_value(i64 %i.n, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21544)
  %i.s = icmp eq i64 %i.n, 0, !dbg !21564
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit, label %bb.b, !dbg !21564

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !21565
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21544)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21542)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21540)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21538)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4224, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21533)
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !21566
    #dbg_value(ptr %i.u, !4224, !DIExpression(), !21533)
    #dbg_value(ptr %i.u, !4308, !DIExpression(), !21538)
    #dbg_value(ptr %i.u, !4314, !DIExpression(), !21540)
    #dbg_value(ptr %i.u, !4317, !DIExpression(), !21542)
    #dbg_value(ptr %i.u, !4323, !DIExpression(), !21544)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #31, !dbg !21567, !noalias !21546
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit, !dbg !21568

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !21547
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !21569 {
bb.a:
    #dbg_value(ptr %0, !21638, !DIExpression(), !21642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21643), !dbg !21695
    #dbg_value(ptr %0, !21644, !DIExpression(), !21574)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21696
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !21696, !alias.scope !21643
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21696
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !21696, !alias.scope !21643
  %.val2.i = load ptr, ptr %0, align 8, !dbg !21696, !alias.scope !21643, !nonnull !2579, !align !4372, !noundef !2579 ; 10 uses
    #dbg_value(ptr poison, !21646, !DIExpression(), !21587)
    #dbg_value(ptr poison, !21649, !DIExpression(), !21588)
    #dbg_value(ptr poison, !21652, !DIExpression(), !21589)
    #dbg_value(ptr poison, !21660, !DIExpression(DW_OP_deref), !21590)
    #dbg_value(ptr poison, !21661, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !21590)
    #dbg_value(ptr poison, !21659, !DIExpression(), !21590)
    #dbg_value(i64 1, !21667, !DIExpression(), !21593)
    #dbg_value(i64 1, !21670, !DIExpression(), !21596)
    #dbg_value(ptr poison, !21673, !DIExpression(), !21599)
    #dbg_value(i8 -1, !21676, !DIExpression(), !21602)
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
    #dbg_value(ptr %.val2.i, !21680, !DIExpression(), !21605)
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !21697 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !21697, !noalias !21643, !noundef !2579 ; 3 uses
    #dbg_value(i64 0, !21662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21606)
    #dbg_value(i64 %i.d, !21662, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21606)
    #dbg_value(ptr undef, !21652, !DIExpression(), !21589)
    #dbg_value(ptr undef, !21649, !DIExpression(), !21588)
    #dbg_value(ptr undef, !21646, !DIExpression(), !21587)
    #dbg_value(ptr undef, !21647, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21607)
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !21698
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i.i, !dbg !21699

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !dbg !21700, !noalias !21643
  br label %.lr.ph.split.us.i.i, !dbg !21701

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ], !dbg !21700 ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %2, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21650, !DIExpression(), !21610)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21668, !DIExpression(), !21593)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21671, !DIExpression(), !21596)
  %2 = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !21702
    #dbg_value(i64 %2, !21662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21606)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21663, !DIExpression(), !21611)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21684, !DIExpression(), !21612)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21678, !DIExpression(), !21602)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !21686, !DIExpression(), !21615)
    #dbg_value(ptr %.val2.i, !21683, !DIExpression(), !21612)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.03.us.i.i, !dbg !21703 ; 2 uses
    #dbg_value(ptr %i.f, !21674, !DIExpression(), !21599)
  %i.g = load i8, ptr %i.f, align 1, !dbg !21704, !noalias !21643, !noundef !2579
  %i.h = icmp eq i8 %i.g, -128, !dbg !21704
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !21701

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
    #dbg_value(ptr %.val2.i, !21677, !DIExpression(), !21602)
    #dbg_value(ptr %.val2.i, !21683, !DIExpression(), !21619)
    #dbg_value(ptr %.val2.i, !21683, !DIExpression(), !21621)
  %i.i = add i64 %.sroa.0.03.us.i.i, -16, !dbg !21705
  %i.j = load i64, ptr %i.c, align 8, !dbg !21706, !noalias !21643, !noundef !2579
  %i.k = and i64 %i.j, %i.i, !dbg !21707
  store i8 -1, ptr %i.f, align 1, !dbg !21708, !noalias !21643
  %i.l = load ptr, ptr %.val2.i, align 8, !dbg !21709, !noalias !21643, !nonnull !2579, !noundef !2579
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !21710
  %i.n = getelementptr i8, ptr %i.m, i64 16, !dbg !21710
  store i8 -1, ptr %i.n, align 1, !dbg !21711, !noalias !21643
  %i.o = load i64, ptr %i.e, align 8, !dbg !21712, !noalias !21643, !noundef !2579
  %i.p = add i64 %i.o, -1, !dbg !21712
  store i64 %i.p, ptr %i.e, align 8, !dbg !21712, !noalias !21643
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !dbg !21700, !noalias !21643
  br label %bb.c, !dbg !21713

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.b ], [ %1, %.lr.ph.split.us.i.i ]
    #dbg_value(i64 %2, !21662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21606)
    #dbg_value(ptr undef, !21652, !DIExpression(), !21589)
    #dbg_value(ptr undef, !21649, !DIExpression(), !21588)
    #dbg_value(ptr undef, !21646, !DIExpression(), !21587)
    #dbg_value(ptr undef, !21647, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21607)
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !21698
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.split.us.i.i, !dbg !21699

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
    #dbg_value(i64 %.sroa.0.03.i.i, !21650, !DIExpression(), !21610)
    #dbg_value(i64 %.sroa.0.03.i.i, !21668, !DIExpression(), !21593)
    #dbg_value(i64 %.sroa.0.03.i.i, !21671, !DIExpression(), !21596)
  %i.q = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !21702
    #dbg_value(i64 %i.q, !21662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21606)
    #dbg_value(i64 %.sroa.0.03.i.i, !21663, !DIExpression(), !21611)
    #dbg_value(i64 %.sroa.0.03.i.i, !21684, !DIExpression(), !21612)
    #dbg_value(i64 %.sroa.0.03.i.i, !21678, !DIExpression(), !21602)
    #dbg_value(i64 %.sroa.0.03.i.i, !21686, !DIExpression(), !21615)
    #dbg_value(ptr %.val2.i, !21683, !DIExpression(), !21612)
  %i.r = load ptr, ptr %.val2.i, align 8, !dbg !21700, !noalias !21643, !nonnull !2579, !noundef !2579
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.03.i.i, !dbg !21703 ; 2 uses
    #dbg_value(ptr %i.s, !21674, !DIExpression(), !21599)
  %i.t = load i8, ptr %i.s, align 1, !dbg !21704, !noalias !21643, !noundef !2579
  %i.u = icmp eq i8 %i.t, -128, !dbg !21704
  br i1 %i.u, label %bb.e, label %bb.d, !dbg !21701

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
    #dbg_value(i64 %i.q, !21662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21606)
    #dbg_value(ptr undef, !21652, !DIExpression(), !21589)
    #dbg_value(ptr undef, !21649, !DIExpression(), !21588)
    #dbg_value(ptr undef, !21646, !DIExpression(), !21587)
    #dbg_value(ptr undef, !21647, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21607)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !21698
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.split.i.i, !dbg !21699

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !21702
    #dbg_value(ptr %.val2.i, !21677, !DIExpression(), !21602)
    #dbg_value(ptr %.val2.i, !21683, !DIExpression(), !21619)
    #dbg_value(ptr %.val2.i, !21683, !DIExpression(), !21621)
  %i.v = add i64 %.sroa.0.03.i.i, -16, !dbg !21705
  %i.w = load i64, ptr %i.c, align 8, !dbg !21706, !noalias !21643, !noundef !2579
  %i.x = and i64 %i.w, %i.v, !dbg !21707
  store i8 -1, ptr %i.s, align 1, !dbg !21708, !noalias !21643
  %i.y = load ptr, ptr %.val2.i, align 8, !dbg !21709, !noalias !21643, !nonnull !2579, !noundef !2579
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x, !dbg !21710
  %i.aa = getelementptr i8, ptr %i.z, i64 16, !dbg !21710
  store i8 -1, ptr %i.aa, align 1, !dbg !21711, !noalias !21643
    #dbg_value(ptr %.val.i, !21664, !DIExpression(), !21625)
    #dbg_value(ptr %.val2.i, !21687, !DIExpression(), !21615)
    #dbg_value(ptr %.val2.i, !21691, !DIExpression(), !21628)
    #dbg_value(i64 %.val1.i, !21688, !DIExpression(), !21615)
  %i.ab = load ptr, ptr %.val2.i, align 8, !dbg !21714, !noalias !21643, !nonnull !2579, !noundef !2579
  %.neg22.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !21715
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg22.i.i, !dbg !21716
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !dbg !21717, !noalias !21643, !inline_history !21631
  %i.ad = load i64, ptr %i.e, align 8, !dbg !21712, !noalias !21643, !noundef !2579
  %i.ae = add i64 %i.ad, -1, !dbg !21712
  store i64 %i.ae, ptr %i.e, align 8, !dbg !21712, !noalias !21643
  br label %bb.d, !dbg !21713

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !dbg !21718, !noalias !21643, !noundef !2579 ; 3 uses
    #dbg_value(i64 %i.af, !21693, !DIExpression(), !21634)
  %i.ag = icmp ult i64 %i.af, 8, !dbg !21719
  %i.ah = add i64 %i.af, 1, !dbg !21719
  %i.ai = lshr i64 %i.ah, 3, !dbg !21719
  %i.aj = mul nuw i64 %i.ai, 7, !dbg !21719
  %.sroa.04.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj, !dbg !21719
    #dbg_value(i64 %.sroa.04.0.i.i, !21693, !DIExpression(), !21634)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !21720
  %i.al = load i64, ptr %i.ak, align 8, !dbg !21720, !noalias !21643, !noundef !2579
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !21721
  %i.an = sub i64 %.sroa.04.0.i.i, %i.al, !dbg !21721
  store i64 %i.an, ptr %i.am, align 8, !dbg !21721, !noalias !21643
  ret void, !dbg !21695
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11binary_heap10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !933 {
bb.a:
    #dbg_value(ptr %0, !5995, !DIExpression(), !21770)
    #dbg_value(ptr %0, !6000, !DIExpression(), !21723)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b, !dbg !21775

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %0, align 8, !dbg !21775, !alias.scope !21771 ; 2 uses
    #dbg_value(ptr poison, !6007, !DIExpression(), !21729)
    #dbg_value(ptr poison, !6013, !DIExpression(), !21731)
    #dbg_value(ptr poison, !5905, !DIExpression(), !21733)
    #dbg_value(i64 8, !5910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21733)
    #dbg_value(i64 56, !5910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21733)
    #dbg_value(ptr poison, !5915, !DIExpression(), !21735)
    #dbg_value(i64 8, !5929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21735)
    #dbg_value(i64 56, !5929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21735)
    #dbg_value(i64 56, !5933, !DIExpression(), !21737)
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1l_.exit.i, label %bb.c, !dbg !21776

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21775
  %.val4.i = load ptr, ptr %i.c, align 8, !dbg !21775, !alias.scope !21772, !nonnull !2579, !noundef !2579
    #dbg_value(i64 %.val3.i, !5936, !DIExpression(), !21737)
  %i.d = mul nuw i64 %.val3.i, 56, !dbg !21777
    #dbg_value(ptr %.val4.i, !5911, !DIExpression(), !21738)
    #dbg_value(i64 8, !5912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21738)
    #dbg_value(i64 %i.d, !5912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21738)
    #dbg_value(ptr poison, !4304, !DIExpression(), !21740)
    #dbg_value(ptr poison, !4311, !DIExpression(), !21742)
    #dbg_value(ptr %.val4.i, !4308, !DIExpression(), !21740)
    #dbg_value(ptr %.val4.i, !4314, !DIExpression(), !21742)
    #dbg_value(ptr %.val4.i, !4317, !DIExpression(), !21744)
    #dbg_value(ptr %.val4.i, !4323, !DIExpression(), !21746)
    #dbg_value(i64 8, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21740)
    #dbg_value(i64 8, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21742)
    #dbg_value(i64 8, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21744)
    #dbg_value(i64 8, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21746)
    #dbg_value(i64 %i.d, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21740)
    #dbg_value(i64 %i.d, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21742)
    #dbg_value(i64 %i.d, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21744)
    #dbg_value(i64 %i.d, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21746)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !dbg !21778, !noalias !21773
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1l_.exit.i, !dbg !21779

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !dbg !21775, !alias.scope !21771 ; 2 uses
    #dbg_value(ptr poison, !6007, !DIExpression(), !21750)
    #dbg_value(ptr poison, !6013, !DIExpression(), !21752)
    #dbg_value(ptr poison, !5905, !DIExpression(), !21754)
    #dbg_value(i64 8, !5910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21754)
    #dbg_value(i64 56, !5910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21754)
    #dbg_value(ptr poison, !5915, !DIExpression(), !21756)
    #dbg_value(i64 8, !5929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21756)
    #dbg_value(i64 56, !5929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21756)
    #dbg_value(i64 56, !5933, !DIExpression(), !21758)
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1e_.exit, label %bb.e, !dbg !21780

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21775
  %.val2.i = load ptr, ptr %i.f, align 8, !dbg !21775, !alias.scope !21772, !nonnull !2579, !noundef !2579
    #dbg_value(i64 %.val.i, !5936, !DIExpression(), !21758)
  %i.g = mul nuw i64 %.val.i, 56, !dbg !21781
    #dbg_value(ptr %.val2.i, !5911, !DIExpression(), !21759)
    #dbg_value(i64 8, !5912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21759)
    #dbg_value(i64 %i.g, !5912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21759)
    #dbg_value(ptr poison, !4304, !DIExpression(), !21761)
    #dbg_value(ptr poison, !4311, !DIExpression(), !21763)
    #dbg_value(ptr %.val2.i, !4308, !DIExpression(), !21761)
    #dbg_value(ptr %.val2.i, !4314, !DIExpression(), !21763)
    #dbg_value(ptr %.val2.i, !4317, !DIExpression(), !21765)
    #dbg_value(ptr %.val2.i, !4323, !DIExpression(), !21767)
    #dbg_value(i64 8, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21761)
    #dbg_value(i64 8, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21763)
    #dbg_value(i64 8, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21765)
    #dbg_value(i64 8, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21767)
    #dbg_value(i64 %i.g, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21761)
    #dbg_value(i64 %i.g, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21763)
    #dbg_value(i64 %i.g, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21765)
    #dbg_value(i64 %i.g, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21767)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !dbg !21782, !noalias !21774
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1e_.exit, !dbg !21783

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1l_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a, !dbg !21775

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1e_.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !21784
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto8endpoint14ConnectionMetaEBF_(ptr captures(address) %.48.val, i64 %.56.val) unnamed_addr #4 !dbg !866 {
bb.a:
    #dbg_value(ptr poison, !5714, !DIExpression(), !21833)
    #dbg_value(ptr poison, !5719, !DIExpression(), !21786)
    #dbg_value(ptr poison, !5726, !DIExpression(), !21788)
    #dbg_value(ptr poison, !5732, !DIExpression(), !21790)
    #dbg_value(ptr poison, !5738, !DIExpression(), !21792)
    #dbg_value(ptr poison, !5742, !DIExpression(), !21794)
    #dbg_value(ptr poison, !5748, !DIExpression(), !21796)
    #dbg_value(ptr poison, !5750, !DIExpression(), !21798)
    #dbg_value(ptr poison, !5756, !DIExpression(), !21800)
    #dbg_value(ptr poison, !5745, !DIExpression(), !21794)
    #dbg_value(ptr poison, !5751, !DIExpression(), !21798)
    #dbg_value(i64 32, !5746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21794)
    #dbg_value(i64 32, !5752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21798)
    #dbg_value(i64 32, !5757, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21800)
    #dbg_value(i64 16, !5746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21794)
    #dbg_value(i64 16, !5752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21798)
    #dbg_value(i64 16, !5757, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21800)
  %i.a = icmp eq i64 %.56.val, 0, !dbg !21835
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherEEB1A_.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, !dbg !21836

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
    #dbg_value(i64 32, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21802)
    #dbg_value(i64 16, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21802)
    #dbg_value(i64 %.56.val, !4260, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21802)
    #dbg_value(i64 %.56.val, !4272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21804)
    #dbg_value(i64 %.56.val, !4277, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21806)
    #dbg_value(i64 32, !4261, !DIExpression(), !21807)
    #dbg_value(i64 32, !4273, !DIExpression(), !21804)
    #dbg_value(i64 32, !4283, !DIExpression(), !21806)
    #dbg_value(i64 16, !4262, !DIExpression(), !21807)
  %i.b = shl i64 %.56.val, 5, !dbg !21837         ; 2 uses
  %i.c = add i64 %i.b, 32, !dbg !21837            ; 2 uses
    #dbg_value(i1 false, !4285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21809)
    #dbg_value(i64 %i.c, !4287, !DIExpression(), !21811)
    #dbg_value(i64 15, !4288, !DIExpression(), !21811)
    #dbg_value(i1 false, !4285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21813)
    #dbg_value(i64 %i.c, !4263, !DIExpression(), !21814)
    #dbg_value(i64 %i.c, !4287, !DIExpression(), !21816)
  %i.d = add i64 %.56.val, 17, !dbg !21838
    #dbg_value(i64 %i.d, !4288, !DIExpression(), !21816)
  %i.e = add i64 %i.d, %i.c, !dbg !21839          ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c, !dbg !21839
    #dbg_value(i1 %i.f, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21818)
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f), !dbg !21840
  tail call void @llvm.assume(i1 %i.g), !dbg !21840
    #dbg_value(i64 16, !5754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21819)
    #dbg_value(i64 16, !5758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21820)
    #dbg_value(i64 %i.e, !5754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21819)
    #dbg_value(i64 %i.e, !5758, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21820)
    #dbg_value(i64 %i.c, !5759, !DIExpression(), !21820)
    #dbg_value(i64 %i.c, !5763, !DIExpression(), !21822)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.48.val) ]
    #dbg_value(ptr %.48.val, !5764, !DIExpression(), !21822)
    #dbg_value(!DIArgList(ptr %.48.val, i64 -32, i64 %i.b), !5753, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21819)
    #dbg_value(ptr poison, !4304, !DIExpression(), !21824)
    #dbg_value(ptr poison, !4311, !DIExpression(), !21826)
    #dbg_value(!DIArgList(ptr %.48.val, i64 -32, i64 %i.b), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21824)
    #dbg_value(!DIArgList(ptr %.48.val, i64 -32, i64 %i.b), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21826)
    #dbg_value(!DIArgList(ptr %.48.val, i64 -32, i64 %i.b), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21828)
    #dbg_value(!DIArgList(ptr %.48.val, i64 -32, i64 %i.b), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !21830)
    #dbg_value(i64 16, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21824)
    #dbg_value(i64 16, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21826)
    #dbg_value(i64 16, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21828)
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!21408 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21406)
!21409 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21408)
!21410 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21408)
!21411 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21410)
!21412 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21410)
!21413 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21412)
!21414 = distinct !{!21414, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_"}
!21415 = distinct !{!21415, !21414, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!21416 = distinct !DILocation(line: 848, column: 1, scope: !912, inlinedAt: !21387)
!21417 = distinct !DILocation(line: 0, scope: !913, inlinedAt: !21416)
!21418 = distinct !DILocation(line: 848, column: 1, scope: !913, inlinedAt: !21416)
!21419 = distinct !DILocation(line: 0, scope: !914, inlinedAt: !21418)
!21420 = distinct !DILocation(line: 425, column: 29, scope: !914, inlinedAt: !21418)
!21421 = distinct !DILocation(line: 0, scope: !916, inlinedAt: !21420)
!21422 = distinct !DILocation(line: 874, column: 52, scope: !915, inlinedAt: !21420)
!21423 = distinct !DILocation(line: 0, scope: !923, inlinedAt: !21422)
!21424 = distinct !DILocation(line: 639, column: 53, scope: !923, inlinedAt: !21422)
!21425 = distinct !DILocation(line: 0, scope: !924, inlinedAt: !21424)
!21426 = distinct !DILocation(line: 0, scope: !915, inlinedAt: !21420)
!21427 = distinct !DILocation(line: 876, column: 28, scope: !915, inlinedAt: !21420)
!21428 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21427)
!21429 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21427)
!21430 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21429)
!21431 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21429)
!21432 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21431)
!21433 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21431)
!21434 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21433)
!21435 = distinct !{!21435, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_"}
!21436 = distinct !{!21436, !21435, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!21437 = !{null, !5766}
!21438 = !DISubroutineType(types: !21437)
!21439 = !DILocalVariable(arg: 1, scope: !21384, file: !3671, line: 848, type: !5766)
!21440 = !{!21439}
!21441 = !DILocation(line: 0, scope: !21384)
!21442 = !{!21394, !21392, !21390}
!21443 = !{!21392, !21390}
!21444 = !{!21415}
!21445 = !{!21436}
!21446 = !DILocation(line: 848, column: 1, scope: !21384)
!21447 = !DILocation(line: 848, column: 1, scope: !912, inlinedAt: !21387)
!21448 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21401)
!21449 = !DILocation(line: 1431, column: 17, scope: !924, inlinedAt: !21403)
!21450 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21412)
!21451 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21410)
!21452 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21422)
!21453 = !DILocation(line: 1431, column: 17, scope: !924, inlinedAt: !21424)
!21454 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21433)
!21455 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21431)
!21456 = distinct !DILocation(line: 848, column: 1, scope: !928)
!21457 = distinct !DILocation(line: 0, scope: !929, inlinedAt: !21456)
!21458 = distinct !DILocation(line: 848, column: 1, scope: !929, inlinedAt: !21456)
!21459 = distinct !DILocation(line: 0, scope: !930, inlinedAt: !21458)
!21460 = distinct !DILocation(line: 425, column: 29, scope: !930, inlinedAt: !21458)
!21461 = distinct !DILocation(line: 0, scope: !916, inlinedAt: !21460)
!21462 = distinct !DILocation(line: 874, column: 52, scope: !915, inlinedAt: !21460)
!21463 = distinct !DILocation(line: 0, scope: !923, inlinedAt: !21462)
!21464 = distinct !DILocation(line: 0, scope: !915, inlinedAt: !21460)
!21465 = distinct !DILocation(line: 876, column: 28, scope: !915, inlinedAt: !21460)
!21466 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21465)
!21467 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21465)
!21468 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21467)
!21469 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21467)
!21470 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21469)
!21471 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21469)
!21472 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21471)
!21473 = distinct !DILocation(line: 848, column: 1, scope: !928)
!21474 = distinct !DILocation(line: 0, scope: !929, inlinedAt: !21473)
!21475 = distinct !DILocation(line: 848, column: 1, scope: !929, inlinedAt: !21473)
!21476 = distinct !DILocation(line: 0, scope: !930, inlinedAt: !21475)
!21477 = distinct !DILocation(line: 425, column: 29, scope: !930, inlinedAt: !21475)
!21478 = distinct !DILocation(line: 0, scope: !916, inlinedAt: !21477)
!21479 = distinct !DILocation(line: 874, column: 52, scope: !915, inlinedAt: !21477)
!21480 = distinct !DILocation(line: 0, scope: !923, inlinedAt: !21479)
!21481 = distinct !DILocation(line: 0, scope: !915, inlinedAt: !21477)
!21482 = distinct !DILocation(line: 876, column: 28, scope: !915, inlinedAt: !21477)
!21483 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21482)
!21484 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21482)
!21485 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21484)
!21486 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21484)
!21487 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21486)
!21488 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21486)
!21489 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21488)
!21490 = !DILocation(line: 0, scope: !928)
!21491 = !DILocation(line: 848, column: 1, scope: !928)
!21492 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21462)
!21493 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21471)
!21494 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21469)
!21495 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21479)
!21496 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21488)
!21497 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21486)
!21498 = distinct !{!21498, i1 false, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto"}
!21499 = distinct !{!21499, !21498, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto: argument 0"}
!21500 = distinct !DILocation(line: 848, column: 1, scope: !469)
!21501 = distinct !DILocation(line: 0, scope: !470, inlinedAt: !21500)
!21502 = distinct !DILocation(line: 70, column: 9, scope: !470, inlinedAt: !21500)
!21503 = distinct !DILocation(line: 0, scope: !471, inlinedAt: !21502)
!21504 = distinct !DILocation(line: 2705, column: 23, scope: !471, inlinedAt: !21502)
!21505 = distinct !DILocation(line: 0, scope: !472, inlinedAt: !21504)
!21506 = distinct !DILocation(line: 2710, column: 32, scope: !471, inlinedAt: !21502)
!21507 = distinct !DILocation(line: 0, scope: !474, inlinedAt: !21506)
!21508 = distinct !DILocation(line: 3113, column: 38, scope: !474, inlinedAt: !21506)
!21509 = distinct !DILocation(line: 0, scope: !483, inlinedAt: !21508)
!21510 = distinct !DILocation(line: 3145, column: 65, scope: !483, inlinedAt: !21508)
!21511 = distinct !DILocation(line: 0, scope: !484, inlinedAt: !21510)
!21512 = distinct !DILocation(line: 3145, column: 39, scope: !483, inlinedAt: !21508)
!21513 = distinct !DILocation(line: 0, scope: !494, inlinedAt: !21512)
!21514 = distinct !DILocation(line: 222, column: 18, scope: !493, inlinedAt: !21512)
!21515 = distinct !DILocation(line: 0, scope: !496, inlinedAt: !21514)
!21516 = distinct !DILocation(line: 1360, column: 31, scope: !496, inlinedAt: !21514)
!21517 = distinct !DILocation(line: 0, scope: !498, inlinedAt: !21516)
!21518 = distinct !DILocation(line: 0, scope: !493, inlinedAt: !21512)
!21519 = distinct !DILocation(line: 1361, column: 16, scope: !495, inlinedAt: !21514)
!21520 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !21519)
!21521 = distinct !DILocation(line: 222, column: 40, scope: !493, inlinedAt: !21512)
!21522 = distinct !DILocation(line: 0, scope: !500, inlinedAt: !21521)
!21523 = distinct !DILocation(line: 968, column: 16, scope: !500, inlinedAt: !21521)
!21524 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !21523)
!21525 = distinct !DILocation(line: 0, scope: !492, inlinedAt: !21512)
!21526 = distinct !DILocation(line: 223, column: 31, scope: !492, inlinedAt: !21512)
!21527 = distinct !DILocation(line: 0, scope: !500, inlinedAt: !21526)
!21528 = distinct !DILocation(line: 968, column: 16, scope: !4291, inlinedAt: !21526)
!21529 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !21528)
!21530 = distinct !DILocation(line: 3146, column: 29, scope: !481, inlinedAt: !21508)
!21531 = distinct !DILocation(line: 0, scope: !502, inlinedAt: !21530)
!21532 = distinct !DILocation(line: 0, scope: !481, inlinedAt: !21508)
!21533 = distinct !DILocation(line: 0, scope: !473, inlinedAt: !21506)
!21534 = distinct !DILocation(line: 0, scope: !482, inlinedAt: !21508)
!21535 = distinct !DILocation(line: 3150, column: 64, scope: !482, inlinedAt: !21508)
!21536 = distinct !DILocation(line: 0, scope: !503, inlinedAt: !21535)
!21537 = distinct !DILocation(line: 3114, column: 19, scope: !473, inlinedAt: !21506)
!21538 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21537)
!21539 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21537)
!21540 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21539)
!21541 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21539)
!21542 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21541)
!21543 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21541)
!21544 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21543)
!21545 = !DILocation(line: 0, scope: !469)
!21546 = !{!21499}
!21547 = !DILocation(line: 848, column: 1, scope: !469)
!21548 = !DILocation(line: 70, column: 23, scope: !470, inlinedAt: !21500)
!21549 = !DILocation(line: 70, column: 9, scope: !470, inlinedAt: !21500)
!21550 = !DILocation(line: 2656, column: 9, scope: !472, inlinedAt: !21504)
!21551 = !DILocation(line: 2705, column: 17, scope: !471, inlinedAt: !21502)
!21552 = !DILocation(line: 2635, column: 9, scope: !484, inlinedAt: !21510)
!21553 = !DILocation(line: 3242, column: 26, scope: !498, inlinedAt: !21516)
!21554 = !DILocation(line: 222, column: 52, scope: !493, inlinedAt: !21512)
!21555 = !DILocation(line: 968, column: 37, scope: !500, inlinedAt: !21521)
!21556 = !DILocation(line: 483, column: 8, scope: !499, inlinedAt: !21523)
!21557 = !DILocation(line: 222, column: 71, scope: !493, inlinedAt: !21512)
!21558 = !DILocation(line: 222, column: 13, scope: !493, inlinedAt: !21512)
!21559 = !DILocation(line: 223, column: 43, scope: !492, inlinedAt: !21512)
!21560 = !DILocation(line: 968, column: 37, scope: !500, inlinedAt: !21526)
!21561 = !DILocation(line: 483, column: 8, scope: !499, inlinedAt: !21528)
!21562 = !DILocation(line: 1129, column: 15, scope: !502, inlinedAt: !21530)
!21563 = !DILocation(line: 1129, column: 9, scope: !502, inlinedAt: !21530)
!21564 = !DILocation(line: 312, column: 12, scope: !506, inlinedAt: !21541)
!21565 = !DILocation(line: 1055, column: 47, scope: !503, inlinedAt: !21535)
!21566 = !DILocation(line: 1055, column: 22, scope: !503, inlinedAt: !21535)
!21567 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21543)
!21568 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21541)
!21569 = distinct !DISubprogram(name: "drop_glue<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECshovLROGBtMy_11quinn_proto", scope: !2609, file: !3671, line: 848, type: !21637, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !21641, retainedNodes: !21639)
!21570 = distinct !{!21570, i1 false, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto"}
!21571 = distinct !{!21571, !21570, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto: argument 0"}
!21572 = distinct !DISubprogram(name: "drop<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", linkageName: "_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto", scope: !4203, file: !4201, line: 69, type: !21637, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !5972, retainedNodes: !21645)
!21573 = distinct !DILocation(line: 848, column: 1, scope: !21569)
!21574 = distinct !DILocation(line: 0, scope: !21572, inlinedAt: !21573)
!21575 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !5974, file: !4014, line: 2192, type: !5976, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, retainedNodes: !21648)
!21576 = distinct !DILexicalBlock(scope: !21577, file: !5977, line: 1101, column: 13)
!21577 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCshovLROGBtMy_11quinn_proto", scope: !5979, file: !5977, line: 1099, type: !5982, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !3120, retainedNodes: !21651)
!21578 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto", scope: !5983, file: !5977, line: 1184, type: !5982, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !5985, retainedNodes: !21653)
!21579 = distinct !DILexicalBlock(scope: !21580, file: !3496, line: 3006, column: 50)
!21580 = distinct !DILexicalBlock(scope: !21582, file: !3496, line: 2999, column: 13)
!21581 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshovLROGBtMy_11quinn_proto", scope: !5966, file: !3496, line: 2998, type: !21658, scopeLine: 2998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, retainedNodes: !21665)
!21582 = distinct !DILexicalBlock(scope: !21581, file: !3496, line: 2999, column: 13)
!21583 = distinct !DILocation(line: 70, column: 9, scope: !21572, inlinedAt: !21573)
!21584 = distinct !DILocation(line: 2999, column: 22, scope: !21654, inlinedAt: !21583)
!21585 = distinct !DILocation(line: 1185, column: 14, scope: !21578, inlinedAt: !21584)
!21586 = distinct !DILocation(line: 1100, column: 12, scope: !21577, inlinedAt: !21585)
!21587 = distinct !DILocation(line: 2192, column: 19, scope: !21575, inlinedAt: !21586)
!21588 = distinct !DILocation(line: 1099, column: 18, scope: !21577, inlinedAt: !21585)
!21589 = distinct !DILocation(line: 1184, column: 13, scope: !21578, inlinedAt: !21584)
!21590 = distinct !DILocation(line: 0, scope: !21581, inlinedAt: !21583)
!21591 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !5986, file: !5977, line: 263, type: !3842, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, retainedNodes: !21669)
!21592 = distinct !DILocation(line: 1103, column: 35, scope: !21576, inlinedAt: !21585)
!21593 = distinct !DILocation(line: 0, scope: !21591, inlinedAt: !21592)
!21594 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !3840, file: !3838, line: 1031, type: !5935, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, retainedNodes: !21672)
!21595 = distinct !DILocation(line: 265, column: 28, scope: !21591, inlinedAt: !21592)
!21596 = distinct !DILocation(line: 0, scope: !21594, inlinedAt: !21595)
!21597 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs5_NtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB5_3TagNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !5988, file: !3614, line: 4, type: !5990, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, retainedNodes: !21675)
!21598 = distinct !DILocation(line: 3004, column: 24, scope: !21580, inlinedAt: !21583)
!21599 = distinct !DILocation(line: 0, scope: !21597, inlinedAt: !21598)
!21600 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner8set_ctrl", scope: !6, file: !3496, line: 2564, type: !3833, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, declaration: !3834, retainedNodes: !21679)
!21601 = distinct !DILocation(line: 3005, column: 31, scope: !21580, inlinedAt: !21583)
!21602 = distinct !DILocation(line: 0, scope: !21600, inlinedAt: !21601)
!21603 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !6, file: !3496, line: 2634, type: !4253, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, declaration: !4254, retainedNodes: !21681)
!21604 = distinct !DILocation(line: 2999, column: 31, scope: !21581, inlinedAt: !21583)
!21605 = distinct !DILocation(line: 0, scope: !21603, inlinedAt: !21604)
!21606 = distinct !DILocation(line: 0, scope: !21582, inlinedAt: !21583)
!21607 = distinct !DILocation(line: 2192, column: 26, scope: !21575, inlinedAt: !21586)
!21608 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !6, file: !3496, line: 2621, type: !3610, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, declaration: !3611, retainedNodes: !21685)
!21609 = distinct !DILocation(line: 3004, column: 31, scope: !21580, inlinedAt: !21583)
!21610 = distinct !DILocation(line: 0, scope: !21576, inlinedAt: !21585)
!21611 = distinct !DILocation(line: 0, scope: !21580, inlinedAt: !21583)
!21612 = distinct !DILocation(line: 0, scope: !21608, inlinedAt: !21609)
!21613 = distinct !DISubprogram(name: "bucket_ptr", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10bucket_ptr", scope: !6, file: !3496, line: 2393, type: !4056, scopeLine: 2393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, declaration: !4057, retainedNodes: !21689)
!21614 = distinct !DILocation(line: 3007, column: 40, scope: !21579, inlinedAt: !21583)
!21615 = distinct !DILocation(line: 0, scope: !21613, inlinedAt: !21614)
!21616 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCshovLROGBtMy_11quinn_proto", scope: !3638, file: !3636, line: 937, type: !3642, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2615)
!21617 = distinct !DILocation(line: 2624, column: 37, scope: !21608, inlinedAt: !21609)
!21618 = distinct !DILocation(line: 2593, column: 19, scope: !21600, inlinedAt: !21601)
!21619 = distinct !DILocation(line: 0, scope: !21608, inlinedAt: !21618)
!21620 = distinct !DILocation(line: 2594, column: 19, scope: !21600, inlinedAt: !21601)
!21621 = distinct !DILocation(line: 0, scope: !21608, inlinedAt: !21620)
!21622 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj12wrapping_sub", scope: !3840, file: !3838, line: 2718, type: !3842, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579)
!21623 = distinct !DILocation(line: 2589, column: 30, scope: !21600, inlinedAt: !21601)
!21624 = distinct !DILocation(line: 2624, column: 37, scope: !21690, inlinedAt: !21620)
!21625 = distinct !DILocation(line: 0, scope: !21579, inlinedAt: !21583)
!21626 = distinct !DISubprogram(name: "data_end<u8>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner8data_endhECshovLROGBtMy_11quinn_proto", scope: !6, file: !3496, line: 2438, type: !4063, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2615, declaration: !4064, retainedNodes: !21692)
!21627 = distinct !DILocation(line: 2397, column: 38, scope: !21613, inlinedAt: !21614)
!21628 = distinct !DILocation(line: 0, scope: !21626, inlinedAt: !21627)
!21629 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3subCshovLROGBtMy_11quinn_proto", scope: !3638, file: !3636, line: 1016, type: !3642, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2615)
!21630 = distinct !DILocation(line: 2398, column: 18, scope: !21613, inlinedAt: !21614)
!21631 = distinct !{null, null}
!21632 = distinct !DISubprogram(name: "bucket_mask_to_capacity", linkageName: "_RNvNtCsjqcU1oJFKXj_9hashbrown3raw23bucket_mask_to_capacity", scope: !2347, file: !3496, line: 182, type: !4012, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, templateParams: !2579, retainedNodes: !21694)
!21633 = distinct !DILocation(line: 3013, column: 33, scope: !21581, inlinedAt: !21583)
!21634 = distinct !DILocation(line: 0, scope: !21632, inlinedAt: !21633)
!21635 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", baseType: !932, size: 64, align: 64, dwarfAddressSpace: 0)
!21636 = !{null, !21635}
!21637 = !DISubroutineType(types: !21636)
!21638 = !DILocalVariable(arg: 1, scope: !21569, file: !3671, line: 848, type: !21635)
!21639 = !{!21638}
!21640 = !DITemplateTypeParameter(name: "T", type: !932)
!21641 = !{!21640}
!21642 = !DILocation(line: 0, scope: !21569)
!21643 = !{!21571}
!21644 = !DILocalVariable(name: "self", arg: 1, scope: !21572, file: !4201, line: 69, type: !21635)
!21645 = !{!21644}
!21646 = !DILocalVariable(name: "self", arg: 1, scope: !21575, file: !4014, line: 2192, type: !3736)
!21647 = !DILocalVariable(name: "other", arg: 2, scope: !21575, file: !4014, line: 2192, type: !3736)
!21648 = !{!21646, !21647}
!21649 = !DILocalVariable(name: "self", arg: 1, scope: !21577, file: !5977, line: 1099, type: !5980)
!21650 = !DILocalVariable(name: "old", scope: !21576, file: !5977, line: 1101, type: !2574, align: 64)
!21651 = !{!21649, !21650}
!21652 = !DILocalVariable(name: "self", arg: 1, scope: !21578, file: !5977, line: 1184, type: !5980)
!21653 = !{!21652}
!21654 = !DILexicalBlockFile(scope: !21582, file: !3496, discriminator: 2)
!21655 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}", baseType: !931, size: 64, align: 64, dwarfAddressSpace: 0)
!21656 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut hashbrown::raw::RawTableInner", baseType: !3817, size: 64, align: 64, dwarfAddressSpace: 0)
!21657 = !{null, !21655, !21656}
!21658 = !DISubroutineType(cc: DW_CC_nocall, types: !21657)
!21659 = !DILocalVariable(name: "self_", arg: 2, scope: !21581, file: !3496, line: 2998, type: !21656)
!21660 = !DILocalVariable(name: "drop", scope: !21581, file: !3496, line: 2988, type: !399, align: 64)
!21661 = !DILocalVariable(name: "size_of", scope: !21581, file: !3496, line: 2987, type: !2574, align: 64)
!21662 = !DILocalVariable(name: "iter", scope: !21582, file: !3496, line: 2999, type: !888, align: 64)
!21663 = !DILocalVariable(name: "i", scope: !21580, file: !3496, line: 2999, type: !2574, align: 64)
!21664 = !DILocalVariable(name: "drop", scope: !21579, file: !3496, line: 3006, type: !3974, align: 64)
!21665 = !{!21659, !21660, !21661, !21662, !21663, !21664}
!21667 = !DILocalVariable(name: "n", scope: !21591, file: !5977, line: 263, type: !2574, align: 64)
!21668 = !DILocalVariable(name: "start", arg: 1, scope: !21591, file: !5977, line: 263, type: !2574)
!21669 = !{!21668, !21667}
!21670 = !DILocalVariable(name: "rhs", scope: !21594, file: !3838, line: 1031, type: !2574, align: 64)
!21671 = !DILocalVariable(name: "self", arg: 1, scope: !21594, file: !3838, line: 1031, type: !2574)
!21672 = !{!21671, !21670}
!21673 = !DILocalVariable(name: "other", scope: !21597, file: !3614, line: 4, type: !5987, align: 64)
!21674 = !DILocalVariable(name: "self", arg: 1, scope: !21597, file: !3614, line: 4, type: !3608)
!21675 = !{!21674, !21673}
!21676 = !DILocalVariable(name: "ctrl", scope: !21600, file: !3496, line: 2564, type: !292, align: 8)
!21677 = !DILocalVariable(name: "self", arg: 1, scope: !21600, file: !3496, line: 2564, type: !3817)
!21678 = !DILocalVariable(name: "index", arg: 2, scope: !21600, file: !3496, line: 2564, type: !2574)
!21679 = !{!21677, !21678, !21676}
!21680 = !DILocalVariable(name: "self", arg: 1, scope: !21603, file: !3496, line: 2634, type: !3817)
!21681 = !{!21680}
!21683 = !DILocalVariable(name: "self", arg: 1, scope: !21608, file: !3496, line: 2621, type: !3817)
!21684 = !DILocalVariable(name: "index", arg: 2, scope: !21608, file: !3496, line: 2621, type: !2574)
!21685 = !{!21683, !21684}
!21686 = !DILocalVariable(name: "index", arg: 2, scope: !21613, file: !3496, line: 2393, type: !2574)
!21687 = !DILocalVariable(name: "self", arg: 1, scope: !21613, file: !3496, line: 2393, type: !3817)
!21688 = !DILocalVariable(name: "size_of", arg: 3, scope: !21613, file: !3496, line: 2393, type: !2574)
!21689 = !{!21687, !21686, !21688}
!21690 = !DILexicalBlockFile(scope: !21608, file: !3496, discriminator: 4)
!21691 = !DILocalVariable(name: "self", arg: 1, scope: !21626, file: !3496, line: 2438, type: !3817)
!21692 = !{!21691}
!21693 = !DILocalVariable(name: "bucket_mask", arg: 1, scope: !21632, file: !3496, line: 182, type: !2574)
!21694 = !{!21693}
!21695 = !DILocation(line: 848, column: 1, scope: !21569)
!21696 = !DILocation(line: 70, column: 9, scope: !21572, inlinedAt: !21573)
!21697 = !DILocation(line: 2635, column: 9, scope: !21603, inlinedAt: !21604)
!21698 = !DILocation(line: 2192, column: 50, scope: !21575, inlinedAt: !21586)
!21699 = !DILocation(line: 1100, column: 12, scope: !21577, inlinedAt: !21585)
!21700 = !DILocation(line: 2624, column: 18, scope: !21608, inlinedAt: !21609)
!21701 = !DILocation(line: 3004, column: 24, scope: !21580, inlinedAt: !21583)
!21702 = !DILocation(line: 1043, column: 17, scope: !21594, inlinedAt: !21595)
!21703 = !DILocation(line: 971, column: 18, scope: !21616, inlinedAt: !21617)
!21704 = !DILocation(line: 4, column: 23, scope: !21597, inlinedAt: !21598)
!21705 = !DILocation(line: 2719, column: 13, scope: !21622, inlinedAt: !21623)
!21706 = !DILocation(line: 2589, column: 60, scope: !21600, inlinedAt: !21601)
!21707 = !DILocation(line: 2589, column: 22, scope: !21600, inlinedAt: !21601)
!21708 = !DILocation(line: 2593, column: 13, scope: !21600, inlinedAt: !21601)
!21709 = !DILocation(line: 2624, column: 18, scope: !21608, inlinedAt: !21620)
!21710 = !DILocation(line: 971, column: 18, scope: !21616, inlinedAt: !21624)
!21711 = !DILocation(line: 2594, column: 13, scope: !21600, inlinedAt: !21601)
!21712 = !DILocation(line: 3009, column: 25, scope: !21580, inlinedAt: !21583)
!21713 = !DILocation(line: 3004, column: 21, scope: !21580, inlinedAt: !21583)
!21714 = !DILocation(line: 2439, column: 9, scope: !21626, inlinedAt: !21627)
!21715 = !DILocation(line: 2398, column: 22, scope: !21613, inlinedAt: !21614)
!21716 = !DILocation(line: 1055, column: 22, scope: !21629, inlinedAt: !21630)
!21717 = !DILocation(line: 3007, column: 29, scope: !21579, inlinedAt: !21583)
!21718 = !DILocation(line: 3013, column: 57, scope: !21581, inlinedAt: !21583)
!21719 = !DILocation(line: 183, column: 8, scope: !21632, inlinedAt: !21633)
!21720 = !DILocation(line: 3013, column: 78, scope: !21581, inlinedAt: !21583)
!21721 = !DILocation(line: 3013, column: 13, scope: !21581, inlinedAt: !21583)
!21722 = distinct !DILocation(line: 848, column: 1, scope: !933)
!21723 = distinct !DILocation(line: 0, scope: !934, inlinedAt: !21722)
!21724 = distinct !{!21724, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1e_"}
!21725 = distinct !{!21725, !21724, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1e_: argument 0"}
!21726 = distinct !{!21726, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_"}
!21727 = distinct !{!21727, !21726, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_: argument 0"}
!21728 = distinct !DILocation(line: 848, column: 1, scope: !934, inlinedAt: !21722)
!21729 = distinct !DILocation(line: 0, scope: !935, inlinedAt: !21728)
!21730 = distinct !DILocation(line: 848, column: 1, scope: !935, inlinedAt: !21728)
!21731 = distinct !DILocation(line: 0, scope: !936, inlinedAt: !21730)
!21732 = distinct !DILocation(line: 425, column: 29, scope: !936, inlinedAt: !21730)
!21733 = distinct !DILocation(line: 0, scope: !916, inlinedAt: !21732)
!21734 = distinct !DILocation(line: 874, column: 52, scope: !915, inlinedAt: !21732)
!21735 = distinct !DILocation(line: 0, scope: !923, inlinedAt: !21734)
!21736 = distinct !DILocation(line: 639, column: 53, scope: !923, inlinedAt: !21734)
!21737 = distinct !DILocation(line: 0, scope: !924, inlinedAt: !21736)
!21738 = distinct !DILocation(line: 0, scope: !915, inlinedAt: !21732)
!21739 = distinct !DILocation(line: 876, column: 28, scope: !915, inlinedAt: !21732)
!21740 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21739)
!21741 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21739)
!21742 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21741)
!21743 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21741)
!21744 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21743)
!21745 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21743)
!21746 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21745)
!21747 = distinct !{!21747, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_"}
!21748 = distinct !{!21748, !21747, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_: argument 0"}
!21749 = distinct !DILocation(line: 848, column: 1, scope: !934, inlinedAt: !21722)
!21750 = distinct !DILocation(line: 0, scope: !935, inlinedAt: !21749)
!21751 = distinct !DILocation(line: 848, column: 1, scope: !935, inlinedAt: !21749)
!21752 = distinct !DILocation(line: 0, scope: !936, inlinedAt: !21751)
!21753 = distinct !DILocation(line: 425, column: 29, scope: !936, inlinedAt: !21751)
!21754 = distinct !DILocation(line: 0, scope: !916, inlinedAt: !21753)
!21755 = distinct !DILocation(line: 874, column: 52, scope: !915, inlinedAt: !21753)
!21756 = distinct !DILocation(line: 0, scope: !923, inlinedAt: !21755)
!21757 = distinct !DILocation(line: 639, column: 53, scope: !923, inlinedAt: !21755)
!21758 = distinct !DILocation(line: 0, scope: !924, inlinedAt: !21757)
!21759 = distinct !DILocation(line: 0, scope: !915, inlinedAt: !21753)
!21760 = distinct !DILocation(line: 876, column: 28, scope: !915, inlinedAt: !21753)
!21761 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21760)
!21762 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21760)
!21763 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21762)
!21764 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21762)
!21765 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21764)
!21766 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21764)
!21767 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21766)
!21768 = distinct !{!21768, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_"}
!21769 = distinct !{!21769, !21768, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_: argument 0"}
!21770 = !DILocation(line: 0, scope: !933)
!21771 = !{!21727, !21725}
!21772 = !{!21725}
!21773 = !{!21748}
!21774 = !{!21769}
!21775 = !DILocation(line: 848, column: 1, scope: !934, inlinedAt: !21722)
!21776 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21734)
!21777 = !DILocation(line: 1431, column: 17, scope: !924, inlinedAt: !21736)
!21778 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21745)
!21779 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21743)
!21780 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21755)
!21781 = !DILocation(line: 1431, column: 17, scope: !924, inlinedAt: !21757)
!21782 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21766)
!21783 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21764)
!21784 = !DILocation(line: 848, column: 1, scope: !933)
!21785 = distinct !DILocation(line: 848, column: 1, scope: !866)
!21786 = distinct !DILocation(line: 0, scope: !867, inlinedAt: !21785)
!21787 = distinct !DILocation(line: 848, column: 1, scope: !867, inlinedAt: !21785)
!21788 = distinct !DILocation(line: 0, scope: !868, inlinedAt: !21787)
!21789 = distinct !DILocation(line: 848, column: 1, scope: !868, inlinedAt: !21787)
!21790 = distinct !DILocation(line: 0, scope: !869, inlinedAt: !21789)
!21791 = distinct !DILocation(line: 848, column: 1, scope: !869, inlinedAt: !21789)
!21792 = distinct !DILocation(line: 0, scope: !870, inlinedAt: !21791)
!21793 = distinct !DILocation(line: 3496, column: 18, scope: !870, inlinedAt: !21791)
!21794 = distinct !DILocation(line: 0, scope: !871, inlinedAt: !21793)
!21795 = distinct !DILocation(line: 2271, column: 18, scope: !871, inlinedAt: !21793)
!21796 = distinct !DILocation(line: 0, scope: !872, inlinedAt: !21795)
!21797 = distinct !DILocation(line: 2280, column: 22, scope: !871, inlinedAt: !21793)
!21798 = distinct !DILocation(line: 0, scope: !874, inlinedAt: !21797)
!21799 = distinct !DILocation(line: 3113, column: 38, scope: !874, inlinedAt: !21797)
!21800 = distinct !DILocation(line: 0, scope: !877, inlinedAt: !21799)
!21801 = distinct !DILocation(line: 3145, column: 39, scope: !877, inlinedAt: !21799)
!21802 = distinct !DILocation(line: 0, scope: !494, inlinedAt: !21801)
!21803 = distinct !DILocation(line: 222, column: 18, scope: !493, inlinedAt: !21801)
!21804 = distinct !DILocation(line: 0, scope: !496, inlinedAt: !21803)
!21805 = distinct !DILocation(line: 1360, column: 31, scope: !496, inlinedAt: !21803)
!21806 = distinct !DILocation(line: 0, scope: !498, inlinedAt: !21805)
!21807 = distinct !DILocation(line: 0, scope: !493, inlinedAt: !21801)
!21808 = distinct !DILocation(line: 1361, column: 16, scope: !495, inlinedAt: !21803)
!21809 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !21808)
!21810 = distinct !DILocation(line: 222, column: 40, scope: !493, inlinedAt: !21801)
!21811 = distinct !DILocation(line: 0, scope: !500, inlinedAt: !21810)
!21812 = distinct !DILocation(line: 968, column: 16, scope: !500, inlinedAt: !21810)
!21813 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !21812)
!21814 = distinct !DILocation(line: 0, scope: !492, inlinedAt: !21801)
!21815 = distinct !DILocation(line: 223, column: 31, scope: !492, inlinedAt: !21801)
!21816 = distinct !DILocation(line: 0, scope: !500, inlinedAt: !21815)
!21817 = distinct !DILocation(line: 968, column: 16, scope: !4291, inlinedAt: !21815)
!21818 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !21817)
!21819 = distinct !DILocation(line: 0, scope: !873, inlinedAt: !21797)
!21820 = distinct !DILocation(line: 0, scope: !876, inlinedAt: !21799)
!21821 = distinct !DILocation(line: 3150, column: 64, scope: !876, inlinedAt: !21799)
!21822 = distinct !DILocation(line: 0, scope: !878, inlinedAt: !21821)
!21823 = distinct !DILocation(line: 3114, column: 19, scope: !873, inlinedAt: !21797)
!21824 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21823)
!21825 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21823)
!21826 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21825)
!21827 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21825)
!21828 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21827)
!21829 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21827)
!21830 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21829)
!21831 = distinct !{!21831, i1 false, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_"}
!21832 = distinct !{!21832, !21831, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_: argument 0"}
!21833 = !DILocation(line: 0, scope: !866)
!21834 = !{!21832}
!21835 = !DILocation(line: 2656, column: 9, scope: !872, inlinedAt: !21795)
!21836 = !DILocation(line: 2271, column: 13, scope: !871, inlinedAt: !21793)
!21837 = !DILocation(line: 3242, column: 26, scope: !498, inlinedAt: !21805)
!21838 = !DILocation(line: 223, column: 43, scope: !492, inlinedAt: !21801)
!21839 = !DILocation(line: 968, column: 37, scope: !500, inlinedAt: !21815)
!21840 = !DILocation(line: 483, column: 8, scope: !499, inlinedAt: !21817)
!21841 = !DILocation(line: 312, column: 12, scope: !506, inlinedAt: !21827)
!21842 = !DILocation(line: 1055, column: 47, scope: !878, inlinedAt: !21821)
!21843 = !DILocation(line: 1055, column: 22, scope: !878, inlinedAt: !21821)
!21844 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21829)
!21845 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21827)
!21846 = !DILocation(line: 848, column: 1, scope: !866)
!21847 = distinct !DILocation(line: 848, column: 1, scope: !911)
!21848 = distinct !DILocation(line: 0, scope: !912, inlinedAt: !21847)
!21849 = distinct !{!21849, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventEEB1c_"}
!21850 = distinct !{!21850, !21849, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventEEB1c_: argument 0"}
!21851 = distinct !{!21851, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_"}
!21852 = distinct !{!21852, !21851, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!21853 = distinct !DILocation(line: 848, column: 1, scope: !912, inlinedAt: !21847)
!21854 = distinct !DILocation(line: 0, scope: !913, inlinedAt: !21853)
!21855 = distinct !DILocation(line: 848, column: 1, scope: !913, inlinedAt: !21853)
!21856 = distinct !DILocation(line: 0, scope: !914, inlinedAt: !21855)
!21857 = distinct !DILocation(line: 425, column: 29, scope: !914, inlinedAt: !21855)
!21858 = distinct !DILocation(line: 0, scope: !916, inlinedAt: !21857)
!21859 = distinct !DILocation(line: 874, column: 52, scope: !915, inlinedAt: !21857)
!21860 = distinct !DILocation(line: 0, scope: !923, inlinedAt: !21859)
!21861 = distinct !DILocation(line: 639, column: 53, scope: !923, inlinedAt: !21859)
!21862 = distinct !DILocation(line: 0, scope: !924, inlinedAt: !21861)
!21863 = distinct !DILocation(line: 0, scope: !915, inlinedAt: !21857)
!21864 = distinct !DILocation(line: 876, column: 28, scope: !915, inlinedAt: !21857)
!21865 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21864)
!21866 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21864)
!21867 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21866)
!21868 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21866)
!21869 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21868)
!21870 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21868)
!21871 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21870)
!21872 = distinct !{!21872, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_"}
!21873 = distinct !{!21873, !21872, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!21874 = distinct !DILocation(line: 848, column: 1, scope: !912, inlinedAt: !21847)
!21875 = distinct !DILocation(line: 0, scope: !913, inlinedAt: !21874)
!21876 = distinct !DILocation(line: 848, column: 1, scope: !913, inlinedAt: !21874)
!21877 = distinct !DILocation(line: 0, scope: !914, inlinedAt: !21876)
!21878 = distinct !DILocation(line: 425, column: 29, scope: !914, inlinedAt: !21876)
!21879 = distinct !DILocation(line: 0, scope: !916, inlinedAt: !21878)
!21880 = distinct !DILocation(line: 874, column: 52, scope: !915, inlinedAt: !21878)
!21881 = distinct !DILocation(line: 0, scope: !923, inlinedAt: !21880)
!21882 = distinct !DILocation(line: 639, column: 53, scope: !923, inlinedAt: !21880)
!21883 = distinct !DILocation(line: 0, scope: !924, inlinedAt: !21882)
!21884 = distinct !DILocation(line: 0, scope: !915, inlinedAt: !21878)
!21885 = distinct !DILocation(line: 876, column: 28, scope: !915, inlinedAt: !21878)
!21886 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !21885)
!21887 = distinct !DILocation(line: 554, column: 23, scope: !504, inlinedAt: !21885)
!21888 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !21887)
!21889 = distinct !DILocation(line: 436, column: 9, scope: !505, inlinedAt: !21887)
!21890 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !21889)
!21891 = distinct !DILocation(line: 321, column: 22, scope: !506, inlinedAt: !21889)
!21892 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !21891)
!21893 = distinct !{!21893, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_"}
!21894 = distinct !{!21894, !21893, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!21895 = !DILocation(line: 0, scope: !911)
!21896 = !{!21852, !21850}
!21897 = !{!21850}
!21898 = !{!21873}
!21899 = !{!21894}
!21900 = !DILocation(line: 848, column: 1, scope: !912, inlinedAt: !21847)
!21901 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21859)
!21902 = !DILocation(line: 1431, column: 17, scope: !924, inlinedAt: !21861)
!21903 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21870)
!21904 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21868)
!21905 = !DILocation(line: 631, column: 12, scope: !923, inlinedAt: !21880)
!21906 = !DILocation(line: 1431, column: 17, scope: !924, inlinedAt: !21882)
!21907 = !DILocation(line: 175, column: 14, scope: !507, inlinedAt: !21891)
!21908 = !DILocation(line: 312, column: 9, scope: !506, inlinedAt: !21889)
!21909 = !DILocation(line: 848, column: 1, scope: !911)
end_hunk_1
