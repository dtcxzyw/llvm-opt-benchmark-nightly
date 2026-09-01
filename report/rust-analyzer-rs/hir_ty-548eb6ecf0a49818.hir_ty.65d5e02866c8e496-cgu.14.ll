Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.14?download=true
inline.NumInlined: 5509
inline.NumDeleted: 2264
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXsk_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_5ByRefNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherenceINtB5_17UncoveredTyParamsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1t_2ty2TyENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1v_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1429, i64 noundef 17)
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1431, i64 noundef 9, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @941) ; 0 uses
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1432, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058) ; 0 uses
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderNtB5_14StoredTraitRefNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1435, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1425, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @532, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1434)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB5_8BinaryOpNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 1, !range !662, !noundef !5 ; 3 uses
  %i.f = icmp ne i8 %i.e, 5
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i8 %i.e, -3
  %i.h = icmp samesign ugt i8 %i.e, 2
  %narrow = select i1 %i.h, i8 %i.g, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.i, ptr %i.d, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1656, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1655)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.k, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1657, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1280)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1659, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1658)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.n, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1341, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1337, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1660)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnosticsNtB5_24IncorrectGenericsLenKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !97, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 14, i64 9
  %.1 = select i1 %i.b, ptr @1662, ptr @1661
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_5PlaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1672, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @769, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1670, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1673, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_Cs8K4cjrcxBsw_6hir_tyNtB5_4SpanNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %0, align 4, !range !747, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  switch i32 %i.e, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1404, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1405, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @980)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1674, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1400)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1675, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @736)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1676, i64 noundef 5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_11BindingModeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1678, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1677, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @817)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -2, 4) i8 @_RNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path4PathNtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(192) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [16 x i8], align 4                ; 8 uses
  %i.j = alloca [16 x i8], align 4                ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 10 uses
  %i.o = alloca [4 x i8], align 4                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.6208 = alloca i64, align 8               ; 8 uses
  %.sroa.10 = alloca i64, align 8                 ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [96 x i8], align 8                ; 13 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [96 x i8], align 8                ; 15 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = load i32, ptr %0, align 8, !range !710, !noundef !5 ; 2 uses
  switch i32 %i.y, label %default.unreachable403 [
    i32 1, label %bb.c
    i32 0, label %bb.b
    i32 2, label %.thread215
  ]

default.unreachable403:                           ; preds = %._crit_edge334, %bb.ba, %bb.as, %._crit_edge336, %bb.aj, %.thread215, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %.thread215

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !range !102, !noundef !5
  %i.af = trunc nuw i32 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  br i1 %i.af, label %bb.d, label %.thread215

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i32 %i.ak, ptr %i.x, align 4
  %i.al = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1680, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not159 = icmp eq i8 %i.al, -2
  br i1 %.not159, label %bb.e, label %bb.o

