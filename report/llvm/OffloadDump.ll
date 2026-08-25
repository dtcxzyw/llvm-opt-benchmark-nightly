Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OffloadDump?download=true
begin_hunk_0_@_ZN4llvm26dumpOffloadBundleFatBinaryERKNS_6object10ObjectFileENS_9StringRefE:bb.a
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !125

_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN4llvm6object19OffloadBundleFatBinD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %._crit_edge106
  %i.bp = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %.pre115, %._crit_edge106 ], [ %i.u, %_ZN4llvm5ErrorD2Ev.exit ] ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.k
  br i1 %i.bq, label %_ZN4llvm11SmallVectorINS_6object19OffloadBundleFatBinELj1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.i
  call void @free(ptr noundef %i.bp) #12
  br label %_ZN4llvm11SmallVectorINS_6object19OffloadBundleFatBinELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_6object19OffloadBundleFatBinELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6object19OffloadBundleFatBinELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ao

bb.g:                                             ; preds = %.lr.ph105, %_ZN4llvm11SmallVectorINS_6object18OffloadBundleEntryELj1EED2Ev.exit
  %.sroa.7.0104 = phi i64 [ 0, %.lr.ph105 ], [ %i.cm, %_ZN4llvm11SmallVectorINS_6object18OffloadBundleEntryELj1EED2Ev.exit ] ; 3 uses
  %.sroa.087.0103 = phi ptr [ %i.u, %.lr.ph105 ], [ %i.cn, %_ZN4llvm11SmallVectorINS_6object18OffloadBundleEntryELj1EED2Ev.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  store ptr %i.y, ptr %10, align 8, !tbaa !20, !alias.scope !126
  store i32 0, ptr %i.z, align 8, !tbaa !22, !alias.scope !126
  store i32 1, ptr %i.aa, align 4, !tbaa !23, !alias.scope !126
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.087.0103, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !22, !noalias !126
  %.not.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_6object18OffloadBundleEntryELj1EED2Ev.exit, label %_ZN4llvm6object19OffloadBundleFatBin10getEntriesEv.exit

_ZN4llvm6object19OffloadBundleFatBin10getEntriesEv.exit: ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.087.0103, i64 40
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_6object18OffloadBundleEntryEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %i.bt) ; 0 uses
  %.pre = load ptr, ptr %10, align 8, !tbaa !20   ; 3 uses
  %.pre108 = load i32, ptr %i.z, align 8, !tbaa !22 ; 2 uses
  %i.bv = zext i32 %.pre108 to i64
  %.idx107 = mul nuw nsw i64 %i.bv, 56
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx107
  %.not100 = icmp eq i32 %.pre108, 0
  br i1 %.not100, label %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm6object19OffloadBundleFatBin10getEntriesEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.087.0103, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.087.0103, i64 16
  %i.by = icmp eq i64 %.sroa.7.0104, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.087.0103, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.087.0103, i64 112
  br label %bb.i

._crit_edge:                                      ; preds = %bb.an
  %.pre113 = load ptr, ptr %10, align 8, !tbaa !20 ; 3 uses
  %.pre114 = load i32, ptr %i.z, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i35 = icmp eq i32 %.pre114, 0
  br i1 %.not4.i.i35, label %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i36

.lr.ph.i.preheader.i36:                           ; preds = %._crit_edge
  %i.cb = zext i32 %.pre114 to i64
  %.idx.i37 = mul nuw nsw i64 %i.cb, 56
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre113, i64 %.idx.i37
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %_ZN4llvm6object18OffloadBundleEntryD2Ev.exit.i.i, %.lr.ph.i.preheader.i36
  %.05.i.i39 = phi ptr [ %i.cd, %_ZN4llvm6object18OffloadBundleEntryD2Ev.exit.i.i ], [ %i.cc, %.lr.ph.i.preheader.i36 ] ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %.05.i.i39, i64 -56 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.05.i.i39, i64 -32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.05.i.i39, i64 -16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN4llvm6object18OffloadBundleEntryD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i38
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !18
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #14
  br label %_ZN4llvm6object18OffloadBundleEntryD2Ev.exit.i.i

_ZN4llvm6object18OffloadBundleEntryD2Ev.exit.i.i: ; preds = %.lr.ph.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i40 = icmp eq ptr %.pre113, %i.cd
  br i1 %.not.i.i40, label %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i38, !llvm.loop !124

