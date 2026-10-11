Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsq_0EBa_:bb.a
  store i64 %.sink19.i108, ptr %i.ck, align 8, !noalias !698
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !698
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.eb, ptr %.sroa.6115.0..sroa_idx, align 8, !noalias !698
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.ef = extractelement <2 x i64> %i.ee, i64 0
  store i64 %i.ef, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !698
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %.sink19.i108, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !698
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !698
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store ptr %i.eb, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !698
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store <2 x i64> %i.ee, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !698
  %i.eg = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ck), !noalias !697, !inline_history !538 ; 2 uses
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %.not95.i.i367 = icmp eq ptr %i.eh, null
  %.sroa.0232.0.copyload.pre = load i32, ptr %i.cm, align 4 ; 5 uses
  br i1 %.not95.i.i367, label %._crit_edge369, label %.lr.ph368

.lr.ph368:                                        ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110
  %i.ei = add nsw i32 %.sroa.0232.0.copyload.pre, -37
  %i.ej = icmp samesign ugt i32 %.sroa.0232.0.copyload.pre, 36
  %narrow101.i.i = select i1 %i.ej, i32 %i.ei, i32 2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph368, %.backedge326
  %.pn375 = phi { ptr, ptr } [ %i.eg, %.lr.ph368 ], [ %i.fv, %.backedge326 ]
  %i.ek = phi ptr [ %i.eh, %.lr.ph368 ], [ %i.fw, %.backedge326 ] ; 4 uses
  %i.el = extractvalue { ptr, ptr } %.pn375, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ], !noalias !695
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 15
  %i.en = load i8, ptr %i.em, align 1, !range !24, !alias.scope !702, !noalias !697, !noundef !12 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !702, !noalias !697, !noundef !12
  %i.eq = and i64 %i.ep, 72057594037927935
  %i.er = icmp ult i8 %i.en, -48
  %i.es = zext i8 %i.en to i64
  %i.et = add nsw i64 %i.es, -192
  %spec.store.select.i98 = call i64 @llvm.umin.i64(i64 %i.et, i64 16)
  %.sroa.0.0.i99 = select i1 %i.er, i64 %spec.store.select.i98, i64 %i.eq
  %i.eu = icmp ugt i8 %i.en, -49
  %i.ev = load ptr, ptr %i.ek, align 8, !alias.scope !702, !noalias !697
  %.sroa.01.0.i100 = select i1 %i.eu, ptr %i.ev, ptr %i.ek
  %i.ew = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i100, i64 noundef %.sroa.0.0.i99), !noalias !697, !inline_history !538 ; 2 uses
  %.not100.i.i = icmp eq ptr %i.ew, null
  br i1 %.not100.i.i, label %bb.z, label %bb.aa

._crit_edge369:                                   ; preds = %.backedge326, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !698
  %i.ex = icmp eq i32 %.sroa.0232.0.copyload.pre, 37
  br i1 %i.ex, label %bb.m, label %bb.h

bb.h:                                             ; preds = %._crit_edge369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !698
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.cf, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !inline_history !538
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.ey = load i32, ptr %i.cf, align 4, !range !25, !alias.scope !704, !noalias !705, !noundef !12 ; 2 uses
  %i.ez = add nsw i32 %i.ey, -37
  %i.fa = icmp samesign ugt i32 %i.ey, 36
  %narrow.i94 = select i1 %i.fa, i32 %i.ez, i32 2
  switch i32 %narrow.i94, label %bb.i [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  store i32 18, ptr %i.cg, align 4, !alias.scope !703, !noalias !706
  %.sroa.0.sroa.4.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 5, ptr %.sroa.0.sroa.4.0..sroa_idx.i95, align 4, !alias.scope !703, !noalias !706
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97

bb.k:                                             ; preds = %bb.h
  store i32 -1, ptr %i.cg, align 4, !alias.scope !703, !noalias !706
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.cf, i64 20, i1 false), !alias.scope !707, !noalias !698
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !698
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge369
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType20explicit_extra_items(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.cg, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !inline_history !538
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97
  %i.fb = load i32, ptr %i.cg, align 4, !range !26, !noalias !698, !noundef !12
  %.not96.i.i = icmp eq i32 %i.fb, -1
  br i1 %.not96.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !noalias !698
  %i.fc = load ptr, ptr %i.dx, align 8, !alias.scope !708, !noalias !709, !noundef !12 ; 3 uses
  %.not.i84 = icmp eq ptr %i.fc, null
  br i1 %.not.i84, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.fe = load <2 x i64>, ptr %i.fd, align 8, !alias.scope !708, !noalias !709
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93: ; preds = %bb.o, %bb.p
  %.sink19.i91 = phi i64 [ 0, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %i.ff = phi <2 x i64> [ <i64 undef, i64 0>, %bb.o ], [ %i.fe, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !698
  store i64 %.sink19.i91, ptr %i.ce, align 8, !noalias !698
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr null, ptr %.sroa.5119.0..sroa_idx, align 8, !noalias !698
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.fc, ptr %.sroa.6120.0..sroa_idx, align 8, !noalias !698
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.fg = extractelement <2 x i64> %i.ff, i64 0
  store i64 %i.fg, ptr %.sroa.7121.0..sroa_idx, align 8, !noalias !698
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store i64 %.sink19.i91, ptr %.sroa.8122.0..sroa_idx, align 8, !noalias !698
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr null, ptr %.sroa.9123.0..sroa_idx, align 8, !noalias !698
  %.sroa.10124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store ptr %i.fc, ptr %.sroa.10124.0..sroa_idx, align 8, !noalias !698
  %.sroa.11125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  store <2 x i64> %i.ff, ptr %.sroa.11125.0..sroa_idx, align 8, !noalias !698
  %i.fh = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ce), !noalias !697, !inline_history !538 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0      ; 2 uses
  %.not97.i.i370 = icmp eq ptr %i.fi, null
  br i1 %.not97.i.i370, label %._crit_edge372, label %.lr.ph371

bb.q:                                             ; preds = %bb.r, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !710
  br label %bb.x

.lr.ph371:                                        ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93, %.backedge
  %.pn376 = phi { ptr, ptr } [ %i.fl, %.backedge ], [ %i.fh, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93 ]
  %i.fj = phi ptr [ %i.fm, %.backedge ], [ %i.fi, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93 ]
  %i.fk = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3getB17_EB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fj), !noalias !697, !inline_history !538
  %.not99.i.i = icmp eq ptr %i.fk, null
  br i1 %.not99.i.i, label %bb.v, label %.backedge

.backedge:                                        ; preds = %.lr.ph371, %bb.v
  %i.fl = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ce), !noalias !697, !inline_history !538 ; 2 uses
  %i.fm = extractvalue { ptr, ptr } %i.fl, 0      ; 2 uses
  %.not97.i.i = icmp eq ptr %i.fm, null
  br i1 %.not97.i.i, label %._crit_edge372, label %.lr.ph371

._crit_edge372:                                   ; preds = %.backedge, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !698
  %i.fn = add nsw i32 %.sroa.0232.0.copyload.pre, -37
  %i.fo = icmp samesign ugt i32 %.sroa.0232.0.copyload.pre, 36
  %narrow98.i.i = select i1 %i.fo, i32 %i.fn, i32 2
  switch i32 %narrow98.i.i, label %.loopexit [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

.loopexit:                                        ; preds = %bb.z, %._crit_edge, %._crit_edge372
  unreachable

bb.r:                                             ; preds = %bb.t, %._crit_edge372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !698
  br label %bb.q

bb.s:                                             ; preds = %._crit_edge372
  %.val123.i.i = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.fp, align 8, !alias.scope !711, !noalias !712
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.fq, align 4, !alias.scope !711, !noalias !712
  store ptr %.val123.i.i, ptr %i.cq, align 8, !alias.scope !711, !noalias !712
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i64 16, i1 false), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !698
  %i.fr = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !698
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bz, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ab), !noalias !697, !inline_history !538
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.fr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.bz), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !698
  br label %bb.r

