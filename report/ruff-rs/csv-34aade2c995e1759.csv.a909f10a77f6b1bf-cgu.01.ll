Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/csv-34aade2c995e1759.csv.a909f10a77f6b1bf-cgu.01?download=true
inline.NumInlined: 57
inline.NumDeleted: 38
begin_hunk_0_@_RNvXNtCsevMXN6mIFpb_3csv11byte_recordNtB2_10ByteRecordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i.i, label %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit, label %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i

_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i: ; preds = %bb.d
  %i.k = getelementptr [8 x i8], ptr %i.h, i64 %i.c
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !noalias !59, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp ugt i64 %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit.thread, !prof !8

bb.e:                                             ; preds = %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
  unreachable

_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !62, !nonnull !3, !noundef !3
  br label %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit8

_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit.thread: ; preds = %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !65, !noundef !3 ; 2 uses
  %.not.i.i380 = icmp ugt i64 %i.c, %i.s
  br i1 %.not.i.i380, label %bb.f, label %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i5, !prof !7

bb.f:                                             ; preds = %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit.thread
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !62
  unreachable

_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i5: ; preds = %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !65, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.c
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !noalias !62, !noundef !3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noundef !3 ; 2 uses
  %.not.i6 = icmp ugt i64 %i.x, %i.z
  br i1 %.not.i6, label %bb.g, label %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit8, !prof !8

bb.g:                                             ; preds = %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i5
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
  unreachable

_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit8: ; preds = %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit, %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i5
  %i.aa = phi ptr [ %i.u, %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i5 ], [ %i.q, %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit ]
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ab = load ptr, ptr %.in, align 8, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ag = icmp eq i64 %i.c, 0
  br i1 %i.ag, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipNtNtCsevMXN6mIFpb_3csv11byte_record14ByteRecordIterBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRShB2O_ENCNvXBT_NtBT_10ByteRecordNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEBV_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit8
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !67, !noundef !3 ; 2 uses
  br label %.lr.ph

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkTRShB1c_ENCNvXNtCsevMXN6mIFpb_3csv11byte_recordNtB1p_10ByteRecordNtNtBe_3cmp9PartialEq2eq0E0B1r_.exit.i
  %i.ai = icmp eq i64 %i.ao, %i.c
  br i1 %i.ai, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipNtNtCsevMXN6mIFpb_3csv11byte_record14ByteRecordIterBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRShB2O_ENCNvXBT_NtBT_10ByteRecordNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEBV_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.aj = phi i64 [ %i.an, %bb.h ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.ak = phi i64 [ %i.ao, %bb.h ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.al = phi i64 [ %i.at, %bb.h ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 8, !noalias !67, !noundef !3 ; 5 uses
  %i.ao = add nuw i64 %i.ak, 1                    ; 2 uses
  %i.ap = icmp ult i64 %i.an, %i.aj
  %.not5.i.i.i.i = icmp ugt i64 %i.an, %i.ah
  %or.cond.i.i.i.i = or i1 %i.ap, %.not5.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.aj, i64 noundef %i.an, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15, !noalias !67
  unreachable

bb.j:                                             ; preds = %.lr.ph
  %i.aq = sub nuw i64 %i.an, %i.aj                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ak
  %i.at = load i64, ptr %i.as, align 8, !noalias !78, !noundef !3 ; 5 uses
  %i.au = load i64, ptr %i.af, align 8, !noalias !78, !noundef !3 ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.al
  %.not5.i18.i.i.i = icmp ugt i64 %i.at, %i.au
  %or.cond.i19.i.i.i = or i1 %i.av, %.not5.i18.i.i.i
  br i1 %or.cond.i19.i.i.i, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.at, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15, !noalias !78
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = sub nuw i64 %i.at, %i.al
  %i.ax = icmp eq i64 %i.aq, %i.aw
  br i1 %i.ax, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkTRShB1c_ENCNvXNtCsevMXN6mIFpb_3csv11byte_recordNtB1p_10ByteRecordNtNtBe_3cmp9PartialEq2eq0E0B1r_.exit.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipNtNtCsevMXN6mIFpb_3csv11byte_record14ByteRecordIterBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRShB2O_ENCNvXBT_NtBT_10ByteRecordNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEBV_.exit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkTRShB1c_ENCNvXNtCsevMXN6mIFpb_3csv11byte_recordNtB1p_10ByteRecordNtNtBe_3cmp9PartialEq2eq0E0B1r_.exit.i: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.ay, i64 %i.aq), !noalias !81
  %.not.i9 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i9, label %bb.h, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipNtNtCsevMXN6mIFpb_3csv11byte_record14ByteRecordIterBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRShB2O_ENCNvXBT_NtBT_10ByteRecordNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEBV_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipNtNtCsevMXN6mIFpb_3csv11byte_record14ByteRecordIterBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRShB2O_ENCNvXBT_NtBT_10ByteRecordNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEBV_.exit: ; preds = %bb.h, %bb.l, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkTRShB1c_ENCNvXNtCsevMXN6mIFpb_3csv11byte_recordNtB1p_10ByteRecordNtNtBe_3cmp9PartialEq2eq0E0B1r_.exit.i, %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit8, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit8 ], [ false, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkTRShB1c_ENCNvXNtCsevMXN6mIFpb_3csv11byte_recordNtB1p_10ByteRecordNtNtBe_3cmp9PartialEq2eq0E0B1r_.exit.i ], [ false, %bb.l ], [ true, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsevMXN6mIFpb_3csv11byte_record8PositionNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !86, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.a, align 8, !noalias !87
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecordNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !86, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !3, !nonnull !3
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 11)
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !91, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !91, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !91, !noundef !3 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.n
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !91
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i64 %i.j, 0
  br i1 %.not4.i.i, label %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit, label %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i

_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i: ; preds = %bb.d
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %i.j
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load i64, ptr %i.p, align 8, !noalias !91, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.s = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i, label %bb.e, label %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit, !prof !8

bb.e:                                             ; preds = %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
  unreachable

_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit: ; preds = %bb.d, %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i
  %.sroa.0.0.i3.i = phi i64 [ %i.q, %_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end.exit.i ], [ 0, %bb.d ]
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i3.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.t = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesNtNtCsevMXN6mIFpb_3csv5debug5BytesINtNtNtNtBa_4iter8adapters3map3MapNtNtB17_11byte_record14ByteRecordIterNcB13_0EEB17_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit
  %i.v = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.w = load ptr, ptr %i.d, align 8, !nonnull !3, !align !86, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !3, !nonnull !3
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1)
  br i1 %i.z, label %bb.g, label %2