_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN4llvm6object18OffloadBundleEntryD2Ev.exit.i.i
  %.pre.i41 = load ptr, ptr %10, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm6object19OffloadBundleFatBin10getEntriesEv.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %._crit_edge
  %i.ck = phi ptr [ %.pre.i41, %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %.pre113, %._crit_edge ], [ %.pre, %_ZN4llvm6object19OffloadBundleFatBin10getEntriesEv.exit ] ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.y
  br i1 %i.cl, label %_ZN4llvm11SmallVectorINS_6object18OffloadBundleEntryELj1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.i
  call void @free(ptr noundef %i.ck) #12
  br label %_ZN4llvm11SmallVectorINS_6object18OffloadBundleEntryELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_6object18OffloadBundleEntryELj1EED2Ev.exit: ; preds = %bb.g, %_ZN4llvm23SmallVectorTemplateBaseINS_6object18OffloadBundleEntryELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.cm = add nuw nsw i64 %.sroa.7.0104, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.087.0103, i64 120 ; 2 uses
  %.not97 = icmp eq ptr %i.cn, %i.x
  br i1 %.not97, label %._crit_edge106, label %bb.g

bb.i:                                             ; preds = %.lr.ph, %bb.an
  %.0101 = phi ptr [ %.pre, %.lr.ph ], [ %i.jj, %bb.an ] ; 8 uses
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.0101, i64 24
  %i.cp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef %1, i64 noundef 0, i64 noundef %2) #12
  %.not34 = icmp eq i64 %i.cp, -1
  br i1 %.not34, label %bb.k, label %bb.an

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bx, align 8, !tbaa !49 ; 3 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !53 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  store ptr %i.ac, ptr %15, align 8, !tbaa !38, !alias.scope !129
  br i1 %.not.i, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %bb.l

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %bb.k
  store i64 0, ptr %i.ad, align 8, !tbaa !42, !alias.scope !129
  store i8 0, ptr %i.ac, align 8, !tbaa !18, !alias.scope !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !129
  store i64 %.sroa.2.0.copyload.i, ptr %i.c, align 8, !tbaa !53, !noalias !129
  %i.cq = icmp ugt i64 %.sroa.2.0.copyload.i, 15
  br i1 %i.cq, label %bb.m, label %._crit_edge.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #12 ; 2 uses
  store ptr %i.cr, ptr %15, align 8, !tbaa !40, !alias.scope !129
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !53, !noalias !129
  store i64 %i.cs, ptr %i.ac, align 8, !tbaa !18, !alias.scope !129
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.m, %bb.l
  %i.ct = phi ptr [ %i.cr, %bb.m ], [ %i.ac, %bb.l ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.i, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !18
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !18
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.n, %bb.o
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !53, !noalias !129 ; 2 uses
  store i64 %i.cv, ptr %i.ad, align 8, !tbaa !42, !alias.scope !129
  %i.cw = load ptr, ptr %15, align 8, !tbaa !40, !alias.scope !129
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 0, ptr %i.cx, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !129
  %.pre109 = load i64, ptr %i.ad, align 8, !tbaa !42, !noalias !132
  %i.cy = icmp eq i64 %.pre109, 4611686018427387903
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  br i1 %i.cy, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.p:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #13, !noalias !132
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.cz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.4, i64 noundef 1) #12, !noalias !132 ; 6 uses
  store ptr %i.ae, ptr %14, align 8, !tbaa !38, !alias.scope !132
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 5 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !42 ; 3 uses
  %i.df = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.df)
  %i.dg = add nuw nsw i64 %i.de, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.db, i64 %i.dg, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.da, ptr %14, align 8, !tbaa !40, !alias.scope !132
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !18
  store i64 %i.dh, ptr %i.ae, align 8, !tbaa !18, !alias.scope !132
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.pre.i42 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %i.di = phi i64 [ %i.de, %bb.q ], [ %.pre.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.di, ptr %i.af, align 8, !tbaa !42, !alias.scope !132
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !40
  store i64 0, ptr %i.dj, align 8, !tbaa !42
  store i8 0, ptr %i.db, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !141
  br i1 %i.by, label %.thread.i10.i, label %.lr.ph.i3.i

.thread.i10.i:                                    ; preds = %bb.r
  store i8 48, ptr %i.ah, align 4, !tbaa !18, !noalias !141
  br label %._crit_edge.i7.i

.lr.ph.i3.i:                                      ; preds = %bb.r, %.lr.ph.i3.i
  %.111.i4.i = phi ptr [ %i.dn, %.lr.ph.i3.i ], [ %i.ag, %bb.r ]
  %.0810.i5.i = phi i64 [ %i.do, %.lr.ph.i3.i ], [ %.sroa.7.0104, %bb.r ] ; 3 uses
  %i.dk = urem i64 %.0810.i5.i, 10
  %i.dl = trunc nuw nsw i64 %i.dk to i8
  %i.dm = or disjoint i8 %i.dl, 48
  %i.dn = getelementptr inbounds i8, ptr %.111.i4.i, i64 -1 ; 3 uses
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !18, !noalias !141
  %i.do = udiv i64 %.0810.i5.i, 10
  %.not.i6.i = icmp samesign ult i64 %.0810.i5.i, 10
  br i1 %.not.i6.i, label %._crit_edge.i7.i, label %.lr.ph.i3.i, !llvm.loop !142

._crit_edge.i7.i:                                 ; preds = %.lr.ph.i3.i, %.thread.i10.i
  %.1.lcssa.i8.i = phi ptr [ %i.ah, %.thread.i10.i ], [ %i.dn, %.lr.ph.i3.i ] ; 3 uses
  store ptr %i.ai, ptr %16, align 8, !tbaa !38, !alias.scope !141
  store i64 0, ptr %i.aj, align 8, !tbaa !42, !alias.scope !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !141
  %i.dp = ptrtoint ptr %.1.lcssa.i8.i to i64
  %i.dq = sub i64 %i.ak, %i.dp                    ; 4 uses
  store i64 %i.dq, ptr %i.a, align 8, !tbaa !53, !noalias !141
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %bb.s, label %._crit_edge.i.i.i9.i

bb.s:                                             ; preds = %._crit_edge.i7.i
  %i.ds = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.ds, ptr %16, align 8, !tbaa !40, !alias.scope !141
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !141
  store i64 %i.dt, ptr %i.ai, align 8, !tbaa !18, !alias.scope !141
  br label %._crit_edge.i.i.i9.i

._crit_edge.i.i.i9.i:                             ; preds = %bb.s, %._crit_edge.i7.i
  %i.du = phi ptr [ %i.ds, %bb.s ], [ %i.ai, %._crit_edge.i7.i ] ; 2 uses
  switch i64 %i.dq, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZN4llvm6itostrB5cxx11El.exit
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i9.i
  %i.dv = load i8, ptr %.1.lcssa.i8.i, align 1, !tbaa !18, !noalias !141
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !18
  br label %_ZN4llvm6itostrB5cxx11El.exit

bb.u:                                             ; preds = %._crit_edge.i.i.i9.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr nonnull align 1 %.1.lcssa.i8.i, i64 %i.dq, i1 false)
  br label %_ZN4llvm6itostrB5cxx11El.exit