bb.u:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !698
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph371
  %i.fs = extractvalue { ptr, ptr } %.pn376, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !698
  %i.ft = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i64 16, i1 false), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.cb), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.ft, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cc), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !698
  %.sroa.4128.0.copyload = load i32, ptr %i.dz, align 8, !noalias !698
  %i.fu = icmp eq i32 %.sroa.4128.0.copyload, -2
  br i1 %i.fu, label %bb.w, label %.backedge

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !698
  br label %bb.u

bb.x:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !698
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !698
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.z:                                             ; preds = %bb.g
  switch i32 %narrow101.i.i, label %.loopexit [
    i32 0, label %.backedge326
    i32 1, label %bb.ab
    i32 2, label %bb.aa
  ]

.backedge326:                                     ; preds = %bb.z, %bb.aa
  %i.fv = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ck), !noalias !697, !inline_history !538 ; 2 uses
  %i.fw = extractvalue { ptr, ptr } %i.fv, 0      ; 2 uses
  %.not95.i.i = icmp eq ptr %i.fw, null
  br i1 %.not95.i.i, label %._crit_edge369, label %bb.g

bb.aa:                                            ; preds = %bb.g, %bb.z
  %.sink = phi ptr [ %i.cm, %bb.z ], [ %i.ew, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %.sink, i64 16, i1 false), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !698
  %i.fx = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ch, ptr noundef nonnull align 4 dereferenceable(16) %i.el, i64 16, i1 false), !noalias !697
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ci, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ch, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ad), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.fx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ci), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !698
  %.sroa.4.0.copyload = load i32, ptr %i.dz, align 8, !noalias !698
  %i.fy = icmp eq i32 %.sroa.4.0.copyload, -2
  br i1 %i.fy, label %bb.ad, label %.backedge326

bb.ab:                                            ; preds = %bb.z
  %.val122.i.i = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.fz, align 8, !alias.scope !713, !noalias !712
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.ga, align 4, !alias.scope !713, !noalias !712
  store ptr %.val122.i.i, ptr %i.cq, align 8, !alias.scope !713, !noalias !712
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !698
  br label %bb.y

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !710
  br label %bb.ac

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !698
  br label %bb.aq

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread: ; preds = %bb.d, %.thread, %bb.aq
  %i.gb = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di) ; 9 uses
  %i.gc = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cn, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !714, !inline_history !538 ; 5 uses
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.aq, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cn, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !inline_history !538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !698
  %i.gd = getelementptr i8, ptr %i.de, i64 48     ; 23 uses
  %.val109.i.i = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store i32 -1, ptr %i.ge, align 8, !alias.scope !715, !noalias !697
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.gf, align 4, !alias.scope !715, !noalias !697
  store ptr %.val109.i.i, ptr %i.bw, align 8, !alias.scope !715, !noalias !697
  %i.gg = load ptr, ptr %i.gc, align 8, !alias.scope !716, !noalias !717, !noundef !12 ; 3 uses
  %.not.i74 = icmp eq ptr %i.gg, null
  br i1 %.not.i74, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gi = load <2 x i64>, ptr %i.gh, align 8, !alias.scope !716, !noalias !717
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread, %bb.ae
  %.sink19.i81 = phi i64 [ 0, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread ], [ 1, %bb.ae ] ; 2 uses
  %i.gj = phi <2 x i64> [ <i64 undef, i64 0>, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread ], [ %i.gi, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !698
  store i64 %.sink19.i81, ptr %i.bv, align 8, !noalias !698
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr null, ptr %.sroa.5141.0..sroa_idx, align 8, !noalias !698
  %.sroa.6142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.gg, ptr %.sroa.6142.0..sroa_idx, align 8, !noalias !698
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gk = extractelement <2 x i64> %i.gj, i64 0
  store i64 %i.gk, ptr %.sroa.7143.0..sroa_idx, align 8, !noalias !698
  %.sroa.8144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 %.sink19.i81, ptr %.sroa.8144.0..sroa_idx, align 8, !noalias !698
  %.sroa.9145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr null, ptr %.sroa.9145.0..sroa_idx, align 8, !noalias !698
  %.sroa.10146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %i.gg, ptr %.sroa.10146.0..sroa_idx, align 8, !noalias !698
  %.sroa.11147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store <2 x i64> %i.gj, ptr %.sroa.11147.0..sroa_idx, align 8, !noalias !698
  %i.gl = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bv), !noalias !697, !inline_history !538 ; 2 uses
  %i.gm = extractvalue { ptr, ptr } %i.gl, 0      ; 2 uses
  %.not74.i.i360 = icmp eq ptr %i.gm, null
  br i1 %.not74.i.i360, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.sroa.7156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.8159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5248.sroa.4.0..sroa.5248.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.7.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.7.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  br label %bb.at

bb.af:                                            ; preds = %.thread
  %.sroa.5235.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.5235.0.copyload266 = load i64, ptr %.sroa.5235.0..sroa_idx265, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !698
  store i32 %.sroa.0234.0.copyload264, ptr %i.by, align 4, !noalias !698
  %.sroa.7132.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i64 %.sroa.5235.0.copyload266, ptr %.sroa.7132.0..sroa_idx272, align 4, !noalias !698
  %.sroa.7137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %.sroa.7137.0.copyload139 = load i64, ptr %.sroa.7137.0..sroa_idx138, align 4, !alias.scope !718, !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !698
  store i32 %i.dn, ptr %i.bx, align 4, !noalias !698
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i64 %.sroa.7137.0.copyload139, ptr %.sroa.7137.0..sroa_idx, align 4, !noalias !698
  %i.gu = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !719
  %i.gv = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 89
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0..sroa_idx.i.i73 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  %i.he = load ptr, ptr %i.gu, align 8, !noalias !719, !nonnull !12, !align !16, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !719
  %i.hf = load ptr, ptr %i.gv, align 8, !noalias !719, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.hg = load <2 x ptr>, ptr %i.gw, align 8, !noalias !719
  store i32 0, ptr %i.gz, align 8, !alias.scope !720, !noalias !719
  store ptr null, ptr %i.e, align 8, !alias.scope !720, !noalias !719
  store ptr %i.hf, ptr %i.hc, align 8, !alias.scope !720, !noalias !719
  store i32 -2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !720, !noalias !719
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i73, align 4, !alias.scope !720, !noalias !719
  %i.hh = insertelement <4 x ptr> poison, ptr %i.he, i64 0
  %i.hi = insertelement <4 x ptr> %i.hh, ptr %i.hf, i64 1
  %i.hj = shufflevector <2 x ptr> %i.hg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hk = shufflevector <4 x ptr> %i.hi, <4 x ptr> %i.hj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.hk, ptr %i.gy, align 8, !alias.scope !720, !noalias !719
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.hm = load <2 x ptr>, ptr %i.gx, align 8, !noalias !719
  store i8 2, ptr %i.ha, align 8, !alias.scope !720, !noalias !719
  store i8 0, ptr %i.hb, align 1, !alias.scope !720, !noalias !719
  store i8 1, ptr %i.hd, align 2, !alias.scope !720, !noalias !719
  store <2 x ptr> %i.hm, ptr %i.hl, align 8, !alias.scope !720, !noalias !719
  invoke void @_RNvMsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtNtB7_8relation19TypeRelationChecker16check_class_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.e, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.by, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.bx)
          to label %bb.aj unwind label %bb.ag, !noalias !697, !inline_history !570

bb.ag:                                            ; preds = %bb.al, %bb.af
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsq_0EBa_:bb.a
bb.bi:                                            ; preds = %bb.be
  %.val119.i.i = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.jz, align 8, !alias.scope !739, !noalias !712
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.ka, align 4, !alias.scope !739, !noalias !712
  store ptr %.val119.i.i, ptr %i.cq, align 8, !alias.scope !739, !noalias !712
  br label %bb.bo

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %bb.bk
  %.pn373 = phi { ptr, ptr } [ %i.kg, %bb.bk ], [ %i.jw, %.lr.ph362.preheader ]
  %i.kb = phi ptr [ %i.kh, %bb.bk ], [ %i.jx, %.lr.ph362.preheader ]
  %i.kc = extractvalue { ptr, ptr } %.pn373, 1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kc) ], !noalias !695
  %i.kd = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3getB17_EB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kb), !noalias !697, !inline_history !538
  %.not77.i.i = icmp eq ptr %i.kd, null
  br i1 %.not77.i.i, label %bb.bj, label %bb.bk

