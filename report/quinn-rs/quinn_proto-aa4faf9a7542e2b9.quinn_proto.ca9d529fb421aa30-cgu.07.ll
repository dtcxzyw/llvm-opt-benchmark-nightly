Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.07?download=true
inline.NumInlined: 426
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr7min_maxNtB2_6MinMax10update_max:bb.a
  store i64 %2, ptr %i.ah, align 8, !dbg !16349, !alias.scope !16336
  store i64 %1, ptr %i.w, align 8, !dbg !16350, !alias.scope !16336
  store i64 %2, ptr %i.k, align 8, !dbg !16350, !alias.scope !16336
  br label %_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr7min_maxNtB2_6MinMax13subwin_update.exit, !dbg !16351

bb.m:                                             ; preds = %bb.k
  store i64 %1, ptr %i.e, align 8, !dbg !16352, !alias.scope !16336
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16352
  store i64 %2, ptr %i.ai, align 8, !dbg !16352, !alias.scope !16336
  br label %_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr7min_maxNtB2_6MinMax13subwin_update.exit, !dbg !16353

bb.n:                                             ; preds = %bb.j
  store i64 %i.s, ptr %0, align 8, !dbg !16354, !alias.scope !16336
  store i64 %i.q, ptr %i.a, align 8, !dbg !16354, !alias.scope !16336
  store i64 %1, ptr %i.w, align 8, !dbg !16355, !alias.scope !16336
  store i64 %2, ptr %i.k, align 8, !dbg !16355, !alias.scope !16336
  br label %_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr7min_maxNtB2_6MinMax13subwin_update.exit, !dbg !16356

_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr7min_maxNtB2_6MinMax13subwin_update.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.b
  ret void, !dbg !16313
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr7min_maxNtB2_6MinMax5reset(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(56) initializes((0, 48)) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !16357 {
bb.a:
    #dbg_value(ptr %0, !16362, !DIExpression(), !16363)
    #dbg_value(ptr %0, !16212, !DIExpression(), !16364)
    #dbg_value(i64 0, !16218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16364)
    #dbg_value(i64 0, !16221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16366)
    #dbg_value(i64 0, !16218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16364)
    #dbg_value(i64 0, !16221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16366)
    #dbg_value(ptr %0, !16231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16366)
    #dbg_value(i64 3, !16231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16366)
    #dbg_value(ptr poison, !16265, !DIExpression(), !16368)
    #dbg_value(i64 0, !16236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16371)
    #dbg_value(i64 0, !16236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16371)
    #dbg_value(ptr %0, !16242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16371)
    #dbg_value(i64 3, !16242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16371)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16372)
    #dbg_value(!DIArgList(ptr %0, i64 0), !16243, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr undef, !16265, !DIExpression(), !16368)
    #dbg_value(!DIArgList(ptr %0, i64 0), !16284, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16373)
    #dbg_value(ptr %0, !16286, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16374)
    #dbg_value(ptr poison, !16294, !DIExpression(), !16375)
    #dbg_value(ptr poison, !16300, !DIExpression(), !16377)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr %0, !16284, !DIExpression(), !16373)
    #dbg_value(!DIArgList(ptr %0, i64 16), !16243, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr %0, !16260, !DIExpression(), !16378)
    #dbg_value(ptr undef, !16265, !DIExpression(), !16368)
    #dbg_value(!DIArgList(ptr %0, i64 16), !16284, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16373)
    #dbg_value(ptr %0, !16286, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16374)
    #dbg_value(ptr poison, !16294, !DIExpression(), !16375)
    #dbg_value(ptr poison, !16300, !DIExpression(), !16377)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr %0, !16284, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16373)
    #dbg_value(!DIArgList(ptr %0, i64 32), !16243, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr %0, !16260, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16378)
    #dbg_value(!DIArgList(ptr %0, i64 32), !16284, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16373)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr %0, !16284, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16373)
    #dbg_value(!DIArgList(ptr %0, i64 48), !16243, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16372)
    #dbg_value(ptr %0, !16260, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16378)
    #dbg_value(!DIArgList(ptr %0, i64 48), !16284, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !16373)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !dbg !16379
  ret void, !dbg !16380
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i32 } @_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_12RttEstimator12conservative(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !16381 {
bb.a:
    #dbg_declare(ptr poison, !16385, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16391)
    #dbg_declare(ptr poison, !16388, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16397)
    #dbg_value(ptr %0, !16384, !DIExpression(), !16398)
    #dbg_value(ptr %0, !16395, !DIExpression(), !16399)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16400
  %i.b = load i32, ptr %i.a, align 8, !dbg !16400, !range !7616, !noundef !64 ; 2 uses
    #dbg_value(i64 poison, !16385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16401)
    #dbg_value(i32 %i.b, !16385, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16401)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16402
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16402
  %i.e = load i32, ptr %i.d, align 8, !dbg !16402, !range !7621, !noundef !64 ; 3 uses
    #dbg_value(i64 poison, !16388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16401)
    #dbg_value(i32 %i.e, !16388, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16401)
  %.not = icmp eq i32 %i.b, -1, !dbg !16403       ; 2 uses
  %spec.select = select i1 %.not, i32 %i.e, i32 %i.b, !dbg !16404 ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !dbg !16405 ; 4 uses
  %.val8 = load i64, ptr %0, align 8, !dbg !16405
  %.sroa.0.0 = select i1 %.not, i64 %.val, i64 %.val8, !dbg !16404 ; 3 uses
    #dbg_value(i64 %.sroa.0.0, !16388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16401)
    #dbg_value(i32 %spec.select, !16388, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16401)
    #dbg_value(i64 %.sroa.0.0, !7622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16406)
    #dbg_value(i32 %spec.select, !7622, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16406)
    #dbg_value(i64 %.val, !7628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16406)
    #dbg_value(i32 %i.e, !7628, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16406)
    #dbg_value(ptr poison, !7633, !DIExpression(), !16408)
    #dbg_value(ptr poison, !7639, !DIExpression(), !16408)
    #dbg_declare(ptr poison, !7644, !DIExpression(), !16410)
    #dbg_value(ptr poison, !7653, !DIExpression(), !16412)
    #dbg_value(ptr poison, !7660, !DIExpression(), !16412)
    #dbg_value(ptr poison, !7663, !DIExpression(), !16414)
    #dbg_value(ptr poison, !7669, !DIExpression(), !16414)
  %i.f = icmp eq i64 %.val, %.sroa.0.0, !dbg !16416
    #dbg_value(i8 poison, !7648, !DIExpression(), !16417)
  %i.g = icmp samesign ult i32 %i.e, %spec.select, !dbg !16418
  %i.h = icmp ult i64 %.val, %.sroa.0.0, !dbg !16418
  %i.i = select i1 %i.f, i1 %i.g, i1 %i.h, !dbg !16416 ; 2 uses
  %..i = select i1 %i.i, i32 %spec.select, i32 %i.e, !dbg !16419
  %.2.i = select i1 %i.i, i64 %.sroa.0.0, i64 %.val, !dbg !16419
  %i.j = insertvalue { i64, i32 } poison, i64 %.2.i, 0, !dbg !16420
  %i.k = insertvalue { i64, i32 } %i.j, i32 %..i, 1, !dbg !16420
  ret { i64, i32 } %i.k, !dbg !16421
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_12RttEstimator6update(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) initializes((16, 28)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16422 {
bb.a:
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16462)
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16470)
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16479)
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16499)
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16503)
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16507)
    #dbg_declare(ptr poison, !16511, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16519)
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16529)
    #dbg_declare(ptr poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !16537)
    #dbg_value(ptr %0, !16428, !DIExpression(), !16540)
    #dbg_value(i64 %1, !16429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16540)
    #dbg_value(i64 %1, !16477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16541)
    #dbg_value(i64 %1, !16535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16542)
    #dbg_value(i32 %2, !16429, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16540)
    #dbg_value(i32 %2, !16477, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16541)
    #dbg_value(i32 %2, !16535, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16542)
    #dbg_value(i64 %3, !16430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16540)
    #dbg_value(i32 %4, !16430, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16540)
    #dbg_value(ptr @50, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16543)
    #dbg_value(i64 30, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16543)
    #dbg_declare(ptr poison, !16544, !DIExpression(), !16550)
    #dbg_value(ptr @51, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16558)
    #dbg_value(i64 35, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16558)
    #dbg_value(i32 3, !16496, !DIExpression(), !16559)
    #dbg_value(i32 3, !16488, !DIExpression(), !16560)
    #dbg_value(ptr @52, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16561)
    #dbg_value(i64 44, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16561)
    #dbg_value(ptr @50, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16562)
    #dbg_value(i64 30, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16562)
    #dbg_value(i32 4, !16468, !DIExpression(), !16563)
    #dbg_value(ptr poison, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16564)
    #dbg_value(i64 53, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16564)
    #dbg_value(i32 7, !16496, !DIExpression(), !16565)
    #dbg_value(i32 7, !16488, !DIExpression(), !16566)
    #dbg_value(ptr @52, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16567)
    #dbg_value(i64 44, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16567)
    #dbg_value(ptr @50, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16568)
    #dbg_value(i64 30, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16568)
    #dbg_value(i32 8, !16468, !DIExpression(), !16569)
    #dbg_value(ptr poison, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16571)
    #dbg_value(i64 53, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16571)
    #dbg_value(i32 2, !16468, !DIExpression(), !16574)
    #dbg_value(ptr poison, !16443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16575)
    #dbg_value(i64 53, !16443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16575)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16576
  store i64 %3, ptr %i.a, align 8, !dbg !16576
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16576
  store i32 %4, ptr %i.b, align 8, !dbg !16576
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16577 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !16577, !noundef !64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16577 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !dbg !16577, !range !7621, !noundef !64 ; 2 uses
    #dbg_value(i64 %i.d, !16578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16582)
    #dbg_value(i32 %i.f, !16578, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16582)
    #dbg_value(i64 %3, !16581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16582)
    #dbg_value(i32 %4, !16581, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16582)
    #dbg_value(i64 %i.d, !16584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16588)
    #dbg_value(i32 %i.f, !16584, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16588)
    #dbg_value(i64 %3, !16587, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16588)
    #dbg_value(i32 %4, !16587, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16588)
    #dbg_value(ptr poison, !7633, !DIExpression(), !16590)
    #dbg_value(ptr poison, !7639, !DIExpression(), !16590)
    #dbg_declare(ptr poison, !7644, !DIExpression(), !16592)
    #dbg_value(ptr poison, !7653, !DIExpression(), !16594)
    #dbg_value(ptr poison, !7660, !DIExpression(), !16594)
    #dbg_value(ptr poison, !7663, !DIExpression(), !16596)
    #dbg_value(ptr poison, !7669, !DIExpression(), !16596)
  %i.g = icmp eq i64 %3, %i.d, !dbg !16598
    #dbg_value(i8 poison, !7648, !DIExpression(), !16599)
  %i.h = icmp samesign ult i32 %4, %i.f, !dbg !16600
  %i.i = icmp ult i64 %3, %i.d, !dbg !16600
  %i.j = select i1 %i.g, i1 %i.h, i1 %i.i, !dbg !16598 ; 2 uses
  %..i = select i1 %i.j, i32 %4, i32 %i.f, !dbg !16601 ; 2 uses
  %.2.i = select i1 %i.j, i64 %3, i64 %i.d, !dbg !16601 ; 3 uses
  store i64 %.2.i, ptr %i.c, align 8, !dbg !16602
  store i32 %..i, ptr %i.e, align 8, !dbg !16602
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16603 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !dbg !16603, !range !7616, !noundef !64 ; 7 uses
  %.not = icmp eq i32 %i.l, -1, !dbg !16603
  br i1 %.not, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit, label %bb.b, !dbg !16604

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %0, align 8, !dbg !16605, !noundef !64 ; 6 uses
    #dbg_value(i64 %i.m, !16431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16606)
    #dbg_value(i64 %i.m, !16524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16607)
    #dbg_value(i64 %i.m, !16497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16565)
    #dbg_value(i64 %i.m, !16487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16566)
    #dbg_value(i32 %i.l, !16431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16606)
    #dbg_value(i32 %i.l, !16524, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16607)
    #dbg_value(i32 %i.l, !16497, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16565)
    #dbg_value(i32 %i.l, !16487, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16566)
    #dbg_value(i64 %.2.i, !16476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16541)
    #dbg_value(i32 %..i, !16476, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16541)
    #dbg_value(i64 %.2.i, !16608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16621)
    #dbg_value(i32 %..i, !16608, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16621)
    #dbg_value(i64 %1, !16614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16621)
    #dbg_value(i32 %2, !16614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16621)
    #dbg_value(i64 1, !16623, !DIExpression(), !16628)
    #dbg_value(i64 %.2.i, !16626, !DIExpression(), !16630)
    #dbg_value(i64 %1, !16627, !DIExpression(), !16630)
  %i.n = add i64 %.2.i, %1, !dbg !16632           ; 4 uses
  %i.o = icmp ult i64 %i.n, %.2.i, !dbg !16632
    #dbg_value(i1 %i.o, !16633, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16639)
  br i1 %i.o, label %bb.g, label %bb.c, !dbg !16641, !prof !1553

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.n, !16615, !DIExpression(), !16642)
    #dbg_value(i64 %i.n, !16626, !DIExpression(), !16628)
  %i.p = add nuw nsw i32 %..i, %2, !dbg !16643    ; 3 uses
    #dbg_value(i32 %i.p, !16617, !DIExpression(), !16644)
  %i.q = icmp samesign ugt i32 %i.p, 999999999, !dbg !16645
  br i1 %i.q, label %bb.d, label %bb.f, !dbg !16645

