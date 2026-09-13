Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.14?download=true
inline.NumInlined: 5509
inline.NumDeleted: 2264
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXsl_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB5_8BinaryOpNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a
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
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !9
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
  %i.e = load i32, ptr %0, align 4, !range !34, !noundef !9
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
  %.sroa.6208 = alloca ptr, align 8               ; 8 uses
  %.sroa.10 = alloca ptr, align 8                 ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [96 x i8], align 8                ; 13 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [96 x i8], align 8                ; 15 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = load i32, ptr %0, align 8, !range !33, !noundef !9 ; 2 uses
  switch i32 %i.y, label %default.unreachable403 [
    i32 1, label %bb.c
    i32 0, label %bb.b
    i32 2, label %.thread215
  ]

default.unreachable403:                           ; preds = %._crit_edge334, %bb.ba, %bb.as, %._crit_edge336, %bb.aj, %.thread215, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !9, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %.thread215

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !range !17, !noundef !9
  %i.af = trunc nuw i32 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !9, !noundef !9
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
  %i.am = load i8, ptr %.sroa.03.0219, align 4, !range !29, !noundef !9
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

.loopexit236:                                     ; preds = %.lr.ph.a, %.preheader.preheader459, %bb.q, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197, %bb.g, %.thread215, %.thread215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path8segments(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_12PathSegments4iter(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !10419)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !10420, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted.i = load ptr, ptr %i.ap, align 8, !alias.scope !10420 ; 2 uses
  %.promoted14.i = load i64, ptr %i.u, align 8, !alias.scope !10419 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !10419
  %.fr28.i = freeze i64 %i.aw                     ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.fr28.i, 40 ; 2 uses
  %i.ax = icmp eq i64 %.fr28.i, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !10419, !nonnull !9 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.val.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !10419 ; 2 uses
  %.promoted15.i = load ptr, ptr %i.as, align 8, !alias.scope !10419 ; 4 uses
  %.promoted20.i = load ptr, ptr %i.at, align 8, !alias.scope !10419 ; 2 uses
  %.promoted21.i = load ptr, ptr %i.au, align 8, !alias.scope !10419 ; 4 uses
  %.promoted22.i = load ptr, ptr %i.ay, align 8, !alias.scope !10419 ; 2 uses
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
  store ptr %i.br, ptr %i.at, align 8, !alias.scope !10421
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
  call void @llvm.experimental.noalias.scope.decl(metadata !10422)
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.us.i, i64 33
  %i.cf = load i8, ptr %i.ce, align 1, !range !20, !alias.scope !10423, !noalias !10424, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !10425)
  call void @llvm.experimental.noalias.scope.decl(metadata !10426)
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

bb.k:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.cm, 2
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = trunc nuw i64 %i.cm to i1
  %.not.i.us.peel.i.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, null ; 2 uses
  br i1 %i.cq, label %.split.us.preheader.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i.i.i:              ; preds = %bb.l
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.i, label %select.unfold.us.peel.i.i.i.i.i.i.i.i, label %.sink.split.i.us.peel.i.i.i.i.i.i.i.i

.sink.split.i.us.peel.i.i.i.i.i.i.i.i:            ; preds = %.split.us.preheader.i.i.i.i.i.i.i.i
  %i.cr = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, %i.cl
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, i64 40 ; 2 uses
  br i1 %i.cr, label %select.unfold.us.peel.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

select.unfold.us.peel.i.i.i.i.i.i.i.i:            ; preds = %.sink.split.i.us.peel.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i.i
  %i.ct = phi ptr [ null, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cj, %.split.us.preheader.i.i.i.i.i.i.i.i ]
  %.not4.us.peel.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not4.us.peel.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, label %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i