.thread215:                                       ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.03.0219 = phi ptr [ %i.ab, %bb.b ], [ %i.ai, %bb.c ], [ @1679, %bb.a ] ; 4 uses
  %i.am = load i8, ptr %.sroa.03.0219, align 4, !range !321, !noundef !5
  switch i8 %i.am, label %default.unreachable403 [
    i8 0, label %.loopexit236
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %.loopexit236
    i8 4, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.an = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not160 = icmp eq i8 %i.an, -2
  br i1 %.not160, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ao = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1681, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not161 = icmp eq i8 %i.ao, -2
  br i1 %.not161, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit236

.loopexit236:                                     ; preds = %.preheader, %.preheader.preheader459, %bb.q, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197, %bb.g, %.thread215, %.thread215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path8segments(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_12PathSegments4iter(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !10373, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %i.ap, align 8, !alias.scope !10373 ; 2 uses
  %.promoted14.i = load i64, ptr %i.u, align 8, !alias.scope !10370 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !10370
  %.fr28.i = freeze i64 %i.aw                     ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.fr28.i, 40 ; 2 uses
  %i.ax = icmp eq i64 %.fr28.i, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !10370, !nonnull !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.val.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !10370 ; 2 uses
  %.promoted15.i = load ptr, ptr %i.as, align 8, !alias.scope !10370 ; 4 uses
  %.promoted20.i = load ptr, ptr %i.at, align 8, !alias.scope !10370 ; 2 uses
  %.promoted21.i = load ptr, ptr %i.au, align 8, !alias.scope !10370 ; 4 uses
  %.promoted22.i = load ptr, ptr %i.ay, align 8, !alias.scope !10370 ; 2 uses
  br i1 %i.ax, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i: ; preds = %.loopexit236, %bb.j
  %i.bc = phi i64 [ %i.by, %bb.j ], [ %.promoted14.i, %.loopexit236 ] ; 4 uses
  %i.bd = phi ptr [ %i.bz, %bb.j ], [ %.promoted21.i, %.loopexit236 ] ; 5 uses
  %i.be = phi ptr [ %i.ca, %bb.j ], [ %.promoted15.i, %.loopexit236 ] ; 3 uses
  %spec.select.i8.i.i.i.i.i.i.i25.us.i = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i24.us.i, %bb.j ], [ %.promoted22.i, %.loopexit236 ] ; 7 uses
  %i.bf = phi ptr [ %i.cb, %bb.j ], [ %.promoted21.i, %.loopexit236 ] ; 7 uses
  %i.bg = phi ptr [ %i.cc, %bb.j ], [ %.promoted20.i, %.loopexit236 ] ; 8 uses
  %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i18.us.i, %bb.j ], [ %.promoted15.i, %.loopexit236 ] ; 8 uses
  %i.bh = phi i64 [ %i.cd, %bb.j ], [ %.promoted14.i, %.loopexit236 ] ; 3 uses
  %i.bi = phi ptr [ %i.bk, %bb.j ], [ %.promoted.i, %.loopexit236 ] ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ar
  br i1 %i.bj, label %.loopexit233, label %bb.h

bb.h:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.not.i.i.i.i.us.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = trunc nuw i64 %i.bh to i1
  %.not.i.us.peel.i.i.i.i.i.i.i.us.i = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, null ; 2 uses
  br i1 %i.bl, label %.split.us.preheader.i.i.i.i.i.i.i.us.i, label %.split.i.i.i.i.i.i.i.us.i

.split.i.i.i.i.i.i.i.us.i:                        ; preds = %bb.i
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, label %.sink.split.i.i.i.i.i.i.i.i.us.i

.sink.split.i.i.i.i.i.i.i.i.us.i:                 ; preds = %.split.i.i.i.i.i.i.i.us.i
  %i.bm = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, i64 40 ; 2 uses
  br i1 %i.bm, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

.split.us.preheader.i.i.i.i.i.i.i.us.i:           ; preds = %bb.i
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.us.i, label %select.unfold.us.peel.i.i.i.i.i.i.i.us.i, label %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i

.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i:         ; preds = %.split.us.preheader.i.i.i.i.i.i.i.us.i
  %i.bo = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, %i.bg
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, i64 40 ; 2 uses
  br i1 %i.bo, label %select.unfold.us.peel.i.i.i.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

select.unfold.us.peel.i.i.i.i.i.i.i.us.i:         ; preds = %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i, %.split.us.preheader.i.i.i.i.i.i.i.us.i
  %i.bq = phi ptr [ null, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.be, %.split.us.preheader.i.i.i.i.i.i.i.us.i ]
  %.not4.us.peel.i.i.i.i.i.i.i.us.i = icmp eq ptr %i.bf, null
  br i1 %.not4.us.peel.i.i.i.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, label %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i

.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i:       ; preds = %select.unfold.us.peel.i.i.i.i.i.i.i.us.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.br, ptr %i.at, align 8, !alias.scope !10380
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i: ; preds = %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i, %.sink.split.i.i.i.i.i.i.i.i.us.i, %.split.i.i.i.i.i.i.i.us.i
  %i.bs = phi ptr [ %i.bd, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bd, %.split.i.i.i.i.i.i.i.us.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.bt = phi ptr [ null, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.be, %.split.i.i.i.i.i.i.i.us.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ %i.bq, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.bu = phi ptr [ %i.bf, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bf, %.split.i.i.i.i.i.i.i.us.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bg, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bg, %.split.i.i.i.i.i.i.i.us.i ], [ %i.br, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ %i.bg, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %.not.i6.i.i.i.i.i.i.i.us.i = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.us.i, null
  %i.bw = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.us.i, %i.ba
  %i.bx = getelementptr inbounds nuw i8, ptr %spec.select.i8.i.i.i.i.i.i.i25.us.i, i64 40
  %or.cond448 = select i1 %.not.i6.i.i.i.i.i.i.i.us.i, i1 true, i1 %i.bw
  br i1 %or.cond448, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i, %.sink.split.i.i.i.i.i.i.i.i.us.i, %bb.h
  %i.by = phi i64 [ %i.bc, %bb.h ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %i.bc, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bc, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bc, %.sink.split.i.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.bz = phi ptr [ %i.bd, %bb.h ], [ %i.bs, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %i.bd, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bs, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bd, %.sink.split.i.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.ca = phi ptr [ %i.be, %bb.h ], [ %i.bt, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %i.bp, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bt, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bn, %.sink.split.i.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %spec.select.i8.i.i.i.i.i.i.i24.us.i = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i25.us.i, %bb.h ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.us.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bx, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.us.i, %.sink.split.i.i.i.i.i.i.i.i.us.i ]
  %i.cb = phi ptr [ %i.bf, %bb.h ], [ %i.bu, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %i.bf, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bu, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bf, %.sink.split.i.i.i.i.i.i.i.i.us.i ]
  %i.cc = phi ptr [ %i.bg, %bb.h ], [ %i.bv, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %i.bg, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bv, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bg, %.sink.split.i.i.i.i.i.i.i.i.us.i ]
  %spec.select.i.us.peel27.i.i.i.i.i.i.i18.us.i = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, %bb.h ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %i.bp, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bn, %.sink.split.i.i.i.i.i.i.i.i.us.i ]
  %i.cd = phi i64 [ 2, %bb.h ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ 1, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bh, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ 0, %.sink.split.i.i.i.i.i.i.i.i.us.i ]
  %.sroa.0.0.i.i.i.i.us.i = phi ptr [ null, %bb.h ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.us.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i, %.sink.split.i.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %.not.i1.i.i.i.us.i = icmp eq ptr %.sroa.0.0.i.i.i.i.us.i, null
  %spec.select.i.i.i.i.us.i = select i1 %.not.i1.i.i.i.us.i, ptr %.val.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.us.i ; 3 uses
  %.not7.i.i.us.i = icmp eq ptr %spec.select.i.i.i.i.us.i, null
  br i1 %.not7.i.i.us.i, label %.loopexit233, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10391)
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.us.i, i64 33
  %i.cf = load i8, ptr %i.ce, align 1, !range !115, !alias.scope !10394, !noalias !10397, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !10399)
  call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  %i.cg = and i8 %i.cf, 1
  %or.cond.not.i.us.i = icmp eq i8 %i.cg, 0
  br i1 %or.cond.not.i.us.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i, label %.split27.us.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i: ; preds = %.loopexit236, %bb.m
  %i.ch = phi i64 [ %i.dd, %bb.m ], [ %.promoted14.i, %.loopexit236 ] ; 5 uses
  %i.ci = phi ptr [ %i.de, %bb.m ], [ %.promoted21.i, %.loopexit236 ] ; 5 uses
  %i.cj = phi ptr [ %i.df, %bb.m ], [ %.promoted15.i, %.loopexit236 ] ; 3 uses
  %spec.select.i8.i.i.i.i.i.i.i25.i = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i24.i, %bb.m ], [ %.promoted22.i, %.loopexit236 ] ; 8 uses
  %i.ck = phi ptr [ %i.dg, %bb.m ], [ %.promoted21.i, %.loopexit236 ] ; 9 uses
  %i.cl = phi ptr [ %i.dh, %bb.m ], [ %.promoted20.i, %.loopexit236 ] ; 7 uses
  %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i18.i, %bb.m ], [ %.promoted15.i, %.loopexit236 ] ; 8 uses
  %i.cm = phi i64 [ %i.di, %bb.m ], [ %.promoted14.i, %.loopexit236 ] ; 3 uses
  %i.cn = phi ptr [ %i.cp, %bb.m ], [ %.promoted.i, %.loopexit236 ] ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ar
  br i1 %i.co, label %.loopexit233, label %bb.k
end_hunk_0
begin_hunk_1_@_RNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path4PathNtB5_29HirDisplayWithExpressionStore7hir_fmt:bb.a
bb.ad:                                            ; preds = %bb.y
  br i1 %.not.i.i.i196, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr i8, ptr %.val, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %i.ev = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.eu)
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 %i.ew ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ex, ptr %i.b, align 8
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8
  %i.ez = icmp eq i64 %i.ey, 2
  br i1 %i.ez, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %bb.ae
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ex, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197: ; preds = %bb.ad, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit236

bb.ah:                                            ; preds = %.split27.us.i
  %i.fa = load ptr, ptr %.us-phi.i, align 8, !alias.scope !10405, !noalias !10370, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fb = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1680, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not163 = icmp eq i8 %i.fb, -2
  br i1 %.not163, label %bb.aj, label %.loopexit237

.loopexit233:                                     ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %.loopexit233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path8segments(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_12PathSegments4iter(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
  %.sroa.044.sroa.0.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.044.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.044.sroa.2.0.copyload = load ptr, ptr %.sroa.044.sroa.2.0..sroa_idx, align 8
  %.sroa.044.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.044.sroa.3.0.copyload = load i64, ptr %.sroa.044.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.044.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.044.sroa.4.0.copyload = load ptr, ptr %.sroa.044.sroa.4.0..sroa_idx, align 8
  %.sroa.044.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.044.sroa.5.0.copyload = load ptr, ptr %.sroa.044.sroa.5.0..sroa_idx, align 8
  %.sroa.044.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.044.sroa.6.0.copyload = load ptr, ptr %.sroa.044.sroa.6.0..sroa_idx, align 8
  %.sroa.044.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.044.sroa.7.0.copyload = load ptr, ptr %.sroa.044.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.044.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.044.sroa.8.0.copyload = load ptr, ptr %.sroa.044.sroa.8.0..sroa_idx, align 8
  %.sroa.044.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.044.sroa.9.0.copyload = load ptr, ptr %.sroa.044.sroa.9.0..sroa_idx, align 8
  %.sroa.044.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.044.sroa.10.0.copyload = load ptr, ptr %.sroa.044.sroa.10.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.044.sroa.3.0.copyload, 40
  %i.fc = icmp eq i64 %.sroa.044.sroa.3.0.copyload, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !nonnull !5 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fk = load i64, ptr %i.fj, align 8            ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !5 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10408)
  %i.fq = load i32, ptr %i.fa, align 4, !range !710, !alias.scope !10408, !noalias !10411, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  switch i32 %i.fq, label %default.unreachable403 [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fs = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fr, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit

bb.al:                                            ; preds = %bb.aj
  %i.ft = call noundef i8 @_RNvXsm_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fr, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit

bb.am:                                            ; preds = %bb.aj
  %i.fu = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1707, ptr noundef nonnull inttoptr (i64 13 to ptr)), !noalias !10415
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit

_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit: ; preds = %bb.ak, %bb.al, %bb.am
  %.sroa.0.0.i198 = phi i8 [ %i.fs, %bb.ak ], [ %i.ft, %bb.al ], [ %i.fu, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not164 = icmp eq i8 %.sroa.0.0.i198, -2
  br i1 %.not164, label %bb.an, label %.loopexit237

bb.an:                                            ; preds = %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit
  %i.fv = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1687, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 2 uses
  %.not165 = icmp eq i8 %i.fv, -2
  br i1 %.not165, label %bb.ai, label %.loopexit237

bb.ao:                                            ; preds = %bb.bb, %bb.ai
  %.sroa.22204.0 = phi i64 [ 0, %bb.ai ], [ %.sroa.22204.1, %bb.bb ] ; 4 uses
  %.sroa.19.0 = phi ptr [ %.sroa.044.sroa.9.0.copyload, %bb.ai ], [ %.sroa.19.1, %bb.bb ] ; 5 uses
  %.sroa.15.0 = phi ptr [ %.sroa.044.sroa.6.0.copyload, %bb.ai ], [ %.sroa.15.3, %bb.bb ] ; 9 uses
  %.sroa.13.0 = phi ptr [ %.sroa.044.sroa.5.0.copyload, %bb.ai ], [ %.sroa.13.3, %bb.bb ] ; 7 uses
  %.sroa.9.0 = phi ptr [ %.sroa.044.sroa.4.0.copyload, %bb.ai ], [ %.sroa.9.4, %bb.bb ] ; 7 uses
  %.sroa.6.0 = phi ptr [ %.sroa.044.sroa.2.0.copyload, %bb.ai ], [ %.sroa.6.3, %bb.bb ] ; 9 uses
  %.sroa.0203.0 = phi i64 [ %.sroa.044.sroa.0.0.copyload, %bb.ai ], [ %.sroa.0203.2, %bb.bb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6208)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !10416)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0) ]
  %i.fw = icmp eq ptr %.sroa.19.0, %.sroa.044.sroa.10.0.copyload
  br i1 %i.fw, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.19.0, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0203.0, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fy = trunc nuw i64 %.sroa.0203.0 to i1
  %.not.i.us.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.9.0, null
  %i.fz = icmp eq ptr %.sroa.9.0, %.sroa.13.0
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 40 ; 2 uses
  %or.cond226 = select i1 %.not.i.us.peel.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.fz ; 2 uses
  br i1 %i.fy, label %.split.us.preheader.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i.i.i.i:            ; preds = %bb.aq
  br i1 %or.cond226, label %select.unfold.us.peel.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i

