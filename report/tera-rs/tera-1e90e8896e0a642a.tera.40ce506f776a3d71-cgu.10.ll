Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.10?download=true
inline.NumInlined: 539
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value11SmartStringNtB6_7Display3fmtBA_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !21722
  %i.i = load i64, ptr %i.h, align 8, !dbg !21722, !alias.scope !21714, !noundef !1568
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21723
  br label %_RNvXs_NtCs5yXxDE1DkoT_4tera5valueNtB4_11SmartStringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt.exit, !dbg !21724

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21700)
    #dbg_value(ptr %i.c, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21701)
    #dbg_value(ptr %i.c, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21702)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !21725
  %i.l = load i8, ptr %i.k, align 1, !dbg !21725, !alias.scope !21714, !noundef !1568 ; 2 uses
  %i.m = zext i8 %i.l to i64, !dbg !21725         ; 2 uses
    #dbg_value(i64 %i.m, !2878, !DIExpression(), !21702)
    #dbg_value(i64 %i.m, !2868, !DIExpression(), !21703)
    #dbg_value(i64 %i.m, !2861, !DIExpression(), !21704)
    #dbg_value(i64 %i.m, !2830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21691)
    #dbg_value(i64 %i.m, !2854, !DIExpression(), !21691)
    #dbg_value(i64 %i.m, !2892, !DIExpression(), !21693)
    #dbg_value(ptr %i.c, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21703)
    #dbg_value(ptr %i.c, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21704)
    #dbg_value(ptr %i.c, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21691)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21703)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21704)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21691)
  %i.n = icmp ult i8 %i.l, 22
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !21726, !prof !2914

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2, !dbg !21727
    #dbg_value(ptr %i.o, !2825, !DIExpression(), !21701)
    #dbg_value(ptr %i.o, !2877, !DIExpression(), !21702)
    #dbg_value(ptr %i.o, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21703)
    #dbg_value(ptr %i.o, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21704)
    #dbg_value(ptr %i.o, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21691)
  br label %_RNvXs_NtCs5yXxDE1DkoT_4tera5valueNtB4_11SmartStringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt.exit, !dbg !21728

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !21729, !noalias !21715
  unreachable, !dbg !21729

_RNvXs_NtCs5yXxDE1DkoT_4tera5valueNtB4_11SmartStringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.d
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.d ], !dbg !21730
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.d ], !dbg !21730
  store ptr %.sroa.0.0.i.i, ptr %i.b, align 8, !dbg !21719, !noalias !21712
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21719
  store i64 %.sroa.3.0.i.i, ptr %i.p, align 8, !dbg !21719, !noalias !21712
    #dbg_value(ptr %i.b, !6150, !DIExpression(), !21705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21731, !noalias !21712
  store ptr %i.b, ptr %i.a, align 8, !dbg !21731, !noalias !21712
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21731
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !21731, !noalias !21712
    #dbg_value(ptr @13, !6155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21682)
    #dbg_value(ptr %i.a, !6155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21682)
  %i.q = load ptr, ptr %1, align 8, !dbg !21732, !alias.scope !21711, !nonnull !1568, !noundef !1568
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21732
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21732, !alias.scope !21711, !nonnull !1568, !align !3192, !noundef !1568
  %i.t = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @13, ptr noundef nonnull %i.a), !dbg !21733, !noalias !21711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21734, !noalias !21712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21734, !noalias !21712
  ret i1 %i.t, !dbg !21735
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !21736 {
bb.a:
    #dbg_value(ptr %0, !21737, !DIExpression(), !21740)
    #dbg_value(ptr %1, !21738, !DIExpression(), !21740)
  %i.a = load ptr, ptr %0, align 8, !dbg !21741, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21742
  ret i1 %i.b, !dbg !21743
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21744 {
bb.a:
    #dbg_value(ptr %0, !21749, !DIExpression(), !21752)
    #dbg_value(ptr %1, !21750, !DIExpression(), !21752)
  %i.a = load ptr, ptr %0, align 8, !dbg !21754, !nonnull !1568, !align !3192, !noundef !1568 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21753), !dbg !21755
    #dbg_value(ptr %i.a, !6159, !DIExpression(), !21748)
    #dbg_value(ptr %1, !6160, !DIExpression(), !21748)
  %i.b = load ptr, ptr %i.a, align 8, !dbg !21756, !alias.scope !21753, !nonnull !1568, !noundef !1568
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21756
  %i.d = load i64, ptr %i.c, align 8, !dbg !21756, !alias.scope !21753, !noundef !1568
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21757, !noalias !21753
  ret i1 %i.e, !dbg !21758
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRbNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21759 {
bb.a:
    #dbg_value(ptr %0, !21760, !DIExpression(), !21763)
    #dbg_value(ptr %1, !21761, !DIExpression(), !21763)
  %i.a = load ptr, ptr %0, align 8, !dbg !21764, !nonnull !1568, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21765
  ret i1 %i.b, !dbg !21766
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRdNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21767 {
bb.a:
    #dbg_value(ptr %0, !21768, !DIExpression(), !21771)
    #dbg_value(ptr %1, !21769, !DIExpression(), !21771)
  %i.a = load ptr, ptr %0, align 8, !dbg !21772, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21773
  ret i1 %i.b, !dbg !21774
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1253 {
bb.a:
    #dbg_value(ptr %0, !6159, !DIExpression(), !21775)
    #dbg_value(ptr %1, !6160, !DIExpression(), !21775)
  %i.a = load ptr, ptr %0, align 8, !dbg !21776, !nonnull !1568, !noundef !1568
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21776
  %i.c = load i64, ptr %i.b, align 8, !dbg !21776, !noundef !1568
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21777
  ret i1 %i.d, !dbg !21778
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRnNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21779 {
bb.a:
    #dbg_value(ptr %0, !21780, !DIExpression(), !21783)
    #dbg_value(ptr %1, !21781, !DIExpression(), !21783)
  %i.a = load ptr, ptr %0, align 8, !dbg !21784, !nonnull !1568, !align !3193, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21785
  ret i1 %i.b, !dbg !21786
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRoNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21787 {
bb.a:
    #dbg_value(ptr %0, !21788, !DIExpression(), !21791)
    #dbg_value(ptr %1, !21789, !DIExpression(), !21791)
  %i.a = load ptr, ptr %0, align 8, !dbg !21792, !nonnull !1568, !align !3193, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21793
  ret i1 %i.b, !dbg !21794
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRxNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21795 {
bb.a:
    #dbg_value(ptr %0, !21796, !DIExpression(), !21799)
    #dbg_value(ptr %1, !21797, !DIExpression(), !21799)
  %i.a = load ptr, ptr %0, align 8, !dbg !21800, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21801
  ret i1 %i.b, !dbg !21802
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRyNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21803 {
bb.a:
    #dbg_value(ptr %0, !21804, !DIExpression(), !21807)
    #dbg_value(ptr %1, !21805, !DIExpression(), !21807)
  %i.a = load ptr, ptr %0, align 8, !dbg !21808, !nonnull !1568, !align !3192, !noundef !1568
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21809
  ret i1 %i.b, !dbg !21810
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !1240 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !6077, !DIExpression(), !21811)
    #dbg_value(ptr %1, !6079, !DIExpression(), !21811)
    #dbg_value(ptr %1, !6087, !DIExpression(), !21813)
    #dbg_value(ptr %0, !6081, !DIExpression(), !21814)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21815
  store ptr %0, ptr %i.a, align 8, !dbg !21815
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21815
  store ptr @_RNvXsV_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !21815
    #dbg_value(ptr @13, !6088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21813)
    #dbg_value(ptr %i.a, !6088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21813)
  %i.b = load ptr, ptr %1, align 8, !dbg !21816, !nonnull !1568, !noundef !1568
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21816
  %i.d = load ptr, ptr %i.c, align 8, !dbg !21816, !nonnull !1568, !align !3192, !noundef !1568
  %i.e = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.a), !dbg !21817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21818
  ret i1 %i.e, !dbg !21819
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !21829 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !22145, !DIExpression(), !22154)
    #dbg_value(ptr poison, !22149, !DIExpression(), !22155)
    #dbg_value(ptr poison, !22157, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22168)
    #dbg_value(ptr poison, !22157, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22170)
    #dbg_value(ptr %0, !22125, !DIExpression(), !22171)
    #dbg_value(ptr %1, !22126, !DIExpression(), !22171)
    #dbg_value(ptr poison, !22160, !DIExpression(), !22172)
    #dbg_value(ptr poison, !22160, !DIExpression(), !22173)
  %i.b = load i8, ptr %0, align 8, !dbg !22563, !range !2814, !noundef !1568 ; 4 uses
  %i.c = icmp ne i8 %i.b, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.c), !dbg !22563
  %i.d = add nsw i8 %i.b, -2, !dbg !22563
  %i.e = icmp samesign ugt i8 %i.b, 1, !dbg !22563
  %narrow = select i1 %i.e, i8 %i.d, i8 8, !dbg !22563 ; 5 uses
  %.pr = load i8, ptr %1, align 8, !dbg !22563    ; 23 uses
  switch i8 %narrow, label %thread-pre-split [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 5, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
    i8 10, label %bb.h
    i8 11, label %bb.i
  ], !dbg !22564

thread-pre-split:                                 ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %i.f = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.f), !dbg !22563
  %i.g = icmp eq i8 %.pr, 7, !dbg !22564
  br i1 %i.g, label %bb.al, label %bb.as, !dbg !22564

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.h), !dbg !22563
  %2 = icmp eq i8 %.pr, 2, !dbg !22564
  br i1 %2, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %thread-pre-split, !dbg !22564

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.i), !dbg !22563
  %3 = icmp eq i8 %.pr, 3, !dbg !22564
  br i1 %3, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %thread-pre-split, !dbg !22564

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.j), !dbg !22563
  %4 = icmp eq i8 %.pr, 4, !dbg !22564
  br i1 %4, label %bb.j, label %thread-pre-split, !dbg !22564

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.k), !dbg !22563
  %i.l = icmp eq i8 %.pr, 7, !dbg !22564
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22171
  %i.n = load double, ptr %i.m, align 8, !dbg !22171, !noundef !1568 ; 11 uses
  br i1 %i.l, label %bb.k, label %bb.l, !dbg !22564

bb.f:                                             ; preds = %bb.a
  %i.o = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.o), !dbg !22563
  %i.p = icmp samesign ult i8 %.pr, 2, !dbg !22563
  br i1 %i.p, label %bb.s, label %thread-pre-split, !dbg !22564

bb.g:                                             ; preds = %bb.a
  %i.q = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.q), !dbg !22563
  %5 = icmp eq i8 %.pr, 11, !dbg !22564
  br i1 %5, label %bb.ac, label %thread-pre-split, !dbg !22564

bb.h:                                             ; preds = %bb.a
  %i.r = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.r), !dbg !22563
  %6 = icmp eq i8 %.pr, 12, !dbg !22564
  br i1 %6, label %bb.af, label %thread-pre-split, !dbg !22564

bb.i:                                             ; preds = %bb.a
  %i.s = icmp ne i8 %.pr, 10, !dbg !22563
  tail call void @llvm.assume(i1 %i.s), !dbg !22563
  %7 = icmp eq i8 %.pr, 13, !dbg !22564
  br i1 %7, label %bb.ai, label %thread-pre-split, !dbg !22564

_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph, %bb.ae, %bb.bq, %bb.bf, %bb.k, %bb.br, %bb.ah, %bb.ag, %bb.bg, %bb.as, %bb.at, %bb.aj, %bb.ai, %bb.af, %bb.ad, %bb.ac, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75, %bb.c, %bb.b, %bb.ak, %bb.ab, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, %bb.j
  %.sroa.0.0 = phi i1 [ %i.fc, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86 ], [ false, %bb.aj ], [ %spec.select, %bb.k ], [ false, %bb.as ], [ false, %bb.ag ], [ true, %bb.ai ], [ true, %bb.b ], [ %i.x, %bb.j ], [ true, %bb.c ], [ %spec.select108, %bb.bq ], [ %i.bg, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit ], [ %i.ce, %bb.ab ], [ %i.hj, %bb.br ], [ false, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75 ], [ %spec.select107, %bb.bf ], [ true, %bb.ac ], [ false, %bb.ad ], [ %i.dj, %bb.ah ], [ true, %bb.af ], [ %i.dy, %bb.ak ], [ false, %bb.at ], [ false, %bb.bg ], [ true, %bb.ae ], [ %i.cv, %.lr.ph ], !dbg !22171
  ret i1 %.sroa.0.0, !dbg !22565

bb.j:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !22127, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22174)
    #dbg_value(ptr %0, !22175, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22184)
    #dbg_value(ptr %1, !22128, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22193)
    #dbg_value(ptr %1, !22179, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22194)
    #dbg_value(ptr poison, !22187, !DIExpression(), !22195)
    #dbg_value(ptr poison, !22188, !DIExpression(), !22196)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !22566
  %i.u = load i8, ptr %i.t, align 1, !dbg !22566, !range !2817, !noundef !1568
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22567
  %i.w = load i8, ptr %i.v, align 1, !dbg !22567, !range !2817, !noundef !1568
  %i.x = icmp eq i8 %i.u, %i.w, !dbg !22566
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22568

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !22137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22197)
    #dbg_value(ptr %1, !22138, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22198)
    #dbg_value(double %i.n, !22199, !DIExpression(), !22202)
  %i.y = fcmp uno double %i.n, 0.000000e+00, !dbg !22569
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8          ; 2 uses
    #dbg_value(double %i.aa, !22199, !DIExpression(), !22204)
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false, !dbg !22570
  %i.ac = fcmp oeq double %i.n, %i.aa
  %spec.select = select i1 %or.cond, i1 true, i1 %i.ac, !dbg !22570
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22570

bb.l:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !22139, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22206), !dbg !22169
    #dbg_value(double %i.n, !6176, !DIExpression(), !21841)
    #dbg_value(double %i.n, !6182, !DIExpression(), !21843)
    #dbg_value(double %i.n, !6189, !DIExpression(), !21845)
    #dbg_value(double %i.n, !6192, !DIExpression(), !21847)
    #dbg_value(double %i.n, !6198, !DIExpression(), !21849)
    #dbg_value(double %i.n, !6201, !DIExpression(), !21853)
    #dbg_value(double %i.n, !6189, !DIExpression(), !21855)
    #dbg_value(double %i.n, !6192, !DIExpression(), !21857)
    #dbg_value(double %i.n, !6198, !DIExpression(), !21859)
    #dbg_value(ptr %1, !6179, !DIExpression(), !21841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22207), !dbg !22571
    #dbg_value(ptr %1, !6021, !DIExpression(), !21863)
  %i.ad = add nsw i8 %.pr, -2, !dbg !22572
  %i.ae = icmp samesign ugt i8 %.pr, 1, !dbg !22572
  %narrow.i.i = select i1 %i.ae, i8 %i.ad, i8 8, !dbg !22572
  switch i8 %narrow.i.i, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ], !dbg !22573

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21864)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22574
  %i.ag = load i64, ptr %i.af, align 8, !dbg !22574, !alias.scope !22208, !noundef !1568
  %i.ah = zext i64 %i.ag to i128, !dbg !22574
  br label %.sink.split.i.i, !dbg !22575

bb.n:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21865)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22576
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !22576, !alias.scope !22208, !noundef !1568
  %i.ak = sext i64 %i.aj to i128, !dbg !22576
  br label %.sink.split.i.i, !dbg !22577

bb.o:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21866)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22578
  %i.am = load ptr, ptr %i.al, align 8, !dbg !22578, !alias.scope !22208, !nonnull !1568, !noundef !1568
  %i.an = load i128, ptr %i.am, align 16, !dbg !22578, !noalias !22209, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.an, !6031, !DIExpression(), !21869)
  %i.ao = icmp slt i128 %i.an, 0, !dbg !22579
  br i1 %i.ao, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, label %.sink.split.i.i, !dbg !22579

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i: ; preds = %bb.o
    #dbg_value(i128 %i.an, !6229, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !21870)
    #dbg_value(i128 1, !6229, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !21870)
    #dbg_value(ptr poison, !6230, !DIExpression(), !21871)
    #dbg_value(ptr poison, !6214, !DIExpression(), !21872)
    #dbg_value(i128 %i.an, !6231, !DIExpression(), !21873)
    #dbg_value(i128 %i.an, !6213, !DIExpression(), !21874)
    #dbg_value(i128 %i.an, !6204, !DIExpression(), !21853)
  %or.cond111 = fcmp oge double %i.n, 0.000000e+00, !dbg !22580
  %i.ap = fcmp ult double %i.n, f0x47F0000000000000
  %or.cond112 = and i1 %i.ap, %or.cond111, !dbg !22580
  br i1 %or.cond112, label %bb.r, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22580

bb.p:                                             ; preds = %bb.l
    #dbg_value(ptr %1, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21875)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22581
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !22581, !alias.scope !22208, !nonnull !1568, !noundef !1568
  %i.as = load i128, ptr %i.ar, align 16, !dbg !22581, !noalias !22209, !noundef !1568
  br label %.sink.split.i.i, !dbg !22582

.sink.split.i.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.5.0.ph.i = phi i128 [ %i.ah, %bb.m ], [ %i.ak, %bb.n ], [ %i.as, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i, !6180, !DIExpression(), !21876)
    #dbg_value(i128 %.sroa.5.0.ph.i, !6185, !DIExpression(), !21843)
  %i.at = fcmp ord double %i.n, 0.000000e+00, !dbg !22583
  %i.au = fcmp uge double %i.n, f0xC7E0000000000000
  %or.cond109.not123 = and i1 %i.at, %i.au, !dbg !22584
  %i.av = fcmp ult double %i.n, f0x47E0000000000000
  %or.cond110 = and i1 %i.av, %or.cond109.not123, !dbg !22584
  br i1 %or.cond110, label %bb.q, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22584

bb.q:                                             ; preds = %.sink.split.i.i
  %i.aw = tail call double @llvm.floor.f64(double %i.n), !dbg !22585 ; 2 uses
    #dbg_value(double %i.aw, !6186, !DIExpression(), !21877)
  %i.ax = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.aw), !dbg !22586 ; 2 uses
    #dbg_value(ptr poison, !6234, !DIExpression(), !21879)
    #dbg_value(ptr poison, !6237, !DIExpression(), !21880)
  %i.ay = tail call i8 @llvm.scmp.i8.i128(i128 %i.ax, i128 %.sroa.5.0.ph.i), !dbg !22587
  %i.az = icmp eq i128 %i.ax, %.sroa.5.0.ph.i, !dbg !22588
  %i.ba = fcmp ogt double %i.n, %i.aw
  %or.cond.i = and i1 %i.ba, %i.az, !dbg !22588
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %i.ay, !dbg !22588
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22588

bb.r:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i
  %i.bb = tail call double @llvm.floor.f64(double %i.n), !dbg !22589 ; 2 uses
    #dbg_value(double %i.bb, !6205, !DIExpression(), !21881)
  %i.bc = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.bb), !dbg !22590 ; 2 uses
    #dbg_value(ptr poison, !6239, !DIExpression(), !21883)
    #dbg_value(ptr poison, !6243, !DIExpression(), !21884)
  %i.bd = tail call i8 @llvm.ucmp.i8.i128(i128 %i.bc, i128 %i.an), !dbg !22591
  %i.be = icmp eq i128 %i.bc, %i.an, !dbg !22592
  %i.bf = fcmp ogt double %i.n, %i.bb
  %or.cond1.i = and i1 %i.bf, %i.be, !dbg !22592
  %spec.store.select2.i = select i1 %or.cond1.i, i8 1, i8 %i.bd, !dbg !22592
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !22592

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit: ; preds = %bb.l, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, %.sink.split.i.i, %bb.q, %bb.r
  %.sroa.0.0.i = phi i8 [ 1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i ], [ %spec.store.select.i, %bb.q ], [ 1, %.sink.split.i.i ], [ 1, %bb.l ], [ %spec.store.select2.i, %bb.r ], !dbg !22593
    #dbg_value(ptr undef, !22157, !DIExpression(), !22170)
  %i.bg = icmp eq i8 %.sroa.0.0.i, 0, !dbg !22594
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22595

bb.s:                                             ; preds = %bb.f
    #dbg_value(ptr %0, !22133, !DIExpression(), !22210)
    #dbg_value(ptr %1, !22134, !DIExpression(), !22210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22211), !dbg !22596
    #dbg_value(ptr %0, !2819, !DIExpression(), !21888)
    #dbg_value(i64 0, !2830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21893)
    #dbg_value(i64 0, !2881, !DIExpression(), !21895)
  %i.bh = trunc nuw i8 %i.b to i1, !dbg !22597
  br i1 %i.bh, label %bb.t, label %bb.u, !dbg !22598

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %0, !2827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21896)
    #dbg_value(ptr %0, !2895, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21898)
    #dbg_value(ptr %0, !2900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21900)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22599
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !22599, !alias.scope !22211, !nonnull !1568, !noundef !1568
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22599
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !22599, !alias.scope !22211, !noundef !1568
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !22600
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !22601

bb.u:                                             ; preds = %bb.s
    #dbg_value(ptr %0, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21902)
    #dbg_value(ptr %0, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21903)
    #dbg_value(ptr %0, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !21904)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !22602
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !22602, !alias.scope !22211, !noundef !1568 ; 2 uses
  %i.bp = zext i8 %i.bo to i64, !dbg !22602       ; 2 uses
    #dbg_value(i64 %i.bp, !2878, !DIExpression(), !21904)
    #dbg_value(i64 %i.bp, !2868, !DIExpression(), !21905)
    #dbg_value(i64 %i.bp, !2861, !DIExpression(), !21906)
    #dbg_value(i64 %i.bp, !2830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21893)
    #dbg_value(i64 %i.bp, !2854, !DIExpression(), !21893)
    #dbg_value(i64 %i.bp, !2892, !DIExpression(), !21895)
    #dbg_value(ptr %0, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21905)
    #dbg_value(ptr %0, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21906)
    #dbg_value(ptr %0, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21893)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21905)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21906)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21893)
  %i.bq = icmp ult i8 %i.bo, 22
  br i1 %i.bq, label %bb.v, label %bb.w, !dbg !22603, !prof !2914

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !22604
    #dbg_value(ptr %i.br, !2825, !DIExpression(), !21903)
    #dbg_value(ptr %i.br, !2877, !DIExpression(), !21904)
    #dbg_value(ptr %i.br, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21905)
    #dbg_value(ptr %i.br, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21906)
    #dbg_value(ptr %i.br, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21893)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !22605

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bp, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !22606, !noalias !22211
  unreachable, !dbg !22606

_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit: ; preds = %bb.t, %bb.v
  %.sroa.3.0.i = phi i64 [ %i.bl, %bb.t ], [ %i.bp, %bb.v ], !dbg !22607 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a

bb.ab:                                            ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit75
    #dbg_value(ptr %.sroa.0.0.i74, !22226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22233)
    #dbg_value(ptr %.sroa.0.0.i74, !22213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22218)
    #dbg_value(ptr %.sroa.0.0.i72, !22212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22218)
    #dbg_value(ptr %.sroa.0.0.i72, !22225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22233)
    #dbg_value(ptr %.sroa.0.0.i72, !22241, !DIExpression(), !22248)
    #dbg_value(ptr %.sroa.0.0.i74, !22242, !DIExpression(), !22248)
  %bcmp61 = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i72, ptr nonnull %.sroa.0.0.i74, i64 %.sroa.3.0.i), !dbg !22621
  %i.ce = icmp eq i32 %bcmp61, 0, !dbg !22621
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22622

