Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.10?download=true
inline.NumInlined: 539
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value11SmartStringNtB6_7Display3fmtBA_:bb.a

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21761)
    #dbg_value(ptr %i.c, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21762)
    #dbg_value(ptr %i.c, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21763)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !21786
  %i.l = load i8, ptr %i.k, align 1, !dbg !21786, !alias.scope !21775, !noundef !1568 ; 2 uses
  %i.m = zext i8 %i.l to i64, !dbg !21786         ; 2 uses
    #dbg_value(i64 %i.m, !2878, !DIExpression(), !21763)
    #dbg_value(i64 %i.m, !2868, !DIExpression(), !21764)
    #dbg_value(i64 %i.m, !2861, !DIExpression(), !21765)
    #dbg_value(i64 %i.m, !2830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21752)
    #dbg_value(i64 %i.m, !2854, !DIExpression(), !21752)
    #dbg_value(i64 %i.m, !2892, !DIExpression(), !21754)
    #dbg_value(ptr %i.c, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21764)
    #dbg_value(ptr %i.c, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21765)
    #dbg_value(ptr %i.c, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21752)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21764)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21765)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21752)
  %i.n = icmp ult i8 %i.l, 22
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !21787, !prof !2914

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2, !dbg !21788
    #dbg_value(ptr %i.o, !2825, !DIExpression(), !21762)
    #dbg_value(ptr %i.o, !2877, !DIExpression(), !21763)
    #dbg_value(ptr %i.o, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21764)
    #dbg_value(ptr %i.o, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21765)
    #dbg_value(ptr %i.o, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21752)
  br label %_RNvXs_NtCs5yXxDE1DkoT_4tera5valueNtB4_11SmartStringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt.exit, !dbg !21789

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !21790, !noalias !21776
  unreachable, !dbg !21790

_RNvXs_NtCs5yXxDE1DkoT_4tera5valueNtB4_11SmartStringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.d
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.d ], !dbg !21791
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.d ], !dbg !21791
  store ptr %.sroa.0.0.i.i, ptr %i.b, align 8, !dbg !21780, !noalias !21773
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21780
  store i64 %.sroa.3.0.i.i, ptr %i.p, align 8, !dbg !21780, !noalias !21773
    #dbg_value(ptr %i.b, !6150, !DIExpression(), !21766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21792, !noalias !21773
  store ptr %i.b, ptr %i.a, align 8, !dbg !21792, !noalias !21773
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21792
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !21792, !noalias !21773
    #dbg_value(ptr @13, !6155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21743)
    #dbg_value(ptr %i.a, !6155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21743)
  %i.q = load ptr, ptr %1, align 8, !dbg !21793, !alias.scope !21772, !nonnull !1568, !noundef !1568
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21793
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21793, !alias.scope !21772, !nonnull !1568, !align !3192, !noundef !1568
  %i.t = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @13, ptr noundef nonnull %i.a), !dbg !21794, !noalias !21772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21795, !noalias !21773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21795, !noalias !21773
  ret i1 %i.t, !dbg !21796
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !21797 {
bb.a:
    #dbg_value(ptr %0, !21798, !DIExpression(), !21801)
    #dbg_value(ptr %1, !21799, !DIExpression(), !21801)
  %i.a = load ptr, ptr %0, align 8, !dbg !21802, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21803
  ret i1 %i.b, !dbg !21804
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21805 {
bb.a:
    #dbg_value(ptr %0, !21810, !DIExpression(), !21813)
    #dbg_value(ptr %1, !21811, !DIExpression(), !21813)
  %i.a = load ptr, ptr %0, align 8, !dbg !21815, !nonnull !1568, !align !3192, !noundef !1568 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21814), !dbg !21816
    #dbg_value(ptr %i.a, !6159, !DIExpression(), !21809)
    #dbg_value(ptr %1, !6160, !DIExpression(), !21809)
  %i.b = load ptr, ptr %i.a, align 8, !dbg !21817, !alias.scope !21814, !nonnull !1568, !noundef !1568
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21817
  %i.d = load i64, ptr %i.c, align 8, !dbg !21817, !alias.scope !21814, !noundef !1568
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21818, !noalias !21814
  ret i1 %i.e, !dbg !21819
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRbNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21820 {
bb.a:
    #dbg_value(ptr %0, !21821, !DIExpression(), !21824)
    #dbg_value(ptr %1, !21822, !DIExpression(), !21824)
  %i.a = load ptr, ptr %0, align 8, !dbg !21825, !nonnull !1568, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21826
  ret i1 %i.b, !dbg !21827
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRdNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21828 {
bb.a:
    #dbg_value(ptr %0, !21829, !DIExpression(), !21832)
    #dbg_value(ptr %1, !21830, !DIExpression(), !21832)
  %i.a = load ptr, ptr %0, align 8, !dbg !21833, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21834
  ret i1 %i.b, !dbg !21835
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1253 {
bb.a:
    #dbg_value(ptr %0, !6159, !DIExpression(), !21836)
    #dbg_value(ptr %1, !6160, !DIExpression(), !21836)
  %i.a = load ptr, ptr %0, align 8, !dbg !21837, !nonnull !1568, !noundef !1568
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21837
  %i.c = load i64, ptr %i.b, align 8, !dbg !21837, !noundef !1568
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21838
  ret i1 %i.d, !dbg !21839
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRnNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21840 {
bb.a:
    #dbg_value(ptr %0, !21841, !DIExpression(), !21844)
    #dbg_value(ptr %1, !21842, !DIExpression(), !21844)
  %i.a = load ptr, ptr %0, align 8, !dbg !21845, !nonnull !1568, !align !3193, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21846
  ret i1 %i.b, !dbg !21847
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRoNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21848 {
bb.a:
    #dbg_value(ptr %0, !21849, !DIExpression(), !21852)
    #dbg_value(ptr %1, !21850, !DIExpression(), !21852)
  %i.a = load ptr, ptr %0, align 8, !dbg !21853, !nonnull !1568, !align !3193, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21854
  ret i1 %i.b, !dbg !21855
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRxNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21856 {
bb.a:
    #dbg_value(ptr %0, !21857, !DIExpression(), !21860)
    #dbg_value(ptr %1, !21858, !DIExpression(), !21860)
  %i.a = load ptr, ptr %0, align 8, !dbg !21861, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21862
  ret i1 %i.b, !dbg !21863
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRyNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21864 {
bb.a:
    #dbg_value(ptr %0, !21865, !DIExpression(), !21868)
    #dbg_value(ptr %1, !21866, !DIExpression(), !21868)
  %i.a = load ptr, ptr %0, align 8, !dbg !21869, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21870
  ret i1 %i.b, !dbg !21871
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !1240 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !6077, !DIExpression(), !21872)
    #dbg_value(ptr %1, !6079, !DIExpression(), !21872)
    #dbg_value(ptr %1, !6087, !DIExpression(), !21874)
    #dbg_value(ptr %0, !6081, !DIExpression(), !21875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21876
  store ptr %0, ptr %i.a, align 8, !dbg !21876
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21876
  store ptr @_RNvXsV_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !21876
    #dbg_value(ptr @13, !6088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21874)
    #dbg_value(ptr %i.a, !6088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21874)
  %i.b = load ptr, ptr %1, align 8, !dbg !21877, !nonnull !1568, !noundef !1568
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21877
  %i.d = load ptr, ptr %i.c, align 8, !dbg !21877, !nonnull !1568, !align !3192, !noundef !1568
  %i.e = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.a), !dbg !21878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21879
  ret i1 %i.e, !dbg !21880
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !21890 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !22206, !DIExpression(), !22215)
    #dbg_value(ptr poison, !22210, !DIExpression(), !22216)
    #dbg_value(ptr poison, !22218, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22229)
    #dbg_value(ptr poison, !22218, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22231)
    #dbg_value(ptr %0, !22186, !DIExpression(), !22232)
    #dbg_value(ptr %1, !22187, !DIExpression(), !22232)
    #dbg_declare(ptr poison, !22233, !DIExpression(), !22248)
    #dbg_declare(ptr poison, !22233, !DIExpression(), !22278)
    #dbg_declare(ptr poison, !22279, !DIExpression(), !22294)
    #dbg_declare(ptr poison, !22279, !DIExpression(), !22319)
    #dbg_value(ptr poison, !22221, !DIExpression(), !22320)
    #dbg_value(ptr poison, !22221, !DIExpression(), !22321)
  %i.b = load i8, ptr %0, align 8, !dbg !22628, !range !2814, !noundef !1568 ; 4 uses
  %i.c = icmp ne i8 %i.b, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.c), !dbg !22628
  %i.d = add nsw i8 %i.b, -2, !dbg !22628
  %i.e = icmp samesign ugt i8 %i.b, 1, !dbg !22628
  %narrow = select i1 %i.e, i8 %i.d, i8 8, !dbg !22628 ; 5 uses
  %.pr = load i8, ptr %1, align 8, !dbg !22628    ; 25 uses
  switch i8 %narrow, label %thread-pre-split [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 5, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
    i8 10, label %bb.h
    i8 11, label %bb.i
  ], !dbg !22629

thread-pre-split:                                 ; preds = %bb.a, %bb.f
  %i.f = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.f), !dbg !22628
  %i.g = icmp eq i8 %.pr, 7, !dbg !22629
  br i1 %i.g, label %bb.al, label %bb.as, !dbg !22629

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.h), !dbg !22628
  switch i8 %.pr, label %bb.as [
    i8 2, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit
    i8 7, label %bb.al
  ], !dbg !22629

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.i), !dbg !22628
  switch i8 %.pr, label %bb.as [
    i8 3, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit
    i8 7, label %bb.al
  ], !dbg !22629

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.j), !dbg !22628
  switch i8 %.pr, label %bb.as [
    i8 4, label %bb.j
    i8 7, label %bb.al
  ], !dbg !22629

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.k), !dbg !22628
  %i.l = icmp eq i8 %.pr, 7, !dbg !22629
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22232
  %i.n = load double, ptr %i.m, align 8, !dbg !22232, !noundef !1568 ; 11 uses
  br i1 %i.l, label %bb.k, label %bb.l, !dbg !22629

bb.f:                                             ; preds = %bb.a
  %i.o = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.o), !dbg !22628
  %i.p = icmp samesign ult i8 %.pr, 2, !dbg !22628
  br i1 %i.p, label %bb.s, label %thread-pre-split, !dbg !22629

bb.g:                                             ; preds = %bb.a
  %i.q = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.q), !dbg !22628
  switch i8 %.pr, label %bb.as [
    i8 11, label %bb.ac
    i8 7, label %bb.al
  ], !dbg !22629

bb.h:                                             ; preds = %bb.a
  %i.r = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.r), !dbg !22628
  switch i8 %.pr, label %bb.as [
    i8 12, label %bb.af
    i8 7, label %bb.al
  ], !dbg !22629

bb.i:                                             ; preds = %bb.a
  %i.s = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.s), !dbg !22628
  switch i8 %.pr, label %bb.as [
    i8 13, label %bb.ai
    i8 7, label %bb.al
  ], !dbg !22629

_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph, %bb.c, %bb.b, %bb.ae, %bb.bq, %bb.bf, %bb.k, %bb.br, %bb.ah, %bb.ag, %bb.bg, %bb.as, %bb.at, %bb.aj, %bb.ai, %bb.af, %bb.ad, %bb.ac, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75, %bb.ak, %bb.ab, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, %bb.j
  %.sroa.0.0 = phi i1 [ %i.fc, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86 ], [ false, %bb.aj ], [ %spec.select, %bb.k ], [ false, %bb.as ], [ false, %bb.ag ], [ true, %bb.ai ], [ true, %bb.b ], [ %i.x, %bb.j ], [ true, %bb.c ], [ %spec.select108, %bb.bq ], [ %i.bg, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit ], [ %i.ce, %bb.ab ], [ %i.hj, %bb.br ], [ false, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75 ], [ %spec.select107, %bb.bf ], [ true, %bb.ac ], [ false, %bb.ad ], [ %i.dj, %bb.ah ], [ true, %bb.af ], [ %i.dy, %bb.ak ], [ false, %bb.at ], [ false, %bb.bg ], [ true, %bb.ae ], [ %i.cv, %.lr.ph ], !dbg !22232
  ret i1 %.sroa.0.0, !dbg !22630

bb.j:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !22188, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22322)
    #dbg_value(ptr %0, !22323, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22332)
    #dbg_value(ptr %1, !22189, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22341)
    #dbg_value(ptr %1, !22327, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22342)
    #dbg_value(ptr poison, !22335, !DIExpression(), !22343)
    #dbg_value(ptr poison, !22336, !DIExpression(), !22344)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !22631
  %i.u = load i8, ptr %i.t, align 1, !dbg !22631, !range !2817, !noundef !1568
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22632
  %i.w = load i8, ptr %i.v, align 1, !dbg !22632, !range !2817, !noundef !1568
  %i.x = icmp eq i8 %i.u, %i.w, !dbg !22631
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22633

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !22198, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22345)
    #dbg_value(ptr %1, !22199, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22346)
    #dbg_value(double %i.n, !22347, !DIExpression(), !22350)
  %i.y = fcmp uno double %i.n, 0.000000e+00, !dbg !22634
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8          ; 2 uses
    #dbg_value(double %i.aa, !22347, !DIExpression(), !22352)
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false, !dbg !22635
  %i.ac = fcmp oeq double %i.n, %i.aa
  %spec.select = select i1 %or.cond, i1 true, i1 %i.ac, !dbg !22635
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22635

bb.l:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !22200, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22354), !dbg !22230
    #dbg_value(double %i.n, !6178, !DIExpression(), !21913)
    #dbg_value(double %i.n, !6184, !DIExpression(), !21915)
    #dbg_value(double %i.n, !6191, !DIExpression(), !21917)
    #dbg_value(double %i.n, !6194, !DIExpression(), !21919)
    #dbg_value(double %i.n, !6200, !DIExpression(), !21921)
    #dbg_value(double %i.n, !6203, !DIExpression(), !21925)
    #dbg_value(double %i.n, !6191, !DIExpression(), !21927)
    #dbg_value(double %i.n, !6194, !DIExpression(), !21929)
    #dbg_value(double %i.n, !6200, !DIExpression(), !21931)
    #dbg_value(ptr %1, !6181, !DIExpression(), !21913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22355), !dbg !22636
    #dbg_value(ptr %1, !6021, !DIExpression(), !21935)
  %i.ad = add nsw i8 %.pr, -2, !dbg !22637
  %i.ae = icmp samesign ugt i8 %.pr, 1, !dbg !22637
  %narrow.i.i = select i1 %i.ae, i8 %i.ad, i8 8, !dbg !22637
  switch i8 %narrow.i.i, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ], !dbg !22638

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21936)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22639
  %i.ag = load i64, ptr %i.af, align 8, !dbg !22639, !alias.scope !22356, !noundef !1568
  %i.ah = zext i64 %i.ag to i128, !dbg !22639
  br label %.sink.split.i.i, !dbg !22640

bb.n:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21937)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22641
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !22641, !alias.scope !22356, !noundef !1568
  %i.ak = sext i64 %i.aj to i128, !dbg !22641
  br label %.sink.split.i.i, !dbg !22642

bb.o:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21938)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22643
  %i.am = load ptr, ptr %i.al, align 8, !dbg !22643, !alias.scope !22356, !nonnull !1568, !noundef !1568
  %i.an = load i128, ptr %i.am, align 16, !dbg !22643, !noalias !22357, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.an, !6031, !DIExpression(), !21941)
  %i.ao = icmp slt i128 %i.an, 0, !dbg !22644
  br i1 %i.ao, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, label %.sink.split.i.i, !dbg !22644

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i: ; preds = %bb.o
    #dbg_value(i128 %i.an, !6231, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !21942)
    #dbg_value(i128 1, !6231, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !21942)
    #dbg_value(ptr poison, !6232, !DIExpression(), !21943)
    #dbg_value(ptr poison, !6216, !DIExpression(), !21944)
    #dbg_value(i128 %i.an, !6233, !DIExpression(), !21945)
    #dbg_value(i128 %i.an, !6215, !DIExpression(), !21946)
    #dbg_value(i128 %i.an, !6206, !DIExpression(), !21925)
  %or.cond111 = fcmp oge double %i.n, 0.000000e+00, !dbg !22645
  %i.ap = fcmp ult double %i.n, f0x47F0000000000000
  %or.cond112 = and i1 %i.ap, %or.cond111, !dbg !22645
  br i1 %or.cond112, label %bb.r, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22645

bb.p:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21947)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22646
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !22646, !alias.scope !22356, !nonnull !1568, !noundef !1568
  %i.as = load i128, ptr %i.ar, align 16, !dbg !22646, !noalias !22357, !noundef !1568
  br label %.sink.split.i.i, !dbg !22647

.sink.split.i.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.5.0.ph.i = phi i128 [ %i.ah, %bb.m ], [ %i.ak, %bb.n ], [ %i.as, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i, !6182, !DIExpression(), !21948)
    #dbg_value(i128 %.sroa.5.0.ph.i, !6187, !DIExpression(), !21915)
  %i.at = fcmp ord double %i.n, 0.000000e+00, !dbg !22648
  %i.au = fcmp uge double %i.n, f0xC7E0000000000000
  %or.cond109.not123 = and i1 %i.at, %i.au, !dbg !22649
  %i.av = fcmp ult double %i.n, f0x47E0000000000000
  %or.cond110 = and i1 %i.av, %or.cond109.not123, !dbg !22649
  br i1 %or.cond110, label %bb.q, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22649

bb.q:                                             ; preds = %.sink.split.i.i
  %i.aw = tail call double @llvm.floor.f64(double %i.n), !dbg !22650 ; 2 uses
    #dbg_value(double %i.aw, !6188, !DIExpression(), !21949)
  %i.ax = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.aw), !dbg !22651 ; 2 uses
    #dbg_value(ptr poison, !6236, !DIExpression(), !21951)
    #dbg_value(ptr poison, !6239, !DIExpression(), !21952)
  %i.ay = tail call i8 @llvm.scmp.i8.i128(i128 %i.ax, i128 %.sroa.5.0.ph.i), !dbg !22652
  %i.az = icmp eq i128 %i.ax, %.sroa.5.0.ph.i, !dbg !22653
  %i.ba = fcmp ogt double %i.n, %i.aw
  %or.cond.i = and i1 %i.ba, %i.az, !dbg !22653
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %i.ay, !dbg !22653
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22653

bb.r:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i
  %i.bb = tail call double @llvm.floor.f64(double %i.n), !dbg !22654 ; 2 uses
    #dbg_value(double %i.bb, !6207, !DIExpression(), !21953)
  %i.bc = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.bb), !dbg !22655 ; 2 uses
    #dbg_value(ptr poison, !6241, !DIExpression(), !21955)
    #dbg_value(ptr poison, !6245, !DIExpression(), !21956)
  %i.bd = tail call i8 @llvm.ucmp.i8.i128(i128 %i.bc, i128 %i.an), !dbg !22656
  %i.be = icmp eq i128 %i.bc, %i.an, !dbg !22657
  %i.bf = fcmp ogt double %i.n, %i.bb
  %or.cond1.i = and i1 %i.bf, %i.be, !dbg !22657
  %spec.store.select2.i = select i1 %or.cond1.i, i8 1, i8 %i.bd, !dbg !22657
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22657

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit: ; preds = %bb.l, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, %.sink.split.i.i, %bb.q, %bb.r
  %.sroa.0.0.i = phi i8 [ 1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i ], [ %spec.store.select.i, %bb.q ], [ 1, %.sink.split.i.i ], [ 1, %bb.l ], [ %spec.store.select2.i, %bb.r ], !dbg !22658
    #dbg_value(ptr undef, !22218, !DIExpression(), !22231)
  %i.bg = icmp eq i8 %.sroa.0.0.i, 0, !dbg !22659
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22660

bb.s:                                             ; preds = %bb.f
    #dbg_value(ptr %0, !22194, !DIExpression(), !22358)
    #dbg_value(ptr %1, !22195, !DIExpression(), !22358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22359), !dbg !22661
    #dbg_value(ptr %0, !2819, !DIExpression(), !21960)
    #dbg_value(i64 0, !2830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21965)
    #dbg_value(i64 0, !2881, !DIExpression(), !21967)
  %i.bh = trunc nuw i8 %i.b to i1, !dbg !22662
  br i1 %i.bh, label %bb.t, label %bb.u, !dbg !22663

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %0, !2827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21968)
    #dbg_value(ptr %0, !2895, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21970)
    #dbg_value(ptr %0, !2900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21972)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22664
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !22664, !alias.scope !22359, !nonnull !1568, !noundef !1568
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22664
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !22664, !alias.scope !22359, !noundef !1568
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !22665
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !22666

bb.u:                                             ; preds = %bb.s
    #dbg_value(ptr %0, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21974)
    #dbg_value(ptr %0, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21975)
    #dbg_value(ptr %0, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21976)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !22667
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !22667, !alias.scope !22359, !noundef !1568 ; 2 uses
  %i.bp = zext i8 %i.bo to i64, !dbg !22667       ; 2 uses
    #dbg_value(i64 %i.bp, !2878, !DIExpression(), !21976)
    #dbg_value(i64 %i.bp, !2868, !DIExpression(), !21977)
    #dbg_value(i64 %i.bp, !2861, !DIExpression(), !21978)
    #dbg_value(i64 %i.bp, !2830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21965)
    #dbg_value(i64 %i.bp, !2854, !DIExpression(), !21965)
    #dbg_value(i64 %i.bp, !2892, !DIExpression(), !21967)
    #dbg_value(ptr %0, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21977)
    #dbg_value(ptr %0, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21978)
    #dbg_value(ptr %0, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21965)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21977)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21978)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21965)
  %i.bq = icmp ult i8 %i.bo, 22
  br i1 %i.bq, label %bb.v, label %bb.w, !dbg !22668, !prof !2914

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !22669
    #dbg_value(ptr %i.br, !2825, !DIExpression(), !21975)
    #dbg_value(ptr %i.br, !2877, !DIExpression(), !21976)
    #dbg_value(ptr %i.br, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21977)
    #dbg_value(ptr %i.br, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21978)
    #dbg_value(ptr %i.br, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21965)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !22670

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bp, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !22671, !noalias !22359
  unreachable, !dbg !22671

_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit: ; preds = %bb.t, %bb.v
  %.sroa.3.0.i = phi i64 [ %i.bl, %bb.t ], [ %i.bp, %bb.v ], !dbg !22672 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a

bb.ab:                                            ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75
    #dbg_value(ptr %.sroa.0.0.i74, !22374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22381)
    #dbg_value(ptr %.sroa.0.0.i74, !22361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22366)
    #dbg_value(ptr %.sroa.0.0.i72, !22360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22366)
    #dbg_value(ptr %.sroa.0.0.i72, !22373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22381)
    #dbg_value(ptr %.sroa.0.0.i72, !22389, !DIExpression(), !22396)
    #dbg_value(ptr %.sroa.0.0.i74, !22390, !DIExpression(), !22396)
  %bcmp61 = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i72, ptr nonnull %.sroa.0.0.i74, i64 %.sroa.3.0.i), !dbg !22686
  %i.ce = icmp eq i32 %bcmp61, 0, !dbg !22686
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22687