._crit_edge363:                                   ; preds = %bb.bk, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !698
  br label %bb.bb

bb.bj:                                            ; preds = %.lr.ph362
  %i.ke = getelementptr i8, ptr %i.kc, i64 24
  %.val105.i.i = load i8, ptr %i.ke, align 4, !noalias !697, !noundef !12
  %i.kf = and i8 %.val105.i.i, 3
  %or.cond.not = icmp eq i8 %i.kf, 0
  br i1 %or.cond.not, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit, %.lr.ph362
  %i.kg = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ao), !noalias !697, !inline_history !538 ; 2 uses
  %i.kh = extractvalue { ptr, ptr } %i.kg, 0      ; 2 uses
  %.not76.i.i = icmp eq ptr %i.kh, null
  br i1 %.not76.i.i, label %._crit_edge363, label %.lr.ph362

bb.bl:                                            ; preds = %bb.bj
  %.val118.i.i = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.ki = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.ki, align 8, !alias.scope !740, !noalias !712
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.kj, align 4, !alias.scope !740, !noalias !712
  store ptr %.val118.i.i, ptr %i.cq, align 8, !alias.scope !740, !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !698
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !698
  %i.kk = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, i64 16, i1 false), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.al, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.v), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !698
  %i.kl = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.km = load i32, ptr %i.jy, align 8, !alias.scope !742, !noalias !743, !noundef !12
  %i.kn = icmp eq i32 %i.km, -2
  br i1 %i.kn, label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, i64 16, i1 false), !noalias !745
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a), !noalias !746, !inline_history !615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !744
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.kl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !noalias !747, !inline_history !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !744
  br label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit

_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !748, !noalias !749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.kk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.am), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !698
  br label %bb.bk

bb.bo:                                            ; preds = %bb.bl, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !698
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !698
  br label %bb.bc

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72: ; preds = %._crit_edge, %bb.au
  %.sroa.8199.0 = phi i64 [ %.sroa.8199.0.copyload, %bb.au ], [ undef, %._crit_edge ] ; 2 uses
  %.sroa.7196.0 = phi i32 [ %.sroa.7196.0.copyload, %bb.au ], [ 5, %._crit_edge ] ; 2 uses
  %.sroa.0194.0 = phi i32 [ %i.it, %bb.au ], [ 18, %._crit_edge ] ; 2 uses
  %i.ko = load i32, ptr %i.s, align 4, !range !25, !noundef !12 ; 3 uses
  %i.kp = add nsw i32 %i.ko, -37
  %i.kq = icmp samesign ugt i32 %i.ko, 36
  %narrow.i54 = select i1 %i.kq, i32 %i.kp, i32 2
  switch i32 %narrow.i54, label %bb.bq [
    i32 0, label %bb.bs
    i32 1, label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57
    i32 2, label %bb.br
  ]

bb.bq:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
  unreachable

bb.br:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
  %.sroa.8206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.8206.0.copyload = load i32, ptr %.sroa.8206.0..sroa_idx, align 4
  %.sroa.9209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.9209.0.copyload = load i64, ptr %.sroa.9209.0..sroa_idx, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
  %.sroa.9209.0.ph = phi i64 [ undef, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72 ], [ %.sroa.9209.0.copyload, %bb.br ]
  %.sroa.8206.0.ph = phi i32 [ 5, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72 ], [ %.sroa.8206.0.copyload, %bb.br ]
  %.sroa.0204.0.ph = phi i32 [ 18, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72 ], [ %i.ko, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !698
  store i32 %.sroa.0204.0.ph, ptr %i.z, align 4, !noalias !698
  %.sroa.8206.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %.sroa.8206.0.ph, ptr %.sroa.8206.0..sroa_idx207, align 4, !noalias !698
  %.sroa.9209.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.9209.0.ph, ptr %.sroa.9209.0..sroa_idx210, align 4, !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !698
  %i.kr = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !698
  store i32 %.sroa.0194.0, ptr %i.u, align 4, !noalias !698
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %.sroa.7196.0, ptr %.sroa.5226.0..sroa_idx, align 4, !noalias !698
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.8199.0, ptr %.sroa.6229.0..sroa_idx, align 4, !noalias !698
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ai, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.u), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.kr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ai), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !698
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57: ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72, %bb.bs
  %i.ks = load ptr, ptr %i.gb, align 8, !alias.scope !750, !noalias !751, !noundef !12 ; 3 uses
  %.not.i52 = icmp eq ptr %i.ks, null
  br i1 %.not.i52, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ku = load <2 x i64>, ptr %i.kt, align 8, !alias.scope !750, !noalias !751
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit: ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57, %bb.bt
  %.sink19.i = phi i64 [ 0, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57 ], [ 1, %bb.bt ] ; 2 uses
  %i.kv = phi <2 x i64> [ <i64 undef, i64 0>, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57 ], [ %i.ku, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !698
  store i64 %.sink19.i, ptr %i.ah, align 8, !noalias !698
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %.sroa.4215.0..sroa_idx, align 8, !noalias !698
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ks, ptr %.sroa.5216.0..sroa_idx, align 8, !noalias !698
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.kw = extractelement <2 x i64> %i.kv, i64 0
  store i64 %i.kw, ptr %.sroa.6217.0..sroa_idx, align 8, !noalias !698
  %.sroa.7218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %.sink19.i, ptr %.sroa.7218.0..sroa_idx, align 8, !noalias !698
  %.sroa.8219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr null, ptr %.sroa.8219.0..sroa_idx, align 8, !noalias !698
  %.sroa.9220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.ks, ptr %.sroa.9220.0..sroa_idx, align 8, !noalias !698
  %.sroa.10221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store <2 x i64> %i.kv, ptr %.sroa.10221.0..sroa_idx, align 8, !noalias !698
  %i.kx = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ah), !noalias !697, !inline_history !538 ; 2 uses
  %i.ky = extractvalue { ptr, ptr } %i.kx, 0      ; 2 uses
  %.not81.i.i364 = icmp eq ptr %i.ky, null
  br i1 %.not81.i.i364, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit
  %.sroa.5226.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.6229.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph365, %bb.bw
  %.pn374 = phi { ptr, ptr } [ %i.kx, %.lr.ph365 ], [ %i.ld, %bb.bw ]
  %i.kz = phi ptr [ %i.ky, %.lr.ph365 ], [ %i.le, %bb.bw ]
  %i.la = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3getB17_EB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kz), !noalias !697, !inline_history !538
  %.not82.i.i = icmp eq ptr %i.la, null
  br i1 %.not82.i.i, label %bb.bv, label %bb.bw

._crit_edge366:                                   ; preds = %bb.bw, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !698
  br label %bb.bb

bb.bv:                                            ; preds = %bb.bu
  %i.lb = extractvalue { ptr, ptr } %.pn374, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !698
  %i.lc = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %i.lb, i64 16, i1 false), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !698
  store i32 %.sroa.0194.0, ptr %i.t, align 4, !noalias !698
  store i32 %.sroa.7196.0, ptr %.sroa.5226.0..sroa_idx227, align 4, !noalias !698
  store i64 %.sroa.8199.0, ptr %.sroa.6229.0..sroa_idx230, align 4, !noalias !698
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.af, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.t), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.lc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.af), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !698
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ld = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ah), !noalias !697, !inline_history !538 ; 2 uses
  %i.le = extractvalue { ptr, ptr } %i.ld, 0      ; 2 uses
  %.not81.i.i = icmp eq ptr %i.le, null
  br i1 %.not81.i.i, label %._crit_edge366, label %bb.bu

bb.bx:                                            ; preds = %bb.at
  %i.lf = and i8 %.val106.i.i, 2
  %.not = icmp eq i8 %i.lf, 0
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.lh = load i8, ptr %i.lg, align 1, !range !24, !noalias !697, !noundef !12 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !noalias !697, !noundef !12
  %i.lk = and i64 %i.lj, 72057594037927935
  %i.ll = icmp ult i8 %i.lh, -48
  %i.lm = zext i8 %i.lh to i64
  %i.ln = add nsw i64 %i.lm, -192
  %spec.store.select.i46 = call i64 @llvm.umin.i64(i64 %i.ln, i64 16)
  %.sroa.0.0.i47 = select i1 %i.ll, i64 %spec.store.select.i46, i64 %i.lk
  %i.lo = icmp ugt i8 %i.lh, -49
  %i.lp = load ptr, ptr %i.ip, align 8, !noalias !697
  %.sroa.01.0.i48 = select i1 %i.lo, ptr %i.lp, ptr %i.ip
  %i.lq = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i48, i64 noundef %.sroa.0.0.i47), !noalias !697 ; 5 uses
  %.not83.i.i = icmp eq ptr %i.lq, null           ; 2 uses
  br i1 %.not, label %bb.bz, label %bb.ca