bb.d:                                             ; preds = %bb.c
    #dbg_value(i32 %i.p, !16617, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !16644)
  %i.r = icmp eq i64 %i.n, -1, !dbg !16646
    #dbg_value(i1 %i.r, !16633, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16647)
  br i1 %i.r, label %bb.g, label %bb.e, !dbg !16650, !prof !1553

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw i64 %i.n, 1, !dbg !16646
  %i.t = add nsw i32 %i.p, -1000000000, !dbg !16651
    #dbg_value(i32 %i.t, !16617, !DIExpression(), !16644)
    #dbg_value(i64 %i.s, !16615, !DIExpression(), !16642)
    #dbg_value(i64 %i.s, !16626, !DIExpression(), !16628)
  br label %bb.f, !dbg !16652

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit: ; preds = %bb.a
  store i64 %3, ptr %0, align 8, !dbg !16653
  store i32 %4, ptr %i.k, align 8, !dbg !16653
    #dbg_value(i64 %3, !16467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16574)
    #dbg_value(i32 %4, !16467, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16574)
    #dbg_value(i64 %3, !14165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16654)
    #dbg_value(i32 %4, !14165, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16654)
    #dbg_value(i32 2, !14171, !DIExpression(), !16654)
  %i.u = lshr i64 %3, 1, !dbg !16656
    #dbg_value(i64 %i.u, !14172, !DIExpression(), !16657)
    #dbg_value(i64 poison, !14174, !DIExpression(), !16657)
    #dbg_value(i32 poison, !14175, !DIExpression(), !16658)
    #dbg_value(i32 poison, !14177, !DIExpression(), !16658)
    #dbg_value(i64 %3, !14174, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !16657)
  %i.v = trunc i64 %3 to i1, !dbg !16659
    #dbg_value(i32 undef, !14177, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !16658)
  %i.w = lshr i32 %4, 1, !dbg !16660
    #dbg_value(i32 %i.w, !14175, !DIExpression(), !16658)
  %i.x = select i1 %i.v, i32 500000000, i32 0, !dbg !16659
  %i.y = add nuw nsw i32 %i.w, %i.x, !dbg !16661
    #dbg_value(i32 %i.y, !14175, !DIExpression(), !16658)
    #dbg_value(i64 %i.u, !16662, !DIExpression(), !16673)
    #dbg_value(i64 %i.u, !16675, !DIExpression(), !16679)
    #dbg_value(i32 %i.y, !16668, !DIExpression(), !16673)
    #dbg_value(i32 %i.y, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16575)
    #dbg_value(i64 %i.u, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16575)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16681
  store i64 %i.u, ptr %i.z, align 8, !dbg !16681
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16681
  store i32 %i.y, ptr %i.aa, align 8, !dbg !16681
  store i64 %3, ptr %i.c, align 8, !dbg !16682
  store i32 %4, ptr %i.e, align 8, !dbg !16682
  br label %bb.au, !dbg !16683

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.i = phi i32 [ %i.t, %bb.e ], [ %i.p, %bb.c ], !dbg !16621
  %.sroa.0.0.i = phi i64 [ %i.s, %bb.e ], [ %i.n, %bb.c ], !dbg !16621 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.i, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16543)
    #dbg_value(i64 %.sroa.0.0.i, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16543)
    #dbg_value(ptr poison, !16554, !DIExpression(), !16684)
    #dbg_value(ptr poison, !16685, !DIExpression(), !16689)
    #dbg_value(ptr poison, !16691, !DIExpression(), !16697)
    #dbg_value(ptr %0, !16555, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16698)
    #dbg_value(ptr %0, !16688, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16689)
    #dbg_value(ptr %0, !16694, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16697)
  %i.ab = icmp eq i64 %.sroa.0.0.i, %3, !dbg !16697
    #dbg_value(i8 poison, !16547, !DIExpression(), !16699)
    #dbg_value(i8 poison, !16547, !DIExpression(), !16699)
    #dbg_value(i8 poison, !16548, !DIExpression(), !16700)
    #dbg_value(i8 poison, !16548, !DIExpression(), !16700)
    #dbg_value(i8 poison, !16701, !DIExpression(), !16704)
    #dbg_value(i8 poison, !16701, !DIExpression(), !16704)
  br i1 %i.ab, label %.split, label %bb.h, !dbg !16697

