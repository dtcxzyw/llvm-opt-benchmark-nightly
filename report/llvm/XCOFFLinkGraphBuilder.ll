Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XCOFFLinkGraphBuilder?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1034
begin_hunk_0_@_ZN4llvm7jitlink21XCOFFLinkGraphBuilder18processRelocationsEv:bb.a
  br label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !8, !noalias !304
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !304
  %i.at = call { i64, ptr } %i.as(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 %lhsv.i.i.i.i191) #17, !noalias !304, !inline_history !307 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0      ; 3 uses
  %i.av = extractvalue { i64, ptr } %i.at, 1
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !8, !noalias !304
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 280
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !304
  %i.az = call { i64, ptr } %i.ay(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 %lhsv.i.i.i.i191) #17, !noalias !304, !inline_history !308
  %i.ba = extractvalue { i64, ptr } %i.az, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i64 %i.au, ptr %4, align 8
  store ptr %i.av, ptr %i.r, align 8
  %.not.i.i.i.i40.not182 = icmp eq i64 %i.au, %i.ba
  br i1 %.not.i.i.i.i40.not182, label %.loopexit, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.c, %bb.aa
  %lhsv.i.i.i.i38183 = phi i64 [ %lhsv.i.i.i.i38, %bb.aa ], [ %i.au, %bb.c ] ; 6 uses
  %.sroa.10112.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !141 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.s, ptr %5, align 8, !tbaa !309
  store i64 0, ptr %i.t, align 8, !tbaa !311
  store i64 16, ptr %i.u, align 8, !tbaa !312
  %i.bb = load ptr, ptr %.sroa.10112.0.copyload, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 328
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10112.0.copyload, i64 %lhsv.i.i.i.i38183, ptr noundef nonnull align 8 dereferenceable(24) %5) #17, !inline_history !313
  %i.be = load ptr, ptr %.sroa.10112.0.copyload, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 312
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call { i64, ptr } %i.bg(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10112.0.copyload, i64 %lhsv.i.i.i.i38183) #17, !inline_history !314 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8, !noalias !315
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !315
  call void %i.bm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i64 %i.bi) #17, !inline_history !318
  %i.bn = load i8, ptr %i.v, align 8
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %.critedge, label %bb.e

.critedge:                                        ; preds = %.lr.ph185
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.bp = load i64, ptr %6, align 8, !tbaa !143, !noalias !319
  %i.bq = inttoptr i64 %i.bp to ptr
  store ptr %i.bq, ptr %0, align 8, !tbaa !152, !alias.scope !319
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.br = load ptr, ptr %5, align 8, !tbaa !309   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.s
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.br) #17
  br label %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit

_ZN4llvm11SmallVectorIcLj16EED2Ev.exit:           ; preds = %.critedge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph185
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.bu = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.bt, i64 noundef %i.bi) #17 ; 5 uses
  %i.bv = load ptr, ptr %i.w, align 8, !tbaa !322, !noalias !323 ; 3 uses
  %i.bw = load ptr, ptr %i.x, align 8, !tbaa !328, !noalias !323 ; 3 uses
  %i.bx = load i32, ptr %i.y, align 4, !tbaa !329, !noalias !323 ; 4 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = add i32 %i.bx, -1                       ; 2 uses
  %i.ca = mul i32 %i.bu, 37
  %.024.i.i = and i32 %i.bz, %i.ca                ; 3 uses
  %i.cb = zext i32 %.024.i.i to i64               ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.cb ; 2 uses
  %i.cd = lshr i64 %i.cb, 5
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !160
  %i.cg = and i32 %.024.i.i, 31
  %i.ch = lshr i32 %i.cf, %i.cg
  %i.ci = trunc i32 %i.ch to i1
  br i1 %i.ci, label %.lr.ph.i.i79, label %.loopexit.i, !prof !199

bb.g:                                             ; preds = %.lr.ph.i.i79
  %i.cj = add nuw i32 %.025.i.i, 1
  %.0.i.i = and i32 %i.cj, %i.bz                  ; 3 uses
  %i.ck = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.ck ; 2 uses
  %i.cm = lshr i64 %i.ck, 5
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !160
  %i.cp = and i32 %.0.i.i, 31
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = trunc i32 %i.cq to i1
  br i1 %i.cr, label %.lr.ph.i.i79, label %.loopexit.i, !prof !200, !llvm.loop !330