bb.by:                                            ; preds = %bb.at
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.ls = load i8, ptr %i.lr, align 1, !range !24, !alias.scope !752, !noalias !697, !noundef !12 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !752, !noalias !697, !noundef !12
  %i.lv = and i64 %i.lu, 72057594037927935
  %i.lw = icmp ult i8 %i.ls, -48
  %i.lx = zext i8 %i.ls to i64
  %i.ly = add nsw i64 %i.lx, -192
  %spec.store.select.i49 = call i64 @llvm.umin.i64(i64 %i.ly, i64 16)
  %.sroa.0.0.i50 = select i1 %i.lw, i64 %spec.store.select.i49, i64 %i.lv
  %i.lz = icmp ugt i8 %i.ls, -49
  %i.ma = load ptr, ptr %i.ip, align 8, !alias.scope !752, !noalias !697
  %.sroa.01.0.i51 = select i1 %i.lz, ptr %i.ma, ptr %i.ip
  %i.mb = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i51, i64 noundef %.sroa.0.0.i50), !noalias !697, !inline_history !538 ; 5 uses
  %.not89.i.i = icmp eq ptr %i.mb, null
  br i1 %.not89.i.i, label %bb.cy, label %bb.cx

bb.bz:                                            ; preds = %bb.bx
  br i1 %.not83.i.i, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  br i1 %.not83.i.i, label %bb.cu, label %bb.ct

bb.cb:                                            ; preds = %bb.bz
  %i.mc = getelementptr i8, ptr %i.lq, i64 24
  %.val134.i.i = load i8, ptr %i.mc, align 4, !noalias !697, !noundef !12 ; 2 uses
  %i.md = and i8 %.val134.i.i, 2
  %.not323 = icmp eq i8 %i.md, 0
  br i1 %.not323, label %bb.cd, label %bb.ce

bb.cc:                                            ; preds = %bb.bz
  %.sroa.0247.0.copyload = load i32, ptr %i.s, align 4 ; 3 uses
  %i.me = icmp samesign ult i32 %.sroa.0247.0.copyload, 37
  br i1 %i.me, label %bb.co, label %bb.cp

bb.cd:                                            ; preds = %bb.cb
  %i.mf = trunc i8 %.val134.i.i to i1
  br i1 %i.mf, label %bb.ci, label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.mh = load ptr, ptr %i.de, align 8, !noalias !698, !noundef !12
  %.not.i39 = icmp eq ptr %i.mh, null
  br i1 %.not.i39, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mi = load i8, ptr %i.gs, align 8, !range !17, !noalias !698, !noundef !12
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42.thread

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, ptr noundef nonnull align 4 dereferenceable(16) %i.lq, i64 16, i1 false), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !697
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bg, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bf, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.be), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !698
  %i.mk = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.ml = load i32, ptr %i.gp, align 8, !alias.scope !754, !noalias !755, !noundef !12
  %i.mm = icmp eq i32 %i.ml, -2
  br i1 %i.mm, label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs_0EBa_.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.lq, i64 16, i1 false), !noalias !757
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.g), !noalias !758, !inline_history !630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !756
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.mk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.j), !noalias !759, !inline_history !631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !756
  br label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs_0EBa_.exit

_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs_0EBa_.exit: ; preds = %bb.cg, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !760, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !698
  br label %bb.cw

bb.ci:                                            ; preds = %bb.cd
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.mo = load ptr, ptr %i.de, align 8, !noalias !698, !noundef !12
  %.not.i35 = icmp eq ptr %i.mo, null
  br i1 %.not.i35, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mp = load i8, ptr %i.gs, align 8, !range !17, !noalias !698, !noundef !12
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38: ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !698
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.mr = load i8, ptr %i.mn, align 1, !range !24, !alias.scope !762, !noalias !763, !noundef !12
  %i.ms = and i8 %i.mr, -2
  %switch.i31 = icmp eq i8 %i.ms, -48
  br i1 %switch.i31, label %bb.ck, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34

bb.ck:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38
  %.pn.i32 = load ptr, ptr %i.ip, align 8, !alias.scope !762, !noalias !763, !nonnull !12, !noundef !12
  %.sroa.0.0.i33 = getelementptr inbounds i8, ptr %.pn.i32, i64 -8
  %i.mt = atomicrmw add ptr %.sroa.0.0.i33, i64 1 monotonic, align 8, !noalias !764
  %i.mu = icmp slt i64 %i.mt, 0
  br i1 %i.mu, label %bb.cl, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34, !prof !28

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !763
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38, %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !noalias !697
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mv, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mw, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !noalias !696
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  store i32 13, ptr %i.mx, align 4, !noalias !698
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bh), !noalias !695, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !698
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread: ; preds = %bb.cj, %bb.ci, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34
  %.val117.i.i = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.my = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.my, align 8, !alias.scope !765, !noalias !712
  %i.mz = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.mz, align 4, !alias.scope !765, !noalias !712
  store ptr %.val117.i.i, ptr %i.cq, align 8, !alias.scope !765, !noalias !712
  br label %bb.dt

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42: ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !698
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.na = load i8, ptr %i.mg, align 1, !range !24, !alias.scope !766, !noalias !767, !noundef !12
  %i.nb = and i8 %i.na, -2
  %switch.i27 = icmp eq i8 %i.nb, -48
  br i1 %switch.i27, label %bb.cm, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit30

bb.cm:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42
  %.pn.i28 = load ptr, ptr %i.ip, align 8, !alias.scope !766, !noalias !767, !nonnull !12, !noundef !12
  %.sroa.0.0.i29 = getelementptr inbounds i8, ptr %.pn.i28, i64 -8
  %i.nc = atomicrmw add ptr %.sroa.0.0.i29, i64 1 monotonic, align 8, !noalias !768
  %i.nd = icmp slt i64 %i.nc, 0
  br i1 %i.nd, label %bb.cn, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit30, !prof !28

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !767
  unreachable

end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings28visit_type_context_callablesNCNvMs_NtNtBa_5infer7builderNtB1O_20TypeInferenceBuilder30infer_and_check_argument_types0EBc_:bb.a
  %.sroa.7.0 = phi ptr [ null, %bb.a ], [ %i.w, %.backedge ] ; 3 uses
  %.sroa.11.0 = phi i64 [ undef, %bb.a ], [ %.sroa.11.1.lcssa, %.backedge ] ; 2 uses
  %i.i = inttoptr i64 %.sroa.11.0 to ptr
  %.not.i.i30 = icmp eq ptr %.sroa.7.0, null
  %i.j = icmp eq ptr %.sroa.7.0, %i.i
  %or.cond2031 = select i1 %.not.i.i30, i1 true, i1 %i.j
  br i1 %or.cond2031, label %select.unfold.i, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit

select.unfold.i:                                  ; preds = %bb.b, %bb.c
  %.sroa.010.132 = phi ptr [ %i.l, %bb.c ], [ %.sroa.010.0, %bb.b ] ; 5 uses
  %i.k = icmp eq ptr %.sroa.010.132, %i.h
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 384 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1238, !noalias !1239, !noundef !12 ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1238, !noalias !1239
  %.sink9.i.i.i.i.i.i = select i1 %i.o, i64 %i.q, i64 %i.n ; 2 uses
  %i.r = icmp eq i64 %.sink9.i.i.i.i.i.i, 0
  br i1 %i.r, label %select.unfold.i, label %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge

bb.d:                                             ; preds = %select.unfold.i
  ret void