bb.ac:                                            ; preds = %bb.g
    #dbg_value(ptr %0, !22190, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22398)
    #dbg_value(ptr %0, !22306, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22399)
    #dbg_value(ptr %0, !22309, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22400)
    #dbg_value(ptr %1, !22191, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22401)
    #dbg_value(ptr %1, !22307, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22402)
    #dbg_value(ptr %1, !22310, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22403)
    #dbg_value(ptr poison, !22298, !DIExpression(), !22404)
    #dbg_value(ptr poison, !22299, !DIExpression(), !22405)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22688
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !22688, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.cg, !22406, !DIExpression(), !22413)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22689
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !22689, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.ci, !22409, !DIExpression(), !22413)
  %i.cj = icmp eq ptr %i.cg, %i.ci, !dbg !22690
  br i1 %i.cj, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.ad, !dbg !22691

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.cg, !22314, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22414)
    #dbg_value(ptr %i.cg, !22282, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22415)
    #dbg_value(ptr %i.cg, !22416, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22420)
    #dbg_value(ptr %i.cg, !22421, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22425)
    #dbg_value(ptr %i.cg, !22426, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22430)
    #dbg_value(ptr %i.ci, !22315, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22431)
    #dbg_value(ptr %i.ci, !22282, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22432)
    #dbg_value(ptr %i.ci, !22416, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22435)
    #dbg_value(ptr %i.ci, !22421, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22438)
    #dbg_value(ptr %i.ci, !22426, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22441)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !22692
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !22692, !noundef !1568 ; 3 uses
    #dbg_value(i64 %i.cl, !22442, !DIExpression(), !22449)
    #dbg_value(ptr poison, !22445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22450)
    #dbg_value(i64 %i.cl, !22445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22450)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32, !dbg !22693
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !22693, !noundef !1568
    #dbg_value(ptr poison, !22446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22450)
    #dbg_value(i64 %i.cn, !22446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22450)
  %i.co = icmp eq i64 %i.cl, %i.cn, !dbg !22694
  br i1 %i.co, label %bb.ae, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22694

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !22695
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !22695, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.cq, !22446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22450)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !22696
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !22696, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.cs, !22445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22450)
    #dbg_value(ptr %i.cs, !22463, !DIExpression(), !22022)
    #dbg_value(ptr %i.cs, !22472, !DIExpression(), !22025)
    #dbg_value(ptr %i.cq, !22467, !DIExpression(), !22022)
    #dbg_value(ptr %i.cq, !22472, !DIExpression(), !22027)
    #dbg_value(i64 %i.cl, !22468, !DIExpression(), !22022)
    #dbg_value(i64 0, !22469, !DIExpression(), !22028)
  %.not117.not = icmp eq i64 %i.cl, 0, !dbg !22697
  br i1 %.not117.not, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph, !dbg !22697

.lr.ph:                                           ; preds = %bb.ae, %.lr.ph
  %.sroa.01.0.i118 = phi i64 [ %i.cw, %.lr.ph ], [ 0, %bb.ae ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i118, !22469, !DIExpression(), !22028)
    #dbg_value(i64 %.sroa.01.0.i118, !22475, !DIExpression(), !22025)
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %.sroa.01.0.i118, !dbg !22698
    #dbg_value(i64 %.sroa.01.0.i118, !22475, !DIExpression(), !22027)
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.sroa.01.0.i118, !dbg !22699
    #dbg_value(ptr %i.ct, !22477, !DIExpression(), !22031)
    #dbg_value(ptr %i.cu, !22479, !DIExpression(), !22031)
  %i.cv = tail call noundef zeroext i1 @_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu), !dbg !22700, !inline_history !22032 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i118, !22469, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22028)
  %i.cw = add nuw i64 %.sroa.01.0.i118, 1         ; 2 uses
    #dbg_value(i64 %i.cw, !22469, !DIExpression(), !22028)
  %exitcond.not = icmp ne i64 %i.cw, %i.cl
  %or.cond157.not = select i1 %i.cv, i1 %exitcond.not, i1 false, !dbg !22701
  br i1 %or.cond157.not, label %.lr.ph, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22701

bb.af:                                            ; preds = %bb.h
    #dbg_value(ptr %0, !22196, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22484)
    #dbg_value(ptr %0, !22485, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22492)
    #dbg_value(ptr %0, !22501, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22505)
    #dbg_value(ptr %0, !22506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22509)
    #dbg_value(ptr %1, !22197, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22510)
    #dbg_value(ptr %1, !22488, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22511)
    #dbg_value(ptr %1, !22502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22512)
    #dbg_value(ptr %1, !22506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22514)
    #dbg_value(ptr poison, !22495, !DIExpression(), !22515)
    #dbg_value(ptr poison, !22496, !DIExpression(), !22516)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22702
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !22702, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.cy, !22517, !DIExpression(), !22523)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22703
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !22703, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.da, !22520, !DIExpression(), !22523)
  %i.db = icmp eq ptr %i.cy, %i.da, !dbg !22704
  br i1 %i.db, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.ag, !dbg !22522

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22524), !dbg !22508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22525), !dbg !22508
    #dbg_value(ptr %i.cy, !22526, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22043)
    #dbg_value(ptr %i.cy, !22531, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22046)
    #dbg_value(ptr %i.cy, !22533, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22049)
    #dbg_value(ptr %i.da, !22529, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22043)
    #dbg_value(ptr %i.da, !22531, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22051)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 40, !dbg !22705
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !22705, !alias.scope !22524, !noundef !1568
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 40, !dbg !22706
  %i.df = load i64, ptr %i.de, align 8, !dbg !22706, !alias.scope !22525, !noundef !1568
  %.not.i = icmp eq i64 %i.dd, %i.df, !dbg !22707
  br i1 %.not.i, label %bb.ah, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22707

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 16, !dbg !22708
    #dbg_value(ptr %i.dg, !22529, !DIExpression(), !22043)
    #dbg_value(ptr %i.dg, !22531, !DIExpression(), !22051)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16, !dbg !22709
    #dbg_value(ptr %i.dh, !22526, !DIExpression(), !22043)
    #dbg_value(ptr %i.dh, !22531, !DIExpression(), !22046)
    #dbg_value(ptr %i.dh, !22533, !DIExpression(), !22049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22710, !noalias !22537
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBR_5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterBT_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dh), !dbg !22711, !noalias !22525
    #dbg_value(ptr %i.a, !22538, !DIExpression(), !22060)
    #dbg_value(ptr %i.dg, !22541, !DIExpression(), !22060)
  %i.di = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBZ_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRBV_RB1y_ENCNvXs4_B6_INtB6_7HashMapBV_B1y_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.dg) #31, !dbg !22712, !inline_history !22061
    #dbg_value(ptr poison, !22546, !DIExpression(), !22068)
    #dbg_value(ptr poison, !22550, !DIExpression(), !22068)
    #dbg_value(i1 %i.di, !22551, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22069)
    #dbg_value(i8 0, !22552, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22070)
  %i.dj = xor i1 %i.di, true, !dbg !22713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22714, !noalias !22537
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22715

bb.ai:                                            ; preds = %bb.i
    #dbg_value(ptr %0, !22192, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22559)
    #dbg_value(ptr %0, !22261, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22560)
    #dbg_value(ptr %0, !22265, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22561)
    #dbg_value(ptr %1, !22193, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22562)
    #dbg_value(ptr %1, !22262, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22563)
    #dbg_value(ptr %1, !22266, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22564)
    #dbg_value(ptr poison, !22252, !DIExpression(), !22565)
    #dbg_value(ptr poison, !22253, !DIExpression(), !22566)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22716
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !22716, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.dl, !22567, !DIExpression(), !22574)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22717
  %i.dn = load ptr, ptr %i.dm, align 8, !dbg !22717, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.dn, !22570, !DIExpression(), !22574)
  %i.do = icmp eq ptr %i.dl, %i.dn, !dbg !22718
  br i1 %i.do, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.aj, !dbg !22719

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(ptr %i.dl, !22273, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22575)
    #dbg_value(ptr %i.dl, !22236, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22576)
    #dbg_value(ptr %i.dl, !22577, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22580)
    #dbg_value(ptr %i.dl, !22581, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22584)
    #dbg_value(ptr %i.dl, !22585, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22588)
    #dbg_value(ptr %i.dn, !22274, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22589)
    #dbg_value(ptr %i.dn, !22236, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22590)
    #dbg_value(ptr %i.dn, !22577, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22593)
    #dbg_value(ptr %i.dn, !22581, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22596)
    #dbg_value(ptr %i.dn, !22585, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22599)
    #dbg_value(ptr poison, !22389, !DIExpression(), !22602)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 32, !dbg !22720
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !22720, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.dq, !22375, !DIExpression(), !22603)
    #dbg_value(i64 %i.dq, !22388, !DIExpression(), !22602)
    #dbg_value(i64 %i.dq, !22391, !DIExpression(), !22604)
    #dbg_value(ptr poison, !22373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22605)
    #dbg_value(i64 %i.dq, !22373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22605)
    #dbg_value(ptr poison, !22390, !DIExpression(), !22602)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 32, !dbg !22721
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !22721, !noundef !1568
    #dbg_value(ptr poison, !22374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22605)
    #dbg_value(i64 %i.ds, !22374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22605)
  %i.dt = icmp eq i64 %i.dq, %i.ds, !dbg !22722
  br i1 %i.dt, label %bb.ak, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22722

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 24, !dbg !22723
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !22723, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.dv, !22390, !DIExpression(), !22602)
    #dbg_value(ptr %i.dv, !22374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22605)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24, !dbg !22724
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !22724, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.dx, !22389, !DIExpression(), !22602)
    #dbg_value(ptr %i.dx, !22373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22605)
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dx, ptr nonnull %i.dv, i64 %i.dq), !dbg !22725
  %i.dy = icmp eq i32 %bcmp, 0, !dbg !22725
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22726

bb.al:                                            ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b, %thread-pre-split
  %2 = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %2), !dbg !22628
    #dbg_value(ptr %1, !22201, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22615)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22727
  %i.ea = load double, ptr %i.dz, align 8, !dbg !22727, !noundef !1568 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22616), !dbg !22228
    #dbg_value(double %i.ea, !6178, !DIExpression(), !22081)
    #dbg_value(double %i.ea, !6184, !DIExpression(), !22083)
    #dbg_value(double %i.ea, !6191, !DIExpression(), !22085)
    #dbg_value(double %i.ea, !6194, !DIExpression(), !22087)
    #dbg_value(double %i.ea, !6200, !DIExpression(), !22089)
    #dbg_value(double %i.ea, !6203, !DIExpression(), !22093)
    #dbg_value(double %i.ea, !6191, !DIExpression(), !22095)
    #dbg_value(double %i.ea, !6194, !DIExpression(), !22097)
    #dbg_value(double %i.ea, !6200, !DIExpression(), !22099)
    #dbg_value(ptr %0, !6181, !DIExpression(), !22081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22617), !dbg !22728
    #dbg_value(ptr %0, !6021, !DIExpression(), !22103)
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86 [
    i8 3, label %bb.am
    i8 4, label %bb.an
    i8 6, label %bb.ao
    i8 7, label %bb.ap
  ], !dbg !22729

bb.am:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22104)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22730
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !22730, !alias.scope !22618, !noundef !1568
  %i.ed = zext i64 %i.ec to i128, !dbg !22730
  br label %.sink.split.i.i78, !dbg !22731

bb.an:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22105)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22732
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !22732, !alias.scope !22618, !noundef !1568
  %i.eg = sext i64 %i.ef to i128, !dbg !22732
  br label %.sink.split.i.i78, !dbg !22733

bb.ao:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22106)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22734
  %i.ei = load ptr, ptr %i.eh, align 8, !dbg !22734, !alias.scope !22618, !nonnull !1568, !noundef !1568
  %i.ej = load i128, ptr %i.ei, align 16, !dbg !22734, !noalias !22619, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.ej, !6031, !DIExpression(), !22109)
  %i.ek = icmp slt i128 %i.ej, 0, !dbg !22735
  br i1 %i.ek, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83, label %.sink.split.i.i78, !dbg !22735

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83: ; preds = %bb.ao
    #dbg_value(i128 %i.ej, !6231, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22110)
    #dbg_value(i128 1, !6231, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !22110)
    #dbg_value(ptr poison, !6232, !DIExpression(), !22111)
    #dbg_value(ptr poison, !6216, !DIExpression(), !22112)
    #dbg_value(i128 %i.ej, !6233, !DIExpression(), !22113)
    #dbg_value(i128 %i.ej, !6215, !DIExpression(), !22114)
    #dbg_value(i128 %i.ej, !6206, !DIExpression(), !22093)
  %or.cond115 = fcmp oge double %i.ea, 0.000000e+00, !dbg !22736
  %i.el = fcmp ult double %i.ea, f0x47F0000000000000
  %or.cond116 = and i1 %i.el, %or.cond115, !dbg !22736
  br i1 %or.cond116, label %bb.ar, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22736

bb.ap:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22115)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22737
  %i.en = load ptr, ptr %i.em, align 8, !dbg !22737, !alias.scope !22618, !nonnull !1568, !noundef !1568
  %i.eo = load i128, ptr %i.en, align 16, !dbg !22737, !noalias !22619, !noundef !1568
  br label %.sink.split.i.i78, !dbg !22738

.sink.split.i.i78:                                ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.5.0.ph.i79 = phi i128 [ %i.ed, %bb.am ], [ %i.eg, %bb.an ], [ %i.eo, %bb.ap ], [ %i.ej, %bb.ao ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i79, !6182, !DIExpression(), !22116)
    #dbg_value(i128 %.sroa.5.0.ph.i79, !6187, !DIExpression(), !22083)
  %i.ep = fcmp ord double %i.ea, 0.000000e+00, !dbg !22739
  %i.eq = fcmp uge double %i.ea, f0xC7E0000000000000
  %or.cond113.not126 = and i1 %i.ep, %i.eq, !dbg !22740
  %i.er = fcmp ult double %i.ea, f0x47E0000000000000
  %or.cond114 = and i1 %i.er, %or.cond113.not126, !dbg !22740
  br i1 %or.cond114, label %bb.aq, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22740

bb.aq:                                            ; preds = %.sink.split.i.i78
  %i.es = tail call double @llvm.floor.f64(double %i.ea), !dbg !22741 ; 2 uses
    #dbg_value(double %i.es, !6188, !DIExpression(), !22117)
  %i.et = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.es), !dbg !22742 ; 2 uses
    #dbg_value(ptr poison, !6236, !DIExpression(), !22119)
    #dbg_value(ptr poison, !6239, !DIExpression(), !22120)
  %i.eu = tail call i8 @llvm.scmp.i8.i128(i128 %i.et, i128 %.sroa.5.0.ph.i79), !dbg !22743
  %i.ev = icmp eq i128 %i.et, %.sroa.5.0.ph.i79, !dbg !22744
  %i.ew = fcmp ogt double %i.ea, %i.es
  %or.cond.i81 = and i1 %i.ew, %i.ev, !dbg !22744
  %spec.store.select.i82 = select i1 %or.cond.i81, i8 1, i8 %i.eu, !dbg !22744
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22744

bb.ar:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83
  %i.ex = tail call double @llvm.floor.f64(double %i.ea), !dbg !22745 ; 2 uses
    #dbg_value(double %i.ex, !6207, !DIExpression(), !22121)
  %i.ey = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.ex), !dbg !22746 ; 2 uses
    #dbg_value(ptr poison, !6241, !DIExpression(), !22123)
    #dbg_value(ptr poison, !6245, !DIExpression(), !22124)
  %i.ez = tail call i8 @llvm.ucmp.i8.i128(i128 %i.ey, i128 %i.ej), !dbg !22747
  %i.fa = icmp eq i128 %i.ey, %i.ej, !dbg !22748
  %i.fb = fcmp ogt double %i.ea, %i.ex
  %or.cond1.i84 = and i1 %i.fb, %i.fa, !dbg !22748
  %spec.store.select2.i85 = select i1 %or.cond1.i84, i8 1, i8 %i.ez, !dbg !22748
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22748

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86: ; preds = %bb.al, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83, %.sink.split.i.i78, %bb.aq, %bb.ar
  %.sroa.0.0.i80 = phi i8 [ 1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83 ], [ %spec.store.select.i82, %bb.aq ], [ 1, %.sink.split.i.i78 ], [ 1, %bb.al ], [ %spec.store.select2.i85, %bb.ar ], !dbg !22749
    #dbg_value(ptr undef, !22218, !DIExpression(), !22229)
  %i.fc = icmp eq i8 %.sroa.0.0.i80, 0, !dbg !22750
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22751

bb.as:                                            ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b, %thread-pre-split
  %3 = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %3), !dbg !22628
  switch i8 %narrow, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit [
    i8 3, label %bb.at
    i8 4, label %bb.at
    i8 6, label %bb.at
    i8 7, label %bb.at
  ], !dbg !22629

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as
  %i.fd = add nsw i8 %.pr, -2, !dbg !22628
  %i.fe = icmp samesign ugt i8 %.pr, 1, !dbg !22628
  %narrow68 = select i1 %i.fe, i8 %i.fd, i8 8, !dbg !22628 ; 3 uses
  switch i8 %narrow68, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit [
    i8 3, label %bb.au
    i8 4, label %bb.au
    i8 6, label %bb.au
    i8 7, label %bb.au
  ], !dbg !22629

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22620), !dbg !22752
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22129)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22131)
    #dbg_value(ptr %0, !6271, !DIExpression(), !22132)
  switch i8 %narrow, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit [
    i8 3, label %bb.av
    i8 4, label %bb.aw
    i8 6, label %bb.ax
    i8 7, label %bb.ay
  ], !dbg !22753

bb.av:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22133)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22754
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !22754, !alias.scope !22620, !noundef !1568
  %i.fh = zext i64 %i.fg to i128, !dbg !22754
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22755

bb.aw:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22134)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22756
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !22756, !alias.scope !22620, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fj, !6277, !DIExpression(), !22136)
  %i.fk = icmp sgt i64 %i.fj, -1, !dbg !22757
  br i1 %i.fk, label %bb.az, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22757

bb.ax:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22137)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22758
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !22758, !alias.scope !22620, !nonnull !1568, !noundef !1568
  %i.fn = load i128, ptr %i.fm, align 16, !dbg !22758, !noalias !22621, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22759

bb.ay:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22139)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22760
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !22760, !alias.scope !22620, !nonnull !1568, !noundef !1568
  %i.fq = load i128, ptr %i.fp, align 16, !dbg !22760, !noalias !22621, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.fq, !6282, !DIExpression(), !22141)
  %i.fr = icmp sgt i128 %i.fq, -1, !dbg !22761
  br i1 %i.fr, label %.sink.split.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22761

.sink.split.i:                                    ; preds = %bb.ay
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22762

bb.az:                                            ; preds = %bb.aw
  %i.fs = zext nneg i64 %i.fj to i128, !dbg !22763
    #dbg_value(i128 %i.fs, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22142)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22142)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22764

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit: ; preds = %bb.av, %bb.ax, %bb.az, %bb.au, %bb.aw, %bb.ay, %.sink.split.i
  %.sroa.2.0 = phi i128 [ undef, %bb.au ], [ undef, %bb.ay ], [ undef, %bb.aw ], [ %i.fh, %bb.av ], [ %i.fs, %bb.az ], [ %i.fn, %bb.ax ], [ %i.fq, %.sink.split.i ]
  %storemerge.sink.i.off0 = phi i1 [ false, %bb.au ], [ false, %bb.ay ], [ false, %bb.aw ], [ true, %bb.av ], [ true, %bb.az ], [ true, %bb.ax ], [ true, %.sink.split.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22622), !dbg !22765
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22147)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22149)
    #dbg_value(ptr %1, !6271, !DIExpression(), !22150)
  switch i8 %narrow68, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91 [
    i8 3, label %bb.ba
    i8 4, label %bb.bb
    i8 6, label %bb.bc
    i8 7, label %bb.bd
  ], !dbg !22766

bb.ba:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22151)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22767
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !22767, !alias.scope !22622, !noundef !1568
  %i.fv = zext i64 %i.fu to i128, !dbg !22767
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22768

bb.bb:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22152)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22769
  %i.fx = load i64, ptr %i.fw, align 8, !dbg !22769, !alias.scope !22622, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fx, !6277, !DIExpression(), !22154)
  %i.fy = icmp sgt i64 %i.fx, -1, !dbg !22770
  br i1 %i.fy, label %bb.be, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22770

bb.bc:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22155)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22771
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !22771, !alias.scope !22622, !nonnull !1568, !noundef !1568
  %i.gb = load i128, ptr %i.ga, align 16, !dbg !22771, !noalias !22623, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22772

bb.bd:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22157)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22773
  %i.gd = load ptr, ptr %i.gc, align 8, !dbg !22773, !alias.scope !22622, !nonnull !1568, !noundef !1568
  %i.ge = load i128, ptr %i.gd, align 16, !dbg !22773, !noalias !22623, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.ge, !6282, !DIExpression(), !22159)
  %i.gf = icmp sgt i128 %i.ge, -1, !dbg !22774
  br i1 %i.gf, label %.sink.split.i89, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22774

.sink.split.i89:                                  ; preds = %bb.bd
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22775

bb.be:                                            ; preds = %bb.bb
  %i.gg = zext nneg i64 %i.fx to i128, !dbg !22776
    #dbg_value(i128 %i.gg, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22160)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22160)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22777

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91: ; preds = %bb.ba, %bb.bc, %bb.be, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, %bb.bb, %bb.bd, %.sink.split.i89
  %.sroa.3.0 = phi i128 [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ undef, %bb.bd ], [ undef, %bb.bb ], [ %i.fv, %bb.ba ], [ %i.gg, %bb.be ], [ %i.gb, %bb.bc ], [ %i.ge, %.sink.split.i89 ]
  %storemerge.sink.i88.off0 = phi i1 [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ false, %bb.bd ], [ false, %bb.bb ], [ true, %bb.ba ], [ true, %bb.be ], [ true, %bb.bc ], [ true, %.sink.split.i89 ] ; 2 uses
  br i1 %storemerge.sink.i.off0, label %bb.bf, label %bb.bg, !dbg !22778

bb.bf:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91
  %i.gh = icmp eq i128 %.sroa.2.0, %.sroa.3.0
  %spec.select107 = select i1 %storemerge.sink.i88.off0, i1 %i.gh, i1 false, !dbg !22778
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22778

bb.bg:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91
  br i1 %storemerge.sink.i88.off0, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.bh, !dbg !22778

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22624), !dbg !22779
    #dbg_value(ptr %0, !6021, !DIExpression(), !22164)
  switch i8 %narrow, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit [
    i8 3, label %bb.bi
    i8 4, label %bb.bj
    i8 6, label %bb.bk
    i8 7, label %bb.bl
  ], !dbg !22780

bb.bi:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22165)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22781
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !22781, !alias.scope !22624, !noundef !1568
  %i.gk = zext i64 %i.gj to i128, !dbg !22781
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22782

bb.bj:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22166)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22783
  %i.gm = load i64, ptr %i.gl, align 8, !dbg !22783, !alias.scope !22624, !noundef !1568
  %i.gn = sext i64 %i.gm to i128, !dbg !22783
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22784

bb.bk:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22167)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22785
  %i.gp = load ptr, ptr %i.go, align 8, !dbg !22785, !alias.scope !22624, !nonnull !1568, !noundef !1568
  %i.gq = load i128, ptr %i.gp, align 16, !dbg !22785, !noalias !22625, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.gq, !6031, !DIExpression(), !22170)
  %i.gr = icmp slt i128 %i.gq, 0, !dbg !22786
  br i1 %i.gr, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, label %.sink.split.i93, !dbg !22786

bb.bl:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22171)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22787
  %i.gt = load ptr, ptr %i.gs, align 8, !dbg !22787, !alias.scope !22624, !nonnull !1568, !noundef !1568
  %i.gu = load i128, ptr %i.gt, align 16, !dbg !22787, !noalias !22625, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22788

.sink.split.i93:                                  ; preds = %bb.bk
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22789

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit: ; preds = %bb.bi, %bb.bj, %bb.bl, %bb.bh, %bb.bk, %.sink.split.i93
  %.sroa.4.0 = phi i128 [ undef, %bb.bh ], [ undef, %bb.bk ], [ %i.gk, %bb.bi ], [ %i.gu, %bb.bl ], [ %i.gn, %bb.bj ], [ %i.gq, %.sink.split.i93 ], !dbg !22790
  %storemerge.sink.i95.off0 = phi i1 [ false, %bb.bh ], [ false, %bb.bk ], [ true, %bb.bi ], [ true, %bb.bl ], [ true, %bb.bj ], [ true, %.sink.split.i93 ]
    #dbg_value(ptr undef, !22210, !DIExpression(), !22216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22626), !dbg !22791
    #dbg_value(ptr %1, !6021, !DIExpression(), !22175)
  switch i8 %narrow68, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100 [
    i8 3, label %bb.bm
    i8 4, label %bb.bn
    i8 6, label %bb.bo
    i8 7, label %bb.bp
  ], !dbg !22792

bb.bm:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22176)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22793
  %i.gw = load i64, ptr %i.gv, align 8, !dbg !22793, !alias.scope !22626, !noundef !1568
  %i.gx = zext i64 %i.gw to i128, !dbg !22793
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100, !dbg !22794