bb.ac:                                            ; preds = %bb.g
    #dbg_value(ptr %0, !22129, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22250)
    #dbg_value(ptr %0, !22251, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22260)
    #dbg_value(ptr %0, !22270, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22276)
    #dbg_value(ptr %1, !22130, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22277)
    #dbg_value(ptr %1, !22255, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22278)
    #dbg_value(ptr %1, !22272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22279)
    #dbg_value(ptr poison, !22264, !DIExpression(), !22280)
    #dbg_value(ptr poison, !22265, !DIExpression(), !22281)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22623
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !22623, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.cg, !22282, !DIExpression(), !22289)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22624
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !22624, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.ci, !22285, !DIExpression(), !22289)
  %i.cj = icmp eq ptr %i.cg, %i.ci, !dbg !22625
  br i1 %i.cj, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.ad, !dbg !22626

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.cg, !22291, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22301)
    #dbg_value(ptr %i.cg, !22302, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22311)
    #dbg_value(ptr %i.cg, !22312, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22316)
    #dbg_value(ptr %i.cg, !22317, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22321)
    #dbg_value(ptr %i.cg, !22322, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22326)
    #dbg_value(ptr %i.ci, !22296, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22327)
    #dbg_value(ptr %i.ci, !22302, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22329)
    #dbg_value(ptr %i.ci, !22312, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22332)
    #dbg_value(ptr %i.ci, !22317, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22335)
    #dbg_value(ptr %i.ci, !22322, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22338)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !22627
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !22627, !noundef !1568 ; 3 uses
    #dbg_value(i64 %i.cl, !22339, !DIExpression(), !22346)
    #dbg_value(ptr poison, !22342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22347)
    #dbg_value(i64 %i.cl, !22342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22347)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32, !dbg !22628
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !22628, !noundef !1568
    #dbg_value(ptr poison, !22343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22347)
    #dbg_value(i64 %i.cn, !22343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22347)
  %i.co = icmp eq i64 %i.cl, %i.cn, !dbg !22629
  br i1 %i.co, label %bb.ae, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22629

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !22630
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !22630, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.cq, !22343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22347)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !22631
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !22631, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.cs, !22342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22347)
    #dbg_value(ptr %i.cs, !22360, !DIExpression(), !21956)
    #dbg_value(ptr %i.cs, !22369, !DIExpression(), !21959)
    #dbg_value(ptr %i.cq, !22364, !DIExpression(), !21956)
    #dbg_value(ptr %i.cq, !22369, !DIExpression(), !21961)
    #dbg_value(i64 %i.cl, !22365, !DIExpression(), !21956)
    #dbg_value(i64 0, !22366, !DIExpression(), !21962)
  %.not117.not = icmp eq i64 %i.cl, 0, !dbg !22632
  br i1 %.not117.not, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph, !dbg !22632

.lr.ph:                                           ; preds = %bb.ae, %.lr.ph
  %.sroa.01.0.i118 = phi i64 [ %i.cw, %.lr.ph ], [ 0, %bb.ae ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i118, !22366, !DIExpression(), !21962)
    #dbg_value(i64 %.sroa.01.0.i118, !22372, !DIExpression(), !21959)
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %.sroa.01.0.i118, !dbg !22633
    #dbg_value(i64 %.sroa.01.0.i118, !22372, !DIExpression(), !21961)
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.sroa.01.0.i118, !dbg !22634
    #dbg_value(ptr %i.ct, !22374, !DIExpression(), !21965)
    #dbg_value(ptr %i.cu, !22376, !DIExpression(), !21965)
  %i.cv = tail call noundef zeroext i1 @_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu), !dbg !22635, !inline_history !21966 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i118, !22366, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21962)
  %i.cw = add nuw i64 %.sroa.01.0.i118, 1         ; 2 uses
    #dbg_value(i64 %i.cw, !22366, !DIExpression(), !21962)
  %exitcond.not = icmp ne i64 %i.cw, %i.cl
  %or.cond157.not = select i1 %i.cv, i1 %exitcond.not, i1 false, !dbg !22636
  br i1 %or.cond157.not, label %.lr.ph, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22636

bb.af:                                            ; preds = %bb.h
    #dbg_value(ptr %0, !22135, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22381)
    #dbg_value(ptr %0, !22382, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22389)
    #dbg_value(ptr %0, !22398, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22402)
    #dbg_value(ptr %0, !22403, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22406)
    #dbg_value(ptr %1, !22136, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22407)
    #dbg_value(ptr %1, !22385, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22408)
    #dbg_value(ptr %1, !22399, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22409)
    #dbg_value(ptr %1, !22403, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22411)
    #dbg_value(ptr poison, !22392, !DIExpression(), !22412)
    #dbg_value(ptr poison, !22393, !DIExpression(), !22413)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22637
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !22637, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.cy, !22414, !DIExpression(), !22420)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22638
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !22638, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.da, !22417, !DIExpression(), !22420)
  %i.db = icmp eq ptr %i.cy, %i.da, !dbg !22639
  br i1 %i.db, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.ag, !dbg !22419

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22421), !dbg !22405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22422), !dbg !22405
    #dbg_value(ptr %i.cy, !22423, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21977)
    #dbg_value(ptr %i.cy, !22428, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21980)
    #dbg_value(ptr %i.cy, !22430, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21983)
    #dbg_value(ptr %i.da, !22426, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21977)
    #dbg_value(ptr %i.da, !22428, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21985)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 40, !dbg !22640
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !22640, !alias.scope !22421, !noundef !1568
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 40, !dbg !22641
  %i.df = load i64, ptr %i.de, align 8, !dbg !22641, !alias.scope !22422, !noundef !1568
  %.not.i = icmp eq i64 %i.dd, %i.df, !dbg !22642
  br i1 %.not.i, label %bb.ah, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22642

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 16, !dbg !22643
    #dbg_value(ptr %i.dg, !22426, !DIExpression(), !21977)
    #dbg_value(ptr %i.dg, !22428, !DIExpression(), !21985)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16, !dbg !22644
    #dbg_value(ptr %i.dh, !22423, !DIExpression(), !21977)
    #dbg_value(ptr %i.dh, !22428, !DIExpression(), !21980)
    #dbg_value(ptr %i.dh, !22430, !DIExpression(), !21983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22645, !noalias !22434
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBR_5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterBT_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dh), !dbg !22646, !noalias !22422
    #dbg_value(ptr %i.a, !22435, !DIExpression(), !21994)
    #dbg_value(ptr %i.dg, !22438, !DIExpression(), !21994)
  %i.di = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBZ_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRBV_RB1y_ENCNvXs4_B6_INtB6_7HashMapBV_B1y_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.dg) #31, !dbg !22647, !inline_history !21995
    #dbg_value(ptr poison, !22443, !DIExpression(), !22002)
    #dbg_value(ptr poison, !22447, !DIExpression(), !22002)
    #dbg_value(i1 %i.di, !22448, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22003)
    #dbg_value(i8 0, !22449, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22004)
  %i.dj = xor i1 %i.di, true, !dbg !22648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22649, !noalias !22434
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22650

bb.ai:                                            ; preds = %bb.i
    #dbg_value(ptr %0, !22131, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22456)
    #dbg_value(ptr %0, !22457, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22465)
    #dbg_value(ptr %0, !22475, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22480)
    #dbg_value(ptr %1, !22132, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22481)
    #dbg_value(ptr %1, !22460, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22482)
    #dbg_value(ptr %1, !22476, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22483)
    #dbg_value(ptr poison, !22469, !DIExpression(), !22484)
    #dbg_value(ptr poison, !22470, !DIExpression(), !22485)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22651
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !22651, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.dl, !22486, !DIExpression(), !22493)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22652
  %i.dn = load ptr, ptr %i.dm, align 8, !dbg !22652, !nonnull !1568, !noundef !1568 ; 3 uses
    #dbg_value(ptr %i.dn, !22489, !DIExpression(), !22493)
  %i.do = icmp eq ptr %i.dl, %i.dn, !dbg !22653
  br i1 %i.do, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.aj, !dbg !22654

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(ptr %i.dl, !22494, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22502)
    #dbg_value(ptr %i.dl, !22503, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22510)
    #dbg_value(ptr %i.dl, !22511, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22514)
    #dbg_value(ptr %i.dl, !22515, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22518)
    #dbg_value(ptr %i.dl, !22519, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22522)
    #dbg_value(ptr %i.dn, !22497, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22523)
    #dbg_value(ptr %i.dn, !22503, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22525)
    #dbg_value(ptr %i.dn, !22511, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22528)
    #dbg_value(ptr %i.dn, !22515, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22531)
    #dbg_value(ptr %i.dn, !22519, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22534)
    #dbg_value(ptr poison, !22241, !DIExpression(), !22537)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 32, !dbg !22655
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !22655, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.dq, !22227, !DIExpression(), !22538)
    #dbg_value(i64 %i.dq, !22240, !DIExpression(), !22537)
    #dbg_value(i64 %i.dq, !22243, !DIExpression(), !22539)
    #dbg_value(ptr poison, !22225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22540)
    #dbg_value(i64 %i.dq, !22225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22540)
    #dbg_value(ptr poison, !22242, !DIExpression(), !22537)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 32, !dbg !22656
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !22656, !noundef !1568
    #dbg_value(ptr poison, !22226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22540)
    #dbg_value(i64 %i.ds, !22226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22540)
  %i.dt = icmp eq i64 %i.dq, %i.ds, !dbg !22657
  br i1 %i.dt, label %bb.ak, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22657

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 24, !dbg !22658
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !22658, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.dv, !22242, !DIExpression(), !22537)
    #dbg_value(ptr %i.dv, !22226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22540)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24, !dbg !22659
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !22659, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.dx, !22241, !DIExpression(), !22537)
    #dbg_value(ptr %i.dx, !22225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22540)
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dx, ptr nonnull %i.dv, i64 %i.dq), !dbg !22660
  %i.dy = icmp eq i32 %bcmp, 0, !dbg !22660
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22661

bb.al:                                            ; preds = %thread-pre-split
    #dbg_value(ptr %1, !22140, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22550)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22662
  %i.ea = load double, ptr %i.dz, align 8, !dbg !22662, !noundef !1568 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22551), !dbg !22167
    #dbg_value(double %i.ea, !6176, !DIExpression(), !22020)
    #dbg_value(double %i.ea, !6182, !DIExpression(), !22022)
    #dbg_value(double %i.ea, !6189, !DIExpression(), !22024)
    #dbg_value(double %i.ea, !6192, !DIExpression(), !22026)
    #dbg_value(double %i.ea, !6198, !DIExpression(), !22028)
    #dbg_value(double %i.ea, !6201, !DIExpression(), !22032)
    #dbg_value(double %i.ea, !6189, !DIExpression(), !22034)
    #dbg_value(double %i.ea, !6192, !DIExpression(), !22036)
    #dbg_value(double %i.ea, !6198, !DIExpression(), !22038)
    #dbg_value(ptr %0, !6179, !DIExpression(), !22020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22552), !dbg !22663
    #dbg_value(ptr %0, !6021, !DIExpression(), !22042)
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86 [
    i8 3, label %bb.am
    i8 4, label %bb.an
    i8 6, label %bb.ao
    i8 7, label %bb.ap
  ], !dbg !22664

bb.am:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22043)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22665
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !22665, !alias.scope !22553, !noundef !1568
  %i.ed = zext i64 %i.ec to i128, !dbg !22665
  br label %.sink.split.i.i78, !dbg !22666

bb.an:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22044)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22667
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !22667, !alias.scope !22553, !noundef !1568
  %i.eg = sext i64 %i.ef to i128, !dbg !22667
  br label %.sink.split.i.i78, !dbg !22668

bb.ao:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22045)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22669
  %i.ei = load ptr, ptr %i.eh, align 8, !dbg !22669, !alias.scope !22553, !nonnull !1568, !noundef !1568
  %i.ej = load i128, ptr %i.ei, align 16, !dbg !22669, !noalias !22554, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.ej, !6031, !DIExpression(), !22048)
  %i.ek = icmp slt i128 %i.ej, 0, !dbg !22670
  br i1 %i.ek, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83, label %.sink.split.i.i78, !dbg !22670

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83: ; preds = %bb.ao
    #dbg_value(i128 %i.ej, !6229, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22049)
    #dbg_value(i128 1, !6229, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !22049)
    #dbg_value(ptr poison, !6230, !DIExpression(), !22050)
    #dbg_value(ptr poison, !6214, !DIExpression(), !22051)
    #dbg_value(i128 %i.ej, !6231, !DIExpression(), !22052)
    #dbg_value(i128 %i.ej, !6213, !DIExpression(), !22053)
    #dbg_value(i128 %i.ej, !6204, !DIExpression(), !22032)
  %or.cond115 = fcmp oge double %i.ea, 0.000000e+00, !dbg !22671
  %i.el = fcmp ult double %i.ea, f0x47F0000000000000
  %or.cond116 = and i1 %i.el, %or.cond115, !dbg !22671
  br i1 %or.cond116, label %bb.ar, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22671

bb.ap:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22054)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22672
  %i.en = load ptr, ptr %i.em, align 8, !dbg !22672, !alias.scope !22553, !nonnull !1568, !noundef !1568
  %i.eo = load i128, ptr %i.en, align 16, !dbg !22672, !noalias !22554, !noundef !1568
  br label %.sink.split.i.i78, !dbg !22673

.sink.split.i.i78:                                ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.5.0.ph.i79 = phi i128 [ %i.ed, %bb.am ], [ %i.eg, %bb.an ], [ %i.eo, %bb.ap ], [ %i.ej, %bb.ao ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i79, !6180, !DIExpression(), !22055)
    #dbg_value(i128 %.sroa.5.0.ph.i79, !6185, !DIExpression(), !22022)
  %i.ep = fcmp ord double %i.ea, 0.000000e+00, !dbg !22674
  %i.eq = fcmp uge double %i.ea, f0xC7E0000000000000
  %or.cond113.not126 = and i1 %i.ep, %i.eq, !dbg !22675
  %i.er = fcmp ult double %i.ea, f0x47E0000000000000
  %or.cond114 = and i1 %i.er, %or.cond113.not126, !dbg !22675
  br i1 %or.cond114, label %bb.aq, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22675

bb.aq:                                            ; preds = %.sink.split.i.i78
  %i.es = tail call double @llvm.floor.f64(double %i.ea), !dbg !22676 ; 2 uses
    #dbg_value(double %i.es, !6186, !DIExpression(), !22056)
  %i.et = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.es), !dbg !22677 ; 2 uses
    #dbg_value(ptr poison, !6234, !DIExpression(), !22058)
    #dbg_value(ptr poison, !6237, !DIExpression(), !22059)
  %i.eu = tail call i8 @llvm.scmp.i8.i128(i128 %i.et, i128 %.sroa.5.0.ph.i79), !dbg !22678
  %i.ev = icmp eq i128 %i.et, %.sroa.5.0.ph.i79, !dbg !22679
  %i.ew = fcmp ogt double %i.ea, %i.es
  %or.cond.i81 = and i1 %i.ew, %i.ev, !dbg !22679
  %spec.store.select.i82 = select i1 %or.cond.i81, i8 1, i8 %i.eu, !dbg !22679
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22679

bb.ar:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83
  %i.ex = tail call double @llvm.floor.f64(double %i.ea), !dbg !22680 ; 2 uses
    #dbg_value(double %i.ex, !6205, !DIExpression(), !22060)
  %i.ey = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.ex), !dbg !22681 ; 2 uses
    #dbg_value(ptr poison, !6239, !DIExpression(), !22062)
    #dbg_value(ptr poison, !6243, !DIExpression(), !22063)
  %i.ez = tail call i8 @llvm.ucmp.i8.i128(i128 %i.ey, i128 %i.ej), !dbg !22682
  %i.fa = icmp eq i128 %i.ey, %i.ej, !dbg !22683
  %i.fb = fcmp ogt double %i.ea, %i.ex
  %or.cond1.i84 = and i1 %i.fb, %i.fa, !dbg !22683
  %spec.store.select2.i85 = select i1 %or.cond1.i84, i8 1, i8 %i.ez, !dbg !22683
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86, !dbg !22683

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit86: ; preds = %bb.al, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83, %.sink.split.i.i78, %bb.aq, %bb.ar
  %.sroa.0.0.i80 = phi i8 [ 1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i83 ], [ %spec.store.select.i82, %bb.aq ], [ 1, %.sink.split.i.i78 ], [ 1, %bb.al ], [ %spec.store.select2.i85, %bb.ar ], !dbg !22684
    #dbg_value(ptr undef, !22157, !DIExpression(), !22168)
  %i.fc = icmp eq i8 %.sroa.0.0.i80, 0, !dbg !22685
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22686

bb.as:                                            ; preds = %thread-pre-split
  switch i8 %narrow, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit [
    i8 3, label %bb.at
    i8 4, label %bb.at
    i8 6, label %bb.at
    i8 7, label %bb.at
  ], !dbg !22564

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as
  %i.fd = add nsw i8 %.pr, -2, !dbg !22563
  %i.fe = icmp samesign ugt i8 %.pr, 1, !dbg !22563
  %narrow68 = select i1 %i.fe, i8 %i.fd, i8 8, !dbg !22563 ; 3 uses
  switch i8 %narrow68, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit [
    i8 3, label %bb.au
    i8 4, label %bb.au
    i8 6, label %bb.au
    i8 7, label %bb.au
  ], !dbg !22564

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22555), !dbg !22687
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22068)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22070)
    #dbg_value(ptr %0, !6271, !DIExpression(), !22071)
  switch i8 %narrow, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit [
    i8 3, label %bb.av
    i8 4, label %bb.aw
    i8 6, label %bb.ax
    i8 7, label %bb.ay
  ], !dbg !22688

bb.av:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22072)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22689
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !22689, !alias.scope !22555, !noundef !1568
  %i.fh = zext i64 %i.fg to i128, !dbg !22689
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22690

bb.aw:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22073)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22691
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !22691, !alias.scope !22555, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fj, !6277, !DIExpression(), !22075)
  %i.fk = icmp sgt i64 %i.fj, -1, !dbg !22692
  br i1 %i.fk, label %bb.az, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22692

bb.ax:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22076)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22693
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !22693, !alias.scope !22555, !nonnull !1568, !noundef !1568
  %i.fn = load i128, ptr %i.fm, align 16, !dbg !22693, !noalias !22556, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22694

bb.ay:                                            ; preds = %bb.au
    #dbg_value(ptr %0, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22078)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22695
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !22695, !alias.scope !22555, !nonnull !1568, !noundef !1568
  %i.fq = load i128, ptr %i.fp, align 16, !dbg !22695, !noalias !22556, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.fq, !6282, !DIExpression(), !22080)
  %i.fr = icmp sgt i128 %i.fq, -1, !dbg !22696
  br i1 %i.fr, label %.sink.split.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22696

.sink.split.i:                                    ; preds = %bb.ay
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22697

bb.az:                                            ; preds = %bb.aw
  %i.fs = zext nneg i64 %i.fj to i128, !dbg !22698
    #dbg_value(i128 %i.fs, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22081)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22081)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !22699

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit: ; preds = %bb.av, %bb.ax, %bb.az, %bb.au, %bb.aw, %bb.ay, %.sink.split.i
  %.sroa.2.0 = phi i128 [ undef, %bb.au ], [ undef, %bb.ay ], [ undef, %bb.aw ], [ %i.fh, %bb.av ], [ %i.fs, %bb.az ], [ %i.fn, %bb.ax ], [ %i.fq, %.sink.split.i ]
  %storemerge.sink.i.off0 = phi i1 [ false, %bb.au ], [ false, %bb.ay ], [ false, %bb.aw ], [ true, %bb.av ], [ true, %bb.az ], [ true, %bb.ax ], [ true, %.sink.split.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22557), !dbg !22700
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22086)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !22088)
    #dbg_value(ptr %1, !6271, !DIExpression(), !22089)
  switch i8 %narrow68, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91 [
    i8 3, label %bb.ba
    i8 4, label %bb.bb
    i8 6, label %bb.bc
    i8 7, label %bb.bd
  ], !dbg !22701

bb.ba:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22090)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22702
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !22702, !alias.scope !22557, !noundef !1568
  %i.fv = zext i64 %i.fu to i128, !dbg !22702
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22703

bb.bb:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22091)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22704
  %i.fx = load i64, ptr %i.fw, align 8, !dbg !22704, !alias.scope !22557, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fx, !6277, !DIExpression(), !22093)
  %i.fy = icmp sgt i64 %i.fx, -1, !dbg !22705
  br i1 %i.fy, label %bb.be, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22705

bb.bc:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22094)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22706
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !22706, !alias.scope !22557, !nonnull !1568, !noundef !1568
  %i.gb = load i128, ptr %i.ga, align 16, !dbg !22706, !noalias !22558, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22707

bb.bd:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22096)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22708
  %i.gd = load ptr, ptr %i.gc, align 8, !dbg !22708, !alias.scope !22557, !nonnull !1568, !noundef !1568
  %i.ge = load i128, ptr %i.gd, align 16, !dbg !22708, !noalias !22558, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.ge, !6282, !DIExpression(), !22098)
  %i.gf = icmp sgt i128 %i.ge, -1, !dbg !22709
  br i1 %i.gf, label %.sink.split.i89, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22709

.sink.split.i89:                                  ; preds = %bb.bd
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22710

bb.be:                                            ; preds = %bb.bb
  %i.gg = zext nneg i64 %i.fx to i128, !dbg !22711
    #dbg_value(i128 %i.gg, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22099)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !22099)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91, !dbg !22712

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91: ; preds = %bb.ba, %bb.bc, %bb.be, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, %bb.bb, %bb.bd, %.sink.split.i89
  %.sroa.3.0 = phi i128 [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ undef, %bb.bd ], [ undef, %bb.bb ], [ %i.fv, %bb.ba ], [ %i.gg, %bb.be ], [ %i.gb, %bb.bc ], [ %i.ge, %.sink.split.i89 ]
  %storemerge.sink.i88.off0 = phi i1 [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ false, %bb.bd ], [ false, %bb.bb ], [ true, %bb.ba ], [ true, %bb.be ], [ true, %bb.bc ], [ true, %.sink.split.i89 ] ; 2 uses
  br i1 %storemerge.sink.i.off0, label %bb.bf, label %bb.bg, !dbg !22713

bb.bf:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91
  %i.gh = icmp eq i128 %.sroa.2.0, %.sroa.3.0
  %spec.select107 = select i1 %storemerge.sink.i88.off0, i1 %i.gh, i1 false, !dbg !22713
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, !dbg !22713

bb.bg:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit91
  br i1 %storemerge.sink.i88.off0, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.bh, !dbg !22713

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22559), !dbg !22714
    #dbg_value(ptr %0, !6021, !DIExpression(), !22103)
  switch i8 %narrow, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit [
    i8 3, label %bb.bi
    i8 4, label %bb.bj
    i8 6, label %bb.bk
    i8 7, label %bb.bl
  ], !dbg !22715

bb.bi:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22104)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22716
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !22716, !alias.scope !22559, !noundef !1568
  %i.gk = zext i64 %i.gj to i128, !dbg !22716
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22717

bb.bj:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22105)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22718
  %i.gm = load i64, ptr %i.gl, align 8, !dbg !22718, !alias.scope !22559, !noundef !1568
  %i.gn = sext i64 %i.gm to i128, !dbg !22718
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22719

bb.bk:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22106)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22720
  %i.gp = load ptr, ptr %i.go, align 8, !dbg !22720, !alias.scope !22559, !nonnull !1568, !noundef !1568
  %i.gq = load i128, ptr %i.gp, align 16, !dbg !22720, !noalias !22560, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.gq, !6031, !DIExpression(), !22109)
  %i.gr = icmp slt i128 %i.gq, 0, !dbg !22721
  br i1 %i.gr, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, label %.sink.split.i93, !dbg !22721

bb.bl:                                            ; preds = %bb.bh
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22110)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22722
  %i.gt = load ptr, ptr %i.gs, align 8, !dbg !22722, !alias.scope !22559, !nonnull !1568, !noundef !1568
  %i.gu = load i128, ptr %i.gt, align 16, !dbg !22722, !noalias !22560, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22723

.sink.split.i93:                                  ; preds = %bb.bk
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit, !dbg !22724

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit: ; preds = %bb.bi, %bb.bj, %bb.bl, %bb.bh, %bb.bk, %.sink.split.i93
  %.sroa.4.0 = phi i128 [ undef, %bb.bh ], [ undef, %bb.bk ], [ %i.gk, %bb.bi ], [ %i.gu, %bb.bl ], [ %i.gn, %bb.bj ], [ %i.gq, %.sink.split.i93 ], !dbg !22725
  %storemerge.sink.i95.off0 = phi i1 [ false, %bb.bh ], [ false, %bb.bk ], [ true, %bb.bi ], [ true, %bb.bl ], [ true, %bb.bj ], [ true, %.sink.split.i93 ]
    #dbg_value(ptr undef, !22149, !DIExpression(), !22155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22561), !dbg !22726
    #dbg_value(ptr %1, !6021, !DIExpression(), !22114)
  switch i8 %narrow68, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100 [
    i8 3, label %bb.bm
    i8 4, label %bb.bn
    i8 6, label %bb.bo
    i8 7, label %bb.bp
  ], !dbg !22727

bb.bm:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22115)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22728
  %i.gw = load i64, ptr %i.gv, align 8, !dbg !22728, !alias.scope !22561, !noundef !1568
  %i.gx = zext i64 %i.gw to i128, !dbg !22728
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit100, !dbg !22729

