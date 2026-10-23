Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.10?download=true
inline.NumInlined: 539
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_:bb.a
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
  %.pr = load i8, ptr %1, align 8, !dbg !22628    ; 23 uses
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

thread-pre-split:                                 ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %i.f = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.f), !dbg !22628
  %i.g = icmp eq i8 %.pr, 7, !dbg !22629
  br i1 %i.g, label %bb.al, label %bb.as, !dbg !22629

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.h), !dbg !22628
  %i.i = icmp eq i8 %.pr, 2, !dbg !22629
  br i1 %i.i, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %thread-pre-split, !dbg !22629

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.j), !dbg !22628
  %i.k = icmp eq i8 %.pr, 3, !dbg !22629
  br i1 %i.k, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %thread-pre-split, !dbg !22629

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.l), !dbg !22628
  %i.m = icmp eq i8 %.pr, 4, !dbg !22629
  br i1 %i.m, label %bb.j, label %thread-pre-split, !dbg !22629

bb.e:                                             ; preds = %bb.a
  %i.n = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.n), !dbg !22628
  %i.o = icmp eq i8 %.pr, 7, !dbg !22629
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22232
  %i.q = load double, ptr %i.p, align 8, !dbg !22232, !noundef !1568 ; 11 uses
  br i1 %i.o, label %bb.k, label %bb.l, !dbg !22629

bb.f:                                             ; preds = %bb.a
  %i.r = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.r), !dbg !22628
  %i.s = icmp samesign ult i8 %.pr, 2, !dbg !22628
  br i1 %i.s, label %bb.s, label %thread-pre-split, !dbg !22629

bb.g:                                             ; preds = %bb.a
  %i.t = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.t), !dbg !22628
  %i.u = icmp eq i8 %.pr, 11, !dbg !22629
  br i1 %i.u, label %bb.ac, label %thread-pre-split, !dbg !22629

bb.h:                                             ; preds = %bb.a
  %i.v = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.v), !dbg !22628
  %i.w = icmp eq i8 %.pr, 12, !dbg !22629
  br i1 %i.w, label %bb.af, label %thread-pre-split, !dbg !22629

bb.i:                                             ; preds = %bb.a
  %i.x = icmp ne i8 %.pr, 10, !dbg !22628
  tail call void @llvm.assume(i1 %i.x), !dbg !22628
  %i.y = icmp eq i8 %.pr, 13, !dbg !22629
  br i1 %i.y, label %bb.ai, label %thread-pre-split, !dbg !22629

_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph, %bb.ae, %bb.bq, %bb.bf, %bb.k, %2, %bb.ah, %bb.ag, %bb.bg, %bb.as, %bb.at, %bb.aj, %bb.ai, %bb.af, %bb.ad, %bb.ac, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75, %bb.c, %bb.b, %bb.ak, %bb.ab, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, %bb.j
  %.sroa.0.0 = phi i1 [ %i.fi, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86 ], [ false, %bb.aj ], [ %spec.select, %bb.k ], [ false, %bb.as ], [ false, %bb.ag ], [ true, %bb.ai ], [ true, %bb.b ], [ %i.ad, %bb.j ], [ true, %bb.c ], [ %spec.select108, %bb.bq ], [ %i.bm, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit ], [ %i.ck, %bb.ab ], [ %3, %2 ], [ false, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75 ], [ %spec.select107, %bb.bf ], [ true, %bb.ac ], [ false, %bb.ad ], [ %i.dp, %bb.ah ], [ true, %bb.af ], [ %i.ee, %bb.ak ], [ false, %bb.at ], [ false, %bb.bg ], [ true, %bb.ae ], [ %i.db, %.lr.ph ], !dbg !22232
  ret i1 %.sroa.0.0, !dbg !22630

bb.j:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !22188, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22322)
    #dbg_value(ptr %0, !22323, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22332)
    #dbg_value(ptr %1, !22189, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22341)
    #dbg_value(ptr %1, !22327, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22342)
    #dbg_value(ptr poison, !22335, !DIExpression(), !22343)
    #dbg_value(ptr poison, !22336, !DIExpression(), !22344)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !22631
  %i.aa = load i8, ptr %i.z, align 1, !dbg !22631, !range !2817, !noundef !1568
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22632
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !22632, !range !2817, !noundef !1568
  %i.ad = icmp eq i8 %i.aa, %i.ac, !dbg !22631
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22633

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !22198, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22345)
    #dbg_value(ptr %1, !22199, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22346)
    #dbg_value(double %i.q, !22347, !DIExpression(), !22350)
  %i.ae = fcmp uno double %i.q, 0.000000e+00, !dbg !22634
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
    #dbg_value(double %i.ag, !22347, !DIExpression(), !22352)
  %i.ah = fcmp uno double %i.ag, 0.000000e+00
  %or.cond = select i1 %i.ae, i1 %i.ah, i1 false, !dbg !22635
  %i.ai = fcmp oeq double %i.q, %i.ag
  %spec.select = select i1 %or.cond, i1 true, i1 %i.ai, !dbg !22635
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22635