bb.g:                                             ; preds = %bb.d, %bb.b
    #dbg_value(i64 poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16543)
    #dbg_value(i32 -1, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16543)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !dbg !16708
  unreachable, !dbg !16708

.split:                                           ; preds = %bb.f
  %.not194 = icmp samesign ugt i32 %.sroa.4.0.i, %4, !dbg !16709
  br i1 %.not194, label %bb.q, label %bb.i, !dbg !16539

bb.h:                                             ; preds = %bb.f
  %.not193 = icmp ugt i64 %.sroa.0.0.i, %3, !dbg !16709
  br i1 %.not193, label %bb.q, label %bb.i, !dbg !16539

bb.i:                                             ; preds = %.split, %bb.h
    #dbg_value(i64 %3, !16534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16542)
    #dbg_value(i32 %4, !16534, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16542)
    #dbg_value(i64 %3, !16710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16721)
    #dbg_value(i32 %4, !16710, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16721)
    #dbg_value(i64 %1, !16714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16721)
    #dbg_value(i32 %2, !16714, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16721)
    #dbg_value(i64 1, !16723, !DIExpression(), !16728)
    #dbg_value(i64 %3, !16726, !DIExpression(), !16730)
    #dbg_value(i64 %1, !16727, !DIExpression(), !16730)
  %i.ac = icmp ult i64 %3, %1, !dbg !16732
  br i1 %i.ac, label %bb.y, label %bb.j, !dbg !16732

bb.j:                                             ; preds = %bb.i
  %i.ad = sub nuw i64 %3, %1, !dbg !16733         ; 3 uses
    #dbg_value(i64 %i.ad, !16715, !DIExpression(), !16734)
    #dbg_value(i64 %i.ad, !16719, !DIExpression(), !16735)
    #dbg_value(i64 %i.ad, !16726, !DIExpression(), !16728)
  %.not.i = icmp samesign ult i32 %4, %2, !dbg !16736
  br i1 %.not.i, label %bb.k, label %bb.m, !dbg !16736

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !16737
  br i1 %i.ae, label %bb.y, label %bb.l, !dbg !16737

bb.l:                                             ; preds = %bb.k
  %i.af = add i64 %i.ad, -1, !dbg !16738
    #dbg_value(i64 %i.af, !16715, !DIExpression(), !16734)
    #dbg_value(i64 %i.af, !16719, !DIExpression(), !16735)
    #dbg_value(i64 %i.af, !16726, !DIExpression(), !16728)
  %i.ag = add nuw nsw i32 %4, 1000000000, !dbg !16739
    #dbg_value(!DIArgList(i32 %i.ag, i32 %2), !16717, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !16740)
  br label %bb.m, !dbg !16741

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.05.0.i = phi i64 [ %i.af, %bb.l ], [ %i.ad, %bb.j ], !dbg !16734 ; 3 uses
  %.pn.i = phi i32 [ %i.ag, %bb.l ], [ %4, %bb.j ]
  %.sroa.02.0.i = sub nuw nsw i32 %.pn.i, %2, !dbg !16734 ; 3 uses
    #dbg_value(i32 %.sroa.02.0.i, !16717, !DIExpression(), !16740)
    #dbg_value(i64 %.sroa.05.0.i, !16726, !DIExpression(), !16728)
    #dbg_value(i64 %.sroa.05.0.i, !16719, !DIExpression(), !16735)
    #dbg_value(i64 %.sroa.05.0.i, !16715, !DIExpression(), !16734)
    #dbg_value(i64 %.sroa.05.0.i, !16662, !DIExpression(), !16742)
    #dbg_value(i64 %.sroa.05.0.i, !16675, !DIExpression(), !16744)
    #dbg_value(i32 %.sroa.02.0.i, !16668, !DIExpression(), !16742)
    #dbg_value(ptr @21, !16746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16755)
    #dbg_value(i64 25, !16746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16755)
  %i.ah = icmp samesign ult i32 %.sroa.02.0.i, 1000000000, !dbg !16757
  br i1 %i.ah, label %bb.q, label %bb.n, !dbg !16757

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 1, !16678, !DIExpression(), !16744)
  %i.ai = icmp eq i64 %.sroa.05.0.i, -1, !dbg !16758
    #dbg_value(i1 %i.ai, !16759, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16762)
  br i1 %i.ai, label %bb.p, label %bb.o, !dbg !16764, !prof !1553

bb.o:                                             ; preds = %bb.n
  %i.aj = add nuw i64 %.sroa.05.0.i, 1, !dbg !16758
    #dbg_value(i64 %i.aj, !16752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16755)
    #dbg_value(i64 1, !16752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16755)
    #dbg_value(i64 %i.aj, !16669, !DIExpression(), !16765)
  %i.ak = add nsw i32 %.sroa.02.0.i, -1000000000, !dbg !16766
  br label %bb.q, !dbg !16767

bb.p:                                             ; preds = %bb.n
    #dbg_value(i64 poison, !16752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16755)
    #dbg_value(i64 poison, !16752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16755)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28, !dbg !16768
  unreachable, !dbg !16768

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.h, %.split
  %.sroa.4.0 = phi i32 [ %4, %bb.h ], [ %4, %.split ], [ %i.ak, %bb.o ], [ %.sroa.02.0.i, %bb.m ], !dbg !16606 ; 6 uses
  %.sroa.0.0 = phi i64 [ %3, %bb.h ], [ %3, %.split ], [ %i.aj, %bb.o ], [ %.sroa.05.0.i, %bb.m ], !dbg !16606 ; 5 uses
    #dbg_value(i64 %.sroa.0.0, !16477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16769)
    #dbg_value(i64 %.sroa.0.0, !16433, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16770)
    #dbg_value(i32 %.sroa.4.0, !16477, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16769)
    #dbg_value(i32 %.sroa.4.0, !16433, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16770)
    #dbg_value(i64 %.sroa.0.0, !16525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16607)
    #dbg_value(i32 %.sroa.4.0, !16525, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16607)
    #dbg_value(i64 %i.m, !16710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16771)
    #dbg_value(i32 %i.l, !16710, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16771)
    #dbg_value(i64 %.sroa.0.0, !16714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16771)
    #dbg_value(i32 %.sroa.4.0, !16714, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16771)
    #dbg_value(i64 1, !16723, !DIExpression(), !16773)
    #dbg_value(i64 %i.m, !16726, !DIExpression(), !16775)
    #dbg_value(i64 %.sroa.0.0, !16727, !DIExpression(), !16775)
  %i.al = icmp ult i64 %i.m, %.sroa.0.0, !dbg !16777
  br i1 %i.al, label %bb.z, label %bb.r, !dbg !16777