end_hunk_1
begin_hunk_2_@_RNvXs4_NtCs5yXxDE1DkoT_4tera4argsNtNtB7_5value5ValueNtB5_12ArgFromValue10from_value:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22841
  %i.j = load i64, ptr %i.i, align 8, !dbg !22841, !alias.scope !22833, !noundef !1568
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5221, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22768)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22842
  %i.l = load i64, ptr %i.k, align 8, !dbg !22842, !alias.scope !22833, !noundef !1568
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22843
    #dbg_value(ptr %i.m, !5222, !DIExpression(), !22769)
  %.val.i = load ptr, ptr %i.m, align 8, !dbg !22844, !alias.scope !22833 ; 2 uses
    #dbg_value(ptr poison, !5272, !DIExpression(), !22771)
  %i.n = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxoE13new_uninit_inCs5yXxDE1DkoT_4tera(), !dbg !22845, !noalias !22834 ; 2 uses
    #dbg_value(ptr %i.n, !5277, !DIExpression(), !22773)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
    #dbg_value(ptr %.val.i, !5284, !DIExpression(), !22775)
    #dbg_value(ptr %i.n, !5288, !DIExpression(), !22775)
    #dbg_value(ptr %.val.i, !5291, !DIExpression(), !22777)
    #dbg_value(ptr %.val.i, !5299, !DIExpression(), !22779)
    #dbg_value(ptr %i.n, !5297, !DIExpression(), !22777)
    #dbg_value(ptr %i.n, !5302, !DIExpression(), !22779)
    #dbg_value(i64 1, !5303, !DIExpression(), !22779)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val.i, i64 16, i1 false), !dbg !22846, !noalias !22834
  %i.o = ptrtoint ptr %i.n to i64, !dbg !22847
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.i:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22848
    #dbg_value(ptr %i.p, !5223, !DIExpression(), !22780)
  %.val34.i = load ptr, ptr %i.p, align 8, !dbg !22849, !alias.scope !22833 ; 2 uses
    #dbg_value(ptr poison, !5305, !DIExpression(), !22782)
  %i.q = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxnE13new_uninit_inCs5yXxDE1DkoT_4tera(), !dbg !22850, !noalias !22834 ; 2 uses
    #dbg_value(ptr %i.q, !5309, !DIExpression(), !22783)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i) ]
    #dbg_value(ptr %.val34.i, !5316, !DIExpression(), !22785)
    #dbg_value(ptr %i.q, !5319, !DIExpression(), !22785)
    #dbg_value(ptr %.val34.i, !5321, !DIExpression(), !22787)
    #dbg_value(ptr %.val34.i, !5327, !DIExpression(), !22789)
    #dbg_value(ptr %i.q, !5325, !DIExpression(), !22787)
    #dbg_value(ptr %i.q, !5330, !DIExpression(), !22789)
    #dbg_value(i64 1, !5331, !DIExpression(), !22789)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val34.i, i64 16, i1 false), !dbg !22851, !noalias !22834
  %i.r = ptrtoint ptr %i.q to i64, !dbg !22852
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.j:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5224, !DIExpression(), !22790)
    #dbg_value(ptr %1, !5263, !DIExpression(), !22791)
  %i.s = trunc nuw i8 %i.a to i1, !dbg !22853
  br i1 %i.s, label %bb.n, label %bb.o, !dbg !22853

bb.k:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5225, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22792)
    #dbg_value(ptr %1, !5252, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22793)
    #dbg_value(ptr %1, !5333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22795)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22854
  %i.u = load ptr, ptr %i.t, align 8, !dbg !22854, !alias.scope !22833, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.u, !5230, !DIExpression(), !22797)
    #dbg_value(ptr %i.u, !5239, !DIExpression(), !22758)
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !dbg !22855, !noalias !22834
    #dbg_value(i64 %i.v, !5253, !DIExpression(), !22798)
  %i.w = icmp slt i64 %i.v, 0, !dbg !22856
  br i1 %i.w, label %bb.t, label %bb.s, !dbg !22856

bb.l:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5226, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22799)
    #dbg_value(ptr %1, !5245, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22800)
    #dbg_value(ptr %1, !5336, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22802)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22857
  %i.y = load ptr, ptr %i.x, align 8, !dbg !22857, !alias.scope !22833, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.y, !5230, !DIExpression(), !22804)
    #dbg_value(ptr %i.y, !5239, !DIExpression(), !22753)
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !22858, !noalias !22834
    #dbg_value(i64 %i.z, !5246, !DIExpression(), !22805)
  %i.aa = icmp slt i64 %i.z, 0, !dbg !22859
  br i1 %i.aa, label %bb.v, label %bb.u, !dbg !22859

bb.m:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5227, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22806)
    #dbg_value(ptr %1, !5235, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22807)
    #dbg_value(ptr %1, !5339, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22809)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22860
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !22860, !alias.scope !22833, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.ac, !5230, !DIExpression(), !22811)
    #dbg_value(ptr %i.ac, !5239, !DIExpression(), !22748)
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !22861, !noalias !22834
    #dbg_value(i64 %i.ad, !5236, !DIExpression(), !22812)
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !22862
  br i1 %i.ae, label %bb.x, label %bb.w, !dbg !22862

bb.n:                                             ; preds = %bb.j
    #dbg_value(ptr %1, !5267, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22813)
    #dbg_value(ptr %1, !5257, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22814)
    #dbg_value(ptr %1, !5341, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22816)
    #dbg_value(ptr %1, !5268, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22813)
    #dbg_value(ptr %1, !5343, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22818)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22863
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !22863, !alias.scope !22833, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.ag, !5230, !DIExpression(), !22820)
    #dbg_value(ptr %i.ag, !5239, !DIExpression(), !22764)
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !dbg !22864, !noalias !22834
    #dbg_value(i64 %i.ah, !5258, !DIExpression(), !22821)
  %i.ai = icmp slt i64 %i.ah, 0, !dbg !22865
  br i1 %i.ai, label %bb.r, label %bb.q, !dbg !22865

bb.o:                                             ; preds = %bb.j
    #dbg_value(ptr %1, !5264, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22822)
    #dbg_value(ptr %1, !5265, !DIExpression(DW_OP_plus_uconst, 23, DW_OP_stack_value), !22822)
    #dbg_value(ptr %1, !5343, !DIExpression(DW_OP_plus_uconst, 23, DW_OP_stack_value), !22824)
    #dbg_value(ptr %1, !5266, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !22822)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22866
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !22866, !alias.scope !22833, !noundef !1568
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22867
  %.sroa.52.0.copyload.i = load i64, ptr %i.al, align 8, !dbg !22867, !alias.scope !22833
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !22866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.am, i64 6, i1 false), !dbg !22866
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22866
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !22866, !alias.scope !22833
  br label %bb.p, !dbg !22853

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.9.0.i = phi i64 [ %i.ap, %bb.q ], [ %.sroa.52.0.copyload.i, %bb.o ], !dbg !22853
  %.sroa.8.0.i = phi ptr [ %i.ag, %bb.q ], [ %.sroa.4.0.copyload.i, %bb.o ], !dbg !22853
  %.sroa.5.0.i = phi i8 [ %i.ar, %bb.q ], [ %i.ak, %bb.o ], !dbg !22853
  %.sroa.0.0.i = phi i8 [ 1, %bb.q ], [ 0, %bb.o ], !dbg !22853
  %i.an = ptrtoint ptr %.sroa.8.0.i to i64, !dbg !22868
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.q:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22863
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !22869, !alias.scope !22833, !noundef !1568
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22870
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !22870, !range !2817, !alias.scope !22833, !noundef !1568
  br label %bb.p, !dbg !22853

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.trap(), !dbg !22871
  unreachable, !dbg !22871

bb.s:                                             ; preds = %bb.k
  %i.as = ptrtoint ptr %i.u to i64, !dbg !22872
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.t:                                             ; preds = %bb.k
  tail call void @llvm.trap(), !dbg !22873
  unreachable, !dbg !22873

bb.u:                                             ; preds = %bb.l
  %i.at = ptrtoint ptr %i.y to i64, !dbg !22874
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.v:                                             ; preds = %bb.l
  tail call void @llvm.trap(), !dbg !22875
  unreachable, !dbg !22875

bb.w:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %i.ac to i64, !dbg !22876
  br label %_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, !dbg !22839

bb.x:                                             ; preds = %bb.m
  tail call void @llvm.trap(), !dbg !22877
  unreachable, !dbg !22877

_RNvXsW_NtCs5yXxDE1DkoT_4tera5valueNtB5_10ValueInnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.p, %bb.s, %bb.u, %bb.w
  %.sroa.27.0 = phi i64 [ undef, %bb.w ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.9.0.i, %bb.p ], [ undef, %bb.s ], [ undef, %bb.u ], [ undef, %bb.a ], !dbg !22835
  %.sroa.18.0 = phi i64 [ %i.au, %bb.w ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.l, %bb.g ], [ %i.o, %bb.h ], [ %i.r, %bb.i ], [ %i.an, %bb.p ], [ %i.as, %bb.s ], [ %i.at, %bb.u ], [ undef, %bb.a ], !dbg !22835
  %.sroa.15.0 = phi i8 [ undef, %bb.w ], [ undef, %bb.c ], [ %i.f, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.5.0.i, %bb.p ], [ undef, %bb.s ], [ undef, %bb.u ], [ undef, %bb.a ], !dbg !22835
  %.sroa.0.0 = phi i8 [ 13, %bb.w ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ %.sroa.0.0.i, %bb.p ], [ 11, %bb.s ], [ 12, %bb.u ], [ 2, %bb.a ], !dbg !22836
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22878
  store i8 %.sroa.0.0, ptr %i.av, align 8, !dbg !22878
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !22878
  store i8 %.sroa.15.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !22878
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !22878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i, i64 6, i1 false), !dbg !22878
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22878
  store i64 %.sroa.18.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !22878
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22878
  store i64 %.sroa.27.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !22878
  store i8 -1, ptr %0, align 8, !dbg !22878
  ret void, !dbg !22879
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -2, 2) i8 @_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22893 {
bb.a:
    #dbg_value(ptr poison, !23226, !DIExpression(), !23238)
    #dbg_value(ptr poison, !23226, !DIExpression(), !23278)
    #dbg_value(ptr %0, !23203, !DIExpression(), !23302)
    #dbg_value(ptr %1, !23204, !DIExpression(), !23302)
    #dbg_value(ptr poison, !23230, !DIExpression(), !23303)
    #dbg_value(ptr poison, !23230, !DIExpression(), !23304)
  %i.a = load i8, ptr %0, align 8, !dbg !23661, !range !2814, !noundef !1568 ; 4 uses
  %i.b = icmp ne i8 %i.a, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.b), !dbg !23661
  %i.c = add nsw i8 %i.a, -2, !dbg !23661
  %i.d = icmp samesign ugt i8 %i.a, 1, !dbg !23661
  %narrow = select i1 %i.d, i8 %i.c, i8 8, !dbg !23661 ; 5 uses
  %.pr = load i8, ptr %1, align 8, !dbg !23661    ; 21 uses
  switch i8 %narrow, label %thread-pre-split [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 5, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
    i8 11, label %bb.h
  ], !dbg !23662

thread-pre-split:                                 ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %i.e = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.e), !dbg !23661
  %2 = icmp eq i8 %.pr, 7, !dbg !23662
  br i1 %2, label %bb.am, label %bb.ax, !dbg !23662

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.f), !dbg !23661
  %3 = icmp eq i8 %.pr, 2, !dbg !23662
  br i1 %3, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %thread-pre-split, !dbg !23662

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.g), !dbg !23661
  %4 = icmp eq i8 %.pr, 3, !dbg !23662
  br i1 %4, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %thread-pre-split, !dbg !23662

bb.d:                                             ; preds = %bb.a
  %i.h = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.h), !dbg !23661
  %5 = icmp eq i8 %.pr, 4, !dbg !23662
  br i1 %5, label %bb.i, label %thread-pre-split, !dbg !23662

bb.e:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.i), !dbg !23661
  %i.j = icmp eq i8 %.pr, 7, !dbg !23662
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23302 ; 2 uses
  br i1 %i.j, label %bb.j, label %bb.k, !dbg !23662

bb.f:                                             ; preds = %bb.a
  %i.l = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.l), !dbg !23661
  %i.m = icmp samesign ult i8 %.pr, 2, !dbg !23661
  br i1 %i.m, label %bb.aa, label %thread-pre-split, !dbg !23662

bb.g:                                             ; preds = %bb.a
  %i.n = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.n), !dbg !23661
  %6 = icmp eq i8 %.pr, 11, !dbg !23662
  br i1 %6, label %bb.aj, label %thread-pre-split, !dbg !23662

bb.h:                                             ; preds = %bb.a
  %i.o = icmp ne i8 %.pr, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.o), !dbg !23661
  %7 = icmp eq i8 %.pr, 13, !dbg !23662
  br i1 %7, label %bb.al, label %thread-pre-split, !dbg !23662

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit: ; preds = %.lr.ph, %.sink.split.i97, %bb.bt, %bb.ar, %bb.au, %bb.as, %.sink.split.i.i82, %bb.av, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87, %bb.at, %bb.aw, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90, %bb.am, %bb.bm, %bb.bp, %._crit_edge, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.sink.split.i.i, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, %bb.k, %bb.z, %bb.y, %bb.bk, %bb.bl, %bb.ax, %bb.ay, %bb.w, %bb.v, %bb.c, %bb.b, %bb.bv, %.sink.split.i142, %bb.al, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79, %bb.i
  %.sroa.0.0 = phi i8 [ 1, %bb.v ], [ -1, %bb.as ], [ %i.hc, %bb.bv ], [ -2, %bb.bm ], [ -2, %bb.ax ], [ %i.hb, %.sink.split.i142 ], [ -1, %bb.bl ], [ %i.dr, %bb.al ], [ 0, %bb.b ], [ %i.t, %bb.i ], [ 0, %bb.c ], [ -2, %bb.ay ], [ %i.ch, %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79 ], [ -2, %bb.k ], [ 1, %bb.ar ], [ 1, %bb.bk ], [ %spec.select, %bb.y ], [ %spec.select75, %bb.z ], [ %., %bb.w ], [ -2, %bb.am ], [ -2, %.sink.split.i97 ], [ -2, %bb.bp ], [ 1, %bb.q ], [ %spec.store.select.i, %bb.r ], [ 1, %.sink.split.i.i ], [ -1, %bb.p ], [ 1, %bb.t ], [ %spec.store.select2.i, %bb.u ], [ 1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i ], [ -1, %bb.s ], [ %i.cw, %._crit_edge ], [ %.sroa.0.0.i84.neg, %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90 ], [ -1, %bb.aw ], [ -1, %bb.at ], [ -1, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87 ], [ -1, %bb.av ], [ -1, %.sink.split.i.i82 ], [ 1, %bb.au ], [ -2, %bb.bt ], [ %i.cz, %.lr.ph ], !dbg !23302
  ret i8 %.sroa.0.0, !dbg !23663

bb.i:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !23205, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23305)
    #dbg_value(ptr %0, !23306, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23313)
    #dbg_value(ptr %0, !23314, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23321)
    #dbg_value(ptr %1, !23206, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23322)
    #dbg_value(ptr %1, !23310, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23323)
    #dbg_value(ptr %1, !23318, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23324)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !23664
  %i.q = load i8, ptr %i.p, align 1, !dbg !23664, !range !2817, !noundef !1568
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !23665
  %i.s = load i8, ptr %i.r, align 1, !dbg !23665, !range !2817, !noundef !1568
  %i.t = sub nsw i8 %i.q, %i.s, !dbg !23666
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23667

bb.j:                                             ; preds = %bb.e
    #dbg_value(ptr %i.k, !23213, !DIExpression(), !23325)
    #dbg_value(ptr %i.k, !23326, !DIExpression(), !23333)
    #dbg_value(ptr %i.k, !23334, !DIExpression(DW_OP_deref), !23345)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23668
    #dbg_value(ptr %i.u, !23214, !DIExpression(), !23325)
    #dbg_value(ptr %i.u, !23330, !DIExpression(), !23333)
    #dbg_value(ptr %i.u, !23341, !DIExpression(DW_OP_deref), !23345)
  %i.v = load double, ptr %i.k, align 8, !dbg !23669, !noundef !1568 ; 3 uses
  %i.w = load double, ptr %i.u, align 8, !dbg !23670, !noundef !1568 ; 3 uses
  %i.x = fcmp ugt double %i.v, %i.w, !dbg !23669
  %i.y = fcmp ult double %i.v, %i.w, !dbg !23671  ; 2 uses
  br i1 %i.x, label %bb.v, label %bb.w, !dbg !23672

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !23216, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23355)
  %i.z = load double, ptr %i.k, align 8, !dbg !23673, !noundef !1568 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23356), !dbg !23674
    #dbg_value(double %i.z, !6176, !DIExpression(), !22923)
    #dbg_value(double %i.z, !6182, !DIExpression(), !22925)
    #dbg_value(double %i.z, !6189, !DIExpression(), !22927)
    #dbg_value(double %i.z, !6192, !DIExpression(), !22929)
    #dbg_value(double %i.z, !6198, !DIExpression(), !22931)
    #dbg_value(double %i.z, !6201, !DIExpression(), !22935)
    #dbg_value(double %i.z, !6189, !DIExpression(), !22937)
    #dbg_value(double %i.z, !6192, !DIExpression(), !22939)
    #dbg_value(double %i.z, !6198, !DIExpression(), !22941)
    #dbg_value(ptr %1, !6179, !DIExpression(), !22923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23357), !dbg !23675
    #dbg_value(ptr %1, !6021, !DIExpression(), !22945)
  %i.aa = add nsw i8 %.pr, -2, !dbg !23676
  %i.ab = icmp samesign ugt i8 %.pr, 1, !dbg !23676
  %narrow.i.i = select i1 %i.ab, i8 %i.aa, i8 8, !dbg !23676
  switch i8 %narrow.i.i, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 6, label %bb.n
    i8 7, label %bb.o
  ], !dbg !23677

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22946)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23678
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !23678, !alias.scope !23358, !noundef !1568
  %i.ae = zext i64 %i.ad to i128, !dbg !23678
  br label %.sink.split.i.i, !dbg !23679

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22947)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23680
  %i.ag = load i64, ptr %i.af, align 8, !dbg !23680, !alias.scope !23358, !noundef !1568
  %i.ah = sext i64 %i.ag to i128, !dbg !23680
  br label %.sink.split.i.i, !dbg !23681

bb.n:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22948)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23682
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !23682, !alias.scope !23358, !nonnull !1568, !noundef !1568
  %i.ak = load i128, ptr %i.aj, align 16, !dbg !23682, !noalias !23359, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.ak, !6031, !DIExpression(), !22951)
  %i.al = icmp slt i128 %i.ak, 0, !dbg !23683
  br i1 %i.al, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i, label %.sink.split.i.i, !dbg !23683

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i: ; preds = %bb.n
    #dbg_value(i128 %i.ak, !6229, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !22952)
    #dbg_value(i128 1, !6229, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !22952)
    #dbg_value(ptr poison, !6230, !DIExpression(), !22953)
    #dbg_value(ptr poison, !6214, !DIExpression(), !22954)
    #dbg_value(i128 %i.ak, !6231, !DIExpression(), !22955)
    #dbg_value(i128 %i.ak, !6213, !DIExpression(), !22956)
    #dbg_value(i128 %i.ak, !6204, !DIExpression(), !22935)
  %i.am = fcmp uno double %i.z, 0.000000e+00, !dbg !23684
  br i1 %i.am, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.s, !dbg !23685

bb.o:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22957)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23686
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !23686, !alias.scope !23358, !nonnull !1568, !noundef !1568
  %i.ap = load i128, ptr %i.ao, align 16, !dbg !23686, !noalias !23359, !noundef !1568
  br label %.sink.split.i.i, !dbg !23687

.sink.split.i.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.5.0.ph.i = phi i128 [ %i.ae, %bb.l ], [ %i.ah, %bb.m ], [ %i.ap, %bb.o ], [ %i.ak, %bb.n ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i, !6180, !DIExpression(), !22958)
    #dbg_value(i128 %.sroa.5.0.ph.i, !6185, !DIExpression(), !22925)
  %i.aq = fcmp uno double %i.z, 0.000000e+00, !dbg !23688
  br i1 %i.aq, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.p, !dbg !23689

bb.p:                                             ; preds = %.sink.split.i.i
  %i.ar = fcmp olt double %i.z, f0xC7E0000000000000, !dbg !23690
  br i1 %i.ar, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.q, !dbg !23690

bb.q:                                             ; preds = %bb.p
  %i.as = fcmp ult double %i.z, f0x47E0000000000000, !dbg !23691
  br i1 %i.as, label %bb.r, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23691

bb.r:                                             ; preds = %bb.q
  %i.at = tail call double @llvm.floor.f64(double %i.z), !dbg !23692 ; 2 uses
    #dbg_value(double %i.at, !6186, !DIExpression(), !22959)
  %i.au = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.at), !dbg !23693 ; 2 uses
    #dbg_value(ptr poison, !6234, !DIExpression(), !22961)
    #dbg_value(ptr poison, !6237, !DIExpression(), !22962)
  %i.av = tail call i8 @llvm.scmp.i8.i128(i128 %i.au, i128 %.sroa.5.0.ph.i), !dbg !23694
  %i.aw = icmp eq i128 %i.au, %.sroa.5.0.ph.i, !dbg !23695
  %i.ax = fcmp ogt double %i.z, %i.at
  %or.cond.i = and i1 %i.ax, %i.aw, !dbg !23695
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %i.av, !dbg !23695
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23695

bb.s:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i
  %i.ay = fcmp olt double %i.z, 0.000000e+00, !dbg !23696
  br i1 %i.ay, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.t, !dbg !23696

bb.t:                                             ; preds = %bb.s
  %i.az = fcmp ult double %i.z, f0x47F0000000000000, !dbg !23697
  br i1 %i.az, label %bb.u, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23697

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call double @llvm.floor.f64(double %i.z), !dbg !23698 ; 2 uses
    #dbg_value(double %i.ba, !6205, !DIExpression(), !22963)
  %i.bb = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.ba), !dbg !23699 ; 2 uses
    #dbg_value(ptr poison, !6239, !DIExpression(), !22965)
    #dbg_value(ptr poison, !6243, !DIExpression(), !22966)
  %i.bc = tail call i8 @llvm.ucmp.i8.i128(i128 %i.bb, i128 %i.ak), !dbg !23700
  %i.bd = icmp eq i128 %i.bb, %i.ak, !dbg !23701
  %i.be = fcmp ogt double %i.z, %i.ba
  %or.cond1.i = and i1 %i.be, %i.bd, !dbg !23701
  %spec.store.select2.i = select i1 %or.cond1.i, i8 1, i8 %i.bc, !dbg !23701
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23701

bb.v:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.x, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23672

bb.w:                                             ; preds = %bb.j
  %. = sext i1 %i.y to i8, !dbg !23333
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23333

bb.x:                                             ; preds = %bb.v
    #dbg_value(i8 -2, !23351, !DIExpression(), !23360)
    #dbg_value(ptr %i.k, !23352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23360)
    #dbg_value(ptr %i.u, !23352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23360)
    #dbg_value(double %i.v, !23361, !DIExpression(), !23364)
  %i.bf = fcmp uno double %i.v, 0.000000e+00, !dbg !23702
    #dbg_value(double %i.w, !23361, !DIExpression(), !23366)
  %i.bg = fcmp uno double %i.w, 0.000000e+00, !dbg !23703 ; 2 uses
  br i1 %i.bf, label %bb.z, label %bb.y, !dbg !23704

bb.y:                                             ; preds = %bb.x
  %spec.select = sext i1 %i.bg to i8, !dbg !23704
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23704

bb.z:                                             ; preds = %bb.x
  %not. = xor i1 %i.bg, true, !dbg !23704
  %spec.select75 = zext i1 %not. to i8, !dbg !23704
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23704

bb.aa:                                            ; preds = %bb.f
    #dbg_value(ptr %0, !23211, !DIExpression(), !23367)
    #dbg_value(ptr %1, !23212, !DIExpression(), !23367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23368), !dbg !23705
    #dbg_value(ptr %0, !2819, !DIExpression(), !22971)
    #dbg_value(i64 0, !2830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22976)
    #dbg_value(i64 0, !2881, !DIExpression(), !22978)
  %i.bh = trunc nuw i8 %i.a to i1, !dbg !23706
  br i1 %i.bh, label %bb.ab, label %bb.ac, !dbg !23707

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %0, !2827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22979)
    #dbg_value(ptr %0, !2895, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22981)
    #dbg_value(ptr %0, !2900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22983)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23708
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !23708, !alias.scope !23368, !nonnull !1568, !noundef !1568
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23708
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !23708, !alias.scope !23368, !noundef !1568
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !23709
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !23710

bb.ac:                                            ; preds = %bb.aa
    #dbg_value(ptr %0, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22985)
    #dbg_value(ptr %0, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !22986)
    #dbg_value(ptr %0, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !22987)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !23711
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !23711, !alias.scope !23368, !noundef !1568 ; 2 uses
  %i.bp = zext i8 %i.bo to i64, !dbg !23711       ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp:bb.a
    #dbg_value(i64 %i.ca, !2892, !DIExpression(), !23000)
    #dbg_value(ptr %1, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23010)
    #dbg_value(ptr %1, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23011)
    #dbg_value(ptr %1, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22998)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23010)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23011)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22998)
  %i.cb = icmp ult i8 %i.bz, 22
  br i1 %i.cb, label %bb.ah, label %bb.ai, !dbg !23724, !prof !2914