bb.l:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !22200, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22354), !dbg !22230
    #dbg_value(double %i.q, !6178, !DIExpression(), !21913)
    #dbg_value(double %i.q, !6184, !DIExpression(), !21915)
    #dbg_value(double %i.q, !6191, !DIExpression(), !21917)
    #dbg_value(double %i.q, !6194, !DIExpression(), !21919)
    #dbg_value(double %i.q, !6200, !DIExpression(), !21921)
    #dbg_value(double %i.q, !6203, !DIExpression(), !21925)
    #dbg_value(double %i.q, !6191, !DIExpression(), !21927)
    #dbg_value(double %i.q, !6194, !DIExpression(), !21929)
    #dbg_value(double %i.q, !6200, !DIExpression(), !21931)
    #dbg_value(ptr %1, !6181, !DIExpression(), !21913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22355), !dbg !22636
    #dbg_value(ptr %1, !6021, !DIExpression(), !21935)
  %i.aj = add nsw i8 %.pr, -2, !dbg !22637
  %i.ak = icmp samesign ugt i8 %.pr, 1, !dbg !22637
  %narrow.i.i = select i1 %i.ak, i8 %i.aj, i8 8, !dbg !22637
  switch i8 %narrow.i.i, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ], !dbg !22638

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21936)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22639
  %i.am = load i64, ptr %i.al, align 8, !dbg !22639, !alias.scope !22356, !noundef !1568
  %i.an = zext i64 %i.am to i128, !dbg !22639
  br label %.sink.split.i.i, !dbg !22640

bb.n:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21937)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22641
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !22641, !alias.scope !22356, !noundef !1568
  %i.aq = sext i64 %i.ap to i128, !dbg !22641
  br label %.sink.split.i.i, !dbg !22642

bb.o:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21938)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22643
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !22643, !alias.scope !22356, !nonnull !1568, !noundef !1568
  %i.at = load i128, ptr %i.as, align 16, !dbg !22643, !noalias !22357, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.at, !6031, !DIExpression(), !21941)
  %i.au = icmp slt i128 %i.at, 0, !dbg !22644
  br i1 %i.au, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, label %.sink.split.i.i, !dbg !22644

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i: ; preds = %bb.o
    #dbg_value(i128 %i.at, !6231, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !21942)
    #dbg_value(i128 1, !6231, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !21942)
    #dbg_value(ptr poison, !6232, !DIExpression(), !21943)
    #dbg_value(ptr poison, !6216, !DIExpression(), !21944)
    #dbg_value(i128 %i.at, !6233, !DIExpression(), !21945)
    #dbg_value(i128 %i.at, !6215, !DIExpression(), !21946)
    #dbg_value(i128 %i.at, !6206, !DIExpression(), !21925)
  %or.cond111 = fcmp oge double %i.q, 0.000000e+00, !dbg !22645
  %i.av = fcmp ult double %i.q, f0x47F0000000000000
  %or.cond112 = and i1 %i.av, %or.cond111, !dbg !22645
  br i1 %or.cond112, label %bb.r, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22645

bb.p:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21947)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22646
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !22646, !alias.scope !22356, !nonnull !1568, !noundef !1568
  %i.ay = load i128, ptr %i.ax, align 16, !dbg !22646, !noalias !22357, !noundef !1568
  br label %.sink.split.i.i, !dbg !22647

.sink.split.i.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.5.0.ph.i = phi i128 [ %i.an, %bb.m ], [ %i.aq, %bb.n ], [ %i.ay, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i, !6182, !DIExpression(), !21948)
    #dbg_value(i128 %.sroa.5.0.ph.i, !6187, !DIExpression(), !21915)
  %i.az = fcmp ord double %i.q, 0.000000e+00, !dbg !22648
  %i.ba = fcmp uge double %i.q, f0xC7E0000000000000
  %or.cond109.not123 = and i1 %i.az, %i.ba, !dbg !22649
  %i.bb = fcmp ult double %i.q, f0x47E0000000000000
  %or.cond110 = and i1 %i.bb, %or.cond109.not123, !dbg !22649
  br i1 %or.cond110, label %bb.q, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22649