.lr.ph.i.i79:                                     ; preds = %bb.f, %bb.g
  %i.cs = phi ptr [ %i.cl, %bb.g ], [ %i.cc, %bb.f ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i.i, %bb.g ], [ %.024.i.i, %bb.f ]
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !160
  %i.cu = icmp eq i32 %i.bu, %i.ct
  br i1 %i.cu, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, label %bb.g, !prof !201

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e
  %.lcssa30.sink.i.ph.i = phi ptr [ %i.cc, %bb.f ], [ null, %bb.e ], [ %i.cl, %bb.g ]
  %i.cv = load i32, ptr %i.z, align 8, !tbaa !331
  %i.cw = shl i32 %i.cv, 2
  %i.cx = add i32 %i.cw, 4
  %i.cy = mul i32 %i.bx, 3
  %.not.i.i76 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i.i76, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, label %bb.h, !prof !201

bb.h:                                             ; preds = %.loopexit.i
  %i.cz = shl i32 %i.bx, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.w, i32 noundef %i.cz)
  %i.da = load ptr, ptr %i.w, align 8, !tbaa !322, !noalias !332 ; 5 uses
  %i.db = load ptr, ptr %i.x, align 8, !tbaa !328, !noalias !332 ; 5 uses
  %i.dc = load i32, ptr %i.y, align 4, !tbaa !329, !noalias !332 ; 2 uses
  %i.dd = icmp ne i32 %i.dc, 0
  call void @llvm.assume(i1 %i.dd)
  %i.de = add i32 %i.dc, -1                       ; 2 uses
  %i.df = mul i32 %i.bu, 37
  %.024.i = and i32 %i.de, %i.df                  ; 3 uses
  %i.dg = zext i32 %.024.i to i64                 ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dg ; 2 uses
  %i.di = lshr i64 %i.dg, 5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !160
  %i.dl = and i32 %.024.i, 31
  %i.dm = lshr i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.dm to i1
  br i1 %i.dn, label %.lr.ph.i80, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, !prof !199

bb.i:                                             ; preds = %.lr.ph.i80
  %i.do = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.do, %i.de                    ; 3 uses
  %i.dp = zext i32 %.0.i to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dp ; 2 uses
  %i.dr = lshr i64 %i.dp, 5
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !160
  %i.du = and i32 %.0.i, 31
  %i.dv = lshr i32 %i.dt, %i.du
  %i.dw = trunc i32 %i.dv to i1
  br i1 %i.dw, label %.lr.ph.i80, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, !prof !200, !llvm.loop !330

.lr.ph.i80:                                       ; preds = %bb.h, %bb.i
  %i.dx = phi ptr [ %i.dq, %bb.i ], [ %i.dh, %bb.h ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.i ], [ %.024.i, %bb.h ]
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !160
  %i.dz = icmp eq i32 %i.bu, %i.dy
  br i1 %i.dz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, label %bb.i, !prof !201

_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i: ; preds = %.lr.ph.i80, %bb.i, %bb.h, %.loopexit.i
  %i.ea = phi ptr [ %i.bv, %.loopexit.i ], [ %i.da, %bb.h ], [ %i.da, %bb.i ], [ %i.da, %.lr.ph.i80 ]
  %i.eb = phi ptr [ %i.bw, %.loopexit.i ], [ %i.db, %bb.h ], [ %i.db, %bb.i ], [ %i.db, %.lr.ph.i80 ]
  %i.ec = phi ptr [ %.lcssa30.sink.i.ph.i, %.loopexit.i ], [ %i.dh, %bb.h ], [ %i.dx, %.lr.ph.i80 ], [ %i.dq, %bb.i ] ; 3 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 4                 ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 31
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = lshr i64 %i.eg, 5
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !160
  %i.en = or i32 %i.ej, %i.em
  store i32 %i.en, ptr %i.el, align 4, !tbaa !160
  %i.eo = load i32, ptr %i.z, align 8, !tbaa !331
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.z, align 8, !tbaa !331
  store i32 %i.bu, ptr %i.ec, align 4, !tbaa !160
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr null, ptr %i.eq, align 8, !tbaa !179
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !179
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i
  %i.er = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.es = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 216
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !337, !noalias !338 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 224
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !345, !noalias !338 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 236
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !346, !noalias !338 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 232
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !78, !noalias !338
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = zext i32 %i.ey to i64                   ; 4 uses
  %.idx230.i = mul nuw nsw i64 %i.fc, 24          ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx230.i ; 9 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.ey, 0
  %or.cond.i.i = select i1 %i.fb, i1 true, i1 %.not.i.not.i.i.i.i
  %.pre223 = add nuw nsw i64 %i.fc, 31
  %.pre224 = lshr i64 %.pre223, 5                 ; 5 uses
  br i1 %or.cond.i.i, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit
  %i.fe = load i32, ptr %i.ew, align 4, !tbaa !160, !noalias !347 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.fg = icmp eq i64 %.pre224, 1
  br i1 %i.fg, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, label %.lr.ph324.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph324.a
  %i.fh = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %.pre224
  br i1 %i.fi, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, label %.lr.ph324.a, !llvm.loop !350