bb.r:                                             ; preds = %bb.q
  %i.am = sub nuw i64 %i.m, %.sroa.0.0, !dbg !16778 ; 3 uses
    #dbg_value(i64 %i.am, !16715, !DIExpression(), !16779)
    #dbg_value(i64 %i.am, !16719, !DIExpression(), !16780)
    #dbg_value(i64 %i.am, !16726, !DIExpression(), !16773)
  %.not.i131 = icmp samesign ult i32 %i.l, %.sroa.4.0, !dbg !16781
  br i1 %.not.i131, label %bb.s, label %bb.u, !dbg !16781

bb.s:                                             ; preds = %bb.r
  %i.an = icmp eq i64 %i.am, 0, !dbg !16782
  br i1 %i.an, label %bb.z, label %bb.t, !dbg !16782

bb.t:                                             ; preds = %bb.s
  %i.ao = add i64 %i.am, -1, !dbg !16783
    #dbg_value(i64 %i.ao, !16715, !DIExpression(), !16779)
    #dbg_value(i64 %i.ao, !16719, !DIExpression(), !16780)
    #dbg_value(i64 %i.ao, !16726, !DIExpression(), !16773)
  %i.ap = add nuw nsw i32 %i.l, 1000000000, !dbg !16784
    #dbg_value(!DIArgList(i32 %i.ap, i32 %.sroa.4.0), !16717, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !16785)
  br label %bb.u, !dbg !16786

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.05.0.i132 = phi i64 [ %i.ao, %bb.t ], [ %i.am, %bb.r ], !dbg !16779 ; 3 uses
  %.pn.i133 = phi i32 [ %i.ap, %bb.t ], [ %i.l, %bb.r ]
  %.sroa.02.0.i134 = sub nuw nsw i32 %.pn.i133, %.sroa.4.0, !dbg !16779 ; 3 uses
    #dbg_value(i32 %.sroa.02.0.i134, !16717, !DIExpression(), !16785)
    #dbg_value(i64 %.sroa.05.0.i132, !16726, !DIExpression(), !16773)
    #dbg_value(i64 %.sroa.05.0.i132, !16719, !DIExpression(), !16780)
    #dbg_value(i64 %.sroa.05.0.i132, !16715, !DIExpression(), !16779)
    #dbg_value(i64 %.sroa.05.0.i132, !16662, !DIExpression(), !16787)
    #dbg_value(i64 %.sroa.05.0.i132, !16675, !DIExpression(), !16789)
    #dbg_value(i32 %.sroa.02.0.i134, !16668, !DIExpression(), !16787)
    #dbg_value(ptr @21, !16746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16791)
    #dbg_value(i64 25, !16746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16791)
  %i.aq = icmp samesign ult i32 %.sroa.02.0.i134, 1000000000, !dbg !16793
  br i1 %i.aq, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub.exit137, label %bb.v, !dbg !16793

bb.v:                                             ; preds = %bb.u
    #dbg_value(i64 1, !16678, !DIExpression(), !16789)
  %i.ar = icmp eq i64 %.sroa.05.0.i132, -1, !dbg !16794
    #dbg_value(i1 %i.ar, !16759, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16795)
  br i1 %i.ar, label %bb.x, label %bb.w, !dbg !16797, !prof !1553

bb.w:                                             ; preds = %bb.v
  %i.as = add nuw i64 %.sroa.05.0.i132, 1, !dbg !16794
    #dbg_value(i64 %i.as, !16752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16791)
    #dbg_value(i64 1, !16752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16791)
    #dbg_value(i64 %i.as, !16669, !DIExpression(), !16798)
  %i.at = add nsw i32 %.sroa.02.0.i134, -1000000000, !dbg !16799
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub.exit137, !dbg !16800

bb.x:                                             ; preds = %bb.v
    #dbg_value(i64 poison, !16752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16791)
    #dbg_value(i64 poison, !16752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16791)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28, !dbg !16801
  unreachable, !dbg !16801

bb.y:                                             ; preds = %bb.i, %bb.k
    #dbg_value(i64 poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16558)
    #dbg_value(i32 -1, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16558)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #28, !dbg !16802
  unreachable, !dbg !16802

bb.z:                                             ; preds = %bb.q, %bb.s
    #dbg_value(i64 %.sroa.0.0, !16710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16803)
    #dbg_value(i32 %.sroa.4.0, !16710, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16803)
    #dbg_value(i64 %i.m, !16714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16803)
    #dbg_value(i32 %i.l, !16714, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16803)
    #dbg_value(i64 1, !16723, !DIExpression(), !16805)
    #dbg_value(i64 %.sroa.0.0, !16726, !DIExpression(), !16807)
    #dbg_value(i64 %i.m, !16727, !DIExpression(), !16807)
  %i.au = icmp ult i64 %.sroa.0.0, %i.m, !dbg !16809
  br i1 %i.au, label %bb.ai, label %bb.aa, !dbg !16809

bb.aa:                                            ; preds = %bb.z
  %i.av = sub nuw i64 %.sroa.0.0, %i.m, !dbg !16810 ; 3 uses
    #dbg_value(i64 %i.av, !16715, !DIExpression(), !16811)
    #dbg_value(i64 %i.av, !16719, !DIExpression(), !16812)
    #dbg_value(i64 %i.av, !16726, !DIExpression(), !16805)
  %.not.i138 = icmp samesign ult i32 %.sroa.4.0, %i.l, !dbg !16813
  br i1 %.not.i138, label %bb.ab, label %bb.ad, !dbg !16813

bb.ab:                                            ; preds = %bb.aa
  %i.aw = icmp eq i64 %i.av, 0, !dbg !16814
  br i1 %i.aw, label %bb.ai, label %bb.ac, !dbg !16814

bb.ac:                                            ; preds = %bb.ab
  %i.ax = add i64 %i.av, -1, !dbg !16815
    #dbg_value(i64 %i.ax, !16715, !DIExpression(), !16811)
    #dbg_value(i64 %i.ax, !16719, !DIExpression(), !16812)
    #dbg_value(i64 %i.ax, !16726, !DIExpression(), !16805)
  %i.ay = add nuw nsw i32 %.sroa.4.0, 1000000000, !dbg !16816
    #dbg_value(!DIArgList(i32 %i.ay, i32 %i.l), !16717, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !16817)
  br label %bb.ad, !dbg !16818

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.05.0.i139 = phi i64 [ %i.ax, %bb.ac ], [ %i.av, %bb.aa ], !dbg !16811 ; 3 uses
  %.pn.i140 = phi i32 [ %i.ay, %bb.ac ], [ %.sroa.4.0, %bb.aa ]
  %.sroa.02.0.i141 = sub nuw nsw i32 %.pn.i140, %i.l, !dbg !16811 ; 3 uses
    #dbg_value(i32 %.sroa.02.0.i141, !16717, !DIExpression(), !16817)
    #dbg_value(i64 %.sroa.05.0.i139, !16726, !DIExpression(), !16805)
    #dbg_value(i64 %.sroa.05.0.i139, !16719, !DIExpression(), !16812)
    #dbg_value(i64 %.sroa.05.0.i139, !16715, !DIExpression(), !16811)
    #dbg_value(i64 %.sroa.05.0.i139, !16662, !DIExpression(), !16819)
    #dbg_value(i64 %.sroa.05.0.i139, !16675, !DIExpression(), !16821)
    #dbg_value(i32 %.sroa.02.0.i141, !16668, !DIExpression(), !16819)
    #dbg_value(ptr @21, !16746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16823)
    #dbg_value(i64 25, !16746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16823)
  %i.az = icmp samesign ult i32 %.sroa.02.0.i141, 1000000000, !dbg !16825
  br i1 %i.az, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub.exit137, label %bb.ae, !dbg !16825

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i64 1, !16678, !DIExpression(), !16821)
  %i.ba = icmp eq i64 %.sroa.05.0.i139, -1, !dbg !16826
    #dbg_value(i1 %i.ba, !16759, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16827)
  br i1 %i.ba, label %bb.ag, label %bb.af, !dbg !16829, !prof !1553