bb.q:                                             ; preds = %.sink.split.i.i
  %i.bc = tail call double @llvm.floor.f64(double %i.q), !dbg !22650 ; 2 uses
    #dbg_value(double %i.bc, !6188, !DIExpression(), !21949)
  %i.bd = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.bc), !dbg !22651 ; 2 uses
    #dbg_value(ptr poison, !6236, !DIExpression(), !21951)
    #dbg_value(ptr poison, !6239, !DIExpression(), !21952)
  %i.be = tail call i8 @llvm.scmp.i8.i128(i128 %i.bd, i128 %.sroa.5.0.ph.i), !dbg !22652
  %i.bf = icmp eq i128 %i.bd, %.sroa.5.0.ph.i, !dbg !22653
  %i.bg = fcmp ogt double %i.q, %i.bc
  %or.cond.i = and i1 %i.bg, %i.bf, !dbg !22653
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %i.be, !dbg !22653
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22653

bb.r:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i
  %i.bh = tail call double @llvm.floor.f64(double %i.q), !dbg !22654 ; 2 uses
    #dbg_value(double %i.bh, !6207, !DIExpression(), !21953)
  %i.bi = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.bh), !dbg !22655 ; 2 uses
    #dbg_value(ptr poison, !6241, !DIExpression(), !21955)
    #dbg_value(ptr poison, !6245, !DIExpression(), !21956)
  %i.bj = tail call i8 @llvm.ucmp.i8.i128(i128 %i.bi, i128 %i.at), !dbg !22656
  %i.bk = icmp eq i128 %i.bi, %i.at, !dbg !22657
  %i.bl = fcmp ogt double %i.q, %i.bh
  %or.cond1.i = and i1 %i.bl, %i.bk, !dbg !22657
  %spec.store.select2.i = select i1 %or.cond1.i, i8 1, i8 %i.bj, !dbg !22657
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22657

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit: ; preds = %bb.l, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, %.sink.split.i.i, %bb.q, %bb.r
  %.sroa.0.0.i = phi i8 [ 1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i ], [ %spec.store.select.i, %bb.q ], [ 1, %.sink.split.i.i ], [ 1, %bb.l ], [ %spec.store.select2.i, %bb.r ], !dbg !22658
    #dbg_value(ptr undef, !22218, !DIExpression(), !22231)
  %i.bm = icmp eq i8 %.sroa.0.0.i, 0, !dbg !22659
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22660

bb.s:                                             ; preds = %bb.f
    #dbg_value(ptr %0, !22194, !DIExpression(), !22358)
    #dbg_value(ptr %1, !22195, !DIExpression(), !22358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22359), !dbg !22661
    #dbg_value(ptr %0, !2819, !DIExpression(), !21960)
    #dbg_value(i64 0, !2830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21965)
    #dbg_value(i64 0, !2881, !DIExpression(), !21967)
  %i.bn = trunc nuw i8 %i.b to i1, !dbg !22662
  br i1 %i.bn, label %bb.t, label %bb.u, !dbg !22663

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %0, !2827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21968)
    #dbg_value(ptr %0, !2895, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21970)
    #dbg_value(ptr %0, !2900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21972)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22664
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !22664, !alias.scope !22359, !nonnull !1568, !noundef !1568
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22664
  %i.br = load i64, ptr %i.bq, align 8, !dbg !22664, !alias.scope !22359, !noundef !1568
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !22665
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !22666