bb.ah:                                            ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !23725
    #dbg_value(ptr %i.cc, !2825, !DIExpression(), !23008)
    #dbg_value(ptr %i.cc, !2877, !DIExpression(), !23009)
    #dbg_value(ptr %i.cc, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23010)
    #dbg_value(ptr %i.cc, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23011)
    #dbg_value(ptr %i.cc, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22998)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79, !dbg !23726

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ca, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !23727, !noalias !23371
  unreachable, !dbg !23727

_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit79: ; preds = %bb.af, %bb.ah
  %.sroa.3.0.i77 = phi i64 [ %i.bw, %bb.af ], [ %i.ca, %bb.ah ], !dbg !23728 ; 2 uses
  %.sroa.0.0.i78 = phi ptr [ %i.bx, %bb.af ], [ %i.cc, %bb.ah ], !dbg !23728
    #dbg_value(ptr %.sroa.0.0.i78, !23243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23369)
    #dbg_value(ptr %.sroa.0.0.i78, !23249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23370)
    #dbg_value(i64 %.sroa.3.0.i77, !23243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23369)
    #dbg_value(i64 %.sroa.3.0.i77, !23249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23370)
    #dbg_value(ptr %.sroa.0.0.i76, !23254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23372)
    #dbg_value(ptr %.sroa.0.0.i76, !23258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23373)
    #dbg_value(i64 %.sroa.3.0.i, !23254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23372)
    #dbg_value(i64 %.sroa.3.0.i, !23258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23373)
    #dbg_value(ptr %.sroa.0.0.i78, !23255, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23372)
    #dbg_value(ptr %.sroa.0.0.i78, !23259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23373)
    #dbg_value(i64 %.sroa.3.0.i77, !23255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23372)
    #dbg_value(i64 %.sroa.3.0.i77, !23259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23373)
    #dbg_value(i64 %.sroa.3.0.i, !23266, !DIExpression(), !23374)
  %i.cd = sub i64 %.sroa.3.0.i, %.sroa.3.0.i77, !dbg !23729
    #dbg_value(i64 %i.cd, !23265, !DIExpression(), !23375)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i, i64 %.sroa.3.0.i77), !dbg !23730
    #dbg_value(i64 %spec.store.select, !23266, !DIExpression(), !23374)
    #dbg_value(ptr %.sroa.0.0.i76, !23267, !DIExpression(), !23376)
    #dbg_value(ptr %.sroa.0.0.i78, !23268, !DIExpression(), !23377)
  %i.ce = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i76, ptr nonnull %.sroa.0.0.i78, i64 %spec.store.select), !dbg !23731 ; 2 uses
  %i.cf = sext i32 %i.ce to i64, !dbg !23731
    #dbg_value(i64 %i.cf, !23269, !DIExpression(), !23378)
  %i.cg = icmp eq i32 %i.ce, 0, !dbg !23732
  %spec.store.select2 = select i1 %i.cg, i64 %i.cd, i64 %i.cf, !dbg !23732
    #dbg_value(i64 %spec.store.select2, !23269, !DIExpression(), !23378)
    #dbg_value(ptr undef, !23226, !DIExpression(), !23238)
  %i.ch = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select2, i64 0), !dbg !23733
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23734

bb.aj:                                            ; preds = %bb.g
    #dbg_value(ptr %0, !23207, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23379)
    #dbg_value(ptr %0, !23380, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23386)
    #dbg_value(ptr %0, !23387, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23391)
    #dbg_value(ptr %0, !23392, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23396)
    #dbg_value(ptr %1, !23208, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23397)
    #dbg_value(ptr %1, !23383, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23398)
    #dbg_value(ptr %1, !23387, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23400)
    #dbg_value(ptr %1, !23392, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23403)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23735
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !23735, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cj, !23406, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23413)
    #dbg_value(ptr %i.cj, !23414, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23418)
    #dbg_value(ptr %i.cj, !23419, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23423)
    #dbg_value(ptr %i.cj, !23424, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23428)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23736
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !23736, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cl, !23409, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23431)
    #dbg_value(ptr %i.cl, !23414, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23433)
    #dbg_value(ptr %i.cl, !23419, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23436)
    #dbg_value(ptr %i.cl, !23424, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23439)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24, !dbg !23737
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !23737, !nonnull !1568, !noundef !1568
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 32, !dbg !23738
  %i.cp = load i64, ptr %i.co, align 8, !dbg !23738, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cn, !23446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23452)
    #dbg_value(ptr %i.cn, !23453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23464)
    #dbg_value(i64 %i.cp, !23446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23452)
    #dbg_value(i64 %i.cp, !23453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23464)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24, !dbg !23739
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !23739, !nonnull !1568, !noundef !1568
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 32, !dbg !23740
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !23740, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.cr, !23449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23452)
    #dbg_value(ptr %i.cr, !23455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23464)
    #dbg_value(i64 %i.ct, !23449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23452)
    #dbg_value(i64 %i.ct, !23455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23464)
    #dbg_value(ptr %i.cn, !23471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23042)
    #dbg_value(i64 %i.cp, !23471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23042)
    #dbg_value(ptr %i.cr, !23484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23042)
    #dbg_value(i64 %i.ct, !23484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23042)
    #dbg_value(i64 %i.cp, !23497, !DIExpression(), !23045)
    #dbg_value(i64 %i.cp, !23500, !DIExpression(), !23048)
    #dbg_value(i64 %i.ct, !23498, !DIExpression(), !23045)
    #dbg_value(i64 %i.ct, !23501, !DIExpression(), !23048)
  %i.cu = tail call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.cp, i64 range(i64 0, 384307168202282326) %i.ct), !dbg !23741 ; 2 uses
    #dbg_value(i64 %i.cu, !23487, !DIExpression(), !23049)
    #dbg_value(ptr %i.cn, !23488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23050)
    #dbg_value(i64 %i.cu, !23488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23050)
    #dbg_value(ptr %i.cr, !23489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23051)
    #dbg_value(i64 %i.cu, !23489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23051)
    #dbg_value(i64 0, !23490, !DIExpression(), !23052)
  %.not = icmp eq i64 %i.cu, 0, !dbg !23742
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !23742

bb.ak:                                            ; preds = %.lr.ph
  %i.cv = add nuw i64 %.sroa.01.0.i115, 1, !dbg !23743 ; 2 uses
    #dbg_value(i64 %i.cv, !23490, !DIExpression(), !23052)
  %exitcond.not = icmp eq i64 %i.cv, %i.cu, !dbg !23742
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23742

._crit_edge:                                      ; preds = %bb.ak, %bb.aj
    #dbg_value(ptr poison, !23503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23056)
    #dbg_value(ptr poison, !23503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23056)
    #dbg_declare(ptr poison, !23509, !DIExpression(), !23057)
    #dbg_value(ptr poison, !23515, !DIExpression(), !23060)
    #dbg_value(ptr poison, !23518, !DIExpression(), !23060)
    #dbg_value(ptr poison, !23521, !DIExpression(), !23063)
    #dbg_value(ptr poison, !23519, !DIExpression(), !23060)
    #dbg_value(ptr poison, !23524, !DIExpression(), !23063)
  %i.cw = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.cp, i64 %i.ct), !dbg !23744
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23745

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %.sroa.01.0.i115 = phi i64 [ %i.cv, %bb.ak ], [ 0, %bb.aj ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i115, !23490, !DIExpression(), !23052)
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.sroa.01.0.i115, !dbg !23746
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %.sroa.01.0.i115, !dbg !23747
    #dbg_value(ptr undef, !23527, !DIExpression(), !23071)
    #dbg_value(ptr %i.cx, !23540, !DIExpression(), !23071)
    #dbg_value(ptr %i.cy, !23541, !DIExpression(), !23071)
  %i.cz = tail call noundef i8 @_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy), !dbg !23748, !inline_history !23072 ; 2 uses
  %i.da = icmp eq i8 %i.cz, 0, !dbg !23749
    #dbg_value(i8 poison, !23544, !DIExpression(), !23081)
    #dbg_value(i64 %.sroa.01.0.i115, !23490, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23052)
  br i1 %i.da, label %bb.ak, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23750

bb.al:                                            ; preds = %bb.h
    #dbg_value(ptr %0, !23209, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23562)
    #dbg_value(ptr %0, !23282, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23563)
    #dbg_value(ptr %0, !23564, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23567)
    #dbg_value(ptr %0, !23568, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23571)
    #dbg_value(ptr %1, !23210, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23572)
    #dbg_value(ptr %1, !23283, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23573)
    #dbg_value(ptr %1, !23564, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23575)
    #dbg_value(ptr %1, !23568, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23578)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23751
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !23751, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.dc, !23288, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23580)
    #dbg_value(ptr %i.dc, !23581, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23584)
    #dbg_value(ptr %i.dc, !23585, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23588)
    #dbg_value(ptr %i.dc, !23589, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23592)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23752
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !23752, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.de, !23289, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23595)
    #dbg_value(ptr %i.de, !23581, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23597)
    #dbg_value(ptr %i.de, !23585, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23600)
    #dbg_value(ptr %i.de, !23589, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23603)
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 24, !dbg !23753
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !23753, !nonnull !1568, !noundef !1568
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 32, !dbg !23754
  %i.di = load i64, ptr %i.dh, align 8, !dbg !23754, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.di, !23261, !DIExpression(), !23607)
    #dbg_value(ptr %i.dg, !23295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23608)
    #dbg_value(ptr %i.dg, !23299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23609)
    #dbg_value(ptr %i.dg, !23258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23610)
    #dbg_value(i64 %i.di, !23295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23608)
    #dbg_value(i64 %i.di, !23299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23609)
    #dbg_value(i64 %i.di, !23258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23610)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !23755
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !23755, !nonnull !1568, !noundef !1568
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 32, !dbg !23756
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !23756, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.dk, !23296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23608)
    #dbg_value(ptr %i.dk, !23300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23609)
    #dbg_value(ptr %i.dk, !23259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23610)
    #dbg_value(i64 %i.dm, !23296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23608)
    #dbg_value(i64 %i.dm, !23300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23609)
    #dbg_value(i64 %i.dm, !23259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23610)
  %i.dn = sub i64 %i.di, %i.dm, !dbg !23757
    #dbg_value(i64 %i.dn, !23260, !DIExpression(), !23617)
  %spec.store.select1 = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dm), !dbg !23758
    #dbg_value(i64 %spec.store.select1, !23261, !DIExpression(), !23607)
    #dbg_value(ptr %i.dg, !23262, !DIExpression(), !23618)
    #dbg_value(ptr %i.dk, !23263, !DIExpression(), !23619)
  %i.do = tail call i32 @memcmp(ptr nonnull %i.dg, ptr nonnull %i.dk, i64 %spec.store.select1), !dbg !23759 ; 2 uses
  %i.dp = sext i32 %i.do to i64, !dbg !23759
    #dbg_value(i64 %i.dp, !23264, !DIExpression(), !23620)
  %i.dq = icmp eq i32 %i.do, 0, !dbg !23760
  %spec.store.select3 = select i1 %i.dq, i64 %i.dn, i64 %i.dp, !dbg !23760
    #dbg_value(i64 %spec.store.select3, !23264, !DIExpression(), !23620)
    #dbg_value(ptr undef, !23226, !DIExpression(), !23278)
  %i.dr = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select3, i64 0), !dbg !23761
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23762

bb.am:                                            ; preds = %thread-pre-split
    #dbg_value(ptr %1, !23217, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23621)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23763
  %i.dt = load double, ptr %i.ds, align 8, !dbg !23763, !noundef !1568 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23622), !dbg !23764
    #dbg_value(double %i.dt, !6176, !DIExpression(), !23094)
    #dbg_value(double %i.dt, !6182, !DIExpression(), !23096)
    #dbg_value(double %i.dt, !6189, !DIExpression(), !23098)
    #dbg_value(double %i.dt, !6192, !DIExpression(), !23100)
    #dbg_value(double %i.dt, !6198, !DIExpression(), !23102)
    #dbg_value(double %i.dt, !6201, !DIExpression(), !23106)
    #dbg_value(double %i.dt, !6189, !DIExpression(), !23108)
    #dbg_value(double %i.dt, !6192, !DIExpression(), !23110)
    #dbg_value(double %i.dt, !6198, !DIExpression(), !23112)
    #dbg_value(ptr %0, !6179, !DIExpression(), !23094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23623), !dbg !23765
    #dbg_value(ptr %0, !6021, !DIExpression(), !23116)
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.an
    i8 4, label %bb.ao
    i8 6, label %bb.ap
    i8 7, label %bb.aq
  ], !dbg !23766

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23117)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23767
  %i.dv = load i64, ptr %i.du, align 8, !dbg !23767, !alias.scope !23624, !noundef !1568
  %i.dw = zext i64 %i.dv to i128, !dbg !23767
  br label %.sink.split.i.i82, !dbg !23768

bb.ao:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23118)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23769
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !23769, !alias.scope !23624, !noundef !1568
  %i.dz = sext i64 %i.dy to i128, !dbg !23769
  br label %.sink.split.i.i82, !dbg !23770

bb.ap:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23119)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23771
  %i.eb = load ptr, ptr %i.ea, align 8, !dbg !23771, !alias.scope !23624, !nonnull !1568, !noundef !1568
  %i.ec = load i128, ptr %i.eb, align 16, !dbg !23771, !noalias !23625, !noundef !1568 ; 4 uses
    #dbg_value(i128 %i.ec, !6031, !DIExpression(), !23122)
  %i.ed = icmp slt i128 %i.ec, 0, !dbg !23772
  br i1 %i.ed, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87, label %.sink.split.i.i82, !dbg !23772

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87: ; preds = %bb.ap
    #dbg_value(i128 %i.ec, !6229, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23123)
    #dbg_value(i128 1, !6229, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !23123)
    #dbg_value(ptr poison, !6230, !DIExpression(), !23124)
    #dbg_value(ptr poison, !6214, !DIExpression(), !23125)
    #dbg_value(i128 %i.ec, !6231, !DIExpression(), !23126)
    #dbg_value(i128 %i.ec, !6213, !DIExpression(), !23127)
    #dbg_value(i128 %i.ec, !6204, !DIExpression(), !23106)
  %i.ee = fcmp uno double %i.dt, 0.000000e+00, !dbg !23773
  br i1 %i.ee, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.au, !dbg !23774

bb.aq:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23128)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23775
  %i.eg = load ptr, ptr %i.ef, align 8, !dbg !23775, !alias.scope !23624, !nonnull !1568, !noundef !1568
  %i.eh = load i128, ptr %i.eg, align 16, !dbg !23775, !noalias !23625, !noundef !1568
  br label %.sink.split.i.i82, !dbg !23776

.sink.split.i.i82:                                ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sroa.5.0.ph.i83 = phi i128 [ %i.dw, %bb.an ], [ %i.dz, %bb.ao ], [ %i.eh, %bb.aq ], [ %i.ec, %bb.ap ] ; 2 uses
    #dbg_value(i128 %.sroa.5.0.ph.i83, !6180, !DIExpression(), !23129)
    #dbg_value(i128 %.sroa.5.0.ph.i83, !6185, !DIExpression(), !23096)
  %i.ei = fcmp uno double %i.dt, 0.000000e+00, !dbg !23777
  br i1 %i.ei, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.ar, !dbg !23778

bb.ar:                                            ; preds = %.sink.split.i.i82
  %i.ej = fcmp olt double %i.dt, f0xC7E0000000000000, !dbg !23779
  br i1 %i.ej, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.as, !dbg !23779

bb.as:                                            ; preds = %bb.ar
  %i.ek = fcmp ult double %i.dt, f0x47E0000000000000, !dbg !23780
  br i1 %i.ek, label %bb.at, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23780

bb.at:                                            ; preds = %bb.as
  %i.el = tail call double @llvm.floor.f64(double %i.dt), !dbg !23781 ; 2 uses
    #dbg_value(double %i.el, !6186, !DIExpression(), !23130)
  %i.em = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.el), !dbg !23782 ; 2 uses
    #dbg_value(ptr poison, !6234, !DIExpression(), !23132)
    #dbg_value(ptr poison, !6237, !DIExpression(), !23133)
  %i.en = tail call i8 @llvm.scmp.i8.i128(i128 %.sroa.5.0.ph.i83, i128 %i.em), !dbg !23783
  %i.eo = icmp eq i128 %i.em, %.sroa.5.0.ph.i83, !dbg !23784
  %i.ep = fcmp ogt double %i.dt, %i.el
  %or.cond.i85 = and i1 %i.ep, %i.eo, !dbg !23784
  br i1 %or.cond.i85, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90, !dbg !23784

bb.au:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128.exit.thread21.i87
  %i.eq = fcmp olt double %i.dt, 0.000000e+00, !dbg !23785
  br i1 %i.eq, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.av, !dbg !23785

bb.av:                                            ; preds = %bb.au
  %i.er = fcmp ult double %i.dt, f0x47F0000000000000, !dbg !23786
  br i1 %i.er, label %bb.aw, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23786

bb.aw:                                            ; preds = %bb.av
  %i.es = tail call double @llvm.floor.f64(double %i.dt), !dbg !23787 ; 2 uses
    #dbg_value(double %i.es, !6205, !DIExpression(), !23134)
  %i.et = tail call i128 @llvm.fptoui.sat.i128.f64(double %i.es), !dbg !23788 ; 2 uses
    #dbg_value(ptr poison, !6239, !DIExpression(), !23136)
    #dbg_value(ptr poison, !6243, !DIExpression(), !23137)
  %i.eu = tail call i8 @llvm.ucmp.i8.i128(i128 %i.ec, i128 %i.et), !dbg !23789
  %i.ev = icmp eq i128 %i.et, %i.ec, !dbg !23790
  %i.ew = fcmp ogt double %i.dt, %i.es
  %or.cond1.i88 = and i1 %i.ew, %i.ev, !dbg !23790
  br i1 %or.cond1.i88, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90, !dbg !23790

_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit90: ; preds = %bb.aw, %bb.at
  %.sroa.0.0.i84.neg = phi i8 [ %i.eu, %bb.aw ], [ %i.en, %bb.at ], !dbg !23791
    #dbg_value(i8 poison, !23626, !DIExpression(), !23639)
  br label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23792

bb.ax:                                            ; preds = %thread-pre-split
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.ay
    i8 4, label %bb.ay
    i8 6, label %bb.ay
    i8 7, label %bb.ay
  ], !dbg !23662

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax
  %i.ex = add nsw i8 %.pr, -2, !dbg !23661
  %i.ey = icmp samesign ugt i8 %.pr, 1, !dbg !23661
  %narrow74 = select i1 %i.ey, i8 %i.ex, i8 8, !dbg !23661 ; 3 uses
  switch i8 %narrow74, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.az
    i8 4, label %bb.az
    i8 6, label %bb.az
    i8 7, label %bb.az
  ], !dbg !23662

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23640), !dbg !23793
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23144)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23146)
    #dbg_value(ptr %0, !6271, !DIExpression(), !23147)
  switch i8 %narrow, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit [
    i8 3, label %bb.ba
    i8 4, label %bb.bb
    i8 6, label %bb.bc
    i8 7, label %bb.bd
  ], !dbg !23794

bb.ba:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23148)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23795
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !23795, !alias.scope !23640, !noundef !1568
  %i.fb = zext i64 %i.fa to i128, !dbg !23795
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23796

bb.bb:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23149)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23797
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !23797, !alias.scope !23640, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fd, !6277, !DIExpression(), !23151)
  %i.fe = icmp sgt i64 %i.fd, -1, !dbg !23798
  br i1 %i.fe, label %bb.be, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23798

bb.bc:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23152)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23799
  %i.fg = load ptr, ptr %i.ff, align 8, !dbg !23799, !alias.scope !23640, !nonnull !1568, !noundef !1568
  %i.fh = load i128, ptr %i.fg, align 16, !dbg !23799, !noalias !23641, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23800

bb.bd:                                            ; preds = %bb.az
    #dbg_value(ptr %0, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23154)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23801
  %i.fj = load ptr, ptr %i.fi, align 8, !dbg !23801, !alias.scope !23640, !nonnull !1568, !noundef !1568
  %i.fk = load i128, ptr %i.fj, align 16, !dbg !23801, !noalias !23641, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.fk, !6282, !DIExpression(), !23156)
  %i.fl = icmp sgt i128 %i.fk, -1, !dbg !23802
  br i1 %i.fl, label %.sink.split.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23802

.sink.split.i:                                    ; preds = %bb.bd
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23803

bb.be:                                            ; preds = %bb.bb
  %i.fm = zext nneg i64 %i.fd to i128, !dbg !23804
    #dbg_value(i128 %i.fm, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23157)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23157)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, !dbg !23805

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit: ; preds = %bb.ba, %bb.bc, %bb.be, %bb.az, %bb.bb, %bb.bd, %.sink.split.i
  %.sroa.2.0 = phi i128 [ undef, %bb.az ], [ undef, %bb.bd ], [ undef, %bb.bb ], [ %i.fb, %bb.ba ], [ %i.fm, %bb.be ], [ %i.fh, %bb.bc ], [ %i.fk, %.sink.split.i ]
  %storemerge.sink.i.off0 = phi i1 [ false, %bb.az ], [ false, %bb.bd ], [ false, %bb.bb ], [ true, %bb.ba ], [ true, %bb.be ], [ true, %bb.bc ], [ true, %.sink.split.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23642), !dbg !23806
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23162)
    #dbg_declare(ptr poison, !6251, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !23164)
    #dbg_value(ptr %1, !6271, !DIExpression(), !23165)
  switch i8 %narrow74, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95 [
    i8 3, label %bb.bf
    i8 4, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
  ], !dbg !23807

bb.bf:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23166)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23808
  %i.fo = load i64, ptr %i.fn, align 8, !dbg !23808, !alias.scope !23642, !noundef !1568
  %i.fp = zext i64 %i.fo to i128, !dbg !23808
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23809

bb.bg:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6273, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23167)
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23810
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !23810, !alias.scope !23642, !noundef !1568 ; 2 uses
    #dbg_value(i64 %i.fr, !6277, !DIExpression(), !23169)
  %i.fs = icmp sgt i64 %i.fr, -1, !dbg !23811
  br i1 %i.fs, label %bb.bj, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23811

bb.bh:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23170)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23812
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !23812, !alias.scope !23642, !nonnull !1568, !noundef !1568
  %i.fv = load i128, ptr %i.fu, align 16, !dbg !23812, !noalias !23643, !noundef !1568
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23813

bb.bi:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit
    #dbg_value(ptr %1, !6275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23172)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23814
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !23814, !alias.scope !23642, !nonnull !1568, !noundef !1568
  %i.fy = load i128, ptr %i.fx, align 16, !dbg !23814, !noalias !23643, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.fy, !6282, !DIExpression(), !23174)
  %i.fz = icmp sgt i128 %i.fy, -1, !dbg !23815
  br i1 %i.fz, label %.sink.split.i93, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23815

.sink.split.i93:                                  ; preds = %bb.bi
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23816

bb.bj:                                            ; preds = %bb.bg
  %i.ga = zext nneg i64 %i.fr to i128, !dbg !23817
    #dbg_value(i128 %i.ga, !6251, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23175)
    #dbg_value(i8 0, !6251, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23175)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95, !dbg !23818

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95: ; preds = %bb.bf, %bb.bh, %bb.bj, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit, %bb.bg, %bb.bi, %.sink.split.i93
  %.sroa.3.0 = phi i128 [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ undef, %bb.bi ], [ undef, %bb.bg ], [ %i.fp, %bb.bf ], [ %i.ga, %bb.bj ], [ %i.fv, %bb.bh ], [ %i.fy, %.sink.split.i93 ]
  %storemerge.sink.i92.off0 = phi i1 [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit ], [ false, %bb.bi ], [ false, %bb.bg ], [ true, %bb.bf ], [ true, %bb.bj ], [ true, %bb.bh ], [ true, %.sink.split.i93 ] ; 2 uses
  br i1 %storemerge.sink.i.off0, label %bb.bk, label %bb.bl, !dbg !23819

bb.bk:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95
  br i1 %storemerge.sink.i92.off0, label %bb.bv, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, !dbg !23819

bb.bl:                                            ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128.exit95
  br i1 %storemerge.sink.i92.off0, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %bb.bm, !dbg !23819

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23644), !dbg !23820
    #dbg_value(ptr %0, !6021, !DIExpression(), !23179)
  switch i8 %narrow, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.bn
    i8 4, label %bb.bo
    i8 6, label %bb.bp
    i8 7, label %bb.bq
  ], !dbg !23821

bb.bn:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23180)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23822
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !23822, !alias.scope !23644, !noundef !1568
  %i.gd = zext i64 %i.gc to i128, !dbg !23822
  br label %.sink.split.i97, !dbg !23823