end_hunk_1
begin_hunk_2_@_RNvXs4_NtCs5yXxDE1DkoT_4tera4argsNtNtB7_5value5ValueNtB5_12ArgFromValue10from_value:bb.a

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5221, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22833)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22907
  %i.l = load i64, ptr %i.k, align 8, !dbg !22907, !alias.scope !22898, !noundef !1568
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22908
    #dbg_value(ptr %i.m, !5222, !DIExpression(), !22834)
  %.val.i = load ptr, ptr %i.m, align 8, !dbg !22909, !alias.scope !22898 ; 2 uses
    #dbg_value(ptr poison, !5272, !DIExpression(), !22836)
  %i.n = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxoE13new_uninit_inCs5yXxDE1DkoT_4tera(), !dbg !22910, !noalias !22899 ; 2 uses
    #dbg_value(ptr %i.n, !5277, !DIExpression(), !22838)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
    #dbg_value(ptr %.val.i, !5284, !DIExpression(), !22840)
    #dbg_value(ptr %i.n, !5288, !DIExpression(), !22840)
    #dbg_value(ptr %.val.i, !5291, !DIExpression(), !22842)
    #dbg_value(ptr %.val.i, !5299, !DIExpression(), !22844)
    #dbg_value(ptr %i.n, !5297, !DIExpression(), !22842)
    #dbg_value(ptr %i.n, !5302, !DIExpression(), !22844)
    #dbg_value(i64 1, !5303, !DIExpression(), !22844)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val.i, i64 16, i1 false), !dbg !22911, !noalias !22899
  %i.o = ptrtoint ptr %i.n to i64, !dbg !22912
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.i:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22913
    #dbg_value(ptr %i.p, !5223, !DIExpression(), !22845)
  %.val34.i = load ptr, ptr %i.p, align 8, !dbg !22914, !alias.scope !22898 ; 2 uses
    #dbg_value(ptr poison, !5305, !DIExpression(), !22847)
  %i.q = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxnE13new_uninit_inCs5yXxDE1DkoT_4tera(), !dbg !22915, !noalias !22899 ; 2 uses
    #dbg_value(ptr %i.q, !5309, !DIExpression(), !22848)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i) ]
    #dbg_value(ptr %.val34.i, !5316, !DIExpression(), !22850)
    #dbg_value(ptr %i.q, !5319, !DIExpression(), !22850)
    #dbg_value(ptr %.val34.i, !5321, !DIExpression(), !22852)
    #dbg_value(ptr %.val34.i, !5327, !DIExpression(), !22854)
    #dbg_value(ptr %i.q, !5325, !DIExpression(), !22852)
    #dbg_value(ptr %i.q, !5330, !DIExpression(), !22854)
    #dbg_value(i64 1, !5331, !DIExpression(), !22854)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val34.i, i64 16, i1 false), !dbg !22916, !noalias !22899
  %i.r = ptrtoint ptr %i.q to i64, !dbg !22917
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.j:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5224, !DIExpression(), !22855)
    #dbg_value(ptr %1, !5263, !DIExpression(), !22856)
  %i.s = trunc nuw i8 %i.a to i1, !dbg !22918
  br i1 %i.s, label %bb.n, label %bb.o, !dbg !22918

bb.k:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5225, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22857)
    #dbg_value(ptr %1, !5252, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22858)
    #dbg_value(ptr %1, !5333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22860)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22919
  %i.u = load ptr, ptr %i.t, align 8, !dbg !22919, !alias.scope !22898, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.u, !5230, !DIExpression(), !22862)
    #dbg_value(ptr %i.u, !5239, !DIExpression(), !22823)
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !dbg !22920, !noalias !22899
    #dbg_value(i64 %i.v, !5253, !DIExpression(), !22863)
  %i.w = icmp slt i64 %i.v, 0, !dbg !22921
  br i1 %i.w, label %bb.t, label %bb.s, !dbg !22921

bb.l:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5226, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22864)
    #dbg_value(ptr %1, !5245, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22865)
    #dbg_value(ptr %1, !5336, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22867)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22922
  %i.y = load ptr, ptr %i.x, align 8, !dbg !22922, !alias.scope !22898, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.y, !5230, !DIExpression(), !22869)
    #dbg_value(ptr %i.y, !5239, !DIExpression(), !22818)
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !22923, !noalias !22899
    #dbg_value(i64 %i.z, !5246, !DIExpression(), !22870)
  %i.aa = icmp slt i64 %i.z, 0, !dbg !22924
  br i1 %i.aa, label %bb.v, label %bb.u, !dbg !22924

bb.m:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5227, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22871)
    #dbg_value(ptr %1, !5235, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22872)
    #dbg_value(ptr %1, !5339, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22874)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22925
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !22925, !alias.scope !22898, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.ac, !5230, !DIExpression(), !22876)
    #dbg_value(ptr %i.ac, !5239, !DIExpression(), !22813)
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !22926, !noalias !22899
    #dbg_value(i64 %i.ad, !5236, !DIExpression(), !22877)
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !22927
  br i1 %i.ae, label %bb.x, label %bb.w, !dbg !22927

bb.n:                                             ; preds = %bb.j
    #dbg_value(ptr %1, !5267, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22878)
    #dbg_value(ptr %1, !5257, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22879)
    #dbg_value(ptr %1, !5341, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22881)
    #dbg_value(ptr %1, !5268, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22878)
    #dbg_value(ptr %1, !5343, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22883)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22928
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !22928, !alias.scope !22898, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.ag, !5230, !DIExpression(), !22885)
    #dbg_value(ptr %i.ag, !5239, !DIExpression(), !22829)
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !dbg !22929, !noalias !22899
    #dbg_value(i64 %i.ah, !5258, !DIExpression(), !22886)
  %i.ai = icmp slt i64 %i.ah, 0, !dbg !22930
  br i1 %i.ai, label %bb.r, label %bb.q, !dbg !22930

bb.o:                                             ; preds = %bb.j
    #dbg_value(ptr %1, !5264, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22887)
    #dbg_value(ptr %1, !5265, !DIExpression(DW_OP_plus_uconst, 23, DW_OP_stack_value), !22887)
    #dbg_value(ptr %1, !5343, !DIExpression(DW_OP_plus_uconst, 23, DW_OP_stack_value), !22889)
    #dbg_value(ptr %1, !5266, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !22887)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22931
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !22931, !alias.scope !22898, !noundef !1568
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22932
  %.sroa.52.0.copyload.i = load i64, ptr %i.al, align 8, !dbg !22932, !alias.scope !22898
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !22931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.am, i64 6, i1 false), !dbg !22931
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22931
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !22931, !alias.scope !22898
  br label %bb.p, !dbg !22918

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.9.0.i = phi i64 [ %i.ap, %bb.q ], [ %.sroa.52.0.copyload.i, %bb.o ], !dbg !22918
  %.sroa.8.0.i = phi ptr [ %i.ag, %bb.q ], [ %.sroa.4.0.copyload.i, %bb.o ], !dbg !22918
  %.sroa.5.0.i = phi i8 [ %i.ar, %bb.q ], [ %i.ak, %bb.o ], !dbg !22918
  %.sroa.0.0.i = phi i8 [ 1, %bb.q ], [ 0, %bb.o ], !dbg !22918
  %i.an = ptrtoint ptr %.sroa.8.0.i to i64, !dbg !22933
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.q:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22928
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !22934, !alias.scope !22898, !noundef !1568
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22935
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !22935, !range !2817, !alias.scope !22898, !noundef !1568
  br label %bb.p, !dbg !22918

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.trap(), !dbg !22936
  unreachable, !dbg !22936

bb.s:                                             ; preds = %bb.k
  %i.as = ptrtoint ptr %i.u to i64, !dbg !22937
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.t:                                             ; preds = %bb.k
  tail call void @llvm.trap(), !dbg !22938
  unreachable, !dbg !22938

bb.u:                                             ; preds = %bb.l
  %i.at = ptrtoint ptr %i.y to i64, !dbg !22939
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.v:                                             ; preds = %bb.l
  tail call void @llvm.trap(), !dbg !22940
  unreachable, !dbg !22940

bb.w:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %i.ac to i64, !dbg !22941
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.x:                                             ; preds = %bb.m
  tail call void @llvm.trap(), !dbg !22942
  unreachable, !dbg !22942

_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.p, %bb.s, %bb.u, %bb.w
  %.sroa.27.0 = phi i64 [ undef, %bb.w ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.9.0.i, %bb.p ], [ undef, %bb.s ], [ undef, %bb.u ], [ undef, %bb.a ], !dbg !22900
  %.sroa.18.0 = phi i64 [ %i.au, %bb.w ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.l, %bb.g ], [ %i.o, %bb.h ], [ %i.r, %bb.i ], [ %i.an, %bb.p ], [ %i.as, %bb.s ], [ %i.at, %bb.u ], [ undef, %bb.a ], !dbg !22900
  %.sroa.15.0 = phi i8 [ undef, %bb.w ], [ undef, %bb.c ], [ %i.f, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.5.0.i, %bb.p ], [ undef, %bb.s ], [ undef, %bb.u ], [ undef, %bb.a ], !dbg !22900
  %.sroa.0.0 = phi i8 [ 13, %bb.w ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ %.sroa.0.0.i, %bb.p ], [ 11, %bb.s ], [ 12, %bb.u ], [ 2, %bb.a ], !dbg !22901
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22943
  store i8 %.sroa.0.0, ptr %i.av, align 8, !dbg !22943
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !22943
  store i8 %.sroa.15.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !22943
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !22943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i, i64 6, i1 false), !dbg !22943
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22943
  store i64 %.sroa.18.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !22943
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22943
  store i64 %.sroa.27.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !22943
  store i8 -1, ptr %0, align 8, !dbg !22943
  ret void, !dbg !22944
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -2, 2) i8 @_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22958 {
bb.a:
    #dbg_value(ptr poison, !23293, !DIExpression(), !23305)
    #dbg_value(ptr poison, !23293, !DIExpression(), !23345)
    #dbg_value(ptr %0, !23270, !DIExpression(), !23369)
    #dbg_value(ptr %1, !23271, !DIExpression(), !23369)
    #dbg_value(ptr poison, !23297, !DIExpression(), !23370)
    #dbg_declare(ptr poison, !23371, !DIExpression(), !23389)
    #dbg_declare(ptr poison, !23378, !DIExpression(), !23404)
    #dbg_value(ptr poison, !23297, !DIExpression(), !23405)
    #dbg_declare(ptr poison, !23409, !DIExpression(), !23419)
  %i.a = load i8, ptr %0, align 8, !dbg !23731, !range !2814, !noundef !1568 ; 4 uses
  %i.b = icmp ne i8 %i.a, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.b), !dbg !23731
  %i.c = add nsw i8 %i.a, -2, !dbg !23731
  %i.d = icmp samesign ugt i8 %i.a, 1, !dbg !23731
  %narrow = select i1 %i.d, i8 %i.c, i8 8, !dbg !23731 ; 5 uses
  %.pr = load i8, ptr %1, align 8, !dbg !23731    ; 23 uses
  switch i8 %narrow, label %thread-pre-split [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 5, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
    i8 11, label %bb.h
  ], !dbg !23732

thread-pre-split:                                 ; preds = %bb.a, %bb.f
  %2 = icmp eq i8 %.pr, 7, !dbg !23732
  %i.e = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.e), !dbg !23731
  br i1 %2, label %bb.am, label %bb.ax, !dbg !23732

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.f), !dbg !23731
  switch i8 %.pr, label %.thread168 [
    i8 2, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit
    i8 7, label %.thread
  ], !dbg !23732

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.g), !dbg !23731
  switch i8 %.pr, label %.thread168 [
    i8 3, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit
    i8 7, label %.thread
  ], !dbg !23732

bb.d:                                             ; preds = %bb.a
  %i.h = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.h), !dbg !23731
  switch i8 %.pr, label %.thread168 [
    i8 4, label %bb.i
    i8 7, label %.thread
  ], !dbg !23732

bb.e:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.i), !dbg !23731
  %i.j = icmp eq i8 %.pr, 7, !dbg !23732
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23369 ; 2 uses
  br i1 %i.j, label %bb.j, label %bb.k, !dbg !23732

bb.f:                                             ; preds = %bb.a
  %i.l = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.l), !dbg !23731
  %i.m = icmp samesign ult i8 %.pr, 2, !dbg !23731
  br i1 %i.m, label %bb.aa, label %thread-pre-split, !dbg !23732

bb.g:                                             ; preds = %bb.a
  %i.n = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.n), !dbg !23731
  switch i8 %.pr, label %.thread168 [
    i8 11, label %bb.aj
    i8 7, label %.thread
  ], !dbg !23732

bb.h:                                             ; preds = %bb.a
  %i.o = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %i.o), !dbg !23731
  switch i8 %.pr, label %.thread168 [
    i8 13, label %bb.al
    i8 7, label %.thread
  ], !dbg !23732

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit: ; preds = %.lr.ph, %.thread168, %.thread, %bb.c, %bb.b, %.sink.split.i97, %bb.bt, %bb.ar, %bb.au, %bb.as, %.sink.split.i.i82, %bb.av, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87, %bb.at, %bb.aw, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90, %bb.am, %bb.bm, %bb.bp, %._crit_edge, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.sink.split.i.i, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, %bb.k, %bb.z, %bb.y, %bb.bk, %bb.bl, %bb.ax, %bb.ay, %bb.w, %bb.v, %bb.bv, %.sink.split.i142, %bb.al, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79, %bb.i
  %.sroa.0.0 = phi i8 [ 1, %bb.v ], [ -1, %bb.as ], [ %i.hc, %bb.bv ], [ -2, %bb.bm ], [ -2, %bb.ax ], [ %i.hb, %.sink.split.i142 ], [ -1, %bb.bl ], [ %i.dr, %bb.al ], [ 0, %bb.b ], [ %i.t, %bb.i ], [ 0, %bb.c ], [ -2, %bb.ay ], [ %i.ch, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79 ], [ -2, %bb.k ], [ 1, %bb.ar ], [ 1, %bb.bk ], [ %spec.select, %bb.y ], [ %spec.select75, %bb.z ], [ %., %bb.w ], [ -2, %bb.am ], [ -2, %.sink.split.i97 ], [ -2, %bb.bp ], [ 1, %bb.q ], [ %spec.store.select.i, %bb.r ], [ 1, %.sink.split.i.i ], [ -1, %bb.p ], [ 1, %bb.t ], [ %spec.store.select2.i, %bb.u ], [ 1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i ], [ -1, %bb.s ], [ %i.cw, %._crit_edge ], [ %.sroa.0.0.i84.neg, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90 ], [ -1, %bb.aw ], [ -1, %bb.at ], [ -1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87 ], [ -1, %bb.av ], [ -1, %.sink.split.i.i82 ], [ 1, %bb.au ], [ -2, %bb.bt ], [ -2, %.thread168 ], [ -2, %.thread ], [ %i.cz, %.lr.ph ], !dbg !23369
  ret i8 %.sroa.0.0, !dbg !23733

bb.i:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !23272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23420)
    #dbg_value(ptr %0, !23421, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23428)
    #dbg_value(ptr %0, !23429, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23436)
    #dbg_value(ptr %1, !23273, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23437)
    #dbg_value(ptr %1, !23425, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23438)
    #dbg_value(ptr %1, !23433, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23439)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !23734
  %i.q = load i8, ptr %i.p, align 1, !dbg !23734, !range !2817, !noundef !1568
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !23735
  %i.s = load i8, ptr %i.r, align 1, !dbg !23735, !range !2817, !noundef !1568
  %i.t = sub nsw i8 %i.q, %i.s, !dbg !23736
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23737

bb.j:                                             ; preds = %bb.e
    #dbg_value(ptr %i.k, !23280, !DIExpression(), !23440)
    #dbg_value(ptr %i.k, !23441, !DIExpression(), !23448)
    #dbg_value(ptr %i.k, !23449, !DIExpression(DW_OP_deref), !23460)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23738
    #dbg_value(ptr %i.u, !23281, !DIExpression(), !23440)
    #dbg_value(ptr %i.u, !23445, !DIExpression(), !23448)
    #dbg_value(ptr %i.u, !23456, !DIExpression(DW_OP_deref), !23460)
  %i.v = load double, ptr %i.k, align 8, !dbg !23739, !noundef !1568 ; 3 uses
  %i.w = load double, ptr %i.u, align 8, !dbg !23740, !noundef !1568 ; 3 uses
  %i.x = fcmp ugt double %i.v, %i.w, !dbg !23739
  %i.y = fcmp ult double %i.v, %i.w, !dbg !23741  ; 2 uses
  br i1 %i.x, label %bb.v, label %bb.w, !dbg !23742

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !23283, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23470)
  %i.z = load double, ptr %i.k, align 8, !dbg !23743, !noundef !1568 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23471), !dbg !23744
    #dbg_value(double %i.z, !6178, !DIExpression(), !22999)
    #dbg_value(double %i.z, !6184, !DIExpression(), !23001)
    #dbg_value(double %i.z, !6191, !DIExpression(), !23003)
    #dbg_value(double %i.z, !6194, !DIExpression(), !23005)
    #dbg_value(double %i.z, !6200, !DIExpression(), !23007)
    #dbg_value(double %i.z, !6203, !DIExpression(), !23011)
    #dbg_value(double %i.z, !6191, !DIExpression(), !23013)
    #dbg_value(double %i.z, !6194, !DIExpression(), !23015)
    #dbg_value(double %i.z, !6200, !DIExpression(), !23017)
    #dbg_value(ptr %1, !6181, !DIExpression(), !22999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23472), !dbg !23745
    #dbg_value(ptr %1, !6021, !DIExpression(), !23021)
  %i.aa = add nsw i8 %.pr, -2, !dbg !23746
  %i.ab = icmp samesign ugt i8 %.pr, 1, !dbg !23746
  %narrow.i.i = select i1 %i.ab, i8 %i.aa, i8 8, !dbg !23746
  switch i8 %narrow.i.i, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 6, label %bb.n
    i8 7, label %bb.o
  ], !dbg !23747

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23022)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23748
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !23748, !alias.scope !23473, !noundef !1568
  %i.ae = zext i64 %i.ad to i128, !dbg !23748
  br label %.sink.split.i.i, !dbg !23749

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23023)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23750
  %i.ag = load i64, ptr %i.af, align 8, !dbg !23750, !alias.scope !23473, !noundef !1568
  %i.ah = sext i64 %i.ag to i128, !dbg !23750
  br label %.sink.split.i.i, !dbg !23751

bb.n:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23024)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23752
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !23752, !alias.scope !23473, !nonnull !1568, !noundef !1568
  %i.ak = load i128, ptr %i.aj, align 16, !dbg !23752, !noalias !23474, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.ak, !6031, !DIExpression(), !23027)
  %i.al = icmp slt i128 %i.ak, 0, !dbg !23753
  br i1 %i.al, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, label %.sink.split.i.i, !dbg !23753

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i: ; preds = %bb.n
    #dbg_value(i128 %i.ak, !6231, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23028)
    #dbg_value(i128 1, !6231, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !23028)
    #dbg_value(ptr poison, !6232, !DIExpression(), !23029)
    #dbg_value(ptr poison, !6216, !DIExpression(), !23030)
    #dbg_value(i128 %i.ak, !6233, !DIExpression(), !23031)
    #dbg_value(i128 %i.ak, !6215, !DIExpression(), !23032)
    #dbg_value(i128 %i.ak, !6206, !DIExpression(), !23011)
  %i.am = fcmp uno double %i.z, 0.000000e+00, !dbg !23754
  br i1 %i.am, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.s, !dbg !23755

bb.o:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23033)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23756
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !23756, !alias.scope !23473, !nonnull !1568, !noundef !1568
  %i.ap = load i128, ptr %i.ao, align 16, !dbg !23756, !noalias !23474, !noundef !1568
  br label %.sink.split.i.i, !dbg !23757

.sink.split.i.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.5.0.ph.i = phi i128 [ %i.ae, %bb.l ], [ %i.ah, %bb.m ], [ %i.ap, %bb.o ], [ %i.ak, %bb.n ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i, !6182, !DIExpression(), !23034)
    #dbg_value(i128 %.sroa.5.0.ph.i, !6187, !DIExpression(), !23001)
  %i.aq = fcmp uno double %i.z, 0.000000e+00, !dbg !23758
  br i1 %i.aq, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.p, !dbg !23759

bb.p:                                             ; preds = %.sink.split.i.i
  %i.ar = fcmp olt double %i.z, f0xC7E0000000000000, !dbg !23760
  br i1 %i.ar, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.q, !dbg !23760

bb.q:                                             ; preds = %bb.p
  %i.as = fcmp ult double %i.z, f0x47E0000000000000, !dbg !23761
  br i1 %i.as, label %bb.r, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23761

bb.r:                                             ; preds = %bb.q
  %i.at = tail call double @llvm.floor.f64(double %i.z), !dbg !23762 ; 2 uses
    #dbg_value(double %i.at, !6188, !DIExpression(), !23035)
  %i.au = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.at), !dbg !23763 ; 2 uses
    #dbg_value(ptr poison, !6236, !DIExpression(), !23037)
    #dbg_value(ptr poison, !6239, !DIExpression(), !23038)
  %i.av = tail call i8 @llvm.scmp.i8.i128(i128 %i.au, i128 %.sroa.5.0.ph.i), !dbg !23764
  %i.aw = icmp eq i128 %i.au, %.sroa.5.0.ph.i, !dbg !23765
  %i.ax = fcmp ogt double %i.z, %i.at
  %or.cond.i = and i1 %i.ax, %i.aw, !dbg !23765
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %i.av, !dbg !23765
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23765

bb.s:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i
  %i.ay = fcmp olt double %i.z, 0.000000e+00, !dbg !23766
  br i1 %i.ay, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.t, !dbg !23766

bb.t:                                             ; preds = %bb.s
  %i.az = fcmp ult double %i.z, f0x47F0000000000000, !dbg !23767
  br i1 %i.az, label %bb.u, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23767

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call double @llvm.floor.f64(double %i.z), !dbg !23768 ; 2 uses
    #dbg_value(double %i.ba, !6207, !DIExpression(), !23039)
  %i.bb = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.ba), !dbg !23769 ; 2 uses
    #dbg_value(ptr poison, !6241, !DIExpression(), !23041)
    #dbg_value(ptr poison, !6245, !DIExpression(), !23042)
  %i.bc = tail call i8 @llvm.ucmp.i8.i128(i128 %i.bb, i128 %i.ak), !dbg !23770
  %i.bd = icmp eq i128 %i.bb, %i.ak, !dbg !23771
  %i.be = fcmp ogt double %i.z, %i.ba
  %or.cond1.i = and i1 %i.be, %i.bd, !dbg !23771
  %spec.store.select2.i = select i1 %or.cond1.i, i8 1, i8 %i.bc, !dbg !23771
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23771

bb.v:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.x, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23742

bb.w:                                             ; preds = %bb.j
  %. = sext i1 %i.y to i8, !dbg !23448
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23448

bb.x:                                             ; preds = %bb.v
    #dbg_value(i8 -2, !23466, !DIExpression(), !23475)
    #dbg_value(ptr %i.k, !23467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23475)
    #dbg_value(ptr %i.u, !23467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23475)
    #dbg_value(double %i.v, !23476, !DIExpression(), !23479)
  %i.bf = fcmp uno double %i.v, 0.000000e+00, !dbg !23772
    #dbg_value(double %i.w, !23476, !DIExpression(), !23481)
  %i.bg = fcmp uno double %i.w, 0.000000e+00, !dbg !23773 ; 2 uses
  br i1 %i.bf, label %bb.z, label %bb.y, !dbg !23774

bb.y:                                             ; preds = %bb.x
  %spec.select = sext i1 %i.bg to i8, !dbg !23774
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23774

bb.z:                                             ; preds = %bb.x
  %not. = xor i1 %i.bg, true, !dbg !23774
  %spec.select75 = zext i1 %not. to i8, !dbg !23774
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23774

bb.aa:                                            ; preds = %bb.f
    #dbg_value(ptr %0, !23278, !DIExpression(), !23482)
    #dbg_value(ptr %1, !23279, !DIExpression(), !23482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23483), !dbg !23775
    #dbg_value(ptr %0, !2819, !DIExpression(), !23047)
    #dbg_value(i64 0, !2830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23052)
    #dbg_value(i64 0, !2881, !DIExpression(), !23054)
  %i.bh = trunc nuw i8 %i.a to i1, !dbg !23776
  br i1 %i.bh, label %bb.ab, label %bb.ac, !dbg !23777

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %0, !2827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23055)
    #dbg_value(ptr %0, !2895, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23057)
    #dbg_value(ptr %0, !2900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23059)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23778
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !23778, !alias.scope !23483, !nonnull !1568, !noundef !1568
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23778
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !23778, !alias.scope !23483, !noundef !1568
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !23779
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !23780