select.unfold.us.peel.i.i.i.i.i.i.i.i.i:          ; preds = %.split.us.preheader.i.i.i.i.i.i.i.i.i
  %.not4.us.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.6.0, null
  br i1 %.not4.us.peel.i.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i, label %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i

.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i:        ; preds = %select.unfold.us.peel.i.i.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 40
  br i1 %i.fc, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.aq
  br i1 %or.cond226, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i, %select.unfold.us.peel.i.i.i.i.i.i.i.i.i
  %.sroa.13.2 = phi ptr [ %.sroa.13.0, %select.unfold.us.peel.i.i.i.i.i.i.i.i.i ], [ %i.gb, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0, %.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.6.2 = phi ptr [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0, %.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i6.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.15.0, null
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, label %.sink.split.i7.i.i.i.i.i.i.i.i.i

.sink.split.i7.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.sroa.7.0.copyload) ]
  %i.gd = icmp eq ptr %.sroa.15.0, %.sroa.044.sroa.7.0.copyload
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 40
  br i1 %i.gd, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i: ; preds = %.sink.split.i7.i.i.i.i.i.i.i.i.i
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i, %.sink.split.i7.i.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i, %bb.ap
  %.sroa.15.1 = phi ptr [ %.sroa.15.0, %bb.ap ], [ %.sroa.15.0, %.split.i.i.i.i.i.i.i.i.i ], [ %i.ge, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %bb.ap ], [ %.sroa.13.0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.2, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %i.gb, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.ap ], [ %i.ga, %.split.i.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %i.gc, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %i.ga, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %bb.ap ], [ %.sroa.6.0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.2, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0203.1 = phi i64 [ 2, %bb.ap ], [ 0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.0203.0, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ 1, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ 1, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ 2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ null, %bb.ap ], [ %.sroa.9.0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i, ptr %.sroa.044.sroa.8.0.copyload, ptr %.sroa.0.0.i.i.i.i.i.i ; 3 uses
  %.not7.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i, null
  br i1 %.not7.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit, label %bb.ar

bb.ar:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 33
  %i.gg = load i8, ptr %i.gf, align 1, !range !115, !alias.scope !10419, !noalias !10422, !noundef !5
  %.not.i.i.i199 = icmp eq i8 %i.gg, 2
  %..i.i.i = select i1 %.not.i.i.i199, ptr null, ptr %spec.select.i.i.i.i.i.i
  %i.gh = add i64 %.sroa.22204.0, 1
  %4 = ptrtoint ptr %.sroa.19.0 to i64
  store i64 %4, ptr %.sroa.6208, align 8, !alias.scope !10416, !noalias !10427
  %i.gi = icmp eq i64 %.sroa.22204.0, 0
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.ao, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, %bb.ar
  %.sroa.0207.0 = phi i1 [ undef, %bb.ao ], [ undef, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %i.gi, %bb.ar ]
  %.sroa.22204.1 = phi i64 [ %.sroa.22204.0, %bb.ao ], [ %.sroa.22204.0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %i.gh, %bb.ar ]
  %.sroa.19.1 = phi ptr [ %.sroa.19.0, %bb.ao ], [ %i.fx, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %i.fx, %bb.ar ]
  %.sroa.15.3 = phi ptr [ %.sroa.15.0, %bb.ao ], [ %.sroa.15.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %.sroa.15.1, %bb.ar ]
  %.sroa.13.3 = phi ptr [ %.sroa.13.0, %bb.ao ], [ %.sroa.13.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %.sroa.13.1, %bb.ar ]
  %.sroa.9.4 = phi ptr [ %.sroa.9.0, %bb.ao ], [ %.sroa.9.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %.sroa.9.1, %bb.ar ]
  %.sroa.6.3 = phi ptr [ %.sroa.6.0, %bb.ao ], [ %.sroa.6.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %.sroa.6.1, %bb.ar ]
  %.sroa.0203.2 = phi i64 [ %.sroa.0203.0, %bb.ao ], [ %.sroa.0203.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %.sroa.0203.1, %bb.ar ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.6208, %bb.ao ], [ %.sroa.6208, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %.sroa.10, %bb.ar ]
  %..i.i.sink.i = phi ptr [ null, %bb.ao ], [ null, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %..i.i.i, %bb.ar ]
  store ptr %..i.i.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !10416, !noalias !10427
  %.sroa.6208.0..sroa.6208.0..sroa.6208.0..sroa.6208.8. = load i64, ptr %.sroa.6208, align 8, !noundef !5 ; 2 uses
  %5 = inttoptr i64 %.sroa.6208.0..sroa.6208.0..sroa.6208.0..sroa.6208.8. to ptr
  %.not166 = icmp eq i64 %.sroa.6208.0..sroa.6208.0..sroa.6208.0..sroa.6208.8., 0
  br i1 %.not166, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.16. = load i64, ptr %.sroa.10, align 8, !noundef !5 ; 2 uses
  %6 = inttoptr i64 %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.16. to ptr ; 12 uses
  switch i32 %i.y, label %default.unreachable403 [
    i32 0, label %bb.au
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.at:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6208)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit237

.loopexit237:                                     ; preds = %bb.u, %bb.t, %.preheader.preheader, %.loopexit, %bb.ah, %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit, %bb.an, %bb.q, %bb.s, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit, %bb.at
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.o ], [ %i.ds, %bb.q ], [ -2, %bb.at ], [ %i.ek, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit ], [ %i.ee, %bb.s ], [ %.sroa.0.0.i198, %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit ], [ %i.fv, %bb.an ], [ %.sroa.0.7, %.loopexit ], [ %i.fb, %bb.ah ], [ %i.dr, %.preheader.preheader ], [ %i.eg, %bb.t ], [ %i.eh, %bb.u ]
  ret i8 %.sroa.0.2

bb.au:                                            ; preds = %bb.as
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.gj = load ptr, ptr %i.ff, align 8, !nonnull !5, !noundef !5
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.av, %bb.au
  %.sroa.045.0 = phi ptr [ %i.fg, %bb.au ], [ %i.gk, %bb.av ], [ @1679, %bb.as ]
  %i.gl = load i8, ptr %.sroa.045.0, align 4, !range !321, !noundef !5
  %i.gm = icmp eq i8 %i.gl, 0
  %or.cond = and i1 %.sroa.0207.0, %i.gm
  br i1 %or.cond, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1683, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not168 = icmp eq i8 %i.gn, -2
  br i1 %.not168, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.go = load i8, ptr %i.fh, align 4, !range !1682, !noundef !5
  store ptr %5, ptr %i.q, align 8
  store i8 %i.go, ptr %i.fi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.q, ptr %i.p, align 8
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4131.0..sroa_idx, align 8
  %i.gp = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1686, ptr noundef nonnull %i.p) ; 2 uses
  %.not169 = icmp eq i8 %i.gp, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %.not169, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %.not170 = icmp eq i64 %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.16., 0
  br i1 %.not170, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gr = load i8, ptr %i.gq, align 8, !range !115, !noundef !5
  switch i8 %i.gr, label %default.unreachable403 [
    i8 0, label %bb.bc
    i8 1, label %bb.bd
    i8 2, label %bb.be
  ]