.lr.ph324.a:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.fj = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !160, !noalias !347 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !350

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph324.a
  %i.fn = mul i64 %i.fj, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i:     ; preds = %._crit_edge.i.loopexit.i.i.i.i, %bb.j
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.fn, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.fe, %bb.j ], [ %i.fl, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.fo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %narrow293.i = mul nuw nsw i32 %i.fo, 24
  %.idx292.i = zext nneg i32 %narrow293.i to i64
  %i.fp = add i64 %.012.lcssa.i.i.i.i.i, %.idx292.i ; 3 uses
  %i.fq = getelementptr i8, ptr %i.eu, i64 %i.fp  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fp, %.idx230.i
  br i1 %.not.i.i.i, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !91, !noalias !351 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !354, !noalias !355 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !364, !noalias !355 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 52
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !365, !noalias !355 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !366, !noalias !355
  %i.gb = icmp eq i32 %i.ga, 0
  %i.gc = zext i32 %i.fy to i64                   ; 2 uses
  %.idx295.i = shl nuw nsw i64 %i.gc, 3           ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx295.i
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fy, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.gb, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %.lr.ph.i.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gd = add nuw nsw i64 %i.gc, 31
  %i.ge = lshr i64 %i.gd, 5                       ; 2 uses
  %i.gf = load i32, ptr %i.fw, align 4, !tbaa !160, !noalias !367 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.a

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.l
  %i.gh = icmp eq i64 %i.ge, 1
  br i1 %i.gh, label %.lr.ph.i.preheader, label %.lr.ph325.a

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph325.a
  %i.gi = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %i.gj = icmp eq i64 %i.gi, %i.ge
  br i1 %i.gj, label %.lr.ph.i.preheader, label %.lr.ph325.a, !llvm.loop !370

.lr.ph325.a:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gk = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !160, !noalias !367 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !370

._crit_edge.i.loopexit.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph325.a
  %10 = shl i64 %i.gk, 8
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i, %bb.l
  %.012.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %10, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gf, %bb.l ], [ %i.gm, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i ]
  %i.go = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %11 = shl nuw nsw i32 %i.go, 3
  %.idx294.i = zext nneg i32 %11 to i64
  %12 = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i.i, %.idx294.i ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fu, i64 %12
  %13 = icmp eq i64 %12, %.idx295.i
  br i1 %13, label %.lr.ph.i.preheader, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %bb.k, %.lr.ph.i.i.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i
  %i.gq = phi i64 [ %i.hk, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i ], [ %i.fp, %.lr.ph.i.preheader ]
  %i.gr = add i64 %i.gq, 24
  %i.gs = sdiv exact i64 %i.gr, 24                ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.gs, %i.fc
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.gt = lshr i64 %i.gs, 5                       ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !160, !noalias !371
  %i.gw = trunc nuw i64 %i.gs to i32
  %i.gx = and i32 %i.gw, 31
  %i.gy = shl nsw i32 -1, %i.gx
  %i.gz = and i32 %i.gv, %i.gy                    ; 2 uses
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph.i.i.i.i30.i.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i

.lr.ph.i.i.i.i30.i.preheader:                     ; preds = %bb.m
  %i.hb = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %i.hc = icmp eq i64 %i.hb, %.pre224
  br i1 %i.hc, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, label %.lr.ph326.a

.lr.ph.i.i.i.i30.i:                               ; preds = %.lr.ph326.a
  %i.hd = add i64 %i.hf, 1                        ; 2 uses
  %i.he = icmp eq i64 %i.hd, %.pre224
  br i1 %i.he, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, label %.lr.ph326.a, !llvm.loop !350