._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1238, !noalias !1239, !nonnull !12
  %.sink10.i.i.i.i.i.i = select i1 %i.o, ptr %i.t, ptr %i.s ; 2 uses
  %.idx = mul nuw nsw i64 %.sink9.i.i.i.i.i.i, 360
  %i.u = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i.i.i.i, i64 %.idx
  %i.v = ptrtoint ptr %i.u to i64
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit: ; preds = %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge, %bb.b
  %.sroa.010.1.lcssa = phi ptr [ %i.l, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge ], [ %.sroa.010.0, %bb.b ]
  %.sroa.11.1.lcssa = phi i64 [ %i.v, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge ], [ %.sroa.11.0, %bb.b ]
  %spec.select.i19.i.lcssa = phi ptr [ %.sink10.i.i.i.i.i.i, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge ], [ %.sroa.7.0, %bb.b ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.lcssa, i64 360
  %i.x = load i64, ptr %spec.select.i19.i.lcssa, align 8, !range !15, !noundef !12
  %.not7 = icmp eq i64 %i.x, 2
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit
  tail call fastcc void @_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder30infer_and_check_argument_types0Bc_(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %spec.select.i19.i.lcssa)
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.lcssa, i64 328
  %i.z = load ptr, ptr %i.y, align 8, !align !13, !noundef !12 ; 2 uses
  %.not8 = icmp eq ptr %i.z, null
  br i1 %.not8, label %.backedge, label %bb.g

.backedge:                                        ; preds = %bb.e, %bb.f, %bb.g
  br label %bb.b

bb.f:                                             ; preds = %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.lcssa, i64 8
  tail call fastcc void @_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder30infer_and_check_argument_types0Bc_(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa)
  br label %.backedge

bb.g:                                             ; preds = %bb.e
  tail call void @_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings28visit_type_context_callablesNCNvMs_NtNtBa_5infer7builderNtB1O_20TypeInferenceBuilder30infer_and_check_argument_types0EBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings28visit_type_context_callablesNCNvMs_NtNtBa_5infer7builderNtB1O_20TypeInferenceBuilder35collect_call_arguments_type_contexts_0EBc_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(432) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1265, !noalias !1266, !noundef !12 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1                     ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !1265, !noalias !1266, !nonnull !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1265, !noalias !1266
  %.sink10.i.i = select i1 %i.f, ptr %i.g, ptr %i.c ; 2 uses
  %.sink9.i.i = select i1 %i.f, i64 %i.i, i64 %i.e
  %i.j = getelementptr inbounds nuw [384 x i8], ptr %.sink10.i.i, i64 %.sink9.i.i
  %i.k = load ptr, ptr %1, align 8, !nonnull !12  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !align !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !align !16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !12, !align !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !12, !align !16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.010.0 = phi ptr [ %.sink10.i.i, %bb.a ], [ %.sroa.010.1.lcssa, %.backedge ] ; 2 uses
  %.sroa.7.0 = phi ptr [ null, %bb.a ], [ %i.aj, %.backedge ] ; 3 uses
  %.sroa.11.0 = phi i64 [ undef, %bb.a ], [ %.sroa.11.1.lcssa, %.backedge ] ; 2 uses
  %i.v = inttoptr i64 %.sroa.11.0 to ptr
  %.not.i.i30 = icmp eq ptr %.sroa.7.0, null
  %i.w = icmp eq ptr %.sroa.7.0, %i.v
  %or.cond2031 = select i1 %.not.i.i30, i1 true, i1 %i.w
  br i1 %or.cond2031, label %select.unfold.i, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit

select.unfold.i:                                  ; preds = %bb.b, %bb.c
  %.sroa.010.132 = phi ptr [ %i.y, %bb.c ], [ %.sroa.010.0, %bb.b ] ; 5 uses
  %i.x = icmp eq ptr %.sroa.010.132, %i.j
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 384 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1267, !noalias !1268, !noundef !12 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1267, !noalias !1268
  %.sink9.i.i.i.i.i.i = select i1 %i.ab, i64 %i.ad, i64 %i.aa ; 2 uses
  %i.ae = icmp eq i64 %.sink9.i.i.i.i.i.i, 0
  br i1 %i.ae, label %select.unfold.i, label %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge

bb.d:                                             ; preds = %select.unfold.i
  ret void

._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.132, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1267, !noalias !1268, !nonnull !12
  %.sink10.i.i.i.i.i.i = select i1 %i.ab, ptr %i.ag, ptr %i.af ; 2 uses
  %.idx = mul nuw nsw i64 %.sink9.i.i.i.i.i.i, 360
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i.i.i.i, i64 %.idx
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit: ; preds = %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge, %bb.b
  %.sroa.010.1.lcssa = phi ptr [ %i.y, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge ], [ %.sroa.010.0, %bb.b ]
  %.sroa.11.1.lcssa = phi i64 [ %i.ai, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge ], [ %.sroa.11.0, %bb.b ]
  %spec.select.i19.i.lcssa = phi ptr [ %.sink10.i.i.i.i.i.i, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit_crit_edge ], [ %.sroa.7.0, %bb.b ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.lcssa, i64 360
  %i.ak = load i64, ptr %spec.select.i19.i.lcssa, align 8, !range !15, !noundef !12
  %.not7 = icmp eq i64 %i.ak, 2
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !1269
  call void @_RNvNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder35collect_call_arguments_type_context26add_overloads_from_binding(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.m, ptr noundef nonnull align 4 %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %spec.select.i19.i.lcssa, ptr noundef nonnull align 8 %i.s, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b), !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1269
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.lcssa, i64 328
  %i.am = load ptr, ptr %i.al, align 8, !align !13, !noundef !12 ; 2 uses
  %.not8 = icmp eq ptr %i.am, null
  br i1 %.not8, label %.backedge, label %bb.g

.backedge:                                        ; preds = %bb.e, %bb.f, %bb.g
  br label %bb.b

bb.f:                                             ; preds = %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1T_B1R_5itemsEIB1s_NtB1T_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB1Z_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.lcssa, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !1271
  call void @_RNvNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder35collect_call_arguments_type_context26add_overloads_from_binding(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.m, ptr noundef nonnull align 4 %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.an, ptr noundef nonnull align 8 %i.s, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1271
  br label %.backedge

bb.g:                                             ; preds = %bb.e
  call void @_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings28visit_type_context_callablesNCNvMs_NtNtBa_5infer7builderNtB1O_20TypeInferenceBuilder35collect_call_arguments_type_contexts_0EBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings31with_enclosing_binding_contextsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtBa_8generics26enclosing_binding_contexts0EEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([432 x i8]) align 8 captures(none) dereferenceable(432) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(432) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !1276
  %i.b = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB24_8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtBT_8generics26enclosing_binding_contexts0EEBV_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics26enclosing_binding_contexts0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtB1W_7typevar14BindingContextEEB1Y_.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_(ptr noalias noundef align 8 dereferenceable(432) %1) #62
          to label %bb.e unwind label %bb.d

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics26enclosing_binding_contexts0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtB1W_7typevar14BindingContextEEB1Y_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !align !16, !noundef !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %.val2 = load i64, ptr %i.e, align 8            ; 2 uses
  %i.f = icmp eq ptr %.val, null
  %i.g = icmp eq i64 %.val2, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEEB1C_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics26enclosing_binding_contexts0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtB1W_7typevar14BindingContextEEB1Y_.exit
  %i.h = mul nuw nsw i64 %.val2, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef 4) #65
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEEB1C_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEEB1C_.exit: ; preds = %bb.c, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics26enclosing_binding_contexts0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtB1W_7typevar14BindingContextEEB1Y_.exit
  %i.i = extractvalue { ptr, i64 } %i.b, 1
  %i.j = extractvalue { ptr, i64 } %i.b, 0
  store ptr %i.j, ptr %i.d, align 8
  store i64 %i.i, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(432) %1, i64 432, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings3mapNCNvNvMs39_Ba_NtBa_4Type20constructor_bindings20bind_constructor_new0EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([432 x i8]) align 8 captures(none) dereferenceable(432) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(432) %1, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [416 x i8], align 8               ; 5 uses
  %i.b = alloca [392 x i8], align 8               ; 6 uses
  %i.c = alloca [392 x i8], align 8               ; 4 uses
  %i.d = alloca [408 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.f = load i8, ptr %i.e, align 8, !range !17, !alias.scope !1287, !noalias !1288, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 425
  %i.h = load i8, ptr %i.g, align 1, !range !17, !alias.scope !1287, !noalias !1288, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1287, !noalias !1288, !align !16, !noundef !12 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1287, !noalias !1288 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1289
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(392) %i.m, i64 392, i1 false), !noalias !1288
  invoke void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBQ_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(392) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !1289

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.s, %bb.e ]
  %i.o = icmp eq ptr %i.j, null
  %i.p = icmp eq i64 %i.l, 0
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEEB1C_.exit.i, label %bb.c

bb.c:                                             ; preds = %.body.i
  %i.q = mul nuw nsw i64 %i.l, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.q, i64 noundef 4) #65, !noalias !1290
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEEB1C_.exit.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1289
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(408) %i.d, i64 408, i1 false), !noalias !1289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1291
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i64 0, ptr %i.r, align 8, !alias.scope !1292, !noalias !1291
  store ptr %2, ptr %i.a, align 8, !noalias !1293
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB26_8adapters3map3MapINtB6_8IntoIterBI_ENCINvMs3_BL_NtBL_8Bindings8map_withNCNvNvMs39_BP_NtBP_4Type20constructor_bindings20bind_constructor_new0E0EEBR_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(416) %i.a)
          to label %_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings8map_withNCNvNvMs39_Ba_NtBa_4Type20constructor_bindings20bind_constructor_new0EBc_.exit unwind label %bb.e, !noalias !1294

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b)
          to label %.body.i unwind label %bb.f, !noalias !1294

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !1294
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEEB1C_.exit.i: ; preds = %bb.c, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings8map_withNCNvNvMs39_Ba_NtBa_4Type20constructor_bindings20bind_constructor_new0EBc_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1291
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.u, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i64 392, i1 false), !noalias !1295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull readonly align 8 dereferenceable(432) %1, i64 16, i1 false), !alias.scope !1290, !noalias !1296
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 %i.f, ptr %i.v, align 8, !alias.scope !1286, !noalias !1295
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 425
  store i8 %i.h, ptr %i.w, align 1, !alias.scope !1286, !noalias !1295
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.j, ptr %i.x, align 8, !alias.scope !1286, !noalias !1295
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.l, ptr %i.y, align 8, !alias.scope !1286, !noalias !1295
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB6_8Bindings9map_typesNCNCNvMsp_NtNtBa_5class14static_literalNtB1x_18StaticClassLiteral22own_synthesized_members2_00EBc_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(432) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 17 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.13.i = alloca [12 x i8], align 8         ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 4                ; 4 uses
  %i.m = alloca [16 x i8], align 4                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1332, !noalias !1333, !noundef !12 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1332, !noalias !1333
  %.sink9.i = select i1 %i.r, i64 %i.t, i64 %i.q  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %.sink9.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
  %i.u = load i64, ptr %i.i, align 8, !range !22, !noundef !12
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d, !prof !28