bb.u:                                             ; preds = %bb.s
    #dbg_value(ptr %0, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21974)
    #dbg_value(ptr %0, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21975)
    #dbg_value(ptr %0, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21976)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !22667
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !22667, !alias.scope !22359, !noundef !1568 ; 2 uses
  %i.bv = zext i8 %i.bu to i64, !dbg !22667       ; 2 uses
    #dbg_value(i64 %i.bv, !2878, !DIExpression(), !21976)
    #dbg_value(i64 %i.bv, !2868, !DIExpression(), !21977)
    #dbg_value(i64 %i.bv, !2861, !DIExpression(), !21978)
    #dbg_value(i64 %i.bv, !2830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21965)
    #dbg_value(i64 %i.bv, !2854, !DIExpression(), !21965)
    #dbg_value(i64 %i.bv, !2892, !DIExpression(), !21967)
    #dbg_value(ptr %0, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21977)
    #dbg_value(ptr %0, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21978)
    #dbg_value(ptr %0, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21965)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21977)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21978)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21965)
  %i.bw = icmp ult i8 %i.bu, 22
  br i1 %i.bw, label %bb.v, label %bb.w, !dbg !22668, !prof !2914

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !22669
    #dbg_value(ptr %i.bx, !2825, !DIExpression(), !21975)
    #dbg_value(ptr %i.bx, !2877, !DIExpression(), !21976)
    #dbg_value(ptr %i.bx, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21977)
    #dbg_value(ptr %i.bx, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21978)
    #dbg_value(ptr %i.bx, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21965)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !22670

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bv, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !22671, !noalias !22359
  unreachable, !dbg !22671

_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit: ; preds = %bb.t, %bb.v
  %.sroa.3.0.i = phi i64 [ %i.br, %bb.t ], [ %i.bv, %bb.v ], !dbg !22672 ; 2 uses
  %.sroa.0.0.i72 = phi ptr [ %i.bs, %bb.t ], [ %i.bx, %bb.v ], !dbg !22672
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a
  ], !dbg !22753

bb.av:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22133)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22754
  %i.fm = load i64, ptr %i.fl, align 8, !dbg !22754, !alias.scope !22620, !noundef !1568
  %i.fn = zext i64 %i.fm to i128, !dbg !22754
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22755

bb.aw:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22134)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22756
  %i.fp = load i64, ptr %i.fo, align 8, !dbg !22756, !alias.scope !22620, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fp, !6277, !DIExpression(), !22136)
  %i.fq = icmp sgt i64 %i.fp, -1, !dbg !22757
  br i1 %i.fq, label %bb.az, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22757

bb.ax:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22137)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22758
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !22758, !alias.scope !22620, !nonnull !1568, !noundef !1568
  %i.ft = load i128, ptr %i.fs, align 16, !dbg !22758, !noalias !22621, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22759

bb.ay:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22139)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22760
  %i.fv = load ptr, ptr %i.fu, align 8, !dbg !22760, !alias.scope !22620, !nonnull !1568, !noundef !1568
  %i.fw = load i128, ptr %i.fv, align 16, !dbg !22760, !noalias !22621, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.fw, !6282, !DIExpression(), !22141)
  %i.fx = icmp sgt i128 %i.fw, -1, !dbg !22761
  br i1 %i.fx, label %.sink.split.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22761

.sink.split.i:                                    ; preds = %bb.ay
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22762

bb.az:                                            ; preds = %bb.aw
  %i.fy = zext nneg i64 %i.fp to i128, !dbg !22763
    #dbg_value(i128 %i.fy, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22142)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22142)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22764

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit: ; preds = %bb.av, %bb.ax, %bb.az, %bb.au, %bb.aw, %bb.ay, %.sink.split.i
  %.sroa.2.0 = phi i128 [ undef, %bb.au ], [ undef, %bb.ay ], [ undef, %bb.aw ], [ %i.fn, %bb.av ], [ %i.fy, %bb.az ], [ %i.ft, %bb.ax ], [ %i.fw, %.sink.split.i ]
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
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22767
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !22767, !alias.scope !22622, !noundef !1568
  %i.gb = zext i64 %i.ga to i128, !dbg !22767
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22768

bb.bb:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22152)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22769
  %i.gd = load i64, ptr %i.gc, align 8, !dbg !22769, !alias.scope !22622, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.gd, !6277, !DIExpression(), !22154)
  %i.ge = icmp sgt i64 %i.gd, -1, !dbg !22770
  br i1 %i.ge, label %bb.be, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22770

bb.bc:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22155)
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22771
  %i.gg = load ptr, ptr %i.gf, align 8, !dbg !22771, !alias.scope !22622, !nonnull !1568, !noundef !1568
  %i.gh = load i128, ptr %i.gg, align 16, !dbg !22771, !noalias !22623, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22772

bb.bd:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22157)
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22773
  %i.gj = load ptr, ptr %i.gi, align 8, !dbg !22773, !alias.scope !22622, !nonnull !1568, !noundef !1568
  %i.gk = load i128, ptr %i.gj, align 16, !dbg !22773, !noalias !22623, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.gk, !6282, !DIExpression(), !22159)
  %i.gl = icmp sgt i128 %i.gk, -1, !dbg !22774
  br i1 %i.gl, label %.sink.split.i89, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22774