.lr.ph326.a:                                      ; preds = %.lr.ph.i.i.i.i30.i.preheader, %.lr.ph.i.i.i.i30.i
  %i.hf = phi i64 [ %i.hd, %.lr.ph.i.i.i.i30.i ], [ %i.hb, %.lr.ph.i.i.i.i30.i.preheader ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !160, !noalias !371 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph.i.i.i.i30.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i, !llvm.loop !350

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i: ; preds = %.lr.ph326.a, %bb.m
  %.012.lcssa.i.i.i.i28.i = phi i64 [ %i.gt, %bb.m ], [ %i.hf, %.lr.ph326.a ]
  %.0.lcssa.i.i.i.i29.i = phi i32 [ %i.gz, %bb.m ], [ %i.hh, %.lr.ph326.a ]
  %i.hj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29.i, i1 true)
  %.idx.i.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28.i, 768
  %narrow.i = mul nuw nsw i32 %i.hj, 24
  %.idx.i = zext nneg i32 %narrow.i to i64
  %i.hk = add i64 %.idx.i.i.i.i.i, %.idx.i        ; 3 uses
  %i.hl = getelementptr i8, ptr %i.eu, i64 %i.hk  ; 3 uses
  %.not.i.i18.i = icmp eq i64 %i.hk, %.idx230.i
  br i1 %.not.i.i18.i, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !91, !noalias !372 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !354, !noalias !375 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !364, !noalias !375 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 52
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !365, !noalias !375 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !366, !noalias !375
  %i.hw = icmp eq i32 %i.hv, 0
  %i.hx = zext i32 %i.ht to i64                   ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hx ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19.i = icmp eq i32 %i.ht, 0
  %or.cond.i.i.i.i.i20.i = select i1 %i.hw, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19.i
  br i1 %or.cond.i.i.i.i.i20.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hz = add nuw nsw i64 %i.hx, 31
  %i.ia = lshr i64 %i.hz, 5                       ; 2 uses
  %i.ib = load i32, ptr %i.hr, align 4, !tbaa !160, !noalias !384 ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph.i.i.i.i.i.i.i.i24.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i.i.i.i24.i.preheader:             ; preds = %bb.o
  %i.id = icmp eq i64 %i.ia, 1
  br i1 %i.id, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i, label %.lr.ph327.a

.lr.ph.i.i.i.i.i.i.i.i24.i:                       ; preds = %.lr.ph327.a
  %i.ie = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %i.if = icmp eq i64 %i.ie, %i.ia
  br i1 %i.if, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i, label %.lr.ph327.a, !llvm.loop !370

.lr.ph327.a:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i24.i
  %i.ig = phi i64 [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i24.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.i.preheader ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !160, !noalias !384 ; 2 uses
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph.i.i.i.i.i.i.i.i24.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26.i, !llvm.loop !370

._crit_edge.i.loopexit.i.i.i.i.i.i.i26.i:         ; preds = %.lr.ph327.a
  %i.ik = shl i64 %i.ig, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21.i

._crit_edge.i.i.i.i.i.i.i.i21.i:                  ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26.i, %bb.o
  %.012.lcssa.i.i.i.i.i.i.i.i22.i = phi i64 [ 0, %bb.o ], [ %i.ik, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i23.i = phi i32 [ %i.ib, %bb.o ], [ %i.ii, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26.i ]
  %i.il = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23.i, i1 true)
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr i8, ptr %i.hp, i64 %.012.lcssa.i.i.i.i.i.i.i.i22.i
  %i.io = getelementptr [8 x i8], ptr %i.in, i64 %i.im
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.i, %.lr.ph.i.i.i.i.i.i.i.i24.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i21.i, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.io, %._crit_edge.i.i.i.i.i.i.i.i21.i ], [ %i.hy, %bb.n ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.i24.i.preheader ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.i24.i ] ; 2 uses
  %i.ip = icmp eq ptr %.sroa.0.0.i.i, %i.hy
  br i1 %i.ip, label %.lr.ph.i, label %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit

