inline.NumInlined: 770
inline.NumDeleted: 96
begin_hunk_0_@_RNvXs0_NtNtCsjNt1Wzngcv_9ty_server8document5rangeNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures5RangeNtB5_8RangeExt13to_text_range:bb.a
bb.a:
  %i.a = tail call { i32, i32 } @_RNvXs1_NtNtCsjNt1Wzngcv_9ty_server8document5rangeNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8PositionNtB5_11PositionExt12to_text_size(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %3, i32 noundef %4, i32 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, i8 noundef %7) ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1        ; 2 uses
  %i.d = trunc i32 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call { i32, i32 } @_RNvXs1_NtNtCsjNt1Wzngcv_9ty_server8document5rangeNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8PositionNtB5_11PositionExt12to_text_size(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %3, i32 noundef %4, i32 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, i8 noundef %7) ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0
  %i.h = extractvalue { i32, i32 } %i.f, 1        ; 2 uses
  %i.i = trunc i32 %i.g to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %i.c, %i.h
  br i1 %.not, label %bb.e, label %bb.f, !prof !1459

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.sink = phi i32 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i32 %.sink, ptr %0, align 4
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @546, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @548) #16
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.k, align 4
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs1_NtNtCsjNt1Wzngcv_9ty_server8document5rangeNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8PositionNtB5_11PositionExt12to_text_size(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %5, i8 noundef range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 13 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call noundef nonnull ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6source11source_text(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %2, i32 noundef %3, i32 noundef %4)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = invoke noundef nonnull ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6source10line_index(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %2, i32 noundef %3, i32 noundef %4)
          to label %bb.d unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.g, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !1575, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !1575
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db6source15SourceTextInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit unwind label %bb.ad

bb.c:                                             ; preds = %bb.n, %bb.j, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit

bb.d:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i64, ptr %i.k, align 8, !range !3, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  %i.r = invoke noundef align 8 ptr %i.q(ptr noundef nonnull %1, i32 noundef %3, i32 noundef %4)
          to label %bb.k unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.d
  %i.s = load i32, ptr %0, align 4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.z = invoke noundef i32 @_RNvNtNtCsjNt1Wzngcv_9ty_server8document5range25lsp_position_to_text_size(i32 noundef %i.s, i32 noundef %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i8 noundef %6)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %switch.lookup41, %bb.w, %bb.x, %switch.lookup, %bb.r, %bb.l, %bb.f, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !1585, !nonnull !4, !noundef !4
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !1585
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit unwind label %bb.ad

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.ae = load ptr, ptr %i.b, align 8, !alias.scope !1595, !nonnull !4, !noundef !4
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !1595
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33 unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.ah = load ptr, ptr %i.c, align 8, !alias.scope !1605, !nonnull !4, !noundef !4
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !1605
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36
  %.sroa.5.0.ph = phi i32 [ %.sroa.5.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36 ], [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33 ]
  %.sroa.0.0.ph = phi i32 [ %.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36 ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33 ]
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db6source15SourceTextInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36
  %.sroa.5.0 = phi i32 [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33 ], [ %.sroa.5.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36 ], [ %.sroa.5.0.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37.sink.split ]
  %.sroa.0.0 = phi i32 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit33 ], [ %.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36 ], [ %.sroa.0.0.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.al = insertvalue { i32, i32 } %i.ak, i32 %.sroa.5.0, 1
  ret { i32, i32 } %i.al

bb.k:                                             ; preds = %bb.e
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = invoke noundef i64 @_RNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB2_16NotebookDocument17cell_index_by_uri(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %5)
          to label %bb.o unwind label %bb.g       ; 2 uses

bb.m:                                             ; preds = %bb.o, %bb.k, %bb.ab
  %.sroa.5.1 = phi i32 [ %i.cg, %bb.ab ], [ undef, %bb.k ], [ undef, %bb.o ] ; 2 uses
  %.sroa.0.1 = phi i32 [ 1, %bb.ab ], [ 0, %bb.k ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.an = load ptr, ptr %i.b, align 8, !alias.scope !1615, !nonnull !4, !noundef !4
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !1615
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36 unwind label %bb.c

bb.o:                                             ; preds = %bb.l
  %.not29 = icmp eq i64 %i.am, 0
  br i1 %.not29, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = add i64 %i.am, -1                       ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 392
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.as
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.08.0 = phi i32 [ %i.ax, %bb.q ], [ 0, %bb.p ]
  %i.ay = load i32, ptr %0, align 4, !noundef !4
  %i.az = invoke noundef i64 @_RNvNtNtCsjNt1Wzngcv_9ty_server8document5range18u32_index_to_usize(i32 noundef %i.ay)
          to label %bb.s unwind label %bb.g

bb.s:                                             ; preds = %bb.r
  %7 = tail call i64 @llvm.uadd.sat.i64(i64 %i.az, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ba = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !range !3, !noundef !4
  %i.bd = icmp eq i64 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 368
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 376
  br label %switch.lookup

bb.u:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.u, %bb.t
  %.sroa.311.0.in = phi ptr [ %i.bh, %bb.t ], [ %i.bi, %bb.u ]
  %.sroa.010.0.in = phi ptr [ %i.bg, %bb.t ], [ %i.be, %bb.u ]
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !nonnull !4, !noundef !4
  %.sroa.311.0 = load i64, ptr %.sroa.311.0.in, align 8, !noundef !4
  %i.bj = shl nuw nsw i8 %6, 3
  %switch.shiftamt = zext nneg i8 %i.bj to i24
  %switch.downshift = lshr i24 513, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.bk = invoke { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex15source_location(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i32 noundef %.sroa.08.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0, i64 noundef %.sroa.311.0, i8 noundef %switch.masked)
          to label %bb.v unwind label %bb.g       ; 2 uses

bb.v:                                             ; preds = %switch.lookup
  %i.bl = extractvalue { i64, i64 } %i.bk, 0      ; 3 uses
  %i.bm = extractvalue { i64, i64 } %i.bk, 1      ; 3 uses
  store i64 %i.bl, ptr %i.a, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i64 %i.bm, 1
  br i1 %i.bp, label %bb.w, label %bb.x, !prof !1616

bb.w:                                             ; preds = %bb.v
  %i.bq = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %i.bq)
  %8 = add i64 %7, -1
  %i.br = call i64 @llvm.uadd.sat.i64(i64 %i.bl, i64 %8)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !4
  %i.bu = invoke noundef i64 @_RNvNtNtCsjNt1Wzngcv_9ty_server8document5range18u32_index_to_usize(i32 noundef %i.bt)
          to label %bb.y unwind label %bb.g

bb.x:                                             ; preds = %bb.v
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCs9BeaGo73rC4_16ruff_source_file10line_index10OneIndexedBM_ECsjNt1Wzngcv_9ty_server(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @549, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @550) #16
          to label %bb.ac unwind label %bb.g

bb.y:                                             ; preds = %bb.w
  %i.bv = call i64 @llvm.uadd.sat.i64(i64 %i.bu, i64 1)
  %i.bw = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !range !3, !noundef !4
  %i.bz = icmp eq i64 %i.by, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 56 ; 2 uses
  br i1 %i.bz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 368
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 376
  br label %switch.lookup41

bb.aa:                                            ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  br label %switch.lookup41

switch.lookup41:                                  ; preds = %bb.aa, %bb.z
  %.sroa.014.0.in = phi ptr [ %i.cc, %bb.z ], [ %i.ca, %bb.aa ]
  %.sroa.315.0.in = phi ptr [ %i.cd, %bb.z ], [ %i.ce, %bb.aa ]
  %.sroa.315.0 = load i64, ptr %.sroa.315.0.in, align 8, !noundef !4
  %.sroa.014.0 = load ptr, ptr %.sroa.014.0.in, align 8, !nonnull !4, !noundef !4
  %i.cf = shl nuw nsw i8 %6, 3
  %switch.shiftamt43 = zext nneg i8 %i.cf to i24
  %switch.downshift44 = lshr i24 513, %switch.shiftamt43
  %switch.masked45 = trunc i24 %switch.downshift44 to i8
  %i.cg = invoke noundef i32 @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex6offset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef %i.br, i64 noundef %i.bv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.014.0, i64 noundef %.sroa.315.0, i8 noundef %switch.masked45)
          to label %bb.ab unwind label %bb.g

bb.ab:                                            ; preds = %switch.lookup41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit36: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  %i.ch = load ptr, ptr %i.c, align 8, !alias.scope !1626, !nonnull !4, !noundef !4
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !1626
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit37

bb.ac:                                            ; preds = %bb.x
  unreachable

bb.ad:                                            ; preds = %bb.h, %bb.b
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextECsjNt1Wzngcv_9ty_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexECsjNt1Wzngcv_9ty_server.exit, %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10ClientInfoNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !1246, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1627
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !1627
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @551, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @552)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1627
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures16ExecutionSummaryNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !1631, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1632
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !noalias !1632
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 15, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @553, ptr noalias noundef nonnull readonly captures(address, read_provenance) @266, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @554)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1632
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1D_1__NtBG_26TypeHierarchyPrepareParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1D_1__NtBa_26TypeHierarchyPrepareParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1F_1__NtBG_17TypeHierarchyItemNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1F_1__NtBa_17TypeHierarchyItemNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1A_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1J_1__NtBG_29TypeHierarchySupertypesParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1J_1__NtBa_29TypeHierarchySupertypesParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1L_1__NtBG_27TypeHierarchySubtypesParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1L_1__NtBa_27TypeHierarchySubtypesParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1K_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1R_1__NtBG_15InlayHintParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1R_1__NtBa_15InlayHintParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1y_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1X_1__NtBG_24DocumentDiagnosticParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1X_1__NtBa_24DocumentDiagnosticParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1_1__NtBG_8LocationNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1_1__NtBa_8LocationNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1p_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1b_1__NtBG_25SemanticTokensRangeParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress1b_1__NtBa_25SemanticTokensRangeParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress23_1__NtBG_25WorkspaceDiagnosticParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress23_1__NtBa_25WorkspaceDiagnosticParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress29_1__NtBG_29DidOpenNotebookDocumentParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress29_1__NtBa_29DidOpenNotebookDocumentParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2D_1__NtBG_16InitializeParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2D_1__NtBa_16InitializeParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1z_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}
end_hunk_0
begin_hunk_1_@_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressah_1__NtBa_33WorkspaceSymbolClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Q_7Visitor9expecting
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressah_1__NtBa_33WorkspaceSymbolClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Q_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressaj_1__NtBa_32ExecuteCommandClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1P_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressal_1__NtBa_41SemanticTokensWorkspaceClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Y_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressan_1__NtBa_35CodeLensWorkspaceClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1S_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressap_1__NtBa_31FileOperationClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressar_1__NtBa_38InlineValueWorkspaceClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1V_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressat_1__NtBa_36InlayHintWorkspaceClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressav_1__NtBa_37DiagnosticWorkspaceClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1U_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressax_1__NtBa_39FoldingRangeWorkspaceClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1W_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressaz_1__NtBa_37TextDocumentContentClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1U_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressb1_1__NtBa_26CodeLensClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressb3_1__NtBa_30DocumentLinkClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1N_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressb5_1__NtBa_31DocumentColorClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressb7_1__NtBa_36DocumentFormattingClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressb9_1__NtBa_41DocumentRangeFormattingClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Y_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbB_1__NtBa_34InlineCompletionClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbD_1__NtBa_38NotebookDocumentSyncClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1V_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbF_1__NtBa_36ShowMessageRequestClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbH_1__NtBa_30ShowDocumentClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1N_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbJ_1__NtBa_26StaleRequestSupportOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbL_1__NtBa_36RegularExpressionsClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbN_1__NtBa_26MarkdownClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbV_1__NtBa_31ChangeAnnotationsSupportOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbX_1__NtBa_23ClientSymbolKindOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1G_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbZ_1__NtBa_22ClientSymbolTagOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1F_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressb_1__NtBa_31DidChangeWorkspaceFoldersParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1N_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbb_1__NtBa_42DocumentOnTypeFormattingClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Z_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbd_1__NtBa_24RenameClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbf_1__NtBa_30FoldingRangeClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1N_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbh_1__NtBa_32SelectionRangeClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1P_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbj_1__NtBa_36PublishDiagnosticsClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbl_1__NtBa_31CallHierarchyClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbn_1__NtBa_32SemanticTokensClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1P_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbp_1__NtBa_36LinkedEditingRangeClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbr_1__NtBa_25MonikerClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbt_1__NtBa_31TypeHierarchyClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbv_1__NtBa_29InlineValueClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbx_1__NtBa_27InlayHintClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1K_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressbz_1__NtBa_28DiagnosticClientCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1L_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressc1_1__NtBa_26ClientSymbolResolveOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressc3_1__NtBa_27ClientCompletionItemOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1K_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressc5_1__NtBa_31ClientCompletionItemOptionsKindNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressc7_1__NtBa_26CompletionListCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressc9_1__NtBa_33ClientSignatureInformationOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Q_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscB_1__NtBa_42ClientSignatureParameterInformationOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Z_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscD_1__NtBa_27ClientCodeActionKindOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1K_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscF_1__NtB7_27ClientDiagnosticsTagOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscF_1__NtBa_27ClientDiagnosticsTagOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1K_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscH_1__NtB7_36ClientSemanticTokensRequestFullDeltaNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1Q_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscH_1__NtBa_36ClientSemanticTokensRequestFullDeltaNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscb_1__NtBa_30ClientCodeActionLiteralOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1N_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscd_1__NtBa_30ClientCodeActionResolveOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1N_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscf_1__NtBa_20CodeActionTagOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1D_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressch_1__NtBa_28ClientCodeLensResolveOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1L_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscj_1__NtBa_29ClientFoldingRangeKindOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscl_1__NtBa_25ClientFoldingRangeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscn_1__NtB7_23DiagnosticsCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1D_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscp_1__NtBa_34ClientSemanticTokensRequestOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscr_1__NtBa_29ClientInlayHintResolveOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressct_1__NtBa_34ClientShowMessageActionItemOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscv_1__NtBa_24CompletionItemTagOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscx_1__NtBa_34ClientCompletionItemResolveOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuresscz_1__NtBa_41ClientCompletionItemInsertTextModeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Y_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressp_1__NtBa_18FoldingRangeParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1A_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressv_1__NtBa_17DeclarationParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1z_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuressz_1__NtBa_20SelectionRangeParamsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1C_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -1, i64 -9223372036854775808}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!7 = distinct !{!7, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!10 = distinct !{!10, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!13 = distinct !{!13, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!16 = distinct !{!16, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!19 = distinct !{!19, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!22 = distinct !{!22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!25 = distinct !{!25, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!28 = distinct !{!28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!31 = distinct !{!31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!32 = distinct !{!32, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server: argument 0"}
!33 = distinct !{!33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!36 = distinct !{!36, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!37 = !{!35, !38}
!38 = distinct !{!38, !36, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!39 = !{!38}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!42 = distinct !{!42, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!43 = distinct !{!43, !42, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5M_1__NtB5_21SemanticTokensOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!46 = distinct !{!46, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5M_1__NtB5_21SemanticTokensOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!47 = !{!45, !48}
!48 = distinct !{!48, !46, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5M_1__NtB5_21SemanticTokensOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!49 = !{i8 0, i8 3}
!50 = !{!48}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 0"}
!53 = distinct !{!53, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server"}
!54 = !{!52, !55, !45, !48}
!55 = distinct !{!55, !53, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 1"}
!56 = !{!52, !45}
!57 = !{!55, !48}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!60 = distinct !{!60, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!61 = distinct !{!61, !62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server: argument 0"}
!62 = distinct !{!62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server"}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!65 = distinct !{!65, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!66 = distinct !{!66, !65, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6g_1__NtB5_14MonikerOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!69 = distinct !{!69, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6g_1__NtB5_14MonikerOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!70 = !{!68, !71}
!71 = distinct !{!71, !69, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6g_1__NtB5_14MonikerOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 0"}
!74 = distinct !{!74, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server"}
!75 = !{!73, !76, !68, !71}
!76 = distinct !{!76, !74, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 1"}
!77 = !{!73, !68}
!78 = !{!76, !71}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!81 = distinct !{!81, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!82 = distinct !{!82, !83, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server: argument 0"}
!83 = distinct !{!83, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server"}
!84 = !{i8 -1, i8 6}
!85 = !{!86, !88}
!86 = distinct !{!86, !87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!87 = distinct !{!87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!88 = distinct !{!88, !89, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server: argument 0"}
!89 = distinct !{!89, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!92 = distinct !{!92, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!93 = !{!91, !94}
!94 = distinct !{!94, !92, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!95 = !{!94}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!98 = distinct !{!98, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!99 = distinct !{!99, !98, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6i_1__NtB5_20TypeHierarchyOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!102 = distinct !{!102, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6i_1__NtB5_20TypeHierarchyOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!103 = !{!101, !104}
!104 = distinct !{!104, !102, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6i_1__NtB5_20TypeHierarchyOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 0"}
!107 = distinct !{!107, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server"}
!108 = !{!106, !109, !101, !104}
!109 = distinct !{!109, !107, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 1"}
!110 = !{!106, !101}
!111 = !{!109, !104}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!114 = distinct !{!114, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!115 = distinct !{!115, !116, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server: argument 0"}
!116 = distinct !{!116, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!119 = distinct !{!119, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!120 = !{!118, !121}
!121 = distinct !{!121, !119, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!122 = !{!121}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6s_1__NtB5_18InlineValueOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!125 = distinct !{!125, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6s_1__NtB5_18InlineValueOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!126 = !{!124, !127}
!127 = distinct !{!127, !125, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6s_1__NtB5_18InlineValueOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 0"}
!130 = distinct !{!130, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server"}
!131 = !{!129, !132, !124, !127}
!132 = distinct !{!132, !130, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 1"}
!133 = !{!129, !124}
!134 = !{!132, !127}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!137 = distinct !{!137, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!138 = distinct !{!138, !137, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!139 = !{!140, !142}
!140 = distinct !{!140, !141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!141 = distinct !{!141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!142 = distinct !{!142, !143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server: argument 0"}
!143 = distinct !{!143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server"}
!144 = !{i32 -1, i32 3}
!145 = !{i64 -2, i64 -9223372036854775808}
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server: argument 0"}
!148 = distinct !{!148, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server"}
!149 = distinct !{!149, !150, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server: argument 0"}
!150 = distinct !{!150, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapECsjNt1Wzngcv_9ty_server"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!153 = distinct !{!153, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!154 = !{!152, !155}
!155 = distinct !{!155, !153, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress5o_1__NtB5_25StaticRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!156 = !{!155}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6y_1__NtB5_16InlayHintOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!159 = distinct !{!159, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6y_1__NtB5_16InlayHintOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
!160 = !{!158, !161}
!161 = distinct !{!161, !159, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6y_1__NtB5_16InlayHintOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 1"}
!162 = !{!161}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 0"}
!165 = distinct !{!165, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server"}
!166 = !{!164, !167, !158, !161}
!167 = distinct !{!167, !165, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress8s_1__NtB5_23WorkDoneProgressOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerINtB2u_19FlatMapSerializeMapNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEEECsjNt1Wzngcv_9ty_server: argument 1"}
!168 = !{!164, !158}
!169 = !{!167, !161}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server: argument 0"}
!172 = distinct !{!172, !"_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2Y_1__NtB5_31TextDocumentRegistrationOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapEECsjNt1Wzngcv_9ty_server"}
end_hunk_1
