Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUMCExpr?download=true
inline.NumInlined: 836
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE:bb.a
bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !256
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !271
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !42
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = and i32 %i.cg, 16777215
  switch i32 %i.ch, label %bb.ag [
    i32 18, label %bb.m
    i32 0, label %bb.o
    i32 13, label %bb.o
    i32 11, label %bb.s
    i32 15, label %bb.w
    i32 16, label %bb.w
    i32 17, label %bb.w
    i32 1, label %bb.aa
  ]

bb.m:                                             ; preds = %bb.l
  %i.ci = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i82 = extractvalue { ptr, i8 } %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i82, i64 8
  %i.ck = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i32 noundef 0)
  br i1 %i.ck, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.cm = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2)
  br label %bb.ag

bb.o:                                             ; preds = %bb.l, %bb.l
  %i.cn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i83 = extractvalue { ptr, i8 } %i.cn, 0
  %i.co = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i83, i64 8
  %i.cp = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.co, i32 noundef 0)
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.cr = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2)
  br label %bb.ag

bb.q:                                             ; preds = %bb.o
  %i.cs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i84 = extractvalue { ptr, i8 } %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i84, i64 8
  %i.cu = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 0)
  br i1 %i.cu, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.cw = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2)
  br label %bb.ag

bb.s:                                             ; preds = %bb.l
  %i.cx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i85 = extractvalue { ptr, i8 } %i.cx, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i85, i64 8
  %i.cz = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i32 noundef 1)
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.db = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.da, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2)
  br label %bb.ag

bb.u:                                             ; preds = %bb.s
  %i.dc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i86 = extractvalue { ptr, i8 } %i.dc, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i86, i64 8
  %i.de = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i32 noundef 1)
  br i1 %i.de, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.dg = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2)
  br label %bb.ag

bb.w:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.dh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i87 = extractvalue { ptr, i8 } %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i87, i64 8
  %i.dj = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i32 noundef 0)
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.dl = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2)
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.dm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i88 = extractvalue { ptr, i8 } %i.dm, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i88, i64 8
  %i.do = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i32 noundef 0)
  br i1 %i.do, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.dp = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(2208) %2, i1 noundef zeroext false, i32 noundef 0) #17
  br label %bb.ag

bb.aa:                                            ; preds = %bb.l
  %i.dq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i89 = extractvalue { ptr, i8 } %i.dq, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i89, i64 8
  %i.ds = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i32 noundef 0)
  br i1 %i.ds, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i90 = extractvalue { ptr, i8 } %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i90, i64 8
  %i.dv = call fastcc noundef zeroext i1 @"_ZZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextEENK3$_0clERS4_j"(ptr noundef nonnull align 8 dereferenceable(32) %i.du, i32 noundef 0)
  br i1 %i.dv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dw = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(2208) %2, i1 noundef zeroext false, i32 noundef 0) #17
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab, %bb.y, %bb.u, %bb.q, %bb.m
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.dy = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2) ; 2 uses
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.ea = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2) ; 2 uses
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not78 = icmp eq ptr %i.dy, %i.eb
  %i.ec = load ptr, ptr %i.d, align 8
  %.not79 = icmp eq ptr %i.ea, %i.ec
  %or.cond = select i1 %.not78, i1 %.not79, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load i32, ptr %i.cf, align 1
  %i.ee = and i32 %i.ed, 16777215
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ef, align 8, !tbaa !14
  %i.eg = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef %i.ee, ptr noundef %i.dy, ptr noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(2208) %2, ptr %.sroa.0.0.copyload.i) #17
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %bb.ag

