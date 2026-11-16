Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.10?download=true
inline.NumInlined: 539
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentE10init_frontB2a_:bb.a
    #dbg_value(ptr %.sroa.013.0.1, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr %.sroa.013.0.1, !20927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.1, !20942, !DIExpression(), !20989)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 632, !dbg !20997
    #dbg_value(ptr poison, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(ptr poison, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr poison, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr poison, !20943, !DIExpression(), !20987)
    #dbg_value(i64 %.sroa.011.030, !20951, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20952, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20967)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !20995, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %.sroa.013.0.2, !20943, !DIExpression(), !20987)
    #dbg_value(ptr %.sroa.013.0.2, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr %.sroa.013.0.2, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr %.sroa.013.0.2, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
    #dbg_value(i64 %.sroa.011.030, !20954, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20988)
    #dbg_value(i64 %.sroa.011.030, !20927, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.2, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr %.sroa.013.0.2, !20927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.2, !20942, !DIExpression(), !20989)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 632, !dbg !20997
    #dbg_value(ptr poison, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(ptr poison, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr poison, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr poison, !20943, !DIExpression(), !20987)
    #dbg_value(i64 %.sroa.011.030, !20951, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20952, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20967)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !20995, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %.sroa.013.0.3, !20943, !DIExpression(), !20987)
    #dbg_value(ptr %.sroa.013.0.3, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr %.sroa.013.0.3, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr %.sroa.013.0.3, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
    #dbg_value(i64 %.sroa.011.030, !20954, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20988)
    #dbg_value(i64 %.sroa.011.030, !20927, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.3, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr %.sroa.013.0.3, !20927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.3, !20942, !DIExpression(), !20989)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 632, !dbg !20997
    #dbg_value(ptr poison, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(ptr poison, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr poison, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr poison, !20943, !DIExpression(), !20987)
    #dbg_value(i64 %.sroa.011.030, !20951, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20952, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20967)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !20995, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %.sroa.013.0.4, !20943, !DIExpression(), !20987)
    #dbg_value(ptr %.sroa.013.0.4, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr %.sroa.013.0.4, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr %.sroa.013.0.4, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
    #dbg_value(i64 %.sroa.011.030, !20954, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20988)
    #dbg_value(i64 %.sroa.011.030, !20927, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.4, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr %.sroa.013.0.4, !20927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.4, !20942, !DIExpression(), !20989)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 632, !dbg !20997
    #dbg_value(ptr poison, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(ptr poison, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr poison, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr poison, !20943, !DIExpression(), !20987)
    #dbg_value(i64 %.sroa.011.030, !20951, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20952, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20967)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !20995, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %.sroa.013.0.5, !20943, !DIExpression(), !20987)
    #dbg_value(ptr %.sroa.013.0.5, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr %.sroa.013.0.5, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr %.sroa.013.0.5, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
    #dbg_value(i64 %.sroa.011.030, !20954, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20988)
    #dbg_value(i64 %.sroa.011.030, !20927, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.5, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr %.sroa.013.0.5, !20927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.5, !20942, !DIExpression(), !20989)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 632, !dbg !20997
    #dbg_value(ptr poison, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(ptr poison, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr poison, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr poison, !20943, !DIExpression(), !20987)
    #dbg_value(i64 %.sroa.011.030, !20951, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20952, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20967)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !20995, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %.sroa.013.0.6, !20943, !DIExpression(), !20987)
    #dbg_value(ptr %.sroa.013.0.6, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr %.sroa.013.0.6, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr %.sroa.013.0.6, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(i64 %.sroa.011.030, !20968, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20986)
    #dbg_value(i64 %.sroa.011.030, !20954, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20988)
    #dbg_value(i64 %.sroa.011.030, !20927, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.6, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr %.sroa.013.0.6, !20927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20947)
    #dbg_value(ptr %.sroa.013.0.6, !20942, !DIExpression(), !20989)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 632, !dbg !20997
    #dbg_value(ptr poison, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
    #dbg_value(ptr poison, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr poison, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr poison, !20943, !DIExpression(), !20987)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !20998  ; 2 uses
    #dbg_value(i64 %i.u, !20951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20966)
    #dbg_value(i64 %i.u, !20952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20967)
    #dbg_value(i64 %i.u, !20968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20986)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !20995, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !20943, !DIExpression(), !20987)
    #dbg_value(ptr %.sroa.013.0.7, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(ptr %.sroa.013.0.7, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr %.sroa.013.0.7, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20966)
  %i.v = icmp eq i64 %i.u, 0, !dbg !20996
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !20996
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5yXxDE1DkoT_4tera5value13resolve_index(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 5, 7) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21006 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
    #dbg_value(ptr poison, !21058, !DIExpression(), !21019)
    #dbg_value(ptr poison, !21084, !DIExpression(), !21020)
    #dbg_value(ptr poison, !21082, !DIExpression(), !21021)
    #dbg_value(ptr poison, !21095, !DIExpression(), !21099)
    #dbg_value(ptr poison, !21096, !DIExpression(), !21099)
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %i.e, align 8
    #dbg_value(ptr %1, !21044, !DIExpression(), !21100)
    #dbg_value(ptr %1, !21101, !DIExpression(), !21104)
    #dbg_value(i64 %2, !21045, !DIExpression(), !21100)
    #dbg_declare(ptr %i.d, !21046, !DIExpression(), !21105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21106), !dbg !21127
    #dbg_value(ptr %1, !6021, !DIExpression(), !21026)
  %i.f = load i8, ptr %1, align 8, !dbg !21128, !range !2814, !alias.scope !21106, !noundef !1568 ; 3 uses
  %i.g = icmp ne i8 %i.f, 10, !dbg !21128
  tail call void @llvm.assume(i1 %i.g), !dbg !21128
  %i.h = add nsw i8 %i.f, -2, !dbg !21128
  %i.i = icmp samesign ugt i8 %i.f, 1, !dbg !21128
  %narrow.i = select i1 %i.i, i8 %i.h, i8 8, !dbg !21128 ; 3 uses
  switch i8 %narrow.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit [
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.e
  ], !dbg !21129

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21027)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21130
  %i.k = load i64, ptr %i.j, align 8, !dbg !21130, !alias.scope !21106, !noundef !1568
  %i.l = zext i64 %i.k to i128, !dbg !21130
  br label %.sink.split.i, !dbg !21131

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21028)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21132
  %i.n = load i64, ptr %i.m, align 8, !dbg !21132, !alias.scope !21106, !noundef !1568
  %i.o = sext i64 %i.n to i128, !dbg !21132
  br label %.sink.split.i, !dbg !21133

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21029)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21134
  %i.q = load ptr, ptr %i.p, align 8, !dbg !21134, !alias.scope !21106, !nonnull !1568, !noundef !1568
  %i.r = load i128, ptr %i.q, align 16, !dbg !21134, !noalias !21107, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.r, !6031, !DIExpression(), !21032)
  %i.s = icmp slt i128 %i.r, 0, !dbg !21135
  br i1 %i.s, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread38, label %.sink.split.i, !dbg !21135

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21033)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21136
  %i.u = load ptr, ptr %i.t, align 8, !dbg !21136, !alias.scope !21106, !nonnull !1568, !noundef !1568
  %i.v = load i128, ptr %i.u, align 16, !dbg !21136, !noalias !21107, !noundef !1568
  br label %.sink.split.i, !dbg !21137