.sink.split:                                      ; preds = %bb.cw, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.cp, %bb.bd, %bb.cb, %._crit_edge.thread, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6208)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.ao

bb.bc:                                            ; preds = %bb.ba
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !5 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 33 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !range !97, !noundef !5
  %i.gw = zext nneg i8 %i.gv to i64               ; 4 uses
  %i.gx = icmp ult i64 %i.gt, %i.gw
  br i1 %i.gx, label %bb.bj, label %.peel.begin, !prof !11

bb.bd:                                            ; preds = %bb.ba
  %i.gy = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1693, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 2 uses
  %.not180 = icmp eq i8 %i.gy, -2
  br i1 %.not180, label %bb.bb, label %.loopexit

bb.be:                                            ; preds = %bb.ba
  %i.gz = load ptr, ptr %6, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !5
  %.not171 = icmp eq i64 %i.hb, 0
  br i1 %.not171, label %bb.cd, label %bb.cc

.peel.begin:                                      ; preds = %bb.bc
  %i.hc = load ptr, ptr %6, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx500 = shl nuw nsw i64 %i.gw, 3             ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.idx500 ; 4 uses
  %.idx501 = shl nuw nsw i64 %i.gt, 3             ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.idx501
  %i.hf = icmp samesign eq i64 %i.gt, %i.gw
  br i1 %i.hf, label %.loopexit322.thread, label %bb.bf