bb.bo:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23181)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23824
  %i.gf = load i64, ptr %i.ge, align 8, !dbg !23824, !alias.scope !23644, !noundef !1568
  %i.gg = sext i64 %i.gf to i128, !dbg !23824
  br label %.sink.split.i97, !dbg !23825

bb.bp:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23182)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23826
  %i.gi = load ptr, ptr %i.gh, align 8, !dbg !23826, !alias.scope !23644, !nonnull !1568, !noundef !1568
  %i.gj = load i128, ptr %i.gi, align 16, !dbg !23826, !noalias !23645, !noundef !1568 ; 2 uses
    #dbg_value(i128 %i.gj, !6031, !DIExpression(), !23185)
  %i.gk = icmp slt i128 %i.gj, 0, !dbg !23827
  br i1 %i.gk, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit, label %.sink.split.i97, !dbg !23827

bb.bq:                                            ; preds = %bb.bm
    #dbg_value(ptr %0, !6028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23186)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23828
  %i.gm = load ptr, ptr %i.gl, align 8, !dbg !23828, !alias.scope !23644, !nonnull !1568, !noundef !1568
  %i.gn = load i128, ptr %i.gm, align 16, !dbg !23828, !noalias !23645, !noundef !1568
  br label %.sink.split.i97, !dbg !23829

.sink.split.i97:                                  ; preds = %bb.bp, %bb.bq, %bb.bo, %bb.bn
  %.sroa.5.0.ph = phi i128 [ %i.gd, %bb.bn ], [ %i.gg, %bb.bo ], [ %i.gn, %bb.bq ], [ %i.gj, %bb.bp ]
    #dbg_value(ptr poison, !23646, !DIExpression(), !23650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23651), !dbg !23830
    #dbg_value(ptr %1, !6021, !DIExpression(), !23191)
  switch i8 %narrow74, label %_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number.exit [
    i8 3, label %bb.br
    i8 4, label %bb.bs
    i8 6, label %bb.bt
    i8 7, label %bb.bu
  ], !dbg !23831

bb.br:                                            ; preds = %.sink.split.i97
    #dbg_value(ptr %1, !6025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23192)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23832
  %i.gp = load i64, ptr %i.go, align 8, !dbg !23832, !alias.scope !23651, !noundef !1568
  %i.gq = zext i64 %i.gp to i128, !dbg !23832
  br label %.sink.split.i142, !dbg !23833

bb.bs:                                            ; preds = %.sink.split.i97
    #dbg_value(ptr %1, !6026, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23193)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23834
  %i.gs = load i64, ptr %i.gr, align 8, !dbg !23834, !alias.scope !23651, !noundef !1568
  %i.gt = sext i64 %i.gs to i128, !dbg !23834