_ZN4llvm6itostrB5cxx11El.exit:                    ; preds = %._crit_edge.i.i.i9.i, %bb.t, %bb.u
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !141 ; 2 uses
  store i64 %i.dw, ptr %i.aj, align 8, !tbaa !42, !alias.scope !141
  %i.dx = load ptr, ptr %16, align 8, !tbaa !40, !alias.scope !141
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 0, ptr %i.dy, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !141
  %.pre110 = load i64, ptr %i.af, align 8, !tbaa !42, !noalias !143 ; 4 uses
  %.pre111 = load i64, ptr %i.aj, align 8, !tbaa !42, !noalias !143 ; 4 uses
  %.pre112 = load ptr, ptr %14, align 8, !tbaa !40, !noalias !143 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %28 = add i64 %.pre111, %.pre110                ; 2 uses
  %i.dz = icmp eq ptr %.pre112, %i.ae
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4llvm6itostrB5cxx11El.exit
  %i.ea = icmp ult i64 %.pre110, 16
  call void @llvm.assume(i1 %i.ea)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZN4llvm6itostrB5cxx11El.exit
  %i.eb = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !143
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ec = phi i64 [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ed = icmp ugt i64 %28, %i.ec
  br i1 %i.ed, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ee = load ptr, ptr %16, align 8, !tbaa !40, !noalias !143
  %i.ef = icmp eq ptr %i.ee, %i.ai
  br i1 %i.ef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.v
  %i.eg = icmp ult i64 %.pre111, 16
  call void @llvm.assume(i1 %i.eg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.v
  %i.eh = load i64, ptr %i.ai, align 8, !tbaa !18, !noalias !143
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.ei = phi i64 [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i46 = icmp ugt i64 %28, %i.ei
  br i1 %.not.i46, label %bb.x, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ej = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %.pre112, i64 noundef %.pre110) #12, !noalias !143 ; 5 uses
  store ptr %i.al, ptr %13, align 8, !tbaa !38, !alias.scope !143
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !40 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 5 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.w:                                             ; preds = %.critedge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !42 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.el, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.critedge.i
  store ptr %i.ek, ptr %13, align 8, !tbaa !40, !alias.scope !143
  %i.er = load i64, ptr %i.el, align 8, !tbaa !18
  store i64 %i.er, ptr %i.al, align 8, !tbaa !18, !alias.scope !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !42
  store i64 %i.et, ptr %i.am, align 8, !tbaa !42, !alias.scope !143
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !40
  store i64 0, ptr %i.es, align 8, !tbaa !42
  store i8 0, ptr %i.el, align 8, !tbaa !18
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.eu = sub i64 4611686018427387903, %.pre110
  %i.ev = icmp ult i64 %i.eu, %.pre111
  br i1 %i.ev, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #13, !noalias !143
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.x
  %i.ew = load ptr, ptr %16, align 8, !tbaa !40, !noalias !143
  %i.ex = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.ew, i64 noundef %.pre111) #12, !noalias !143 ; 5 uses
  store ptr %i.al, ptr %13, align 8, !tbaa !38, !alias.scope !143
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !40 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 5 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !42 ; 2 uses
  %i.fd = icmp ult i64 %i.fc, 16
  call void @llvm.assume(i1 %i.fd)
  %i.fe = add nuw nsw i64 %i.fc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.ez, i64 %i.fe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.ey, ptr %13, align 8, !tbaa !40, !alias.scope !143
  %i.ff = load i64, ptr %i.ez, align 8, !tbaa !18
  store i64 %i.ff, ptr %i.al, align 8, !tbaa !18, !alias.scope !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !42
  store i64 %i.fh, ptr %i.am, align 8, !tbaa !42, !alias.scope !143
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !40
  store i64 0, ptr %i.fg, align 8, !tbaa !42
  store i8 0, ptr %i.ez, align 8, !tbaa !18
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.fi = load i64, ptr %i.am, align 8, !tbaa !42, !noalias !146
  %i.fj = icmp eq i64 %i.fi, 4611686018427387903
  br i1 %i.fj, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #13, !noalias !146
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.fk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.4, i64 noundef 1) #12, !noalias !146 ; 6 uses
  store ptr %i.an, ptr %12, align 8, !tbaa !38, !alias.scope !146
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !40 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 5 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !42 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fq)
  %i.fr = add nuw nsw i64 %i.fp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.fm, i64 %i.fr, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47
  store ptr %i.fl, ptr %12, align 8, !tbaa !40, !alias.scope !146
  %i.fs = load i64, ptr %i.fm, align 8, !tbaa !18
  store i64 %i.fs, ptr %i.an, align 8, !tbaa !18, !alias.scope !146
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.pre.i50 = load i64, ptr %.phi.trans.insert.i49, align 8, !tbaa !42
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit52

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit52: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ft = phi i64 [ %i.fp, %bb.ab ], [ %.pre.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %i.ft, ptr %i.ao, align 8, !tbaa !42, !alias.scope !146
  store ptr %i.fm, ptr %i.fk, align 8, !tbaa !40
  store i64 0, ptr %i.fu, align 8, !tbaa !42
  store i8 0, ptr %i.fm, align 8, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.fv = getelementptr inbounds nuw i8, ptr %.0101, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !42, !noalias !149 ; 2 uses
  %i.fx = load i64, ptr %i.ao, align 8, !tbaa !42, !noalias !149
  %i.fy = sub i64 4611686018427387903, %i.fx
  %i.fz = icmp ult i64 %i.fy, %i.fw
  br i1 %i.fz, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i53

bb.ac:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit52
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #13, !noalias !149
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i53: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit52
  %i.ga = getelementptr inbounds nuw i8, ptr %.0101, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !40, !noalias !149
  %i.gc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.gb, i64 noundef %i.fw) #12, !noalias !149 ; 6 uses
  store ptr %i.ap, ptr %11, align 8, !tbaa !38, !alias.scope !149
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !40 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 5 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i53
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !42 ; 3 uses
  %i.gi = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gi)
  %i.gj = add nuw nsw i64 %i.gh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ge, i64 %i.gj, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i53
  store ptr %i.gd, ptr %11, align 8, !tbaa !40, !alias.scope !149
  %i.gk = load i64, ptr %i.ge, align 8, !tbaa !18
  store i64 %i.gk, ptr %i.ap, align 8, !tbaa !18, !alias.scope !149
  %.phi.trans.insert.i55 = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.pre.i56 = load i64, ptr %.phi.trans.insert.i55, align 8, !tbaa !42
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.gl = phi i64 [ %i.gh, %bb.ad ], [ %.pre.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %i.gl, ptr %i.aq, align 8, !tbaa !42, !alias.scope !149
  store ptr %i.ge, ptr %i.gc, align 8, !tbaa !40
  store i64 0, ptr %i.gm, align 8, !tbaa !42
  store i8 0, ptr %i.ge, align 8, !tbaa !18
  %i.gn = load ptr, ptr %12, align 8, !tbaa !40   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.an
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.gp = load i64, ptr %i.an, align 8, !tbaa !18
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.gr = load ptr, ptr %13, align 8, !tbaa !40   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.al
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gt = load i64, ptr %i.al, align 8, !tbaa !18
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  %i.gv = load ptr, ptr %16, align 8, !tbaa !40   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ai
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.gx = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.gz = load ptr, ptr %14, align 8, !tbaa !40   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ae
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.hb = load i64, ptr %i.ae, align 8, !tbaa !18
end_hunk_0