bb.af:                                            ; preds = %bb.ae
  %i.bb = add nuw i64 %.sroa.05.0.i139, 1, !dbg !16826
    #dbg_value(i64 %i.bb, !16752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16823)
    #dbg_value(i64 1, !16752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16823)
    #dbg_value(i64 %i.bb, !16669, !DIExpression(), !16830)
  %i.bc = add nsw i32 %.sroa.02.0.i141, -1000000000, !dbg !16831
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub.exit137, !dbg !16832

bb.ag:                                            ; preds = %bb.ae
    #dbg_value(i64 poison, !16752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16823)
    #dbg_value(i64 poison, !16752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16823)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28, !dbg !16833
  unreachable, !dbg !16833

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub.exit137: ; preds = %bb.af, %bb.ad, %bb.w, %bb.u
  %.sroa.3.0 = phi i32 [ %.sroa.02.0.i134, %bb.u ], [ %i.at, %bb.w ], [ %i.bc, %bb.af ], [ %.sroa.02.0.i141, %bb.ad ], !dbg !16834
  %.sroa.0.0.i136.pn = phi i64 [ %.sroa.05.0.i132, %bb.u ], [ %i.as, %bb.w ], [ %i.bb, %bb.af ], [ %.sroa.05.0.i139, %bb.ad ]
    #dbg_value(i64 poison, !16477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16835)
    #dbg_value(i64 poison, !16526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16836)
    #dbg_value(i64 poison, !16435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16837)
    #dbg_value(i32 %.sroa.3.0, !16477, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16835)
    #dbg_value(i32 %.sroa.3.0, !16526, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16836)
    #dbg_value(i32 %.sroa.3.0, !16435, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16837)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16838 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !dbg !16838, !noundef !64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16838 ; 2 uses
    #dbg_value(i64 %i.be, !16497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16559)
    #dbg_value(i64 %i.be, !16487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16560)
    #dbg_value(i32 poison, !16497, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16559)
    #dbg_value(i32 poison, !16487, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16560)
    #dbg_value(i64 %i.be, !16839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16854)
    #dbg_value(i32 poison, !16839, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16854)
    #dbg_value(i32 3, !16843, !DIExpression(), !16854)
    #dbg_value(i64 3, !16856, !DIExpression(), !16863)
    #dbg_value(i64 3, !16865, !DIExpression(), !16875)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16877)
    #dbg_value(i64 poison, !16846, !DIExpression(), !16878)
    #dbg_value(i64 poison, !16879, !DIExpression(), !16883)
    #dbg_value(i64 poison, !16848, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !16885)
    #dbg_value(i64 %i.be, !16859, !DIExpression(), !16863)
    #dbg_value(i64 %i.be, !16874, !DIExpression(), !16875)
  %5 = icmp ugt i64 %i.be, 6148914691236517205, !dbg !16886
    #dbg_value(i64 poison, !16860, !DIExpression(), !16887)
    #dbg_value(i1 %5, !16862, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16887)
    #dbg_value(i1 %5, !16888, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16891)
  br i1 %5, label %select.unfold, label %bb.ah, !dbg !16893, !prof !1553

bb.ah:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub.exit137
  %i.bg = load i32, ptr %i.bf, align 8, !dbg !16838, !range !7621, !noundef !64
    #dbg_value(!DIArgList(i32 %i.bg, i64 3), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16877)
    #dbg_value(i32 %i.bg, !16497, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16559)
    #dbg_value(i32 %i.bg, !16487, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16560)
    #dbg_value(i32 %i.bg, !16839, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16854)
    #dbg_value(!DIArgList(i32 %i.bg, i64 3), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16877)
  %narrow = mul nuw i32 %i.bg, 3, !dbg !16894     ; 2 uses
    #dbg_value(i32 %narrow, !16844, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !16877)
  %i.bh = urem i32 %narrow, 1000000000, !dbg !16895
    #dbg_value(i32 %i.bh, !16848, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !16885)
    #dbg_value(i32 %i.bh, !16848, !DIExpression(), !16885)
  %6 = mul nuw i64 %i.be, 3, !dbg !16886          ; 2 uses
    #dbg_value(i64 %6, !16860, !DIExpression(), !16887)
  %i.bi = udiv i32 %narrow, 1000000000, !dbg !16896
  %.zext190 = zext nneg i32 %i.bi to i64, !dbg !16896
    #dbg_value(i64 %.zext190, !16846, !DIExpression(), !16878)
    #dbg_value(i64 %.zext190, !16879, !DIExpression(), !16883)
    #dbg_value(i64 %6, !16850, !DIExpression(), !16897)
    #dbg_value(i64 %6, !16882, !DIExpression(), !16883)
  %i.bj = add i64 %6, %.zext190, !dbg !16898      ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %6, !dbg !16898
    #dbg_value(i1 %i.bk, !16888, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16899)
  br i1 %i.bk, label %select.unfold, label %bb.aj, !dbg !16901, !prof !1553

bb.ai:                                            ; preds = %bb.z, %bb.ab
    #dbg_value(i64 poison, !16511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16902)
    #dbg_value(i32 -1, !16511, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16902)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28, !dbg !16903
  unreachable, !dbg !16903

bb.aj:                                            ; preds = %bb.ah
    #dbg_value(i32 %i.bh, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16561)
    #dbg_value(i64 %i.bj, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16561)
    #dbg_value(i64 %.sroa.0.0.i136.pn, !16435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16837)
    #dbg_value(i64 %.sroa.0.0.i136.pn, !16526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16836)
    #dbg_value(i64 %.sroa.0.0.i136.pn, !16477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16835)
    #dbg_value(i64 %i.bj, !16476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16835)
    #dbg_value(i32 %i.bh, !16476, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16835)
    #dbg_value(i64 %i.bj, !16608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16904)
    #dbg_value(i32 %i.bh, !16608, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16904)
    #dbg_value(i64 %.sroa.0.0.i136.pn, !16614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16904)
    #dbg_value(i32 %.sroa.3.0, !16614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16904)
    #dbg_value(i64 1, !16623, !DIExpression(), !16906)
    #dbg_value(i64 %i.bj, !16626, !DIExpression(), !16908)
    #dbg_value(i64 %.sroa.0.0.i136.pn, !16627, !DIExpression(), !16908)
  %i.bl = add i64 %i.bj, %.sroa.0.0.i136.pn, !dbg !16910 ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %i.bj, !dbg !16910
    #dbg_value(i1 %i.bm, !16633, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16911)
  br i1 %i.bm, label %bb.ao, label %bb.ak, !dbg !16913, !prof !1553

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(i64 %i.bl, !16615, !DIExpression(), !16914)
    #dbg_value(i64 %i.bl, !16626, !DIExpression(), !16906)
  %i.bn = add nuw nsw i32 %i.bh, %.sroa.3.0, !dbg !16915 ; 3 uses
    #dbg_value(i32 %i.bn, !16617, !DIExpression(), !16916)
  %i.bo = icmp samesign ugt i32 %i.bn, 999999999, !dbg !16917
  br i1 %i.bo, label %bb.al, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit151, !dbg !16917

bb.al:                                            ; preds = %bb.ak
    #dbg_value(i32 %i.bn, !16617, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !16916)
  %i.bp = icmp eq i64 %i.bl, -1, !dbg !16918
    #dbg_value(i1 %i.bp, !16633, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16919)
  br i1 %i.bp, label %bb.ao, label %bb.am, !dbg !16921, !prof !1553