_ZN4llvm7jitlink9LinkGraph6blocksEv.exit:         ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i, %.lr.ph.i.i.i.i30.i.preheader, %.lr.ph.i.i.i.i30.i, %.lr.ph.i.i.i.i.i.preheader, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i, %.lr.ph.i.i.a
  %.sroa.989.2.i = phi ptr [ null, %.lr.ph.i.i.i.i30.i ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit ], [ null, %.lr.ph.i ], [ %i.gp, %.lr.ph.i.i.a ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i ], [ null, %.lr.ph.i.i.i.i.i.preheader ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i ], [ null, %.lr.ph.i.i.i.i30.i.preheader ], [ null, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.1490.2.i = phi ptr [ null, %.lr.ph.i.i.i.i30.i ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit ], [ null, %.lr.ph.i ], [ %9, %.lr.ph.i.i.a ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i ], [ null, %.lr.ph.i.i.i.i.i.preheader ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i ], [ %i.hy, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i ], [ null, %.lr.ph.i.i.i.i30.i.preheader ], [ null, %.lr.ph.i.i.i.i.i ]
  %.sroa.1691.2.i = phi ptr [ null, %.lr.ph.i.i.i.i30.i ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit ], [ null, %.lr.ph.i ], [ %i.fu, %.lr.ph.i.i.a ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i ], [ null, %.lr.ph.i.i.i.i.i.preheader ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i ], [ %i.hp, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i ], [ null, %.lr.ph.i.i.i.i30.i.preheader ], [ null, %.lr.ph.i.i.i.i.i ]
  %.sroa.1892.2.i = phi ptr [ null, %.lr.ph.i.i.i.i30.i ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit ], [ null, %.lr.ph.i ], [ %i.fw, %.lr.ph.i.i.a ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i ], [ null, %.lr.ph.i.i.i.i.i.preheader ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i ], [ %i.hr, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i ], [ null, %.lr.ph.i.i.i.i30.i.preheader ], [ null, %.lr.ph.i.i.i.i.i ]
  %.sroa.074.1.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i30.i ], [ %i.fd, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_7jitlink6SymbolENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit ], [ %i.fd, %.lr.ph.i ], [ %i.fq, %.lr.ph.i.i.a ], [ %i.fd, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit.i ], [ %i.fd, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hl, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i ], [ %i.hl, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i ], [ %i.fd, %.lr.ph.i.i.i.i30.i.preheader ], [ %i.fd, %.lr.ph.i.i.i.i.i ]
  %i.iq = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 152
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef i64 %i.is(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 %lhsv.i.i.i.i191) #17, !inline_history !223
  %i.iu = load ptr, ptr %.sroa.10112.0.copyload, align 8, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 304
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = call noundef i64 %i.iw(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10112.0.copyload, i64 %lhsv.i.i.i.i38183) #17, !inline_history !387
  %i.iy = add i64 %i.ix, %i.it                    ; 4 uses
  %i.iz = ptrtoint ptr %i.eu to i64
  %.val1.val.i.i.i.i172 = load ptr, ptr %.sroa.989.2.i, align 8, !tbaa !238, !noalias !388 ; 3 uses
  %.val1.val.val.i.i.i.i173 = load i64, ptr %.val1.val.i.i.i.i172, align 8, !tbaa !16, !noalias !388 ; 2 uses
  %i.ja = getelementptr i8, ptr %.val1.val.i.i.i.i172, i64 32
  %.val1.val.val2.i.i.i.i174 = load i64, ptr %i.ja, align 8, !tbaa !237, !noalias !388
  %i.jb = add i64 %.val1.val.val2.i.i.i.i174, %.val1.val.val.i.i.i.i173
  %i.jc = icmp ule i64 %.val1.val.val.i.i.i.i173, %i.iy
  %i.jd = icmp ult i64 %i.iy, %i.jb
  %i.je = select i1 %i.jc, i1 %i.jd, i1 false
  br i1 %i.je, label %"_ZN4llvm7find_ifINS_14iterator_rangeINS_7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS2_7SectionESt14default_deleteIS9_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EELb0EEENS3_23GetSectionMapEntryValueERS9_EENSF_12DenseSetImplIPNS2_5BlockENS_8DenseMapISO_NSF_13DenseSetEmptyENSD_ISO_vEENSF_12DenseSetPairISO_EEEEE16DenseSetIteratorILb0EEESO_XadL_ZNS3_16getSectionBlocksESK_EEEEEEZNS2_21XCOFFLinkGraphBuilder18processRelocationsEvE3$_0EEDaOT_T0_.exit", label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i
  %.sroa.1219.0.i.i.i180 = phi ptr [ %.sroa.1219.3.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i ], [ %.sroa.989.2.i, %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit ]
  %.sroa.18.0.i.i.i178 = phi ptr [ %.sroa.18.3.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i ], [ %.sroa.1490.2.i, %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit ] ; 6 uses
  %.sroa.05.0.i.i.i177 = phi ptr [ %.sroa.05.3.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i ], [ %.sroa.074.1.i, %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit ] ; 4 uses
  %.sroa.22.0.i.i.i176 = phi ptr [ %.sroa.22.3.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i ], [ %.sroa.1892.2.i, %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit ] ; 4 uses
  %.sroa.20.0.i.i.i175 = phi ptr [ %.sroa.20.3.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i ], [ %.sroa.1691.2.i, %_ZN4llvm7jitlink9LinkGraph6blocksEv.exit ] ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.1219.0.i.i.i180, i64 8
  %i.jg = ptrtoint ptr %.sroa.18.0.i.i.i178 to i64
  %i.jh = ptrtoint ptr %.sroa.20.0.i.i.i175 to i64 ; 2 uses
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = ashr exact i64 %i.ji, 3                 ; 2 uses
  %i.jk = ptrtoint ptr %i.jf to i64
  %i.jl = sub i64 %i.jk, %i.jh
  %i.jm = ashr exact i64 %i.jl, 3                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.jm, %i.jj
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i