.sink.split.i89:                                  ; preds = %bb.bd
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22775

bb.be:                                            ; preds = %bb.bb
  %i.gm = zext nneg i64 %i.gd to i128, !dbg !22776
    #dbg_value(i128 %i.gm, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22160)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22160)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22777

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91: ; preds = %bb.ba, %bb.bc, %bb.be, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, %bb.bb, %bb.bd, %.sink.split.i89
  %.sroa.3.0 = phi i128 [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ undef, %bb.bd ], [ undef, %bb.bb ], [ %i.gb, %bb.ba ], [ %i.gm, %bb.be ], [ %i.gh, %bb.bc ], [ %i.gk, %.sink.split.i89 ]
  %storemerge.sink.i88.off0 = phi i1 [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ false, %bb.bd ], [ false, %bb.bb ], [ true, %bb.ba ], [ true, %bb.be ], [ true, %bb.bc ], [ true, %.sink.split.i89 ] ; 2 uses
  br i1 %storemerge.sink.i.off0, label %bb.bf, label %bb.bg, !dbg !22778

bb.bf:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91
  %i.gn = icmp eq i128 %.sroa.2.0, %.sroa.3.0
  %spec.select107 = select i1 %storemerge.sink.i88.off0, i1 %i.gn, i1 false, !dbg !22778
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
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22781
  %i.gp = load i64, ptr %i.go, align 8, !dbg !22781, !alias.scope !22624, !noundef !1568
  %i.gq = zext i64 %i.gp to i128, !dbg !22781
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22782

bb.bj:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22166)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22783
  %i.gs = load i64, ptr %i.gr, align 8, !dbg !22783, !alias.scope !22624, !noundef !1568
  %i.gt = sext i64 %i.gs to i128, !dbg !22783
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22784

bb.bk:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22167)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22785
  %i.gv = load ptr, ptr %i.gu, align 8, !dbg !22785, !alias.scope !22624, !nonnull !1568, !noundef !1568
  %i.gw = load i128, ptr %i.gv, align 16, !dbg !22785, !noalias !22625, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.gw, !6031, !DIExpression(), !22170)
  %i.gx = icmp slt i128 %i.gw, 0, !dbg !22786
  br i1 %i.gx, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, label %.sink.split.i93, !dbg !22786

bb.bl:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22171)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22787
  %i.gz = load ptr, ptr %i.gy, align 8, !dbg !22787, !alias.scope !22624, !nonnull !1568, !noundef !1568
  %i.ha = load i128, ptr %i.gz, align 16, !dbg !22787, !noalias !22625, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22788

.sink.split.i93:                                  ; preds = %bb.bk
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22789

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit: ; preds = %bb.bi, %bb.bj, %bb.bl, %bb.bh, %bb.bk, %.sink.split.i93
  %.sroa.4.0 = phi i128 [ undef, %bb.bh ], [ undef, %bb.bk ], [ %i.gq, %bb.bi ], [ %i.ha, %bb.bl ], [ %i.gt, %bb.bj ], [ %i.gw, %.sink.split.i93 ], !dbg !22790
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
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22793
  %i.hc = load i64, ptr %i.hb, align 8, !dbg !22793, !alias.scope !22626, !noundef !1568
  %i.hd = zext i64 %i.hc to i128, !dbg !22793
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100, !dbg !22794

bb.bn:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22177)
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22795
  %i.hf = load i64, ptr %i.he, align 8, !dbg !22795, !alias.scope !22626, !noundef !1568
  %i.hg = sext i64 %i.hf to i128, !dbg !22795
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100, !dbg !22796

bb.bo:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit
    #dbg_value(ptr %1, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22178)
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22797
  %i.hi = load ptr, ptr %i.hh, align 8, !dbg !22797, !alias.scope !22626, !nonnull !1568, !noundef !1568
  %i.hj = load i128, ptr %i.hi, align 16, !dbg !22797, !noalias !22627, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.hj, !6031, !DIExpression(), !22181)
  %i.hk = icmp slt i128 %i.hj, 0, !dbg !22798
  br i1 %i.hk, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100, label %.sink.split.i97, !dbg !22798

