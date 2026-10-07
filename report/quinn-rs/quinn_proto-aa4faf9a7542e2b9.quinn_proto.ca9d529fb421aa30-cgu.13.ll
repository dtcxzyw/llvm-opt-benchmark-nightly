Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.13?download=true
inline.NumInlined: 762
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_:bb.a
  %i.d = add i64 %i.c, 32, !dbg !36820            ; 2 uses
    #dbg_value(i1 false, !4285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !36794)
    #dbg_value(i64 %i.d, !4287, !DIExpression(), !36796)
    #dbg_value(i64 15, !4288, !DIExpression(), !36796)
    #dbg_value(i1 false, !4285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !36798)
    #dbg_value(i64 %i.d, !4263, !DIExpression(), !36799)
    #dbg_value(i64 %i.d, !4287, !DIExpression(), !36801)
  %i.e = add i64 %.val1, 17, !dbg !36821
    #dbg_value(i64 %i.e, !4288, !DIExpression(), !36801)
  %i.f = add i64 %i.e, %i.d, !dbg !36822          ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d, !dbg !36822
    #dbg_value(i1 %i.g, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !36803)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g), !dbg !36823
  tail call void @llvm.assume(i1 %i.h), !dbg !36823
    #dbg_value(i64 16, !5754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36804)
    #dbg_value(i64 16, !5758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36805)
    #dbg_value(i64 %i.f, !5754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36804)
    #dbg_value(i64 %i.f, !5758, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36805)
    #dbg_value(i64 %i.d, !5759, !DIExpression(), !36805)
    #dbg_value(i64 %i.d, !5763, !DIExpression(), !36807)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !5764, !DIExpression(), !36807)
    #dbg_value(!DIArgList(ptr %.val, i64 -32, i64 %i.c), !5753, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36804)
    #dbg_value(ptr poison, !4304, !DIExpression(), !36809)
    #dbg_value(ptr poison, !4311, !DIExpression(), !36811)
    #dbg_value(!DIArgList(ptr %.val, i64 -32, i64 %i.c), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36809)
    #dbg_value(!DIArgList(ptr %.val, i64 -32, i64 %i.c), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36811)
    #dbg_value(!DIArgList(ptr %.val, i64 -32, i64 %i.c), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36813)
    #dbg_value(!DIArgList(ptr %.val, i64 -32, i64 %i.c), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36815)
    #dbg_value(i64 16, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36809)
    #dbg_value(i64 16, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36811)
    #dbg_value(i64 16, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36813)
    #dbg_value(i64 16, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36815)
    #dbg_value(i64 %i.f, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36809)
    #dbg_value(i64 %i.f, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36811)
    #dbg_value(i64 %i.f, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36813)
    #dbg_value(i64 %i.f, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36815)
  %i.i = icmp eq i64 %i.f, 0, !dbg !36824
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit, label %bb.b, !dbg !36824

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -32, %i.c, !dbg !36825
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36815)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36813)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36811)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36809)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !5753, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36804)
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j, !dbg !36826
    #dbg_value(ptr %i.k, !5753, !DIExpression(), !36804)
    #dbg_value(ptr %i.k, !4308, !DIExpression(), !36809)
    #dbg_value(ptr %i.k, !4314, !DIExpression(), !36811)
    #dbg_value(ptr %i.k, !4317, !DIExpression(), !36813)
    #dbg_value(ptr %i.k, !4323, !DIExpression(), !36815)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !dbg !36827
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit, !dbg !36828

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !36829
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 !dbg !36830 {
bb.a:
    #dbg_value(ptr %0, !36879, !DIExpression(), !36881)
  %.val = load ptr, ptr %0, align 8, !dbg !36904  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36904
  %.val1 = load i64, ptr %i.a, align 8, !dbg !36904, !noundef !2579 ; 4 uses
    #dbg_value(ptr poison, !36882, !DIExpression(), !36833)
    #dbg_value(ptr poison, !36887, !DIExpression(), !36836)
    #dbg_value(ptr poison, !36889, !DIExpression(), !36840)
    #dbg_value(ptr poison, !36895, !DIExpression(), !36845)
    #dbg_value(ptr poison, !36884, !DIExpression(), !36833)
    #dbg_value(ptr poison, !36890, !DIExpression(), !36840)
    #dbg_value(i64 8, !36885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36833)
    #dbg_value(i64 8, !36891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36840)
    #dbg_value(i64 8, !36896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36845)
    #dbg_value(i64 16, !36885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36833)
    #dbg_value(i64 16, !36891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36840)
    #dbg_value(i64 16, !36896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36845)
  %i.b = icmp eq i64 %.val1, 0, !dbg !36905
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !36906

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 8, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36847)
    #dbg_value(i64 16, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36847)
    #dbg_value(i64 %.val1, !4260, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !36847)
    #dbg_value(i64 %.val1, !4272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !36849)
    #dbg_value(i64 %.val1, !4277, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !36851)
    #dbg_value(i64 8, !4261, !DIExpression(), !36852)
    #dbg_value(i64 8, !4273, !DIExpression(), !36849)
    #dbg_value(i64 8, !4283, !DIExpression(), !36851)
    #dbg_value(i64 16, !4262, !DIExpression(), !36852)
  %i.c = shl i64 %.val1, 3, !dbg !36907
    #dbg_value(i1 false, !4285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !36854)
    #dbg_value(i64 %i.c, !4287, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36856)
    #dbg_value(i64 15, !4288, !DIExpression(), !36856)
  %i.d = icmp slt i64 %.val1, 2305843009213693950, !dbg !36908
    #dbg_value(i1 true, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !36858)
  tail call void @llvm.assume(i1 %i.d), !dbg !36909
  %i.e = and i64 %i.c, -16, !dbg !36910           ; 2 uses
  %i.f = add i64 %i.e, 16, !dbg !36910            ; 2 uses
    #dbg_value(i64 %i.f, !4263, !DIExpression(), !36859)
    #dbg_value(i64 %i.f, !4287, !DIExpression(), !36861)
  %i.g = add nsw i64 %.val1, 17, !dbg !36911
    #dbg_value(i64 %i.g, !4288, !DIExpression(), !36861)
  %i.h = add i64 %i.g, %i.f, !dbg !36912          ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f, !dbg !36912
    #dbg_value(i1 %i.i, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !36863)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i), !dbg !36913
  tail call void @llvm.assume(i1 %i.j), !dbg !36913
    #dbg_value(i64 16, !36893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36864)
    #dbg_value(i64 16, !36897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36865)
    #dbg_value(i64 %i.h, !36893, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36864)
    #dbg_value(i64 %i.h, !36897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36865)
    #dbg_value(i64 %i.f, !36898, !DIExpression(), !36865)
    #dbg_value(i64 %i.f, !36901, !DIExpression(), !36868)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !36902, !DIExpression(), !36868)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !36892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36864)
    #dbg_value(ptr poison, !4304, !DIExpression(), !36870)
    #dbg_value(ptr poison, !4311, !DIExpression(), !36872)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36870)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36872)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36874)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36876)
    #dbg_value(i64 16, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36870)
    #dbg_value(i64 16, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36872)
    #dbg_value(i64 16, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36874)
    #dbg_value(i64 16, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36876)
    #dbg_value(i64 %i.h, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36870)
    #dbg_value(i64 %i.h, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36872)
    #dbg_value(i64 %i.h, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36874)
    #dbg_value(i64 %i.h, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36876)
  %i.k = icmp eq i64 %i.h, 0, !dbg !36914
  br i1 %i.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %bb.b, !dbg !36914

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e, !dbg !36915
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36876)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36874)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36872)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36870)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !36892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !36864)
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l, !dbg !36916
    #dbg_value(ptr %i.m, !36892, !DIExpression(), !36864)
    #dbg_value(ptr %i.m, !4308, !DIExpression(), !36870)
    #dbg_value(ptr %i.m, !4314, !DIExpression(), !36872)
    #dbg_value(ptr %i.m, !4317, !DIExpression(), !36874)
    #dbg_value(ptr %i.m, !4323, !DIExpression(), !36876)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !dbg !36917
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !36918

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !36919
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCshovLROGBtMy_11quinn_proto8endpoint14ConnectionMetaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBD_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !36930 {
bb.a:
    #dbg_value(ptr %0, !36981, !DIExpression(), !36993)
    #dbg_value(ptr %0, !36983, !DIExpression(), !36994)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !36995, !nonnull !2579, !noundef !2579
  %.promoted = load ptr, ptr %0, align 8, !alias.scope !36995
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted15 = load i64, ptr %i.c, align 8
  br label %bb.b, !dbg !37052

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i64 [ %i.h, %bb.c ], [ %.promoted15, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.g, %bb.c ], [ %.promoted, %bb.a ] ; 4 uses
    #dbg_value(ptr poison, !36997, !DIExpression(), !37018)
    #dbg_value(ptr %0, !37020, !DIExpression(), !36947)
    #dbg_value(ptr %0, !37030, !DIExpression(), !36953)
    #dbg_value(i64 1, !37037, !DIExpression(), !36956)
    #dbg_value(ptr %i.e, !37033, !DIExpression(), !36957)
    #dbg_value(ptr %i.e, !37041, !DIExpression(), !36956)
    #dbg_value(ptr %i.b, !37034, !DIExpression(), !36958)
    #dbg_value(ptr poison, !37044, !DIExpression(), !36961)
    #dbg_value(ptr poison, !37047, !DIExpression(), !36962)
  %i.f = icmp eq ptr %i.e, %i.b, !dbg !37053
  br i1 %i.f, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtCs9Srk37lQfcB_4slab5EntryNtNtCshovLROGBtMy_11quinn_proto8endpoint14ConnectionMetaEEENtNtNtB8_6traits8iterator8Iterator4nextB23_.exit.thread, label %bb.c, !dbg !37054

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 168, !dbg !37055 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !dbg !37056, !alias.scope !36995
    #dbg_value(ptr %i.e, !37024, !DIExpression(), !36963)
    #dbg_value(i64 %i.d, !37027, !DIExpression(), !36964)
  %i.h = add i64 %i.d, 1, !dbg !37057             ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !dbg !37057, !alias.scope !37049
    #dbg_value(i64 poison, !36984, !DIExpression(), !37050)
    #dbg_value(ptr %i.e, !36985, !DIExpression(), !37050)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88, !dbg !37058
  %i.j = load i16, ptr %i.i, align 8, !dbg !37058, !range !5711, !noundef !2579
  %.not9 = icmp eq i16 %i.j, 2, !dbg !37058
  br i1 %.not9, label %bb.b, label %bb.d, !dbg !37059

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtCs9Srk37lQfcB_4slab5EntryNtNtCshovLROGBtMy_11quinn_proto8endpoint14ConnectionMetaEEENtNtNtB8_6traits8iterator8Iterator4nextB23_.exit.thread: ; preds = %bb.b, %bb.d
  %i.k = phi { i64, ptr } [ %1, %bb.d ], [ { i64 undef, ptr null }, %bb.b ]
  ret { i64, ptr } %i.k, !dbg !37060

bb.d:                                             ; preds = %bb.c
  %i.l = insertvalue { i64, ptr } poison, i64 %i.d, 0, !dbg !37061
  %1 = insertvalue { i64, ptr } %i.l, ptr %i.e, 1, !dbg !37061
    #dbg_value(ptr poison, !36986, !DIExpression(), !37051)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !37062 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !37062, !noundef !2579
  %i.o = add i64 %i.n, -1, !dbg !37062
  store i64 %i.o, ptr %i.m, align 8, !dbg !37062
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtCs9Srk37lQfcB_4slab5EntryNtNtCshovLROGBtMy_11quinn_proto8endpoint14ConnectionMetaEEENtNtNtB8_6traits8iterator8Iterator4nextB23_.exit.thread, !dbg !37060
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceEmEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_mNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCshovLROGBtMy_11quinn_proto(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !37064 {
bb.a:
    #dbg_value(ptr %0, !37096, !DIExpression(), !37100)
    #dbg_declare(ptr poison, !37095, !DIExpression(), !37101)
    #dbg_value(ptr poison, !37103, !DIExpression(), !37067)
    #dbg_value(ptr %0, !37106, !DIExpression(), !37067)
    #dbg_value(ptr %0, !37108, !DIExpression(), !37070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37110), !dbg !37114
    #dbg_value(ptr %0, !9199, !DIExpression(), !37074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37111), !dbg !37115
    #dbg_value(ptr %0, !9204, !DIExpression(), !37078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37112), !dbg !37116
    #dbg_value(ptr %0, !9210, !DIExpression(), !37082)
    #dbg_value(ptr %0, !9212, !DIExpression(), !37084)
    #dbg_value(i64 1, !9220, !DIExpression(), !37086)
    #dbg_value(i8 1, !9222, !DIExpression(), !37086)
    #dbg_value(i64 1, !9224, !DIExpression(), !37088)
    #dbg_value(i8 1, !9226, !DIExpression(), !37088)
  %i.a = load ptr, ptr %0, align 8, !dbg !37117, !alias.scope !37113, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.a, !9221, !DIExpression(), !37090)
    #dbg_value(ptr %i.a, !9225, !DIExpression(), !37088)
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !37118, !noalias !37113
  %i.c = icmp eq i64 %i.b, 1, !dbg !37119
  br i1 %i.c, label %bb.b, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CshovLROGBtMy_11quinn_proto.exit, !dbg !37119

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 2, !7871, !DIExpression(), !37092)
  fence acquire, !dbg !37120
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32, !dbg !37121
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CshovLROGBtMy_11quinn_proto.exit, !dbg !37121

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !37101
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBX_10connection7streams4send4SendEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtB1C_3ops8function6FnOnceTOhEE9call_onceBX_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !37123 {
bb.a:
    #dbg_value(ptr %0, !37133, !DIExpression(), !37137)
    #dbg_declare(ptr poison, !37132, !DIExpression(), !37138)
  %i.a = getelementptr i8, ptr %0, i64 8, !dbg !37138
  %.val = load ptr, ptr %i.a, align 8, !dbg !37138, !align !4372, !noundef !2579
    #dbg_value(ptr poison, !37140, !DIExpression(), !37126)
    #dbg_value(ptr poison, !37143, !DIExpression(), !37126)
    #dbg_value(ptr poison, !37145, !DIExpression(), !37129)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBE_10connection7streams4send4SendEEEEBE_(ptr %.val), !dbg !37147
  ret void, !dbg !37138
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtBX_10connection7streams5state10StreamRecvEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtB1C_3ops8function6FnOnceTOhEE9call_onceBX_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !37149 {
bb.a:
    #dbg_value(ptr %0, !37159, !DIExpression(), !37163)
    #dbg_declare(ptr poison, !37158, !DIExpression(), !37164)
  %i.a = getelementptr i8, ptr %0, i64 8, !dbg !37164
  %.val = load i64, ptr %i.a, align 8, !dbg !37164, !range !9236, !noundef !2579
  %i.b = getelementptr i8, ptr %0, i64 16, !dbg !37164
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !37164
    #dbg_value(ptr poison, !37166, !DIExpression(), !37152)
    #dbg_value(ptr poison, !37169, !DIExpression(), !37152)
    #dbg_value(ptr poison, !37171, !DIExpression(), !37155)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtB4_6option6OptionNtNtNtNtBE_10connection7streams5state10StreamRecvEEEBE_(i64 %.val, ptr %.val1), !dbg !37173
  ret void, !dbg !37164
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtB2L_8endpoint16ConnectionHandleEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1N_NtNtNtB1W_4hash6random11RandomStateE0Es_0INtNtNtB11_3ops8function6FnOnceTOhEE9call_onceB2L_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !37175 {
bb.a:
    #dbg_value(ptr %0, !37237, !DIExpression(), !37241)
    #dbg_declare(ptr poison, !37236, !DIExpression(), !37242)
  %i.a = getelementptr i8, ptr %0, i64 32, !dbg !37242
  %.val = load ptr, ptr %i.a, align 8, !dbg !37242, !alias.scope !37243 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40, !dbg !37242
  %.val1 = load i64, ptr %i.b, align 8, !dbg !37242, !alias.scope !37243, !noundef !2579 ; 4 uses
    #dbg_value(ptr poison, !37245, !DIExpression(), !37180)
    #dbg_value(ptr poison, !37248, !DIExpression(), !37180)
    #dbg_value(ptr poison, !37250, !DIExpression(), !37183)
    #dbg_value(ptr poison, !9266, !DIExpression(), !37185)
    #dbg_value(ptr poison, !9271, !DIExpression(), !37187)
    #dbg_value(ptr poison, !9278, !DIExpression(), !37189)
    #dbg_value(ptr poison, !9284, !DIExpression(), !37191)
    #dbg_value(ptr poison, !9239, !DIExpression(), !37193)
    #dbg_value(ptr poison, !9241, !DIExpression(), !37195)
    #dbg_value(ptr poison, !9246, !DIExpression(), !37197)
    #dbg_value(ptr poison, !9248, !DIExpression(), !37199)
    #dbg_value(ptr poison, !9254, !DIExpression(), !37201)
    #dbg_value(ptr poison, !9243, !DIExpression(), !37195)
    #dbg_value(ptr poison, !9249, !DIExpression(), !37199)
    #dbg_value(i64 24, !9244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37195)
    #dbg_value(i64 24, !9250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37199)
    #dbg_value(i64 24, !9255, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37201)
    #dbg_value(i64 16, !9244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37195)
    #dbg_value(i64 16, !9250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37199)
    #dbg_value(i64 16, !9255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37201)
  %i.c = icmp eq i64 %.val1, 0, !dbg !37253
  br i1 %i.c, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtB2I_8endpoint16ConnectionHandleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1K_NtNtNtB1T_4hash6random11RandomStateE0Es_0B2I_.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, !dbg !37254

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
    #dbg_value(i64 24, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37203)
    #dbg_value(i64 16, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37203)
    #dbg_value(i64 %.val1, !4260, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !37203)
    #dbg_value(i64 %.val1, !4272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !37205)
    #dbg_value(i64 %.val1, !4277, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !37207)
    #dbg_value(i64 24, !4261, !DIExpression(), !37208)
    #dbg_value(i64 24, !4273, !DIExpression(), !37205)
    #dbg_value(i64 24, !4283, !DIExpression(), !37207)
    #dbg_value(i64 16, !4262, !DIExpression(), !37208)
  %i.d = mul i64 %.val1, 24, !dbg !37255
    #dbg_value(i1 false, !4285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !37210)
    #dbg_value(i64 %i.d, !4287, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !37212)
    #dbg_value(i64 15, !4288, !DIExpression(), !37212)
  %i.e = icmp slt i64 %.val1, 768614336404564650, !dbg !37256
    #dbg_value(i1 true, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !37214)
  tail call void @llvm.assume(i1 %i.e), !dbg !37257
  %i.f = and i64 %i.d, -16, !dbg !37258           ; 2 uses
  %i.g = add i64 %i.f, 32, !dbg !37258            ; 2 uses
    #dbg_value(i64 %i.g, !4263, !DIExpression(), !37215)
    #dbg_value(i64 %i.g, !4287, !DIExpression(), !37217)
  %i.h = add nsw i64 %.val1, 17, !dbg !37259
    #dbg_value(i64 %i.h, !4288, !DIExpression(), !37217)
  %i.i = add i64 %i.h, %i.g, !dbg !37260          ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !37260
    #dbg_value(i1 %i.j, !4285, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !37219)
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j), !dbg !37261
  tail call void @llvm.assume(i1 %i.k), !dbg !37261
    #dbg_value(i64 16, !9252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37220)
    #dbg_value(i64 16, !9256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37221)
    #dbg_value(i64 %i.i, !9252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37220)
    #dbg_value(i64 %i.i, !9256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37221)
    #dbg_value(i64 %i.g, !9257, !DIExpression(), !37221)
    #dbg_value(i64 %i.g, !9260, !DIExpression(), !37223)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !9261, !DIExpression(), !37223)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.g), !9251, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !37220)
    #dbg_value(ptr poison, !4304, !DIExpression(), !37225)
    #dbg_value(ptr poison, !4311, !DIExpression(), !37227)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.g), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !37225)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.g), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !37227)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.g), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !37229)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.g), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !37231)
    #dbg_value(i64 16, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37225)
    #dbg_value(i64 16, !4315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37227)
    #dbg_value(i64 16, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37229)
    #dbg_value(i64 16, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37231)
    #dbg_value(i64 %i.i, !4309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37225)
    #dbg_value(i64 %i.i, !4315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37227)
    #dbg_value(i64 %i.i, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37229)
    #dbg_value(i64 %i.i, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37231)
  %i.l = icmp eq i64 %i.i, 0, !dbg !37262
  br i1 %i.l, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtB2I_8endpoint16ConnectionHandleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1K_NtNtNtB1T_4hash6random11RandomStateE0Es_0B2I_.exit, label %bb.b, !dbg !37262

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.m = sub i64 -32, %i.f, !dbg !37263
    #dbg_value(!DIArgList(ptr %.val, i64 %i.m), !4323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37231)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.m), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37229)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.m), !4314, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37227)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.m), !4308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37225)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.m), !9251, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37220)
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m, !dbg !37264
    #dbg_value(ptr %i.n, !9251, !DIExpression(), !37220)
    #dbg_value(ptr %i.n, !4308, !DIExpression(), !37225)
    #dbg_value(ptr %i.n, !4314, !DIExpression(), !37227)
    #dbg_value(ptr %i.n, !4317, !DIExpression(), !37229)
    #dbg_value(ptr %i.n, !4323, !DIExpression(), !37231)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !dbg !37265, !noalias !37252
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtB2I_8endpoint16ConnectionHandleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1K_NtNtNtB1T_4hash6random11RandomStateE0Es_0B2I_.exit, !dbg !37266

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtB2I_8endpoint16ConnectionHandleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1K_NtNtNtB1T_4hash6random11RandomStateE0Es_0B2I_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.b
  ret void, !dbg !37242
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17
end_hunk_0