end_hunk_3
begin_hunk_4_@llvm.smin.i128
!22891 = distinct !DILexicalBlock(scope: !22893, file: !1885, line: 313, column: 13)
!22892 = distinct !DILexicalBlock(scope: !22893, file: !1885, line: 312, column: 13)
!22893 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp", scope: !23200, file: !1885, line: 307, type: !23202, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23224)
!22894 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs17_NtNtCsf3Ta7LF998c_4core3cmp5implsiNtB8_3Ord3cmp", scope: !23227, file: !4901, line: 2347, type: !23229, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23231)
!22895 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs1_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !23239, file: !5500, line: 48, type: !23241, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23244)
!22896 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core3str6traitseNtNtB6_3cmp3Ord3cmp", scope: !23245, file: !5500, line: 20, type: !23247, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23250)
!22897 = distinct !DISubprogram(name: "cmp<u8>", linkageName: "_RNvXs0_NtNtCsf3Ta7LF998c_4core5slice3cmpShNtNtB9_3cmp3Ord3cmpCs5yXxDE1DkoT_4tera", scope: !23251, file: !4896, line: 39, type: !23253, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1585, retainedNodes: !23256)
!22898 = distinct !DILexicalBlock(scope: !22899, file: !4896, line: 339, column: 9)
!22899 = distinct !DILexicalBlock(scope: !22900, file: !4896, line: 333, column: 9)
!22900 = distinct !DILexicalBlock(scope: !22901, file: !4896, line: 332, column: 9)
!22901 = distinct !DILexicalBlock(scope: !22902, file: !4896, line: 331, column: 9)
!22902 = distinct !DILexicalBlock(scope: !22903, file: !4896, line: 328, column: 9)
!22903 = distinct !DISubprogram(name: "compare<u8>", linkageName: "_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCs5yXxDE1DkoT_4tera", scope: !23257, file: !4896, line: 325, type: !23253, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23271, retainedNodes: !23270)
!22904 = distinct !DILexicalBlock(scope: !22903, file: !4896, line: 328, column: 9)
!22905 = distinct !DILexicalBlock(scope: !22904, file: !4896, line: 331, column: 9)
!22906 = distinct !DILexicalBlock(scope: !22905, file: !4896, line: 332, column: 9)
!22907 = distinct !DILexicalBlock(scope: !22906, file: !4896, line: 333, column: 9)
!22908 = distinct !DILexicalBlock(scope: !22907, file: !4896, line: 339, column: 9)
!22909 = distinct !DISubprogram(name: "partial_cmp<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsS_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpCs5yXxDE1DkoT_4tera", scope: !23279, file: !2894, line: 3789, type: !23281, scopeLine: 3789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1622, retainedNodes: !23284)
!22910 = distinct !DISubprogram(name: "partial_cmp<u8, alloc::alloc::Global, alloc::alloc::Global>", linkageName: "_RNvXsm_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpCs5yXxDE1DkoT_4tera", scope: !23285, file: !2953, line: 4377, type: !23287, scopeLine: 4377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23291, retainedNodes: !23290)
!22911 = distinct !DISubprogram(name: "partial_cmp<u8>", linkageName: "_RNvXs1_NtNtCsf3Ta7LF998c_4core5slice3cmpShNtNtB9_3cmp10PartialOrd11partial_cmpCs5yXxDE1DkoT_4tera", scope: !23292, file: !4896, line: 60, type: !23294, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1585, retainedNodes: !23297)
!22912 = distinct !DISubprogram(name: "partial_compare<u8>", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs5yXxDE1DkoT_4tera", scope: !23298, file: !4896, line: 252, type: !23294, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23271, retainedNodes: !23301)
!22913 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs0_NtNtCsf3Ta7LF998c_4core3cmp5implsbNtB7_10PartialOrd11partial_cmp", scope: !23307, file: !4901, line: 2292, type: !23309, scopeLine: 2292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23311)
!22914 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs2_NtNtCsf3Ta7LF998c_4core3cmp5implsbNtB7_3Ord3cmp", scope: !23315, file: !4901, line: 2389, type: !23317, scopeLine: 2389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23319)
!22915 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsQ_NtNtCsf3Ta7LF998c_4core3cmp5implsdNtB7_10PartialOrd11partial_cmp", scope: !23327, file: !4901, line: 2265, type: !23329, scopeLine: 2265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23331)
!22916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !23335, file: !1313, size: 128, align: 64, elements: !23340, templateParams: !1568, identifier: "f329c24e98d25fbf1b67787312e9a5e3")
!22917 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB7_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp0B9_", scope: !23335, file: !1885, line: 320, type: !23337, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23342)
!22918 = distinct !DILexicalBlock(scope: !22919, file: !3710, line: 1066, column: 13)
!22919 = distinct !DISubprogram(name: "unwrap_or_else<core::cmp::Ordering, tera::value::{impl#7}::partial_cmp::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE14unwrap_or_elseNCNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB1r_5ValueNtBK_10PartialOrd11partial_cmp0EB1t_", scope: !1257, file: !3710, line: 1061, type: !23347, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23349, declaration: !23350, retainedNodes: !23354)
!22920 = distinct !{!22920, i1 true, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number"}
!22921 = distinct !{!22921, !22920, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number: argument 0"}
!22922 = distinct !DILocation(line: 327, column: 40, scope: !22886)
!22923 = distinct !DILocation(line: 0, scope: !1259, inlinedAt: !22922)
!22924 = distinct !DILocation(line: 231, column: 14, scope: !1258, inlinedAt: !22922)
!22925 = distinct !DILocation(line: 0, scope: !1262, inlinedAt: !22924)
!22926 = distinct !DILocation(line: 238, column: 10, scope: !1262, inlinedAt: !22924)
!22927 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !22926)
!22928 = distinct !DILocation(line: 248, column: 19, scope: !1262, inlinedAt: !22924)
!22929 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !22928)
!22930 = distinct !DILocation(line: 50, column: 9, scope: !1264, inlinedAt: !22928)
!22931 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !22930)
!22932 = distinct !DILocation(line: 233, column: 25, scope: !1259, inlinedAt: !22922)
!22933 = distinct !DILocation(line: 1165, column: 29, scope: !1276, inlinedAt: !22932)
!22934 = distinct !DILocation(line: 233, column: 33, scope: !1270, inlinedAt: !22933)
!22935 = distinct !DILocation(line: 0, scope: !1268, inlinedAt: !22934)
!22936 = distinct !DILocation(line: 256, column: 10, scope: !1268, inlinedAt: !22934)
!22937 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !22936)
!22938 = distinct !DILocation(line: 266, column: 19, scope: !1268, inlinedAt: !22934)
!22939 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !22938)
!22940 = distinct !DILocation(line: 50, column: 9, scope: !6233, inlinedAt: !22938)
!22941 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !22940)
!22942 = distinct !{!22942, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!22943 = distinct !{!22943, !22942, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!22944 = distinct !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !22922)
!22945 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !22944)
!22946 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !22944)
!22947 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !22944)
!22948 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !22944)
!22949 = distinct !{!22949, !22942, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!22950 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !22944)
!22951 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !22950)
!22952 = distinct !DILocation(line: 0, scope: !1275, inlinedAt: !22932)
!22953 = distinct !DILocation(line: 1160, column: 34, scope: !1275, inlinedAt: !22932)
!22954 = distinct !DILocation(line: 229, column: 22, scope: !1270, inlinedAt: !22933)
!22955 = distinct !DILocation(line: 0, scope: !1276, inlinedAt: !22932)
!22956 = distinct !DILocation(line: 0, scope: !1270, inlinedAt: !22933)
!22957 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !22944)
!22958 = distinct !DILocation(line: 0, scope: !1258, inlinedAt: !22922)
!22959 = distinct !DILocation(line: 0, scope: !1261, inlinedAt: !22924)
!22960 = distinct !DILocation(line: 249, column: 27, scope: !1261, inlinedAt: !22924)
!22961 = distinct !DILocation(line: 2347, column: 24, scope: !1277, inlinedAt: !22960)
!22962 = distinct !DILocation(line: 2347, column: 31, scope: !1277, inlinedAt: !22960)
!22963 = distinct !DILocation(line: 0, scope: !1267, inlinedAt: !22934)
!22964 = distinct !DILocation(line: 267, column: 27, scope: !1267, inlinedAt: !22934)
!22965 = distinct !DILocation(line: 2347, column: 24, scope: !1278, inlinedAt: !22964)
!22966 = distinct !DILocation(line: 2347, column: 31, scope: !1278, inlinedAt: !22964)
!22967 = distinct !DISubprogram(name: "is_nan", linkageName: "_RNvMNtCsf3Ta7LF998c_4core3f64d6is_nan", scope: !6173, file: !6171, line: 666, type: !6175, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23362)
!22968 = distinct !{!22968, i1 true, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str"}
!22969 = distinct !{!22969, !22968, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str: argument 0"}
!22970 = distinct !DILocation(line: 315, column: 66, scope: !22889)
!22971 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !22970)
!22972 = distinct !DILocation(line: 131, column: 61, scope: !377, inlinedAt: !22970)
!22973 = distinct !DILocation(line: 390, column: 9, scope: !388, inlinedAt: !22972)
!22974 = distinct !DILocation(line: 19, column: 15, scope: !387, inlinedAt: !22973)
!22975 = distinct !DILocation(line: 503, column: 23, scope: !386, inlinedAt: !22974)
!22976 = distinct !DILocation(line: 0, scope: !384, inlinedAt: !22975)
!22977 = distinct !DILocation(line: 407, column: 32, scope: !384, inlinedAt: !22975)
!22978 = distinct !DILocation(line: 0, scope: !393, inlinedAt: !22977)
!22979 = distinct !DILocation(line: 133, column: 25, scope: !376, inlinedAt: !22970)
!22980 = distinct !DILocation(line: 133, column: 34, scope: !376, inlinedAt: !22970)
!22981 = distinct !DILocation(line: 2572, column: 14, scope: !394, inlinedAt: !22980)
!22982 = distinct !DILocation(line: 2573, column: 15, scope: !394, inlinedAt: !22980)
!22983 = distinct !DILocation(line: 2232, column: 14, scope: !396, inlinedAt: !22982)
!22984 = distinct !DILocation(line: 2238, column: 27, scope: !396, inlinedAt: !22982)
!22985 = distinct !DILocation(line: 129, column: 27, scope: !377, inlinedAt: !22970)
!22986 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !22970)
!22987 = distinct !DILocation(line: 0, scope: !388, inlinedAt: !22972)
!22988 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !22973)
!22989 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !22974)
!22990 = distinct !{!22990, i1 true, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str"}
!22991 = distinct !{!22991, !22990, !"_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str: argument 0"}
!22992 = distinct !DILocation(line: 315, column: 90, scope: !22889)
!22993 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !22992)
!22994 = distinct !DILocation(line: 131, column: 61, scope: !377, inlinedAt: !22992)
!22995 = distinct !DILocation(line: 390, column: 9, scope: !388, inlinedAt: !22994)
!22996 = distinct !DILocation(line: 19, column: 15, scope: !387, inlinedAt: !22995)
!22997 = distinct !DILocation(line: 503, column: 23, scope: !386, inlinedAt: !22996)
!22998 = distinct !DILocation(line: 0, scope: !384, inlinedAt: !22997)
!22999 = distinct !DILocation(line: 407, column: 32, scope: !384, inlinedAt: !22997)
!23000 = distinct !DILocation(line: 0, scope: !393, inlinedAt: !22999)
!23001 = distinct !DILocation(line: 133, column: 25, scope: !376, inlinedAt: !22992)
!23002 = distinct !DILocation(line: 133, column: 34, scope: !376, inlinedAt: !22992)
!23003 = distinct !DILocation(line: 2572, column: 14, scope: !394, inlinedAt: !23002)
!23004 = distinct !DILocation(line: 2573, column: 15, scope: !394, inlinedAt: !23002)
!23005 = distinct !DILocation(line: 2232, column: 14, scope: !396, inlinedAt: !23004)
!23006 = distinct !DILocation(line: 2238, column: 27, scope: !396, inlinedAt: !23004)
!23007 = distinct !DILocation(line: 129, column: 27, scope: !377, inlinedAt: !22992)
!23008 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !22992)
!23009 = distinct !DILocation(line: 0, scope: !388, inlinedAt: !22994)
!23010 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !22995)
!23011 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !22996)
!23012 = distinct !DISubprogram(name: "partial_cmp<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsS_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpB10_", scope: !23279, file: !2894, line: 3789, type: !23382, scopeLine: 3789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1706, retainedNodes: !23384)
!23013 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefB10_", scope: !2896, file: !2894, line: 2572, type: !2926, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1706, retainedNodes: !23388)
!23014 = distinct !DISubprogram(name: "inner<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE5innerB10_", scope: !25, file: !2894, line: 2232, type: !2929, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1706, declaration: !2930, retainedNodes: !23393)
!23015 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBY_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEE6as_refB1Q_", scope: !24, file: !2557, line: 450, type: !2950, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1687, declaration: !2951)
!23016 = distinct !DISubprogram(name: "partial_cmp<tera::value::Value, alloc::alloc::Global, alloc::alloc::Global>", linkageName: "_RNvXsm_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBJ_", scope: !23285, file: !2953, line: 4377, type: !23408, scopeLine: 4377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23411, retainedNodes: !23410)
!23017 = distinct !DISubprogram(name: "deref<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefBJ_", scope: !2954, file: !2953, line: 3894, type: !2956, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, retainedNodes: !23415)
!23018 = distinct !DISubprogram(name: "as_slice<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueE8as_sliceBI_", scope: !21, file: !2953, line: 1856, type: !2956, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, declaration: !2961, retainedNodes: !23420)
!23019 = distinct !DISubprogram(name: "as_ptr<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueE6as_ptrBI_", scope: !21, file: !2953, line: 1974, type: !2963, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, declaration: !2964, retainedNodes: !23425)
!23020 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, tera::value::Value>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs5yXxDE1DkoT_4tera5value5ValueEB15_", scope: !5, file: !2965, line: 626, type: !2968, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !2969, declaration: !2970)
!23021 = distinct !DISubprogram(name: "ptr<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueE3ptrBQ_", scope: !20, file: !2965, line: 304, type: !2974, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1700, declaration: !2975)
!23022 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, tera::value::Value>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs5yXxDE1DkoT_4tera5value5ValueEB10_", scope: !5, file: !2965, line: 621, type: !2977, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !2969, declaration: !2978)
!23023 = distinct !DISubprogram(name: "partial_cmp<tera::value::Value>", linkageName: "_RNvXs1_NtNtCsf3Ta7LF998c_4core5slice3cmpSNtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB9_3cmp10PartialOrd11partial_cmpBH_", scope: !23292, file: !4896, line: 60, type: !23448, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1699, retainedNodes: !23450)
!23024 = distinct !DILexicalBlock(scope: !23026, file: !4896, line: 191, column: 9)
!23025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}<tera::value::Value>", scope: !23460, file: !1313, align: 8, elements: !1568, identifier: "60ec1af69e129a2a9ab3e87aba95e663")
!23026 = distinct !DILexicalBlock(scope: !23028, file: !4896, line: 189, column: 9)
!23027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<tera::value::Value>", scope: !23460, file: !1313, align: 8, elements: !1568, identifier: "515b6b6d583759d064c5453a5f81cd89")
!23028 = distinct !DILexicalBlock(scope: !23029, file: !4896, line: 184, column: 9)
!23029 = distinct !DISubprogram(name: "partial_compare<tera::value::Value>", linkageName: "_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB5_15SlicePartialOrd15partial_compareBG_", scope: !23454, file: !4896, line: 183, type: !23448, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23461, retainedNodes: !23459)
!23030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !23033, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23479, templateParams: !23481, identifier: "f6c31f7a876d9a58a99a406747bb34")
!23031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !23033, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23483, templateParams: !23481, identifier: "54454c6d620310902ee118bf65cde002")
!23032 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23033, file: !1313, size: 8, align: 8, elements: !23477, templateParams: !1568, identifier: "53be078152ebe79e494f54169cea8f4")
!23033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::option::Option<core::cmp::Ordering>, !>", scope: !2935, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23474, templateParams: !1568, identifier: "37cc468bb0cc0008aefebab38efa9dca")
!23034 = distinct !DILexicalBlock(scope: !23036, file: !4896, line: 230, column: 37)
!23035 = distinct !DILexicalBlock(scope: !23036, file: !4896, line: 230, column: 37)
!23036 = distinct !DILexicalBlock(scope: !23037, file: !4896, line: 228, column: 5)
!23037 = distinct !DILexicalBlock(scope: !23038, file: !4896, line: 225, column: 5)
!23038 = distinct !DILexicalBlock(scope: !23039, file: !4896, line: 224, column: 5)
!23039 = distinct !DILexicalBlock(scope: !23040, file: !4896, line: 220, column: 5)
!23040 = distinct !DISubprogram(name: "chaining_impl<tera::value::Value, core::option::Option<core::cmp::Ordering>, !, core::slice::cmp::{impl#6}::partial_compare::{closure_env#0}<tera::value::Value>, core::slice::cmp::{impl#6}::partial_compare::{closure_env#1}<tera::value::Value>>", linkageName: "_RINvNtNtCsf3Ta7LF998c_4core5slice3cmp13chaining_implNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtB6_6option6OptionNtNtB6_3cmp8OrderingEzNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB27_s_0EBS_", scope: !4897, file: !4896, line: 214, type: !23473, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23496, retainedNodes: !23493)
!23041 = distinct !DILocation(line: 191, column: 37, scope: !23026, inlinedAt: !23463)
!23042 = distinct !DILocation(line: 0, scope: !23040, inlinedAt: !23041)
!23043 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3cmp3minjECs5yXxDE1DkoT_4tera", scope: !1491, file: !4901, line: 1666, type: !5537, scopeLine: 1666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1614, retainedNodes: !23499)
!23044 = distinct !DILocation(line: 220, column: 13, scope: !23040, inlinedAt: !23041)
!23045 = distinct !DILocation(line: 0, scope: !23043, inlinedAt: !23044)
!23046 = distinct !DISubprogram(name: "min", linkageName: "_RNvXsV_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_3Ord3min", scope: !5538, file: !4901, line: 2319, type: !5537, scopeLine: 2319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23502)
!23047 = distinct !DILocation(line: 1667, column: 8, scope: !23043, inlinedAt: !23044)
!23048 = distinct !DILocation(line: 0, scope: !23046, inlinedAt: !23047)
!23049 = distinct !DILocation(line: 0, scope: !23039, inlinedAt: !23041)
!23050 = distinct !DILocation(line: 0, scope: !23038, inlinedAt: !23041)
!23051 = distinct !DILocation(line: 0, scope: !23037, inlinedAt: !23041)
!23052 = distinct !DILocation(line: 0, scope: !23036, inlinedAt: !23041)
!23053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&usize, &usize)", file: !1313, size: 128, align: 64, elements: !23506, templateParams: !1568, identifier: "3cb66d445dff230a928bd4c12b072466")
!23054 = distinct !DISubprogram(name: "call_once<core::slice::cmp::{impl#6}::partial_compare::{closure_env#1}<tera::value::Value>, (&usize, &usize)>", linkageName: "_RNvYNCNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtBa_15SlicePartialOrd15partial_compares_0INtNtNtBe_3ops8function6FnOnceTRjB2r_EE9call_onceBL_", scope: !4682, file: !4679, line: 250, type: !23508, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23513, retainedNodes: !23510)
!23055 = distinct !DILocation(line: 234, column: 5, scope: !23036, inlinedAt: !23041)
!23056 = distinct !DILocation(line: 0, scope: !23054, inlinedAt: !23055)
!23057 = distinct !DILocation(line: 250, column: 5, scope: !23054, inlinedAt: !23055)
!23058 = distinct !DISubprogram(name: "{closure#1}<tera::value::Value>", linkageName: "_RNCNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB7_15SlicePartialOrd15partial_compares_0BI_", scope: !23460, file: !4896, line: 189, type: !23517, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23461, retainedNodes: !23520)
!23059 = distinct !DILocation(line: 250, column: 5, scope: !23054, inlinedAt: !23055)
!23060 = distinct !DILocation(line: 0, scope: !23058, inlinedAt: !23059)
!23061 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsU_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_10PartialOrd11partial_cmp", scope: !5535, file: !4901, line: 2336, type: !23523, scopeLine: 2336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23525)
!23062 = distinct !DILocation(line: 189, column: 65, scope: !23058, inlinedAt: !23059)
!23063 = distinct !DILocation(line: 0, scope: !23061, inlinedAt: !23062)
!23064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !23067, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23535, templateParams: !23536, identifier: "54b5e9db86c35828ae72c2fb48f991cf")
!23065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !23067, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23538, templateParams: !23536, identifier: "ee622b84452614c3750434fa59abe562")
!23066 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23067, file: !1313, size: 8, align: 8, elements: !23533, templateParams: !1568, identifier: "e0964edab1db7a03f8ff4f2ae3a91c68", discriminator: !23539)
!23067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::option::Option<core::cmp::Ordering>, ()>", scope: !2935, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23530, templateParams: !1568, identifier: "42319647a54cd186ae56a8b4873a4bcb")
!23068 = distinct !DILexicalBlock(scope: !23069, file: !4896, line: 186, column: 13)
!23069 = distinct !DISubprogram(name: "{closure#0}<tera::value::Value>", linkageName: "_RNCNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB7_15SlicePartialOrd15partial_compare0BI_", scope: !23460, file: !4896, line: 184, type: !23529, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23461, retainedNodes: !23543)
!23070 = distinct !DILocation(line: 230, column: 9, scope: !23036, inlinedAt: !23041)
!23071 = distinct !DILocation(line: 0, scope: !23069, inlinedAt: !23070)
!23072 = distinct !{null, null}
!23073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !23076, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23553, templateParams: !23555, identifier: "869759e35bca69b5decc96886372aa46")
!23074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !23076, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23557, templateParams: !23555, identifier: "4793cc18c97956a8cc0adee72b3f071e")
!23075 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23076, file: !1313, size: 8, align: 8, elements: !23551, templateParams: !1568, identifier: "34a427344609439f661605cab2bdf82", discriminator: !23558)
!23076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::ops::control_flow::ControlFlow<core::option::Option<core::cmp::Ordering>, !>, ()>", scope: !2935, file: !1313, size: 8, align: 8, flags: DIFlagPublic, elements: !23548, templateParams: !1568, identifier: "fbc8fc122ff014eb326d727970f2252b")
!23077 = distinct !DILexicalBlock(scope: !23079, file: !6249, line: 118, column: 13)
!23078 = distinct !DILexicalBlock(scope: !23079, file: !6249, line: 117, column: 13)
!23079 = distinct !DISubprogram(name: "branch<core::option::Option<core::cmp::Ordering>, ()>", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core3ops12control_flowINtB2_11ControlFlowINtNtB6_6option6OptionNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try6branchCs5yXxDE1DkoT_4tera", scope: !23545, file: !6249, line: 115, type: !23547, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23536, retainedNodes: !23561)
!23080 = distinct !DILocation(line: 230, column: 9, scope: !23036, inlinedAt: !23041)
!23081 = distinct !DILocation(line: 0, scope: !23079, inlinedAt: !23080)
!23082 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !2896, file: !2894, line: 2572, type: !3203, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1622, retainedNodes: !23565)
!23083 = distinct !DISubprogram(name: "inner<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE5innerCs5yXxDE1DkoT_4tera", scope: !14, file: !2894, line: 2232, type: !3206, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1622, declaration: !3207, retainedNodes: !23569)
!23084 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBY_3vec3VechEEE6as_refCs5yXxDE1DkoT_4tera", scope: !13, file: !2557, line: 450, type: !3210, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1571, declaration: !3211)
!23085 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !2954, file: !2953, line: 3894, type: !3213, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, retainedNodes: !23582)
!23086 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8as_sliceCs5yXxDE1DkoT_4tera", scope: !7, file: !2953, line: 1856, type: !3213, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, declaration: !3214, retainedNodes: !23586)
!23087 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !2953, line: 1974, type: !3216, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, declaration: !3217, retainedNodes: !23590)
!23088 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs5yXxDE1DkoT_4tera", scope: !5, file: !2965, line: 626, type: !3219, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !3220, declaration: !3221)
!23089 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE3ptrCs5yXxDE1DkoT_4tera", scope: !6, file: !2965, line: 304, type: !3225, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1604, declaration: !3226)
!23090 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs5yXxDE1DkoT_4tera", scope: !5, file: !2965, line: 621, type: !3228, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !3220, declaration: !3229)
!23091 = distinct !{!23091, i1 true, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number"}
!23092 = distinct !{!23092, !23091, !"_RNvNtCs5yXxDE1DkoT_4tera5value17cmp_f64_to_number: argument 0"}
!23093 = distinct !DILocation(line: 328, column: 40, scope: !22885)
!23094 = distinct !DILocation(line: 0, scope: !1259, inlinedAt: !23093)
!23095 = distinct !DILocation(line: 231, column: 14, scope: !1258, inlinedAt: !23093)
!23096 = distinct !DILocation(line: 0, scope: !1262, inlinedAt: !23095)
!23097 = distinct !DILocation(line: 238, column: 10, scope: !1262, inlinedAt: !23095)
!23098 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !23097)
!23099 = distinct !DILocation(line: 248, column: 19, scope: !1262, inlinedAt: !23095)
!23100 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !23099)
!23101 = distinct !DILocation(line: 50, column: 9, scope: !1264, inlinedAt: !23099)
!23102 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !23101)
!23103 = distinct !DILocation(line: 233, column: 25, scope: !1259, inlinedAt: !23093)
!23104 = distinct !DILocation(line: 1165, column: 29, scope: !1276, inlinedAt: !23103)
!23105 = distinct !DILocation(line: 233, column: 33, scope: !1270, inlinedAt: !23104)
!23106 = distinct !DILocation(line: 0, scope: !1268, inlinedAt: !23105)
!23107 = distinct !DILocation(line: 256, column: 10, scope: !1268, inlinedAt: !23105)
!23108 = distinct !DILocation(line: 0, scope: !1263, inlinedAt: !23107)
!23109 = distinct !DILocation(line: 266, column: 19, scope: !1268, inlinedAt: !23105)
!23110 = distinct !DILocation(line: 0, scope: !1264, inlinedAt: !23109)
!23111 = distinct !DILocation(line: 50, column: 9, scope: !6233, inlinedAt: !23109)
!23112 = distinct !DILocation(line: 0, scope: !1265, inlinedAt: !23111)
!23113 = distinct !{!23113, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!23114 = distinct !{!23114, !23113, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!23115 = distinct !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !23093)
!23116 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !23115)
!23117 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !23115)
!23118 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !23115)
!23119 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !23115)
!23120 = distinct !{!23120, !23113, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!23121 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !23115)
!23122 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !23121)
!23123 = distinct !DILocation(line: 0, scope: !1275, inlinedAt: !23103)
!23124 = distinct !DILocation(line: 1160, column: 34, scope: !1275, inlinedAt: !23103)
!23125 = distinct !DILocation(line: 229, column: 22, scope: !1270, inlinedAt: !23104)
!23126 = distinct !DILocation(line: 0, scope: !1276, inlinedAt: !23103)
!23127 = distinct !DILocation(line: 0, scope: !1270, inlinedAt: !23104)
!23128 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !23115)
!23129 = distinct !DILocation(line: 0, scope: !1258, inlinedAt: !23093)
!23130 = distinct !DILocation(line: 0, scope: !1261, inlinedAt: !23095)
!23131 = distinct !DILocation(line: 249, column: 27, scope: !1261, inlinedAt: !23095)
!23132 = distinct !DILocation(line: 2347, column: 24, scope: !1277, inlinedAt: !23131)
!23133 = distinct !DILocation(line: 2347, column: 31, scope: !1277, inlinedAt: !23131)
!23134 = distinct !DILocation(line: 0, scope: !1267, inlinedAt: !23105)
!23135 = distinct !DILocation(line: 267, column: 27, scope: !1267, inlinedAt: !23105)
!23136 = distinct !DILocation(line: 2347, column: 24, scope: !1278, inlinedAt: !23135)
!23137 = distinct !DILocation(line: 2347, column: 31, scope: !1278, inlinedAt: !23135)
!23138 = distinct !DILexicalBlock(scope: !23139, file: !3710, line: 1165, column: 13)
!23139 = distinct !DISubprogram(name: "map<core::cmp::Ordering, core::cmp::Ordering, fn(core::cmp::Ordering) -> core::cmp::Ordering>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE3mapBI_NvMBK_BI_7reverseECs5yXxDE1DkoT_4tera", scope: !1257, file: !3710, line: 1160, type: !23631, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23633, declaration: !23634, retainedNodes: !23637)
!23140 = distinct !{!23140, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128"}
!23141 = distinct !{!23141, !23140, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 1"}
!23142 = distinct !DILocation(line: 332, column: 30, scope: !22893)
!23143 = distinct !DILocation(line: 592, column: 56, scope: !1290, inlinedAt: !23142)
!23144 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23143)
!23145 = distinct !DILocation(line: 590, column: 54, scope: !1287, inlinedAt: !23142)
!23146 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23145)
!23147 = distinct !DILocation(line: 0, scope: !1289, inlinedAt: !23142)
!23148 = distinct !DILocation(line: 589, column: 29, scope: !1288, inlinedAt: !23142)
!23149 = distinct !DILocation(line: 590, column: 29, scope: !1287, inlinedAt: !23142)
!23150 = distinct !DILocation(line: 590, column: 35, scope: !1287, inlinedAt: !23142)
!23151 = distinct !DILocation(line: 0, scope: !1291, inlinedAt: !23150)
!23152 = distinct !DILocation(line: 591, column: 30, scope: !1286, inlinedAt: !23142)
!23153 = distinct !{!23153, !23140, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 0"}
!23154 = distinct !DILocation(line: 592, column: 30, scope: !1290, inlinedAt: !23142)
!23155 = distinct !DILocation(line: 592, column: 36, scope: !1290, inlinedAt: !23142)
!23156 = distinct !DILocation(line: 0, scope: !1292, inlinedAt: !23155)
!23157 = distinct !DILocation(line: 0, scope: !1285, inlinedAt: !23145)
!23158 = distinct !{!23158, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128"}
!23159 = distinct !{!23159, !23158, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 1"}
!23160 = distinct !DILocation(line: 332, column: 47, scope: !22893)
!23161 = distinct !DILocation(line: 592, column: 56, scope: !1290, inlinedAt: !23160)
!23162 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23161)
!23163 = distinct !DILocation(line: 590, column: 54, scope: !1287, inlinedAt: !23160)
!23164 = distinct !DILocation(line: 709, column: 21, scope: !1285, inlinedAt: !23163)
!23165 = distinct !DILocation(line: 0, scope: !1289, inlinedAt: !23160)
!23166 = distinct !DILocation(line: 589, column: 29, scope: !1288, inlinedAt: !23160)
!23167 = distinct !DILocation(line: 590, column: 29, scope: !1287, inlinedAt: !23160)
!23168 = distinct !DILocation(line: 590, column: 35, scope: !1287, inlinedAt: !23160)
!23169 = distinct !DILocation(line: 0, scope: !1291, inlinedAt: !23168)
!23170 = distinct !DILocation(line: 591, column: 30, scope: !1286, inlinedAt: !23160)
!23171 = distinct !{!23171, !23158, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_u128: argument 0"}
!23172 = distinct !DILocation(line: 592, column: 30, scope: !1290, inlinedAt: !23160)
!23173 = distinct !DILocation(line: 592, column: 36, scope: !1290, inlinedAt: !23160)
!23174 = distinct !DILocation(line: 0, scope: !1292, inlinedAt: !23173)
!23175 = distinct !DILocation(line: 0, scope: !1285, inlinedAt: !23163)
!23176 = distinct !{!23176, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!23177 = distinct !{!23177, !23176, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!23178 = distinct !DILocation(line: 340, column: 43, scope: !22893)
!23179 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !23178)
!23180 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !23178)
!23181 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !23178)
!23182 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !23178)
!23183 = distinct !{!23183, !23176, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!23184 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !23178)
!23185 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !23184)
!23186 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !23178)
!23187 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs1h_NtNtCsf3Ta7LF998c_4core3cmp5implsnNtB8_3Ord3cmp", scope: !5203, file: !4901, line: 2347, type: !6236, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23648)
!23188 = distinct !{!23188, i1 true, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128"}
!23189 = distinct !{!23189, !23188, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 1"}
!23190 = distinct !DILocation(line: 340, column: 65, scope: !22893)
!23191 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !23190)
!23192 = distinct !DILocation(line: 578, column: 29, scope: !1224, inlinedAt: !23190)
!23193 = distinct !DILocation(line: 579, column: 29, scope: !1223, inlinedAt: !23190)
!23194 = distinct !DILocation(line: 580, column: 30, scope: !1222, inlinedAt: !23190)
!23195 = distinct !{!23195, !23188, !"_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7as_i128: argument 0"}
!23196 = distinct !DILocation(line: 580, column: 36, scope: !1222, inlinedAt: !23190)
!23197 = distinct !DILocation(line: 0, scope: !1230, inlinedAt: !23196)
!23198 = distinct !DILocation(line: 581, column: 30, scope: !1221, inlinedAt: !23190)
!23199 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs15_NtNtCsf3Ta7LF998c_4core3cmp5implsoNtB8_3Ord3cmp", scope: !6240, file: !4901, line: 2347, type: !6242, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23657)
!23200 = !DINamespace(name: "{impl#7}", scope: !1315)
!23201 = !{!1257, !2450, !2450}
!23202 = !DISubroutineType(types: !23201)
!23203 = !DILocalVariable(name: "self", arg: 1, scope: !22893, file: !1885, line: 307, type: !2450)
!23204 = !DILocalVariable(name: "other", arg: 2, scope: !22893, file: !1885, line: 307, type: !2450)
!23205 = !DILocalVariable(name: "v", scope: !22892, file: !1885, line: 312, type: !1966, align: 64)
!23206 = !DILocalVariable(name: "v2", scope: !22892, file: !1885, line: 312, type: !1966, align: 64)
!23207 = !DILocalVariable(name: "v", scope: !22891, file: !1885, line: 313, type: !1821, align: 64)
!23208 = !DILocalVariable(name: "v2", scope: !22891, file: !1885, line: 313, type: !1821, align: 64)
!23209 = !DILocalVariable(name: "v", scope: !22890, file: !1885, line: 314, type: !1560, align: 64)
!23210 = !DILocalVariable(name: "v2", scope: !22890, file: !1885, line: 314, type: !1560, align: 64)
!23211 = !DILocalVariable(name: "v", scope: !22889, file: !1885, line: 315, type: !1827, align: 64)
!23212 = !DILocalVariable(name: "v2", scope: !22889, file: !1885, line: 315, type: !1827, align: 64)
!23213 = !DILocalVariable(name: "a", scope: !22888, file: !1885, line: 317, type: !1845, align: 64)
!23214 = !DILocalVariable(name: "b", scope: !22888, file: !1885, line: 317, type: !1845, align: 64)
!23215 = !DILocalVariable(name: "ord", scope: !22887, file: !1885, line: 318, type: !1497, align: 8)
!23216 = !DILocalVariable(name: "v", scope: !22886, file: !1885, line: 327, type: !1845, align: 64)
!23217 = !DILocalVariable(name: "v", scope: !22885, file: !1885, line: 328, type: !1845, align: 64)
!23218 = !DILocalVariable(name: "a", scope: !22884, file: !1885, line: 334, type: !1750, align: 128)
!23219 = !DILocalVariable(name: "b", scope: !22884, file: !1885, line: 334, type: !1750, align: 128)
!23220 = !DILocalVariable(name: "residual", scope: !22883, file: !1885, line: 340, type: !353, align: 8)
!23221 = !DILocalVariable(name: "val", scope: !22882, file: !1885, line: 340, type: !1746, align: 128)
!23222 = !DILocalVariable(name: "residual", scope: !22881, file: !1885, line: 340, type: !353, align: 8)
!23223 = !DILocalVariable(name: "val", scope: !22880, file: !1885, line: 340, type: !1746, align: 128)
!23224 = !{!23203, !23204, !23205, !23206, !23207, !23208, !23209, !23210, !23211, !23212, !23213, !23214, !23215, !23216, !23217, !23218, !23219, !23220, !23221, !23222, !23223}
!23225 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&isize", baseType: !3594, size: 64, align: 64, dwarfAddressSpace: 0)
!23226 = !DILocalVariable(name: "self", arg: 1, scope: !22894, file: !4901, line: 2347, type: !23225)
!23227 = !DINamespace(name: "{impl#71}", scope: !4902)
!23228 = !{!1497, !23225, !23225}
!23229 = !DISubroutineType(types: !23228)
!23230 = !DILocalVariable(name: "other", scope: !22894, file: !4901, line: 2347, type: !23225, align: 64)
!23231 = !{!23226, !23230}
!23232 = !DILexicalBlockFile(scope: !22908, file: !4896, discriminator: 2)
!23233 = !DILocation(line: 315, column: 75, scope: !22889)
!23234 = !DILocation(line: 49, column: 19, scope: !22895, inlinedAt: !23233)
!23235 = !DILocation(line: 21, column: 25, scope: !22896, inlinedAt: !23234)
!23236 = !DILocation(line: 40, column: 9, scope: !22897, inlinedAt: !23235)
!23237 = !DILocation(line: 343, column: 15, scope: !23232, inlinedAt: !23236)
!23238 = !DILocation(line: 2347, column: 24, scope: !22894, inlinedAt: !23237)
!23239 = !DINamespace(name: "{impl#3}", scope: !5501)
!23240 = !{!1257, !48, !48}
!23241 = !DISubroutineType(types: !23240)
!23242 = !DILocalVariable(name: "self", arg: 1, scope: !22895, file: !5500, line: 48, type: !48)
!23243 = !DILocalVariable(name: "other", arg: 2, scope: !22895, file: !5500, line: 48, type: !48)
!23244 = !{!23242, !23243}
!23245 = !DINamespace(name: "{impl#0}", scope: !5501)
!23246 = !{!1497, !48, !48}
!23247 = !DISubroutineType(types: !23246)
!23248 = !DILocalVariable(name: "self", arg: 1, scope: !22896, file: !5500, line: 20, type: !48)
!23249 = !DILocalVariable(name: "other", arg: 2, scope: !22896, file: !5500, line: 20, type: !48)
!23250 = !{!23248, !23249}
!23251 = !DINamespace(name: "{impl#2}", scope: !4897)
!23252 = !{!1497, !383, !383}
!23253 = !DISubroutineType(types: !23252)
!23254 = !DILocalVariable(name: "self", arg: 1, scope: !22897, file: !4896, line: 39, type: !383)
!23255 = !DILocalVariable(name: "other", arg: 2, scope: !22897, file: !4896, line: 39, type: !383)
!23256 = !{!23254, !23255}
!23257 = !DINamespace(name: "{impl#15}", scope: !4897)
!23258 = !DILocalVariable(name: "left", arg: 1, scope: !22903, file: !4896, line: 325, type: !878)
!23259 = !DILocalVariable(name: "right", arg: 2, scope: !22903, file: !4896, line: 325, type: !878)
!23260 = !DILocalVariable(name: "diff", scope: !22902, file: !4896, line: 328, type: !3594, align: 64)
!23261 = !DILocalVariable(name: "len", scope: !22901, file: !4896, line: 331, type: !1555, align: 64)
!23262 = !DILocalVariable(name: "left", scope: !22900, file: !4896, line: 332, type: !1599, align: 64)
!23263 = !DILocalVariable(name: "right", scope: !22899, file: !4896, line: 333, type: !1599, align: 64)
!23264 = !DILocalVariable(name: "order", scope: !22898, file: !4896, line: 339, type: !3594, align: 64)
!23265 = !DILocalVariable(name: "diff", scope: !22904, file: !4896, line: 328, type: !3594, align: 64)
!23266 = !DILocalVariable(name: "len", scope: !22905, file: !4896, line: 331, type: !1555, align: 64)
!23267 = !DILocalVariable(name: "left", scope: !22906, file: !4896, line: 332, type: !1599, align: 64)
!23268 = !DILocalVariable(name: "right", scope: !22907, file: !4896, line: 333, type: !1599, align: 64)
!23269 = !DILocalVariable(name: "order", scope: !22908, file: !4896, line: 339, type: !3594, align: 64)
!23270 = !{!23258, !23259, !23260, !23261, !23262, !23263, !23264, !23265, !23266, !23267, !23268, !23269}
!23271 = !{!4912}
!23272 = !DILocation(line: 314, column: 64, scope: !22890)
!23273 = !DILocation(line: 3790, column: 18, scope: !22909, inlinedAt: !23272)
!23274 = !DILocation(line: 4378, column: 9, scope: !22910, inlinedAt: !23273)
!23275 = !DILocation(line: 61, column: 9, scope: !22911, inlinedAt: !23274)
!23276 = !DILocation(line: 253, column: 14, scope: !22912, inlinedAt: !23275)
!23277 = !DILocation(line: 343, column: 15, scope: !22898, inlinedAt: !23276)
!23278 = !DILocation(line: 2347, column: 24, scope: !22894, inlinedAt: !23277)
!23279 = !DINamespace(name: "{impl#56}", scope: !1562)
!23280 = !{!1257, !1560, !1560}
!23281 = !DISubroutineType(types: !23280)
!23282 = !DILocalVariable(name: "self", arg: 1, scope: !22909, file: !2894, line: 3789, type: !1560)
!23283 = !DILocalVariable(name: "other", arg: 2, scope: !22909, file: !2894, line: 3789, type: !1560)
!23284 = !{!23282, !23283}
!23285 = !DINamespace(name: "{impl#24}", scope: !1576)
!23286 = !{!1257, !3201, !3201}
!23287 = !DISubroutineType(types: !23286)
!23288 = !DILocalVariable(name: "self", arg: 1, scope: !22910, file: !2953, line: 4377, type: !3201)
!23289 = !DILocalVariable(name: "other", arg: 2, scope: !22910, file: !2953, line: 4377, type: !3201)
!23290 = !{!23288, !23289}
!23291 = !{!1584, !6245, !6246}
!23292 = !DINamespace(name: "{impl#3}", scope: !4897)
!23293 = !{!1257, !383, !383}
!23294 = !DISubroutineType(types: !23293)
!23295 = !DILocalVariable(name: "self", arg: 1, scope: !22911, file: !4896, line: 60, type: !878)
!23296 = !DILocalVariable(name: "other", arg: 2, scope: !22911, file: !4896, line: 60, type: !878)
!23297 = !{!23295, !23296}
!23298 = !DINamespace(name: "{impl#8}", scope: !4897)
!23299 = !DILocalVariable(name: "left", arg: 1, scope: !22912, file: !4896, line: 252, type: !878)
!23300 = !DILocalVariable(name: "right", arg: 2, scope: !22912, file: !4896, line: 252, type: !878)
!23301 = !{!23299, !23300}
!23302 = !DILocation(line: 0, scope: !22893)
!23303 = !DILocation(line: 0, scope: !22894, inlinedAt: !23277)
!23304 = !DILocation(line: 0, scope: !22894, inlinedAt: !23237)
!23305 = !DILocation(line: 312, column: 31, scope: !22892)
!23306 = !DILocalVariable(name: "self", arg: 1, scope: !22913, file: !4901, line: 2292, type: !1966)
!23307 = !DINamespace(name: "{impl#2}", scope: !4902)
!23308 = !{!1257, !1966, !1966}
!23309 = !DISubroutineType(types: !23308)
!23310 = !DILocalVariable(name: "other", arg: 2, scope: !22913, file: !4901, line: 2292, type: !1966)
!23311 = !{!23306, !23310}
!23312 = !DILocation(line: 312, column: 62, scope: !22892)
!23313 = !DILocation(line: 2292, column: 24, scope: !22913, inlinedAt: !23312)
!23314 = !DILocalVariable(name: "self", arg: 1, scope: !22914, file: !4901, line: 2389, type: !1966)
!23315 = !DINamespace(name: "{impl#4}", scope: !4902)
!23316 = !{!1497, !1966, !1966}
!23317 = !DISubroutineType(types: !23316)
!23318 = !DILocalVariable(name: "other", arg: 2, scope: !22914, file: !4901, line: 2389, type: !1966)
!23319 = !{!23314, !23318}
!23320 = !DILocation(line: 2293, column: 23, scope: !22913, inlinedAt: !23312)
!23321 = !DILocation(line: 2389, column: 16, scope: !22914, inlinedAt: !23320)
!23322 = !DILocation(line: 312, column: 52, scope: !22892)
!23323 = !DILocation(line: 2292, column: 31, scope: !22913, inlinedAt: !23312)
!23324 = !DILocation(line: 2389, column: 23, scope: !22914, inlinedAt: !23320)
!23325 = !DILocation(line: 0, scope: !22888)
!23326 = !DILocalVariable(name: "self", arg: 1, scope: !22915, file: !4901, line: 2265, type: !1845)
!23327 = !DINamespace(name: "{impl#54}", scope: !4902)
!23328 = !{!1257, !1845, !1845}
!23329 = !DISubroutineType(types: !23328)
!23330 = !DILocalVariable(name: "other", arg: 2, scope: !22915, file: !4901, line: 2265, type: !1845)
!23331 = !{!23326, !23330}
!23332 = !DILocation(line: 319, column: 22, scope: !22888)
!23333 = !DILocation(line: 0, scope: !22915, inlinedAt: !23332)
!23334 = !DILocalVariable(name: "a", scope: !22917, file: !1885, line: 317, type: !1754, align: 64)
!23335 = !DINamespace(name: "partial_cmp", scope: !23200)
end_hunk_4
begin_hunk_5_@llvm.smin.i128
!23422 = !DILocation(line: 3895, column: 14, scope: !23421, inlinedAt: !23417)
!23423 = !DILocation(line: 1856, column: 27, scope: !23018, inlinedAt: !23422)
!23424 = !DILocalVariable(name: "self", arg: 1, scope: !23019, file: !2953, line: 1974, type: !2924)
!23425 = !{!23424}
!23426 = !DILexicalBlockFile(scope: !23018, file: !2953, discriminator: 4)
!23427 = !DILocation(line: 1873, column: 76, scope: !23426, inlinedAt: !23422)
!23428 = !DILocation(line: 1974, column: 25, scope: !23019, inlinedAt: !23427)
!23429 = !DILexicalBlockFile(scope: !23014, file: !2894, discriminator: 6)
!23430 = !DILocation(line: 2238, column: 27, scope: !23429, inlinedAt: !23402)
!23431 = !DILocation(line: 4377, column: 27, scope: !23016, inlinedAt: !23412)
!23432 = !DILocation(line: 4378, column: 43, scope: !23416, inlinedAt: !23412)
!23433 = !DILocation(line: 3894, column: 14, scope: !23017, inlinedAt: !23432)
!23434 = !DILexicalBlockFile(scope: !23017, file: !2953, discriminator: 6)
!23435 = !DILocation(line: 3895, column: 14, scope: !23434, inlinedAt: !23432)
!23436 = !DILocation(line: 1856, column: 27, scope: !23018, inlinedAt: !23435)
!23437 = !DILexicalBlockFile(scope: !23018, file: !2953, discriminator: 6)
!23438 = !DILocation(line: 1873, column: 76, scope: !23437, inlinedAt: !23435)
!23439 = !DILocation(line: 1974, column: 25, scope: !23019, inlinedAt: !23438)
!23440 = !DILexicalBlockFile(scope: !23022, file: !2965, discriminator: 4)
!23441 = !DILexicalBlockFile(scope: !23021, file: !2965, discriminator: 4)
!23442 = !DILexicalBlockFile(scope: !23019, file: !2953, discriminator: 4)
!23443 = !DILocation(line: 1977, column: 18, scope: !23442, inlinedAt: !23427)
!23444 = !DILocation(line: 305, column: 20, scope: !23441, inlinedAt: !23443)
!23445 = !DILocation(line: 622, column: 14, scope: !23440, inlinedAt: !23444)
!23446 = !DILocalVariable(name: "self", arg: 1, scope: !23023, file: !4896, line: 60, type: !404)
!23447 = !{!1257, !403, !403}
!23448 = !DISubroutineType(types: !23447)
!23449 = !DILocalVariable(name: "other", arg: 2, scope: !23023, file: !4896, line: 60, type: !404)
!23450 = !{!23446, !23449}
!23451 = !DILocation(line: 4378, column: 9, scope: !23416, inlinedAt: !23412)
!23452 = !DILocation(line: 0, scope: !23023, inlinedAt: !23451)
!23453 = !DILocalVariable(name: "left", arg: 1, scope: !23029, file: !4896, line: 183, type: !404)
!23454 = !DINamespace(name: "{impl#6}", scope: !4897)
!23455 = !DILocalVariable(name: "right", arg: 2, scope: !23029, file: !4896, line: 183, type: !404)
!23456 = !DILocalVariable(name: "elem_chain", scope: !23028, file: !4896, line: 184, type: !23027, align: 8)
!23457 = !DILocalVariable(name: "len_chain", scope: !23026, file: !4896, line: 189, type: !23025, align: 8)
!23458 = !DILocalVariable(name: "b", scope: !23024, file: !4896, line: 191, type: !1257, align: 8)
!23459 = !{!23453, !23455, !23456, !23457, !23458}
!23460 = !DINamespace(name: "partial_compare", scope: !23454)
!23461 = !{!6248}
!23462 = !DILexicalBlockFile(scope: !23023, file: !4896, discriminator: 2)
!23463 = !DILocation(line: 61, column: 9, scope: !23462, inlinedAt: !23451)
!23464 = !DILocation(line: 0, scope: !23029, inlinedAt: !23463)
!23465 = !DILexicalBlockFile(scope: !23022, file: !2965, discriminator: 6)
!23466 = !DILexicalBlockFile(scope: !23021, file: !2965, discriminator: 6)
!23467 = !DILexicalBlockFile(scope: !23019, file: !2953, discriminator: 6)
!23468 = !DILocation(line: 1977, column: 18, scope: !23467, inlinedAt: !23438)
!23469 = !DILocation(line: 305, column: 20, scope: !23466, inlinedAt: !23468)
!23470 = !DILocation(line: 622, column: 14, scope: !23465, inlinedAt: !23469)
!23471 = !DILocalVariable(name: "left", arg: 1, scope: !23040, file: !4896, line: 215, type: !403)
!23472 = !{!23033, !403, !403, !23027, !23025}
!23473 = !DISubroutineType(types: !23472)
!23474 = !{!23032}
!23475 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !23032, file: !1313, baseType: !23031, size: 8, align: 8)
!23476 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !23032, file: !1313, baseType: !23030, size: 8, align: 8)
!23477 = !{!23475, !23476}
!23478 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23030, file: !1313, baseType: !1257, size: 8, align: 8, flags: DIFlagPublic)
!23479 = !{!23478}
!23480 = !DITemplateTypeParameter(name: "B", type: !1257)
!23481 = !{!23480, !4297}
!23482 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23031, file: !1313, baseType: !2701, align: 8, flags: DIFlagPublic)
!23483 = !{!23482}
!23484 = !DILocalVariable(name: "right", arg: 2, scope: !23040, file: !4896, line: 216, type: !403)
!23485 = !DILocalVariable(name: "elem_chain", arg: 3, scope: !23040, file: !4896, line: 217, type: !23027)
!23486 = !DILocalVariable(name: "len_chain", arg: 4, scope: !23040, file: !4896, line: 218, type: !23025)
!23487 = !DILocalVariable(name: "l", scope: !23039, file: !4896, line: 220, type: !1555, align: 64)
!23488 = !DILocalVariable(name: "lhs", scope: !23038, file: !4896, line: 224, type: !404, align: 64)
!23489 = !DILocalVariable(name: "rhs", scope: !23037, file: !4896, line: 225, type: !404, align: 64)
!23490 = !DILocalVariable(name: "i", scope: !23036, file: !4896, line: 228, type: !1555, align: 64)
!23491 = !DILocalVariable(name: "residual", scope: !23035, file: !4896, line: 230, type: !23033, align: 8)
!23492 = !DILocalVariable(name: "val", scope: !23034, file: !4896, line: 230, type: !1552, align: 8)
!23493 = !{!23471, !23484, !23485, !23486, !23487, !23488, !23489, !23490, !23491, !23492}
!23494 = !DITemplateTypeParameter(name: "impl [const] Fn(&'l A, &'r A) -> ControlFlow<B> + [const] Destruct", type: !23027)
!23495 = !DITemplateTypeParameter(name: "impl for<'a> [const] FnOnce(&'a usize, &'a usize) -> ControlFlow<B, C> + [const] Destruct", type: !23025)
!23496 = !{!6248, !23480, !4297, !23494, !23495}
!23497 = !DILocalVariable(name: "v1", arg: 1, scope: !23043, file: !4901, line: 1666, type: !1555)
!23498 = !DILocalVariable(name: "v2", arg: 2, scope: !23043, file: !4901, line: 1666, type: !1555)
!23499 = !{!23497, !23498}
!23500 = !DILocalVariable(name: "self", arg: 1, scope: !23046, file: !4901, line: 2319, type: !1555)
!23501 = !DILocalVariable(name: "other", arg: 2, scope: !23046, file: !4901, line: 2319, type: !1555)
!23502 = !{!23500, !23501}
!23503 = !DILocalVariable(arg: 2, scope: !23054, file: !4679, line: 250, type: !23053)
!23504 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23053, file: !1313, baseType: !3715, size: 64, align: 64)
!23505 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !23053, file: !1313, baseType: !3715, size: 64, align: 64, offset: 64)
!23506 = !{!23504, !23505}
!23507 = !{!23033, !23025, !3715, !3715}
!23508 = !DISubroutineType(cc: DW_CC_nocall, types: !23507)
!23509 = !DILocalVariable(arg: 1, scope: !23054, file: !4679, line: 250, type: !23025)
!23510 = !{!23509, !23503}
!23511 = !DITemplateTypeParameter(name: "Self", type: !23025)
!23512 = !DITemplateTypeParameter(name: "Args", type: !23053)
!23513 = !{!23511, !23512}
!23514 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::cmp::{impl#6}::partial_compare::{closure_env#1}<tera::value::Value>", baseType: !23025, size: 64, align: 64, dwarfAddressSpace: 0)
!23515 = !DILocalVariable(arg: 1, scope: !23058, file: !4896, line: 189, type: !23514)
!23516 = !{!23033, !23514, !3715, !3715}
!23517 = !DISubroutineType(cc: DW_CC_nocall, types: !23516)
!23518 = !DILocalVariable(name: "a", arg: 2, scope: !23058, file: !4896, line: 189, type: !3715)
!23519 = !DILocalVariable(name: "b", arg: 3, scope: !23058, file: !4896, line: 189, type: !3715)
!23520 = !{!23518, !23519, !23515}
!23521 = !DILocalVariable(name: "self", arg: 1, scope: !23061, file: !4901, line: 2336, type: !3715)
!23522 = !{!1257, !3715, !3715}
!23523 = !DISubroutineType(types: !23522)
!23524 = !DILocalVariable(name: "other", arg: 2, scope: !23061, file: !4901, line: 2336, type: !3715)
!23525 = !{!23521, !23524}
!23526 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::slice::cmp::{impl#6}::partial_compare::{closure_env#0}<tera::value::Value>", baseType: !23027, size: 64, align: 64, dwarfAddressSpace: 0)
!23527 = !DILocalVariable(arg: 1, scope: !23069, file: !4896, line: 184, type: !23526)
!23528 = !{!23067, !23526, !2450, !2450}
!23529 = !DISubroutineType(types: !23528)
!23530 = !{!23066}
!23531 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !23066, file: !1313, baseType: !23065, size: 8, align: 8, extraData: i8 2)
!23532 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !23066, file: !1313, baseType: !23064, size: 8, align: 8)
!23533 = !{!23531, !23532}
!23534 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23064, file: !1313, baseType: !1257, size: 8, align: 8, flags: DIFlagPublic)
!23535 = !{!23534}
!23536 = !{!23480, !2943}
!23537 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23065, file: !1313, baseType: !1552, align: 8, flags: DIFlagPublic)
!23538 = !{!23537}
!23539 = !DIDerivedType(tag: DW_TAG_member, scope: !23067, file: !1313, baseType: !1316, size: 8, align: 8, flags: DIFlagArtificial)
!23540 = !DILocalVariable(name: "a", arg: 2, scope: !23069, file: !4896, line: 184, type: !2450)
!23541 = !DILocalVariable(name: "b", arg: 3, scope: !23069, file: !4896, line: 184, type: !2450)
!23542 = !DILocalVariable(name: "non_eq", scope: !23068, file: !4896, line: 186, type: !1257, align: 8)
!23543 = !{!23540, !23541, !23542, !23527}
!23544 = !DILocalVariable(name: "self", arg: 1, scope: !23079, file: !6249, line: 115, type: !23067)
!23545 = !DINamespace(name: "{impl#0}", scope: !2935)
!23546 = !{!23076, !23067}
!23547 = !DISubroutineType(types: !23546)
!23548 = !{!23075}
!23549 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !23075, file: !1313, baseType: !23074, size: 8, align: 8, extraData: i8 2)
!23550 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !23075, file: !1313, baseType: !23073, size: 8, align: 8)
!23551 = !{!23549, !23550}
!23552 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23073, file: !1313, baseType: !23033, size: 8, align: 8, flags: DIFlagPublic)
!23553 = !{!23552}
!23554 = !DITemplateTypeParameter(name: "B", type: !23033)
!23555 = !{!23554, !2943}
!23556 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23074, file: !1313, baseType: !1552, align: 8, flags: DIFlagPublic)
!23557 = !{!23556}
!23558 = !DIDerivedType(tag: DW_TAG_member, scope: !23076, file: !1313, baseType: !1316, size: 8, align: 8, flags: DIFlagArtificial)
!23559 = !DILocalVariable(name: "c", scope: !23078, file: !6249, line: 117, type: !1552, align: 8)
!23560 = !DILocalVariable(name: "b", scope: !23077, file: !6249, line: 118, type: !1257, align: 8)
!23561 = !{!23544, !23559, !23560}
!23562 = !DILocation(line: 314, column: 32, scope: !22890)
!23563 = !DILocation(line: 3789, column: 20, scope: !22909, inlinedAt: !23272)
!23564 = !DILocalVariable(name: "self", arg: 1, scope: !23082, file: !2894, line: 2572, type: !1560)
!23565 = !{!23564}
!23566 = !DILocation(line: 3790, column: 9, scope: !22909, inlinedAt: !23272)
!23567 = !DILocation(line: 2572, column: 14, scope: !23082, inlinedAt: !23566)
!23568 = !DILocalVariable(name: "self", arg: 1, scope: !23083, file: !2894, line: 2232, type: !1560)
!23569 = !{!23568}
!23570 = !DILocation(line: 2573, column: 15, scope: !23082, inlinedAt: !23566)
!23571 = !DILocation(line: 2232, column: 14, scope: !23083, inlinedAt: !23570)
!23572 = !DILocation(line: 314, column: 54, scope: !22890)
!23573 = !DILocation(line: 3789, column: 27, scope: !22909, inlinedAt: !23272)
!23574 = !DILocation(line: 3790, column: 31, scope: !22909, inlinedAt: !23272)
!23575 = !DILocation(line: 2572, column: 14, scope: !23082, inlinedAt: !23574)
!23576 = !DILexicalBlockFile(scope: !23082, file: !2894, discriminator: 2)
!23577 = !DILocation(line: 2573, column: 15, scope: !23576, inlinedAt: !23574)
!23578 = !DILocation(line: 2232, column: 14, scope: !23083, inlinedAt: !23577)
!23579 = !DILocation(line: 2238, column: 27, scope: !23083, inlinedAt: !23570)
!23580 = !DILocation(line: 4377, column: 20, scope: !22910, inlinedAt: !23273)
!23581 = !DILocalVariable(name: "self", arg: 1, scope: !23085, file: !2953, line: 3894, type: !3201)
!23582 = !{!23581}
!23583 = !DILocation(line: 4378, column: 34, scope: !22910, inlinedAt: !23273)
!23584 = !DILocation(line: 3894, column: 14, scope: !23085, inlinedAt: !23583)
!23585 = !DILocalVariable(name: "self", arg: 1, scope: !23086, file: !2953, line: 1856, type: !3201)
!23586 = !{!23585}
!23587 = !DILocation(line: 3895, column: 14, scope: !23085, inlinedAt: !23583)
!23588 = !DILocation(line: 1856, column: 27, scope: !23086, inlinedAt: !23587)
!23589 = !DILocalVariable(name: "self", arg: 1, scope: !23087, file: !2953, line: 1974, type: !3201)
!23590 = !{!23589}
!23591 = !DILocation(line: 1873, column: 76, scope: !23086, inlinedAt: !23587)
!23592 = !DILocation(line: 1974, column: 25, scope: !23087, inlinedAt: !23591)
!23593 = !DILexicalBlockFile(scope: !23083, file: !2894, discriminator: 2)
!23594 = !DILocation(line: 2238, column: 27, scope: !23593, inlinedAt: !23577)
!23595 = !DILocation(line: 4377, column: 27, scope: !22910, inlinedAt: !23273)
!23596 = !DILocation(line: 4378, column: 43, scope: !22910, inlinedAt: !23273)
!23597 = !DILocation(line: 3894, column: 14, scope: !23085, inlinedAt: !23596)
!23598 = !DILexicalBlockFile(scope: !23085, file: !2953, discriminator: 2)
!23599 = !DILocation(line: 3895, column: 14, scope: !23598, inlinedAt: !23596)
!23600 = !DILocation(line: 1856, column: 27, scope: !23086, inlinedAt: !23599)
!23601 = !DILexicalBlockFile(scope: !23086, file: !2953, discriminator: 2)
!23602 = !DILocation(line: 1873, column: 76, scope: !23601, inlinedAt: !23599)
!23603 = !DILocation(line: 1974, column: 25, scope: !23087, inlinedAt: !23602)
!23604 = !DILocation(line: 1977, column: 18, scope: !23087, inlinedAt: !23591)
!23605 = !DILocation(line: 305, column: 20, scope: !23089, inlinedAt: !23604)
!23606 = !DILocation(line: 622, column: 14, scope: !23090, inlinedAt: !23605)
!23607 = !DILocation(line: 0, scope: !22901, inlinedAt: !23276)
!23608 = !DILocation(line: 0, scope: !22911, inlinedAt: !23274)
!23609 = !DILocation(line: 0, scope: !22912, inlinedAt: !23275)
!23610 = !DILocation(line: 0, scope: !22903, inlinedAt: !23276)
!23611 = !DILexicalBlockFile(scope: !23090, file: !2965, discriminator: 2)
!23612 = !DILexicalBlockFile(scope: !23089, file: !2965, discriminator: 2)
!23613 = !DILexicalBlockFile(scope: !23087, file: !2953, discriminator: 2)
!23614 = !DILocation(line: 1977, column: 18, scope: !23613, inlinedAt: !23602)
!23615 = !DILocation(line: 305, column: 20, scope: !23612, inlinedAt: !23614)
!23616 = !DILocation(line: 622, column: 14, scope: !23611, inlinedAt: !23615)
!23617 = !DILocation(line: 0, scope: !22902, inlinedAt: !23276)
!23618 = !DILocation(line: 0, scope: !22900, inlinedAt: !23276)
!23619 = !DILocation(line: 0, scope: !22899, inlinedAt: !23276)
!23620 = !DILocation(line: 0, scope: !22898, inlinedAt: !23276)
!23621 = !DILocation(line: 328, column: 33, scope: !22885)
!23622 = !{!23092}
!23623 = !{!23114}
!23624 = !{!23114, !23092}
!23625 = !{!23120, !23114, !23092}
!23626 = !DILocalVariable(name: "self", arg: 1, scope: !23139, file: !3710, line: 1160, type: !1257)
!23627 = !{!1497, !1497}
!23628 = !DISubroutineType(types: !23627)
!23629 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(core::cmp::Ordering) -> core::cmp::Ordering", baseType: !23628, align: 8, dwarfAddressSpace: 0)
!23630 = !{!1257, !1257, !23629}
!23631 = !DISubroutineType(types: !23630)
!23632 = !DITemplateTypeParameter(name: "F", type: !23629)
!23633 = !{!6168, !6225, !23632}
!23634 = !DISubprogram(name: "map<core::cmp::Ordering, core::cmp::Ordering, fn(core::cmp::Ordering) -> core::cmp::Ordering>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE3mapBI_NvMBK_BI_7reverseECs5yXxDE1DkoT_4tera", scope: !1257, file: !3710, line: 1160, type: !23631, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !23633)
!23635 = !DILocalVariable(name: "f", scope: !23139, file: !3710, line: 1160, type: !23629, align: 8)
!23636 = !DILocalVariable(name: "x", scope: !23138, file: !3710, line: 1165, type: !1497, align: 8)
!23637 = !{!23626, !23635, !23636}
!23638 = !DILocation(line: 328, column: 68, scope: !22885)
!23639 = !DILocation(line: 0, scope: !23139, inlinedAt: !23638)
!23640 = !{!23141}
!23641 = !{!23153, !23141}
!23642 = !{!23159}
!23643 = !{!23171, !23159}
!23644 = !{!23177}
!23645 = !{!23183, !23177}
!23646 = !DILocalVariable(name: "self", arg: 1, scope: !23187, file: !4901, line: 2347, type: !2640)
!23647 = !DILocalVariable(name: "other", arg: 2, scope: !23187, file: !4901, line: 2347, type: !2640)
!23648 = !{!23646, !23647}
!23649 = !DILocation(line: 340, column: 54, scope: !22893)
!23650 = !DILocation(line: 2347, column: 24, scope: !23187, inlinedAt: !23649)
!23651 = !{!23189}
!23652 = !{!23195, !23189}
!23653 = !DILocation(line: 2347, column: 31, scope: !23187, inlinedAt: !23649)
!23654 = !DILocation(line: 0, scope: !22884)
!23655 = !DILocalVariable(name: "self", arg: 1, scope: !23199, file: !4901, line: 2347, type: !2643)
!23656 = !DILocalVariable(name: "other", arg: 2, scope: !23199, file: !4901, line: 2347, type: !2643)
!23657 = !{!23655, !23656}
!23658 = !DILocation(line: 334, column: 46, scope: !22884)
!23659 = !DILocation(line: 2347, column: 24, scope: !23199, inlinedAt: !23658)
!23660 = !DILocation(line: 2347, column: 31, scope: !23199, inlinedAt: !23658)
!23661 = !DILocation(line: 308, column: 15, scope: !22893)
!23662 = !DILocation(line: 308, column: 9, scope: !22893)
!23663 = !DILocation(line: 344, column: 6, scope: !22893)
!23664 = !DILocation(line: 2393, column: 20, scope: !22914, inlinedAt: !23320)
!23665 = !DILocation(line: 2393, column: 36, scope: !22914, inlinedAt: !23320)
!23666 = !DILocation(line: 2393, column: 19, scope: !22914, inlinedAt: !23320)
!23667 = !DILocation(line: 312, column: 76, scope: !22893)
!23668 = !DILocation(line: 317, column: 50, scope: !22893)
!23669 = !DILocation(line: 2266, column: 28, scope: !22915, inlinedAt: !23332)
!23670 = !DILocation(line: 2266, column: 37, scope: !22915, inlinedAt: !23332)
!23671 = !DILocation(line: 2266, column: 45, scope: !22915, inlinedAt: !23332)
!23672 = !DILocation(line: 2266, column: 21, scope: !22915, inlinedAt: !23332)
!23673 = !DILocation(line: 327, column: 58, scope: !22886)
!23674 = !DILocation(line: 327, column: 40, scope: !22886)
!23675 = !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !22922)
!23676 = !DILocation(line: 577, column: 15, scope: !1225, inlinedAt: !22944)
!23677 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !22944)
!23678 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !22944)
!23679 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !22944)
!23680 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !22944)
!23681 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !22944)
!23682 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !22944)
!23683 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !22950)
!23684 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !22936)
!23685 = !DILocation(line: 256, column: 8, scope: !1268, inlinedAt: !22934)
!23686 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !22944)
!23687 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !22944)
!23688 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !22926)
!23689 = !DILocation(line: 238, column: 8, scope: !1262, inlinedAt: !22924)
!23690 = !DILocation(line: 241, column: 8, scope: !1262, inlinedAt: !22924)
!23691 = !DILocation(line: 244, column: 8, scope: !1262, inlinedAt: !22924)
!23692 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !22930)
!23693 = !DILocation(line: 249, column: 11, scope: !1261, inlinedAt: !22924)
!23694 = !DILocation(line: 2348, column: 21, scope: !1277, inlinedAt: !22960)
!23695 = !DILocation(line: 249, column: 5, scope: !1261, inlinedAt: !22924)
!23696 = !DILocation(line: 259, column: 8, scope: !1268, inlinedAt: !22934)
!23697 = !DILocation(line: 262, column: 8, scope: !1268, inlinedAt: !22934)
!23698 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !22940)
!23699 = !DILocation(line: 267, column: 11, scope: !1267, inlinedAt: !22934)
!23700 = !DILocation(line: 2348, column: 21, scope: !1278, inlinedAt: !22964)
!23701 = !DILocation(line: 267, column: 5, scope: !1267, inlinedAt: !22934)
!23702 = !DILocation(line: 667, column: 9, scope: !22967, inlinedAt: !23363)
!23703 = !DILocation(line: 667, column: 9, scope: !22967, inlinedAt: !23365)
!23704 = !DILocation(line: 320, column: 40, scope: !22917, inlinedAt: !23344)
!23705 = !DILocation(line: 315, column: 66, scope: !22889)
!23706 = !DILocation(line: 128, column: 15, scope: !378, inlinedAt: !22970)
!23707 = !DILocation(line: 128, column: 9, scope: !378, inlinedAt: !22970)
!23708 = !DILocation(line: 454, column: 20, scope: !397, inlinedAt: !22984)
!23709 = !DILocation(line: 2573, column: 9, scope: !394, inlinedAt: !22980)
!23710 = !DILocation(line: 133, column: 34, scope: !378, inlinedAt: !22970)
!23711 = !DILocation(line: 131, column: 64, scope: !377, inlinedAt: !22970)
!23712 = !DILocation(line: 1122, column: 16, scope: !393, inlinedAt: !22977)
!23713 = !DILocation(line: 129, column: 32, scope: !378, inlinedAt: !22970)
!23714 = !DILocation(line: 132, column: 13, scope: !378, inlinedAt: !22970)
!23715 = !DILocation(line: 413, column: 13, scope: !384, inlinedAt: !22975)
!23716 = !DILocation(line: 0, scope: !378, inlinedAt: !22970)
!23717 = !DILocation(line: 315, column: 90, scope: !22889)
!23718 = !DILocation(line: 128, column: 15, scope: !378, inlinedAt: !22992)
!23719 = !DILocation(line: 128, column: 9, scope: !378, inlinedAt: !22992)
!23720 = !DILocation(line: 454, column: 20, scope: !397, inlinedAt: !23006)
!23721 = !DILocation(line: 2573, column: 9, scope: !394, inlinedAt: !23002)
!23722 = !DILocation(line: 133, column: 34, scope: !378, inlinedAt: !22992)
!23723 = !DILocation(line: 131, column: 64, scope: !377, inlinedAt: !22992)
!23724 = !DILocation(line: 1122, column: 16, scope: !393, inlinedAt: !22999)
!23725 = !DILocation(line: 129, column: 32, scope: !378, inlinedAt: !22992)
!23726 = !DILocation(line: 132, column: 13, scope: !378, inlinedAt: !22992)
!23727 = !DILocation(line: 413, column: 13, scope: !384, inlinedAt: !22997)
!23728 = !DILocation(line: 0, scope: !378, inlinedAt: !22992)
!23729 = !DILocation(line: 328, column: 20, scope: !22903, inlinedAt: !23236)
!23730 = !DILocation(line: 331, column: 22, scope: !22904, inlinedAt: !23236)
!23731 = !DILocation(line: 339, column: 34, scope: !22907, inlinedAt: !23236)
!23732 = !DILocation(line: 340, column: 12, scope: !22908, inlinedAt: !23236)
!23733 = !DILocation(line: 2348, column: 21, scope: !22894, inlinedAt: !23237)
!23734 = !DILocation(line: 315, column: 98, scope: !22893)
!23735 = !DILocation(line: 454, column: 20, scope: !23015, inlinedAt: !23405)
!23736 = !DILocation(line: 454, column: 20, scope: !23015, inlinedAt: !23430)
!23737 = !DILocation(line: 627, column: 9, scope: !23020, inlinedAt: !23445)
!23738 = !DILocation(line: 1873, column: 86, scope: !23018, inlinedAt: !23422)
!23739 = !DILocation(line: 627, column: 9, scope: !23020, inlinedAt: !23470)
!23740 = !DILocation(line: 1873, column: 86, scope: !23018, inlinedAt: !23435)
!23741 = !DILocation(line: 2320, column: 17, scope: !23046, inlinedAt: !23047)
!23742 = !DILocation(line: 229, column: 11, scope: !23036, inlinedAt: !23041)
!23743 = !DILocation(line: 231, column: 9, scope: !23036, inlinedAt: !23041)
!23744 = !DILocation(line: 2337, column: 26, scope: !23061, inlinedAt: !23062)
!23745 = !DILocation(line: 235, column: 1, scope: !23040, inlinedAt: !23041)
!23746 = !DILocation(line: 230, column: 20, scope: !23036, inlinedAt: !23041)
!23747 = !DILocation(line: 230, column: 29, scope: !23036, inlinedAt: !23041)
!23748 = !DILocation(line: 184, column: 45, scope: !23069, inlinedAt: !23070)
!23749 = !DILocation(line: 184, column: 39, scope: !23069, inlinedAt: !23070)
!23750 = !DILocation(line: 116, column: 9, scope: !23079, inlinedAt: !23080)
!23751 = !DILocation(line: 454, column: 20, scope: !23084, inlinedAt: !23579)
!23752 = !DILocation(line: 454, column: 20, scope: !23084, inlinedAt: !23594)
!23753 = !DILocation(line: 627, column: 9, scope: !23088, inlinedAt: !23606)
!23754 = !DILocation(line: 1873, column: 86, scope: !23086, inlinedAt: !23587)
!23755 = !DILocation(line: 627, column: 9, scope: !23088, inlinedAt: !23616)
!23756 = !DILocation(line: 1873, column: 86, scope: !23086, inlinedAt: !23599)
!23757 = !DILocation(line: 328, column: 20, scope: !22903, inlinedAt: !23276)
!23758 = !DILocation(line: 331, column: 22, scope: !22902, inlinedAt: !23276)
!23759 = !DILocation(line: 339, column: 34, scope: !22899, inlinedAt: !23276)
!23760 = !DILocation(line: 340, column: 12, scope: !22898, inlinedAt: !23276)
!23761 = !DILocation(line: 2348, column: 21, scope: !22894, inlinedAt: !23277)
!23762 = !DILocation(line: 314, column: 78, scope: !22893)
!23763 = !DILocation(line: 328, column: 58, scope: !22885)
!23764 = !DILocation(line: 328, column: 40, scope: !22885)
!23765 = !DILocation(line: 230, column: 28, scope: !1258, inlinedAt: !23093)
!23766 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !23115)
!23767 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !23115)
!23768 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !23115)
!23769 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !23115)
!23770 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !23115)
!23771 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !23115)
!23772 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !23121)
!23773 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !23107)
!23774 = !DILocation(line: 256, column: 8, scope: !1268, inlinedAt: !23105)
!23775 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !23115)
!23776 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !23115)
!23777 = !DILocation(line: 667, column: 9, scope: !1263, inlinedAt: !23097)
!23778 = !DILocation(line: 238, column: 8, scope: !1262, inlinedAt: !23095)
!23779 = !DILocation(line: 241, column: 8, scope: !1262, inlinedAt: !23095)
!23780 = !DILocation(line: 244, column: 8, scope: !1262, inlinedAt: !23095)
!23781 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !23101)
!23782 = !DILocation(line: 249, column: 11, scope: !1261, inlinedAt: !23095)
!23783 = !DILocation(line: 2348, column: 21, scope: !1277, inlinedAt: !23131)
!23784 = !DILocation(line: 249, column: 5, scope: !1261, inlinedAt: !23095)
!23785 = !DILocation(line: 259, column: 8, scope: !1268, inlinedAt: !23105)
!23786 = !DILocation(line: 262, column: 8, scope: !1268, inlinedAt: !23105)
!23787 = !DILocation(line: 1921, column: 9, scope: !1265, inlinedAt: !23111)
!23788 = !DILocation(line: 267, column: 11, scope: !1267, inlinedAt: !23105)
!23789 = !DILocation(line: 2348, column: 21, scope: !1278, inlinedAt: !23135)
!23790 = !DILocation(line: 267, column: 5, scope: !1267, inlinedAt: !23105)
!23791 = !DILocation(line: 0, scope: !1259, inlinedAt: !23093)
!23792 = !DILocation(line: 1164, column: 9, scope: !23139, inlinedAt: !23638)
!23793 = !DILocation(line: 332, column: 30, scope: !22893)
!23794 = !DILocation(line: 588, column: 9, scope: !1289, inlinedAt: !23142)
!23795 = !DILocation(line: 589, column: 40, scope: !1288, inlinedAt: !23142)
!23796 = !DILocation(line: 589, column: 50, scope: !1289, inlinedAt: !23142)
!23797 = !DILocation(line: 590, column: 50, scope: !1287, inlinedAt: !23142)
!23798 = !DILocation(line: 361, column: 20, scope: !1291, inlinedAt: !23150)
!23799 = !DILocation(line: 591, column: 41, scope: !1286, inlinedAt: !23142)
!23800 = !DILocation(line: 591, column: 44, scope: !1289, inlinedAt: !23142)
!23801 = !DILocation(line: 592, column: 51, scope: !1290, inlinedAt: !23142)
!23802 = !DILocation(line: 361, column: 20, scope: !1292, inlinedAt: !23155)
!23803 = !DILocation(line: 0, scope: !1289, inlinedAt: !23142)
!23804 = !DILocation(line: 362, column: 24, scope: !1291, inlinedAt: !23150)
!23805 = !DILocation(line: 718, column: 5, scope: !1285, inlinedAt: !23145)
!23806 = !DILocation(line: 332, column: 47, scope: !22893)
!23807 = !DILocation(line: 588, column: 9, scope: !1289, inlinedAt: !23160)
!23808 = !DILocation(line: 589, column: 40, scope: !1288, inlinedAt: !23160)
!23809 = !DILocation(line: 589, column: 50, scope: !1289, inlinedAt: !23160)
!23810 = !DILocation(line: 590, column: 50, scope: !1287, inlinedAt: !23160)
!23811 = !DILocation(line: 361, column: 20, scope: !1291, inlinedAt: !23168)
!23812 = !DILocation(line: 591, column: 41, scope: !1286, inlinedAt: !23160)
!23813 = !DILocation(line: 591, column: 44, scope: !1289, inlinedAt: !23160)
!23814 = !DILocation(line: 592, column: 51, scope: !1290, inlinedAt: !23160)
!23815 = !DILocation(line: 361, column: 20, scope: !1292, inlinedAt: !23173)
!23816 = !DILocation(line: 0, scope: !1289, inlinedAt: !23160)
!23817 = !DILocation(line: 362, column: 24, scope: !1291, inlinedAt: !23168)
!23818 = !DILocation(line: 718, column: 5, scope: !1285, inlinedAt: !23163)
!23819 = !DILocation(line: 332, column: 18, scope: !22893)
!23820 = !DILocation(line: 340, column: 43, scope: !22893)
!23821 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !23178)
!23822 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !23178)
!23823 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !23178)
!23824 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !23178)
!23825 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !23178)
!23826 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !23178)
!23827 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !23184)
!23828 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !23178)
!23829 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !23178)
!23830 = !DILocation(line: 340, column: 65, scope: !22893)
!23831 = !DILocation(line: 577, column: 9, scope: !1225, inlinedAt: !23190)
!23832 = !DILocation(line: 578, column: 40, scope: !1224, inlinedAt: !23190)
!23833 = !DILocation(line: 578, column: 50, scope: !1225, inlinedAt: !23190)
!23834 = !DILocation(line: 579, column: 40, scope: !1223, inlinedAt: !23190)
!23835 = !DILocation(line: 579, column: 50, scope: !1225, inlinedAt: !23190)
!23836 = !DILocation(line: 580, column: 51, scope: !1222, inlinedAt: !23190)
!23837 = !DILocation(line: 384, column: 20, scope: !1230, inlinedAt: !23196)
!23838 = !DILocation(line: 581, column: 41, scope: !1221, inlinedAt: !23190)
!23839 = !DILocation(line: 581, column: 44, scope: !1225, inlinedAt: !23190)
!23840 = !DILocation(line: 2348, column: 21, scope: !23187, inlinedAt: !23649)
!23841 = !DILocation(line: 340, column: 76, scope: !22893)
!23842 = !DILocation(line: 2348, column: 21, scope: !23199, inlinedAt: !23658)
!23843 = !DILocation(line: 334, column: 53, scope: !22893)
!23844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !23847, file: !1313, size: 576, align: 64, flags: DIFlagPublic, elements: !23873, templateParams: !23874, identifier: "d9a3b7ffc2a845588ab6915434fe55d")
!23845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !23847, file: !1313, size: 576, align: 64, flags: DIFlagPublic, elements: !23876, templateParams: !23874, identifier: "9b1c514ce2f8af6b648d9646964cd75e")
!23846 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23847, file: !1313, size: 576, align: 64, elements: !23871, templateParams: !1568, identifier: "23a3aa11a4c164ce461e6c28a7e99bcd", discriminator: !23877)
!23847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, tera::errors::Error>", scope: !2520, file: !1313, size: 576, align: 64, flags: DIFlagPublic, elements: !23868, templateParams: !1568, identifier: "18f292fc4db0e37e797fd8d4619a1509")
!23848 = distinct !DISubprogram(name: "from_value", linkageName: "_RNvXs6_NtCs5yXxDE1DkoT_4tera4argsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtB7_5value3key3KeyNtB1u_5ValueENtB5_12ArgFromValue10from_value", scope: !23865, file: !6287, line: 245, type: !23867, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23879)
!23849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !23884, file: !1313, size: 64, align: 64, elements: !23886, templateParams: !1568, identifier: "6b5c37b6d9dac0a745dc65873a99bddb")
!23850 = distinct !DISubprogram(name: "ok_or_else<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, tera::errors::Error, tera::args::{impl#8}::from_value::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1H_5ValueEE10ok_or_elseNtNtB1J_6errors5ErrorNCNvXs6_NtB1J_4argsBI_NtB39_12ArgFromValue10from_value0EB1J_", scope: !1118, file: !3710, line: 1361, type: !23883, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23888, declaration: !23889, retainedNodes: !23892)
!23851 = distinct !DILexicalBlock(scope: !23850, file: !3710, line: 1366, column: 13)
!23852 = distinct !DILexicalBlock(scope: !23853, file: !1885, line: 698, column: 13)
!23853 = distinct !DISubprogram(name: "as_map", linkageName: "_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value6as_map", scope: !47, file: !1885, line: 696, type: !4935, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, declaration: !4945, retainedNodes: !23900)
!23854 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXs6_NtCs5yXxDE1DkoT_4tera4argsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtB9_5value3key3KeyNtB1w_5ValueENtB7_12ArgFromValue10from_value0B9_", scope: !23884, file: !6287, line: 249, type: !23905, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23906)
!23855 = distinct !DISubprogram(name: "name", linkageName: "_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value4name", scope: !47, file: !1885, line: 1043, type: !5093, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, declaration: !5094, retainedNodes: !23910)
!23856 = distinct !DISubprogram(name: "deref<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefB1H_", scope: !2896, file: !2894, line: 2572, type: !3007, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1815, retainedNodes: !23915)
!23857 = distinct !DISubprogram(name: "inner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE5innerB1H_", scope: !68, file: !2894, line: 2232, type: !3010, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1815, declaration: !3011, retainedNodes: !23919)
!23858 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB2v_5ValueEEE6as_refB2x_", scope: !67, file: !2557, line: 450, type: !3014, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1634, declaration: !3015)
!23859 = distinct !DISubprogram(name: "cloned<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1K_5ValueEE6clonedB1M_", scope: !945, file: !3710, line: 2162, type: !23925, scopeLine: 2162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1811, declaration: !23926, retainedNodes: !23927)
!23860 = distinct !DILexicalBlock(scope: !23861, file: !3710, line: 1165, column: 13)
!23861 = distinct !DISubprogram(name: "map<&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1I_5ValueEE3mapBJ_NvYBJ_NtNtB5_5clone5Clone5cloneEB1K_", scope: !945, file: !3710, line: 1160, type: !23933, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23936, declaration: !23937, retainedNodes: !23940)
!23862 = distinct !DISubprogram(name: "clone<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvXs3_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB17_5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB19_", scope: !5625, file: !3016, line: 1437, type: !5627, scopeLine: 1437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1809, retainedNodes: !23945)
!23863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>)", file: !1313, size: 64, align: 64, elements: !23955, templateParams: !1568, identifier: "249c9f164fba2e99671625a4692c581")
!23864 = distinct !DISubprogram(name: "call_once<fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, (&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>)>", linkageName: "_RNvYNvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB14_5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneINtNtNtB1U_3ops8function6FnOnceTRB5_EE9call_onceB16_", scope: !4682, file: !4679, line: 250, type: !23950, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !23953)
!23865 = !DINamespace(name: "{impl#8}", scope: !6288)
!23866 = !{!23847, !2450}
!23867 = !DISubroutineType(types: !23866)
!23868 = !{!23846}
!23869 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !23846, file: !1313, baseType: !23845, size: 576, align: 64, extraData: i8 -1)
!23870 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !23846, file: !1313, baseType: !23844, size: 576, align: 64)
!23871 = !{!23869, !23870}
!23872 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23844, file: !1313, baseType: !516, size: 576, align: 64, flags: DIFlagPublic)
!23873 = !{!23872}
!23874 = !{!1810, !3470}
!23875 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23845, file: !1313, baseType: !64, size: 384, align: 64, offset: 64, flags: DIFlagPublic)
!23876 = !{!23875}
!23877 = !DIDerivedType(tag: DW_TAG_member, scope: !23847, file: !1313, baseType: !1316, size: 8, align: 8, flags: DIFlagArtificial)
!23878 = !DILocalVariable(name: "value", arg: 1, scope: !23848, file: !6287, line: 245, type: !2450)
!23879 = !{!23878}
!23881 = !DILocalVariable(name: "v", scope: !23851, file: !3710, line: 1366, type: !64, align: 64)
!23882 = !{!23847, !1118, !23849}
!23883 = !DISubroutineType(types: !23882)
!23884 = !DINamespace(name: "from_value", scope: !23865)
!23885 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__value", scope: !23849, file: !1313, baseType: !2450, size: 64, align: 64)
!23886 = !{!23885}
!23887 = !DITemplateTypeParameter(name: "F", type: !23849)
!23888 = !{!1810, !3470, !23887}
!23889 = !DISubprogram(name: "ok_or_else<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, tera::errors::Error, tera::args::{impl#8}::from_value::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1H_5ValueEE10ok_or_elseNtNtB1J_6errors5ErrorNCNvXs6_NtB1J_4argsBI_NtB39_12ArgFromValue10from_value0EB1J_", scope: !1118, file: !3710, line: 1361, type: !23883, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !23888)
!23890 = !DILocalVariable(name: "self", arg: 1, scope: !23850, file: !3710, line: 1361, type: !1118)
!23891 = !DILocalVariable(name: "err", scope: !23850, file: !3710, line: 1361, type: !23849, align: 64)
!23892 = !{!23890, !23891, !23881}
!23893 = !DILocation(line: 249, column: 14, scope: !23848)
!23894 = !DILocation(line: 1366, column: 18, scope: !23851, inlinedAt: !23893)
!23896 = !DILocation(line: 1361, column: 35, scope: !23850, inlinedAt: !23893)
!23897 = !DILocation(line: 0, scope: !23848)
!23898 = !DILocalVariable(name: "self", arg: 1, scope: !23853, file: !1885, line: 696, type: !2450)
!23899 = !DILocalVariable(name: "s", scope: !23852, file: !1885, line: 698, type: !1628, align: 64)
!23900 = !{!23898, !23899}
!23901 = !DILocation(line: 247, column: 14, scope: !23848)
!23902 = !DILocation(line: 0, scope: !23853, inlinedAt: !23901)
!23903 = !DILocalVariable(name: "value", scope: !23854, file: !6287, line: 245, type: !47, align: 64)
!23904 = !{!516, !23849}
!23905 = !DISubroutineType(types: !23904)
!23906 = !{!23903}
!23907 = !DILocation(line: 1367, column: 25, scope: !23850, inlinedAt: !23893)
!23908 = !DILocation(line: 0, scope: !23854, inlinedAt: !23907)
!23909 = !DILocalVariable(name: "self", arg: 1, scope: !23855, file: !1885, line: 1043, type: !2450)
!23910 = !{!23909}
!23911 = !DILocation(line: 249, column: 65, scope: !23854, inlinedAt: !23907)
!23912 = !DILocation(line: 0, scope: !23855, inlinedAt: !23911)
!23913 = !DILocation(line: 698, column: 29, scope: !23852, inlinedAt: !23901)
!23914 = !DILocalVariable(name: "self", arg: 1, scope: !23856, file: !2894, line: 2572, type: !1628)
!23915 = !{!23914}
!23916 = !DILocation(line: 698, column: 40, scope: !23852, inlinedAt: !23901)
!23917 = !DILocation(line: 2572, column: 14, scope: !23856, inlinedAt: !23916)
!23918 = !DILocalVariable(name: "self", arg: 1, scope: !23857, file: !2894, line: 2232, type: !1628)
!23919 = !{!23918}
!23920 = !DILocation(line: 2573, column: 15, scope: !23856, inlinedAt: !23916)
!23921 = !DILocation(line: 2232, column: 14, scope: !23857, inlinedAt: !23920)
!23922 = !DILocation(line: 2238, column: 27, scope: !23857, inlinedAt: !23920)
!23923 = !DILocalVariable(name: "self", arg: 1, scope: !23859, file: !3710, line: 2162, type: !945)
!23924 = !{!1118, !945}
!23925 = !DISubroutineType(types: !23924)
!23926 = !DISubprogram(name: "cloned<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1K_5ValueEE6clonedB1M_", scope: !945, file: !3710, line: 2162, type: !23925, scopeLine: 2162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1811)
!23927 = !{!23923}
!23928 = !DILocation(line: 248, column: 14, scope: !23848)
!23929 = !DILocation(line: 0, scope: !23859, inlinedAt: !23928)
!23930 = !DILocalVariable(name: "self", arg: 1, scope: !23861, file: !3710, line: 1160, type: !945)
!23931 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>", baseType: !5627, align: 8, dwarfAddressSpace: 0)
!23932 = !{!1118, !945, !23931}
!23933 = !DISubroutineType(types: !23932)
!23934 = !DITemplateTypeParameter(name: "U", type: !64)
!23935 = !DITemplateTypeParameter(name: "F", type: !23931)
!23936 = !{!4942, !23934, !23935}
!23937 = !DISubprogram(name: "map<&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, fn(&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>) -> std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1I_5ValueEE3mapBJ_NvYBJ_NtNtB5_5clone5Clone5cloneEB1K_", scope: !945, file: !3710, line: 1160, type: !23933, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !23936)
!23938 = !DILocalVariable(name: "f", scope: !23861, file: !3710, line: 1160, type: !23931, align: 8)
!23939 = !DILocalVariable(name: "x", scope: !23860, file: !3710, line: 1165, type: !2771, align: 64)
!23940 = !{!23930, !23938, !23939}
!23941 = !DILocation(line: 2166, column: 14, scope: !23859, inlinedAt: !23928)
!23942 = !DILocation(line: 0, scope: !23861, inlinedAt: !23941)
!23943 = !DILocation(line: 0, scope: !23860, inlinedAt: !23941)
!23944 = !DILocalVariable(name: "self", arg: 1, scope: !23862, file: !3016, line: 1437, type: !2771)
!23945 = !{!23944}
!23946 = !DILocation(line: 1165, column: 29, scope: !23860, inlinedAt: !23941)
!23947 = !DILocation(line: 250, column: 5, scope: !23864, inlinedAt: !23946)
!23948 = !DILocation(line: 0, scope: !23862, inlinedAt: !23947)
!23949 = !{!64, !23931, !2771}
!23950 = !DISubroutineType(types: !23949)
!23951 = !DITemplateTypeParameter(name: "Self", type: !23931)
!23952 = !DITemplateTypeParameter(name: "Args", type: !23863)
!23953 = !{!23951, !23952}
!23954 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23863, file: !1313, baseType: !2771, size: 64, align: 64)
!23955 = !{!23954}
!23956 = !DILocation(line: 0, scope: !23850, inlinedAt: !23893)
!23957 = !DILocation(line: 0, scope: !23851, inlinedAt: !23893)
!23958 = !DILocation(line: 697, column: 15, scope: !23853, inlinedAt: !23901)
!23959 = !DILocation(line: 697, column: 9, scope: !23853, inlinedAt: !23901)
!23960 = !DILocation(line: 454, column: 20, scope: !23858, inlinedAt: !23922)
!23961 = !DILocation(line: 2573, column: 9, scope: !23856, inlinedAt: !23916)
!23962 = !DILocation(line: 1438, column: 32, scope: !23862, inlinedAt: !23947)
!23963 = !DILocation(line: 1438, column: 9, scope: !23862, inlinedAt: !23947)
!23964 = !DILocation(line: 1366, column: 24, scope: !23851, inlinedAt: !23893)
!23965 = !DILocation(line: 1369, column: 5, scope: !23850, inlinedAt: !23893)
!23966 = !DILocation(line: 1044, column: 15, scope: !23855, inlinedAt: !23911)
!23967 = !DILocation(line: 1044, column: 9, scope: !23855, inlinedAt: !23911)
!23968 = !DILocation(line: 249, column: 28, scope: !23854, inlinedAt: !23907)
!23969 = !DILocation(line: 1367, column: 30, scope: !23850, inlinedAt: !23893)
!23970 = !DILocation(line: 250, column: 6, scope: !23848)
!23971 = distinct !DILexicalBlock(scope: !23972, file: !1885, line: 349, column: 52)
!23972 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp", scope: !23975, file: !1885, line: 348, type: !23977, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23981)
!23973 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsX_NtNtCsf3Ta7LF998c_4core3cmp5implshNtB7_3Ord3cmp", scope: !23983, file: !4901, line: 2347, type: !23985, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23987)
!23974 = distinct !DISubprogram(name: "type_order", linkageName: "_RNvNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB7_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp10type_order", scope: !23993, file: !1885, line: 355, type: !23995, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !23996)
!23975 = !DINamespace(name: "{impl#8}", scope: !1315)
!23976 = !{!1497, !2450, !2450}
!23977 = !DISubroutineType(types: !23976)
!23978 = !DILocalVariable(name: "self", arg: 1, scope: !23972, file: !1885, line: 348, type: !2450)
!23979 = !DILocalVariable(name: "other", arg: 2, scope: !23972, file: !1885, line: 348, type: !2450)
!23980 = !DILocalVariable(name: "res", scope: !23971, file: !1885, line: 349, type: !1497, align: 8)
!23981 = !{!23978, !23979, !23980}
!23982 = !DILocalVariable(name: "other", arg: 2, scope: !23973, file: !4901, line: 2347, type: !1960)
!23983 = !DINamespace(name: "{impl#61}", scope: !4902)
!23984 = !{!1497, !1960, !1960}
!23985 = !DISubroutineType(types: !23984)
!23986 = !DILocalVariable(name: "self", arg: 1, scope: !23973, file: !4901, line: 2347, type: !1960)
!23987 = !{!23986, !23982}
!23988 = !DILocation(line: 371, column: 33, scope: !23972)
!23989 = !DILocation(line: 2347, column: 31, scope: !23973, inlinedAt: !23988)
!23990 = !DILocation(line: 2347, column: 24, scope: !23973, inlinedAt: !23988)
!23991 = !DILocation(line: 0, scope: !23972)
!23992 = !DILocalVariable(name: "v", arg: 1, scope: !23974, file: !1885, line: 355, type: !5213)
!23993 = !DINamespace(name: "cmp", scope: !23975)
end_hunk_5