.sink.split.i.us.peel26.i.i.i.i.i.i.i.i:          ; preds = %select.unfold.us.peel.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.l
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %.split.i.i.i.i.i.i.i.i
  %i.cw = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, %i.cl
  %i.cx = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, i64 40 ; 2 uses
  br i1 %i.cw, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i, %select.unfold.us.peel.i.i.i.i.i.i.i.i
  %i.cy = phi ptr [ %i.ci, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.ci, %.split.i.i.i.i.i.i.i.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cz = phi ptr [ null, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cj, %.split.i.i.i.i.i.i.i.i ], [ %i.ct, %select.unfold.us.peel.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.da = phi ptr [ %i.ck, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.ck, %.split.i.i.i.i.i.i.i.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i6.i.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.i, null
  %i.db = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.i, %i.ba
  %i.dc = getelementptr inbounds nuw i8, ptr %spec.select.i8.i.i.i.i.i.i.i25.i, i64 40
  %or.cond450 = select i1 %.not.i6.i.i.i.i.i.i.i.i, i1 true, i1 %i.db
  br i1 %or.cond450, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i, %bb.k
  %i.dd = phi i64 [ %i.ch, %bb.k ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %i.ch, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.ch, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.ch, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.ch, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.de = phi ptr [ %i.ci, %bb.k ], [ %i.cy, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %i.ci, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.ci, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cy, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.df = phi ptr [ %i.cj, %bb.k ], [ %i.cz, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %i.cs, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cv, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.cx, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cz, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %spec.select.i8.i.i.i.i.i.i.i24.i = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i25.i, %bb.k ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.i, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.i, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.dc, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ]
  %i.dg = phi ptr [ %i.ck, %bb.k ], [ %i.da, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %i.ck, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.ck, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.da, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ]
  %i.dh = phi ptr [ %i.cl, %bb.k ], [ %i.cl, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %i.cl, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cu, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.cl, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cl, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ]
  %spec.select.i.us.peel27.i.i.i.i.i.i.i18.i = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, %bb.k ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %i.cs, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cv, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.cx, %.sink.split.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ]
  %i.di = phi i64 [ 2, %bb.k ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ 1, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ 1, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ 0, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cm, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ null, %bb.k ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.ck, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  %spec.select.i.i.i.i.i = select i1 %.not.i1.i.i.i.i, ptr %.val.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i ; 3 uses
  %.not7.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i, null
  br i1 %.not7.i.i.i, label %.loopexit233, label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10422)
  %i.dj = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 33
  %i.dk = load i8, ptr %i.dj, align 1, !range !20, !alias.scope !10423, !noalias !10424, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !10425)
  call void @llvm.experimental.noalias.scope.decl(metadata !10426)
  %i.dl = and i8 %i.dk, 1
  %or.cond.not.i.i = icmp eq i8 %i.dl, 0
  br i1 %or.cond.not.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i, label %.split27.us.i

.split27.us.i:                                    ; preds = %bb.m, %bb.j
  %storemerge282 = phi ptr [ %i.ca, %bb.j ], [ %i.df, %bb.m ]
  %storemerge281 = phi ptr [ %i.bz, %bb.j ], [ %i.de, %bb.m ]
  %storemerge280 = phi i64 [ %i.by, %bb.j ], [ %i.dd, %bb.m ]
  %.us-phi.i = phi ptr [ %spec.select.i.i.i.i.us.i, %bb.j ], [ %spec.select.i.i.i.i.i, %bb.m ] ; 2 uses
  store ptr %storemerge282, ptr %i.as, align 8
  store ptr %storemerge281, ptr %i.au, align 8
  store i64 %storemerge280, ptr %i.u, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !10427, !noalias !10419, !noundef !9
  %.not4.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not4.i.i.i.i, label %bb.n, label %bb.ah

bb.n:                                             ; preds = %.split27.us.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #42, !noalias !10428
  unreachable

bb.o:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.an, %bb.e ], [ %i.al, %bb.d ], [ %i.ao, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit237

bb.p:                                             ; preds = %.thread215
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.03.0219, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !noundef !9 ; 3 uses
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.s, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p
  %i.dr = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1684, ptr noundef nonnull inttoptr (i64 11 to ptr)) ; 2 uses
  %.not157.peel = icmp eq i8 %i.dr, -2
  br i1 %.not157.peel, label %.preheader.preheader459, label %.loopexit237

.preheader.preheader459:                          ; preds = %.preheader.preheader
  %exitcond.not494 = icmp eq i8 %i.dp, 1
  br i1 %exitcond.not494, label %.loopexit236, label %bb.u

bb.q:                                             ; preds = %.thread215
  %i.ds = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1685, ptr noundef nonnull inttoptr (i64 11 to ptr)) ; 2 uses
  %.not154 = icmp eq i8 %i.ds, -2
  br i1 %.not154, label %.loopexit236, label %.loopexit237

bb.r:                                             ; preds = %.thread215
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.03.0219, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !range !49, !noundef !9
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.0219, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !noundef !9
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !9, !noundef !9
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !9, !align !12, !noundef !9
  %i.eb = tail call noundef nonnull align 8 ptr @_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate10extra_dataDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EB17_(i32 noundef %i.du, i32 noundef %i.dw, ptr noundef nonnull %i.dy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.ea) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !noundef !9
  %.not = icmp eq ptr %i.ed, null
  br i1 %.not, label %bb.w, label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.ee = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1682, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 2 uses
  %.not158 = icmp eq i8 %i.ee, -2
  br i1 %.not158, label %.loopexit236, label %.loopexit237

.lr.ph.a:                                         ; preds = %bb.t
  %i.ef = add i8 %.sroa.0120.0496, 1              ; 2 uses
  %.not155 = icmp eq i8 %i.ef, %i.dp
  br i1 %.not155, label %.loopexit236, label %bb.u, !llvm.loop !10397

bb.t:                                             ; preds = %bb.u
  %i.eg = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1684, ptr noundef nonnull inttoptr (i64 11 to ptr)) ; 2 uses
  %.not157 = icmp eq i8 %i.eg, -2
  br i1 %.not157, label %.lr.ph.a, label %.loopexit237, !llvm.loop !10397