bb.ag:                                            ; preds = %bb.l, %bb.ae, %bb.af, %bb.ac, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n
  %.2 = phi ptr [ %i.eh, %bb.af ], [ %i.cm, %bb.n ], [ %i.dw, %bb.ac ], [ %i.cr, %bb.p ], [ %i.cw, %bb.r ], [ %i.db, %bb.t ], [ %i.dg, %bb.v ], [ %i.dl, %bb.x ], [ %i.dp, %bb.z ], [ %i.eg, %bb.ae ], [ %.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.loopexit

.thread115:                                       ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countES4_.exit, %bb.k
  %i.ei = phi ptr [ %.pre, %bb.k ], [ %0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countES4_.exit ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !287 ; 2 uses
  %i.el = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2) ; 2 uses
  %.not77 = icmp eq ptr %i.ek, %i.el
  br i1 %.not77, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread115
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = and i32 %i.en, 16777215
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.0.0.copyload.i91 = load ptr, ptr %i.ep, align 8, !tbaa !14
  %i.eq = call noundef ptr @_ZN4llvm11MCUnaryExpr6createENS0_6OpcodeEPKNS_6MCExprERNS_9MCContextENS_5SMLocE(i32 noundef %i.eo, ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(2208) %2, ptr %.sroa.0.0.copyload.i91) #17
  br label %.loopexit

bb.ai:                                            ; preds = %.thread115
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %.loopexit

bb.aj:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.es, ptr %4, align 8, !tbaa !306
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.et, align 8, !tbaa !307
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 8, ptr %i.eu, align 4, !tbaa !308
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.sroa.0.0.copyload.i92 = load ptr, ptr %i.ev, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !45 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.2.0.copyload.i, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i92, i64 %.idx
  %.not7699 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not7699, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE9push_backES3_.exit
  br i1 %i.fh, label %bb.am, label %._crit_edge..critedge_crit_edge

._crit_edge..critedge_crit_edge:                  ; preds = %._crit_edge
  %.pre103 = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %.critedge

.lr.ph:                                           ; preds = %bb.aj, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE9push_backES3_.exit
  %.072101 = phi ptr [ %i.fi, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE9push_backES3_.exit ], [ %.sroa.0.0.copyload.i92, %bb.aj ] ; 2 uses
  %.073100 = phi i1 [ %i.fh, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE9push_backES3_.exit ], [ false, %bb.aj ]
  %i.ex = load ptr, ptr %.072101, align 8, !tbaa !42 ; 2 uses
  %i.ey = call fastcc noundef ptr @_ZL13tryFoldHelperPKN4llvm6MCExprERNS_8DenseMapIS2_NS_9KnownBitsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEERNS_9MCContextE(ptr noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(2208) %2) ; 3 uses
  %i.ez = load i32, ptr %i.et, align 8, !tbaa !307 ; 2 uses
  %i.fa = load i32, ptr %i.eu, align 4, !tbaa !308
  %.not.i = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i, label %bb.al, label %bb.ak, !prof !40

bb.ak:                                            ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ey)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE9push_backES3_.exit

bb.al:                                            ; preds = %.lr.ph
  %i.fb = zext i32 %i.ez to i64
  %i.fc = load ptr, ptr %4, align 8, !tbaa !306
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  store ptr %i.ey, ptr %i.fd, align 1
  %i.fe = load i32, ptr %i.et, align 8, !tbaa !307
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !307
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MCExprELb1EE9push_backES3_.exit: ; preds = %bb.ak, %bb.al
  %i.fg = icmp ne ptr %i.ex, %i.ey
  %i.fh = or i1 %.073100, %i.fg                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.072101, i64 8 ; 2 uses
  %.not76 = icmp eq ptr %i.fi, %i.ew
  br i1 %.not76, label %._crit_edge, label %.lr.ph

bb.am:                                            ; preds = %._crit_edge
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !17
  %i.fl = load ptr, ptr %4, align 8, !tbaa !306
  %i.fm = load i32, ptr %i.et, align 8, !tbaa !307
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !27 ; 3 uses
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = add i64 %i.fq, 64                       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !39
  %i.fu = icmp ult i64 %i.fr, %i.ft
  br i1 %i.fu, label %_ZnwmRN4llvm9MCContextEm.exit.i, label %_ZnwmRN4llvm9MCContextEm.exit.thread.i, !prof !40

_ZnwmRN4llvm9MCContextEm.exit.thread.i:           ; preds = %bb.am
  %i.fv = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.fo, i64 noundef 64, i64 noundef 64, i8 3)
  br label %bb.an

_ZnwmRN4llvm9MCContextEm.exit.i:                  ; preds = %bb.am
  %i.fw = inttoptr i64 %i.fr to ptr
  store ptr %i.fw, ptr %i.fo, align 8, !tbaa !27
  %i.fx = icmp eq ptr %i.fp, null
  br i1 %i.fx, label %_ZN4llvm12AMDGPUMCExpr6createENS0_11VariantKindENS_8ArrayRefIPKNS_6MCExprEEERNS_9MCContextE.exit, label %bb.an