bb.am:                                            ; preds = %bb.al
  %i.bq = add nuw i64 %i.bl, 1, !dbg !16918
  %i.br = add nsw i32 %i.bn, -1000000000, !dbg !16922
    #dbg_value(i32 %i.br, !16617, !DIExpression(), !16916)
    #dbg_value(i64 %i.bq, !16615, !DIExpression(), !16914)
    #dbg_value(i64 %i.bq, !16626, !DIExpression(), !16906)
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit151, !dbg !16923

select.unfold:                                    ; preds = %bb.ah, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub.exit137
    #dbg_value(i64 poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16561)
    #dbg_value(i32 -1, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16561)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !dbg !16924
  unreachable, !dbg !16924

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit151: ; preds = %bb.am, %bb.ak
  %.sroa.4.0.i146 = phi i32 [ %i.br, %bb.am ], [ %i.bn, %bb.ak ], !dbg !16904
  %.sroa.0.0.i147 = phi i64 [ %i.bq, %bb.am ], [ %i.bl, %bb.ak ], !dbg !16904 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.i146, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16562)
    #dbg_value(i64 %.sroa.0.0.i147, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16562)
    #dbg_value(i64 %.sroa.0.0.i147, !16467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16563)
    #dbg_value(i32 %.sroa.4.0.i146, !16467, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16563)
    #dbg_value(i64 %.sroa.0.0.i147, !14165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16925)
    #dbg_value(i32 %.sroa.4.0.i146, !14165, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16925)
    #dbg_value(i32 4, !14171, !DIExpression(), !16925)
  %i.bs = lshr i64 %.sroa.0.0.i147, 2, !dbg !16927
    #dbg_value(i64 %i.bs, !14172, !DIExpression(), !16928)
    #dbg_value(i64 poison, !14174, !DIExpression(), !16928)
    #dbg_value(i32 poison, !14175, !DIExpression(), !16929)
    #dbg_value(i32 poison, !14177, !DIExpression(), !16929)
    #dbg_value(i64 %.sroa.0.0.i147, !14174, !DIExpression(DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !16928)
    #dbg_value(i32 undef, !14177, !DIExpression(DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !16929)
  %i.bt = lshr i32 %.sroa.4.0.i146, 2, !dbg !16930
    #dbg_value(i32 %i.bt, !14175, !DIExpression(), !16929)
  %i.bu = trunc i64 %.sroa.0.0.i147 to i32, !dbg !16931
  %i.bv = and i32 %i.bu, 3, !dbg !16931
  %i.bw = mul nuw nsw i32 %i.bv, 250000000, !dbg !16931
  %i.bx = add nuw nsw i32 %i.bw, %i.bt, !dbg !16932
    #dbg_value(i32 %i.bx, !14175, !DIExpression(), !16929)
    #dbg_value(i64 %i.bs, !16662, !DIExpression(), !16933)
    #dbg_value(i64 %i.bs, !16675, !DIExpression(), !16935)
    #dbg_value(i32 %i.bx, !16668, !DIExpression(), !16933)
    #dbg_value(i32 %i.bx, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16564)
    #dbg_value(i64 %i.bs, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16564)
  store i64 %i.bs, ptr %i.bd, align 8, !dbg !16937
  store i32 %i.bx, ptr %i.bf, align 8, !dbg !16937
    #dbg_value(i64 %i.m, !16839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16938)
    #dbg_value(i32 %i.l, !16839, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16938)
    #dbg_value(i32 7, !16843, !DIExpression(), !16938)
    #dbg_value(i64 7, !16856, !DIExpression(), !16940)
    #dbg_value(i64 7, !16865, !DIExpression(), !16942)
    #dbg_value(!DIArgList(i32 %i.l, i64 7), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16944)
    #dbg_value(i64 poison, !16846, !DIExpression(), !16945)
    #dbg_value(i64 poison, !16879, !DIExpression(), !16946)
    #dbg_value(i64 poison, !16848, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !16948)
    #dbg_value(i64 %i.m, !16859, !DIExpression(), !16940)
    #dbg_value(i64 %i.m, !16874, !DIExpression(), !16942)
  %7 = icmp ugt i64 %i.m, 2635249153387078802, !dbg !16949
    #dbg_value(i64 poison, !16860, !DIExpression(), !16950)
    #dbg_value(i1 %7, !16862, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16950)
    #dbg_value(i1 %7, !16888, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16951)
  br i1 %7, label %select.unfold180, label %bb.an, !dbg !16953, !prof !1553

bb.an:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit151
  %i.by = zext nneg i32 %i.l to i64, !dbg !16954
    #dbg_value(!DIArgList(i64 %i.by, i64 7), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16944)
  %i.bz = mul nuw nsw i64 %i.by, 7, !dbg !16954   ; 2 uses
    #dbg_value(i64 %i.bz, !16844, !DIExpression(), !16944)
  %i.ca = urem i64 %i.bz, 1000000000, !dbg !16955
    #dbg_value(i64 %i.ca, !16848, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !16948)
  %i.cb = trunc nuw nsw i64 %i.ca to i32, !dbg !16955
    #dbg_value(i32 %i.cb, !16848, !DIExpression(), !16948)
  %8 = mul nuw i64 %i.m, 7, !dbg !16949           ; 2 uses
    #dbg_value(i64 %8, !16860, !DIExpression(), !16950)
  %i.cc = udiv i64 %i.bz, 1000000000, !dbg !16956
    #dbg_value(i64 %i.cc, !16846, !DIExpression(), !16945)
    #dbg_value(i64 %i.cc, !16879, !DIExpression(), !16946)
    #dbg_value(i64 %8, !16850, !DIExpression(), !16957)
    #dbg_value(i64 %8, !16882, !DIExpression(), !16946)
  %i.cd = add i64 %8, %i.cc, !dbg !16958          ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %8, !dbg !16958
    #dbg_value(i1 %i.ce, !16888, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16959)
  br i1 %i.ce, label %select.unfold180, label %bb.ap, !dbg !16961, !prof !1553

bb.ao:                                            ; preds = %bb.al, %bb.aj
    #dbg_value(i64 poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16562)
    #dbg_value(i32 -1, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16562)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !dbg !16962
  unreachable, !dbg !16962

bb.ap:                                            ; preds = %bb.an
    #dbg_value(i32 %i.cb, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16567)
    #dbg_value(i64 %i.cd, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16567)
    #dbg_value(i64 %i.cd, !16476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16769)
    #dbg_value(i32 %i.cb, !16476, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16769)
    #dbg_value(i64 %i.cd, !16608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16963)
    #dbg_value(i32 %i.cb, !16608, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16963)
    #dbg_value(i64 %.sroa.0.0, !16614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16963)
    #dbg_value(i32 %.sroa.4.0, !16614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16963)
    #dbg_value(i64 1, !16623, !DIExpression(), !16965)
    #dbg_value(i64 %i.cd, !16626, !DIExpression(), !16967)
    #dbg_value(i64 %.sroa.0.0, !16627, !DIExpression(), !16967)
  %i.cf = add i64 %.sroa.0.0, %i.cd, !dbg !16969  ; 4 uses
  %i.cg = icmp ult i64 %i.cf, %i.cd, !dbg !16969
    #dbg_value(i1 %i.cg, !16633, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16970)
  br i1 %i.cg, label %bb.at, label %bb.aq, !dbg !16972, !prof !1553

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i64 %i.cf, !16615, !DIExpression(), !16973)
    #dbg_value(i64 %i.cf, !16626, !DIExpression(), !16965)
  %i.ch = add nuw nsw i32 %.sroa.4.0, %i.cb, !dbg !16974 ; 3 uses
    #dbg_value(i32 %i.ch, !16617, !DIExpression(), !16975)
  %i.ci = icmp samesign ugt i32 %i.ch, 999999999, !dbg !16976
  br i1 %i.ci, label %bb.ar, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161, !dbg !16976

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(i32 %i.ch, !16617, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !16975)
  %i.cj = icmp eq i64 %i.cf, -1, !dbg !16977
    #dbg_value(i1 %i.cj, !16633, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16978)
  br i1 %i.cj, label %bb.at, label %bb.as, !dbg !16980, !prof !1553