bb.u:                                             ; preds = %.preheader.preheader459, %.lr.ph.a
  %.sroa.0120.0496 = phi i8 [ %i.ef, %.lr.ph.a ], [ 1, %.preheader.preheader459 ]
  %i.eh = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1683, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not156 = icmp eq i8 %i.eh, -2
  br i1 %.not156, label %bb.t, label %.loopexit237

bb.v:                                             ; preds = %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ej = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ei)
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v
  %storemerge = phi ptr [ %i.ej, %bb.v ], [ @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols12dollar_crate10SYMBOL_STR, %bb.r ]
  store ptr %storemerge, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs5_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4125.0..sroa_idx, align 8
  %i.ek = invoke noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1686, ptr noundef nonnull %i.v)
          to label %bb.y unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.el = landingpad { ptr, i32 }
          cleanup
  %.val194 = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty(ptr nonnull %.val194) #39
          to label %bb.cz unwind label %bb.cy

bb.y:                                             ; preds = %bb.w
  %.not153 = icmp eq i8 %i.ek, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.em = ptrtoint ptr %.val to i64
  %i.en = and i64 %i.em, 1
  %.not.i.i.i196 = icmp eq i64 %i.en, 0           ; 2 uses
  br i1 %.not153, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i.i.i196, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = getelementptr i8, ptr %.val, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  %i.ep = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.eo)
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.eq ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.er, ptr %i.d, align 8
  %i.es = load atomic i64, ptr %i.er acquire, align 8
  %i.et = icmp eq i64 %i.es, 2
  br i1 %i.et, label %bb.ab, label %bb.ac, !prof !10

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.er, ptr %i.c, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.z, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit237

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
  br i1 %i.ez, label %bb.af, label %bb.ag, !prof !10

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
  %i.fa = load ptr, ptr %.us-phi.i, align 8, !alias.scope !10427, !noalias !10419, !nonnull !9, !noundef !9 ; 2 uses
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
  %.sroa.044.sroa.10.0.copyload = load ptr, ptr %.sroa.044.sroa.10.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.044.sroa.3.0.copyload, 40
  %i.fc = icmp eq i64 %.sroa.044.sroa.3.0.copyload, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !nonnull !9 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fk = load i64, ptr %i.fj, align 8            ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !9 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10429)
  %i.fq = load i32, ptr %i.fa, align 4, !range !33, !alias.scope !10429, !noalias !10430, !noundef !9
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
  %i.fu = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1707, ptr noundef nonnull inttoptr (i64 13 to ptr)), !noalias !10431
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
end_hunk_0