bb.an:                                            ; preds = %_ZnwmRN4llvm9MCContextEm.exit.i, %_ZnwmRN4llvm9MCContextEm.exit.thread.i
  %.0.i.i.i.i5.i = phi ptr [ %i.fv, %_ZnwmRN4llvm9MCContextEm.exit.thread.i ], [ %i.fp, %_ZnwmRN4llvm9MCContextEm.exit.i ] ; 2 uses
  call void @_ZN4llvm12AMDGPUMCExprC1ENS0_11VariantKindENS_8ArrayRefIPKNS_6MCExprEEERNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i.i5.i, i32 noundef %i.fk, ptr %i.fl, i64 %i.fn, ptr noundef nonnull align 8 dereferenceable(2208) %2) #17
  br label %_ZN4llvm12AMDGPUMCExpr6createENS0_11VariantKindENS_8ArrayRefIPKNS_6MCExprEEERNS_9MCContextE.exit

_ZN4llvm12AMDGPUMCExpr6createENS0_11VariantKindENS_8ArrayRefIPKNS_6MCExprEEERNS_9MCContextE.exit: ; preds = %_ZnwmRN4llvm9MCContextEm.exit.i, %bb.an
  %i.fy = phi ptr [ %.0.i.i.i.i5.i, %bb.an ], [ null, %_ZnwmRN4llvm9MCContextEm.exit.i ] ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %spec.select = select i1 %i.fz, ptr null, ptr %i.ga
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %._crit_edge..critedge_crit_edge, %_ZN4llvm12AMDGPUMCExpr6createENS0_11VariantKindENS_8ArrayRefIPKNS_6MCExprEEERNS_9MCContextE.exit
  %i.gb = phi ptr [ %spec.select, %_ZN4llvm12AMDGPUMCExpr6createENS0_11VariantKindENS_8ArrayRefIPKNS_6MCExprEEERNS_9MCContextE.exit ], [ %.pre103, %._crit_edge..critedge_crit_edge ], [ %.pre, %bb.aj ]
  %i.gc = load ptr, ptr %4, align 8, !tbaa !306   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.es
  br i1 %i.gd, label %_ZN4llvm11SmallVectorIPKNS_6MCExprELj8EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.gc) #17
  br label %_ZN4llvm11SmallVectorIPKNS_6MCExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_6MCExprELj8EED2Ev.exit: ; preds = %.critedge, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countES4_.exit, %_ZN4llvm5APIntD2Ev.exit, %bb.ag, %_ZN4llvm11SmallVectorIPKNS_6MCExprELj8EED2Ev.exit, %bb.ai, %bb.ah, %.thread, %bb.k, %bb.b, %bb.a
  %.5 = phi ptr [ %.pre, %bb.k ], [ %0, %bb.a ], [ %0, %bb.b ], [ %i.er, %bb.ai ], [ %i.bs, %_ZN4llvm5APIntD2Ev.exit ], [ %0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countES4_.exit ], [ %.2, %bb.ag ], [ %i.ca, %.thread ], [ %i.gb, %_ZN4llvm11SmallVectorIPKNS_6MCExprELj8EED2Ev.exit ], [ %i.eq, %bb.ah ], [ %0, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !303  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !294
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !302
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ad, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !269
  %i.t = icmp ugt i32 %i.s, 64
  br i1 %i.t, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN4llvm5APIntD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #18
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !269
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !54  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #18
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.f, %bb.e, %_ZN4llvm5APIntD2Ev.exit.i.i.i
  %i.ac = add i32 %.0.i3.i, -1
  %i.ad = and i32 %i.ac, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !309

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !310

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !303  ; 2 uses
  %i.ae = icmp eq i32 %.pr, 0
  br i1 %i.ae, label %_ZN4llvm8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !294
  %i.ag = zext i32 %.pr to i64                    ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 40
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCExprENS_9KnownBitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6AMDGPU17printAMDGPUMCExprEPKNS_6MCExprERNS_11raw_ostreamEPKNS_9MCAsmInfoE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call noundef zeroext i1 @_ZNK4llvm6MCExpr18evaluateAsAbsoluteERl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !45
  %i.d = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.c) #17 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm6MCExpr18evaluateAsAbsoluteERl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm6AMDGPU9isLitExprEPKNS_6MCExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !8
  %.not = icmp eq i8 %i.a, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = and i32 %i.c, -2
  %spec.select = icmp eq i32 %i.d, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %spec.select, %bb.b ]
  ret i1 %i.e
}
end_hunk_0