bb.bf:                                            ; preds = %.peel.begin
  %i.hg = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1680, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not182.peel = icmp eq i8 %i.hg, -2
  br i1 %.not182.peel, label %._crit_edge334, label %.loopexit

._crit_edge334:                                   ; preds = %bb.bf
  %.pre = load i32, ptr %i.hd, align 4, !range !710, !alias.scope !10428, !noalias !10431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10428)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 2 uses
  switch i32 %.pre, label %default.unreachable403 [
    i32 0, label %bb.bi
    i32 1, label %bb.bh
    i32 2, label %bb.bg
  ]

bb.bg:                                            ; preds = %._crit_edge334
  %i.hi = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1707, ptr noundef nonnull inttoptr (i64 13 to ptr)), !noalias !10435
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202.peel

bb.bh:                                            ; preds = %._crit_edge334
  %i.hj = call noundef i8 @_RNvXsm_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hh, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202.peel

bb.bi:                                            ; preds = %._crit_edge334
  %i.hk = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hh, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202.peel

_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202.peel: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.sroa.0.0.i200.peel = phi i8 [ %i.hk, %bb.bi ], [ %i.hj, %bb.bh ], [ %i.hi, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not183.peel = icmp eq i8 %.sroa.0.0.i200.peel, -2
  br i1 %.not183.peel, label %.peel.next.preheader, label %.loopexit

.peel.next.preheader:                             ; preds = %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202.peel
  %i.hl = add nuw nsw i64 %.idx500, 8
  %i.hm = icmp samesign eq i64 %i.hl, %.idx501
  br i1 %i.hm, label %.loopexit322, label %.lr.ph499

.lr.ph499:                                        ; preds = %.peel.next.preheader
  %.sroa.077.0496 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  br label %bb.br

bb.bj:                                            ; preds = %bb.bc
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.gw, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1692) #42
  unreachable