bb.bp:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit
    #dbg_value(ptr %1, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22182)
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22799
  %i.hm = load ptr, ptr %i.hl, align 8, !dbg !22799, !alias.scope !22626, !nonnull !1568, !noundef !1568
  %i.hn = load i128, ptr %i.hm, align 16, !dbg !22799, !noalias !22627, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100, !dbg !22800

.sink.split.i97:                                  ; preds = %bb.bo
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100, !dbg !22801

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100: ; preds = %bb.bm, %bb.bn, %bb.bp, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, %bb.bo, %.sink.split.i97
  %.sroa.5.0 = phi i128 [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit ], [ undef, %bb.bo ], [ %i.hd, %bb.bm ], [ %i.hn, %bb.bp ], [ %i.hg, %bb.bn ], [ %i.hj, %.sink.split.i97 ], !dbg !22790
  %storemerge.sink.i99.off0 = phi i1 [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit ], [ false, %bb.bo ], [ true, %bb.bm ], [ true, %bb.bp ], [ true, %bb.bn ], [ true, %.sink.split.i97 ] ; 2 uses
    #dbg_value(ptr undef, !22206, !DIExpression(), !22215)
  br i1 %storemerge.sink.i95.off0, label %bb.bq, label %2, !dbg !22802

bb.bq:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100
  %i.ho = icmp eq i128 %.sroa.4.0, %.sroa.5.0
  %spec.select108 = and i1 %storemerge.sink.i99.off0, %i.ho, !dbg !22802
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22802

2:                                                ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100
  %3 = xor i1 %storemerge.sink.i99.off0, true, !dbg !22802
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22802
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs5yXxDE1DkoT_4tera4argsNtNtB7_5value5ValueNtB5_12ArgFromValue10from_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22803 {
bb.a:
  %.sroa.7.i = alloca [6 x i8], align 2           ; 2 uses
    #dbg_value(ptr %1, !22891, !DIExpression(), !22893)
    #dbg_value(ptr %1, !22894, !DIExpression(), !22897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22898), !dbg !22900
    #dbg_value(ptr %1, !5214, !DIExpression(), !22808)
    #dbg_value(i64 1, !5229, !DIExpression(), !22811)
    #dbg_value(i8 0, !5231, !DIExpression(), !22811)
    #dbg_value(i64 1, !5238, !DIExpression(), !22813)
    #dbg_value(i8 0, !5240, !DIExpression(), !22813)
    #dbg_value(i64 1, !5229, !DIExpression(), !22816)
    #dbg_value(i8 0, !5231, !DIExpression(), !22816)
    #dbg_value(i64 1, !5238, !DIExpression(), !22818)
    #dbg_value(i8 0, !5240, !DIExpression(), !22818)
    #dbg_value(i64 1, !5229, !DIExpression(), !22821)
    #dbg_value(i8 0, !5231, !DIExpression(), !22821)
    #dbg_value(i64 1, !5238, !DIExpression(), !22823)
    #dbg_value(i8 0, !5240, !DIExpression(), !22823)
    #dbg_value(i64 1, !5229, !DIExpression(), !22827)
    #dbg_value(i8 0, !5231, !DIExpression(), !22827)
    #dbg_value(i64 1, !5238, !DIExpression(), !22829)
    #dbg_value(i8 0, !5240, !DIExpression(), !22829)
  %i.a = load i8, ptr %1, align 8, !dbg !22901, !range !2814, !alias.scope !22898, !noundef !1568 ; 4 uses
  %i.b = icmp ne i8 %i.a, 10, !dbg !22901
  tail call void @llvm.assume(i1 %i.b), !dbg !22901
  %i.c = add nsw i8 %i.a, -2, !dbg !22901
  %i.d = icmp samesign ugt i8 %i.a, 1, !dbg !22901
  %narrow.i = select i1 %i.d, i8 %i.c, i8 8, !dbg !22901
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
  ], !dbg !22901

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !22902

bb.c:                                             ; preds = %bb.a
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22901

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5218, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22830)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22903
  %i.f = load i8, ptr %i.e, align 1, !dbg !22903, !range !2817, !alias.scope !22898, !noundef !1568
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5219, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22831)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22905
  %i.h = load i64, ptr %i.g, align 8, !dbg !22905, !alias.scope !22898, !noundef !1568
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5220, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22832)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22906
  %i.j = load i64, ptr %i.i, align 8, !dbg !22906, !alias.scope !22898, !noundef !1568
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22904

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
end_hunk_1