bb.as:                                            ; preds = %bb.ar
  %i.ck = add nuw i64 %i.cf, 1, !dbg !16977
  %i.cl = add nsw i32 %i.ch, -1000000000, !dbg !16981
    #dbg_value(i32 %i.cl, !16617, !DIExpression(), !16975)
    #dbg_value(i64 %i.ck, !16615, !DIExpression(), !16973)
    #dbg_value(i64 %i.ck, !16626, !DIExpression(), !16965)
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161, !dbg !16982

select.unfold180:                                 ; preds = %bb.an, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit151
    #dbg_value(i64 poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16567)
    #dbg_value(i32 -1, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16567)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !dbg !16983
  unreachable, !dbg !16983

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161: ; preds = %bb.as, %bb.aq
  %.sroa.4.0.i156 = phi i32 [ %i.cl, %bb.as ], [ %i.ch, %bb.aq ], !dbg !16963
  %.sroa.0.0.i157 = phi i64 [ %i.ck, %bb.as ], [ %i.cf, %bb.aq ], !dbg !16963 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.i156, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16568)
    #dbg_value(i64 %.sroa.0.0.i157, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16568)
    #dbg_value(i64 %.sroa.0.0.i157, !16467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16569)
    #dbg_value(i32 %.sroa.4.0.i156, !16467, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16569)
    #dbg_value(i64 %.sroa.0.0.i157, !14165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16984)
    #dbg_value(i32 %.sroa.4.0.i156, !14165, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16984)
    #dbg_value(i32 8, !14171, !DIExpression(), !16984)
  %i.cm = lshr i64 %.sroa.0.0.i157, 3, !dbg !16986
    #dbg_value(i64 %i.cm, !14172, !DIExpression(), !16987)
    #dbg_value(i64 poison, !14174, !DIExpression(), !16987)
    #dbg_value(i32 poison, !14175, !DIExpression(), !16988)
    #dbg_value(i32 poison, !14177, !DIExpression(), !16988)
    #dbg_value(i64 %.sroa.0.0.i157, !14174, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !16987)
    #dbg_value(i32 undef, !14177, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !16988)
  %i.cn = lshr i32 %.sroa.4.0.i156, 3, !dbg !16989
    #dbg_value(i32 %i.cn, !14175, !DIExpression(), !16988)
  %i.co = trunc i64 %.sroa.0.0.i157 to i32, !dbg !16990
  %i.cp = and i32 %i.co, 7, !dbg !16990
  %i.cq = mul nuw nsw i32 %i.cp, 125000000, !dbg !16990
  %i.cr = add nuw nsw i32 %i.cq, %i.cn, !dbg !16991
    #dbg_value(i32 %i.cr, !14175, !DIExpression(), !16988)
    #dbg_value(i64 %i.cm, !16662, !DIExpression(), !16992)
    #dbg_value(i64 %i.cm, !16675, !DIExpression(), !16994)
    #dbg_value(i32 %i.cr, !16668, !DIExpression(), !16992)
    #dbg_value(i32 %i.cr, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16571)
    #dbg_value(i64 %i.cm, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16571)
  store i64 %i.cm, ptr %0, align 8, !dbg !16996
  store i32 %i.cr, ptr %i.k, align 8, !dbg !16996
  br label %bb.au, !dbg !16683

bb.at:                                            ; preds = %bb.ar, %bb.ap
    #dbg_value(i64 poison, !16437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16568)
    #dbg_value(i32 -1, !16437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16568)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !dbg !16997
  unreachable, !dbg !16997