2:                                                ; preds = %bb.f
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit, %bb.f, %bb.a, %2
  %.sroa.0.0 = phi i1 [ false, %2 ], [ true, %bb.f ], [ true, %bb.a ], [ true, %_RNvMs5_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_10ByteRecord8as_slice.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsevMXN6mIFpb_3csv(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsevMXN6mIFpb_3csv(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsevMXN6mIFpb_3csv(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsevMXN6mIFpb_3csv(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsevMXN6mIFpb_3csv(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECsevMXN6mIFpb_3csv(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE6resizeCsevMXN6mIFpb_3csv(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE6resizeCsevMXN6mIFpb_3csv(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesNtNtCsevMXN6mIFpb_3csv5debug5BytesINtNtNtNtBa_4iter8adapters3map3MapNtNtB17_11byte_record14ByteRecordIterNcB13_0EEB17_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_5Debug3fmtCsevMXN6mIFpb_3csv(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end: argument 0"}
!6 = distinct !{!6, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end"}
!7 = !{!"branch_weights", i32 4001, i32 4000000}
!8 = !{!"branch_weights", i32 3433398, i32 2144050250}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvXsf_NtCsevMXN6mIFpb_3csv11byte_recordRNtB5_10ByteRecordNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter: argument 1"}
!11 = distinct !{!11, !"_RNvXsf_NtCsevMXN6mIFpb_3csv11byte_recordRNtB5_10ByteRecordNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_RNvXsf_NtCsevMXN6mIFpb_3csv11byte_recordRNtB5_10ByteRecordNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter: argument 0"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end: argument 0"}
!16 = distinct !{!16, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end"}
!17 = !{!13, !10}
!18 = !{!15, !13, !10}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvXsh_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_14ByteRecordIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 0"}
!21 = distinct !{!21, !"_RNvXsh_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_14ByteRecordIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RNvXsh_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_14ByteRecordIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 0"}
!24 = distinct !{!24, !"_RNvXsh_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_14ByteRecordIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end: argument 0"}
!27 = distinct !{!27, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsevMXN6mIFpb_3csv: argument 0"}
!30 = distinct !{!30, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsevMXN6mIFpb_3csv"}
!31 = !{i64 0, i64 2}
!32 = !{i64 0, i64 -9223372036854775807}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemjNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsevMXN6mIFpb_3csv: argument 0"}
!36 = distinct !{!36, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemjNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsevMXN6mIFpb_3csv"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCsevMXN6mIFpb_3csv11byte_record15ByteRecordInnerE3newBH_: argument 0"}
!39 = distinct !{!39, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCsevMXN6mIFpb_3csv11byte_record15ByteRecordInnerE3newBH_"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end: argument 0"}
!42 = distinct !{!42, !"_RNvMs8_NtCsevMXN6mIFpb_3csv11byte_recordNtB5_6Bounds3end"}
!43 = !{!44}
end_hunk_0
