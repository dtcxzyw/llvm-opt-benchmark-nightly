Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.13?download=true
inline.NumInlined: 1217
inline.NumDeleted: 526
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCs4bweDUTR8gt_8plotters7element7dynelem11DynDrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEEL_EECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(ptr %.0.val, !8008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23542)
    #dbg_value(ptr %.0.val, !8014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23544)
    #dbg_value(ptr %.0.val, !7983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23536)
    #dbg_value(ptr poison, !4256, !DIExpression(), !23547)
    #dbg_value(ptr poison, !4262, !DIExpression(), !23549)
    #dbg_value(ptr %.0.val, !4259, !DIExpression(), !23547)
    #dbg_value(ptr %.0.val, !4265, !DIExpression(), !23549)
    #dbg_value(ptr %.0.val, !4268, !DIExpression(), !23551)
    #dbg_value(ptr %.0.val, !4274, !DIExpression(), !23553)
    #dbg_value(i64 %i.f, !4260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23547)
    #dbg_value(i64 %i.f, !4266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23549)
    #dbg_value(i64 %i.f, !4272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23551)
    #dbg_value(i64 %i.f, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23553)
    #dbg_value(i64 %i.c, !4260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23547)
    #dbg_value(i64 %i.c, !4266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23549)
    #dbg_value(i64 %i.c, !4272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23551)
    #dbg_value(i64 %i.c, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23553)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31, !dbg !23579
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCs4bweDUTR8gt_8plotters7element7dynelem11DynDrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23580

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCs4bweDUTR8gt_8plotters7element7dynelem11DynDrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void, !dbg !23575

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7982, !DIExpression(), !23555)
    #dbg_value(ptr poison, !7983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23556)
    #dbg_value(ptr %.8.val, !7983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23556)
    #dbg_value(ptr poison, !7997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23558)
    #dbg_value(ptr poison, !8004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23560)
    #dbg_value(ptr poison, !8008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23562)
    #dbg_value(ptr poison, !8014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23564)
    #dbg_value(ptr %.8.val, !7997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23558)
    #dbg_value(ptr %.8.val, !8004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23560)
    #dbg_value(ptr %.8.val, !8008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23562)
    #dbg_value(ptr %.8.val, !8014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23564)
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !23581
  %i.i = load i64, ptr %i.h, align 8, !dbg !23581, !range !4254, !invariant.load !2755 ; 2 uses
    #dbg_value(i64 poison, !7984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23565)
    #dbg_value(i64 %i.i, !7984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23565)
  %i.j = icmp eq i64 %i.i, 0, !dbg !23582
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCs4bweDUTR8gt_8plotters7element7dynelem11DynDrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit6, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i5, !dbg !23582

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i5: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !23581
  %i.l = load i64, ptr %i.k, align 8, !dbg !23583, !range !4255, !invariant.load !2755
    #dbg_value(i64 %i.l, !7984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23565)
    #dbg_value(ptr %.0.val, !7997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23558)
    #dbg_value(ptr %.0.val, !8004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23560)
    #dbg_value(ptr %.0.val, !8008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23562)
    #dbg_value(ptr %.0.val, !8014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23564)
    #dbg_value(ptr %.0.val, !7983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23556)
    #dbg_value(ptr poison, !4256, !DIExpression(), !23567)
    #dbg_value(ptr poison, !4262, !DIExpression(), !23569)
    #dbg_value(ptr %.0.val, !4259, !DIExpression(), !23567)
    #dbg_value(ptr %.0.val, !4265, !DIExpression(), !23569)
    #dbg_value(ptr %.0.val, !4268, !DIExpression(), !23571)
    #dbg_value(ptr %.0.val, !4274, !DIExpression(), !23573)
    #dbg_value(i64 %i.l, !4260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23567)
    #dbg_value(i64 %i.l, !4266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23569)
    #dbg_value(i64 %i.l, !4272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23571)
    #dbg_value(i64 %i.l, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23573)
    #dbg_value(i64 %i.i, !4260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23567)
    #dbg_value(i64 %i.i, !4266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23569)
    #dbg_value(i64 %i.i, !4272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23571)
    #dbg_value(i64 %i.i, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23573)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31, !dbg !23584
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCs4bweDUTR8gt_8plotters7element7dynelem11DynDrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit6, !dbg !23585

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCs4bweDUTR8gt_8plotters7element7dynelem11DynDrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit6: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i5, %bb.d
  resume { ptr, i32 } %i.g, !dbg !23575
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 !dbg !1290 {
bb.a:
    #dbg_value(ptr %0, !6964, !DIExpression(), !23633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23634), !dbg !23635
    #dbg_value(ptr %0, !6970, !DIExpression(), !23589)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23636
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23637
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !23637, !alias.scope !23634 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !23637, !alias.scope !23634 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23637
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !23637, !alias.scope !23634, !noundef !2755 ; 3 uses
    #dbg_value(ptr poison, !6973, !DIExpression(DW_OP_deref), !23591)
    #dbg_value(ptr poison, !6978, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !23591)
    #dbg_value(ptr poison, !6977, !DIExpression(), !23591)
    #dbg_value(ptr poison, !6981, !DIExpression(), !23593)
    #dbg_value(ptr poison, !6986, !DIExpression(), !23595)
    #dbg_value(ptr poison, !6995, !DIExpression(), !23597)
    #dbg_value(ptr poison, !7007, !DIExpression(), !23599)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !23638
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !23639

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23637
  %.val.i = load i64, ptr %i.e, align 8, !dbg !23637, !alias.scope !23634
    #dbg_value(ptr poison, !6990, !DIExpression(), !23595)
    #dbg_value(i64 %.val.i, !6991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23595)
    #dbg_value(i64 %.val.i, !7002, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23597)
    #dbg_value(i64 %.val1.i, !6991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23595)
    #dbg_value(i64 %.val1.i, !7002, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23597)
  %i.f = add i64 %.val3.i, 1, !dbg !23640
    #dbg_value(i64 %.val.i, !6812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23601)
    #dbg_value(i64 %.val1.i, !6812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23601)
    #dbg_value(i64 %i.f, !6816, !DIExpression(), !23601)
    #dbg_value(i64 %i.f, !6828, !DIExpression(), !23603)
    #dbg_value(i64 %i.f, !6833, !DIExpression(), !23605)
    #dbg_value(i64 %.val.i, !6817, !DIExpression(), !23606)
    #dbg_value(i64 %.val.i, !6829, !DIExpression(), !23603)
    #dbg_value(i64 %.val.i, !6834, !DIExpression(), !23605)
    #dbg_value(i64 %.val1.i, !6818, !DIExpression(), !23606)
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !23641   ; 2 uses
    #dbg_value(i1 false, !6837, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23608)
    #dbg_value(i64 %i.g, !6853, !DIExpression(), !23610)
  %i.h = add i64 %.val1.i, -1, !dbg !23642
    #dbg_value(i64 %i.h, !6854, !DIExpression(), !23610)
  %i.i = add i64 %i.h, %i.g, !dbg !23643          ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !23643
    #dbg_value(i1 true, !6837, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23612)
  tail call void @llvm.assume(i1 %i.j), !dbg !23644
  %i.k = sub i64 0, %.val1.i, !dbg !23645
  %i.l = and i64 %i.i, %i.k, !dbg !23646          ; 3 uses
    #dbg_value(i64 %i.l, !6819, !DIExpression(), !23613)
    #dbg_value(i64 %i.l, !6853, !DIExpression(), !23615)
  %i.m = add i64 %.val3.i, 17, !dbg !23647
    #dbg_value(i64 %i.m, !6854, !DIExpression(), !23615)
  %i.n = add i64 %i.m, %i.l, !dbg !23648          ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !23648
    #dbg_value(i1 %i.o, !6837, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23617)
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !23649
  tail call void @llvm.assume(i1 %i.q), !dbg !23649
    #dbg_value(i64 %.val1.i, !7012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23619)
    #dbg_value(i64 %.val1.i, !7005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23620)
    #dbg_value(i64 %i.n, !7012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23619)
    #dbg_value(i64 %i.n, !7005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23620)
    #dbg_value(i64 %i.l, !7012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23619)
    #dbg_value(i64 %i.l, !7005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23620)
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !23650
  tail call void @llvm.assume(i1 %i.r), !dbg !23651
    #dbg_value(i64 %.val1.i, !6993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23621)
    #dbg_value(i64 %.val1.i, !7003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23622)
    #dbg_value(i64 %i.n, !6993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23621)
    #dbg_value(i64 %i.n, !7003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23622)
    #dbg_value(i64 %i.l, !7004, !DIExpression(), !23622)
    #dbg_value(i64 %i.l, !7018, !DIExpression(), !23624)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
    #dbg_value(ptr %.val2.i, !7019, !DIExpression(), !23624)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !6992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !23621)
    #dbg_value(ptr poison, !4256, !DIExpression(), !23626)
    #dbg_value(ptr poison, !4262, !DIExpression(), !23628)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !23626)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4265, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !23628)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4268, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !23630)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !4274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !23632)
    #dbg_value(i64 %.val1.i, !4260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23626)
    #dbg_value(i64 %.val1.i, !4266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23628)
    #dbg_value(i64 %.val1.i, !4272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23630)
    #dbg_value(i64 %.val1.i, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23632)
    #dbg_value(i64 %i.n, !4260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23626)
    #dbg_value(i64 %i.n, !4266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23628)
    #dbg_value(i64 %i.n, !4272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23630)
    #dbg_value(i64 %i.n, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23632)
  %i.s = icmp eq i64 %i.n, 0, !dbg !23652
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !23652

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !23653
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23632)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4268, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23630)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4265, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23628)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !4259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23626)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !6992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23621)
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !23654
    #dbg_value(ptr %i.u, !6992, !DIExpression(), !23621)
    #dbg_value(ptr %i.u, !4259, !DIExpression(), !23626)
    #dbg_value(ptr %i.u, !4265, !DIExpression(), !23628)
    #dbg_value(ptr %i.u, !4268, !DIExpression(), !23630)
    #dbg_value(ptr %i.u, !4274, !DIExpression(), !23632)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #31, !dbg !23655, !noalias !23634
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23656

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !23635
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !23657 {
bb.a:
    #dbg_value(ptr %0, !23726, !DIExpression(), !23730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23731), !dbg !23783
    #dbg_value(ptr %0, !23732, !DIExpression(), !23662)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23784
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !23784, !alias.scope !23731
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23784
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !23784, !alias.scope !23731
  %.val2.i = load ptr, ptr %0, align 8, !dbg !23784, !alias.scope !23731, !nonnull !2755, !align !7214, !noundef !2755 ; 9 uses
    #dbg_value(ptr poison, !23734, !DIExpression(), !23675)
    #dbg_value(ptr poison, !23737, !DIExpression(), !23676)
    #dbg_value(ptr poison, !23740, !DIExpression(), !23677)
    #dbg_value(ptr poison, !23748, !DIExpression(DW_OP_deref), !23678)
    #dbg_value(ptr poison, !23749, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !23678)
    #dbg_value(ptr poison, !23747, !DIExpression(), !23678)
    #dbg_value(i64 1, !23755, !DIExpression(), !23681)
    #dbg_value(i64 1, !23758, !DIExpression(), !23684)
    #dbg_value(ptr poison, !23761, !DIExpression(), !23687)
    #dbg_value(i8 -1, !23764, !DIExpression(), !23690)
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
    #dbg_value(ptr %.val2.i, !23768, !DIExpression(), !23693)
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !23785 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !23785, !noalias !23731, !noundef !2755 ; 3 uses
    #dbg_value(i64 0, !23750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23694)
    #dbg_value(i64 %i.d, !23750, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23694)
    #dbg_value(ptr undef, !23740, !DIExpression(), !23677)
    #dbg_value(ptr undef, !23737, !DIExpression(), !23676)
    #dbg_value(ptr undef, !23734, !DIExpression(), !23675)
    #dbg_value(ptr undef, !23735, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23695)
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !23786
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !23787

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %1, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.03.us.i.i, !23738, !DIExpression(), !23696)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !23756, !DIExpression(), !23681)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !23759, !DIExpression(), !23684)
  %1 = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !23788
    #dbg_value(i64 %1, !23750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23694)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !23751, !DIExpression(), !23697)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !23771, !DIExpression(), !23700)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !23766, !DIExpression(), !23690)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !23774, !DIExpression(), !23703)
    #dbg_value(ptr %.val2.i, !23772, !DIExpression(), !23700)
  %2 = load ptr, ptr %.val2.i, align 8, !dbg !23789, !noalias !23731, !nonnull !2755, !noundef !2755
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.03.us.i.i, !dbg !23790 ; 2 uses
    #dbg_value(ptr %i.f, !23762, !DIExpression(), !23687)
  %i.g = load i8, ptr %i.f, align 1, !dbg !23791, !noalias !23731, !noundef !2755
  %i.h = icmp eq i8 %i.g, -128, !dbg !23791
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !23792

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
    #dbg_value(ptr %.val2.i, !23765, !DIExpression(), !23690)
    #dbg_value(ptr %.val2.i, !23772, !DIExpression(), !23707)
    #dbg_value(ptr %.val2.i, !23772, !DIExpression(), !23709)
  %i.i = add i64 %.sroa.0.03.us.i.i, -16, !dbg !23793
  %i.j = load i64, ptr %i.c, align 8, !dbg !23794, !noalias !23731, !noundef !2755
  %i.k = and i64 %i.j, %i.i, !dbg !23795
  store i8 -1, ptr %i.f, align 1, !dbg !23796, !noalias !23731
  %i.l = load ptr, ptr %.val2.i, align 8, !dbg !23797, !noalias !23731, !nonnull !2755, !noundef !2755
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !23798
  %i.n = getelementptr i8, ptr %i.m, i64 16, !dbg !23798
  store i8 -1, ptr %i.n, align 1, !dbg !23799, !noalias !23731
  %i.o = load i64, ptr %i.e, align 8, !dbg !23800, !noalias !23731, !noundef !2755
  %i.p = add i64 %i.o, -1, !dbg !23800
  store i64 %i.p, ptr %i.e, align 8, !dbg !23800, !noalias !23731
  br label %bb.c, !dbg !23801

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
    #dbg_value(i64 %1, !23750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23694)
    #dbg_value(ptr undef, !23740, !DIExpression(), !23677)
    #dbg_value(ptr undef, !23737, !DIExpression(), !23676)
    #dbg_value(ptr undef, !23734, !DIExpression(), !23675)
    #dbg_value(ptr undef, !23735, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23695)
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !23786
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.split.us.i.i, !dbg !23787

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
    #dbg_value(i64 %.sroa.0.03.i.i, !23738, !DIExpression(), !23696)
    #dbg_value(i64 %.sroa.0.03.i.i, !23756, !DIExpression(), !23681)
    #dbg_value(i64 %.sroa.0.03.i.i, !23759, !DIExpression(), !23684)
  %i.q = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !23788
    #dbg_value(i64 %i.q, !23750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23694)
    #dbg_value(i64 %.sroa.0.03.i.i, !23751, !DIExpression(), !23697)
    #dbg_value(i64 %.sroa.0.03.i.i, !23771, !DIExpression(), !23700)
    #dbg_value(i64 %.sroa.0.03.i.i, !23766, !DIExpression(), !23690)
    #dbg_value(i64 %.sroa.0.03.i.i, !23774, !DIExpression(), !23703)
    #dbg_value(ptr %.val2.i, !23772, !DIExpression(), !23700)
  %i.r = load ptr, ptr %.val2.i, align 8, !dbg !23789, !noalias !23731, !nonnull !2755, !noundef !2755
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.03.i.i, !dbg !23790 ; 2 uses
    #dbg_value(ptr %i.s, !23762, !DIExpression(), !23687)
  %i.t = load i8, ptr %i.s, align 1, !dbg !23791, !noalias !23731, !noundef !2755
  %i.u = icmp eq i8 %i.t, -128, !dbg !23791
  br i1 %i.u, label %bb.e, label %bb.d, !dbg !23792

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
    #dbg_value(i64 %i.q, !23750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23694)
    #dbg_value(ptr undef, !23740, !DIExpression(), !23677)
    #dbg_value(ptr undef, !23737, !DIExpression(), !23676)
    #dbg_value(ptr undef, !23734, !DIExpression(), !23675)
    #dbg_value(ptr undef, !23735, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23695)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !23786
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.split.i.i, !dbg !23787

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !23788
    #dbg_value(ptr %.val2.i, !23765, !DIExpression(), !23690)
    #dbg_value(ptr %.val2.i, !23772, !DIExpression(), !23707)
    #dbg_value(ptr %.val2.i, !23772, !DIExpression(), !23709)
  %i.v = add i64 %.sroa.0.03.i.i, -16, !dbg !23793
  %i.w = load i64, ptr %i.c, align 8, !dbg !23794, !noalias !23731, !noundef !2755
  %i.x = and i64 %i.w, %i.v, !dbg !23795
  store i8 -1, ptr %i.s, align 1, !dbg !23796, !noalias !23731
  %i.y = load ptr, ptr %.val2.i, align 8, !dbg !23797, !noalias !23731, !nonnull !2755, !noundef !2755
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x, !dbg !23798
  %i.aa = getelementptr i8, ptr %i.z, i64 16, !dbg !23798
  store i8 -1, ptr %i.aa, align 1, !dbg !23799, !noalias !23731
    #dbg_value(ptr %.val.i, !23752, !DIExpression(), !23713)
    #dbg_value(ptr %.val2.i, !23775, !DIExpression(), !23703)
    #dbg_value(ptr %.val2.i, !23779, !DIExpression(), !23716)
    #dbg_value(i64 %.val1.i, !23776, !DIExpression(), !23703)
  %i.ab = load ptr, ptr %.val2.i, align 8, !dbg !23802, !noalias !23731, !nonnull !2755, !noundef !2755
  %.neg22.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !23803
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg22.i.i, !dbg !23804
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !dbg !23805, !noalias !23731, !inline_history !23719
  %i.ad = load i64, ptr %i.e, align 8, !dbg !23800, !noalias !23731, !noundef !2755
  %i.ae = add i64 %i.ad, -1, !dbg !23800
  store i64 %i.ae, ptr %i.e, align 8, !dbg !23800, !noalias !23731
  br label %bb.d, !dbg !23801

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !dbg !23806, !noalias !23731, !noundef !2755 ; 3 uses
    #dbg_value(i64 %i.af, !23781, !DIExpression(), !23722)
  %i.ag = icmp ult i64 %i.af, 8, !dbg !23807
  %i.ah = add i64 %i.af, 1, !dbg !23807
  %i.ai = lshr i64 %i.ah, 3, !dbg !23807
  %i.aj = mul nuw i64 %i.ai, 7, !dbg !23807
  %.sroa.04.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj, !dbg !23807
    #dbg_value(i64 %.sroa.04.0.i.i, !23781, !DIExpression(), !23722)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !23808
  %i.al = load i64, ptr %i.ak, align 8, !dbg !23808, !noalias !23731, !noundef !2755
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !23809
  %i.an = sub i64 %.sroa.04.0.i.i, %i.al, !dbg !23809
  store i64 %i.an, ptr %i.am, align 8, !dbg !23809, !noalias !23731
  ret void, !dbg !23783
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEEENCNvMse_B1y_B1v_15clone_from_impl0EECsaTqK2fWTXJW_11qlog_dancer(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23810 {
bb.a:
    #dbg_value(ptr poison, !23892, !DIExpression(), !23896)
    #dbg_value(ptr poison, !23897, !DIExpression(), !23813)
    #dbg_value(ptr poison, !23900, !DIExpression(), !23819)
    #dbg_value(ptr poison, !23909, !DIExpression(), !23819)
    #dbg_value(i64 1, !23911, !DIExpression(), !23827)
    #dbg_value(i64 1, !23920, !DIExpression(), !23830)
    #dbg_value(i64 1, !23923, !DIExpression(), !23837)
    #dbg_value(ptr poison, !23904, !DIExpression(), !23838)
    #dbg_value(ptr poison, !23906, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23839)
    #dbg_value(i64 0, !23907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23840)
    #dbg_value(i64 %.0.val, !23907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23840)
    #dbg_value(ptr undef, !23917, !DIExpression(), !23841)
    #dbg_value(ptr undef, !23914, !DIExpression(), !23842)
    #dbg_value(ptr undef, !23931, !DIExpression(), !23845)
    #dbg_value(ptr undef, !23932, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23846)
  %.not.i.i = icmp eq i64 %.0.val, 0, !dbg !23956
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !23957

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b, !dbg !23957

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.f ] ; 3 uses
    #dbg_value(i64 %.sroa.0.01.i.i, !23915, !DIExpression(), !23847)
    #dbg_value(i64 %.sroa.0.01.i.i, !23912, !DIExpression(), !23827)
    #dbg_value(i64 %.sroa.0.01.i.i, !23921, !DIExpression(), !23830)
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1, !dbg !23958 ; 2 uses
    #dbg_value(i64 %i.a, !23907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23840)
    #dbg_value(i64 %.sroa.0.01.i.i, !23908, !DIExpression(), !23848)
    #dbg_value(i64 %.sroa.0.01.i.i, !23934, !DIExpression(), !23851)
    #dbg_value(i64 %.sroa.0.01.i.i, !23940, !DIExpression(), !23856)
    #dbg_value(i64 %.sroa.0.01.i.i, !23948, !DIExpression(), !23860)
    #dbg_value(i64 %.sroa.0.01.i.i, !23925, !DIExpression(), !23862)
    #dbg_value(ptr %.8.val, !23938, !DIExpression(), !23851)
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !23959, !nonnull !2755, !noundef !2755 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i, !dbg !23960
  %i.d = load i8, ptr %i.c, align 1, !dbg !23961, !noundef !2755
  %i.e = icmp sgt i8 %i.d, -1, !dbg !23962
  br i1 %i.e, label %bb.c, label %bb.f, !dbg !23963

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %.8.val, !23941, !DIExpression(), !23856)
    #dbg_value(ptr %i.b, !23949, !DIExpression(), !23860)
    #dbg_value(ptr %i.b, !23924, !DIExpression(), !23862)
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i, !dbg !23964
  %i.g = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.f, !dbg !23965
    #dbg_value(ptr poison, !23929, !DIExpression(), !23871)
    #dbg_value(ptr poison, !23927, !DIExpression(), !23872)
    #dbg_value(ptr %i.g, !23924, !DIExpression(), !23837)
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -24, !dbg !23966 ; 3 uses
    #dbg_value(ptr %i.h, !23952, !DIExpression(), !23875)
    #dbg_value(ptr %i.h, !23954, !DIExpression(), !23878)
    #dbg_value(ptr %i.h, !8065, !DIExpression(), !23880)
    #dbg_value(ptr %i.h, !4087, !DIExpression(), !23882)
    #dbg_value(ptr %i.h, !4092, !DIExpression(), !23884)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i unwind label %bb.d, !dbg !23967

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !4099, !DIExpression(), !23886)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i.i unwind label %bb.e, !dbg !23968

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !23967
  unreachable, !dbg !23967

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !23967

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.c
    #dbg_value(ptr %i.h, !4099, !DIExpression(), !23888)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !23969
  br label %bb.f, !dbg !23970

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %bb.b
    #dbg_value(i64 %i.a, !23907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23840)
    #dbg_value(ptr undef, !23917, !DIExpression(), !23841)
    #dbg_value(ptr undef, !23914, !DIExpression(), !23842)
    #dbg_value(ptr undef, !23931, !DIExpression(), !23845)
    #dbg_value(ptr undef, !23932, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23846)
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val, !dbg !23956
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !23957

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.f, %bb.a
  ret void, !dbg !23971
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7element4text13MultiLineTextTllEReEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23972 {
bb.a:
    #dbg_value(ptr %0, !24051, !DIExpression(), !24055)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2536, !dbg !24079 ; 3 uses
    #dbg_value(ptr %i.a, !24056, !DIExpression(), !23975)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !24080

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !24063, !DIExpression(), !23978)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d, !dbg !24081

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !24063, !DIExpression(), !23980)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.e, !dbg !24082

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !24080
  unreachable, !dbg !24080

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !24079

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2536) %0) #33
          to label %common.resume unwind label %bb.m, !dbg !24079

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !5927, !DIExpression(), !23982)
    #dbg_value(ptr %0, !5932, !DIExpression(), !23984)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24083 ; 2 uses
    #dbg_value(ptr %i.e, !5939, !DIExpression(), !23986)
  %i.f = load i64, ptr %i.e, align 8, !dbg !24084, !range !5945, !alias.scope !24069, !noundef !2755
  %.not.i.i.i = icmp eq i64 %i.f, -2, !dbg !24084
  br i1 %.not.i.i.i, label %bb.l, label %bb.f, !dbg !24084

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.e, !5947, !DIExpression(), !23994)
    #dbg_value(ptr %i.e, !5953, !DIExpression(), !23996)
    #dbg_value(ptr %i.e, !5960, !DIExpression(), !23998)
    #dbg_value(ptr %i.e, !5965, !DIExpression(), !24000)
    #dbg_value(ptr %i.e, !5970, !DIExpression(), !24002)
  store i64 -1, ptr %i.e, align 8, !dbg !24085, !alias.scope !24070
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2480, !dbg !24086 ; 5 uses
    #dbg_value(ptr %i.g, !5977, !DIExpression(), !24010)
  invoke void @_RNvXs1_NtNtCsesm4W3jWBtC_8font_kit7loaders8freetypeNtB5_4FontNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.i unwind label %bb.g, !dbg !24087

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24071), !dbg !24087
    #dbg_value(ptr %i.g, !5984, !DIExpression(), !24014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24072), !dbg !24088
    #dbg_value(ptr %i.g, !5991, !DIExpression(), !24018)
    #dbg_value(ptr %i.g, !5994, !DIExpression(), !24020)
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!23496 = !DILocation(line: 3878, column: 29, scope: !1524, inlinedAt: !23466)
!23497 = !DILocation(line: 976, column: 49, scope: !1529, inlinedAt: !23479)
!23498 = !DILocation(line: 3741, column: 12, scope: !1515, inlinedAt: !23457)
!23499 = !DILocation(line: 175, column: 14, scope: !492, inlinedAt: !23489)
!23500 = !DILocation(line: 3741, column: 9, scope: !1515, inlinedAt: !23457)
!23501 = !DILocation(line: 848, column: 1, scope: !1512)
!23502 = distinct !DILocation(line: 848, column: 1, scope: !1535)
!23503 = distinct !DILocation(line: 0, scope: !1536, inlinedAt: !23502)
!23504 = distinct !DILocation(line: 848, column: 1, scope: !1535)
!23505 = distinct !DILocation(line: 0, scope: !1536, inlinedAt: !23504)
!23506 = !DILocation(line: 0, scope: !1535)
!23507 = !DILocation(line: 848, column: 1, scope: !1535)
!23508 = !DILocation(line: 848, column: 1, scope: !1536, inlinedAt: !23502)
!23509 = !DILocation(line: 848, column: 1, scope: !1536, inlinedAt: !23504)
!23510 = distinct !DILocation(line: 848, column: 1, scope: !1537)
!23511 = distinct !DILocation(line: 0, scope: !1538, inlinedAt: !23510)
!23512 = distinct !DILocation(line: 848, column: 1, scope: !1537)
!23513 = distinct !DILocation(line: 0, scope: !1538, inlinedAt: !23512)
!23514 = !DILocation(line: 0, scope: !1537)
!23515 = !DILocation(line: 848, column: 1, scope: !1537)
!23516 = !DILocation(line: 848, column: 1, scope: !1538, inlinedAt: !23510)
!23517 = !DILocation(line: 848, column: 1, scope: !1538, inlinedAt: !23512)
!23518 = distinct !DILocation(line: 848, column: 1, scope: !443)
!23519 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !23518)
!23520 = distinct !DILocation(line: 848, column: 1, scope: !443)
!23521 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !23520)
!23522 = !DILocation(line: 0, scope: !443)
!23523 = !DILocation(line: 848, column: 1, scope: !443)
!23524 = !DILocation(line: 848, column: 1, scope: !444, inlinedAt: !23518)
!23525 = !DILocation(line: 848, column: 1, scope: !444, inlinedAt: !23520)
!23526 = distinct !DILocation(line: 848, column: 1, scope: !1502)
!23527 = distinct !DILocation(line: 0, scope: !1503, inlinedAt: !23526)
!23528 = distinct !DILocation(line: 848, column: 1, scope: !1502)
!23529 = distinct !DILocation(line: 0, scope: !1503, inlinedAt: !23528)
!23530 = !DILocation(line: 0, scope: !1502)
!23531 = !DILocation(line: 848, column: 1, scope: !1502)
!23532 = !DILocation(line: 848, column: 1, scope: !1503, inlinedAt: !23526)
!23533 = !DILocation(line: 848, column: 1, scope: !1503, inlinedAt: !23528)
!23534 = distinct !DILocation(line: 848, column: 1, scope: !1539)
!23535 = distinct !DILocation(line: 0, scope: !1546, inlinedAt: !23534)
!23536 = distinct !DILocation(line: 0, scope: !1545, inlinedAt: !23534)
!23537 = distinct !DILocation(line: 1990, column: 26, scope: !1545, inlinedAt: !23534)
!23538 = distinct !DILocation(line: 0, scope: !1548, inlinedAt: !23537)
!23539 = distinct !DILocation(line: 261, column: 43, scope: !1548, inlinedAt: !23537)
!23540 = distinct !DILocation(line: 0, scope: !1549, inlinedAt: !23539)
!23541 = distinct !DILocation(line: 261, column: 70, scope: !1548, inlinedAt: !23537)
!23542 = distinct !DILocation(line: 0, scope: !1551, inlinedAt: !23541)
!23543 = distinct !DILocation(line: 159, column: 30, scope: !1551, inlinedAt: !23541)
!23544 = distinct !DILocation(line: 0, scope: !1552, inlinedAt: !23543)
!23545 = distinct !DILocation(line: 0, scope: !1540, inlinedAt: !23534)
!23546 = distinct !DILocation(line: 1992, column: 24, scope: !1540, inlinedAt: !23534)
!23547 = distinct !DILocation(line: 0, scope: !489, inlinedAt: !23546)
!23548 = distinct !DILocation(line: 554, column: 23, scope: !489, inlinedAt: !23546)
!23549 = distinct !DILocation(line: 0, scope: !490, inlinedAt: !23548)
!23550 = distinct !DILocation(line: 436, column: 9, scope: !490, inlinedAt: !23548)
!23551 = distinct !DILocation(line: 0, scope: !491, inlinedAt: !23550)
!23552 = distinct !DILocation(line: 321, column: 22, scope: !491, inlinedAt: !23550)
!23553 = distinct !DILocation(line: 0, scope: !492, inlinedAt: !23552)
!23554 = distinct !DILocation(line: 848, column: 1, scope: !1539)
!23555 = distinct !DILocation(line: 0, scope: !1546, inlinedAt: !23554)
!23556 = distinct !DILocation(line: 0, scope: !1545, inlinedAt: !23554)
!23557 = distinct !DILocation(line: 1990, column: 26, scope: !1545, inlinedAt: !23554)
!23558 = distinct !DILocation(line: 0, scope: !1548, inlinedAt: !23557)
!23559 = distinct !DILocation(line: 261, column: 43, scope: !1548, inlinedAt: !23557)
!23560 = distinct !DILocation(line: 0, scope: !1549, inlinedAt: !23559)
!23561 = distinct !DILocation(line: 261, column: 70, scope: !1548, inlinedAt: !23557)
!23562 = distinct !DILocation(line: 0, scope: !1551, inlinedAt: !23561)
!23563 = distinct !DILocation(line: 159, column: 30, scope: !1551, inlinedAt: !23561)
!23564 = distinct !DILocation(line: 0, scope: !1552, inlinedAt: !23563)
!23565 = distinct !DILocation(line: 0, scope: !1540, inlinedAt: !23554)
!23566 = distinct !DILocation(line: 1992, column: 24, scope: !1540, inlinedAt: !23554)
!23567 = distinct !DILocation(line: 0, scope: !489, inlinedAt: !23566)
!23568 = distinct !DILocation(line: 554, column: 23, scope: !489, inlinedAt: !23566)
!23569 = distinct !DILocation(line: 0, scope: !490, inlinedAt: !23568)
!23570 = distinct !DILocation(line: 436, column: 9, scope: !490, inlinedAt: !23568)
!23571 = distinct !DILocation(line: 0, scope: !491, inlinedAt: !23570)
!23572 = distinct !DILocation(line: 321, column: 22, scope: !491, inlinedAt: !23570)
!23573 = distinct !DILocation(line: 0, scope: !492, inlinedAt: !23572)
!23574 = !DILocation(line: 0, scope: !1539)
!23575 = !DILocation(line: 848, column: 1, scope: !1539)
!23576 = !DILocation(line: 468, column: 14, scope: !1549, inlinedAt: !23539)
!23577 = !DILocation(line: 1991, column: 16, scope: !1540, inlinedAt: !23534)
!23578 = !DILocation(line: 642, column: 14, scope: !1552, inlinedAt: !23543)
!23579 = !DILocation(line: 175, column: 14, scope: !492, inlinedAt: !23552)
!23580 = !DILocation(line: 1991, column: 13, scope: !1540, inlinedAt: !23534)
!23581 = !DILocation(line: 468, column: 14, scope: !1549, inlinedAt: !23559)
!23582 = !DILocation(line: 1991, column: 16, scope: !1540, inlinedAt: !23554)
!23583 = !DILocation(line: 642, column: 14, scope: !1552, inlinedAt: !23563)
!23584 = !DILocation(line: 175, column: 14, scope: !492, inlinedAt: !23572)
!23585 = !DILocation(line: 1991, column: 13, scope: !1540, inlinedAt: !23554)
!23586 = distinct !{!23586, i1 false, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer"}
!23587 = distinct !{!23587, !23586, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!23588 = distinct !DILocation(line: 848, column: 1, scope: !1290)
!23589 = distinct !DILocation(line: 0, scope: !1291, inlinedAt: !23588)
!23590 = distinct !DILocation(line: 70, column: 9, scope: !1291, inlinedAt: !23588)
!23591 = distinct !DILocation(line: 0, scope: !1292, inlinedAt: !23590)
!23592 = distinct !DILocation(line: 2705, column: 23, scope: !1292, inlinedAt: !23590)
!23593 = distinct !DILocation(line: 0, scope: !1293, inlinedAt: !23592)
!23594 = distinct !DILocation(line: 2710, column: 32, scope: !1292, inlinedAt: !23590)
!23595 = distinct !DILocation(line: 0, scope: !1295, inlinedAt: !23594)
!23596 = distinct !DILocation(line: 3113, column: 38, scope: !1295, inlinedAt: !23594)
!23597 = distinct !DILocation(line: 0, scope: !1299, inlinedAt: !23596)
!23598 = distinct !DILocation(line: 3145, column: 65, scope: !1299, inlinedAt: !23596)
!23599 = distinct !DILocation(line: 0, scope: !1300, inlinedAt: !23598)
!23600 = distinct !DILocation(line: 3145, column: 39, scope: !1299, inlinedAt: !23596)
!23601 = distinct !DILocation(line: 0, scope: !1243, inlinedAt: !23600)
!23602 = distinct !DILocation(line: 222, column: 18, scope: !1242, inlinedAt: !23600)
!23603 = distinct !DILocation(line: 0, scope: !1245, inlinedAt: !23602)
!23604 = distinct !DILocation(line: 1360, column: 31, scope: !1245, inlinedAt: !23602)
!23605 = distinct !DILocation(line: 0, scope: !1246, inlinedAt: !23604)
!23606 = distinct !DILocation(line: 0, scope: !1242, inlinedAt: !23600)
!23607 = distinct !DILocation(line: 1361, column: 16, scope: !1244, inlinedAt: !23602)
!23608 = distinct !DILocation(line: 0, scope: !1247, inlinedAt: !23607)
!23609 = distinct !DILocation(line: 222, column: 40, scope: !1242, inlinedAt: !23600)
!23610 = distinct !DILocation(line: 0, scope: !1252, inlinedAt: !23609)
!23611 = distinct !DILocation(line: 968, column: 16, scope: !1252, inlinedAt: !23609)
!23612 = distinct !DILocation(line: 0, scope: !1247, inlinedAt: !23611)
!23613 = distinct !DILocation(line: 0, scope: !1241, inlinedAt: !23600)
!23614 = distinct !DILocation(line: 223, column: 31, scope: !1241, inlinedAt: !23600)
!23615 = distinct !DILocation(line: 0, scope: !1252, inlinedAt: !23614)
!23616 = distinct !DILocation(line: 968, column: 16, scope: !6856, inlinedAt: !23614)
!23617 = distinct !DILocation(line: 0, scope: !1247, inlinedAt: !23616)
!23618 = distinct !DILocation(line: 3146, column: 29, scope: !1297, inlinedAt: !23596)
!23619 = distinct !DILocation(line: 0, scope: !1302, inlinedAt: !23618)
!23620 = distinct !DILocation(line: 0, scope: !1297, inlinedAt: !23596)
!23621 = distinct !DILocation(line: 0, scope: !1294, inlinedAt: !23594)
!23622 = distinct !DILocation(line: 0, scope: !1298, inlinedAt: !23596)
!23623 = distinct !DILocation(line: 3150, column: 64, scope: !1298, inlinedAt: !23596)
!23624 = distinct !DILocation(line: 0, scope: !1303, inlinedAt: !23623)
!23625 = distinct !DILocation(line: 3114, column: 19, scope: !1294, inlinedAt: !23594)
!23626 = distinct !DILocation(line: 0, scope: !489, inlinedAt: !23625)
!23627 = distinct !DILocation(line: 554, column: 23, scope: !489, inlinedAt: !23625)
!23628 = distinct !DILocation(line: 0, scope: !490, inlinedAt: !23627)
!23629 = distinct !DILocation(line: 436, column: 9, scope: !490, inlinedAt: !23627)
!23630 = distinct !DILocation(line: 0, scope: !491, inlinedAt: !23629)
!23631 = distinct !DILocation(line: 321, column: 22, scope: !491, inlinedAt: !23629)
!23632 = distinct !DILocation(line: 0, scope: !492, inlinedAt: !23631)
!23633 = !DILocation(line: 0, scope: !1290)
!23634 = !{!23587}
!23635 = !DILocation(line: 848, column: 1, scope: !1290)
!23636 = !DILocation(line: 70, column: 23, scope: !1291, inlinedAt: !23588)
!23637 = !DILocation(line: 70, column: 9, scope: !1291, inlinedAt: !23588)
!23638 = !DILocation(line: 2656, column: 9, scope: !1293, inlinedAt: !23592)
!23639 = !DILocation(line: 2705, column: 17, scope: !1292, inlinedAt: !23590)
!23640 = !DILocation(line: 2635, column: 9, scope: !1300, inlinedAt: !23598)
!23641 = !DILocation(line: 3242, column: 26, scope: !1246, inlinedAt: !23604)
!23642 = !DILocation(line: 222, column: 52, scope: !1242, inlinedAt: !23600)
!23643 = !DILocation(line: 968, column: 37, scope: !1252, inlinedAt: !23609)
!23644 = !DILocation(line: 483, column: 8, scope: !1247, inlinedAt: !23611)
!23645 = !DILocation(line: 222, column: 71, scope: !1242, inlinedAt: !23600)
!23646 = !DILocation(line: 222, column: 13, scope: !1242, inlinedAt: !23600)
!23647 = !DILocation(line: 223, column: 43, scope: !1241, inlinedAt: !23600)
!23648 = !DILocation(line: 968, column: 37, scope: !1252, inlinedAt: !23614)
!23649 = !DILocation(line: 483, column: 8, scope: !1247, inlinedAt: !23616)
!23650 = !DILocation(line: 1129, column: 15, scope: !1302, inlinedAt: !23618)
!23651 = !DILocation(line: 1129, column: 9, scope: !1302, inlinedAt: !23618)
!23652 = !DILocation(line: 312, column: 12, scope: !491, inlinedAt: !23629)
!23653 = !DILocation(line: 1055, column: 47, scope: !1303, inlinedAt: !23623)
!23654 = !DILocation(line: 1055, column: 22, scope: !1303, inlinedAt: !23623)
!23655 = !DILocation(line: 175, column: 14, scope: !492, inlinedAt: !23631)
!23656 = !DILocation(line: 312, column: 9, scope: !491, inlinedAt: !23629)
!23657 = distinct !DISubprogram(name: "drop_glue<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsaTqK2fWTXJW_11qlog_dancer", scope: !2795, file: !3912, line: 848, type: !23725, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !23729, retainedNodes: !23727)
!23658 = distinct !{!23658, i1 false, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer"}
!23659 = distinct !{!23659, !23658, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!23660 = distinct !DISubprogram(name: "drop<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", linkageName: "_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer", scope: !6971, file: !6969, line: 69, type: !23725, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !8025, retainedNodes: !23733)
!23661 = distinct !DILocation(line: 848, column: 1, scope: !23657)
!23662 = distinct !DILocation(line: 0, scope: !23660, inlinedAt: !23661)
!23663 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !8027, file: !6558, line: 2192, type: !8029, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23736)
!23664 = distinct !DILexicalBlock(scope: !23665, file: !8030, line: 1101, column: 13)
!23665 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsaTqK2fWTXJW_11qlog_dancer", scope: !8032, file: !8030, line: 1099, type: !8035, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2790, retainedNodes: !23739)
!23666 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer", scope: !8036, file: !8030, line: 1184, type: !8035, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !8038, retainedNodes: !23741)
!23667 = distinct !DILexicalBlock(scope: !23668, file: !6136, line: 3006, column: 50)
!23668 = distinct !DILexicalBlock(scope: !23670, file: !6136, line: 2999, column: 13)
!23669 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CsaTqK2fWTXJW_11qlog_dancer", scope: !8019, file: !6136, line: 2998, type: !23746, scopeLine: 2998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23753)
!23670 = distinct !DILexicalBlock(scope: !23669, file: !6136, line: 2999, column: 13)
!23671 = distinct !DILocation(line: 70, column: 9, scope: !23660, inlinedAt: !23661)
!23672 = distinct !DILocation(line: 2999, column: 22, scope: !23742, inlinedAt: !23671)
!23673 = distinct !DILocation(line: 1185, column: 14, scope: !23666, inlinedAt: !23672)
!23674 = distinct !DILocation(line: 1100, column: 12, scope: !23665, inlinedAt: !23673)
!23675 = distinct !DILocation(line: 2192, column: 19, scope: !23663, inlinedAt: !23674)
!23676 = distinct !DILocation(line: 1099, column: 18, scope: !23665, inlinedAt: !23673)
!23677 = distinct !DILocation(line: 1184, column: 13, scope: !23666, inlinedAt: !23672)
!23678 = distinct !DILocation(line: 0, scope: !23669, inlinedAt: !23671)
!23679 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !8039, file: !8030, line: 263, type: !6563, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23757)
!23680 = distinct !DILocation(line: 1103, column: 35, scope: !23664, inlinedAt: !23673)
!23681 = distinct !DILocation(line: 0, scope: !23679, inlinedAt: !23680)
!23682 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !6547, file: !6545, line: 1031, type: !8041, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23760)
!23683 = distinct !DILocation(line: 265, column: 28, scope: !23679, inlinedAt: !23680)
!23684 = distinct !DILocation(line: 0, scope: !23682, inlinedAt: !23683)
!23685 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs5_NtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB5_3TagNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !8043, file: !6235, line: 4, type: !8045, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23763)
!23686 = distinct !DILocation(line: 3004, column: 24, scope: !23668, inlinedAt: !23671)
!23687 = distinct !DILocation(line: 0, scope: !23685, inlinedAt: !23686)
!23688 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner8set_ctrl", scope: !176, file: !6136, line: 2564, type: !7122, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, declaration: !7123, retainedNodes: !23767)
!23689 = distinct !DILocation(line: 3005, column: 31, scope: !23668, inlinedAt: !23671)
!23690 = distinct !DILocation(line: 0, scope: !23688, inlinedAt: !23689)
!23691 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !176, file: !6136, line: 2634, type: !7009, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, declaration: !7010, retainedNodes: !23769)
!23692 = distinct !DILocation(line: 2999, column: 31, scope: !23669, inlinedAt: !23671)
!23693 = distinct !DILocation(line: 0, scope: !23691, inlinedAt: !23692)
!23694 = distinct !DILocation(line: 0, scope: !23670, inlinedAt: !23671)
!23695 = distinct !DILocation(line: 2192, column: 26, scope: !23663, inlinedAt: !23674)
!23696 = distinct !DILocation(line: 0, scope: !23664, inlinedAt: !23673)
!23697 = distinct !DILocation(line: 0, scope: !23668, inlinedAt: !23671)
!23698 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !176, file: !6136, line: 2621, type: !6231, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, declaration: !6232, retainedNodes: !23773)
!23699 = distinct !DILocation(line: 3004, column: 31, scope: !23668, inlinedAt: !23671)
!23700 = distinct !DILocation(line: 0, scope: !23698, inlinedAt: !23699)
!23701 = distinct !DISubprogram(name: "bucket_ptr", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10bucket_ptr", scope: !176, file: !6136, line: 2393, type: !6603, scopeLine: 2393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, declaration: !6604, retainedNodes: !23777)
!23702 = distinct !DILocation(line: 3007, column: 40, scope: !23667, inlinedAt: !23671)
!23703 = distinct !DILocation(line: 0, scope: !23701, inlinedAt: !23702)
!23704 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCsaTqK2fWTXJW_11qlog_dancer", scope: !6258, file: !6256, line: 937, type: !6260, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2920)
!23705 = distinct !DILocation(line: 2624, column: 37, scope: !23698, inlinedAt: !23699)
!23706 = distinct !DILocation(line: 2593, column: 19, scope: !23688, inlinedAt: !23689)
!23707 = distinct !DILocation(line: 0, scope: !23698, inlinedAt: !23706)
!23708 = distinct !DILocation(line: 2594, column: 19, scope: !23688, inlinedAt: !23689)
!23709 = distinct !DILocation(line: 0, scope: !23698, inlinedAt: !23708)
!23710 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj12wrapping_sub", scope: !6547, file: !6545, line: 2718, type: !6563, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755)
!23711 = distinct !DILocation(line: 2589, column: 30, scope: !23688, inlinedAt: !23689)
!23712 = distinct !DILocation(line: 2624, column: 37, scope: !23778, inlinedAt: !23708)
!23713 = distinct !DILocation(line: 0, scope: !23667, inlinedAt: !23671)
!23714 = distinct !DISubprogram(name: "data_end<u8>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner8data_endhECsaTqK2fWTXJW_11qlog_dancer", scope: !176, file: !6136, line: 2438, type: !6610, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2920, declaration: !6611, retainedNodes: !23780)
!23715 = distinct !DILocation(line: 2397, column: 38, scope: !23701, inlinedAt: !23702)
!23716 = distinct !DILocation(line: 0, scope: !23714, inlinedAt: !23715)
!23717 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3subCsaTqK2fWTXJW_11qlog_dancer", scope: !6258, file: !6256, line: 1016, type: !6260, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2920)
!23718 = distinct !DILocation(line: 2398, column: 18, scope: !23701, inlinedAt: !23702)
!23719 = distinct !{null, null}
!23720 = distinct !DISubprogram(name: "bucket_mask_to_capacity", linkageName: "_RNvNtCsjqcU1oJFKXj_9hashbrown3raw23bucket_mask_to_capacity", scope: !2607, file: !6136, line: 182, type: !6556, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23782)
!23721 = distinct !DILocation(line: 3013, column: 33, scope: !23669, inlinedAt: !23671)
!23722 = distinct !DILocation(line: 0, scope: !23720, inlinedAt: !23721)
!23723 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", baseType: !1554, size: 64, align: 64, dwarfAddressSpace: 0)
!23724 = !{null, !23723}
!23725 = !DISubroutineType(types: !23724)
!23726 = !DILocalVariable(arg: 1, scope: !23657, file: !3912, line: 848, type: !23723)
!23727 = !{!23726}
!23728 = !DITemplateTypeParameter(name: "T", type: !1554)
!23729 = !{!23728}
!23730 = !DILocation(line: 0, scope: !23657)
!23731 = !{!23659}
!23732 = !DILocalVariable(name: "self", arg: 1, scope: !23660, file: !6969, line: 69, type: !23723)
!23733 = !{!23732}
!23734 = !DILocalVariable(name: "self", arg: 1, scope: !23663, file: !6558, line: 2192, type: !6334)
!23735 = !DILocalVariable(name: "other", arg: 2, scope: !23663, file: !6558, line: 2192, type: !6334)
!23736 = !{!23734, !23735}
!23737 = !DILocalVariable(name: "self", arg: 1, scope: !23665, file: !8030, line: 1099, type: !8033)
!23738 = !DILocalVariable(name: "old", scope: !23664, file: !8030, line: 1101, type: !2749, align: 64)
!23739 = !{!23737, !23738}
!23740 = !DILocalVariable(name: "self", arg: 1, scope: !23666, file: !8030, line: 1184, type: !8033)
!23741 = !{!23740}
!23742 = !DILexicalBlockFile(scope: !23670, file: !6136, discriminator: 2)
!23743 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}", baseType: !1553, size: 64, align: 64, dwarfAddressSpace: 0)
!23744 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut hashbrown::raw::RawTableInner", baseType: !6463, size: 64, align: 64, dwarfAddressSpace: 0)
!23745 = !{null, !23743, !23744}
!23746 = !DISubroutineType(cc: DW_CC_nocall, types: !23745)
!23747 = !DILocalVariable(name: "self_", arg: 2, scope: !23669, file: !6136, line: 2998, type: !23744)
!23748 = !DILocalVariable(name: "drop", scope: !23669, file: !6136, line: 2988, type: !1139, align: 64)
!23749 = !DILocalVariable(name: "size_of", scope: !23669, file: !6136, line: 2987, type: !2749, align: 64)
!23750 = !DILocalVariable(name: "iter", scope: !23670, file: !6136, line: 2999, type: !393, align: 64)
!23751 = !DILocalVariable(name: "i", scope: !23668, file: !6136, line: 2999, type: !2749, align: 64)
!23752 = !DILocalVariable(name: "drop", scope: !23667, file: !6136, line: 3006, type: !6516, align: 64)
!23753 = !{!23747, !23748, !23749, !23750, !23751, !23752}
!23755 = !DILocalVariable(name: "n", scope: !23679, file: !8030, line: 263, type: !2749, align: 64)
!23756 = !DILocalVariable(name: "start", arg: 1, scope: !23679, file: !8030, line: 263, type: !2749)
!23757 = !{!23756, !23755}
!23758 = !DILocalVariable(name: "rhs", scope: !23682, file: !6545, line: 1031, type: !2749, align: 64)
!23759 = !DILocalVariable(name: "self", arg: 1, scope: !23682, file: !6545, line: 1031, type: !2749)
!23760 = !{!23759, !23758}
!23761 = !DILocalVariable(name: "other", scope: !23685, file: !6235, line: 4, type: !8042, align: 64)
!23762 = !DILocalVariable(name: "self", arg: 1, scope: !23685, file: !6235, line: 4, type: !6229)
!23763 = !{!23762, !23761}
!23764 = !DILocalVariable(name: "ctrl", scope: !23688, file: !6136, line: 2564, type: !1053, align: 8)
!23765 = !DILocalVariable(name: "self", arg: 1, scope: !23688, file: !6136, line: 2564, type: !6463)
!23766 = !DILocalVariable(name: "index", arg: 2, scope: !23688, file: !6136, line: 2564, type: !2749)
!23767 = !{!23765, !23766, !23764}
!23768 = !DILocalVariable(name: "self", arg: 1, scope: !23691, file: !6136, line: 2634, type: !6463)
!23769 = !{!23768}
!23771 = !DILocalVariable(name: "index", arg: 2, scope: !23698, file: !6136, line: 2621, type: !2749)
!23772 = !DILocalVariable(name: "self", arg: 1, scope: !23698, file: !6136, line: 2621, type: !6463)
!23773 = !{!23772, !23771}
!23774 = !DILocalVariable(name: "index", arg: 2, scope: !23701, file: !6136, line: 2393, type: !2749)
!23775 = !DILocalVariable(name: "self", arg: 1, scope: !23701, file: !6136, line: 2393, type: !6463)
!23776 = !DILocalVariable(name: "size_of", arg: 3, scope: !23701, file: !6136, line: 2393, type: !2749)
!23777 = !{!23775, !23774, !23776}
!23778 = !DILexicalBlockFile(scope: !23698, file: !6136, discriminator: 4)
!23779 = !DILocalVariable(name: "self", arg: 1, scope: !23714, file: !6136, line: 2438, type: !6463)
!23780 = !{!23779}
!23781 = !DILocalVariable(name: "bucket_mask", arg: 1, scope: !23720, file: !6136, line: 182, type: !2749)
!23782 = !{!23781}
!23783 = !DILocation(line: 848, column: 1, scope: !23657)
!23784 = !DILocation(line: 70, column: 9, scope: !23660, inlinedAt: !23661)
!23785 = !DILocation(line: 2635, column: 9, scope: !23691, inlinedAt: !23692)
!23786 = !DILocation(line: 2192, column: 50, scope: !23663, inlinedAt: !23674)
!23787 = !DILocation(line: 1100, column: 12, scope: !23665, inlinedAt: !23673)
!23788 = !DILocation(line: 1043, column: 17, scope: !23682, inlinedAt: !23683)
!23789 = !DILocation(line: 2624, column: 18, scope: !23698, inlinedAt: !23699)
!23790 = !DILocation(line: 971, column: 18, scope: !23704, inlinedAt: !23705)
!23791 = !DILocation(line: 4, column: 23, scope: !23685, inlinedAt: !23686)
!23792 = !DILocation(line: 3004, column: 24, scope: !23668, inlinedAt: !23671)
!23793 = !DILocation(line: 2719, column: 13, scope: !23710, inlinedAt: !23711)
!23794 = !DILocation(line: 2589, column: 60, scope: !23688, inlinedAt: !23689)
!23795 = !DILocation(line: 2589, column: 22, scope: !23688, inlinedAt: !23689)
!23796 = !DILocation(line: 2593, column: 13, scope: !23688, inlinedAt: !23689)
!23797 = !DILocation(line: 2624, column: 18, scope: !23698, inlinedAt: !23708)
!23798 = !DILocation(line: 971, column: 18, scope: !23704, inlinedAt: !23712)
!23799 = !DILocation(line: 2594, column: 13, scope: !23688, inlinedAt: !23689)
!23800 = !DILocation(line: 3009, column: 25, scope: !23668, inlinedAt: !23671)
!23801 = !DILocation(line: 3004, column: 21, scope: !23668, inlinedAt: !23671)
!23802 = !DILocation(line: 2439, column: 9, scope: !23714, inlinedAt: !23715)
!23803 = !DILocation(line: 2398, column: 22, scope: !23701, inlinedAt: !23702)
!23804 = !DILocation(line: 1055, column: 22, scope: !23717, inlinedAt: !23718)
!23805 = !DILocation(line: 3007, column: 29, scope: !23667, inlinedAt: !23671)
!23806 = !DILocation(line: 3013, column: 57, scope: !23669, inlinedAt: !23671)
!23807 = !DILocation(line: 183, column: 8, scope: !23720, inlinedAt: !23721)
!23808 = !DILocation(line: 3013, column: 78, scope: !23669, inlinedAt: !23671)
!23809 = !DILocation(line: 3013, column: 13, scope: !23669, inlinedAt: !23671)
!23810 = distinct !DISubprogram(name: "drop_glue<hashbrown::scopeguard::ScopeGuard<(usize, &mut hashbrown::raw::RawTable<(alloc::string::String, ()), alloc::alloc::Global>), hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::string::String, ()), alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEEENCNvMse_B1y_B1v_15clone_from_impl0EECsaTqK2fWTXJW_11qlog_dancer", scope: !2795, file: !3912, line: 848, type: !23891, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !23895, retainedNodes: !23893)
!23811 = distinct !DISubprogram(name: "drop<(usize, &mut hashbrown::raw::RawTable<(alloc::string::String, ()), alloc::alloc::Global>), hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::string::String, ()), alloc::alloc::Global>>", linkageName: "_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer", scope: !6971, file: !6969, line: 69, type: !23891, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !8058, retainedNodes: !23898)
!23812 = distinct !DILocation(line: 848, column: 1, scope: !23810)
!23813 = distinct !DILocation(line: 0, scope: !23811, inlinedAt: !23812)
!23814 = distinct !DILexicalBlock(scope: !23815, file: !6136, line: 3447, column: 17)
!23815 = distinct !DILexicalBlock(scope: !23816, file: !6136, line: 3447, column: 17)
!23816 = distinct !DILexicalBlock(scope: !23817, file: !6136, line: 3445, column: 65)
!23817 = distinct !DISubprogram(name: "{closure#0}<(alloc::string::String, ()), alloc::alloc::Global>", linkageName: "_RNCNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB7_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE15clone_from_impl0CsaTqK2fWTXJW_11qlog_dancer", scope: !8055, file: !6136, line: 3445, type: !23903, scopeLine: 3445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3261, retainedNodes: !23910)
!23818 = distinct !DILocation(line: 70, column: 9, scope: !23811, inlinedAt: !23812)
!23819 = distinct !DILocation(line: 0, scope: !23817, inlinedAt: !23818)
!23820 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !8039, file: !8030, line: 263, type: !6563, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23913)
!23821 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsaTqK2fWTXJW_11qlog_dancer", scope: !8032, file: !8030, line: 1099, type: !8035, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2790, retainedNodes: !23916)
!23822 = distinct !DILexicalBlock(scope: !23821, file: !8030, line: 1101, column: 13)
!23823 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer", scope: !8036, file: !8030, line: 1184, type: !8035, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !8038, retainedNodes: !23918)
!23824 = distinct !DILocation(line: 3447, column: 26, scope: !23919, inlinedAt: !23818)
!23825 = distinct !DILocation(line: 1185, column: 14, scope: !23823, inlinedAt: !23824)
!23826 = distinct !DILocation(line: 1103, column: 35, scope: !23822, inlinedAt: !23825)
!23827 = distinct !DILocation(line: 0, scope: !23820, inlinedAt: !23826)
!23828 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !6547, file: !6545, line: 1031, type: !8041, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23922)
!23829 = distinct !DILocation(line: 265, column: 28, scope: !23820, inlinedAt: !23826)
!23830 = distinct !DILocation(line: 0, scope: !23828, inlinedAt: !23829)
!23831 = distinct !DISubprogram(name: "sub<(alloc::string::String, ())>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTNtNtCsexYYUdYSQU6_5alloc6string6StringuE3subCsaTqK2fWTXJW_11qlog_dancer", scope: !6258, file: !6256, line: 1016, type: !6395, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3257, retainedNodes: !23926)
!23832 = distinct !DISubprogram(name: "as_ptr<(alloc::string::String, ())>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE6as_ptrCsaTqK2fWTXJW_11qlog_dancer", scope: !1096, file: !6136, line: 412, type: !6398, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3257, declaration: !6399, retainedNodes: !23928)
!23833 = distinct !DISubprogram(name: "drop<(alloc::string::String, ())>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE4dropCsaTqK2fWTXJW_11qlog_dancer", scope: !1096, file: !6136, line: 485, type: !8060, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3257, declaration: !8061, retainedNodes: !23930)
!23834 = distinct !DILocation(line: 3450, column: 45, scope: !23814, inlinedAt: !23818)
!23835 = distinct !DILocation(line: 487, column: 18, scope: !23833, inlinedAt: !23834)
!23836 = distinct !DILocation(line: 418, column: 40, scope: !23832, inlinedAt: !23835)
!23837 = distinct !DILocation(line: 0, scope: !23831, inlinedAt: !23836)
!23838 = distinct !DILocation(line: 3445, column: 50, scope: !23816, inlinedAt: !23818)
!23839 = distinct !DILocation(line: 3445, column: 57, scope: !23816, inlinedAt: !23818)
!23840 = distinct !DILocation(line: 0, scope: !23815, inlinedAt: !23818)
!23841 = distinct !DILocation(line: 1184, column: 13, scope: !23823, inlinedAt: !23824)
!23842 = distinct !DILocation(line: 1099, column: 18, scope: !23821, inlinedAt: !23825)
!23843 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !8027, file: !6558, line: 2192, type: !8029, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, retainedNodes: !23933)
!23844 = distinct !DILocation(line: 1100, column: 12, scope: !23821, inlinedAt: !23825)
!23845 = distinct !DILocation(line: 2192, column: 19, scope: !23843, inlinedAt: !23844)
!23846 = distinct !DILocation(line: 2192, column: 26, scope: !23843, inlinedAt: !23844)
!23847 = distinct !DILocation(line: 0, scope: !23822, inlinedAt: !23825)
!23848 = distinct !DILocation(line: 0, scope: !23814, inlinedAt: !23818)
!23849 = distinct !DISubprogram(name: "is_bucket_full<(alloc::string::String, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14is_bucket_fullCsaTqK2fWTXJW_11qlog_dancer", scope: !184, file: !6136, line: 1352, type: !23936, scopeLine: 1352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3261, declaration: !23937, retainedNodes: !23939)
!23850 = distinct !DILocation(line: 3449, column: 34, scope: !23814, inlinedAt: !23818)
!23851 = distinct !DILocation(line: 0, scope: !23849, inlinedAt: !23850)
!23852 = distinct !DILexicalBlock(scope: !23853, file: !6335, line: 105, column: 21)
!23853 = distinct !DILexicalBlock(scope: !23854, file: !6335, line: 103, column: 13)
!23854 = distinct !DISubprogram(name: "bucket<(alloc::string::String, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE6bucketCsaTqK2fWTXJW_11qlog_dancer", scope: !184, file: !6136, line: 738, type: !6388, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3261, declaration: !6389, retainedNodes: !23947)
!23855 = distinct !DILocation(line: 3450, column: 35, scope: !23814, inlinedAt: !23818)
!23856 = distinct !DILocation(line: 0, scope: !23854, inlinedAt: !23855)
!23857 = distinct !DILexicalBlock(scope: !23858, file: !6136, line: 323, column: 9)
!23858 = distinct !DISubprogram(name: "from_base_index<(alloc::string::String, ())>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE15from_base_indexCsaTqK2fWTXJW_11qlog_dancer", scope: !1096, file: !6136, line: 302, type: !6391, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3257, declaration: !6392, retainedNodes: !23951)
!23859 = distinct !DILocation(line: 765, column: 18, scope: !23854, inlinedAt: !23855)
!23860 = distinct !DILocation(line: 0, scope: !23858, inlinedAt: !23859)
!23861 = distinct !DILocation(line: 329, column: 36, scope: !23858, inlinedAt: !23859)
!23862 = distinct !DILocation(line: 0, scope: !23831, inlinedAt: !23861)
!23863 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !176, file: !6136, line: 2621, type: !6231, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, declaration: !6232)
!23864 = distinct !DISubprogram(name: "is_bucket_full", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner14is_bucket_full", scope: !176, file: !6136, line: 2644, type: !7173, scopeLine: 2644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, declaration: !7174)
!23865 = distinct !DILocation(line: 1353, column: 29, scope: !23849, inlinedAt: !23850)
!23866 = distinct !DILocation(line: 2646, column: 25, scope: !23864, inlinedAt: !23865)
!23867 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCsaTqK2fWTXJW_11qlog_dancer", scope: !6258, file: !6256, line: 937, type: !6260, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2920)
!23868 = distinct !DILocation(line: 2624, column: 37, scope: !23863, inlinedAt: !23866)
!23869 = distinct !DISubprogram(name: "is_full", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB2_3Tag7is_full", scope: !1053, file: !6235, line: 16, type: !7181, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !2755, declaration: !7182)
!23870 = distinct !DILocation(line: 2646, column: 38, scope: !23864, inlinedAt: !23865)
!23871 = distinct !DILocation(line: 485, column: 31, scope: !23833, inlinedAt: !23834)
!23872 = distinct !DILocation(line: 412, column: 26, scope: !23832, inlinedAt: !23835)
!23873 = distinct !DISubprogram(name: "drop_in_place<(alloc::string::String, ())>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTNtNtCsexYYUdYSQU6_5alloc6string6StringuE13drop_in_placeCsaTqK2fWTXJW_11qlog_dancer", scope: !6258, file: !6256, line: 1381, type: !8063, scopeLine: 1381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3257, retainedNodes: !23953)
!23874 = distinct !DILocation(line: 487, column: 27, scope: !23833, inlinedAt: !23834)
!23875 = distinct !DILocation(line: 0, scope: !23873, inlinedAt: !23874)
!23876 = distinct !DISubprogram(name: "drop_in_place<(alloc::string::String, ())>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsaTqK2fWTXJW_11qlog_dancer", scope: !2795, file: !3912, line: 831, type: !8063, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !3257, retainedNodes: !23955)
!23877 = distinct !DILocation(line: 1386, column: 18, scope: !23873, inlinedAt: !23874)
!23878 = distinct !DILocation(line: 0, scope: !23876, inlinedAt: !23877)
!23879 = distinct !DILocation(line: 843, column: 14, scope: !23876, inlinedAt: !23877)
!23880 = distinct !DILocation(line: 0, scope: !1558, inlinedAt: !23879)
!23881 = distinct !DILocation(line: 848, column: 1, scope: !1558, inlinedAt: !23879)
!23882 = distinct !DILocation(line: 0, scope: !442, inlinedAt: !23881)
!23883 = distinct !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !23881)
!23884 = distinct !DILocation(line: 0, scope: !443, inlinedAt: !23883)
!23885 = distinct !DILocation(line: 848, column: 1, scope: !443, inlinedAt: !23883)
!23886 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !23885)
!23887 = distinct !DILocation(line: 848, column: 1, scope: !443, inlinedAt: !23883)
!23888 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !23887)
!23889 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::scopeguard::ScopeGuard<(usize, &mut hashbrown::raw::RawTable<(alloc::string::String, ()), alloc::alloc::Global>), hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::string::String, ()), alloc::alloc::Global>>", baseType: !1557, size: 64, align: 64, dwarfAddressSpace: 0)
!23890 = !{null, !23889}
!23891 = !DISubroutineType(cc: DW_CC_nocall, types: !23890)
!23892 = !DILocalVariable(arg: 1, scope: !23810, file: !3912, line: 848, type: !23889)
!23893 = !{!23892}
!23894 = !DITemplateTypeParameter(name: "T", type: !1557)
!23895 = !{!23894}
!23896 = !DILocation(line: 0, scope: !23810)
!23897 = !DILocalVariable(name: "self", arg: 1, scope: !23811, file: !6969, line: 69, type: !23889)
!23898 = !{!23897}
!23899 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::string::String, ()), alloc::alloc::Global>", baseType: !1556, size: 64, align: 64, dwarfAddressSpace: 0)
!23900 = !DILocalVariable(arg: 1, scope: !23817, file: !6136, line: 3445, type: !23899)
!23901 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut (usize, &mut hashbrown::raw::RawTable<(alloc::string::String, ()), alloc::alloc::Global>)", baseType: !1555, size: 64, align: 64, dwarfAddressSpace: 0)
!23902 = !{null, !23899, !23901}
!23903 = !DISubroutineType(cc: DW_CC_nocall, types: !23902)
!23904 = !DILocalVariable(name: "index", scope: !23816, file: !6136, line: 3445, type: !7764, align: 64)
!23905 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut hashbrown::raw::RawTable<(alloc::string::String, ()), alloc::alloc::Global>", baseType: !8051, size: 64, align: 64, dwarfAddressSpace: 0)
!23906 = !DILocalVariable(name: "self_", scope: !23816, file: !6136, line: 3445, type: !23905, align: 64)
!23907 = !DILocalVariable(name: "iter", scope: !23815, file: !6136, line: 3447, type: !393, align: 64)
!23908 = !DILocalVariable(name: "i", scope: !23814, file: !6136, line: 3447, type: !2749, align: 64)
!23909 = !DILocalVariable(arg: 2, scope: !23817, file: !6136, line: 3445, type: !23901)
!23910 = !{!23904, !23906, !23907, !23908, !23900, !23909}
!23911 = !DILocalVariable(name: "n", scope: !23820, file: !8030, line: 263, type: !2749, align: 64)
!23912 = !DILocalVariable(name: "start", arg: 1, scope: !23820, file: !8030, line: 263, type: !2749)
!23913 = !{!23912, !23911}
!23914 = !DILocalVariable(name: "self", arg: 1, scope: !23821, file: !8030, line: 1099, type: !8033)
!23915 = !DILocalVariable(name: "old", scope: !23822, file: !8030, line: 1101, type: !2749, align: 64)
!23916 = !{!23914, !23915}
!23917 = !DILocalVariable(name: "self", arg: 1, scope: !23823, file: !8030, line: 1184, type: !8033)
!23918 = !{!23917}
!23919 = !DILexicalBlockFile(scope: !23815, file: !6136, discriminator: 2)
!23920 = !DILocalVariable(name: "rhs", scope: !23828, file: !6545, line: 1031, type: !2749, align: 64)
!23921 = !DILocalVariable(name: "self", arg: 1, scope: !23828, file: !6545, line: 1031, type: !2749)
!23922 = !{!23921, !23920}
!23923 = !DILocalVariable(name: "count", scope: !23831, file: !6256, line: 1016, type: !2749, align: 64)
!23924 = !DILocalVariable(name: "self", arg: 1, scope: !23831, file: !6256, line: 1016, type: !6393)
!23925 = !DILocalVariable(name: "count", arg: 2, scope: !23831, file: !6256, line: 1016, type: !2749)
!23926 = !{!23924, !23925, !23923}
!23927 = !DILocalVariable(name: "self", arg: 1, scope: !23832, file: !6136, line: 412, type: !6396)
!23928 = !{!23927}
!23929 = !DILocalVariable(name: "self", arg: 1, scope: !23833, file: !6136, line: 485, type: !6396)
!23930 = !{!23929}
!23931 = !DILocalVariable(name: "self", arg: 1, scope: !23843, file: !6558, line: 2192, type: !6334)
!23932 = !DILocalVariable(name: "other", arg: 2, scope: !23843, file: !6558, line: 2192, type: !6334)
!23933 = !{!23931, !23932}
!23934 = !DILocalVariable(name: "index", arg: 2, scope: !23849, file: !6136, line: 1352, type: !2749)
!23935 = !{!3354, !3249, !2749}
!23936 = !DISubroutineType(types: !23935)
!23937 = !DISubprogram(name: "is_bucket_full<(alloc::string::String, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14is_bucket_fullCsaTqK2fWTXJW_11qlog_dancer", scope: !184, file: !6136, line: 1352, type: !23936, scopeLine: 1352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3261)
!23938 = !DILocalVariable(name: "self", arg: 1, scope: !23849, file: !6136, line: 1352, type: !8051)
!23939 = !{!23938, !23934}
!23940 = !DILocalVariable(name: "index", arg: 2, scope: !23854, file: !6136, line: 738, type: !2749)
!23941 = !DILocalVariable(name: "self", arg: 1, scope: !23854, file: !6136, line: 738, type: !8051)
!23942 = !DILexicalBlockFile(scope: !23853, file: !6136, discriminator: 0)
!23943 = !DILocalVariable(name: "left_val", scope: !23942, file: !6136, line: 763, type: !6334, align: 64)
!23944 = !DILocalVariable(name: "right_val", scope: !23942, file: !6136, line: 763, type: !6334, align: 64)
!23945 = !DILexicalBlockFile(scope: !23852, file: !6136, discriminator: 0)
!23946 = !DILocalVariable(name: "kind", scope: !23945, file: !6136, line: 763, type: !2617, align: 8)
!23947 = !{!23941, !23940, !23943, !23944, !23946}
!23948 = !DILocalVariable(name: "index", arg: 2, scope: !23858, file: !6136, line: 302, type: !2749)
!23949 = !DILocalVariable(name: "base", arg: 1, scope: !23858, file: !6136, line: 302, type: !1095)
!23950 = !DILocalVariable(name: "ptr", scope: !23857, file: !6136, line: 323, type: !6393, align: 64)
!23951 = !{!23949, !23948, !23950}
!23952 = !DILocalVariable(name: "self", arg: 1, scope: !23873, file: !6256, line: 1381, type: !6393)
!23953 = !{!23952}
!23954 = !DILocalVariable(name: "to_drop", arg: 1, scope: !23876, file: !3912, line: 831, type: !6393)
!23955 = !{!23954}
!23956 = !DILocation(line: 2192, column: 50, scope: !23843, inlinedAt: !23844)
!23957 = !DILocation(line: 1100, column: 12, scope: !23821, inlinedAt: !23825)
!23958 = !DILocation(line: 1043, column: 17, scope: !23828, inlinedAt: !23829)
!23959 = !DILocation(line: 2624, column: 18, scope: !23863, inlinedAt: !23866)
!23960 = !DILocation(line: 971, column: 18, scope: !23867, inlinedAt: !23868)
!23961 = !DILocation(line: 2646, column: 18, scope: !23864, inlinedAt: !23865)
!23962 = !DILocation(line: 17, column: 9, scope: !23869, inlinedAt: !23870)
!23963 = !DILocation(line: 3449, column: 28, scope: !23814, inlinedAt: !23818)
!23964 = !DILocation(line: 1055, column: 47, scope: !23831, inlinedAt: !23861)
!23965 = !DILocation(line: 1055, column: 22, scope: !23831, inlinedAt: !23861)
!23966 = !DILocation(line: 1055, column: 22, scope: !23831, inlinedAt: !23836)
!23967 = !DILocation(line: 848, column: 1, scope: !443, inlinedAt: !23883)
!23968 = !DILocation(line: 848, column: 1, scope: !444, inlinedAt: !23885)
!23969 = !DILocation(line: 848, column: 1, scope: !444, inlinedAt: !23887)
!23970 = !DILocation(line: 3449, column: 25, scope: !23814, inlinedAt: !23818)
!23971 = !DILocation(line: 848, column: 1, scope: !23810)
!23972 = distinct !DISubprogram(name: "drop_glue<plotters::element::text::MultiLineText<(i32, i32), &str>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7element4text13MultiLineTextTllEReEECsaTqK2fWTXJW_11qlog_dancer", scope: !2795, file: !3912, line: 848, type: !24050, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !24054, retainedNodes: !24052)
!23973 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsaTqK2fWTXJW_11qlog_dancer", scope: !2795, file: !3912, line: 848, type: !24058, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !24061, retainedNodes: !24059)
!23974 = distinct !DILocation(line: 848, column: 1, scope: !23972)
!23975 = distinct !DILocation(line: 0, scope: !23973, inlinedAt: !23974)
!23976 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<&str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecReEECsaTqK2fWTXJW_11qlog_dancer", scope: !2795, file: !3912, line: 848, type: !24065, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, templateParams: !24068, retainedNodes: !24066)
!23977 = distinct !DILocation(line: 848, column: 1, scope: !23973, inlinedAt: !23974)
!23978 = distinct !DILocation(line: 0, scope: !23976, inlinedAt: !23977)
!23979 = distinct !DILocation(line: 848, column: 1, scope: !23973, inlinedAt: !23974)
!23980 = distinct !DILocation(line: 0, scope: !23976, inlinedAt: !23979)
!23981 = distinct !DILocation(line: 848, column: 1, scope: !23972)
!23982 = distinct !DILocation(line: 0, scope: !1008, inlinedAt: !23981)
!23983 = distinct !DILocation(line: 848, column: 1, scope: !1008, inlinedAt: !23981)
!23984 = distinct !DILocation(line: 0, scope: !1009, inlinedAt: !23983)
!23985 = distinct !DILocation(line: 848, column: 1, scope: !1009, inlinedAt: !23983)
!23986 = distinct !DILocation(line: 0, scope: !1010, inlinedAt: !23985)
!23987 = distinct !{!23987, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer"}
!23988 = distinct !{!23988, !23987, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!23989 = distinct !{!23989, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4bweDUTR8gt_8plotters5style4font9font_desc8FontDescECsaTqK2fWTXJW_11qlog_dancer"}
!23990 = distinct !{!23990, !23989, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4bweDUTR8gt_8plotters5style4font9font_desc8FontDescECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!23991 = distinct !{!23991, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf16FontDataInternalNtBZ_9FontErrorEECsaTqK2fWTXJW_11qlog_dancer"}
!23992 = distinct !{!23992, !23991, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf16FontDataInternalNtBZ_9FontErrorEECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!23993 = distinct !DILocation(line: 848, column: 1, scope: !1010, inlinedAt: !23985)
!23994 = distinct !DILocation(line: 0, scope: !1011, inlinedAt: !23993)
!23995 = distinct !DILocation(line: 848, column: 1, scope: !1011, inlinedAt: !23993)
!23996 = distinct !DILocation(line: 0, scope: !1012, inlinedAt: !23995)
!23997 = distinct !DILocation(line: 848, column: 1, scope: !1012, inlinedAt: !23995)
end_hunk_1