bb.ac:                                            ; preds = %bb.aa
    #dbg_value(ptr %0, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23061)
    #dbg_value(ptr %0, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !23062)
    #dbg_value(ptr %0, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !23063)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !23781
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !23781, !alias.scope !23483, !noundef !1568 ; 2 uses
  %i.bp = zext i8 %i.bo to i64, !dbg !23781       ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp:bb.a
    #dbg_value(ptr %1, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23087)
    #dbg_value(ptr %1, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23074)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23086)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23087)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23074)
  %i.cb = icmp ult i8 %i.bz, 22
  br i1 %i.cb, label %bb.ah, label %bb.ai, !dbg !23794, !prof !2914

bb.ah:                                            ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !23795
    #dbg_value(ptr %i.cc, !2825, !DIExpression(), !23084)
    #dbg_value(ptr %i.cc, !2877, !DIExpression(), !23085)
    #dbg_value(ptr %i.cc, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23086)
    #dbg_value(ptr %i.cc, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23087)
    #dbg_value(ptr %i.cc, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23074)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79, !dbg !23796

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ca, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !23797, !noalias !23486
  unreachable, !dbg !23797

_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79: ; preds = %bb.af, %bb.ah
  %.sroa.3.0.i77 = phi i64 [ %i.bw, %bb.af ], [ %i.ca, %bb.ah ], !dbg !23798 ; 2 uses
  %.sroa.0.0.i78 = phi ptr [ %i.bx, %bb.af ], [ %i.cc, %bb.ah ], !dbg !23798
    #dbg_value(ptr %.sroa.0.0.i78, !23310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23484)
    #dbg_value(ptr %.sroa.0.0.i78, !23316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23485)
    #dbg_value(i64 %.sroa.3.0.i77, !23310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23484)
    #dbg_value(i64 %.sroa.3.0.i77, !23316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23485)
    #dbg_value(ptr %.sroa.0.0.i76, !23321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23487)
    #dbg_value(ptr %.sroa.0.0.i76, !23325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23488)
    #dbg_value(i64 %.sroa.3.0.i, !23321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23487)
    #dbg_value(i64 %.sroa.3.0.i, !23325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23488)
    #dbg_value(ptr %.sroa.0.0.i78, !23322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23487)
    #dbg_value(ptr %.sroa.0.0.i78, !23326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23488)
    #dbg_value(i64 %.sroa.3.0.i77, !23322, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23487)
    #dbg_value(i64 %.sroa.3.0.i77, !23326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23488)
    #dbg_value(i64 %.sroa.3.0.i, !23333, !DIExpression(), !23489)
  %i.cd = sub i64 %.sroa.3.0.i, %.sroa.3.0.i77, !dbg !23799
    #dbg_value(i64 %i.cd, !23332, !DIExpression(), !23490)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i, i64 %.sroa.3.0.i77), !dbg !23800
    #dbg_value(i64 %spec.store.select, !23333, !DIExpression(), !23489)
    #dbg_value(ptr %.sroa.0.0.i76, !23334, !DIExpression(), !23491)
    #dbg_value(ptr %.sroa.0.0.i78, !23335, !DIExpression(), !23492)
  %i.ce = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i76, ptr nonnull %.sroa.0.0.i78, i64 %spec.store.select), !dbg !23801 ; 2 uses
  %i.cf = sext i32 %i.ce to i64, !dbg !23801
    #dbg_value(i64 %i.cf, !23336, !DIExpression(), !23493)
  %i.cg = icmp eq i32 %i.ce, 0, !dbg !23802
  %spec.store.select2 = select i1 %i.cg, i64 %i.cd, i64 %i.cf, !dbg !23802
    #dbg_value(i64 %spec.store.select2, !23336, !DIExpression(), !23493)
    #dbg_value(ptr undef, !23293, !DIExpression(), !23305)
  %i.ch = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select2, i64 0), !dbg !23803
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23804

bb.aj:                                            ; preds = %bb.g
    #dbg_value(ptr %0, !23274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23494)
    #dbg_value(ptr %0, !23392, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23495)
    #dbg_value(ptr %0, !23496, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23499)
    #dbg_value(ptr %0, !23500, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23504)
    #dbg_value(ptr %1, !23275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23505)
    #dbg_value(ptr %1, !23393, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23506)
    #dbg_value(ptr %1, !23496, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23508)
    #dbg_value(ptr %1, !23500, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23511)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23805
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !23805, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cj, !23397, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23514)
    #dbg_value(ptr %i.cj, !23515, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23518)
    #dbg_value(ptr %i.cj, !23519, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23523)
    #dbg_value(ptr %i.cj, !23524, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23528)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23806
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !23806, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cl, !23398, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23531)
    #dbg_value(ptr %i.cl, !23515, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23533)
    #dbg_value(ptr %i.cl, !23519, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23536)
    #dbg_value(ptr %i.cl, !23524, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23539)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24, !dbg !23807
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !23807, !nonnull !1568, !noundef !1568
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 32, !dbg !23808
  %i.cp = load i64, ptr %i.co, align 8, !dbg !23808, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cn, !23401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23546)
    #dbg_value(ptr %i.cn, !23376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23547)
    #dbg_value(i64 %i.cp, !23401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23546)
    #dbg_value(i64 %i.cp, !23376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23547)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24, !dbg !23809
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !23809, !nonnull !1568, !noundef !1568
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 32, !dbg !23810
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !23810, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cr, !23402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23546)
    #dbg_value(ptr %i.cr, !23377, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23547)
    #dbg_value(i64 %i.ct, !23402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23546)
    #dbg_value(i64 %i.ct, !23377, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23547)
    #dbg_value(ptr %i.cn, !23554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23109)
    #dbg_value(i64 %i.cp, !23554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23109)
    #dbg_value(ptr %i.cr, !23567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23109)
    #dbg_value(i64 %i.ct, !23567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23109)
    #dbg_declare(ptr poison, !23568, !DIExpression(), !23110)
    #dbg_declare(ptr poison, !23569, !DIExpression(), !23111)
    #dbg_value(i64 %i.cp, !23580, !DIExpression(), !23114)
    #dbg_value(i64 %i.cp, !23583, !DIExpression(), !23117)
    #dbg_value(i64 %i.ct, !23581, !DIExpression(), !23114)
    #dbg_value(i64 %i.ct, !23584, !DIExpression(), !23117)
  %i.cu = tail call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.cp, i64 range(i64 0, 384307168202282326) %i.ct), !dbg !23811 ; 2 uses
    #dbg_value(i64 %i.cu, !23570, !DIExpression(), !23118)
    #dbg_value(ptr %i.cn, !23571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23119)
    #dbg_value(i64 %i.cu, !23571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23119)
    #dbg_value(ptr %i.cr, !23572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23120)
    #dbg_value(i64 %i.cu, !23572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23120)
    #dbg_value(i64 0, !23573, !DIExpression(), !23121)
  %.not = icmp eq i64 %i.cu, 0, !dbg !23812
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !23812

bb.ak:                                            ; preds = %.lr.ph
  %i.cv = add nuw i64 %.sroa.01.0.i115, 1, !dbg !23813 ; 2 uses
    #dbg_value(i64 %i.cv, !23573, !DIExpression(), !23121)
  %exitcond.not = icmp eq i64 %i.cv, %i.cu, !dbg !23812
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23812

._crit_edge:                                      ; preds = %bb.ak, %bb.aj
    #dbg_value(ptr poison, !23586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23125)
    #dbg_value(ptr poison, !23586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23125)
    #dbg_declare(ptr poison, !23592, !DIExpression(), !23126)
    #dbg_value(ptr poison, !23598, !DIExpression(), !23129)
    #dbg_value(ptr poison, !23601, !DIExpression(), !23129)
    #dbg_value(ptr poison, !23604, !DIExpression(), !23132)
    #dbg_value(ptr poison, !23602, !DIExpression(), !23129)
    #dbg_value(ptr poison, !23607, !DIExpression(), !23132)
  %i.cw = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.cp, i64 %i.ct), !dbg !23814
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23815

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %.sroa.01.0.i115 = phi i64 [ %i.cv, %bb.ak ], [ 0, %bb.aj ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i115, !23573, !DIExpression(), !23121)
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.sroa.01.0.i115, !dbg !23816
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %.sroa.01.0.i115, !dbg !23817
    #dbg_value(ptr poison, !23610, !DIExpression(), !23140)
    #dbg_value(ptr %i.cx, !23623, !DIExpression(), !23140)
    #dbg_value(ptr %i.cy, !23624, !DIExpression(), !23140)
  %i.cz = tail call noundef i8 @_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy), !dbg !23818, !inline_history !23141 ; 2 uses
  %i.da = icmp eq i8 %i.cz, 0, !dbg !23819
    #dbg_value(i8 poison, !23627, !DIExpression(), !23150)
    #dbg_value(i64 %.sroa.01.0.i115, !23573, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23121)
  br i1 %i.da, label %bb.ak, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23820

bb.al:                                            ; preds = %bb.h
    #dbg_value(ptr %0, !23276, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23645)
    #dbg_value(ptr %0, !23349, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23646)
    #dbg_value(ptr %0, !23647, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23650)
    #dbg_value(ptr %0, !23651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23654)
    #dbg_value(ptr %1, !23277, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23655)
    #dbg_value(ptr %1, !23350, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23656)
    #dbg_value(ptr %1, !23647, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23658)
    #dbg_value(ptr %1, !23651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23661)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23821
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !23821, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.dc, !23355, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23663)
    #dbg_value(ptr %i.dc, !23664, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23667)
    #dbg_value(ptr %i.dc, !23668, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23671)
    #dbg_value(ptr %i.dc, !23672, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23675)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23822
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !23822, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.de, !23356, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23678)
    #dbg_value(ptr %i.de, !23664, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23680)
    #dbg_value(ptr %i.de, !23668, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23683)
    #dbg_value(ptr %i.de, !23672, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23686)
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 24, !dbg !23823
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !23823, !nonnull !1568, !noundef !1568
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 32, !dbg !23824
  %i.di = load i64, ptr %i.dh, align 8, !dbg !23824, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.di, !23328, !DIExpression(), !23690)
    #dbg_value(ptr %i.dg, !23362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23691)
    #dbg_value(ptr %i.dg, !23366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23692)
    #dbg_value(ptr %i.dg, !23325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23693)
    #dbg_value(i64 %i.di, !23362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23691)
    #dbg_value(i64 %i.di, !23366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23692)
    #dbg_value(i64 %i.di, !23325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23693)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !23825
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !23825, !nonnull !1568, !noundef !1568
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 32, !dbg !23826
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !23826, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.dk, !23363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23691)
    #dbg_value(ptr %i.dk, !23367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23692)
    #dbg_value(ptr %i.dk, !23326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23693)
    #dbg_value(i64 %i.dm, !23363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23691)
    #dbg_value(i64 %i.dm, !23367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23692)
    #dbg_value(i64 %i.dm, !23326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23693)
  %i.dn = sub i64 %i.di, %i.dm, !dbg !23827
    #dbg_value(i64 %i.dn, !23327, !DIExpression(), !23700)
  %spec.store.select1 = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dm), !dbg !23828
    #dbg_value(i64 %spec.store.select1, !23328, !DIExpression(), !23690)
    #dbg_value(ptr %i.dg, !23329, !DIExpression(), !23701)
    #dbg_value(ptr %i.dk, !23330, !DIExpression(), !23702)
  %i.do = tail call i32 @memcmp(ptr nonnull %i.dg, ptr nonnull %i.dk, i64 %spec.store.select1), !dbg !23829 ; 2 uses
  %i.dp = sext i32 %i.do to i64, !dbg !23829
    #dbg_value(i64 %i.dp, !23331, !DIExpression(), !23703)
  %i.dq = icmp eq i32 %i.do, 0, !dbg !23830
  %spec.store.select3 = select i1 %i.dq, i64 %i.dn, i64 %i.dp, !dbg !23830
    #dbg_value(i64 %spec.store.select3, !23331, !DIExpression(), !23703)
    #dbg_value(ptr undef, !23293, !DIExpression(), !23345)
  %i.dr = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select3, i64 0), !dbg !23831
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23832

.thread:                                          ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %3 = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %3), !dbg !23731
    #dbg_value(ptr %1, !23284, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23704)
    #dbg_value(double poison, !6178, !DIExpression(), !23161)
    #dbg_value(double poison, !6184, !DIExpression(), !23163)
    #dbg_value(double poison, !6191, !DIExpression(), !23165)
    #dbg_value(double poison, !6194, !DIExpression(), !23167)
    #dbg_value(double poison, !6200, !DIExpression(), !23169)
    #dbg_value(double poison, !6203, !DIExpression(), !23173)
    #dbg_value(double poison, !6191, !DIExpression(), !23175)
    #dbg_value(double poison, !6194, !DIExpression(), !23177)
    #dbg_value(double poison, !6200, !DIExpression(), !23179)
    #dbg_value(ptr %0, !6181, !DIExpression(), !23161)
    #dbg_value(ptr %0, !6021, !DIExpression(), !23181)
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23833

bb.am:                                            ; preds = %thread-pre-split
    #dbg_value(ptr %1, !23284, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23704)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23834
  %i.dt = load double, ptr %i.ds, align 8, !dbg !23834, !noundef !1568 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23705), !dbg !23835
    #dbg_value(double %i.dt, !6178, !DIExpression(), !23161)
    #dbg_value(double %i.dt, !6184, !DIExpression(), !23163)
    #dbg_value(double %i.dt, !6191, !DIExpression(), !23165)
    #dbg_value(double %i.dt, !6194, !DIExpression(), !23167)
    #dbg_value(double %i.dt, !6200, !DIExpression(), !23169)
    #dbg_value(double %i.dt, !6203, !DIExpression(), !23173)
    #dbg_value(double %i.dt, !6191, !DIExpression(), !23175)
    #dbg_value(double %i.dt, !6194, !DIExpression(), !23177)
    #dbg_value(double %i.dt, !6200, !DIExpression(), !23179)
    #dbg_value(ptr %0, !6181, !DIExpression(), !23161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23706), !dbg !23836
    #dbg_value(ptr %0, !6021, !DIExpression(), !23181)
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.an
    i8 4, label %bb.ao
    i8 6, label %bb.ap
    i8 7, label %bb.aq
  ], !dbg !23833

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23186)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23837
  %i.dv = load i64, ptr %i.du, align 8, !dbg !23837, !alias.scope !23707, !noundef !1568
  %i.dw = zext i64 %i.dv to i128, !dbg !23837
  br label %.sink.split.i.i82, !dbg !23838

bb.ao:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23187)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23839
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !23839, !alias.scope !23707, !noundef !1568
  %i.dz = sext i64 %i.dy to i128, !dbg !23839
  br label %.sink.split.i.i82, !dbg !23840

bb.ap:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23188)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23841
  %i.eb = load ptr, ptr %i.ea, align 8, !dbg !23841, !alias.scope !23707, !nonnull !1568, !noundef !1568
  %i.ec = load i128, ptr %i.eb, align 16, !dbg !23841, !noalias !23708, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.ec, !6031, !DIExpression(), !23191)
  %i.ed = icmp slt i128 %i.ec, 0, !dbg !23842
  br i1 %i.ed, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87, label %.sink.split.i.i82, !dbg !23842

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87: ; preds = %bb.ap
    #dbg_value(i128 %i.ec, !6231, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23192)
    #dbg_value(i128 1, !6231, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !23192)
    #dbg_value(ptr poison, !6232, !DIExpression(), !23193)
    #dbg_value(ptr poison, !6216, !DIExpression(), !23194)
    #dbg_value(i128 %i.ec, !6233, !DIExpression(), !23195)
    #dbg_value(i128 %i.ec, !6215, !DIExpression(), !23196)
    #dbg_value(i128 %i.ec, !6206, !DIExpression(), !23173)
  %i.ee = fcmp uno double %i.dt, 0.000000e+00, !dbg !23843
  br i1 %i.ee, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.au, !dbg !23844

bb.aq:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23197)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23845
  %i.eg = load ptr, ptr %i.ef, align 8, !dbg !23845, !alias.scope !23707, !nonnull !1568, !noundef !1568
  %i.eh = load i128, ptr %i.eg, align 16, !dbg !23845, !noalias !23708, !noundef !1568
  br label %.sink.split.i.i82, !dbg !23846

.sink.split.i.i82:                                ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sroa.5.0.ph.i83 = phi i128 [ %i.dw, %bb.an ], [ %i.dz, %bb.ao ], [ %i.eh, %bb.aq ], [ %i.ec, %bb.ap ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i83, !6182, !DIExpression(), !23198)
    #dbg_value(i128 %.sroa.5.0.ph.i83, !6187, !DIExpression(), !23163)
  %i.ei = fcmp uno double %i.dt, 0.000000e+00, !dbg !23847
  br i1 %i.ei, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.ar, !dbg !23848

bb.ar:                                            ; preds = %.sink.split.i.i82
  %i.ej = fcmp olt double %i.dt, f0xC7E0000000000000, !dbg !23849
  br i1 %i.ej, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.as, !dbg !23849

bb.as:                                            ; preds = %bb.ar
  %i.ek = fcmp ult double %i.dt, f0x47E0000000000000, !dbg !23850
  br i1 %i.ek, label %bb.at, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23850

bb.at:                                            ; preds = %bb.as
  %i.el = tail call double @llvm.floor.f64(double %i.dt), !dbg !23851 ; 2 uses
    #dbg_value(double %i.el, !6188, !DIExpression(), !23199)
  %i.em = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.el), !dbg !23852 ; 2 uses
    #dbg_value(ptr poison, !6236, !DIExpression(), !23201)
    #dbg_value(ptr poison, !6239, !DIExpression(), !23202)
  %i.en = tail call i8 @llvm.scmp.i8.i128(i128 %.sroa.5.0.ph.i83, i128 %i.em), !dbg !23853
  %i.eo = icmp eq i128 %i.em, %.sroa.5.0.ph.i83, !dbg !23854
  %i.ep = fcmp ogt double %i.dt, %i.el
  %or.cond.i85 = and i1 %i.ep, %i.eo, !dbg !23854
  br i1 %or.cond.i85, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90, !dbg !23854

bb.au:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87
  %i.eq = fcmp olt double %i.dt, 0.000000e+00, !dbg !23855
  br i1 %i.eq, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.av, !dbg !23855

bb.av:                                            ; preds = %bb.au
  %i.er = fcmp ult double %i.dt, f0x47F0000000000000, !dbg !23856
  br i1 %i.er, label %bb.aw, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23856

bb.aw:                                            ; preds = %bb.av
  %i.es = tail call double @llvm.floor.f64(double %i.dt), !dbg !23857 ; 2 uses
    #dbg_value(double %i.es, !6207, !DIExpression(), !23203)
  %i.et = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.es), !dbg !23858 ; 2 uses
    #dbg_value(ptr poison, !6241, !DIExpression(), !23205)
    #dbg_value(ptr poison, !6245, !DIExpression(), !23206)
  %i.eu = tail call i8 @llvm.ucmp.i8.i128(i128 %i.ec, i128 %i.et), !dbg !23859
  %i.ev = icmp eq i128 %i.et, %i.ec, !dbg !23860
  %i.ew = fcmp ogt double %i.dt, %i.es
  %or.cond1.i88 = and i1 %i.ew, %i.ev, !dbg !23860
  br i1 %or.cond1.i88, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90, !dbg !23860

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90: ; preds = %bb.aw, %bb.at
  %.sroa.0.0.i84.neg = phi i8 [ %i.eu, %bb.aw ], [ %i.en, %bb.at ], !dbg !23861
    #dbg_value(i8 poison, !23415, !DIExpression(), !23709)
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23862

.thread168:                                       ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %4 = icmp ne i8 %.pr, 10, !dbg !23731
  tail call void @llvm.assume(i1 %4), !dbg !23731
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23732

bb.ax:                                            ; preds = %thread-pre-split
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.ay
    i8 4, label %bb.ay
    i8 6, label %bb.ay
    i8 7, label %bb.ay
  ], !dbg !23732

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax
  %i.ex = add nsw i8 %.pr, -2, !dbg !23731
  %i.ey = icmp samesign ugt i8 %.pr, 1, !dbg !23731
  %narrow74 = select i1 %i.ey, i8 %i.ex, i8 8, !dbg !23731 ; 3 uses
  switch i8 %narrow74, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.az
    i8 4, label %bb.az
    i8 6, label %bb.az
    i8 7, label %bb.az
  ], !dbg !23732

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23710), !dbg !23863
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23211)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23213)
    #dbg_value(ptr %0, !6271, !DIExpression(), !23214)
  switch i8 %narrow, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit [
    i8 3, label %bb.ba
    i8 4, label %bb.bb
    i8 6, label %bb.bc
    i8 7, label %bb.bd
  ], !dbg !23864

bb.ba:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23215)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23865
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !23865, !alias.scope !23710, !noundef !1568
  %i.fb = zext i64 %i.fa to i128, !dbg !23865
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23866

bb.bb:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23216)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23867
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !23867, !alias.scope !23710, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fd, !6277, !DIExpression(), !23218)
  %i.fe = icmp sgt i64 %i.fd, -1, !dbg !23868
  br i1 %i.fe, label %bb.be, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23868

bb.bc:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23219)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23869
  %i.fg = load ptr, ptr %i.ff, align 8, !dbg !23869, !alias.scope !23710, !nonnull !1568, !noundef !1568
  %i.fh = load i128, ptr %i.fg, align 16, !dbg !23869, !noalias !23711, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23870

bb.bd:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23221)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23871
  %i.fj = load ptr, ptr %i.fi, align 8, !dbg !23871, !alias.scope !23710, !nonnull !1568, !noundef !1568
  %i.fk = load i128, ptr %i.fj, align 16, !dbg !23871, !noalias !23711, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.fk, !6282, !DIExpression(), !23223)
  %i.fl = icmp sgt i128 %i.fk, -1, !dbg !23872
  br i1 %i.fl, label %.sink.split.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23872

.sink.split.i:                                    ; preds = %bb.bd
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23873

bb.be:                                            ; preds = %bb.bb
  %i.fm = zext nneg i64 %i.fd to i128, !dbg !23874
    #dbg_value(i128 %i.fm, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23224)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23224)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23875

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit: ; preds = %bb.ba, %bb.bc, %bb.be, %bb.az, %bb.bb, %bb.bd, %.sink.split.i
  %.sroa.2.0 = phi i128 [ undef, %bb.az ], [ undef, %bb.bd ], [ undef, %bb.bb ], [ %i.fb, %bb.ba ], [ %i.fm, %bb.be ], [ %i.fh, %bb.bc ], [ %i.fk, %.sink.split.i ]
  %storemerge.sink.i.off0 = phi i1 [ false, %bb.az ], [ false, %bb.bd ], [ false, %bb.bb ], [ true, %bb.ba ], [ true, %bb.be ], [ true, %bb.bc ], [ true, %.sink.split.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23712), !dbg !23876
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23229)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23231)
    #dbg_value(ptr %1, !6271, !DIExpression(), !23232)
  switch i8 %narrow74, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95 [
    i8 3, label %bb.bf
    i8 4, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
  ], !dbg !23877

bb.bf:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23233)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23878
  %i.fo = load i64, ptr %i.fn, align 8, !dbg !23878, !alias.scope !23712, !noundef !1568
  %i.fp = zext i64 %i.fo to i128, !dbg !23878
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23879

bb.bg:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23234)
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23880
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !23880, !alias.scope !23712, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fr, !6277, !DIExpression(), !23236)
  %i.fs = icmp sgt i64 %i.fr, -1, !dbg !23881
  br i1 %i.fs, label %bb.bj, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23881

bb.bh:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23237)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23882
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !23882, !alias.scope !23712, !nonnull !1568, !noundef !1568
  %i.fv = load i128, ptr %i.fu, align 16, !dbg !23882, !noalias !23713, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23883

bb.bi:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23239)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23884
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !23884, !alias.scope !23712, !nonnull !1568, !noundef !1568
  %i.fy = load i128, ptr %i.fx, align 16, !dbg !23884, !noalias !23713, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.fy, !6282, !DIExpression(), !23241)
  %i.fz = icmp sgt i128 %i.fy, -1, !dbg !23885
  br i1 %i.fz, label %.sink.split.i93, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23885

.sink.split.i93:                                  ; preds = %bb.bi
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23886