.peel.next:                                       ; preds = %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202
  %.sroa.077.0 = getelementptr inbounds nuw i8, ptr %.sroa.077.0498, i64 8 ; 2 uses
  %i.hn = icmp eq ptr %.sroa.077.0, %i.he
  br i1 %i.hn, label %.loopexit322, label %bb.br, !llvm.loop !10436

.loopexit322:                                     ; preds = %.peel.next, %.peel.next.preheader
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !5 ; 3 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %.critedge, label %.lr.ph.preheader

.loopexit322.thread:                              ; preds = %.peel.begin
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !5 ; 3 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %._crit_edge.thread, label %.lr.ph.preheader.thread

.lr.ph.preheader:                                 ; preds = %.loopexit322
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.hp, 72
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx
  %i.hx = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1688, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not184.peel = icmp eq i8 %i.hx, -2
  br i1 %.not184.peel, label %bb.bk, label %.loopexit

.lr.ph.preheader.thread:                          ; preds = %.loopexit322.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx404 = mul nuw nsw i64 %i.hs, 72
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx404
  %i.ib = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1680, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not185.peel = icmp eq i8 %i.ib, -2
  br i1 %.not185.peel, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %.lr.ph.preheader.thread, %.lr.ph.preheader
  %i.ic = phi ptr [ %i.hz, %.lr.ph.preheader.thread ], [ %i.hv, %.lr.ph.preheader ] ; 6 uses
  %i.id = phi i64 [ %i.hs, %.lr.ph.preheader.thread ], [ %i.hp, %.lr.ph.preheader ]
  %i.ie = phi ptr [ %i.ia, %.lr.ph.preheader.thread ], [ %i.hw, %.lr.ph.preheader ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ih = load i8, ptr %i.fh, align 4, !range !1682, !noundef !5
  store ptr %i.ig, ptr %i.n, align 8
  store i8 %i.ih, ptr %i.fn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4135.0..sroa_idx, align 8
  %i.ii = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1686, ptr noundef nonnull %i.m) ; 2 uses
  %.not186.peel = icmp eq i8 %i.ii, -2
  br i1 %.not186.peel, label %bb.bl, label %.loopexit327

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ij = load i32, ptr %i.ic, align 8, !range !102, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.il = trunc nuw i32 %i.ij to i1
  br i1 %i.il, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.im = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1689, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not187.peel = icmp eq i8 %i.im, -2
  br i1 %.not187.peel, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  %i.io = load ptr, ptr %i.in, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !5
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.iq
  store ptr %i.io, ptr %i.fo, align 8
  store ptr %i.ir, ptr %i.fp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %i.is = call noundef i8 @_RINvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB6_12HirFormatter12write_joinedINtB6_22ExpressionStoreAdapterRNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterB1D_ENCNvMsk_B6_B18_4wrap0EEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1690, i64 noundef 3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not188.peel = icmp eq i8 %i.is, -2
  br i1 %.not188.peel, label %bb.bq, label %.loopexit

bb.bo:                                            ; preds = %bb.bl
  %i.it = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1691, ptr noundef nonnull inttoptr (i64 7 to ptr)) ; 2 uses
  %.not189.peel = icmp eq i8 %i.it, -2
  br i1 %.not189.peel, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.iu = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ik, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not190.peel = icmp eq i8 %i.iu, -2
  br i1 %.not190.peel, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.iv = icmp eq i64 %i.id, 1
  br i1 %i.iv, label %.critedge, label %.lr.ph.peel.next

bb.br:                                            ; preds = %.lr.ph499, %.peel.next
  %.sroa.077.0498 = phi ptr [ %.sroa.077.0496, %.lr.ph499 ], [ %.sroa.077.0, %.peel.next ] ; 3 uses
  %.pn497 = phi ptr [ %i.hd, %.lr.ph499 ], [ %.sroa.077.0498, %.peel.next ]
  %i.iw = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1688, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not181 = icmp eq i8 %i.iw, -2
  br i1 %.not181, label %._crit_edge336, label %.loopexit