bb.b:                                             ; preds = %.thread28
  resume { ptr, i32 } %.pn27

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !31, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #64
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !32, !noundef !12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !12, !noundef !12
  %i.af = icmp ule i64 %.sink9.i, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.ac, ptr %i.o, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 0, ptr %i.ah, align 8
  %i.ai = invoke { ptr, ptr } @_RNvXsN_Csheqz6YZvxwl_8smallvecRINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.aa)
          to label %bb.e unwind label %.thread32.loopexit.split-lp ; 2 uses

.thread32.loopexit:                               ; preds = %bb.u
  %lpad.loopexit46 = landingpad { ptr, i32 }
          cleanup
  br label %.thread28

.thread32.loopexit.split-lp:                      ; preds = %bb.d
  %lpad.loopexit.split-lp47 = landingpad { ptr, i32 }
          cleanup
  br label %.thread28

bb.e:                                             ; preds = %bb.d
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.ao = load <2 x ptr>, ptr %5, align 8         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !12, !align !16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.9.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.10.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.11.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.13.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.14.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.sroa.9.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.10.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.11.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.13.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.14.0..sroa_idx75.i = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.sroa.9.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
end_hunk_2
begin_hunk_3_@_RNvMsj_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_16ParameterContext3new:bb.a
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter12display_name.exit.thread

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter12display_name.exit.thread: ; preds = %bb.c, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesINtB5_20ParameterDisplayNameRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE10into_owned.exit
  %.sroa.4.0 = phi i8 [ %.sroa.01.0.i, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesINtB5_20ParameterDisplayNameRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE10into_owned.exit ], [ -1, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i32, ptr %i.i, align 8, !noundef !12 ; 2 uses
  %.not12 = icmp ne i32 %i.j, 0                   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = add nsw i64 %i.k, -1
  %.sroa.59.0 = select i1 %.not12, i64 %i.l, i64 undef
  %.sroa.08.0 = zext i1 %.not12 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %i.n, align 8
  store i64 %.sroa.08.0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.59.0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = zext i1 %3 to i8
  store i8 %i.q, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource14parameter_span(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25375)
  %i.c = load i64, ptr %4, align 8, !range !22, !alias.scope !25375, !noalias !25376, !noundef !12
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !25375, !noalias !25376
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !25374, !noalias !25377
  %i.i = add i64 %i.h, %i.f                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !25375, !noalias !25376
  %i.l = select i1 %i.d, i64 %i.k, i64 %i.i       ; 2 uses
  %i.m = load i32, ptr %1, align 8, !range !20, !alias.scope !25374, !noalias !25377, !noundef !12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !25374, !noalias !25377, !noundef !12 ; 3 uses
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType9signature(i32 noundef %i.m, i32 noundef %i.o, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !25378 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !25379, !noalias !25380, !noundef !12 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !25379, !noalias !25380
  %.sink9.i.i = select i1 %i.r, i64 %i.t, i64 %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !25374, !noalias !25377, !noundef !12 ; 4 uses
  %i.w = icmp ult i64 %i.v, %.sink9.i.i
  br i1 %i.w, label %bb.b, label %_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource22source_parameter_index.exit

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !25379, !noalias !25380, !nonnull !12
  %.sink10.i.i = select i1 %i.r, ptr %i.y, ptr %i.x
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %.sink10.i.i, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !25378, !nonnull !12, !noundef !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !25378, !nonnull !12, !noundef !12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !25378, !noundef !12 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ae, 72
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource22source_parameter_index.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNCNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_24ForwardedParameterSource22source_parameter_index0Bd_.exit.backedge.i.i
  %i.ag = phi ptr [ %i.al, %_RNCNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_24ForwardedParameterSource22source_parameter_index0Bd_.exit.backedge.i.i ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 64
  %.val3.i.i = load i32, ptr %i.ah, align 8, !noalias !25381, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp ne i32 %.val3.i.i, 0
  %i.ai = zext i32 %.val3.i.i to i64
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = icmp eq i64 %i.aj, %i.l
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.ak, i1 false
  br i1 %or.cond.i.i, label %_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource22source_parameter_index.exit, label %_RNCNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_24ForwardedParameterSource22source_parameter_index0Bd_.exit.backedge.i.i

_RNCNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_24ForwardedParameterSource22source_parameter_index0Bd_.exit.backedge.i.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.al, %i.af
  br i1 %.not9.i.i, label %_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource22source_parameter_index.exit, label %.lr.ph.i.i

_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource22source_parameter_index.exit: ; preds = %.lr.ph.i.i, %_RNCNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_24ForwardedParameterSource22source_parameter_index0Bd_.exit.backedge.i.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %_RNCNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_24ForwardedParameterSource22source_parameter_index0Bd_.exit.backedge.i.i ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType28overloads_and_implementation(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.m, i32 noundef %i.o, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  %i.am = load ptr, ptr %i.b, align 8, !nonnull !12, !align !16, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.as = load i32, ptr %i.ar, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = icmp ult i64 %i.v, %i.ao
  br i1 %i.at, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource22source_parameter_index.exit
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_24ForwardedParameterSource22source_parameter_index.exit
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.v ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !range !20, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.44.0 = phi i32 [ %i.ax, %bb.d ], [ %i.as, %bb.c ]
  %.sroa.02.0 = phi i32 [ %i.av, %bb.d ], [ %i.aq, %bb.c ]
  call void @_RNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB5_15OverloadLiteral14parameter_span(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, i32 noundef range(i32 1, 0) %.sroa.02.0, i32 noundef %.sroa.44.0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i64 noundef 1, i64 %.sroa.0.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType14parameter_span(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, i32 noundef %i.m, i32 noundef %i.o, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i64 noundef 1, i64 %.sroa.0.0.i), !noalias !25382
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12BindingError17get_argument_node(i64 noundef range(i64 0, 94) %0, ptr noundef %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  switch i64 %0, label %bb.k [
    i64 3, label %bb.b
    i64 43, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i64 %2 to i1
  br i1 %i.c, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %2 to i1
  br i1 %i.d, label %bb.l, label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !align !13, !noundef !12 ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments17iter_source_order(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.f)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeywordINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2m_ENvMs1Z_B1g_B1e_10as_keywordNCINvNtB6_6filter15filter_try_foldB27_B2m_B2S_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4E_12BindingError17get_argument_node00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB3P_6FilterINtB4_9FilterMapNtB1g_20ArgumentsSourceOrderB3j_EB4u_ENtB6j_13SpecAdvanceBy15spec_advance_by0E0E0B4K_.exit.i.i
  %.sroa.01.0.i.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeywordINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2m_ENvMs1Z_B1g_B1e_10as_keywordNCINvNtB6_6filter15filter_try_foldB27_B2m_B2S_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4E_12BindingError17get_argument_node00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB3P_6FilterINtB4_9FilterMapNtB1g_20ArgumentsSourceOrderB3j_EB4u_ENtB6j_13SpecAdvanceBy15spec_advance_by0E0E0B4K_.exit.i.i ], [ %3, %bb.e ] ; 3 uses
  %i.g = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 2
  br i1 %.not.i.i, label %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 4 uses
  %i.j = trunc nuw i64 %i.h to i1
  %.not1.i.i.i = icmp ne ptr %i.i, null
  %.not.not.i.i.i = and i1 %.not1.i.i.i, %i.j
  br i1 %.not.not.i.i.i, label %bb.g, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeywordINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2m_ENvMs1Z_B1g_B1e_10as_keywordNCINvNtB6_6filter15filter_try_foldB27_B2m_B2S_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4E_12BindingError17get_argument_node00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB3P_6FilterINtB4_9FilterMapNtB1g_20ArgumentsSourceOrderB3j_EB4u_ENtB6j_13SpecAdvanceBy15spec_advance_by0E0E0B4K_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 95
  %i.l = load i8, ptr %i.k, align 1, !range !46, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.l, -1
  br i1 %.not.i.i.i.i.i, label %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !25387, !noundef !12
  %i.o = and i64 %i.n, 72057594037927935
  %i.p = icmp ult i8 %i.l, -48
  %i.q = zext i8 %i.l to i64
  %i.r = add nsw i64 %i.q, -192
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 16)
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.p, i64 %spec.store.select.i.i.i.i.i.i, i64 %i.o
  %i.s = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, 9
  br i1 %i.s, label %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.i.i.i.i, label %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.thread.i.i.i.i

_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.i.i.i.i: ; preds = %bb.h
  %i.t = icmp ugt i8 %i.l, -49
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !25387
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.t, ptr %i.v, ptr %i.u ; 2 uses
  %i.w = load i64, ptr %.sroa.01.0.i.i.i.i.i.i, align 1
  %i.x = xor i64 %i.w, 8314045561195226477
  %i.y = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 8
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = xor i64 %i.aa, 115
  %i.ac = or i64 %i.x, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeywordINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2m_ENvMs1Z_B1g_B1e_10as_keywordNCINvNtB6_6filter15filter_try_foldB27_B2m_B2S_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4E_12BindingError17get_argument_node00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB3P_6FilterINtB4_9FilterMapNtB1g_20ArgumentsSourceOrderB3j_EB4u_ENtB6j_13SpecAdvanceBy15spec_advance_by0E0E0B4K_.exit.i.i, label %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.thread.i.i.i.i

_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.thread.i.i.i.i: ; preds = %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.i.i.i.i, %bb.h, %bb.g
  %i.af = add i64 %.sroa.01.0.i.i, -1
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeywordINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2m_ENvMs1Z_B1g_B1e_10as_keywordNCINvNtB6_6filter15filter_try_foldB27_B2m_B2S_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4E_12BindingError17get_argument_node00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB3P_6FilterINtB4_9FilterMapNtB1g_20ArgumentsSourceOrderB3j_EB4u_ENtB6j_13SpecAdvanceBy15spec_advance_by0E0E0B4K_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeywordINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2m_ENvMs1Z_B1g_B1e_10as_keywordNCINvNtB6_6filter15filter_try_foldB27_B2m_B2S_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4E_12BindingError17get_argument_node00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB3P_6FilterINtB4_9FilterMapNtB1g_20ArgumentsSourceOrderB3j_EB4u_ENtB6j_13SpecAdvanceBy15spec_advance_by0E0E0B4K_.exit.i.i: ; preds = %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.thread.i.i.i.i, %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.i.i.i.i, %bb.f
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.01.0.i.i, %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.i.i.i.i ], [ %i.af, %_RNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_12BindingError17get_argument_node00Bf_.exit.thread.i.i.i.i ], [ %.sroa.01.0.i.i, %bb.f ] ; 2 uses
  %i.ag = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.ag, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i, label %.preheader.i

_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeywordINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2m_ENvMs1Z_B1g_B1e_10as_keywordNCINvNtB6_6filter15filter_try_foldB27_B2m_B2S_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4E_12BindingError17get_argument_node00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB3P_6FilterINtB4_9FilterMapNtB1g_20ArgumentsSourceOrderB3j_EB4u_ENtB6j_13SpecAdvanceBy15spec_advance_by0E0E0B4K_.exit.i.i, %bb.e
  %i.ah = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %.not12.i.i = icmp eq i64 %i.ai, 2
  br i1 %.not12.i.i, label %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i
  %i.aj = phi i64 [ %i.bj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i ], [ %i.ai, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i ]
  %i.ak = phi { i64, ptr } [ %i.bi, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i ], [ %i.ah, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i ]
  %i.al = extractvalue { i64, ptr } %i.ak, 1      ; 8 uses
  %i.am = trunc nuw i64 %i.aj to i1
  %.not1.i.i8.i = icmp ne ptr %i.al, null
  %.not.not.i.i9.i = and i1 %.not1.i.i8.i, %i.am
  br i1 %.not.not.i.i9.i, label %bb.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 95
  %i.ao = load i8, ptr %i.an, align 1, !range !46, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ao, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !25388, !noundef !12
  %i.ar = and i64 %i.aq, 72057594037927935
  %i.as = icmp ult i8 %i.ao, -48
  %i.at = zext i8 %i.ao to i64
  %i.au = add nsw i64 %i.at, -192
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.as, i64 %spec.store.select.i.i.i.i.i.i.i, i64 %i.ar
  %i.av = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i, 9
  br i1 %i.av, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBY_12BindingError17get_argument_node00INtB7_5FnMutTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEE8call_mutB14_.exit.i.i.i.i, label %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBY_12BindingError17get_argument_node00INtB7_5FnMutTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEE8call_mutB14_.exit.i.i.i.i: ; preds = %bb.j
  %i.aw = icmp ugt i8 %i.ao, -49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !25388
  %.sroa.01.0.i.i.i.i.i.i.i = select i1 %i.aw, ptr %i.ay, ptr %i.ax ; 2 uses
  %i.az = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i, align 1
  %i.ba = xor i64 %i.az, 8314045561195226477
  %i.bb = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.bd, 115
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %bcmp.i.i.fr.i.i.i.i = freeze i32 %i.bh
  %.not.i.i.i12.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i, 0
  br i1 %.not.i.i.i12.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i, label %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBY_12BindingError17get_argument_node00INtB7_5FnMutTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEE8call_mutB14_.exit.i.i.i.i, %.lr.ph.i.i
  %i.bi = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0      ; 2 uses
  %.not.i10.i = icmp eq i64 %i.bj, 2
  br i1 %.not.i10.i, label %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit, label %.lr.ph.i.i

_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit: ; preds = %.preheader.i, %bb.i, %bb.j, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBY_12BindingError17get_argument_node00INtB7_5FnMutTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEE8call_mutB14_.exit.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i
  %.sroa.3.0.i = phi ptr [ undef, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i ], [ %i.al, %bb.i ], [ %i.al, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i ], [ %i.al, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBY_12BindingError17get_argument_node00INtB7_5FnMutTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEE8call_mutB14_.exit.i.i.i.i ], [ %i.al, %bb.j ], [ undef, %.preheader.i ]
  %.sroa.0.0.i = phi i64 [ 2, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCINvNtNtB1a_8adapters10filter_map19filter_map_try_foldNtB5_12ArgOrKeywordRNtB5_7KeywordB28_INtNtB1c_6option6OptionB28_ENvMs1Z_B5_B3y_10as_keywordNCINvNtB2M_6filter15filter_try_foldB3R_B28_B49_NCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5W_12BindingError17get_argument_node00NCNvXs_NvB14_10advance_byINtB56_6FilterINtB2K_9FilterMapB3_B4B_EB5M_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0E0B49_EB62_.exit.thread.i ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBY_12BindingError17get_argument_node00INtB7_5FnMutTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEE8call_mutB14_.exit.i.i.i.i ], [ 2, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordRNtB1g_7KeyworduINtNtNtBa_3ops12control_flow11ControlFlowB27_ENvMs1Z_B1g_B1e_10as_keywordNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB27_QNCNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB4D_12BindingError17get_argument_node00E0E0B4J_.exit.i.i ], [ 2, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit, %bb.d, %bb.a, %bb.b, %bb.c, %bb.n
  %.sroa.5.1 = phi ptr [ %i.bt, %bb.n ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.b ], [ %.sroa.3.0.i, %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit ], [ undef, %bb.d ]
  %.sroa.08.1 = phi i64 [ %i.bs, %bb.n ], [ 2, %bb.a ], [ 2, %bb.c ], [ 2, %bb.b ], [ %.sroa.0.0.i, %_RNCNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_12BindingError17get_argument_node0Bd_.exit ], [ 2, %bb.d ]
  %i.bk = insertvalue { i64, ptr } poison, i64 %.sroa.08.1, 0
  %i.bl = insertvalue { i64, ptr } %i.bk, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.bl

bb.l:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments17iter_source_order(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.bm)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.m
  %.sroa.01.0.i = phi i64 [ %i.bp, %bb.m ], [ %3, %bb.l ]
  %i.bn = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %.not.i19 = icmp eq i64 %i.bo, 2
  br i1 %.not.i19, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bp = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %.preheader

_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.m, %bb.l
  %i.br = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0      ; 2 uses
  %.not17 = icmp eq i64 %i.bs, 2
  br i1 %.not17, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.n, !prof !28

_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.preheader, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #64
  unreachable

bb.n:                                             ; preds = %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1c_3num7nonzero7NonZerojENCNvXs_NvB14_10advance_byB3_NtB2M_13SpecAdvanceBy15spec_advance_by0INtNtB1c_6option6OptionB28_EECsoTR8nlGN3X_18ty_python_semantic.exit.thread
  %i.bt = extractvalue { i64, ptr } %i.br, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12BindingError17report_diagnostic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef range(i64 0, 94) %2, ptr noundef %3, ptr noalias noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(16) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %5, ptr noundef %6, ptr %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %8, i64 noundef %9) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 4               ; 4 uses
  %i.ah = alloca [16 x i8], align 4               ; 4 uses
  %i.ai = alloca [16 x i8], align 4               ; 4 uses
  %i.aj = alloca [16 x i8], align 4               ; 4 uses
  %i.ak = alloca [16 x i8], align 4               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 4               ; 4 uses
  %i.an = alloca [16 x i8], align 4               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [12 x i8], align 4               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [48 x i8], align 8               ; 4 uses
  %i.az = alloca [80 x i8], align 8               ; 4 uses
  %i.ba = alloca [80 x i8], align 8               ; 6 uses
  %i.bb = alloca [48 x i8], align 8               ; 6 uses
  %i.bc = alloca [80 x i8], align 8               ; 4 uses
  %i.bd = alloca [80 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [80 x i8], align 8               ; 4 uses
  %i.bg = alloca [48 x i8], align 8               ; 7 uses
  %i.bh = alloca [80 x i8], align 8               ; 6 uses
  %i.bi = alloca [80 x i8], align 8               ; 4 uses
  %i.bj = alloca [80 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 11 uses
  %i.bm = alloca [80 x i8], align 8               ; 5 uses
  %i.bn = alloca [48 x i8], align 8               ; 6 uses
  %i.bo = alloca [80 x i8], align 8               ; 5 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [80 x i8], align 8               ; 13 uses
  %i.bs = alloca [8 x i8], align 8                ; 6 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [32 x i8], align 8               ; 6 uses
  %i.bv = alloca [48 x i8], align 8               ; 9 uses
  %i.bw = alloca [56 x i8], align 8               ; 10 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [48 x i8], align 8               ; 9 uses
  %i.bz = alloca [16 x i8], align 4               ; 5 uses
  %i.ca = alloca [16 x i8], align 4               ; 4 uses
  %i.cb = alloca [80 x i8], align 8               ; 6 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [24 x i8], align 8               ; 11 uses
  %i.cf = alloca [80 x i8], align 8               ; 5 uses
  %i.cg = alloca [48 x i8], align 8               ; 9 uses
  %i.ch = alloca [80 x i8], align 8               ; 7 uses
  %i.ci = alloca [80 x i8], align 8               ; 6 uses
  %i.cj = alloca [80 x i8], align 8               ; 5 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [24 x i8], align 8               ; 11 uses
  %i.cm = alloca [80 x i8], align 8               ; 5 uses
  %i.cn = alloca [48 x i8], align 8               ; 6 uses
  %i.co = alloca [80 x i8], align 8               ; 5 uses
  %i.cp = alloca [8 x i8], align 8                ; 4 uses
  %i.cq = alloca [80 x i8], align 8               ; 10 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [8 x i8], align 8                ; 6 uses
  %i.ct = alloca [160 x i8], align 8              ; 25 uses
  %i.cu = alloca [160 x i8], align 8              ; 5 uses
  %i.cv = alloca [32 x i8], align 8               ; 7 uses
  %i.cw = alloca [24 x i8], align 8               ; 11 uses
  %i.cx = alloca [80 x i8], align 8               ; 5 uses
  %i.cy = alloca [48 x i8], align 8               ; 7 uses
  %i.cz = alloca [80 x i8], align 8               ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [80 x i8], align 8               ; 10 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [8 x i8], align 8                ; 6 uses
  %i.de = alloca [160 x i8], align 8              ; 25 uses
  %i.df = alloca [160 x i8], align 8              ; 5 uses
  %i.dg = alloca [16 x i8], align 8               ; 5 uses
  %i.dh = alloca [24 x i8], align 8               ; 11 uses
  %i.di = alloca [80 x i8], align 8               ; 5 uses
  %i.dj = alloca [48 x i8], align 8               ; 7 uses
  %i.dk = alloca [80 x i8], align 8               ; 6 uses
  %i.dl = alloca [80 x i8], align 8               ; 10 uses
  %i.dm = alloca [16 x i8], align 8               ; 5 uses
  %i.dn = alloca [8 x i8], align 8                ; 6 uses
  %i.do = alloca [160 x i8], align 8              ; 25 uses
  %i.dp = alloca [160 x i8], align 8              ; 5 uses
  %i.dq = alloca [32 x i8], align 8               ; 7 uses
  %i.dr = alloca [24 x i8], align 8               ; 11 uses
  %i.ds = alloca [80 x i8], align 8               ; 5 uses
  %i.dt = alloca [48 x i8], align 8               ; 7 uses
  %i.du = alloca [80 x i8], align 8               ; 5 uses
  %i.dv = alloca [8 x i8], align 8                ; 4 uses
  %i.dw = alloca [16 x i8], align 8               ; 5 uses
  %i.dx = alloca [8 x i8], align 8                ; 4 uses
  %i.dy = alloca [80 x i8], align 8               ; 10 uses
end_hunk_3