bb.bj:                                            ; preds = %bb.bg
  %i.ga = zext nneg i64 %i.fr to i128, !dbg !23887
    #dbg_value(i128 %i.ga, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23242)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23242)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23888

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95: ; preds = %bb.bf, %bb.bh, %bb.bj, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, %bb.bg, %bb.bi, %.sink.split.i93
  %.sroa.3.0 = phi i128 [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ undef, %bb.bi ], [ undef, %bb.bg ], [ %i.fp, %bb.bf ], [ %i.ga, %bb.bj ], [ %i.fv, %bb.bh ], [ %i.fy, %.sink.split.i93 ]
  %storemerge.sink.i92.off0 = phi i1 [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ false, %bb.bi ], [ false, %bb.bg ], [ true, %bb.bf ], [ true, %bb.bj ], [ true, %bb.bh ], [ true, %.sink.split.i93 ] ; 2 uses
  br i1 %storemerge.sink.i.off0, label %bb.bk, label %bb.bl, !dbg !23889

bb.bk:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95
  br i1 %storemerge.sink.i92.off0, label %bb.bv, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23889

bb.bl:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95
  br i1 %storemerge.sink.i92.off0, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.bm, !dbg !23889

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23714), !dbg !23890
    #dbg_value(ptr %0, !6021, !DIExpression(), !23246)
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.bn
    i8 4, label %bb.bo
    i8 6, label %bb.bp
    i8 7, label %bb.bq
  ], !dbg !23891

bb.bn:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23247)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23892
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !23892, !alias.scope !23714, !noundef !1568
  %i.gd = zext i64 %i.gc to i128, !dbg !23892
  br label %.sink.split.i97, !dbg !23893

bb.bo:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23248)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23894
  %i.gf = load i64, ptr %i.ge, align 8, !dbg !23894, !alias.scope !23714, !noundef !1568
  %i.gg = sext i64 %i.gf to i128, !dbg !23894
  br label %.sink.split.i97, !dbg !23895

bb.bp:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23249)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23896
  %i.gi = load ptr, ptr %i.gh, align 8, !dbg !23896, !alias.scope !23714, !nonnull !1568, !noundef !1568
  %i.gj = load i128, ptr %i.gi, align 16, !dbg !23896, !noalias !23715, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.gj, !6031, !DIExpression(), !23252)
  %i.gk = icmp slt i128 %i.gj, 0, !dbg !23897
  br i1 %i.gk, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %.sink.split.i97, !dbg !23897

bb.bq:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23253)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23898
  %i.gm = load ptr, ptr %i.gl, align 8, !dbg !23898, !alias.scope !23714, !nonnull !1568, !noundef !1568
  %i.gn = load i128, ptr %i.gm, align 16, !dbg !23898, !noalias !23715, !noundef !1568
  br label %.sink.split.i97, !dbg !23899

.sink.split.i97:                                  ; preds = %bb.bp, %bb.bq, %bb.bo, %bb.bn
  %.sroa.5.0.ph = phi i128 [ %i.gd, %bb.bn ], [ %i.gg, %bb.bo ], [ %i.gn, %bb.bq ], [ %i.gj, %bb.bp ]
    #dbg_value(ptr poison, !23716, !DIExpression(), !23720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23721), !dbg !23900
    #dbg_value(ptr %1, !6021, !DIExpression(), !23258)
  switch i8 %narrow74, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.br
    i8 4, label %bb.bs
    i8 6, label %bb.bt
    i8 7, label %bb.bu
  ], !dbg !23901

bb.br:                                            ; preds = %.sink.split.i97
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23259)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23902
  %i.gp = load i64, ptr %i.go, align 8, !dbg !23902, !alias.scope !23721, !noundef !1568
  %i.gq = zext i64 %i.gp to i128, !dbg !23902
  br label %.sink.split.i142, !dbg !23903

bb.bs:                                            ; preds = %.sink.split.i97
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23260)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23904
  %i.gs = load i64, ptr %i.gr, align 8, !dbg !23904, !alias.scope !23721, !noundef !1568
  %i.gt = sext i64 %i.gs to i128, !dbg !23904