._crit_edge336:                                   ; preds = %bb.br
  %.pre337 = load i32, ptr %.sroa.077.0498, align 4, !range !710, !alias.scope !10437, !noalias !10431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10437)
  %i.ix = getelementptr inbounds nuw i8, ptr %.pn497, i64 12 ; 2 uses
  switch i32 %.pre337, label %default.unreachable403 [
    i32 0, label %bb.bs
    i32 1, label %bb.bt
    i32 2, label %bb.bu
  ]

bb.bs:                                            ; preds = %._crit_edge336
  %i.iy = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ix, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202

bb.bt:                                            ; preds = %._crit_edge336
  %i.iz = call noundef i8 @_RNvXsm_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ix, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202

bb.bu:                                            ; preds = %._crit_edge336
  %i.ja = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1707, ptr noundef nonnull inttoptr (i64 13 to ptr)), !noalias !10439
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202

_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202: ; preds = %bb.bs, %bb.bt, %bb.bu
  %.sroa.0.0.i200 = phi i8 [ %i.iy, %bb.bs ], [ %i.iz, %bb.bt ], [ %i.ja, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not183 = icmp eq i8 %.sroa.0.0.i200, -2
  br i1 %.not183, label %.peel.next, label %.loopexit, !llvm.loop !10436

.lr.ph.peel.next:                                 ; preds = %bb.bq, %bb.bz
  %.sroa.089.0278 = phi ptr [ %i.jb, %bb.bz ], [ %i.if, %bb.bq ] ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.089.0278, i64 72 ; 2 uses
  %i.jc = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1688, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not184 = icmp eq i8 %i.jc, -2
  br i1 %.not184, label %._crit_edge339, label %.loopexit

._crit_edge339:                                   ; preds = %.lr.ph.peel.next
  %.pre340 = load i8, ptr %i.fh, align 4, !range !1682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.089.0278, i64 48
  store ptr %i.jd, ptr %i.n, align 8
  store i8 %.pre340, ptr %i.fn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4135.0..sroa_idx, align 8
  %i.je = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1686, ptr noundef nonnull %i.m) ; 2 uses
  %.not186 = icmp eq i8 %i.je, -2
  br i1 %.not186, label %bb.bv, label %.loopexit327

.loopexit327:                                     ; preds = %bb.bk, %._crit_edge339
  %.lcssa = phi i8 [ %i.je, %._crit_edge339 ], [ %i.ii, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.loopexit

bb.bv:                                            ; preds = %._crit_edge339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.jf = load i32, ptr %.sroa.089.0278, align 8, !range !102, !noundef !5
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.089.0278, i64 4
  %i.jh = trunc nuw i32 %i.jf to i1
  br i1 %i.jh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ji = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1691, ptr noundef nonnull inttoptr (i64 7 to ptr)) ; 2 uses
  %.not189 = icmp eq i8 %i.ji, -2
  br i1 %.not189, label %bb.ca, label %.loopexit

bb.bx:                                            ; preds = %bb.bv
  %i.jj = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1689, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not187 = icmp eq i8 %i.jj, -2
  br i1 %.not187, label %bb.by, label %.loopexit

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.089.0278, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.089.0278, i64 64
  %i.jn = load i64, ptr %i.jm, align 8, !noundef !5
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.jn
  store ptr %i.jl, ptr %i.fo, align 8
  store ptr %i.jo, ptr %i.fp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %i.jp = call noundef i8 @_RINvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB6_12HirFormatter12write_joinedINtB6_22ExpressionStoreAdapterRNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterB1D_ENCNvMsk_B6_B18_4wrap0EEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1690, i64 noundef 3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not188 = icmp eq i8 %i.jp, -2
  br i1 %.not188, label %bb.bz, label %.loopexit

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %i.jq = icmp eq ptr %i.jb, %i.ie
  br i1 %i.jq, label %.critedge, label %.lr.ph.peel.next, !llvm.loop !10440

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.jr = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.jg, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not190 = icmp eq i8 %i.jr, -2
  br i1 %.not190, label %bb.bz, label %.loopexit

.critedge:                                        ; preds = %bb.bz, %.loopexit322, %bb.bq
  %i.js = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1681, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not191 = icmp eq i8 %i.js, -2
  br i1 %.not191, label %._crit_edge.thread, label %.loopexit

._crit_edge.thread:                               ; preds = %.loopexit322.thread, %.critedge
  %i.jt = load i8, ptr %i.gu, align 1, !range !97, !noundef !5
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.cb, label %bb.bb

bb.cb:                                            ; preds = %._crit_edge.thread
  %i.jv = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1681, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not192 = icmp eq i8 %i.jv, -2
  br i1 %.not192, label %bb.bb, label %.loopexit

bb.cc:                                            ; preds = %bb.be
  %i.jw = load i32, ptr %i.gz, align 4, !range !710, !noundef !5
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.ce, label %bb.co

bb.cd:                                            ; preds = %bb.be
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1694) #42
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !noundef !5
  %i.ka = zext i32 %i.jz to i64                   ; 3 uses
  %i.kb = icmp ugt i64 %i.fk, %i.ka
  br i1 %i.kb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.ka ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 8, !range !10441, !noundef !5 ; 2 uses
  %i.ke = icmp ne i32 %i.kd, 6
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp eq i32 %i.kd, 5
  br i1 %i.kf, label %bb.ch, label %bb.co