.sink.split.i:                                    ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %.sroa.5.034.ph = phi i128 [ %i.l, %bb.b ], [ %i.o, %bb.c ], [ %i.v, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
    #dbg_value(i128 %.sroa.5.034.ph, !21047, !DIExpression(), !21108)
  %i.w = icmp slt i128 %.sroa.5.034.ph, 0, !dbg !21138
  %i.x = zext nneg i64 %2 to i128, !dbg !21138    ; 2 uses
  %i.y = select i1 %i.w, i128 %i.x, i128 0, !dbg !21138
  %storemerge = add nsw i128 %i.y, %.sroa.5.034.ph, !dbg !21138 ; 3 uses
    #dbg_value(ptr undef, !21095, !DIExpression(), !21099)
    #dbg_value(ptr undef, !21096, !DIExpression(), !21099)
    #dbg_value(ptr undef, !21048, !DIExpression(DW_OP_deref), !21109)
    #dbg_value(ptr undef, !21082, !DIExpression(), !21021)
    #dbg_value(ptr poison, !21083, !DIExpression(), !21021)
    #dbg_value(ptr undef, !21084, !DIExpression(), !21020)
    #dbg_value(ptr poison, !21067, !DIExpression(), !21034)
    #dbg_value(ptr poison, !21068, !DIExpression(), !21035)
    #dbg_value(ptr undef, !21058, !DIExpression(), !21019)
    #dbg_value(ptr poison, !21062, !DIExpression(), !21019)
  %.not.i = icmp sgt i128 %storemerge, -1, !dbg !21139
  %i.z = icmp samesign ult i128 %storemerge, %i.x, !dbg !21140
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.z, i1 false, !dbg !21140
    #dbg_value(i1 poison, !21111, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21119)
    #dbg_value(i128 %storemerge, !21116, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !21119)
  %i.aa = trunc i128 %storemerge to i64, !dbg !21141
  %.sroa.0.0 = zext i1 %.sroa.0.0.i to i64, !dbg !21141
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21142
  store i64 %.sroa.0.0, ptr %i.ab, align 8, !dbg !21142
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21142
  store i64 %i.aa, ptr %i.ac, align 8, !dbg !21142
  store i8 -1, ptr %0, align 8, !dbg !21142
  br label %bb.f, !dbg !21143

bb.f:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread38, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, %.sink.split.i
  ret void, !dbg !21144

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread38: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21145
  store i64 0, ptr %i.ad, align 8, !dbg !21145
  store i8 -1, ptr %0, align 8, !dbg !21145
  br label %bb.f, !dbg !21146

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21147
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21104
  %i.af = zext nneg i8 %narrow.i to i64, !dbg !21148
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCs5yXxDE1DkoT_4tera5value13resolve_index, i64 %i.af, !dbg !21148
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !21148
  %i.ag = zext nneg i8 %narrow.i to i64, !dbg !21148
  %switch.gep42 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCs5yXxDE1DkoT_4tera5value13resolve_index.74, i64 %i.ag, !dbg !21148
  %switch.load43 = load i8, ptr %switch.gep42, align 1, !dbg !21148
  %switch.ext = zext i8 %switch.load43 to i64, !dbg !21148
  store ptr %switch.load, ptr %i.b, align 8, !dbg !21104, !captures !2559
  store i64 %switch.ext, ptr %i.ae, align 8, !dbg !21104
    #dbg_value(ptr %i.b, !21050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21121)
    #dbg_value(ptr %i.d, !21050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21149
  store ptr %i.d, ptr %i.a, align 8, !dbg !21149
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21149
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !21149
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21149
  store ptr %i.b, ptr %i.ah, align 8, !dbg !21149
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !21149
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !21149
    #dbg_value(ptr @56, !21122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21126)
    #dbg_value(ptr %i.a, !21122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21126)
    #dbg_value(ptr null, !5145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21039)
    #dbg_value(i64 undef, !5145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21039)
    #dbg_value(ptr poison, !5159, !DIExpression(), !21039)
    #dbg_value(ptr poison, !5163, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21041)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @56, ptr noundef nonnull %i.a), !dbg !21150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21151
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !21152
  br label %bb.f, !dbg !21146
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs5yXxDE1DkoT_4tera5valueNtB5_11SmartStringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !1234 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
    #dbg_value(ptr %0, !6051, !DIExpression(), !21153)
  store ptr %0, ptr %i.b, align 8
    #dbg_value(ptr %1, !6052, !DIExpression(), !21153)
    #dbg_value(ptr %1, !6062, !DIExpression(), !21155)
    #dbg_value(ptr %i.b, !6054, !DIExpression(), !21156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21157
  store ptr %i.b, ptr %i.a, align 8, !dbg !21157
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21157
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value11SmartStringNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !21157
    #dbg_value(ptr @57, !6066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21155)
    #dbg_value(ptr %i.a, !6066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21155)
  %i.c = load ptr, ptr %1, align 8, !dbg !21158, !nonnull !1568, !noundef !1568
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21158
  %i.e = load ptr, ptr %i.d, align 8, !dbg !21158, !nonnull !1568, !align !3192, !noundef !1568
  %i.f = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @57, ptr noundef nonnull %i.a), !dbg !21159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21160
  ret i1 %i.f, !dbg !21161
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21166 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !21248, !DIExpression(), !21255)
    #dbg_value(ptr poison, !21257, !DIExpression(), !21259)
  %i.f = alloca [24 x i8], align 8                ; 12 uses
    #dbg_value(ptr %0, !21238, !DIExpression(), !21260)
    #dbg_value(ptr %1, !21239, !DIExpression(), !21260)
    #dbg_value(ptr %1, !21261, !DIExpression(), !21267)
    #dbg_declare(ptr %i.f, !21240, !DIExpression(), !21268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21314
  store i64 0, ptr %i.f, align 8, !dbg !21315
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !21315 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !dbg !21315
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !21315 ; 2 uses
  store i64 0, ptr %i.h, align 8, !dbg !21315
  %i.i = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.d unwind label %bb.c, !dbg !21316 ; 4 uses