bb.au:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161
  ret void, !dbg !16998
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_12RttEstimator8pto_base(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16999 {
bb.a:
    #dbg_declare(ptr poison, !17003, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17011)
    #dbg_declare(ptr poison, !17003, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17018)
    #dbg_declare(ptr poison, !17030, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17036)
    #dbg_declare(ptr poison, !17015, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17042)
    #dbg_declare(ptr poison, !17033, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17043)
    #dbg_value(ptr %0, !17002, !DIExpression(), !17044)
    #dbg_value(ptr %0, !17040, !DIExpression(), !17045)
    #dbg_value(i32 4, !17027, !DIExpression(), !17046)
    #dbg_value(i32 4, !17023, !DIExpression(), !17047)
    #dbg_value(ptr @52, !17006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17048)
    #dbg_value(i64 44, !17006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17048)
    #dbg_value(i64 0, !17049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17053)
    #dbg_value(i32 1000000, !17049, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17053)
    #dbg_value(ptr @50, !17006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17055)
    #dbg_value(i64 30, !17006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17055)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17056
  %i.b = load i32, ptr %i.a, align 8, !dbg !17056, !range !7616, !noundef !64 ; 2 uses
    #dbg_value(i64 poison, !17030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17057)
    #dbg_value(i32 %i.b, !17030, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17057)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17058
  %i.d = load i32, ptr %i.c, align 8, !dbg !17058, !range !7621, !noundef !64
    #dbg_value(i64 poison, !17033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17057)
    #dbg_value(i64 poison, !17015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(i32 %i.d, !17033, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17057)
    #dbg_value(i32 %i.d, !17015, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17059)
  %.not = icmp eq i32 %i.b, -1, !dbg !17060       ; 2 uses
  %spec.select = select i1 %.not, i32 %i.d, i32 %i.b, !dbg !17061
    #dbg_value(i64 poison, !17015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(i64 poison, !17033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17057)
    #dbg_value(i32 %spec.select, !17015, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17059)
    #dbg_value(i32 %spec.select, !17033, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17057)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17062
  %i.f = load i64, ptr %i.e, align 8, !dbg !17062, !noundef !64 ; 2 uses
    #dbg_value(i64 %i.f, !17028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17046)
    #dbg_value(i64 %i.f, !17022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17047)
    #dbg_value(i32 poison, !17028, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17046)
    #dbg_value(i32 poison, !17022, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17047)
    #dbg_value(i64 %i.f, !16839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17063)
    #dbg_value(i32 poison, !16839, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17063)
    #dbg_value(i32 4, !16843, !DIExpression(), !17063)
    #dbg_value(i64 4, !16856, !DIExpression(), !17065)
    #dbg_value(i64 4, !16865, !DIExpression(), !17067)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !17069)
    #dbg_value(i64 poison, !16846, !DIExpression(), !17070)
    #dbg_value(i64 poison, !16879, !DIExpression(), !17071)
    #dbg_value(i64 poison, !16848, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17073)
    #dbg_value(i64 %i.f, !16859, !DIExpression(), !17065)
    #dbg_value(i64 %i.f, !16874, !DIExpression(), !17067)
  %i.g = icmp ugt i64 %i.f, 4611686018427387903, !dbg !17074
    #dbg_value(i64 poison, !16860, !DIExpression(), !17075)
    #dbg_value(i1 %i.g, !16862, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17075)
    #dbg_value(i1 %i.g, !16888, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17076)
  br i1 %i.g, label %select.unfold, label %bb.b, !dbg !17078, !prof !1553

bb.b:                                             ; preds = %bb.a
  %spec.select34.idx = select i1 %.not, i64 16, i64 0, !dbg !17061
  %spec.select34 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select34.idx, !dbg !17061
  %.sroa.0.0 = load i64, ptr %spec.select34, align 8, !dbg !17079 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !17033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17057)
    #dbg_value(i64 %.sroa.0.0, !17015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !17069)
    #dbg_value(i32 poison, !17028, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17046)
    #dbg_value(i32 poison, !17022, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17047)
    #dbg_value(i32 poison, !16839, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17063)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !16844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !17069)
    #dbg_value(i32 poison, !16844, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17069)
    #dbg_value(i32 poison, !16848, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17073)
    #dbg_value(i32 poison, !16848, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17073)
    #dbg_value(i64 %i.f, !16860, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !17075)
    #dbg_value(i32 poison, !16846, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17070)
    #dbg_value(i32 poison, !16879, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17071)
    #dbg_value(i64 %i.f, !16850, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !17080)
    #dbg_value(i64 %i.f, !16882, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !17071)
    #dbg_value(i1 false, !16888, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17081)
  %i.h = shl nuw i64 %i.f, 2, !dbg !17074
    #dbg_value(i64 %i.h, !16860, !DIExpression(), !17075)
    #dbg_value(i64 %i.h, !16850, !DIExpression(), !17080)
    #dbg_value(i64 %i.h, !16882, !DIExpression(), !17071)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17062
  %i.j = load i32, ptr %i.i, align 8, !dbg !17062, !range !7621, !noundef !64 ; 2 uses
    #dbg_value(i32 %i.j, !16839, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17063)
    #dbg_value(i32 %i.j, !17022, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17047)
    #dbg_value(i32 %i.j, !17028, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17046)
    #dbg_value(i32 %i.j, !16844, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17069)
  %i.k = udiv i32 %i.j, 250000000, !dbg !17083
    #dbg_value(i32 %i.k, !16879, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17071)
    #dbg_value(i32 %i.k, !16846, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17070)
  %.zext43 = zext nneg i32 %i.k to i64, !dbg !17083
    #dbg_value(i64 %.zext43, !16846, !DIExpression(), !17070)
    #dbg_value(i64 %.zext43, !16879, !DIExpression(), !17071)
  %i.l = add nuw i64 %i.h, %.zext43, !dbg !17084  ; 3 uses
  %i.m = shl nuw i32 %i.j, 2, !dbg !17085
    #dbg_value(i32 %i.m, !16844, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17069)
  %i.n = urem i32 %i.m, 1000000000, !dbg !17086   ; 2 uses
    #dbg_value(i32 %i.n, !16848, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17073)
    #dbg_value(i32 %i.n, !16848, !DIExpression(), !17073)
    #dbg_value(i32 %i.n, !17003, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17048)
    #dbg_value(i64 %i.l, !17003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17048)
    #dbg_value(i64 %i.l, !17052, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17053)
    #dbg_value(i32 %i.n, !17052, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17053)
end_hunk_0
begin_hunk_1_@_RNvXsb_NtNtCs5Qxcy9OyWl9_4rand5distr7uniformNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
bb.a:
    #dbg_value(ptr %0, !28098, !DIExpression(), !28100)
    #dbg_value(ptr %1, !28099, !DIExpression(), !28100)
  %i.a = load i8, ptr %0, align 1, !dbg !28101, !range !5445, !noundef !64
  %i.b = trunc nuw i8 %i.a to i1, !dbg !28101     ; 2 uses
  %. = select i1 %i.b, i64 9, i64 10, !dbg !28102
  %.3 = select i1 %i.b, ptr @93, ptr @92, !dbg !28102
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.3, i64 noundef %.), !dbg !28101
  ret i1 %i.c, !dbg !28103
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCseEeXhZwqjpo_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !28104 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28116)
    #dbg_value(ptr %0, !28117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28134)
    #dbg_value(ptr %0, !28136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28146)
    #dbg_value(i64 %1, !28114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28116)
    #dbg_value(i64 %1, !28117, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28134)
    #dbg_value(i64 %1, !28136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28146)
    #dbg_value(ptr %2, !28115, !DIExpression(), !28116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28148
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28149
    #dbg_value(i64 %1, !28140, !DIExpression(), !28150)
    #dbg_value(i64 %1, !28151, !DIExpression(), !28158)
    #dbg_value(ptr %0, !28142, !DIExpression(), !28160)
    #dbg_value(ptr %0, !28157, !DIExpression(), !28158)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !28161
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCseEeXhZwqjpo_16rustls_pki_types6alg_id19AlgorithmIdentifierINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28162
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28164
  ret i1 %i.d, !dbg !28165
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgb4gPAseikh_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !28166 {
bb.a:
    #dbg_value(ptr poison, !28185, !DIExpression(), !28189)
    #dbg_declare(ptr poison, !28186, !DIExpression(), !28190)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @94, i64 16, i1 false), !dbg !28191
  ret void, !dbg !28192
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNvNtNtCsaI2kdLa8AX5_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE9cold_initzNCINvB2_11unsync_initNvB7_4initE0ECshovLROGBtMy_11quinn_proto(ptr noundef nonnull align 8) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECshovLROGBtMy_11quinn_proto(i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsgb4gPAseikh_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshovLROGBtMy_11quinn_proto5frame11StopSendingENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshovLROGBtMy_11quinn_proto6shared9IssuedCidENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBL_3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCshovLROGBtMy_11quinn_proto8StreamIdNtNtBI_6varint6VarIntEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame11StopSendingENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared9IssuedCidENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtCshovLROGBtMy_11quinn_proto8StreamIdNtNtBP_6varint6VarIntEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_6ValuesyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsz_NtCskKLDkoKarTP_4core5arrayAhj20_NtNtB7_7default7Default7defaultCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsgb4gPAseikh_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RNvMNtNtCshovLROGBtMy_11quinn_proto6config9transportNtB2_15TransportConfig15get_initial_mtu(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery3new(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), i16 noundef, i16 noundef, i16 noundef range(i16 0, 2), i16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState21can_send_flow_control(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(456), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_4LeafENtB1y_4EdgeE7next_kvB1Z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1Z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCskKLDkoKarTP_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsgb4gPAseikh_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsgb4gPAseikh_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive(ptr noalias nofree noundef align 16 dereferenceable(6320), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection18reset_idle_timeout(ptr noalias nofree noundef align 16 dereferenceable(6320), i64 noundef, i32 noundef range(i32 0, 1000000000), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection24set_loss_detection_timer(ptr noalias nofree noundef align 16 dereferenceable(6320), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16force_key_update(ptr noalias nofree noundef align 16 dereferenceable(6320)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection4kill(ptr noalias nofree noundef align 16 dereferenceable(6320), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdIYt8sV98we_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdIYt8sV98we_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection11close_inner(ptr noalias nofree noundef align 16 dereferenceable(6320), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsgb4gPAseikh_12tracing_core5fieldINtB5_10DebugValueRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtB5_5Value6recordB12_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs13_NtCsgb4gPAseikh_12tracing_core5fieldyNtB6_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span10record_all(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB5_12PacketNumber3new(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCshovLROGBtMy_11quinn_proto6packetNtB5_6Header6encode(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionIdNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(21)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCshovLROGBtMy_11quinn_proto6packetNtB5_13PartialEncode6finish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection4qlogNtB4_8QlogSink16emit_packet_sent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef, i8 noundef range(i8 0, 3), i1 noundef zeroext, i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(21)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB2_5Pacer3new(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i16 noundef, i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery8disabled(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery5reset(ptr noalias nofree noundef align 8 dereferenceable(152), i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAbj2_NtNtB8_7default7Default7defaultCshovLROGBtMy_11quinn_proto() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE5rangeyTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB2k_EEB1f_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs3_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRyRB1G_EEB1M_(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE6removeyEB1f_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE6insertB1e_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCshJYlBnZeDKb_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsiNSaSRGY86g_9rand_core5block9Generator8generateCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 4 dereferenceable(64), ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIduNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE4iterBP_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesE8grow_oneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto10connection5EventE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame6CryptoE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto6shared18EndpointEventInnerE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams11StreamEventE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9cid_state12CidTimestampE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1z_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB19_4LeafE16push_with_handleB1w_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3O_11VacantEntryyB1E_E12insert_entry0EB1K_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyyNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyyNtB19_4LeafE16push_with_handleCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB2N_11VacantEntryyyE12insert_entry0ECshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1J_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3L_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalEB1Q_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMss_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB1z_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyyNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyyNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyyNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB2K_13OccupiedEntryyyE9remove_kv0NtNtB9_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMss_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyyNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto9range_set15array_range_setNtB4_13ArrayRangeSet10insert_one(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto9range_set15array_range_setNtB4_13ArrayRangeSet7pop_min(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0
end_hunk_1