bb.cg:                                            ; preds = %bb.ce
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ka, i64 noundef %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1695) #42
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !nonnull !5, !noundef !5
  %i.ki = load i64, ptr %i.kh, align 8, !noundef !5
  %i.kj = icmp eq i64 %i.ki, 1
  br i1 %i.kj, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.kk = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1696, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not173 = icmp eq i8 %i.kk, -2
  br i1 %.not173, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.kl = call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE8data_rawCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.kg)
  %i.km = load ptr, ptr %i.kg, align 8, !nonnull !5, !noundef !5
  %i.kn = load i64, ptr %i.km, align 8, !noundef !5
  %.not174 = icmp eq i64 %i.kn, 0
  br i1 %.not174, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.ko = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.kl, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not175 = icmp eq i8 %i.ko, -2
  br i1 %.not175, label %bb.cm, label %.loopexit

bb.cl:                                            ; preds = %bb.cj
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1697) #42
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.kp = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1698, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not176 = icmp eq i8 %i.kp, -2
  br i1 %.not176, label %bb.co, label %.loopexit

bb.cn:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.kq = call noundef i8 @_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.gz, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not172 = icmp eq i8 %i.kq, -2
  br i1 %.not172, label %bb.co, label %.loopexit

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cf, %bb.cc
  %i.kr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !5
  %.not177 = icmp eq i64 %i.ks, 0
  br i1 %.not177, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !range !102, !noundef !5
  %i.kw = trunc nuw i32 %i.kv to i1
  br i1 %i.kw, label %bb.cr, label %bb.bb

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1699) #42
  unreachable

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !noundef !5 ; 2 uses
  store i32 %i.ky, ptr %i.o, align 4
  %i.kz = zext i32 %i.ky to i64                   ; 3 uses
  %i.la = icmp ugt i64 %i.fk, %i.kz
  br i1 %i.la, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.kz ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 8, !range !10441, !noundef !5 ; 2 uses
  %i.ld = icmp ne i32 %i.lc, 6
  call void @llvm.assume(i1 %i.ld)
  %i.le = icmp eq i32 %i.lc, 5
  br i1 %i.le, label %bb.cu, label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1700) #42
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !nonnull !5, !noundef !5
  %i.lh = load i64, ptr %i.lg, align 8, !noundef !5
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %.sink.split, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %i.lj = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1701, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 2 uses
  %.not178 = icmp eq i8 %i.lj, -2
  br i1 %.not178, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.lk = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not179 = icmp eq i8 %i.lk, -2
  br i1 %.not179, label %.sink.split, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sroa.0.6 = phi i8 [ %i.lj, %bb.cv ], [ %i.lk, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ci, %bb.ck, %bb.cm, %bb.cn, %bb.bd, %bb.cb, %.critedge, %bb.ax, %bb.bf, %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202.peel, %.lr.ph.preheader, %.lr.ph.preheader.thread, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.ay, %bb.br, %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202, %bb.ca, %bb.bw, %.lr.ph.peel.next, %bb.bx, %bb.by, %bb.cx, %.loopexit327
  %.sroa.0.7 = phi i8 [ %i.jr, %bb.ca ], [ %.sroa.0.0.i200, %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202 ], [ %.lcssa, %.loopexit327 ], [ %.sroa.0.6, %bb.cx ], [ %i.jj, %bb.bx ], [ %i.ji, %bb.bw ], [ %i.jp, %bb.by ], [ %i.jc, %.lr.ph.peel.next ], [ %i.iw, %bb.br ], [ %i.gy, %bb.bd ], [ %i.kp, %bb.cm ], [ %i.hg, %bb.bf ], [ %i.js, %.critedge ], [ %i.ib, %.lr.ph.preheader.thread ], [ %i.im, %bb.bm ], [ %i.is, %bb.bn ], [ %i.it, %bb.bo ], [ %i.iu, %bb.bp ], [ %i.jv, %bb.cb ], [ %i.gn, %bb.ax ], [ %i.kk, %bb.ci ], [ %i.ko, %bb.ck ], [ %i.kq, %bb.cn ], [ %i.hx, %.lr.ph.preheader ], [ %.sroa.0.0.i200.peel, %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit202.peel ], [ %i.gp, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6208)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit237

bb.cy:                                            ; preds = %bb.x
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cz:                                            ; preds = %bb.x
  resume { ptr, i32 } %i.el
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtB7_6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtB5_5Debug3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEINtNtNtBa_5slice4iter4IterB14_EECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtB7_6option6OptionNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexENtB5_5Debug3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEINtNtNtBa_5slice4iter4IterB14_EECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtB7_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeENtB5_5Debug3fmtBV_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5infer11BindingModeEINtNtNtBa_5slice4iter4IterB14_EEB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtB7_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyENtB5_5Debug3fmtBX_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEINtNtNtBa_5slice4iter4IterB14_EEB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtB7_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtB5_5Debug3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEINtNtNtBa_5slice4iter4IterB14_EECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs8K4cjrcxBsw_6hir_ty13solver_errors20StoredTraitPredicateNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8K4cjrcxBsw_6hir_ty13solver_errors20StoredTraitPredicateINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs8K4cjrcxBsw_6hir_ty5infer16BreakableContextNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8K4cjrcxBsw_6hir_ty5infer16BreakableContextINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
end_hunk_1