bb.p:                                             ; preds = %.lr.ph
  %i.jn = add nsw i64 %i.jj, 31
  %i.jo = lshr i64 %i.jn, 5                       ; 2 uses
  %i.jp = lshr i64 %i.jm, 5                       ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0.i.i.i176, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !160, !noalias !397
  %i.js = trunc i64 %i.jm to i32
  %i.jt = and i32 %i.js, 31
  %i.ju = shl nsw i32 -1, %i.jt
  %i.jv = and i32 %i.jr, %i.ju                    ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.p
  %i.jx = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %i.jy = icmp eq i64 %i.jx, %i.jo
  br i1 %i.jy, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i, label %.lr.ph328.a

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph328.a
  %i.jz = add i64 %i.kb, 1                        ; 2 uses
  %i.ka = icmp eq i64 %i.jz, %i.jo
  br i1 %i.ka, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i, label %.lr.ph328.a, !llvm.loop !370

.lr.ph328.a:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.kb = phi i64 [ %i.jz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.jx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0.i.i.i176, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !160, !noalias !397 ; 2 uses
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !370

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph328.a, %bb.p
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.jp, %bb.p ], [ %i.kb, %.lr.ph328.a ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.p ], [ %i.kd, %.lr.ph328.a ]
  %i.kf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.kg = zext nneg i32 %i.kf to i64
  %.idx.i.i.i.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i.i.i.i, 8
  %i.kh = getelementptr i8, ptr %.sroa.20.0.i.i.i175, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ki = getelementptr [8 x i8], ptr %i.kh, i64 %i.kg
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i, %.lr.ph
  %storemerge16.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.18.0.i.i.i178, %.lr.ph ], [ %i.ki, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.18.0.i.i.i178, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.18.0.i.i.i178, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not21.i.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i177, %i.fd
  br i1 %.not21.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i, label %.lr.ph.i3.i.i.i

.lr.ph.i3.i.i.i:                                  ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i177, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !91, !noalias !397 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !354, !noalias !400
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 52
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !365, !noalias !400
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kp
  %i.kr = icmp eq ptr %storemerge16.i.i.i.i.i.i.i.i, %i.kq
  br i1 %i.kr, label %.lr.ph.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i3.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i
  %.sroa.05.242.i.i.i = phi ptr [ %i.ll, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i ], [ %.sroa.05.0.i.i.i177, %.lr.ph.i3.i.i.i ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.05.242.i.i.i, i64 24
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = sub i64 %i.kt, %i.iz
  %i.kv = sdiv exact i64 %i.ku, 24                ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.kv, %i.fc
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.kw = lshr i64 %i.kv, 5                       ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !160, !noalias !397
  %i.kz = trunc nuw i64 %i.kv to i32
  %i.la = and i32 %i.kz, 31
  %i.lb = shl nsw i32 -1, %i.la
  %i.lc = and i32 %i.ky, %i.lb                    ; 2 uses
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.01219.i.i.i.i.i.i.i = phi i64 [ %i.le, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kw, %.lr.ph.i.i.i ]
  %i.le = add i64 %.01219.i.i.i.i.i.i.i, 1        ; 4 uses
  %i.lf = icmp ne i64 %i.le, %.pre224
  call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.le
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !160, !noalias !397 ; 2 uses
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i.i.i, !llvm.loop !350

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.kw, %.lr.ph.i.i.i ], [ %i.le, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.lc, %.lr.ph.i.i.i ], [ %i.lh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.lj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %.idx.i.i.i.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i.i.i.i, 768
  %narrow = mul nuw nsw i32 %i.lj, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.lk = add i64 %.idx.i.i.i.i.i.i.i, %.idx      ; 2 uses
  %i.ll = getelementptr i8, ptr %i.eu, i64 %i.lk  ; 3 uses
  %.not.i.i.i.i.i54 = icmp ne i64 %i.lk, %.idx230.i
  call void @llvm.assume(i1 %.not.i.i.i.i.i54)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !91, !noalias !409 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !354, !noalias !412 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !364, !noalias !412 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 52
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !365, !noalias !412 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !366, !noalias !412
  %i.lw = icmp eq i32 %i.lv, 0
  %i.lx = zext i32 %i.lt to i64                   ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lx ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.lt, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.lw, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i.i.i
  %i.lz = add nuw nsw i64 %i.lx, 31
  %i.ma = lshr i64 %i.lz, 5                       ; 2 uses
  %i.mb = load i32, ptr %i.lr, align 4, !tbaa !160, !noalias !421 ; 2 uses
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.q
  %i.md = icmp eq i64 %i.ma, 1
  br i1 %i.md, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i, label %.lr.ph329

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph329
  %i.me = add nuw nsw i64 %i.mg, 1                ; 2 uses
  %i.mf = icmp eq i64 %i.me, %i.ma
  br i1 %i.mf, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i, label %.lr.ph329, !llvm.loop !370

.lr.ph329:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.mg = phi i64 [ %i.me, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !160, !noalias !421 ; 2 uses
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !370

._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph329
  %i.mk = shl i64 %i.mg, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.q
  %.012.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.q ], [ %i.mk, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.mb, %bb.q ], [ %i.mi, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %i.ml = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr i8, ptr %i.lp, i64 %.012.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = getelementptr [8 x i8], ptr %i.mn, i64 %i.mm
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.mo, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ly, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i.i.i.i ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mp = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.ly
  br i1 %i.mp, label %.lr.ph.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit.i.i.i: ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i, %.lr.ph.i3.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i
  %.sroa.20.3.i.i.i = phi ptr [ %.sroa.20.0.i.i.i175, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i ], [ %.sroa.20.0.i.i.i175, %.lr.ph.i3.i.i.i ], [ %i.lp, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i ]
  %.sroa.22.3.i.i.i = phi ptr [ %.sroa.22.0.i.i.i176, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i ], [ %.sroa.22.0.i.i.i176, %.lr.ph.i3.i.i.i ], [ %i.lr, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i ]
  %.sroa.05.3.i.i.i = phi ptr [ %i.fd, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i ], [ %.sroa.05.0.i.i.i177, %.lr.ph.i3.i.i.i ], [ %i.ll, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i ]
  %.sroa.18.3.i.i.i = phi ptr [ %.sroa.18.0.i.i.i178, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i ], [ %.sroa.18.0.i.i.i178, %.lr.ph.i3.i.i.i ], [ %i.ly, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i ]
  %.sroa.1219.3.i.i.i = phi ptr [ %storemerge16.i.i.i.i.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i.i.i.i ], [ %storemerge16.i.i.i.i.i.i.i.i, %.lr.ph.i3.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i.i.i.i ] ; 2 uses
  %.val1.val.i.i.i.i = load ptr, ptr %.sroa.1219.3.i.i.i, align 8, !tbaa !238, !noalias !388 ; 3 uses
  %.val1.val.val.i.i.i.i = load i64, ptr %.val1.val.i.i.i.i, align 8, !tbaa !16, !noalias !388 ; 2 uses
  %i.mq = getelementptr i8, ptr %.val1.val.i.i.i.i, i64 32
end_hunk_0