bb.b:                                             ; preds = %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.t, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %common.resume unwind label %bb.p, !dbg !21312

bb.c:                                             ; preds = %bb.h, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr %i.i, !21241, !DIExpression(), !21273)
    #dbg_value(ptr undef, !21257, !DIExpression(), !21259)
    #dbg_value(ptr undef, !21248, !DIExpression(), !21255)
  %.not = icmp eq ptr %i.i, null, !dbg !21317
  br i1 %.not, label %bb.e, label %bb.f, !dbg !21318

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21319
    #dbg_value(ptr %i.f, !21274, !DIExpression(), !21277)
    #dbg_value(ptr %i.f, !21278, !DIExpression(), !21281)
    #dbg_value(ptr %i.f, !21282, !DIExpression(), !21285)
  %i.k = load ptr, ptr %i.g, align 8, !dbg !21320, !nonnull !1568, !noundef !1568
  %i.l = load i64, ptr %i.h, align 8, !dbg !21321, !noundef !1568
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l)
          to label %bb.j unwind label %bb.i, !dbg !21319

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !3547, !DIExpression(), !21179)
    #dbg_value(ptr poison, !3552, !DIExpression(), !21181)
    #dbg_value(ptr poison, !3559, !DIExpression(), !21183)
    #dbg_value(ptr poison, !3566, !DIExpression(), !21185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21322
    #dbg_value(ptr %i.i, !3569, !DIExpression(), !21187)
    #dbg_value(i64 1, !3583, !DIExpression(), !21189)
    #dbg_value(i64 1, !3589, !DIExpression(), !21191)
    #dbg_value(i64 -1, !3595, !DIExpression(), !21193)
    #dbg_value(ptr %i.i, !3600, !DIExpression(), !21195)
    #dbg_value(ptr %i.i, !3587, !DIExpression(), !21189)
  %i.m = ptrtoint ptr %i.i to i64, !dbg !21323    ; 2 uses
    #dbg_value(i64 %i.m, !3574, !DIExpression(), !21196)
  %i.n = and i64 %i.m, 3, !dbg !21324
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %bb.q
    i64 3, label %bb.g
    i64 0, label %bb.q
    i64 1, label %bb.h
  ], !dbg !21325, !prof !3604

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
    #dbg_value(i64 %i.m, !3576, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21197)
    #dbg_value(i64 %i.m, !3607, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21199)
  %i.o = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr), !dbg !21326
    #dbg_value(i8 poison, !3711, !DIExpression(), !21201)
    #dbg_value(ptr poison, !3721, !DIExpression(), !21202)
  %i.p = and i64 %i.m, 1095216660480, !dbg !21327
  %i.q = icmp ne i64 %i.p, 1095216660480, !dbg !21327
  call void @llvm.assume(i1 %i.o), !dbg !21328
  call void @llvm.assume(i1 %i.q), !dbg !21328
  br label %bb.q, !dbg !21329

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.i, !3592, !DIExpression(), !21191)
    #dbg_value(ptr %i.i, !3598, !DIExpression(), !21193)
  %i.r = getelementptr i8, ptr %i.i, i64 -1, !dbg !21330 ; 2 uses
    #dbg_value(ptr %i.r, !3579, !DIExpression(), !21203)
    #dbg_value(ptr %i.r, !3724, !DIExpression(), !21205)
    #dbg_value(ptr %i.r, !3729, !DIExpression(), !21207)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ], !dbg !21331
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21332 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !dbg !21332, !alias.scope !21289
  store i8 3, ptr %i.b, align 8, !dbg !21333, !alias.scope !21289
    #dbg_value(ptr %i.b, !3735, !DIExpression(), !21211)
    #dbg_value(ptr %i.s, !3740, !DIExpression(), !21213)
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.q unwind label %bb.c, !dbg !21334

bb.i:                                             ; preds = %bb.k, %bb.l, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5yXxDE1DkoT_4tera(ptr null) #28
          to label %bb.b unwind label %bb.p, !dbg !21335

bb.j:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !21290), !dbg !21336
    #dbg_declare(ptr %i.d, !21291, !DIExpression(), !21224)
    #dbg_value(ptr @58, !21307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21225)
    #dbg_value(i64 22, !21307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21225)
    #dbg_declare(ptr %i.a, !21309, !DIExpression(), !21226)
  %i.u = load i64, ptr %i.d, align 8, !dbg !21337, !range !3475, !alias.scope !21290, !noundef !1568
  %i.v = trunc nuw i64 %i.u to i1, !dbg !21338
  br i1 %i.v, label %bb.k, label %bb.l, !dbg !21338, !prof !4611

bb.k:                                             ; preds = %bb.j
end_hunk_0