end_hunk_3
begin_hunk_4_@llvm.smin.i128
!22960 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs1_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !23306, file: !5500, line: 48, type: !23308, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23311)
!22961 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core3str6traitseNtNtB6_3cmp3Ord3cmp", scope: !23312, file: !5500, line: 20, type: !23314, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23317)
!22962 = distinct !DISubprogram(name: "cmp<u8>", linkageName: "_RNvXs0_NtNtCsf3Ta7LF998c_4core5slice3cmpShNtNtB9_3cmp3Ord3cmpCs5yXxDE1DkoT_4tera", scope: !23318, file: !4896, line: 39, type: !23320, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1585, retainedNodes: !23323)
!22963 = distinct !DILexicalBlock(scope: !22964, file: !4896, line: 339, column: 9)
!22964 = distinct !DILexicalBlock(scope: !22965, file: !4896, line: 333, column: 9)
!22965 = distinct !DILexicalBlock(scope: !22966, file: !4896, line: 332, column: 9)
!22966 = distinct !DILexicalBlock(scope: !22967, file: !4896, line: 331, column: 9)
!22967 = distinct !DILexicalBlock(scope: !22968, file: !4896, line: 328, column: 9)
!22968 = distinct !DISubprogram(name: "compare<u8>", linkageName: "_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCs5yXxDE1DkoT_4tera", scope: !23324, file: !4896, line: 325, type: !23320, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23338, retainedNodes: !23337)
!22969 = distinct !DILexicalBlock(scope: !22968, file: !4896, line: 328, column: 9)
!22970 = distinct !DILexicalBlock(scope: !22969, file: !4896, line: 331, column: 9)
!22971 = distinct !DILexicalBlock(scope: !22970, file: !4896, line: 332, column: 9)
!22972 = distinct !DILexicalBlock(scope: !22971, file: !4896, line: 333, column: 9)
!22973 = distinct !DILexicalBlock(scope: !22972, file: !4896, line: 339, column: 9)
!22974 = distinct !DISubprogram(name: "partial_cmp<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsS_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpCs5yXxDE1DkoT_4tera", scope: !23346, file: !2894, line: 3789, type: !23348, scopeLine: 3789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1622, retainedNodes: !23351)
!22975 = distinct !DISubprogram(name: "partial_cmp<u8, alloc::alloc::Global, alloc::alloc::Global>", linkageName: "_RNvXsm_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpCs5yXxDE1DkoT_4tera", scope: !23352, file: !2953, line: 4377, type: !23354, scopeLine: 4377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23358, retainedNodes: !23357)
!22976 = distinct !DISubprogram(name: "partial_cmp<u8>", linkageName: "_RNvXs1_NtNtCsf3Ta7LF998c_4core5slice3cmpShNtNtB9_3cmp10PartialOrd11partial_cmpCs5yXxDE1DkoT_4tera", scope: !23359, file: !4896, line: 60, type: !23361, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1585, retainedNodes: !23364)
!22977 = distinct !DISubprogram(name: "partial_compare<u8>", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs5yXxDE1DkoT_4tera", scope: !23365, file: !4896, line: 252, type: !23361, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23338, retainedNodes: !23368)
!22978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<tera::value::Value>", scope: !23373, file: !1313, align: 8, elements: !1568, identifier: "515b6b6d583759d064c5453a5f81cd89")
!22979 = distinct !DILexicalBlock(scope: !22981, file: !4896, line: 191, column: 9)
!22980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}<tera::value::Value>", scope: !23373, file: !1313, align: 8, elements: !1568, identifier: "60ec1af69e129a2a9ab3e87aba95e663")
!22981 = distinct !DILexicalBlock(scope: !22983, file: !4896, line: 189, column: 9)
!22982 = distinct !DISubprogram(name: "partial_compare<tera::value::Value>", linkageName: "_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB5_15SlicePartialOrd15partial_compareBG_", scope: !23372, file: !4896, line: 183, type: !23375, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23381, retainedNodes: !23380)
!22983 = distinct !DILexicalBlock(scope: !22982, file: !4896, line: 184, column: 9)
!22984 = distinct !DISubprogram(name: "partial_cmp<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsS_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpB10_", scope: !23346, file: !2894, line: 3789, type: !23391, scopeLine: 3789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1706, retainedNodes: !23394)
!22985 = distinct !DISubprogram(name: "partial_cmp<tera::value::Value, alloc::alloc::Global, alloc::alloc::Global>", linkageName: "_RNvXsm_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBJ_", scope: !23352, file: !2953, line: 4377, type: !23396, scopeLine: 4377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23400, retainedNodes: !23399)
!22986 = distinct !DISubprogram(name: "partial_cmp<tera::value::Value>", linkageName: "_RNvXs1_NtNtCsf3Ta7LF998c_4core5slice3cmpSNtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB9_3cmp10PartialOrd11partial_cmpBH_", scope: !23359, file: !4896, line: 60, type: !23375, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1699, retainedNodes: !23403)
!22987 = distinct !DILexicalBlock(scope: !22988, file: !3710, line: 1165, column: 13)
!22988 = distinct !DISubprogram(name: "map<core::cmp::Ordering, core::cmp::Ordering, fn(core::cmp::Ordering) -> core::cmp::Ordering>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE3mapBI_NvMBK_BI_7reverseECs5yXxDE1DkoT_4tera", scope: !1257, file: !3710, line: 1160, type: !23411, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23413, declaration: !23414, retainedNodes: !23417)
!22989 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs0_NtNtCsf3Ta7LF998c_4core3cmp5implsbNtB7_10PartialOrd11partial_cmp", scope: !23422, file: !4901, line: 2292, type: !23424, scopeLine: 2292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23426)
!22990 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs2_NtNtCsf3Ta7LF998c_4core3cmp5implsbNtB7_3Ord3cmp", scope: !23430, file: !4901, line: 2389, type: !23432, scopeLine: 2389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23434)
!22991 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsQ_NtNtCsf3Ta7LF998c_4core3cmp5implsdNtB7_10PartialOrd11partial_cmp", scope: !23442, file: !4901, line: 2265, type: !23444, scopeLine: 2265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23446)
!22992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !23450, file: !1313, size: 128, align: 64, elements: !23455, templateParams: !1568, identifier: "f329c24e98d25fbf1b67787312e9a5e3")
!22993 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB7_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp0B9_", scope: !23450, file: !1885, line: 320, type: !23452, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23457)
!22994 = distinct !DILexicalBlock(scope: !22995, file: !3710, line: 1066, column: 13)
!22995 = distinct !DISubprogram(name: "unwrap_or_else<core::cmp::Ordering, tera::value::{impl#7}::partial_cmp::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE14unwrap_or_elseNCNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB1r_5ValueNtBK_10PartialOrd11partial_cmp0EB1t_", scope: !1257, file: !3710, line: 1061, type: !23462, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23464, declaration: !23465, retainedNodes: !23469)
!22996 = distinct !{!22996, i1 true, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number"}
!22997 = distinct !{!22997, !22996, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number: argument 0"}
!22998 = distinct !DILocation(line: 327, column: 40, scope: !22951)
!22999 = distinct !DILocation(line: 0, scope: !1259, inlinedAt: !22998)
!23000 = distinct !DILocation(line: 231, column: 14, scope: !1258, inlinedAt: !22998)
!23001 = distinct !DILocation(line: 0, scope: !1262, inlinedAt: !23000)
!23002 = distinct !DILocation(line: 238, column: 10, scope: !1262, inlinedAt: !23000)
!23003 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !23002)
!23004 = distinct !DILocation(line: 248, column: 19, scope: !1262, inlinedAt: !23000)
!23005 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !23004)
!23006 = distinct !DILocation(line: 50, column: 9, scope: !1264, inlinedAt: !23004)
!23007 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !23006)
!23008 = distinct !DILocation(line: 233, column: 25, scope: !1259, inlinedAt: !22998)
!23009 = distinct !DILocation(line: 1165, column: 29, scope: !1276, inlinedAt: !23008)
!23010 = distinct !DILocation(line: 233, column: 33, scope: !1270, inlinedAt: !23009)
!23011 = distinct !DILocation(line: 0, scope: !1268, inlinedAt: !23010)
!23012 = distinct !DILocation(line: 256, column: 10, scope: !1268, inlinedAt: !23010)
!23013 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !23012)
!23014 = distinct !DILocation(line: 266, column: 19, scope: !1268, inlinedAt: !23010)
!23015 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !23014)
!23016 = distinct !DILocation(line: 50, column: 9, scope: !6235, inlinedAt: !23014)
!23017 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !23016)
!23018 = distinct !{!23018, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!23019 = distinct !{!23019, !23018, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!23020 = distinct !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !22998)
!23021 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !23020)
!23022 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !23020)
!23023 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !23020)
!23024 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !23020)
!23025 = distinct !{!23025, !23018, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!23026 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !23020)
!23027 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !23026)
!23028 = distinct !DILocation(line: 0, scope: !1275, inlinedAt: !23008)
!23029 = distinct !DILocation(line: 1160, column: 34, scope: !1275, inlinedAt: !23008)
!23030 = distinct !DILocation(line: 229, column: 22, scope: !1270, inlinedAt: !23009)
!23031 = distinct !DILocation(line: 0, scope: !1276, inlinedAt: !23008)
!23032 = distinct !DILocation(line: 0, scope: !1270, inlinedAt: !23009)
!23033 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !23020)
!23034 = distinct !DILocation(line: 0, scope: !1258, inlinedAt: !22998)
!23035 = distinct !DILocation(line: 0, scope: !1261, inlinedAt: !23000)
!23036 = distinct !DILocation(line: 249, column: 27, scope: !1261, inlinedAt: !23000)
!23037 = distinct !DILocation(line: 2347, column: 24, scope: !1277, inlinedAt: !23036)
!23038 = distinct !DILocation(line: 2347, column: 31, scope: !1277, inlinedAt: !23036)
!23039 = distinct !DILocation(line: 0, scope: !1267, inlinedAt: !23010)
!23040 = distinct !DILocation(line: 267, column: 27, scope: !1267, inlinedAt: !23010)
!23041 = distinct !DILocation(line: 2347, column: 24, scope: !1278, inlinedAt: !23040)
!23042 = distinct !DILocation(line: 2347, column: 31, scope: !1278, inlinedAt: !23040)
!23043 = distinct !DISubprogram(name: "is_nan", linkageName: "_RNvMNtCsf3Ta7LF998c_4core3f64d6is_nan", scope: !6175, file: !6173, line: 666, type: !6177, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23477)
!23044 = distinct !{!23044, i1 true, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str"}
!23045 = distinct !{!23045, !23044, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str: argument 0"}
!23046 = distinct !DILocation(line: 315, column: 66, scope: !22954)
!23047 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !23046)
!23048 = distinct !DILocation(line: 131, column: 61, scope: !377, inlinedAt: !23046)
!23049 = distinct !DILocation(line: 390, column: 9, scope: !388, inlinedAt: !23048)
!23050 = distinct !DILocation(line: 19, column: 15, scope: !387, inlinedAt: !23049)
!23051 = distinct !DILocation(line: 503, column: 23, scope: !386, inlinedAt: !23050)
!23052 = distinct !DILocation(line: 0, scope: !384, inlinedAt: !23051)
!23053 = distinct !DILocation(line: 407, column: 32, scope: !384, inlinedAt: !23051)
!23054 = distinct !DILocation(line: 0, scope: !393, inlinedAt: !23053)
!23055 = distinct !DILocation(line: 133, column: 25, scope: !376, inlinedAt: !23046)
!23056 = distinct !DILocation(line: 133, column: 34, scope: !376, inlinedAt: !23046)
!23057 = distinct !DILocation(line: 2572, column: 14, scope: !394, inlinedAt: !23056)
!23058 = distinct !DILocation(line: 2573, column: 15, scope: !394, inlinedAt: !23056)
!23059 = distinct !DILocation(line: 2232, column: 14, scope: !396, inlinedAt: !23058)
!23060 = distinct !DILocation(line: 2238, column: 27, scope: !396, inlinedAt: !23058)
!23061 = distinct !DILocation(line: 129, column: 27, scope: !377, inlinedAt: !23046)
!23062 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !23046)
!23063 = distinct !DILocation(line: 0, scope: !388, inlinedAt: !23048)
!23064 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !23049)
!23065 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !23050)
!23066 = distinct !{!23066, i1 true, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str"}
!23067 = distinct !{!23067, !23066, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str: argument 0"}
!23068 = distinct !DILocation(line: 315, column: 90, scope: !22954)
!23069 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !23068)
!23070 = distinct !DILocation(line: 131, column: 61, scope: !377, inlinedAt: !23068)
!23071 = distinct !DILocation(line: 390, column: 9, scope: !388, inlinedAt: !23070)
!23072 = distinct !DILocation(line: 19, column: 15, scope: !387, inlinedAt: !23071)
!23073 = distinct !DILocation(line: 503, column: 23, scope: !386, inlinedAt: !23072)
!23074 = distinct !DILocation(line: 0, scope: !384, inlinedAt: !23073)
!23075 = distinct !DILocation(line: 407, column: 32, scope: !384, inlinedAt: !23073)
!23076 = distinct !DILocation(line: 0, scope: !393, inlinedAt: !23075)
!23077 = distinct !DILocation(line: 133, column: 25, scope: !376, inlinedAt: !23068)
!23078 = distinct !DILocation(line: 133, column: 34, scope: !376, inlinedAt: !23068)
!23079 = distinct !DILocation(line: 2572, column: 14, scope: !394, inlinedAt: !23078)
!23080 = distinct !DILocation(line: 2573, column: 15, scope: !394, inlinedAt: !23078)
!23081 = distinct !DILocation(line: 2232, column: 14, scope: !396, inlinedAt: !23080)
!23082 = distinct !DILocation(line: 2238, column: 27, scope: !396, inlinedAt: !23080)
!23083 = distinct !DILocation(line: 129, column: 27, scope: !377, inlinedAt: !23068)
!23084 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !23068)
!23085 = distinct !DILocation(line: 0, scope: !388, inlinedAt: !23070)
!23086 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !23071)
!23087 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !23072)
!23088 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefB10_", scope: !2896, file: !2894, line: 2572, type: !2926, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1706, retainedNodes: !23497)
!23089 = distinct !DISubprogram(name: "inner<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE5innerB10_", scope: !25, file: !2894, line: 2232, type: !2929, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1706, declaration: !2930, retainedNodes: !23501)
!23090 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBY_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEE6as_refB1Q_", scope: !24, file: !2557, line: 450, type: !2950, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1687, declaration: !2951)
!23091 = distinct !DISubprogram(name: "deref<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefBJ_", scope: !2954, file: !2953, line: 3894, type: !2956, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, retainedNodes: !23516)
!23092 = distinct !DISubprogram(name: "as_slice<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueE8as_sliceBI_", scope: !21, file: !2953, line: 1856, type: !2956, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, declaration: !2961, retainedNodes: !23520)
!23093 = distinct !DISubprogram(name: "as_ptr<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueE6as_ptrBI_", scope: !21, file: !2953, line: 1974, type: !2963, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, declaration: !2964, retainedNodes: !23525)
!23094 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, tera::value::Value>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs5yXxDE1DkoT_4tera5value5ValueEB15_", scope: !5, file: !2965, line: 626, type: !2968, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !2969, declaration: !2970)
!23095 = distinct !DISubprogram(name: "ptr<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueE3ptrBQ_", scope: !20, file: !2965, line: 304, type: !2974, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, declaration: !2975)
!23096 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, tera::value::Value>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs5yXxDE1DkoT_4tera5value5ValueEB10_", scope: !5, file: !2965, line: 621, type: !2977, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !2969, declaration: !2978)
!23097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !23100, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23562, templateParams: !23564, identifier: "f6c31f7a876d9a58a99a406747bb34")
!23098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !23100, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23566, templateParams: !23564, identifier: "54454c6d620310902ee118bf65cde002")
!23099 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23100, file: !1313, size: 8, align: 8, elements: !23560, templateParams: !1568, identifier: "53be078152ebe79e494f54169cea8f4")
!23100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::option::Option<core::cmp::Ordering>, !>", scope: !2935, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23557, templateParams: !1568, identifier: "37cc468bb0cc0008aefebab38efa9dca")
!23101 = distinct !DILexicalBlock(scope: !23103, file: !4896, line: 230, column: 37)
!23102 = distinct !DILexicalBlock(scope: !23103, file: !4896, line: 230, column: 37)
!23103 = distinct !DILexicalBlock(scope: !23104, file: !4896, line: 228, column: 5)
!23104 = distinct !DILexicalBlock(scope: !23105, file: !4896, line: 225, column: 5)
!23105 = distinct !DILexicalBlock(scope: !23106, file: !4896, line: 224, column: 5)
!23106 = distinct !DILexicalBlock(scope: !23107, file: !4896, line: 220, column: 5)
!23107 = distinct !DISubprogram(name: "chaining_impl<tera::value::Value, core::option::Option<core::cmp::Ordering>, !, core::slice::cmp::{impl#6}::partial_compare::{closure_env#0}<tera::value::Value>, core::slice::cmp::{impl#6}::partial_compare::{closure_env#1}<tera::value::Value>>", linkageName: "_RINvNtNtCsf3Ta7LF998c_4core5slice3cmp13chaining_implNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtB6_6option6OptionNtNtB6_3cmp8OrderingEzNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB27_s_0EBS_", scope: !4897, file: !4896, line: 214, type: !23556, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23579, retainedNodes: !23576)
!23108 = distinct !DILocation(line: 191, column: 37, scope: !22981, inlinedAt: !23388)
!23109 = distinct !DILocation(line: 0, scope: !23107, inlinedAt: !23108)
!23110 = distinct !DILocation(line: 217, column: 5, scope: !23107, inlinedAt: !23108)
!23111 = distinct !DILocation(line: 218, column: 5, scope: !23107, inlinedAt: !23108)
!23112 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3cmp3minjECs5yXxDE1DkoT_4tera", scope: !1491, file: !4901, line: 1666, type: !5537, scopeLine: 1666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1614, retainedNodes: !23582)
!23113 = distinct !DILocation(line: 220, column: 13, scope: !23107, inlinedAt: !23108)
!23114 = distinct !DILocation(line: 0, scope: !23112, inlinedAt: !23113)
!23115 = distinct !DISubprogram(name: "min", linkageName: "_RNvXsV_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_3Ord3min", scope: !5538, file: !4901, line: 2319, type: !5537, scopeLine: 2319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23585)
!23116 = distinct !DILocation(line: 1667, column: 8, scope: !23112, inlinedAt: !23113)
!23117 = distinct !DILocation(line: 0, scope: !23115, inlinedAt: !23116)
!23118 = distinct !DILocation(line: 0, scope: !23106, inlinedAt: !23108)
!23119 = distinct !DILocation(line: 0, scope: !23105, inlinedAt: !23108)
!23120 = distinct !DILocation(line: 0, scope: !23104, inlinedAt: !23108)
!23121 = distinct !DILocation(line: 0, scope: !23103, inlinedAt: !23108)
!23122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&usize, &usize)", file: !1313, size: 128, align: 64, elements: !23589, templateParams: !1568, identifier: "3cb66d445dff230a928bd4c12b072466")
!23123 = distinct !DISubprogram(name: "call_once<core::slice::cmp::{impl#6}::partial_compare::{closure_env#1}<tera::value::Value>, (&usize, &usize)>", linkageName: "_RNvYNCNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtBa_15SlicePartialOrd15partial_compares_0INtNtNtBe_3ops8function6FnOnceTRjB2r_EE9call_onceBL_", scope: !4682, file: !4679, line: 250, type: !23591, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23596, retainedNodes: !23593)
!23124 = distinct !DILocation(line: 234, column: 5, scope: !23103, inlinedAt: !23108)
!23125 = distinct !DILocation(line: 0, scope: !23123, inlinedAt: !23124)
!23126 = distinct !DILocation(line: 250, column: 5, scope: !23123, inlinedAt: !23124)
!23127 = distinct !DISubprogram(name: "{closure#1}<tera::value::Value>", linkageName: "_RNCNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB7_15SlicePartialOrd15partial_compares_0BI_", scope: !23373, file: !4896, line: 189, type: !23600, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23381, retainedNodes: !23603)
!23128 = distinct !DILocation(line: 250, column: 5, scope: !23123, inlinedAt: !23124)
!23129 = distinct !DILocation(line: 0, scope: !23127, inlinedAt: !23128)
!23130 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsU_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_10PartialOrd11partial_cmp", scope: !5535, file: !4901, line: 2336, type: !23606, scopeLine: 2336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23608)
!23131 = distinct !DILocation(line: 189, column: 65, scope: !23127, inlinedAt: !23128)
!23132 = distinct !DILocation(line: 0, scope: !23130, inlinedAt: !23131)
!23133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !23136, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23618, templateParams: !23619, identifier: "54b5e9db86c35828ae72c2fb48f991cf")
!23134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !23136, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23621, templateParams: !23619, identifier: "ee622b84452614c3750434fa59abe562")
!23135 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23136, file: !1313, size: 8, align: 8, elements: !23616, templateParams: !1568, identifier: "e0964edab1db7a03f8ff4f2ae3a91c68", discriminator: !23622)
!23136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::option::Option<core::cmp::Ordering>, ()>", scope: !2935, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23613, templateParams: !1568, identifier: "42319647a54cd186ae56a8b4873a4bcb")
!23137 = distinct !DILexicalBlock(scope: !23138, file: !4896, line: 186, column: 13)
!23138 = distinct !DISubprogram(name: "{closure#0}<tera::value::Value>", linkageName: "_RNCNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB7_15SlicePartialOrd15partial_compare0BI_", scope: !23373, file: !4896, line: 184, type: !23612, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23381, retainedNodes: !23626)
!23139 = distinct !DILocation(line: 230, column: 9, scope: !23103, inlinedAt: !23108)
!23140 = distinct !DILocation(line: 0, scope: !23138, inlinedAt: !23139)
!23141 = distinct !{null, null}
!23142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !23145, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23636, templateParams: !23638, identifier: "869759e35bca69b5decc96886372aa46")
!23143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !23145, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23640, templateParams: !23638, identifier: "4793cc18c97956a8cc0adee72b3f071e")
!23144 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23145, file: !1313, size: 8, align: 8, elements: !23634, templateParams: !1568, identifier: "34a427344609439f661605cab2bdf82", discriminator: !23641)
!23145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::ops::control_flow::ControlFlow<core::option::Option<core::cmp::Ordering>, !>, ()>", scope: !2935, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23631, templateParams: !1568, identifier: "fbc8fc122ff014eb326d727970f2252b")
!23146 = distinct !DILexicalBlock(scope: !23148, file: !6249, line: 118, column: 13)
!23147 = distinct !DILexicalBlock(scope: !23148, file: !6249, line: 117, column: 13)
!23148 = distinct !DISubprogram(name: "branch<core::option::Option<core::cmp::Ordering>, ()>", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core3ops12control_flowINtB2_11ControlFlowINtNtB6_6option6OptionNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try6branchCs5yXxDE1DkoT_4tera", scope: !23628, file: !6249, line: 115, type: !23630, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23619, retainedNodes: !23644)
!23149 = distinct !DILocation(line: 230, column: 9, scope: !23103, inlinedAt: !23108)
!23150 = distinct !DILocation(line: 0, scope: !23148, inlinedAt: !23149)
!23151 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !2896, file: !2894, line: 2572, type: !3203, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1622, retainedNodes: !23648)
!23152 = distinct !DISubprogram(name: "inner<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE5innerCs5yXxDE1DkoT_4tera", scope: !14, file: !2894, line: 2232, type: !3206, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1622, declaration: !3207, retainedNodes: !23652)
!23153 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBY_3vec3VechEEE6as_refCs5yXxDE1DkoT_4tera", scope: !13, file: !2557, line: 450, type: !3210, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1571, declaration: !3211)
!23154 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !2954, file: !2953, line: 3894, type: !3213, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, retainedNodes: !23665)
!23155 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8as_sliceCs5yXxDE1DkoT_4tera", scope: !7, file: !2953, line: 1856, type: !3213, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, declaration: !3214, retainedNodes: !23669)
!23156 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !2953, line: 1974, type: !3216, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, declaration: !3217, retainedNodes: !23673)
!23157 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs5yXxDE1DkoT_4tera", scope: !5, file: !2965, line: 626, type: !3219, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !3220, declaration: !3221)
!23158 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE3ptrCs5yXxDE1DkoT_4tera", scope: !6, file: !2965, line: 304, type: !3225, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, declaration: !3226)
!23159 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs5yXxDE1DkoT_4tera", scope: !5, file: !2965, line: 621, type: !3228, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !3220, declaration: !3229)
!23160 = distinct !DILocation(line: 328, column: 40, scope: !22950)
!23161 = distinct !DILocation(line: 0, scope: !1259, inlinedAt: !23160)
!23162 = distinct !DILocation(line: 231, column: 14, scope: !1258, inlinedAt: !23160)
!23163 = distinct !DILocation(line: 0, scope: !1262, inlinedAt: !23162)
!23164 = distinct !DILocation(line: 238, column: 10, scope: !1262, inlinedAt: !23162)
!23165 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !23164)
!23166 = distinct !DILocation(line: 248, column: 19, scope: !1262, inlinedAt: !23162)
!23167 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !23166)
!23168 = distinct !DILocation(line: 50, column: 9, scope: !1264, inlinedAt: !23166)
!23169 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !23168)
!23170 = distinct !DILocation(line: 233, column: 25, scope: !1259, inlinedAt: !23160)
!23171 = distinct !DILocation(line: 1165, column: 29, scope: !1276, inlinedAt: !23170)
!23172 = distinct !DILocation(line: 233, column: 33, scope: !1270, inlinedAt: !23171)
!23173 = distinct !DILocation(line: 0, scope: !1268, inlinedAt: !23172)
!23174 = distinct !DILocation(line: 256, column: 10, scope: !1268, inlinedAt: !23172)
!23175 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !23174)
!23176 = distinct !DILocation(line: 266, column: 19, scope: !1268, inlinedAt: !23172)
!23177 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !23176)
!23178 = distinct !DILocation(line: 50, column: 9, scope: !6235, inlinedAt: !23176)
!23179 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !23178)
!23180 = distinct !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !23160)
!23181 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !23180)
!23182 = distinct !{!23182, i1 true, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number"}
!23183 = distinct !{!23183, !23182, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number: argument 0"}
!23184 = distinct !{!23184, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!23185 = distinct !{!23185, !23184, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!23186 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !23180)
!23187 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !23180)
!23188 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !23180)
!23189 = distinct !{!23189, !23184, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!23190 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !23180)
!23191 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !23190)
!23192 = distinct !DILocation(line: 0, scope: !1275, inlinedAt: !23170)
!23193 = distinct !DILocation(line: 1160, column: 34, scope: !1275, inlinedAt: !23170)
!23194 = distinct !DILocation(line: 229, column: 22, scope: !1270, inlinedAt: !23171)
!23195 = distinct !DILocation(line: 0, scope: !1276, inlinedAt: !23170)
!23196 = distinct !DILocation(line: 0, scope: !1270, inlinedAt: !23171)
!23197 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !23180)
!23198 = distinct !DILocation(line: 0, scope: !1258, inlinedAt: !23160)
!23199 = distinct !DILocation(line: 0, scope: !1261, inlinedAt: !23162)
!23200 = distinct !DILocation(line: 249, column: 27, scope: !1261, inlinedAt: !23162)
!23201 = distinct !DILocation(line: 2347, column: 24, scope: !1277, inlinedAt: !23200)
!23202 = distinct !DILocation(line: 2347, column: 31, scope: !1277, inlinedAt: !23200)
!23203 = distinct !DILocation(line: 0, scope: !1267, inlinedAt: !23172)
!23204 = distinct !DILocation(line: 267, column: 27, scope: !1267, inlinedAt: !23172)
!23205 = distinct !DILocation(line: 2347, column: 24, scope: !1278, inlinedAt: !23204)
!23206 = distinct !DILocation(line: 2347, column: 31, scope: !1278, inlinedAt: !23204)
!23207 = distinct !{!23207, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128"}
!23208 = distinct !{!23208, !23207, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 1"}
!23209 = distinct !DILocation(line: 332, column: 30, scope: !22958)
!23210 = distinct !DILocation(line: 592, column: 56, scope: !1290, inlinedAt: !23209)
!23211 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23210)
!23212 = distinct !DILocation(line: 590, column: 54, scope: !1287, inlinedAt: !23209)
!23213 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23212)
!23214 = distinct !DILocation(line: 0, scope: !1289, inlinedAt: !23209)
!23215 = distinct !DILocation(line: 589, column: 29, scope: !1288, inlinedAt: !23209)
!23216 = distinct !DILocation(line: 590, column: 29, scope: !1287, inlinedAt: !23209)
!23217 = distinct !DILocation(line: 590, column: 35, scope: !1287, inlinedAt: !23209)
!23218 = distinct !DILocation(line: 0, scope: !1291, inlinedAt: !23217)
!23219 = distinct !DILocation(line: 591, column: 30, scope: !1286, inlinedAt: !23209)
!23220 = distinct !{!23220, !23207, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 0"}
!23221 = distinct !DILocation(line: 592, column: 30, scope: !1290, inlinedAt: !23209)
!23222 = distinct !DILocation(line: 592, column: 36, scope: !1290, inlinedAt: !23209)
!23223 = distinct !DILocation(line: 0, scope: !1292, inlinedAt: !23222)
!23224 = distinct !DILocation(line: 0, scope: !1285, inlinedAt: !23212)
!23225 = distinct !{!23225, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128"}
!23226 = distinct !{!23226, !23225, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 1"}
!23227 = distinct !DILocation(line: 332, column: 47, scope: !22958)
!23228 = distinct !DILocation(line: 592, column: 56, scope: !1290, inlinedAt: !23227)
!23229 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23228)
!23230 = distinct !DILocation(line: 590, column: 54, scope: !1287, inlinedAt: !23227)
!23231 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23230)
!23232 = distinct !DILocation(line: 0, scope: !1289, inlinedAt: !23227)
!23233 = distinct !DILocation(line: 589, column: 29, scope: !1288, inlinedAt: !23227)
!23234 = distinct !DILocation(line: 590, column: 29, scope: !1287, inlinedAt: !23227)
!23235 = distinct !DILocation(line: 590, column: 35, scope: !1287, inlinedAt: !23227)
!23236 = distinct !DILocation(line: 0, scope: !1291, inlinedAt: !23235)
!23237 = distinct !DILocation(line: 591, column: 30, scope: !1286, inlinedAt: !23227)
!23238 = distinct !{!23238, !23225, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 0"}
!23239 = distinct !DILocation(line: 592, column: 30, scope: !1290, inlinedAt: !23227)
!23240 = distinct !DILocation(line: 592, column: 36, scope: !1290, inlinedAt: !23227)
!23241 = distinct !DILocation(line: 0, scope: !1292, inlinedAt: !23240)
!23242 = distinct !DILocation(line: 0, scope: !1285, inlinedAt: !23230)
!23243 = distinct !{!23243, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!23244 = distinct !{!23244, !23243, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!23245 = distinct !DILocation(line: 340, column: 43, scope: !22958)
!23246 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !23245)
!23247 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !23245)
!23248 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !23245)
!23249 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !23245)
!23250 = distinct !{!23250, !23243, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!23251 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !23245)
!23252 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !23251)
!23253 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !23245)
!23254 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs1h_NtNtCsf3Ta7LF998c_4core3cmp5implsnNtB8_3Ord3cmp", scope: !5203, file: !4901, line: 2347, type: !6238, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23718)
!23255 = distinct !{!23255, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!23256 = distinct !{!23256, !23255, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!23257 = distinct !DILocation(line: 340, column: 65, scope: !22958)
!23258 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !23257)
!23259 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !23257)
!23260 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !23257)
!23261 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !23257)
!23262 = distinct !{!23262, !23255, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!23263 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !23257)
!23264 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !23263)
!23265 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !23257)
!23266 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs15_NtNtCsf3Ta7LF998c_4core3cmp5implsoNtB8_3Ord3cmp", scope: !6242, file: !4901, line: 2347, type: !6244, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23727)
!23267 = !DINamespace(name: "{impl#7}", scope: !1315)
!23268 = !{!1257, !2450, !2450}
!23269 = !DISubroutineType(types: !23268)
!23270 = !DILocalVariable(name: "self", arg: 1, scope: !22958, file: !1885, line: 307, type: !2450)
!23271 = !DILocalVariable(name: "other", arg: 2, scope: !22958, file: !1885, line: 307, type: !2450)
!23272 = !DILocalVariable(name: "v", scope: !22957, file: !1885, line: 312, type: !1966, align: 64)
!23273 = !DILocalVariable(name: "v2", scope: !22957, file: !1885, line: 312, type: !1966, align: 64)
!23274 = !DILocalVariable(name: "v", scope: !22956, file: !1885, line: 313, type: !1821, align: 64)
!23275 = !DILocalVariable(name: "v2", scope: !22956, file: !1885, line: 313, type: !1821, align: 64)
!23276 = !DILocalVariable(name: "v", scope: !22955, file: !1885, line: 314, type: !1560, align: 64)
!23277 = !DILocalVariable(name: "v2", scope: !22955, file: !1885, line: 314, type: !1560, align: 64)
!23278 = !DILocalVariable(name: "v", scope: !22954, file: !1885, line: 315, type: !1827, align: 64)
!23279 = !DILocalVariable(name: "v2", scope: !22954, file: !1885, line: 315, type: !1827, align: 64)
!23280 = !DILocalVariable(name: "a", scope: !22953, file: !1885, line: 317, type: !1845, align: 64)
!23281 = !DILocalVariable(name: "b", scope: !22953, file: !1885, line: 317, type: !1845, align: 64)
!23282 = !DILocalVariable(name: "ord", scope: !22952, file: !1885, line: 318, type: !1497, align: 8)
!23283 = !DILocalVariable(name: "v", scope: !22951, file: !1885, line: 327, type: !1845, align: 64)
!23284 = !DILocalVariable(name: "v", scope: !22950, file: !1885, line: 328, type: !1845, align: 64)
!23285 = !DILocalVariable(name: "a", scope: !22949, file: !1885, line: 334, type: !1750, align: 128)
!23286 = !DILocalVariable(name: "b", scope: !22949, file: !1885, line: 334, type: !1750, align: 128)
!23287 = !DILocalVariable(name: "residual", scope: !22948, file: !1885, line: 340, type: !353, align: 8)
!23288 = !DILocalVariable(name: "val", scope: !22947, file: !1885, line: 340, type: !1746, align: 128)
!23289 = !DILocalVariable(name: "residual", scope: !22946, file: !1885, line: 340, type: !353, align: 8)
!23290 = !DILocalVariable(name: "val", scope: !22945, file: !1885, line: 340, type: !1746, align: 128)
!23291 = !{!23270, !23271, !23272, !23273, !23274, !23275, !23276, !23277, !23278, !23279, !23280, !23281, !23282, !23283, !23284, !23285, !23286, !23287, !23288, !23289, !23290}
!23292 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&isize", baseType: !3594, size: 64, align: 64, dwarfAddressSpace: 0)
!23293 = !DILocalVariable(name: "self", arg: 1, scope: !22959, file: !4901, line: 2347, type: !23292)
!23294 = !DINamespace(name: "{impl#71}", scope: !4902)
!23295 = !{!1497, !23292, !23292}
!23296 = !DISubroutineType(types: !23295)
!23297 = !DILocalVariable(name: "other", scope: !22959, file: !4901, line: 2347, type: !23292, align: 64)
!23298 = !{!23293, !23297}
!23299 = !DILexicalBlockFile(scope: !22973, file: !4896, discriminator: 2)
!23300 = !DILocation(line: 315, column: 75, scope: !22954)
!23301 = !DILocation(line: 49, column: 19, scope: !22960, inlinedAt: !23300)
!23302 = !DILocation(line: 21, column: 25, scope: !22961, inlinedAt: !23301)
!23303 = !DILocation(line: 40, column: 9, scope: !22962, inlinedAt: !23302)
!23304 = !DILocation(line: 343, column: 15, scope: !23299, inlinedAt: !23303)
!23305 = !DILocation(line: 2347, column: 24, scope: !22959, inlinedAt: !23304)
!23306 = !DINamespace(name: "{impl#3}", scope: !5501)
!23307 = !{!1257, !48, !48}
!23308 = !DISubroutineType(types: !23307)
!23309 = !DILocalVariable(name: "self", arg: 1, scope: !22960, file: !5500, line: 48, type: !48)
!23310 = !DILocalVariable(name: "other", arg: 2, scope: !22960, file: !5500, line: 48, type: !48)
!23311 = !{!23309, !23310}
!23312 = !DINamespace(name: "{impl#0}", scope: !5501)
!23313 = !{!1497, !48, !48}
!23314 = !DISubroutineType(types: !23313)
!23315 = !DILocalVariable(name: "self", arg: 1, scope: !22961, file: !5500, line: 20, type: !48)
!23316 = !DILocalVariable(name: "other", arg: 2, scope: !22961, file: !5500, line: 20, type: !48)
!23317 = !{!23315, !23316}
!23318 = !DINamespace(name: "{impl#2}", scope: !4897)
!23319 = !{!1497, !383, !383}
!23320 = !DISubroutineType(types: !23319)
!23321 = !DILocalVariable(name: "self", arg: 1, scope: !22962, file: !4896, line: 39, type: !383)
!23322 = !DILocalVariable(name: "other", arg: 2, scope: !22962, file: !4896, line: 39, type: !383)
!23323 = !{!23321, !23322}
!23324 = !DINamespace(name: "{impl#15}", scope: !4897)
!23325 = !DILocalVariable(name: "left", arg: 1, scope: !22968, file: !4896, line: 325, type: !878)
!23326 = !DILocalVariable(name: "right", arg: 2, scope: !22968, file: !4896, line: 325, type: !878)
!23327 = !DILocalVariable(name: "diff", scope: !22967, file: !4896, line: 328, type: !3594, align: 64)
!23328 = !DILocalVariable(name: "len", scope: !22966, file: !4896, line: 331, type: !1555, align: 64)
!23329 = !DILocalVariable(name: "left", scope: !22965, file: !4896, line: 332, type: !1599, align: 64)
!23330 = !DILocalVariable(name: "right", scope: !22964, file: !4896, line: 333, type: !1599, align: 64)
!23331 = !DILocalVariable(name: "order", scope: !22963, file: !4896, line: 339, type: !3594, align: 64)
!23332 = !DILocalVariable(name: "diff", scope: !22969, file: !4896, line: 328, type: !3594, align: 64)
!23333 = !DILocalVariable(name: "len", scope: !22970, file: !4896, line: 331, type: !1555, align: 64)
!23334 = !DILocalVariable(name: "left", scope: !22971, file: !4896, line: 332, type: !1599, align: 64)
!23335 = !DILocalVariable(name: "right", scope: !22972, file: !4896, line: 333, type: !1599, align: 64)
!23336 = !DILocalVariable(name: "order", scope: !22973, file: !4896, line: 339, type: !3594, align: 64)
!23337 = !{!23325, !23326, !23327, !23328, !23329, !23330, !23331, !23332, !23333, !23334, !23335, !23336}
!23338 = !{!4912}
!23339 = !DILocation(line: 314, column: 64, scope: !22955)
!23340 = !DILocation(line: 3790, column: 18, scope: !22974, inlinedAt: !23339)
!23341 = !DILocation(line: 4378, column: 9, scope: !22975, inlinedAt: !23340)
!23342 = !DILocation(line: 61, column: 9, scope: !22976, inlinedAt: !23341)
!23343 = !DILocation(line: 253, column: 14, scope: !22977, inlinedAt: !23342)
!23344 = !DILocation(line: 343, column: 15, scope: !22963, inlinedAt: !23343)
!23345 = !DILocation(line: 2347, column: 24, scope: !22959, inlinedAt: !23344)
!23346 = !DINamespace(name: "{impl#56}", scope: !1562)
!23347 = !{!1257, !1560, !1560}
!23348 = !DISubroutineType(types: !23347)
!23349 = !DILocalVariable(name: "self", arg: 1, scope: !22974, file: !2894, line: 3789, type: !1560)
!23350 = !DILocalVariable(name: "other", arg: 2, scope: !22974, file: !2894, line: 3789, type: !1560)
!23351 = !{!23349, !23350}
!23352 = !DINamespace(name: "{impl#24}", scope: !1576)
!23353 = !{!1257, !3201, !3201}
!23354 = !DISubroutineType(types: !23353)
!23355 = !DILocalVariable(name: "self", arg: 1, scope: !22975, file: !2953, line: 4377, type: !3201)
!23356 = !DILocalVariable(name: "other", arg: 2, scope: !22975, file: !2953, line: 4377, type: !3201)
!23357 = !{!23355, !23356}
!23358 = !{!1584, !6171, !6172}
!23359 = !DINamespace(name: "{impl#3}", scope: !4897)
!23360 = !{!1257, !383, !383}
!23361 = !DISubroutineType(types: !23360)
!23362 = !DILocalVariable(name: "self", arg: 1, scope: !22976, file: !4896, line: 60, type: !878)
!23363 = !DILocalVariable(name: "other", arg: 2, scope: !22976, file: !4896, line: 60, type: !878)
!23364 = !{!23362, !23363}
!23365 = !DINamespace(name: "{impl#8}", scope: !4897)
!23366 = !DILocalVariable(name: "left", arg: 1, scope: !22977, file: !4896, line: 252, type: !878)
!23367 = !DILocalVariable(name: "right", arg: 2, scope: !22977, file: !4896, line: 252, type: !878)
!23368 = !{!23366, !23367}
!23369 = !DILocation(line: 0, scope: !22958)
!23370 = !DILocation(line: 0, scope: !22959, inlinedAt: !23344)
!23371 = !DILocalVariable(name: "elem_chain", scope: !22983, file: !4896, line: 184, type: !22978, align: 8)
!23372 = !DINamespace(name: "{impl#6}", scope: !4897)
!23373 = !DINamespace(name: "partial_compare", scope: !23372)
!23374 = !{!1257, !403, !403}
!23375 = !DISubroutineType(types: !23374)
!23376 = !DILocalVariable(name: "left", arg: 1, scope: !22982, file: !4896, line: 183, type: !404)
!23377 = !DILocalVariable(name: "right", arg: 2, scope: !22982, file: !4896, line: 183, type: !404)
!23378 = !DILocalVariable(name: "len_chain", scope: !22981, file: !4896, line: 189, type: !22980, align: 8)
!23379 = !DILocalVariable(name: "b", scope: !22979, file: !4896, line: 191, type: !1257, align: 8)
!23380 = !{!23376, !23377, !23371, !23378, !23379}
!23381 = !{!6248}
!23382 = !DILexicalBlockFile(scope: !22986, file: !4896, discriminator: 2)
!23383 = !DILexicalBlockFile(scope: !22985, file: !2953, discriminator: 2)
!23384 = !DILexicalBlockFile(scope: !22984, file: !2894, discriminator: 2)
!23385 = !DILocation(line: 313, column: 64, scope: !22956)
!23386 = !DILocation(line: 3790, column: 18, scope: !23384, inlinedAt: !23385)
!23387 = !DILocation(line: 4378, column: 9, scope: !23383, inlinedAt: !23386)
!23388 = !DILocation(line: 61, column: 9, scope: !23382, inlinedAt: !23387)
!23389 = !DILocation(line: 184, column: 13, scope: !22983, inlinedAt: !23388)
!23390 = !{!1257, !1821, !1821}
!23391 = !DISubroutineType(types: !23390)
!23392 = !DILocalVariable(name: "self", arg: 1, scope: !22984, file: !2894, line: 3789, type: !1821)
!23393 = !DILocalVariable(name: "other", arg: 2, scope: !22984, file: !2894, line: 3789, type: !1821)
!23394 = !{!23392, !23393}
!23395 = !{!1257, !2924, !2924}
!23396 = !DISubroutineType(types: !23395)
!23397 = !DILocalVariable(name: "self", arg: 1, scope: !22985, file: !2953, line: 4377, type: !2924)
!23398 = !DILocalVariable(name: "other", arg: 2, scope: !22985, file: !2953, line: 4377, type: !2924)
!23399 = !{!23397, !23398}
!23400 = !{!1698, !6171, !6172}
!23401 = !DILocalVariable(name: "self", arg: 1, scope: !22986, file: !4896, line: 60, type: !404)
!23402 = !DILocalVariable(name: "other", arg: 2, scope: !22986, file: !4896, line: 60, type: !404)
!23403 = !{!23401, !23402}
!23404 = !DILocation(line: 189, column: 13, scope: !22981, inlinedAt: !23388)
end_hunk_4
begin_hunk_5_@llvm.smin.i128
!23505 = !DILocation(line: 313, column: 54, scope: !22956)
!23506 = !DILocation(line: 3789, column: 27, scope: !22984, inlinedAt: !23385)
!23507 = !DILocation(line: 3790, column: 31, scope: !23384, inlinedAt: !23385)
!23508 = !DILocation(line: 2572, column: 14, scope: !23088, inlinedAt: !23507)
!23509 = !DILexicalBlockFile(scope: !23088, file: !2894, discriminator: 6)
!23510 = !DILocation(line: 2573, column: 15, scope: !23509, inlinedAt: !23507)
!23511 = !DILocation(line: 2232, column: 14, scope: !23089, inlinedAt: !23510)
!23512 = !DILexicalBlockFile(scope: !23089, file: !2894, discriminator: 4)
!23513 = !DILocation(line: 2238, column: 27, scope: !23512, inlinedAt: !23503)
!23514 = !DILocation(line: 4377, column: 20, scope: !22985, inlinedAt: !23386)
!23515 = !DILocalVariable(name: "self", arg: 1, scope: !23091, file: !2953, line: 3894, type: !2924)
!23516 = !{!23515}
!23517 = !DILocation(line: 4378, column: 34, scope: !23383, inlinedAt: !23386)
!23518 = !DILocation(line: 3894, column: 14, scope: !23091, inlinedAt: !23517)
!23519 = !DILocalVariable(name: "self", arg: 1, scope: !23092, file: !2953, line: 1856, type: !2924)
!23520 = !{!23519}
!23521 = !DILexicalBlockFile(scope: !23091, file: !2953, discriminator: 4)
!23522 = !DILocation(line: 3895, column: 14, scope: !23521, inlinedAt: !23517)
!23523 = !DILocation(line: 1856, column: 27, scope: !23092, inlinedAt: !23522)
!23524 = !DILocalVariable(name: "self", arg: 1, scope: !23093, file: !2953, line: 1974, type: !2924)
!23525 = !{!23524}
!23526 = !DILexicalBlockFile(scope: !23092, file: !2953, discriminator: 4)
!23527 = !DILocation(line: 1873, column: 76, scope: !23526, inlinedAt: !23522)
!23528 = !DILocation(line: 1974, column: 25, scope: !23093, inlinedAt: !23527)
!23529 = !DILexicalBlockFile(scope: !23089, file: !2894, discriminator: 6)
!23530 = !DILocation(line: 2238, column: 27, scope: !23529, inlinedAt: !23510)
!23531 = !DILocation(line: 4377, column: 27, scope: !22985, inlinedAt: !23386)
!23532 = !DILocation(line: 4378, column: 43, scope: !23383, inlinedAt: !23386)
!23533 = !DILocation(line: 3894, column: 14, scope: !23091, inlinedAt: !23532)
!23534 = !DILexicalBlockFile(scope: !23091, file: !2953, discriminator: 6)
!23535 = !DILocation(line: 3895, column: 14, scope: !23534, inlinedAt: !23532)
!23536 = !DILocation(line: 1856, column: 27, scope: !23092, inlinedAt: !23535)
!23537 = !DILexicalBlockFile(scope: !23092, file: !2953, discriminator: 6)
!23538 = !DILocation(line: 1873, column: 76, scope: !23537, inlinedAt: !23535)
!23539 = !DILocation(line: 1974, column: 25, scope: !23093, inlinedAt: !23538)
!23540 = !DILexicalBlockFile(scope: !23096, file: !2965, discriminator: 4)
!23541 = !DILexicalBlockFile(scope: !23095, file: !2965, discriminator: 4)
!23542 = !DILexicalBlockFile(scope: !23093, file: !2953, discriminator: 4)
!23543 = !DILocation(line: 1977, column: 18, scope: !23542, inlinedAt: !23527)
!23544 = !DILocation(line: 305, column: 20, scope: !23541, inlinedAt: !23543)
!23545 = !DILocation(line: 622, column: 14, scope: !23540, inlinedAt: !23544)
!23546 = !DILocation(line: 0, scope: !22986, inlinedAt: !23387)
!23547 = !DILocation(line: 0, scope: !22982, inlinedAt: !23388)
!23548 = !DILexicalBlockFile(scope: !23096, file: !2965, discriminator: 6)
!23549 = !DILexicalBlockFile(scope: !23095, file: !2965, discriminator: 6)
!23550 = !DILexicalBlockFile(scope: !23093, file: !2953, discriminator: 6)
!23551 = !DILocation(line: 1977, column: 18, scope: !23550, inlinedAt: !23538)
!23552 = !DILocation(line: 305, column: 20, scope: !23549, inlinedAt: !23551)
!23553 = !DILocation(line: 622, column: 14, scope: !23548, inlinedAt: !23552)
!23554 = !DILocalVariable(name: "left", arg: 1, scope: !23107, file: !4896, line: 215, type: !403)
!23555 = !{!23100, !403, !403, !22978, !22980}
!23556 = !DISubroutineType(types: !23555)
!23557 = !{!23099}
!23558 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !23099, file: !1313, baseType: !23098, size: 8, align: 8)
!23559 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !23099, file: !1313, baseType: !23097, size: 8, align: 8)
!23560 = !{!23558, !23559}
!23561 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23097, file: !1313, baseType: !1257, size: 8, align: 8, flags: DIFlagPublic)
!23562 = !{!23561}
!23563 = !DITemplateTypeParameter(name: "B", type: !1257)
!23564 = !{!23563, !4297}
!23565 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23098, file: !1313, baseType: !2701, align: 8, flags: DIFlagPublic)
!23566 = !{!23565}
!23567 = !DILocalVariable(name: "right", arg: 2, scope: !23107, file: !4896, line: 216, type: !403)
!23568 = !DILocalVariable(name: "elem_chain", arg: 3, scope: !23107, file: !4896, line: 217, type: !22978)
!23569 = !DILocalVariable(name: "len_chain", arg: 4, scope: !23107, file: !4896, line: 218, type: !22980)
!23570 = !DILocalVariable(name: "l", scope: !23106, file: !4896, line: 220, type: !1555, align: 64)
!23571 = !DILocalVariable(name: "lhs", scope: !23105, file: !4896, line: 224, type: !404, align: 64)
!23572 = !DILocalVariable(name: "rhs", scope: !23104, file: !4896, line: 225, type: !404, align: 64)
!23573 = !DILocalVariable(name: "i", scope: !23103, file: !4896, line: 228, type: !1555, align: 64)
!23574 = !DILocalVariable(name: "residual", scope: !23102, file: !4896, line: 230, type: !23100, align: 8)
!23575 = !DILocalVariable(name: "val", scope: !23101, file: !4896, line: 230, type: !1552, align: 8)
!23576 = !{!23554, !23567, !23568, !23569, !23570, !23571, !23572, !23573, !23574, !23575}
!23577 = !DITemplateTypeParameter(name: "impl [const] Fn(&'l A, &'r A) -> ControlFlow<B> + [const] Destruct", type: !22978)
!23578 = !DITemplateTypeParameter(name: "impl for<'a> [const] FnOnce(&'a usize, &'a usize) -> ControlFlow<B, C> + [const] Destruct", type: !22980)
!23579 = !{!6248, !23563, !4297, !23577, !23578}
!23580 = !DILocalVariable(name: "v1", arg: 1, scope: !23112, file: !4901, line: 1666, type: !1555)
!23581 = !DILocalVariable(name: "v2", arg: 2, scope: !23112, file: !4901, line: 1666, type: !1555)
!23582 = !{!23580, !23581}
!23583 = !DILocalVariable(name: "self", arg: 1, scope: !23115, file: !4901, line: 2319, type: !1555)
!23584 = !DILocalVariable(name: "other", arg: 2, scope: !23115, file: !4901, line: 2319, type: !1555)
!23585 = !{!23583, !23584}
!23586 = !DILocalVariable(arg: 2, scope: !23123, file: !4679, line: 250, type: !23122)
!23587 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23122, file: !1313, baseType: !3715, size: 64, align: 64)
!23588 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !23122, file: !1313, baseType: !3715, size: 64, align: 64, offset: 64)
!23589 = !{!23587, !23588}
!23590 = !{!23100, !22980, !3715, !3715}
!23591 = !DISubroutineType(cc: DW_CC_nocall, types: !23590)
!23592 = !DILocalVariable(arg: 1, scope: !23123, file: !4679, line: 250, type: !22980)
!23593 = !{!23592, !23586}
!23594 = !DITemplateTypeParameter(name: "Self", type: !22980)
!23595 = !DITemplateTypeParameter(name: "Args", type: !23122)
!23596 = !{!23594, !23595}
!23597 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::cmp::{impl#6}::partial_compare::{closure_env#1}<tera::value::Value>", baseType: !22980, size: 64, align: 64, dwarfAddressSpace: 0)
!23598 = !DILocalVariable(arg: 1, scope: !23127, file: !4896, line: 189, type: !23597)
!23599 = !{!23100, !23597, !3715, !3715}
!23600 = !DISubroutineType(cc: DW_CC_nocall, types: !23599)
!23601 = !DILocalVariable(name: "a", arg: 2, scope: !23127, file: !4896, line: 189, type: !3715)
!23602 = !DILocalVariable(name: "b", arg: 3, scope: !23127, file: !4896, line: 189, type: !3715)
!23603 = !{!23601, !23602, !23598}
!23604 = !DILocalVariable(name: "self", arg: 1, scope: !23130, file: !4901, line: 2336, type: !3715)
!23605 = !{!1257, !3715, !3715}
!23606 = !DISubroutineType(types: !23605)
!23607 = !DILocalVariable(name: "other", arg: 2, scope: !23130, file: !4901, line: 2336, type: !3715)
!23608 = !{!23604, !23607}
!23609 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::cmp::{impl#6}::partial_compare::{closure_env#0}<tera::value::Value>", baseType: !22978, size: 64, align: 64, dwarfAddressSpace: 0)
!23610 = !DILocalVariable(arg: 1, scope: !23138, file: !4896, line: 184, type: !23609)
!23611 = !{!23136, !23609, !2450, !2450}
!23612 = !DISubroutineType(types: !23611)
!23613 = !{!23135}
!23614 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !23135, file: !1313, baseType: !23134, size: 8, align: 8, extraData: i8 2)
!23615 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !23135, file: !1313, baseType: !23133, size: 8, align: 8)
!23616 = !{!23614, !23615}
!23617 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23133, file: !1313, baseType: !1257, size: 8, align: 8, flags: DIFlagPublic)
!23618 = !{!23617}
!23619 = !{!23563, !2943}
!23620 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23134, file: !1313, baseType: !1552, align: 8, flags: DIFlagPublic)
!23621 = !{!23620}
!23622 = !DIDerivedType(tag: DW_TAG_member, scope: !23136, file: !1313, baseType: !1316, size: 8, align: 8, flags: DIFlagArtificial)
!23623 = !DILocalVariable(name: "a", arg: 2, scope: !23138, file: !4896, line: 184, type: !2450)
!23624 = !DILocalVariable(name: "b", arg: 3, scope: !23138, file: !4896, line: 184, type: !2450)
!23625 = !DILocalVariable(name: "non_eq", scope: !23137, file: !4896, line: 186, type: !1257, align: 8)
!23626 = !{!23623, !23624, !23625, !23610}
!23627 = !DILocalVariable(name: "self", arg: 1, scope: !23148, file: !6249, line: 115, type: !23136)
!23628 = !DINamespace(name: "{impl#0}", scope: !2935)
!23629 = !{!23145, !23136}
!23630 = !DISubroutineType(types: !23629)
!23631 = !{!23144}
!23632 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !23144, file: !1313, baseType: !23143, size: 8, align: 8, extraData: i8 2)
!23633 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !23144, file: !1313, baseType: !23142, size: 8, align: 8)
!23634 = !{!23632, !23633}
!23635 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23142, file: !1313, baseType: !23100, size: 8, align: 8, flags: DIFlagPublic)
!23636 = !{!23635}
!23637 = !DITemplateTypeParameter(name: "B", type: !23100)
!23638 = !{!23637, !2943}
!23639 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23143, file: !1313, baseType: !1552, align: 8, flags: DIFlagPublic)
!23640 = !{!23639}
!23641 = !DIDerivedType(tag: DW_TAG_member, scope: !23145, file: !1313, baseType: !1316, size: 8, align: 8, flags: DIFlagArtificial)
!23642 = !DILocalVariable(name: "c", scope: !23147, file: !6249, line: 117, type: !1552, align: 8)
!23643 = !DILocalVariable(name: "b", scope: !23146, file: !6249, line: 118, type: !1257, align: 8)
!23644 = !{!23627, !23642, !23643}
!23645 = !DILocation(line: 314, column: 32, scope: !22955)
!23646 = !DILocation(line: 3789, column: 20, scope: !22974, inlinedAt: !23339)
!23647 = !DILocalVariable(name: "self", arg: 1, scope: !23151, file: !2894, line: 2572, type: !1560)
!23648 = !{!23647}
!23649 = !DILocation(line: 3790, column: 9, scope: !22974, inlinedAt: !23339)
!23650 = !DILocation(line: 2572, column: 14, scope: !23151, inlinedAt: !23649)
!23651 = !DILocalVariable(name: "self", arg: 1, scope: !23152, file: !2894, line: 2232, type: !1560)
!23652 = !{!23651}
!23653 = !DILocation(line: 2573, column: 15, scope: !23151, inlinedAt: !23649)
!23654 = !DILocation(line: 2232, column: 14, scope: !23152, inlinedAt: !23653)
!23655 = !DILocation(line: 314, column: 54, scope: !22955)
!23656 = !DILocation(line: 3789, column: 27, scope: !22974, inlinedAt: !23339)
!23657 = !DILocation(line: 3790, column: 31, scope: !22974, inlinedAt: !23339)
!23658 = !DILocation(line: 2572, column: 14, scope: !23151, inlinedAt: !23657)
!23659 = !DILexicalBlockFile(scope: !23151, file: !2894, discriminator: 2)
!23660 = !DILocation(line: 2573, column: 15, scope: !23659, inlinedAt: !23657)
!23661 = !DILocation(line: 2232, column: 14, scope: !23152, inlinedAt: !23660)
!23662 = !DILocation(line: 2238, column: 27, scope: !23152, inlinedAt: !23653)
!23663 = !DILocation(line: 4377, column: 20, scope: !22975, inlinedAt: !23340)
!23664 = !DILocalVariable(name: "self", arg: 1, scope: !23154, file: !2953, line: 3894, type: !3201)
!23665 = !{!23664}
!23666 = !DILocation(line: 4378, column: 34, scope: !22975, inlinedAt: !23340)
!23667 = !DILocation(line: 3894, column: 14, scope: !23154, inlinedAt: !23666)
!23668 = !DILocalVariable(name: "self", arg: 1, scope: !23155, file: !2953, line: 1856, type: !3201)
!23669 = !{!23668}
!23670 = !DILocation(line: 3895, column: 14, scope: !23154, inlinedAt: !23666)
!23671 = !DILocation(line: 1856, column: 27, scope: !23155, inlinedAt: !23670)
!23672 = !DILocalVariable(name: "self", arg: 1, scope: !23156, file: !2953, line: 1974, type: !3201)
!23673 = !{!23672}
!23674 = !DILocation(line: 1873, column: 76, scope: !23155, inlinedAt: !23670)
!23675 = !DILocation(line: 1974, column: 25, scope: !23156, inlinedAt: !23674)
!23676 = !DILexicalBlockFile(scope: !23152, file: !2894, discriminator: 2)
!23677 = !DILocation(line: 2238, column: 27, scope: !23676, inlinedAt: !23660)
!23678 = !DILocation(line: 4377, column: 27, scope: !22975, inlinedAt: !23340)
!23679 = !DILocation(line: 4378, column: 43, scope: !22975, inlinedAt: !23340)
!23680 = !DILocation(line: 3894, column: 14, scope: !23154, inlinedAt: !23679)
!23681 = !DILexicalBlockFile(scope: !23154, file: !2953, discriminator: 2)
!23682 = !DILocation(line: 3895, column: 14, scope: !23681, inlinedAt: !23679)
!23683 = !DILocation(line: 1856, column: 27, scope: !23155, inlinedAt: !23682)
!23684 = !DILexicalBlockFile(scope: !23155, file: !2953, discriminator: 2)
!23685 = !DILocation(line: 1873, column: 76, scope: !23684, inlinedAt: !23682)
!23686 = !DILocation(line: 1974, column: 25, scope: !23156, inlinedAt: !23685)
!23687 = !DILocation(line: 1977, column: 18, scope: !23156, inlinedAt: !23674)
!23688 = !DILocation(line: 305, column: 20, scope: !23158, inlinedAt: !23687)
!23689 = !DILocation(line: 622, column: 14, scope: !23159, inlinedAt: !23688)
!23690 = !DILocation(line: 0, scope: !22966, inlinedAt: !23343)
!23691 = !DILocation(line: 0, scope: !22976, inlinedAt: !23341)
!23692 = !DILocation(line: 0, scope: !22977, inlinedAt: !23342)
!23693 = !DILocation(line: 0, scope: !22968, inlinedAt: !23343)
!23694 = !DILexicalBlockFile(scope: !23159, file: !2965, discriminator: 2)
!23695 = !DILexicalBlockFile(scope: !23158, file: !2965, discriminator: 2)
!23696 = !DILexicalBlockFile(scope: !23156, file: !2953, discriminator: 2)
!23697 = !DILocation(line: 1977, column: 18, scope: !23696, inlinedAt: !23685)
!23698 = !DILocation(line: 305, column: 20, scope: !23695, inlinedAt: !23697)
!23699 = !DILocation(line: 622, column: 14, scope: !23694, inlinedAt: !23698)
!23700 = !DILocation(line: 0, scope: !22967, inlinedAt: !23343)
!23701 = !DILocation(line: 0, scope: !22965, inlinedAt: !23343)
!23702 = !DILocation(line: 0, scope: !22964, inlinedAt: !23343)
!23703 = !DILocation(line: 0, scope: !22963, inlinedAt: !23343)
!23704 = !DILocation(line: 328, column: 33, scope: !22950)
!23705 = !{!23183}
!23706 = !{!23185}
!23707 = !{!23185, !23183}
!23708 = !{!23189, !23185, !23183}
!23709 = !DILocation(line: 0, scope: !22988, inlinedAt: !23418)
!23710 = !{!23208}
!23711 = !{!23220, !23208}
!23712 = !{!23226}
!23713 = !{!23238, !23226}
!23714 = !{!23244}
!23715 = !{!23250, !23244}
!23716 = !DILocalVariable(name: "self", arg: 1, scope: !23254, file: !4901, line: 2347, type: !2640)
!23717 = !DILocalVariable(name: "other", arg: 2, scope: !23254, file: !4901, line: 2347, type: !2640)
!23718 = !{!23716, !23717}
!23719 = !DILocation(line: 340, column: 54, scope: !22958)
!23720 = !DILocation(line: 2347, column: 24, scope: !23254, inlinedAt: !23719)
!23721 = !{!23256}
!23722 = !{!23262, !23256}
!23723 = !DILocation(line: 2347, column: 31, scope: !23254, inlinedAt: !23719)
!23724 = !DILocation(line: 0, scope: !22949)
!23725 = !DILocalVariable(name: "self", arg: 1, scope: !23266, file: !4901, line: 2347, type: !2643)
!23726 = !DILocalVariable(name: "other", arg: 2, scope: !23266, file: !4901, line: 2347, type: !2643)
!23727 = !{!23725, !23726}
!23728 = !DILocation(line: 334, column: 46, scope: !22949)
!23729 = !DILocation(line: 2347, column: 24, scope: !23266, inlinedAt: !23728)
!23730 = !DILocation(line: 2347, column: 31, scope: !23266, inlinedAt: !23728)
!23731 = !DILocation(line: 308, column: 15, scope: !22958)
!23732 = !DILocation(line: 308, column: 9, scope: !22958)
!23733 = !DILocation(line: 344, column: 6, scope: !22958)
!23734 = !DILocation(line: 2393, column: 20, scope: !22990, inlinedAt: !23435)
!23735 = !DILocation(line: 2393, column: 36, scope: !22990, inlinedAt: !23435)
!23736 = !DILocation(line: 2393, column: 19, scope: !22990, inlinedAt: !23435)
!23737 = !DILocation(line: 312, column: 76, scope: !22958)
!23738 = !DILocation(line: 317, column: 50, scope: !22958)
!23739 = !DILocation(line: 2266, column: 28, scope: !22991, inlinedAt: !23447)
!23740 = !DILocation(line: 2266, column: 37, scope: !22991, inlinedAt: !23447)
!23741 = !DILocation(line: 2266, column: 45, scope: !22991, inlinedAt: !23447)
!23742 = !DILocation(line: 2266, column: 21, scope: !22991, inlinedAt: !23447)
!23743 = !DILocation(line: 327, column: 58, scope: !22951)
!23744 = !DILocation(line: 327, column: 40, scope: !22951)
!23745 = !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !22998)
!23746 = !DILocation(line: 577, column: 15, scope: !1225, inlinedAt: !23020)
!23747 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !23020)
!23748 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !23020)
!23749 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !23020)
!23750 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !23020)
!23751 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !23020)
!23752 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !23020)
!23753 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !23026)
!23754 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !23012)
!23755 = !DILocation(line: 256, column: 8, scope: !1268, inlinedAt: !23010)
!23756 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !23020)
!23757 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !23020)
!23758 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !23002)
!23759 = !DILocation(line: 238, column: 8, scope: !1262, inlinedAt: !23000)
!23760 = !DILocation(line: 241, column: 8, scope: !1262, inlinedAt: !23000)
!23761 = !DILocation(line: 244, column: 8, scope: !1262, inlinedAt: !23000)
!23762 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !23006)
!23763 = !DILocation(line: 249, column: 11, scope: !1261, inlinedAt: !23000)
!23764 = !DILocation(line: 2348, column: 21, scope: !1277, inlinedAt: !23036)
!23765 = !DILocation(line: 249, column: 5, scope: !1261, inlinedAt: !23000)
!23766 = !DILocation(line: 259, column: 8, scope: !1268, inlinedAt: !23010)
!23767 = !DILocation(line: 262, column: 8, scope: !1268, inlinedAt: !23010)
!23768 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !23016)
!23769 = !DILocation(line: 267, column: 11, scope: !1267, inlinedAt: !23010)
!23770 = !DILocation(line: 2348, column: 21, scope: !1278, inlinedAt: !23040)
!23771 = !DILocation(line: 267, column: 5, scope: !1267, inlinedAt: !23010)
!23772 = !DILocation(line: 667, column: 9, scope: !23043, inlinedAt: !23478)
!23773 = !DILocation(line: 667, column: 9, scope: !23043, inlinedAt: !23480)
!23774 = !DILocation(line: 320, column: 40, scope: !22993, inlinedAt: !23459)
!23775 = !DILocation(line: 315, column: 66, scope: !22954)
!23776 = !DILocation(line: 128, column: 15, scope: !378, inlinedAt: !23046)
!23777 = !DILocation(line: 128, column: 9, scope: !378, inlinedAt: !23046)
!23778 = !DILocation(line: 454, column: 20, scope: !397, inlinedAt: !23060)
!23779 = !DILocation(line: 2573, column: 9, scope: !394, inlinedAt: !23056)
!23780 = !DILocation(line: 133, column: 34, scope: !378, inlinedAt: !23046)
!23781 = !DILocation(line: 131, column: 64, scope: !377, inlinedAt: !23046)
!23782 = !DILocation(line: 1122, column: 16, scope: !393, inlinedAt: !23053)
!23783 = !DILocation(line: 129, column: 32, scope: !378, inlinedAt: !23046)
!23784 = !DILocation(line: 132, column: 13, scope: !378, inlinedAt: !23046)
!23785 = !DILocation(line: 413, column: 13, scope: !384, inlinedAt: !23051)
!23786 = !DILocation(line: 0, scope: !378, inlinedAt: !23046)
!23787 = !DILocation(line: 315, column: 90, scope: !22954)
!23788 = !DILocation(line: 128, column: 15, scope: !378, inlinedAt: !23068)
!23789 = !DILocation(line: 128, column: 9, scope: !378, inlinedAt: !23068)
!23790 = !DILocation(line: 454, column: 20, scope: !397, inlinedAt: !23082)
!23791 = !DILocation(line: 2573, column: 9, scope: !394, inlinedAt: !23078)
!23792 = !DILocation(line: 133, column: 34, scope: !378, inlinedAt: !23068)
!23793 = !DILocation(line: 131, column: 64, scope: !377, inlinedAt: !23068)
!23794 = !DILocation(line: 1122, column: 16, scope: !393, inlinedAt: !23075)
!23795 = !DILocation(line: 129, column: 32, scope: !378, inlinedAt: !23068)
!23796 = !DILocation(line: 132, column: 13, scope: !378, inlinedAt: !23068)
!23797 = !DILocation(line: 413, column: 13, scope: !384, inlinedAt: !23073)
!23798 = !DILocation(line: 0, scope: !378, inlinedAt: !23068)
!23799 = !DILocation(line: 328, column: 20, scope: !22968, inlinedAt: !23303)
!23800 = !DILocation(line: 331, column: 22, scope: !22969, inlinedAt: !23303)
!23801 = !DILocation(line: 339, column: 34, scope: !22972, inlinedAt: !23303)
!23802 = !DILocation(line: 340, column: 12, scope: !22973, inlinedAt: !23303)
!23803 = !DILocation(line: 2348, column: 21, scope: !22959, inlinedAt: !23304)
!23804 = !DILocation(line: 315, column: 98, scope: !22958)
!23805 = !DILocation(line: 454, column: 20, scope: !23090, inlinedAt: !23513)
!23806 = !DILocation(line: 454, column: 20, scope: !23090, inlinedAt: !23530)
!23807 = !DILocation(line: 627, column: 9, scope: !23094, inlinedAt: !23545)
!23808 = !DILocation(line: 1873, column: 86, scope: !23092, inlinedAt: !23522)
!23809 = !DILocation(line: 627, column: 9, scope: !23094, inlinedAt: !23553)
!23810 = !DILocation(line: 1873, column: 86, scope: !23092, inlinedAt: !23535)
!23811 = !DILocation(line: 2320, column: 17, scope: !23115, inlinedAt: !23116)
!23812 = !DILocation(line: 229, column: 11, scope: !23103, inlinedAt: !23108)
!23813 = !DILocation(line: 231, column: 9, scope: !23103, inlinedAt: !23108)
!23814 = !DILocation(line: 2337, column: 26, scope: !23130, inlinedAt: !23131)
!23815 = !DILocation(line: 235, column: 1, scope: !23107, inlinedAt: !23108)
!23816 = !DILocation(line: 230, column: 20, scope: !23103, inlinedAt: !23108)
!23817 = !DILocation(line: 230, column: 29, scope: !23103, inlinedAt: !23108)
!23818 = !DILocation(line: 184, column: 45, scope: !23138, inlinedAt: !23139)
!23819 = !DILocation(line: 184, column: 39, scope: !23138, inlinedAt: !23139)
!23820 = !DILocation(line: 116, column: 9, scope: !23148, inlinedAt: !23149)
!23821 = !DILocation(line: 454, column: 20, scope: !23153, inlinedAt: !23662)
!23822 = !DILocation(line: 454, column: 20, scope: !23153, inlinedAt: !23677)
!23823 = !DILocation(line: 627, column: 9, scope: !23157, inlinedAt: !23689)
!23824 = !DILocation(line: 1873, column: 86, scope: !23155, inlinedAt: !23670)
!23825 = !DILocation(line: 627, column: 9, scope: !23157, inlinedAt: !23699)
!23826 = !DILocation(line: 1873, column: 86, scope: !23155, inlinedAt: !23682)
!23827 = !DILocation(line: 328, column: 20, scope: !22968, inlinedAt: !23343)
!23828 = !DILocation(line: 331, column: 22, scope: !22967, inlinedAt: !23343)
!23829 = !DILocation(line: 339, column: 34, scope: !22964, inlinedAt: !23343)
!23830 = !DILocation(line: 340, column: 12, scope: !22963, inlinedAt: !23343)
!23831 = !DILocation(line: 2348, column: 21, scope: !22959, inlinedAt: !23344)
!23832 = !DILocation(line: 314, column: 78, scope: !22958)
!23833 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !23180)
!23834 = !DILocation(line: 328, column: 58, scope: !22950)
!23835 = !DILocation(line: 328, column: 40, scope: !22950)
!23836 = !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !23160)
!23837 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !23180)
!23838 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !23180)
!23839 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !23180)
!23840 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !23180)
!23841 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !23180)
!23842 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !23190)
!23843 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !23174)
!23844 = !DILocation(line: 256, column: 8, scope: !1268, inlinedAt: !23172)
!23845 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !23180)
!23846 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !23180)
!23847 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !23164)
!23848 = !DILocation(line: 238, column: 8, scope: !1262, inlinedAt: !23162)
!23849 = !DILocation(line: 241, column: 8, scope: !1262, inlinedAt: !23162)
!23850 = !DILocation(line: 244, column: 8, scope: !1262, inlinedAt: !23162)
!23851 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !23168)
!23852 = !DILocation(line: 249, column: 11, scope: !1261, inlinedAt: !23162)
!23853 = !DILocation(line: 2348, column: 21, scope: !1277, inlinedAt: !23200)
!23854 = !DILocation(line: 249, column: 5, scope: !1261, inlinedAt: !23162)
!23855 = !DILocation(line: 259, column: 8, scope: !1268, inlinedAt: !23172)
!23856 = !DILocation(line: 262, column: 8, scope: !1268, inlinedAt: !23172)
!23857 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !23178)
!23858 = !DILocation(line: 267, column: 11, scope: !1267, inlinedAt: !23172)
!23859 = !DILocation(line: 2348, column: 21, scope: !1278, inlinedAt: !23204)
!23860 = !DILocation(line: 267, column: 5, scope: !1267, inlinedAt: !23172)
!23861 = !DILocation(line: 0, scope: !1259, inlinedAt: !23160)
!23862 = !DILocation(line: 1164, column: 9, scope: !22988, inlinedAt: !23418)
!23863 = !DILocation(line: 332, column: 30, scope: !22958)
!23864 = !DILocation(line: 588, column: 9, scope: !1289, inlinedAt: !23209)
!23865 = !DILocation(line: 589, column: 40, scope: !1288, inlinedAt: !23209)
!23866 = !DILocation(line: 589, column: 50, scope: !1289, inlinedAt: !23209)
!23867 = !DILocation(line: 590, column: 50, scope: !1287, inlinedAt: !23209)
!23868 = !DILocation(line: 361, column: 20, scope: !1291, inlinedAt: !23217)
!23869 = !DILocation(line: 591, column: 41, scope: !1286, inlinedAt: !23209)
!23870 = !DILocation(line: 591, column: 44, scope: !1289, inlinedAt: !23209)
!23871 = !DILocation(line: 592, column: 51, scope: !1290, inlinedAt: !23209)
!23872 = !DILocation(line: 361, column: 20, scope: !1292, inlinedAt: !23222)
!23873 = !DILocation(line: 0, scope: !1289, inlinedAt: !23209)
!23874 = !DILocation(line: 362, column: 24, scope: !1291, inlinedAt: !23217)
!23875 = !DILocation(line: 718, column: 5, scope: !1285, inlinedAt: !23212)
!23876 = !DILocation(line: 332, column: 47, scope: !22958)
!23877 = !DILocation(line: 588, column: 9, scope: !1289, inlinedAt: !23227)
!23878 = !DILocation(line: 589, column: 40, scope: !1288, inlinedAt: !23227)
!23879 = !DILocation(line: 589, column: 50, scope: !1289, inlinedAt: !23227)
!23880 = !DILocation(line: 590, column: 50, scope: !1287, inlinedAt: !23227)
!23881 = !DILocation(line: 361, column: 20, scope: !1291, inlinedAt: !23235)
!23882 = !DILocation(line: 591, column: 41, scope: !1286, inlinedAt: !23227)
!23883 = !DILocation(line: 591, column: 44, scope: !1289, inlinedAt: !23227)
!23884 = !DILocation(line: 592, column: 51, scope: !1290, inlinedAt: !23227)
!23885 = !DILocation(line: 361, column: 20, scope: !1292, inlinedAt: !23240)
!23886 = !DILocation(line: 0, scope: !1289, inlinedAt: !23227)
!23887 = !DILocation(line: 362, column: 24, scope: !1291, inlinedAt: !23235)
!23888 = !DILocation(line: 718, column: 5, scope: !1285, inlinedAt: !23230)
!23889 = !DILocation(line: 332, column: 18, scope: !22958)
!23890 = !DILocation(line: 340, column: 43, scope: !22958)
!23891 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !23245)
!23892 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !23245)
!23893 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !23245)
!23894 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !23245)
!23895 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !23245)
!23896 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !23245)
!23897 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !23251)
!23898 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !23245)
!23899 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !23245)
!23900 = !DILocation(line: 340, column: 65, scope: !22958)
!23901 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !23257)
!23902 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !23257)
!23903 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !23257)
!23904 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !23257)
!23905 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !23257)
!23906 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !23257)
!23907 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !23263)
!23908 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !23257)
!23909 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !23257)
!23910 = !DILocation(line: 2348, column: 21, scope: !23254, inlinedAt: !23719)
!23911 = !DILocation(line: 340, column: 76, scope: !22958)
!23912 = !DILocation(line: 2348, column: 21, scope: !23266, inlinedAt: !23728)
!23913 = !DILocation(line: 334, column: 53, scope: !22958)
!23914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !23917, file: !1313, size: 576, align: 64, flags: DIFlagPublic, elements: !23943, templateParams: !23944, identifier: "d9a3b7ffc2a845588ab6915434fe55d")
!23915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !23917, file: !1313, size: 576, align: 64, flags: DIFlagPublic, elements: !23946, templateParams: !23944, identifier: "9b1c514ce2f8af6b648d9646964cd75e")
!23916 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23917, file: !1313, size: 576, align: 64, elements: !23941, templateParams: !1568, identifier: "23a3aa11a4c164ce461e6c28a7e99bcd", discriminator: !23947)
!23917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, tera::errors::Error>", scope: !2520, file: !1313, size: 576, align: 64, flags: DIFlagPublic, elements: !23938, templateParams: !1568, identifier: "18f292fc4db0e37e797fd8d4619a1509")
!23918 = distinct !DISubprogram(name: "from_value", linkageName: "_RNvXs6_NtCs5yXxDE1DkoT_4tera4argsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtB7_5value3key3KeyNtB1u_5ValueENtB5_12ArgFromValue10from_value", scope: !23935, file: !6287, line: 245, type: !23937, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23949)
!23919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !23954, file: !1313, size: 64, align: 64, elements: !23956, templateParams: !1568, identifier: "6b5c37b6d9dac0a745dc65873a99bddb")
!23920 = distinct !DISubprogram(name: "ok_or_else<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, tera::errors::Error, tera::args::{impl#8}::from_value::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1H_5ValueEE10ok_or_elseNtNtB1J_6errors5ErrorNCNvXs6_NtB1J_4argsBI_NtB39_12ArgFromValue10from_value0EB1J_", scope: !1118, file: !3710, line: 1361, type: !23953, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23958, declaration: !23959, retainedNodes: !23962)
!23921 = distinct !DILexicalBlock(scope: !23920, file: !3710, line: 1366, column: 13)
!23922 = distinct !DILexicalBlock(scope: !23923, file: !1885, line: 698, column: 13)
!23923 = distinct !DISubprogram(name: "as_map", linkageName: "_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value6as_map", scope: !47, file: !1885, line: 696, type: !4935, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, declaration: !4945, retainedNodes: !23970)
!23924 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXs6_NtCs5yXxDE1DkoT_4tera4argsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtB9_5value3key3KeyNtB1w_5ValueENtB7_12ArgFromValue10from_value0B9_", scope: !23954, file: !6287, line: 249, type: !23975, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23976)
!23925 = distinct !DISubprogram(name: "name", linkageName: "_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value4name", scope: !47, file: !1885, line: 1043, type: !5093, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, declaration: !5094, retainedNodes: !23980)
!23926 = distinct !DILexicalBlock(scope: !23927, file: !3710, line: 1165, column: 13)
!23927 = distinct !DISubprogram(name: "map<&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1I_5ValueEE3mapBJ_NvYBJ_NtNtB5_5clone5Clone5cloneEB1K_", scope: !945, file: !3710, line: 1160, type: !23986, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23989, declaration: !23990, retainedNodes: !23993)
!23928 = distinct !DISubprogram(name: "cloned<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1K_5ValueEE6clonedB1M_", scope: !945, file: !3710, line: 2162, type: !23998, scopeLine: 2162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1811, declaration: !23999, retainedNodes: !24001)
!23929 = distinct !DISubprogram(name: "deref<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefB1H_", scope: !2896, file: !2894, line: 2572, type: !3007, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1815, retainedNodes: !24004)
!23930 = distinct !DISubprogram(name: "inner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE5innerB1H_", scope: !68, file: !2894, line: 2232, type: !3010, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1815, declaration: !3011, retainedNodes: !24008)
!23931 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB2v_5ValueEEE6as_refB2x_", scope: !67, file: !2557, line: 450, type: !3014, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1634, declaration: !3015)
!23932 = distinct !DISubprogram(name: "clone<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvXs3_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB17_5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB19_", scope: !5625, file: !3016, line: 1437, type: !5627, scopeLine: 1437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1809, retainedNodes: !24016)
!23933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>)", file: !1313, size: 64, align: 64, elements: !24026, templateParams: !1568, identifier: "249c9f164fba2e99671625a4692c581")
!23934 = distinct !DISubprogram(name: "call_once<fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, (&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>)>", linkageName: "_RNvYNvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB14_5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneINtNtNtB1U_3ops8function6FnOnceTRB5_EE9call_onceB16_", scope: !4682, file: !4679, line: 250, type: !24021, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !24024)
!23935 = !DINamespace(name: "{impl#8}", scope: !6288)
!23936 = !{!23917, !2450}
!23937 = !DISubroutineType(types: !23936)
!23938 = !{!23916}
!23939 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !23916, file: !1313, baseType: !23915, size: 576, align: 64, extraData: i8 -1)
!23940 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !23916, file: !1313, baseType: !23914, size: 576, align: 64)
!23941 = !{!23939, !23940}
!23942 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23914, file: !1313, baseType: !516, size: 576, align: 64, flags: DIFlagPublic)
!23943 = !{!23942}
!23944 = !{!1810, !3470}
!23945 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23915, file: !1313, baseType: !64, size: 384, align: 64, offset: 64, flags: DIFlagPublic)
!23946 = !{!23945}
!23947 = !DIDerivedType(tag: DW_TAG_member, scope: !23917, file: !1313, baseType: !1316, size: 8, align: 8, flags: DIFlagArtificial)
!23948 = !DILocalVariable(name: "value", arg: 1, scope: !23918, file: !6287, line: 245, type: !2450)
!23949 = !{!23948}
!23951 = !DILocalVariable(name: "v", scope: !23921, file: !3710, line: 1366, type: !64, align: 64)
!23952 = !{!23917, !1118, !23919}
!23953 = !DISubroutineType(types: !23952)
!23954 = !DINamespace(name: "from_value", scope: !23935)
!23955 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__value", scope: !23919, file: !1313, baseType: !2450, size: 64, align: 64)
!23956 = !{!23955}
!23957 = !DITemplateTypeParameter(name: "F", type: !23919)
!23958 = !{!1810, !3470, !23957}
!23959 = !DISubprogram(name: "ok_or_else<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, tera::errors::Error, tera::args::{impl#8}::from_value::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1H_5ValueEE10ok_or_elseNtNtB1J_6errors5ErrorNCNvXs6_NtB1J_4argsBI_NtB39_12ArgFromValue10from_value0EB1J_", scope: !1118, file: !3710, line: 1361, type: !23953, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !23958)
!23960 = !DILocalVariable(name: "self", arg: 1, scope: !23920, file: !3710, line: 1361, type: !1118)
!23961 = !DILocalVariable(name: "err", scope: !23920, file: !3710, line: 1361, type: !23919, align: 64)
!23962 = !{!23960, !23961, !23951}
!23963 = !DILocation(line: 249, column: 14, scope: !23918)
!23964 = !DILocation(line: 1366, column: 18, scope: !23921, inlinedAt: !23963)
!23966 = !DILocation(line: 1361, column: 35, scope: !23920, inlinedAt: !23963)
!23967 = !DILocation(line: 0, scope: !23918)
!23968 = !DILocalVariable(name: "self", arg: 1, scope: !23923, file: !1885, line: 696, type: !2450)
!23969 = !DILocalVariable(name: "s", scope: !23922, file: !1885, line: 698, type: !1628, align: 64)
!23970 = !{!23968, !23969}
!23971 = !DILocation(line: 247, column: 14, scope: !23918)
!23972 = !DILocation(line: 0, scope: !23923, inlinedAt: !23971)
!23973 = !DILocalVariable(name: "value", scope: !23924, file: !6287, line: 245, type: !47, align: 64)
!23974 = !{!516, !23919}
!23975 = !DISubroutineType(types: !23974)
!23976 = !{!23973}
!23977 = !DILocation(line: 1367, column: 25, scope: !23920, inlinedAt: !23963)
!23978 = !DILocation(line: 0, scope: !23924, inlinedAt: !23977)
!23979 = !DILocalVariable(name: "self", arg: 1, scope: !23925, file: !1885, line: 1043, type: !2450)
!23980 = !{!23979}
!23981 = !DILocation(line: 249, column: 65, scope: !23924, inlinedAt: !23977)
!23982 = !DILocation(line: 0, scope: !23925, inlinedAt: !23981)
!23983 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>", baseType: !5627, align: 8, dwarfAddressSpace: 0)
!23984 = !DILocalVariable(name: "f", scope: !23927, file: !3710, line: 1160, type: !23983, align: 8)
!23985 = !{!1118, !945, !23983}
!23986 = !DISubroutineType(types: !23985)
!23987 = !DITemplateTypeParameter(name: "U", type: !64)
!23988 = !DITemplateTypeParameter(name: "F", type: !23983)
!23989 = !{!4942, !23987, !23988}
!23990 = !DISubprogram(name: "map<&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1I_5ValueEE3mapBJ_NvYBJ_NtNtB5_5clone5Clone5cloneEB1K_", scope: !945, file: !3710, line: 1160, type: !23986, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !23989)
!23991 = !DILocalVariable(name: "self", arg: 1, scope: !23927, file: !3710, line: 1160, type: !945)
!23992 = !DILocalVariable(name: "x", scope: !23926, file: !3710, line: 1165, type: !2771, align: 64)
!23993 = !{!23991, !23984, !23992}
!23994 = !DILocation(line: 248, column: 14, scope: !23918)
!23995 = !DILocation(line: 2166, column: 14, scope: !23928, inlinedAt: !23994)
!23996 = !DILocation(line: 1160, column: 34, scope: !23927, inlinedAt: !23995)
!23997 = !{!1118, !945}
!23998 = !DISubroutineType(types: !23997)
!23999 = !DISubprogram(name: "cloned<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1K_5ValueEE6clonedB1M_", scope: !945, file: !3710, line: 2162, type: !23998, scopeLine: 2162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1811)
!24000 = !DILocalVariable(name: "self", arg: 1, scope: !23928, file: !3710, line: 2162, type: !945)
!24001 = !{!24000}
!24002 = !DILocation(line: 698, column: 29, scope: !23922, inlinedAt: !23971)
!24003 = !DILocalVariable(name: "self", arg: 1, scope: !23929, file: !2894, line: 2572, type: !1628)
!24004 = !{!24003}
!24005 = !DILocation(line: 698, column: 40, scope: !23922, inlinedAt: !23971)
!24006 = !DILocation(line: 2572, column: 14, scope: !23929, inlinedAt: !24005)
!24007 = !DILocalVariable(name: "self", arg: 1, scope: !23930, file: !2894, line: 2232, type: !1628)
!24008 = !{!24007}
!24009 = !DILocation(line: 2573, column: 15, scope: !23929, inlinedAt: !24005)
!24010 = !DILocation(line: 2232, column: 14, scope: !23930, inlinedAt: !24009)
!24011 = !DILocation(line: 2238, column: 27, scope: !23930, inlinedAt: !24009)
!24012 = !DILocation(line: 0, scope: !23928, inlinedAt: !23994)
!24013 = !DILocation(line: 0, scope: !23927, inlinedAt: !23995)
!24014 = !DILocation(line: 0, scope: !23926, inlinedAt: !23995)
!24015 = !DILocalVariable(name: "self", arg: 1, scope: !23932, file: !3016, line: 1437, type: !2771)
!24016 = !{!24015}
!24017 = !DILocation(line: 1165, column: 29, scope: !23926, inlinedAt: !23995)
!24018 = !DILocation(line: 250, column: 5, scope: !23934, inlinedAt: !24017)
!24019 = !DILocation(line: 0, scope: !23932, inlinedAt: !24018)
!24020 = !{!64, !23983, !2771}
!24021 = !DISubroutineType(types: !24020)
!24022 = !DITemplateTypeParameter(name: "Self", type: !23983)
!24023 = !DITemplateTypeParameter(name: "Args", type: !23933)
!24024 = !{!24022, !24023}
!24025 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23933, file: !1313, baseType: !2771, size: 64, align: 64)
!24026 = !{!24025}
!24027 = !DILocation(line: 0, scope: !23920, inlinedAt: !23963)
!24028 = !DILocation(line: 0, scope: !23921, inlinedAt: !23963)
!24029 = !DILocation(line: 697, column: 15, scope: !23923, inlinedAt: !23971)
!24030 = !DILocation(line: 697, column: 9, scope: !23923, inlinedAt: !23971)
!24031 = !DILocation(line: 454, column: 20, scope: !23931, inlinedAt: !24011)
!24032 = !DILocation(line: 2573, column: 9, scope: !23929, inlinedAt: !24005)
!24033 = !DILocation(line: 1438, column: 32, scope: !23932, inlinedAt: !24018)
!24034 = !DILocation(line: 1438, column: 9, scope: !23932, inlinedAt: !24018)
!24035 = !DILocation(line: 1366, column: 24, scope: !23921, inlinedAt: !23963)
!24036 = !DILocation(line: 1369, column: 5, scope: !23920, inlinedAt: !23963)
!24037 = !DILocation(line: 1044, column: 15, scope: !23925, inlinedAt: !23981)
!24038 = !DILocation(line: 1044, column: 9, scope: !23925, inlinedAt: !23981)
!24039 = !DILocation(line: 249, column: 28, scope: !23924, inlinedAt: !23977)
!24040 = !DILocation(line: 1367, column: 30, scope: !23920, inlinedAt: !23963)
!24041 = !DILocation(line: 250, column: 6, scope: !23918)
!24042 = distinct !DILexicalBlock(scope: !24043, file: !1885, line: 349, column: 52)
!24043 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp", scope: !24046, file: !1885, line: 348, type: !24048, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !24052)
!24044 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsX_NtNtCsf3Ta7LF998c_4core3cmp5implshNtB7_3Ord3cmp", scope: !24054, file: !4901, line: 2347, type: !24056, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !24058)
!24045 = distinct !DISubprogram(name: "type_order", linkageName: "_RNvNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB7_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp10type_order", scope: !24064, file: !1885, line: 355, type: !24066, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !24067)
!24046 = !DINamespace(name: "{impl#8}", scope: !1315)
!24047 = !{!1497, !2450, !2450}
!24048 = !DISubroutineType(types: !24047)
!24049 = !DILocalVariable(name: "self", arg: 1, scope: !24043, file: !1885, line: 348, type: !2450)
!24050 = !DILocalVariable(name: "other", arg: 2, scope: !24043, file: !1885, line: 348, type: !2450)
!24051 = !DILocalVariable(name: "res", scope: !24042, file: !1885, line: 349, type: !1497, align: 8)
!24052 = !{!24049, !24050, !24051}
!24053 = !DILocalVariable(name: "other", arg: 2, scope: !24044, file: !4901, line: 2347, type: !1960)
!24054 = !DINamespace(name: "{impl#61}", scope: !4902)
!24055 = !{!1497, !1960, !1960}
!24056 = !DISubroutineType(types: !24055)
!24057 = !DILocalVariable(name: "self", arg: 1, scope: !24044, file: !4901, line: 2347, type: !1960)
!24058 = !{!24057, !24053}
!24059 = !DILocation(line: 371, column: 33, scope: !24043)
!24060 = !DILocation(line: 2347, column: 31, scope: !24044, inlinedAt: !24059)
!24061 = !DILocation(line: 2347, column: 24, scope: !24044, inlinedAt: !24059)
!24062 = !DILocation(line: 0, scope: !24043)
!24063 = !DILocalVariable(name: "v", arg: 1, scope: !24045, file: !1885, line: 355, type: !5213)
end_hunk_5
