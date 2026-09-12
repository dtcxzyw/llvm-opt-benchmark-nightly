Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DataflowInfoManager?download=true
inline.NumInlined: 5068
inline.NumDeleted: 1998
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE3runEv:bb.a
  %4 = alloca %"class.llvm::BitVector", align 8   ; 7 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 14 uses
  %6 = alloca %"class.std::queue", align 8        ; 20 uses
  %7 = alloca %"class.llvm::DenseSet.712", align 8 ; 14 uses
  %8 = alloca %"class.llvm::PostOrderTraversal", align 8 ; 15 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 15 uses
  %10 = alloca %"class.std::function", align 8    ; 6 uses
  %11 = alloca %"class.std::function", align 8    ; 6 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %class.anon.731, align 8           ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !361, !nonnull !130, !align !131 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !339  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1248
  %i.o = load i32, ptr %i.n, align 8, !tbaa !340  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.r = icmp eq i32 %i.o, 0
  %.sroa.0.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  br i1 %i.r, label %bb.cx, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge237:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.ai, align 8, !tbaa !367
  %i.ak = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !368
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !367
  %i.am = add i64 %i.al, -1
  %i.an = lshr i64 %i.am, 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !369
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !370
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !371
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 512 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !372
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !370
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !371
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !372
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !373
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !361, !nonnull !130, !align !131
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !339, !alias.scope !731
  store i32 0, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340, !alias.scope !731
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.ba, align 4, !tbaa !359, !alias.scope !731
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 232 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !376, !alias.scope !731
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 216
  store i64 0, ptr %i.bd, align 8, !tbaa !377, !alias.scope !731
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i64 40, ptr %i.be, align 8, !tbaa !378, !alias.scope !731
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 1288
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !339
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !342
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE4initES8_(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef %i.bh)
  %i.bi = load i32, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %._crit_edge241, label %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit

_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit: ; preds = %._crit_edge237
  %i.bj = load ptr, ptr %8, align 8, !tbaa !339
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !380 ; 2 uses
  %.not204238 = icmp eq ptr %i.bn, null
  br i1 %.not204238, label %._crit_edge241, label %.lr.ph240

bb.b:                                             ; preds = %.lr.ph236, %._crit_edge
  %.sroa.0188.0235 = phi ptr [ %i.m, %.lr.ph236 ], [ %i.by, %._crit_edge ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.0188.0235, align 8, !tbaa !342 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !342
  %i.bp = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4llvm4bolt16LivenessAnalysis20getStartingStateAtBBERKNS0_16BinaryBasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.bo)
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.bp, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.br = load i32, ptr %i.t, align 8, !tbaa !384
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !384
  %i.bt = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.u
  br i1 %i.bu, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.bt) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !344 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !344 ; 2 uses
  %.not211232 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not211232, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit64, %_ZN4llvm9BitVectorD2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0188.0235, i64 8 ; 2 uses
  %.not203 = icmp eq ptr %i.by, %i.q
  br i1 %.not203, label %._crit_edge237, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit64
  %.sroa.0184.0233 = phi ptr [ %i.ml, %_ZN4llvm9BitVectorD2Ev.exit64 ], [ %i.bv, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.bz = load ptr, ptr %i.v, align 8, !tbaa !385, !nonnull !130, !align !131
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1568
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !387 ; 6 uses
  %i.cc = load i8, ptr %i.x, align 4, !tbaa !135, !range !388, !noundef !130
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.w, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ce = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cb, ptr nonnull @.str.1, i64 16) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ce to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.w, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.ce, %bb.d ] ; 5 uses
  %i.cf = load i16, ptr %i.y, align 8, !tbaa !293 ; 4 uses
  %i.cg = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.cb, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0184.0233, i32 noundef %.0.i.i) #18, !noalias !732
  br i1 %i.cg, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0184.0233, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !340, !noalias !732 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ci, -1         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0184.0233, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !339, !noalias !732 ; 4 uses
  %i.cl = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !392, !noalias !732
  %i.co = icmp eq i8 %i.cn, 6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !732
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cl, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.ct = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !392, !noalias !732
  %i.cw = icmp eq i8 %i.cv, 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !732
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = select i1 %i.cw, i1 %i.cz, i1 false
  br i1 %i.da, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.db = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.db, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ci, %.01318.i.i.i.lcssa.i.i.i
  %i.dc = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.dc, %i.ci
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ci to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !355, !noalias !732 ; 2 uses
  %i.dh = lshr i64 %i.dg, 56
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.di
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.dd, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !355, !noalias !732 ; 2 uses
  %i.dm = lshr i64 %i.dl, 56
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %.not.i.i.i.i106 = icmp eq i32 %.0.i.i, %i.dn
  br i1 %.not.i.i.i.i106, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.dg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.dl, %.critedge.i.i.i.i ]
  %i.do = shl i64 %.lcssa.i.i.i, 8
  %i.dp = ashr exact i64 %i.do, 8
  %i.dq = add nuw nsw i64 %i.dp, 8
  %i.dr = inttoptr i64 %i.dq to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i8 0, i64 56, i1 false)
  store ptr %i.z, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.aa, align 8, !tbaa !340
  store i32 6, ptr %i.ab, align 4, !tbaa !359
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.du, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !395
  %i.dx = icmp eq i16 %i.cf, %i.dw
  br i1 %i.dx, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.dz = zext i16 %i.cf to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !396 ; 2 uses
  %i.ec = urem i64 %i.dz, %i.eb                   ; 2 uses
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !397
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !337 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !395
  %i.ej = icmp eq i16 %i.cf, %i.ei
  br i1 %i.ej, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i ], [ %i.eg, %bb.h ]
  %i.ek = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i16, ptr %i.el, align 2, !tbaa !395 ; 2 uses
  %i.en = zext i16 %i.em to i64
  %i.eo = urem i64 %i.en, %i.eb
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.eo, %i.ec
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.ep = icmp eq i16 %i.cf, %i.em
  br i1 %i.ep, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.eg, %bb.h ], [ %i.ek, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !408
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = add i64 %i.es, 15
  %i.eu = and i64 %i.et, -16                      ; 2 uses
  %i.ev = add i64 %i.eu, 80                       ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !409
  %i.ey = icmp ult i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.ez = inttoptr i64 %i.ev to ptr
  store ptr %i.ez, ptr %i.eq, align 8, !tbaa !408
  %i.fa = inttoptr i64 %i.eu to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fb = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.eq, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.fc = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fa, %bb.i ], [ %i.fb, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !339
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.ff, align 8, !tbaa !340
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.fg, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.fc, 0
  %i.fh = icmp eq ptr %i.fd, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fh
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fi = icmp ugt i32 %i.fc, 6
  br i1 %i.fi, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fj = zext i32 %i.fc to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.fd, ptr noundef nonnull %i.fe, i64 noundef %i.fj, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.aa, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i118 = load ptr, ptr %i.fd, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.fk = phi ptr [ %.pre.i.i.i118, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fe, %bb.k ]
  %i.fl = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fc, %bb.k ]
  %i.fm = zext i32 %i.fl to i64
  %i.fn = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 8 %i.fn, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fc, ptr %i.ff, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fp = load i32, ptr %i.ac, align 8, !tbaa !384
  store i32 %i.fp, ptr %i.fo, align 8, !tbaa !384
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.fs, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.ft = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !412 ; 2 uses
  %i.fw = urem i64 %i.ft, %i.fv                   ; 5 uses
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !413
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i124, label %.critedge.i126, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.ga, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i129 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i129, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !415
  %i.gd = icmp eq ptr %.0.i.i.i.i, %i.gc
  br i1 %i.gd, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.ge = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !412
  %i.gh = urem i64 %i.ge, %i.gg
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !337
  store ptr %i.s, ptr %.02530, align 8, !tbaa !337
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !345
  store ptr %.02530, ptr %i.t, align 8, !tbaa !337
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !750

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !279    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !280
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #19
  br label %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !280
  store ptr %.0.i, ptr %0, align 8, !tbaa !279
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !339    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !339    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !339
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !339
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !389
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !389
  store ptr %i.c, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.k, align 4, !tbaa !359
  store i32 0, ptr %i.j, align 8, !tbaa !340
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !340  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !340  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !339    ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !418

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !354
  store i64 %i.t, ptr %i.s, align 8, !tbaa !354
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !340
  store i32 0, ptr %i.m, align 8, !tbaa !340
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !359
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !340
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #18
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !339    ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !350

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !354
  store i64 %i.z, ptr %i.y, align 8, !tbaa !354
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !340
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !339
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !339
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !340
  store i32 0, ptr %i.m, align 8, !tbaa !340
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::BitVector", align 8   ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #18, !noalias !754
  br i1 %i.a, label %bb.b, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !340, !noalias !754 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !339, !noalias !754 ; 4 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !392, !noalias !754
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !754
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !392, !noalias !754
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !754
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1   ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.c to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !355, !noalias !754 ; 2 uses
  %i.ab = lshr i64 %i.aa, 56
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ac
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.x, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !355, !noalias !754 ; 2 uses
  %i.ag = lshr i64 %i.af, 56
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ah
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aa, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.af, %.critedge.i.i.i ]
  %i.ai = shl i64 %.lcssa.i.i, 8
  %i.aj = ashr exact i64 %i.ai, 8
  %i.ak = add nuw nsw i64 %i.aj, 8
  %i.al = inttoptr i64 %i.ak to ptr
  br label %bb.d

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit:   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !339
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !340
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.ap, align 4, !tbaa !359
  %i.aq = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(68) %4, i16 noundef zeroext %3)
  %i.ar = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.an
  br i1 %i.as, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit
  call void @free(ptr noundef %i.ar) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZN4llvm9BitVectorD2Ev.exit
  %.sroa.0.sroa.010.0.in = phi ptr [ %i.al, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.aq, %_ZN4llvm9BitVectorD2Ev.exit ]
  ret ptr %.sroa.0.sroa.010.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(68) %3, i16 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !394
  %.not.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !395
  %i.g = icmp eq i16 %4, %i.f
  br i1 %i.g, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %bb.c, !llvm.loop !14

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext i16 %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !396  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !397
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !337  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !395
  %i.s = icmp eq i16 %4, %i.r
  br i1 %i.s, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !395  ; 2 uses
  %i.w = zext i16 %i.v to i64
  %i.x = urem i64 %i.w, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.x, %i.l
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.y = icmp eq i16 %4, %i.v
  br i1 %i.y, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !408
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, 15
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 80                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !409
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !360

bb.e:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ai = inttoptr i64 %i.ae to ptr
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !408
  %i.aj = inttoptr i64 %i.ad to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.f:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ak = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 noundef 80, i64 noundef 80, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.ak, %bb.f ] ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !286
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !339
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !340
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 6, ptr %i.ao, align 4, !tbaa !359
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !340 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  %i.ar = icmp eq ptr %i.al, %3
  %or.cond.i.i.i = or i1 %i.ar, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  %i.as = icmp ugt i32 %i.aq, 6
  br i1 %i.as, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.g
  %i.at = zext i32 %i.aq to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.al, ptr noundef nonnull %i.am, i64 noundef %i.at, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.g
  %i.au = phi ptr [ %.pre.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.am, %bb.g ]
  %i.av = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.aq, %bb.g ]
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %3, align 8, !tbaa !339
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.ax, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !340
  br label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEC2ERKS3_.exit

_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEC2ERKS3_.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit, %.sink.split.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !384
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !384
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !415
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %i.bb, ptr %5, align 8, !tbaa !756
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.bd = ptrtoint ptr %.0.i.i.i to i64
  call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.bd)
end_hunk_1
begin_hunk_2_@_ZZN4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE3runEvENKUlNS0_12ProgramPointEE_clES6_:bb.a
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !385, !nonnull !130, !align !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !787, !nonnull !130, !align !131 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !495
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !787, !nonnull !130, !align !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !468, !noalias !789
  %.not.not.i.i.i.i5 = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.s, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !789 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !789
  %i.v = icmp eq ptr %2, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !26

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = ptrtoint ptr %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !280, !noalias !789 ; 2 uses
  %i.aa = urem i64 %i.x, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !279, !noalias !789
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345, !noalias !789 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !337, !noalias !789 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !342, !noalias !789
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq ptr %2, %i.al
  br i1 %i.ai, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !24

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !789 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342, !noalias !789 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !24

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !789
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8, !alias.scope !789
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !789
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ao, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !497, !alias.scope !789
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !alias.scope !789
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8, !alias.scope !789
  store ptr %i.as, ptr %4, align 8, !tbaa !495, !alias.scope !789
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.aw = phi ptr [ %i.p, %.loopexit.i.i12 ], [ %i.p, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !495
  %i.ay = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.1, i64 16) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !793
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !793
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !793
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !793
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !793
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !793 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !793 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !793
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !793
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !793
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !793
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !793 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !793 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !793
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !793
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !793
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !384  ; 6 uses
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm9BitVector6resizeEjb.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 63                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i, label %bb.c

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !340 ; 2 uses
  %.pre6.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = load ptr, ptr %0, align 8, !tbaa !339
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !340  ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !354
  %i.q = and i64 %i.p, %i.i
  store i64 %i.q, ptr %i.o, align 8, !tbaa !354
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:     ; preds = %bb.c, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre6.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %.pre.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !384
  %i.s = add i32 %i.d, 63
  %i.t = lshr i32 %i.s, 6                         ; 5 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq i32 %i.t, %i.r
  br i1 %i.w, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.x = icmp ult i32 %i.t, %i.r
  br i1 %i.x, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sub nuw nsw i64 %i.u, %.pre-phi.i        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp ugt i32 %i.t, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !350

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %i.ab, i64 noundef %i.u, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.v, align 8, !tbaa !340 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre4.pre.i.pre = load i32, ptr %i.a, align 8, !tbaa !384
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pre4.pre.i = phi i32 [ %i.d, %bb.e ], [ %.pre4.pre.i.pre, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %.pre-phi.i, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.ac = phi i32 [ %i.r, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !339
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !354
  %i.af = trunc nuw nsw i64 %i.y to i32
  %i.ag = add i32 %i.ac, %i.af
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %bb.d
  %.pre4.i = phi i32 [ %.pre4.pre.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.d, %bb.d ]
  %.sink.i.i = phi i32 [ %i.ag, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.v, align 8, !tbaa !340
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %.sink.split.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.ah = phi i32 [ %i.r, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.ai = phi i32 [ %i.d, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.i, %.sink.split.i.i ]
  %i.aj = and i32 %i.ai, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nsw i64 -1, %i.ak
  %i.am = xor i64 %i.al, -1
  %i.an = load ptr, ptr %0, align 8, !tbaa !339
  %i.ao = zext i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !354
  %i.as = and i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !354
  br label %_ZN4llvm9BitVector6resizeEjb.exit

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %bb.g, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !340 ; 3 uses
  %.not9 = icmp eq i32 %i.au, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9BitVector6resizeEjb.exit
  %i.av = load ptr, ptr %1, align 8, !tbaa !339   ; 8 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !339   ; 8 uses
  %i.ax = zext i32 %i.au to i64                   ; 6 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ay = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ay
  %scevgep19 = getelementptr i8, ptr %i.av, i64 %i.ay
  %bound0 = icmp ult ptr %i.aw, %scevgep19
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !354, !alias.scope !800
  %wide.load20 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !354, !alias.scope !800
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load21 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !354, !alias.scope !801, !noalias !800
  %wide.load22 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !354, !alias.scope !801, !noalias !800
  %i.bd = or <2 x i64> %wide.load21, %wide.load
  %i.be = or <2 x i64> %wide.load22, %wide.load20
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !354, !alias.scope !801, !noalias !800
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !354, !alias.scope !801, !noalias !800
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader
end_hunk_2
begin_hunk_3_@_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEv:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge243:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.ak, align 8, !tbaa !367
  %i.am = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !368
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !367
  %i.ao = add i64 %i.an, -1
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap ; 3 uses
  %i.ar = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !369
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !370
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !371
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 512 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !372
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !370
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !371
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.au, ptr %i.az, align 8, !tbaa !372
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !373
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !519, !nonnull !130, !align !131
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !339, !alias.scope !928
  store i32 0, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340, !alias.scope !928
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bc, align 4, !tbaa !359, !alias.scope !928
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 232 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !376, !alias.scope !928
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 216
  store i64 0, ptr %i.bf, align 8, !tbaa !377, !alias.scope !928
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i64 40, ptr %i.bg, align 8, !tbaa !378, !alias.scope !928
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1288
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !339
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !342
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE4initES8_(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef %i.bj)
  %i.bk = load i32, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %._crit_edge247, label %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit

_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit: ; preds = %._crit_edge243
  %i.bl = load ptr, ptr %8, align 8, !tbaa !339
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !380 ; 2 uses
  %.not210244 = icmp eq ptr %i.bp, null
  br i1 %.not210244, label %._crit_edge247, label %.lr.ph246

bb.b:                                             ; preds = %.lr.ph242, %._crit_edge
  %.sroa.0194.0241 = phi ptr [ %i.m, %.lr.ph242 ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0194.0241, align 8, !tbaa !342 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !342
  %i.br = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !931, !noalias !929
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = add i32 %i.bt, 63                       ; 2 uses
  %i.bv = lshr i32 %i.bu, 6                       ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !339, !alias.scope !929
  store i32 6, ptr %i.w, align 4, !tbaa !359, !alias.scope !929
  %i.bx = icmp ugt i32 %i.bu, 447
  br i1 %i.bx, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.b
  store i32 0, ptr %i.v, align 8, !tbaa !340, !alias.scope !929
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.u, i64 noundef %i.bw, i64 noundef 8) #18
  %i.by = load ptr, ptr %4, align 8, !tbaa !339, !alias.scope !929
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.by, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !354
  br label %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i
  store i32 %i.bv, ptr %i.v, align 8, !tbaa !340, !alias.scope !929
  store i32 %i.bt, ptr %i.x, align 8, !tbaa !384, !alias.scope !929
  %i.bz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.br, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !384
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !384
  %i.cc = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.u
  br i1 %i.cd, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit
  call void @free(ptr noundef %i.cc) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !344 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !344 ; 2 uses
  %.not217238 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not217238, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit70, %_ZN4llvm9BitVectorD2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0194.0241, i64 8 ; 2 uses
  %.not209 = icmp eq ptr %i.ch, %i.q
  br i1 %.not209, label %._crit_edge243, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit70
  %.sroa.0190.0239 = phi ptr [ %i.mu, %_ZN4llvm9BitVectorD2Ev.exit70 ], [ %i.ce, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !520, !nonnull !130, !align !131
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1568
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !387 ; 6 uses
  %i.cl = load i8, ptr %i.aa, align 4, !tbaa !135, !range !388, !noundef !130
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.z, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cn = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr nonnull @.str.4, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cn to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.z, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.cn, %bb.d ] ; 5 uses
  %i.co = load i16, ptr %i.ab, align 8, !tbaa !315 ; 4 uses
  %i.cp = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0190.0239, i32 noundef %.0.i.i) #18, !noalias !932
  br i1 %i.cp, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !340, !noalias !932 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.cr, -1         ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !339, !noalias !932 ; 4 uses
  %i.cu = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !392, !noalias !932
  %i.cx = icmp eq i8 %i.cw, 6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !932
  %i.da = icmp eq ptr %i.cz, null
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cu, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dc = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !392, !noalias !932
  %i.df = icmp eq i8 %i.de, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !932
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = select i1 %i.df, i1 %i.di, i1 false
  br i1 %i.dj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.dk, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.cr, %.01318.i.i.i.lcssa.i.i.i
  %i.dl = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.dl, %i.cr
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.cr to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !355, !noalias !932 ; 2 uses
  %i.dq = lshr i64 %i.dp, 56
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.dr
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.dm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !355, !noalias !932 ; 2 uses
  %i.dv = lshr i64 %i.du, 56
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %.not.i.i.i.i112 = icmp eq i32 %.0.i.i, %i.dw
  br i1 %.not.i.i.i.i112, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.dp, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.du, %.critedge.i.i.i.i ]
  %i.dx = shl i64 %.lcssa.i.i.i, 8
  %i.dy = ashr exact i64 %i.dx, 8
  %i.dz = add nuw nsw i64 %i.dy, 8
  %i.ea = inttoptr i64 %i.dz to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  store ptr %i.ac, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ad, align 8, !tbaa !340
  store i32 6, ptr %i.ae, align 4, !tbaa !359
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.ed, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !395
  %i.eg = icmp eq i16 %i.co, %i.ef
  br i1 %i.eg, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ei = zext i16 %i.co to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !396 ; 2 uses
  %i.el = urem i64 %i.ei, %i.ek                   ; 2 uses
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !397
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !337 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !395
  %i.es = icmp eq i16 %i.co, %i.er
  br i1 %i.es, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i ], [ %i.ep, %bb.h ]
  %i.et = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !395 ; 2 uses
  %i.ew = zext i16 %i.ev to i64
  %i.ex = urem i64 %i.ew, %i.ek
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ex, %i.el
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.ey = icmp eq i16 %i.co, %i.ev
  br i1 %i.ey, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.ep, %bb.h ], [ %i.et, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !408
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = add i64 %i.fb, 15
  %i.fd = and i64 %i.fc, -16                      ; 2 uses
  %i.fe = add i64 %i.fd, 80                       ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !409
  %i.fh = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fi = inttoptr i64 %i.fe to ptr
  store ptr %i.fi, ptr %i.ez, align 8, !tbaa !408
  %i.fj = inttoptr i64 %i.fd to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fk = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.fl = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fj, %bb.i ], [ %i.fk, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !339
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.fo, align 8, !tbaa !340
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.fp, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.fl, 0
  %i.fq = icmp eq ptr %i.fm, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fq
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fr = icmp ugt i32 %i.fl, 6
  br i1 %i.fr, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fs = zext i32 %i.fl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.fm, ptr noundef nonnull %i.fn, i64 noundef %i.fs, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i124 = load ptr, ptr %i.fm, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.ft = phi ptr [ %.pre.i.i.i124, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fn, %bb.k ]
  %i.fu = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fl, %bb.k ]
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 8 %i.fw, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fl, ptr %i.fo, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fy = load i32, ptr %i.af, align 8, !tbaa !384
  store i32 %i.fy, ptr %i.fx, align 8, !tbaa !384
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.gb, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gc = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !412 ; 2 uses
  %i.gf = urem i64 %i.gc, %i.ge                   ; 5 uses
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !413
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i130, label %.critedge.i132, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.gj, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i135 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !415
  %i.gm = icmp eq ptr %.0.i.i.i.i, %i.gl
  br i1 %i.gm, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.gn = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !412
  %i.gq = urem i64 %i.gn, %i.gp
end_hunk_3
begin_hunk_4_@_ZZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE_clES7_:bb.a
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !520, !nonnull !130, !align !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !954, !nonnull !130, !align !131 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !495
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !954, !nonnull !130, !align !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !468, !noalias !956
  %.not.not.i.i.i.i5 = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.s, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !956 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !956
  %i.v = icmp eq ptr %2, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !26

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = ptrtoint ptr %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !280, !noalias !956 ; 2 uses
  %i.aa = urem i64 %i.x, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !279, !noalias !956
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345, !noalias !956 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !337, !noalias !956 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !342, !noalias !956
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq ptr %2, %i.al
  br i1 %i.ai, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !24

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !956 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342, !noalias !956 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !24

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !956
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8, !alias.scope !956
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !956
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ao, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !497, !alias.scope !956
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !alias.scope !956
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8, !alias.scope !956
  store ptr %i.as, ptr %4, align 8, !tbaa !495, !alias.scope !956
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.aw = phi ptr [ %i.p, %.loopexit.i.i12 ], [ %i.p, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !495
  %i.ay = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !520, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.4, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !960
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !960
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !960
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !960
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !960
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !960 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !960 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !960
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !960
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !960
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !960
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !960 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !960 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !960
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !960
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !960
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_17StackReachingUsesENS0_9BitVectorELb1ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_17StackReachingUsesENS0_9BitVectorELb1ENS1_12StatePrinterIS4_EEE3runEvEUlNS1_12ProgramPointEE0_JS8_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_17StackReachingUsesENS0_9BitVectorELb1ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !527
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_17StackReachingUsesENS0_9BitVectorELb1ENS1_12StatePrinterIS4_EEE3runEvEUlNS1_12ProgramPointEE0_JS8_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !966    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !967, !nonnull !130, !align !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !970
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !970 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !970
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !970 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !970
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !970 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !970 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !970
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !970 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !970 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !970
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !970
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !970
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !497, !alias.scope !970
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !970
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !970
  store ptr %i.ag, ptr %2, align 8, !tbaa !495, !alias.scope !970
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

_ZZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit: ; preds = %.loopexit.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !495
  %i.al = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %i.ak) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZN4llvm4bolt17StackReachingUses11computeNextERKNS_6MCInstERKNS_9BitVectorE(ptr dead_on_unwind writable sret(%"class.llvm::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE3runEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"struct.std::pair.887", align 8    ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 7 uses
  %3 = alloca %"class.std::function", align 8     ; 7 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::queue", align 8        ; 20 uses
  %5 = alloca %"class.llvm::DenseSet.712", align 8 ; 14 uses
  %6 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"struct.std::pair.855", align 8    ; 7 uses
  %8 = alloca %"class.std::function", align 8     ; 6 uses
  %9 = alloca %"class.std::function", align 8     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1012, !nonnull !130, !align !131 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !339  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1248
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.ei, label %.lr.ph345

.lr.ph345:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

._crit_edge346:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i64 8, ptr %i.y, align 8, !tbaa !367
  %i.aa = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !368
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !367
  %i.ac = add i64 %i.ab, -1
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !369
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !370
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !371
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 512 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !372
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 8 uses
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !370
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  store ptr %i.af, ptr %i.am, align 8, !tbaa !371
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !372
  store ptr %i.af, ptr %i.z, align 8, !tbaa !373
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !1012, !nonnull !130, !align !131
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !265
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !339
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !340
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 8, ptr %i.ar, align 4, !tbaa !359
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_4bolt14BinaryFunctionENS_11GraphTraitsIS3_EEE10InitializeERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.as = load ptr, ptr %6, align 8, !tbaa !339, !noalias !1013 ; 3 uses
  %i.at = load i32, ptr %i.aq, align 8, !tbaa !340, !noalias !1013 ; 2 uses
  %.not302347 = icmp eq i32 %i.at, 0
  br i1 %.not302347, label %._crit_edge351, label %.lr.ph350.preheader

.lr.ph350.preheader:                              ; preds = %._crit_edge346
  %i.au = zext i32 %i.at to i64
  %.idx384 = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx384
  br label %.lr.ph350

bb.b:                                             ; preds = %.lr.ph345, %._crit_edge
  %.sroa.0276.0344 = phi ptr [ %i.n, %.lr.ph345 ], [ %i.bd, %._crit_edge ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.0276.0344, align 8, !tbaa !342 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !342
  %i.ax = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_S6_IiiEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.ay = call noundef zeroext i1 @_ZNK4llvm4bolt16BinaryBasicBlock12isEntryPointEv(ptr noundef nonnull align 8 dereferenceable(192) %i.aw) #18
  %.sroa.0273.0.extract.trunc = select i1 %i.ay, i32 -8, i32 -2147483648
  store i32 %.sroa.0273.0.extract.trunc, ptr %i.ax, align 4, !tbaa !534
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !535
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !344 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !344 ; 2 uses
  %.not309341 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not309341, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit, %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0276.0344, i64 8 ; 2 uses
  %.not301 = icmp eq ptr %i.bd, %i.r
  br i1 %.not301, label %._crit_edge346, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %.sroa.0270.0342 = phi ptr [ %i.jo, %_ZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit ], [ %i.ba, %bb.b ] ; 9 uses
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !536, !nonnull !130, !align !131
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1568
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !387 ; 6 uses
  %i.bh = load i8, ptr %i.w, align 4, !tbaa !135, !range !388, !noundef !130
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.v, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.bj = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bg, ptr nonnull @.str.5, i64 20) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.v, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.c, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.bj, %bb.c ] ; 5 uses
  %i.bk = load i16, ptr %i.x, align 8, !tbaa !1014 ; 4 uses
  %i.bl = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0270.0342, i32 noundef %.0.i.i) #18, !noalias !1015
  br i1 %i.bl, label %bb.d, label %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0270.0342, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !340, !noalias !1015 ; 4 uses
  %.01317.i.i.i.i.i.i.i = add i32 %i.bn, -1       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0270.0342, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !339, !noalias !1015 ; 4 uses
  %i.bq = zext nneg i32 %.01317.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !392, !noalias !1015
  %i.bt = icmp eq i8 %i.bs, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1015
  %i.bw = icmp eq ptr %i.bv, null
  %i.bx = select i1 %i.bt, i1 %i.bw, i1 false
  br i1 %i.bx, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i:                          ; preds = %bb.d, %.backedge.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.backedge.i.i.i.i.i.i.i ], [ %i.bq, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 3 uses
  %i.by = icmp sgt i64 %indvars.iv.i.i.i.i, 0
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.i.i ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !392, !noalias !1015
  %i.cb = icmp eq i8 %i.ca, 6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1015
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = select i1 %i.cb, i1 %i.ce, i1 false
  br i1 %i.cf, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i, label %.backedge.i.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i
  %i.cg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i.i, %bb.d ], [ %i.cg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp ne i32 %i.bn, %.01318.i.i.i.lcssa.i.i.i.i
  %i.ch = add nuw i32 %.01318.i.i.i.lcssa.i.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i.i = icmp ult i32 %i.ch, %i.bn
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i.i)
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i.i = zext i32 %i.bn to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !355, !noalias !1015 ; 2 uses
  %i.cm = lshr i64 %i.cl, 56
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %.not.i3.i.i.i.i = icmp eq i32 %.0.i.i, %i.cn
  br i1 %.not.i3.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i, %.critedge.i.i.i.i.i
  %indvars.iv.i4.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ci, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !355, !noalias !1015 ; 2 uses
  %i.cr = lshr i64 %i.cq, 56
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %.not.i.i.i.i.i = icmp eq i32 %.0.i.i, %i.cs
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i, label %.critedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i: ; preds = %.critedge.i.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i
  %.lcssa.i.i.i.i = phi i64 [ %i.cl, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i ], [ %i.cq, %.critedge.i.i.i.i.i ]
  %i.ct = shl i64 %.lcssa.i.i.i.i, 8
  %i.cu = ashr exact i64 %i.ct, 8
  %i.cv = add nuw nsw i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i:  ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.not.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.cz, %bb.e ], [ %.sroa.06.0.i.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.db = load i16, ptr %i.da, align 2, !tbaa !395
  %i.dc = icmp eq i16 %i.bk, %i.db
  br i1 %i.dc, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.f, !llvm.loop !14

bb.g:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.de = zext i16 %i.bk to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !396 ; 2 uses
  %i.dh = urem i64 %i.de, %i.dg                   ; 2 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !397
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !337 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !395
  %i.do = icmp eq i16 %i.bk, %i.dn
  br i1 %i.do, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %i.dl, %bb.g ]
  %i.dp = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !395 ; 2 uses
  %i.ds = zext i16 %i.dr to i64
  %i.dt = urem i64 %i.ds, %i.dg
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.dt, %i.dh
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.du = icmp eq i16 %i.bk, %i.dr
  br i1 %i.du, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f, %bb.g
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.f ], [ %i.dl, %bb.g ], [ %i.dp, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !408
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = add i64 %i.dx, 15
  %i.dz = and i64 %i.dy, -16                      ; 2 uses
  %i.ea = add i64 %i.dz, 16                       ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !409
  %i.ed = icmp ult i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.h, label %bb.i, !prof !360

bb.h:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.ee = inttoptr i64 %i.ea to ptr
  store ptr %i.ee, ptr %i.dv, align 8, !tbaa !408
  %i.ef = inttoptr i64 %i.dz to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.eg = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.dv, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.ef, %bb.h ], [ %i.eg, %bb.i ] ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt4pairIiiEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 6 uses
  store i64 0, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not.not.i, label %bb.j, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit
  %i.el = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !412 ; 2 uses
  %i.eo = urem i64 %i.el, %i.en                   ; 5 uses
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !413
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i131 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i131, label %.critedge.i133, label %bb.n

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.025.0.in.i = phi ptr [ %i.es, %bb.j ], [ %.sroa.025.0.i, %bb.l ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i136 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i136, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !415
  %i.ev = icmp eq ptr %.0.i.i.i.i, %i.eu
  br i1 %i.ev, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.k, !llvm.loop !16

bb.m:                                             ; preds = %bb.k
  %i.ew = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !412
  %i.ez = urem i64 %i.ew, %i.ey
  br label %.critedge.i133

bb.n:                                             ; preds = %.thread30.i
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !337 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !415
  %i.fd = icmp eq ptr %.0.i.i.i.i, %i.fc
  br i1 %i.fd, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i132

bb.o:                                             ; preds = %bb.p
  %i.fe = icmp eq ptr %.0.i.i.i.i, %i.fh
  br i1 %i.fe, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i132, !llvm.loop !17

.lr.ph.i.i.i132:                                  ; preds = %bb.n, %bb.o
  %.020.i.i.i = phi ptr [ %i.ff, %bb.o ], [ %i.fa, %bb.n ]
  %i.ff = load ptr, ptr %.020.i.i.i, align 8, !tbaa !337 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not18.i.i.i, label %.critedge.i133, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i132
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !415 ; 2 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = urem i64 %i.fi, %i.en
  %.not19.i.i.i = icmp eq i64 %i.fj, %i.eo
  br i1 %.not19.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !17

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.p
  br label %.critedge.i133, !llvm.loop !17

.critedge.i133:                                   ; preds = %.lr.ph.i.i.i132, %..loopexit_crit_edge21.i.i.i, %bb.m, %.thread30.i
  %i.fk = phi i64 [ %i.ez, %bb.m ], [ %i.eo, %.thread30.i ], [ %i.eo, %..loopexit_crit_edge21.i.i.i ], [ %i.eo, %.lr.ph.i.i.i132 ]
  %i.fl = phi ptr [ %i.ex, %bb.m ], [ %i.em, %.thread30.i ], [ %i.em, %..loopexit_crit_edge21.i.i.i ], [ %i.em, %.lr.ph.i.i.i132 ] ; 3 uses
  %i.fm = phi i64 [ %i.ew, %bb.m ], [ %i.el, %.thread30.i ], [ %i.el, %..loopexit_crit_edge21.i.i.i ], [ %i.el, %.lr.ph.i.i.i132 ]
  %i.fn = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 7 uses
  store ptr null, ptr %i.fn, align 8, !tbaa !337
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %.0.i.i.i.i, ptr %i.fo, align 8, !tbaa !415
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 128
  %i.fq = load i64, ptr %i.fl, align 8, !tbaa !412
  %i.fr = load i64, ptr %i.ej, align 8, !tbaa !411
  %i.fs = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 noundef %i.fq, i64 noundef %i.fr, i64 noundef 1) #18 ; 2 uses
  %i.ft = extractvalue { i8, i64 } %i.fs, 0
  %i.fu = trunc i8 %i.ft to i1
  br i1 %i.fu, label %bb.q, label %.critedge.i133._crit_edge

.critedge.i133._crit_edge:                        ; preds = %.critedge.i133
  %.pre = load ptr, ptr %i.ei, align 8, !tbaa !413
  br label %bb.ab
end_hunk_4
begin_hunk_5_@_ZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE3runEv:bb.a
  %.1368 = phi i1 [ %.2, %_ZZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlRNS_6MCInstERKNS0_16BinaryBasicBlockEE_clES9_SC_.exit ], [ %.not3.i, %bb.bp ] ; 2 uses
  %.0296367 = phi ptr [ %.sroa.0.sroa.010.0.in.i.i101, %_ZZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlRNS_6MCInstERKNS0_16BinaryBasicBlockEE_clES9_SC_.exit ], [ %i.sm, %bb.bp ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.0296367, i64 4
  %i.tf = call noundef i32 @_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE13computeNextSPERKNS_6MCInstEii(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0220.0369, i32 noundef %i.td, i32 noundef %i.tc) ; 3 uses
  %i.tg = load i32, ptr %.0296367, align 4, !tbaa !534 ; 4 uses
  %i.th = load i32, ptr %i.te, align 4, !tbaa !535 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ti = load ptr, ptr %i.u, align 8, !tbaa !536, !nonnull !130, !align !131
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 1568 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !286
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 736
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = call noundef zeroext i1 %i.tn(ptr noundef nonnull align 8 dereferenceable(536) %i.tk, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0220.0369, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %i.b) #18, !inline_history !1008
  br i1 %i.to, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %.lr.ph371
  %i.tp = load i16, ptr %i.b, align 2, !tbaa !395
  %i.tq = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !286
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 752
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = call noundef zeroext i16 %i.tt(ptr noundef nonnull align 8 dereferenceable(536) %i.tq) #18, !inline_history !1008
  %i.tv = icmp eq i16 %i.tp, %i.tu
  br i1 %i.tv, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.tw = load i16, ptr %i.a, align 2, !tbaa !395
  %i.tx = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !286
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 744
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = call noundef zeroext i16 %i.ua(ptr noundef nonnull align 8 dereferenceable(536) %i.tx) #18, !inline_history !1008
  %i.uc = icmp eq i16 %i.tw, %i.ub
  br i1 %i.uc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i8 1, ptr %i.nf, align 8, !tbaa !1024
  br label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE13computeNextFPERKNS_6MCInstEii.exit

bb.bt:                                            ; preds = %bb.br, %bb.bq, %.lr.ph371
  %i.ud = load ptr, ptr %i.u, align 8, !tbaa !536, !nonnull !130, !align !131
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 1536
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !502
  %i.ug = load i32, ptr %.sroa.0220.0369, align 8, !tbaa !510
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !513
  %i.ui = zext i32 %i.ug to i64
  %i.uj = sub nsw i64 0, %i.ui
  %i.uk = getelementptr inbounds [32 x i8], ptr %i.uh, i64 %i.uj
  %i.ul = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !286
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 752
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = call noundef zeroext i16 %i.uo(ptr noundef nonnull align 8 dereferenceable(536) %i.ul) #18, !inline_history !1008
  %i.uq = zext i16 %i.up to i32
  %i.ur = load ptr, ptr %i.u, align 8, !tbaa !536, !nonnull !130, !align !131
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 1576
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !295
  %i.uu = call noundef zeroext i1 @_ZNK4llvm11MCInstrDesc15hasDefOfPhysRegERKNS_6MCInstENS_10MCRegisterERKNS_14MCRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.uk, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0220.0369, i32 %i.uq, ptr noundef nonnull align 8 dereferenceable(240) %i.ut) #18
  br i1 %i.uu, label %bb.bu, label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE13computeNextFPERKNS_6MCInstEii.exit

bb.bu:                                            ; preds = %bb.bt
  %i.uv = add i32 %i.th, 2147483647
  %or.cond.i123 = icmp ult i32 %i.uv, -2
  br i1 %or.cond.i123, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.uw = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !286
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 752
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = call noundef zeroext i16 %i.uz(ptr noundef nonnull align 8 dereferenceable(536) %i.uw) #18, !inline_history !1008
  %i.vb = sext i32 %i.th to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.sroa.046.0.i = phi i16 [ %i.va, %bb.bv ], [ 0, %bb.bu ]
  %.sroa.648.0.i = phi i64 [ %i.vb, %bb.bv ], [ 0, %bb.bu ]
  %i.vc = add i32 %i.tg, 2147483647
  %or.cond3.i = icmp ult i32 %i.vc, -2
  br i1 %or.cond3.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vd = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !286
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 744
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = call noundef zeroext i16 %i.vg(ptr noundef nonnull align 8 dereferenceable(536) %i.vd) #18, !inline_history !1008
  %i.vi = sext i32 %i.tg to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.036.0.i = phi i16 [ %i.vh, %bb.bx ], [ 0, %bb.bw ]
  %.sroa.637.0.i = phi i64 [ %i.vi, %bb.bx ], [ 0, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.vj = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  store i16 %.sroa.046.0.i, ptr %1, align 8
  store i64 %.sroa.648.0.i, ptr %.sroa.648.0..sroa_idx.i, align 8
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !286
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 728
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = call noundef zeroext i1 %i.vm(ptr noundef nonnull align 8 dereferenceable(536) %i.vj, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0220.0369, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i16 %.sroa.036.0.i, i64 %.sroa.637.0.i, ptr noundef nonnull byval(%"struct.std::pair.887") align 8 %1) #18, !inline_history !1008
  br i1 %i.vn, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.vo = icmp eq i32 %i.tg, -2147483648
  %i.vp = icmp eq i32 %i.th, -2147483648
  %or.cond5.i = and i1 %i.vo, %i.vp
  %..i = select i1 %or.cond5.i, i32 -2147483648, i32 2147483647
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.vq = load i8, ptr %i.nf, align 8, !tbaa !1024, !range !388, !noundef !130
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.vs = load ptr, ptr %i.tj, align 8, !tbaa !387 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !286
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 768
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = call noundef zeroext i1 %i.vv(ptr noundef nonnull align 8 dereferenceable(536) %i.vs, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0220.0369, i1 noundef zeroext false) #18, !inline_history !1008
  br i1 %i.vw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 1, ptr %i.nf, align 8, !tbaa !1024
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.vx = load i64, ptr %i.c, align 8, !tbaa !354
  %i.vy = trunc i64 %i.vx to i32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bz
  %.0.i = phi i32 [ %i.vy, %bb.cd ], [ %..i, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE13computeNextFPERKNS_6MCInstEii.exit

_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE13computeNextFPERKNS_6MCInstEii.exit: ; preds = %bb.bs, %bb.bt, %bb.ce
  %.1.i = phi i32 [ %i.tg, %bb.bs ], [ %.0.i, %bb.ce ], [ %i.th, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.vz = load ptr, ptr %i.u, align 8, !tbaa !536, !nonnull !130, !align !131
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1568
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !387 ; 6 uses
  %i.wc = load i8, ptr %i.w, align 4, !tbaa !135, !range !388, !noundef !130
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %._crit_edge.i.i120, label %bb.cf

._crit_edge.i.i120:                               ; preds = %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE13computeNextFPERKNS_6MCInstEii.exit
  %.0.pre.i.i121 = load i32, ptr %i.v, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i98

bb.cf:                                            ; preds = %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE13computeNextFPERKNS_6MCInstEii.exit
  %i.we = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.wb, ptr nonnull @.str.5, i64 20) ; 2 uses
  %.sroa.0.0.insert.ext.i.i96 = zext i32 %i.we to i64
  %.sroa.0.0.insert.insert.i.i97 = or disjoint i64 %.sroa.0.0.insert.ext.i.i96, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i97, ptr %i.v, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i98

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i98: ; preds = %bb.cf, %._crit_edge.i.i120
  %.0.i.i99 = phi i32 [ %.0.pre.i.i121, %._crit_edge.i.i120 ], [ %i.we, %bb.cf ] ; 5 uses
  %i.wf = load i16, ptr %i.x, align 8, !tbaa !1014 ; 4 uses
  %i.wg = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.wb, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0220.0369, i32 noundef %.0.i.i99) #18, !noalias !1025
  br i1 %i.wg, label %bb.cg, label %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i100

bb.cg:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i98
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.0220.0369, i64 24
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !340, !noalias !1025 ; 4 uses
  %.01317.i.i.i.i.i.i.i102 = add i32 %i.wi, -1    ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0220.0369, i64 16
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !339, !noalias !1025 ; 4 uses
  %i.wl = zext nneg i32 %.01317.i.i.i.i.i.i.i102 to i64 ; 2 uses
  %i.wm = getelementptr inbounds nuw [16 x i8], ptr %i.wk, i64 %i.wl ; 2 uses
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !392, !noalias !1025
  %i.wo = icmp eq i8 %i.wn, 6
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !noalias !1025
  %i.wr = icmp eq ptr %i.wq, null
  %i.ws = select i1 %i.wo, i1 %i.wr, i1 false
  br i1 %i.ws, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i107, label %.backedge.i.i.i.i.i.i.i103

.backedge.i.i.i.i.i.i.i103:                       ; preds = %bb.cg, %.backedge.i.i.i.i.i.i.i103
  %indvars.iv.i.i.i.i104 = phi i64 [ %indvars.iv.next.i.i.i.i105, %.backedge.i.i.i.i.i.i.i103 ], [ %i.wl, %bb.cg ] ; 2 uses
  %indvars.iv.next.i.i.i.i105 = add nsw i64 %indvars.iv.i.i.i.i104, -1 ; 3 uses
  %i.wt = icmp sgt i64 %indvars.iv.i.i.i.i104, 0
  call void @llvm.assume(i1 %i.wt)
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %i.wk, i64 %indvars.iv.next.i.i.i.i105 ; 2 uses
  %i.wv = load i8, ptr %i.wu, align 8, !tbaa !392, !noalias !1025
  %i.ww = icmp eq i8 %i.wv, 6
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !noalias !1025
  %i.wz = icmp eq ptr %i.wy, null
  %i.xa = select i1 %i.ww, i1 %i.wz, i1 false
  br i1 %i.xa, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i106, label %.backedge.i.i.i.i.i.i.i103

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i106: ; preds = %.backedge.i.i.i.i.i.i.i103
  %i.xb = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i105 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i107

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i107: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i106, %bb.cg
  %.01318.i.i.i.lcssa.i.i.i.i108 = phi i32 [ %.01317.i.i.i.i.i.i.i102, %bb.cg ], [ %i.xb, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i106 ] ; 2 uses
  %.not.i.not.i.i.i.i.i109 = icmp ne i32 %i.wi, %.01318.i.i.i.lcssa.i.i.i.i108
  %i.xc = add nuw i32 %.01318.i.i.i.lcssa.i.i.i.i108, 1 ; 2 uses
  %.not1324.i.i.i.i.i110 = icmp ult i32 %i.xc, %i.wi
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i.i109)
  call void @llvm.assume(i1 %.not1324.i.i.i.i.i110)
  %i.xd = zext i32 %i.xc to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i.i111 = zext i32 %i.wi to i64
  %i.xe = getelementptr inbounds nuw [16 x i8], ptr %i.wk, i64 %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !355, !noalias !1025 ; 2 uses
  %i.xh = lshr i64 %i.xg, 56
  %i.xi = trunc nuw nsw i64 %i.xh to i32
  %.not.i3.i.i.i.i112 = icmp eq i32 %.0.i.i99, %i.xi
  br i1 %.not.i3.i.i.i.i112, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i118, label %.critedge.i.i.i.i.i113

.critedge.i.i.i.i.i113:                           ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i107, %.critedge.i.i.i.i.i113
  %indvars.iv.i4.i.i.i.i114 = phi i64 [ %indvars.iv.next.i.i.i.i.i115, %.critedge.i.i.i.i.i113 ], [ %i.xd, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i107 ]
  %indvars.iv.next.i.i.i.i.i115 = add nuw nsw i64 %indvars.iv.i4.i.i.i.i114, 1 ; 3 uses
  %exitcond.not.i.i.i.i.i116 = icmp ne i64 %indvars.iv.next.i.i.i.i.i115, %wide.trip.count.i.i.i.i.i111
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i116)
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.wk, i64 %indvars.iv.next.i.i.i.i.i115
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !355, !noalias !1025 ; 2 uses
  %i.xm = lshr i64 %i.xl, 56
  %i.xn = trunc nuw nsw i64 %i.xm to i32
  %.not.i.i.i.i.i117 = icmp eq i32 %.0.i.i99, %i.xn
  br i1 %.not.i.i.i.i.i117, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i118, label %.critedge.i.i.i.i.i113

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i118: ; preds = %.critedge.i.i.i.i.i113, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i107
  %.lcssa.i.i.i.i119 = phi i64 [ %i.xg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i107 ], [ %i.xl, %.critedge.i.i.i.i.i113 ]
  %i.xo = shl i64 %.lcssa.i.i.i.i119, 8
  %i.xp = ashr exact i64 %i.xo, 8
  %i.xq = add nuw nsw i64 %i.xp, 8
  %i.xr = inttoptr i64 %i.xq to ptr
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit122

_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i100: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i98
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wb, i64 32
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !394
  %.not.not.i.i.i.i137 = icmp eq i64 %i.xt, 0
  br i1 %.not.not.i.i.i.i137, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i100
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.06.0.in.i.i.i.i144 = phi ptr [ %i.xu, %bb.ch ], [ %.sroa.06.0.i.i.i.i145, %bb.ci ]
  %.sroa.06.0.i.i.i.i145 = load ptr, ptr %.sroa.06.0.in.i.i.i.i144, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i145, i64 8
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !395
  %i.xx = icmp eq i16 %i.wf, %i.xw
  br i1 %i.xx, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i141, label %bb.ci, !llvm.loop !14

bb.cj:                                            ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i100
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.xz = zext i16 %i.wf to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !396 ; 2 uses
  %i.yc = urem i64 %i.xz, %i.yb                   ; 2 uses
  %i.yd = load ptr, ptr %i.xy, align 8, !tbaa !397
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %i.yc
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !337 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !395
  %i.yj = icmp eq i16 %i.wf, %i.yi
  br i1 %i.yj, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i141, label %.lr.ph.i.i.i.i.i.i138

.lr.ph.i.i.i.i.i.i138:                            ; preds = %bb.cj, %.lr.ph.i.i.i.i.i.i138
  %.020.i.i.i.i.i.i139 = phi ptr [ %i.yk, %.lr.ph.i.i.i.i.i.i138 ], [ %i.yg, %bb.cj ]
  %i.yk = load ptr, ptr %.020.i.i.i.i.i.i139, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.ym = load i16, ptr %i.yl, align 2, !tbaa !395 ; 2 uses
  %i.yn = zext i16 %i.ym to i64
  %i.yo = urem i64 %i.yn, %i.yb
  %.not19.i.i.i.i.i.i140 = icmp eq i64 %i.yo, %i.yc
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i140)
  %i.yp = icmp eq i16 %i.wf, %i.ym
  br i1 %i.yp, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i141, label %.lr.ph.i.i.i.i.i.i138, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i141: ; preds = %.lr.ph.i.i.i.i.i.i138, %bb.ci, %bb.cj
  %.sroa.06.1.i.i.i.i142 = phi ptr [ %.sroa.06.0.i.i.i.i145, %bb.ci ], [ %i.yg, %bb.cj ], [ %i.yk, %.lr.ph.i.i.i.i.i.i138 ] ; 14 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 16 ; 3 uses
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !408
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = add i64 %i.ys, 15
  %i.yu = and i64 %i.yt, -16                      ; 2 uses
  %i.yv = add i64 %i.yu, 16                       ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 24
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !409
  %i.yy = icmp ult i64 %i.yv, %i.yx
  br i1 %i.yy, label %bb.ck, label %bb.cl, !prof !360

bb.ck:                                            ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i141
  %i.yz = inttoptr i64 %i.yv to ptr
  store ptr %i.yz, ptr %i.yq, align 8, !tbaa !408
  %i.za = inttoptr i64 %i.yu to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit146

bb.cl:                                            ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i141
  %i.zb = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.yq, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit146

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit146: ; preds = %bb.ck, %bb.cl
  %.0.i.i.i.i143 = phi ptr [ %i.za, %bb.ck ], [ %i.zb, %bb.cl ] ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt4pairIiiEEE, i64 16), ptr %.0.i.i.i.i143, align 8, !tbaa !286
  %i.zc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i143, i64 8 ; 6 uses
  store i64 0, ptr %i.zc, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 96 ; 4 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 120 ; 4 uses
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !411
  %.not.not.i180 = icmp eq i64 %i.zf, 0
  br i1 %.not.not.i180, label %bb.cm, label %.thread30.i181

.thread30.i181:                                   ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit146
  %i.zg = ptrtoint ptr %.0.i.i.i.i143 to i64      ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 104 ; 4 uses
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !412 ; 2 uses
  %i.zj = urem i64 %i.zg, %i.zi                   ; 5 uses
  %i.zk = load ptr, ptr %i.zd, align 8, !tbaa !413
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zj
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i182 = icmp eq ptr %i.zm, null
  br i1 %.not.i.i.i182, label %.critedge.i188, label %bb.cq

bb.cm:                                            ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit146
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 112
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %bb.cm
  %.sroa.025.0.in.i197 = phi ptr [ %i.zn, %bb.cm ], [ %.sroa.025.0.i198, %bb.co ]
  %.sroa.025.0.i198 = load ptr, ptr %.sroa.025.0.in.i197, align 8, !tbaa !337 ; 3 uses
  %.not.i199 = icmp eq ptr %.sroa.025.0.i198, null
  br i1 %.not.i199, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i198, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !415
  %i.zq = icmp eq ptr %.0.i.i.i.i143, %i.zp
  br i1 %i.zq, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit200, label %bb.cn, !llvm.loop !16

bb.cp:                                            ; preds = %bb.cn
  %i.zr = ptrtoint ptr %.0.i.i.i.i143 to i64      ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 104 ; 2 uses
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !412
  %i.zu = urem i64 %i.zr, %i.zt
  br label %.critedge.i188

bb.cq:                                            ; preds = %.thread30.i181
  %i.zv = load ptr, ptr %i.zm, align 8, !tbaa !337 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !415
  %i.zy = icmp eq ptr %.0.i.i.i.i143, %i.zx
  br i1 %i.zy, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit200, label %.lr.ph.i.i.i183

bb.cr:                                            ; preds = %bb.cs
  %i.zz = icmp eq ptr %.0.i.i.i.i143, %i.aac
  br i1 %i.zz, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit200, label %.lr.ph.i.i.i183, !llvm.loop !17

.lr.ph.i.i.i183:                                  ; preds = %bb.cq, %bb.cr
  %.020.i.i.i184 = phi ptr [ %i.aaa, %bb.cr ], [ %i.zv, %bb.cq ]
  %i.aaa = load ptr, ptr %.020.i.i.i184, align 8, !tbaa !337 ; 3 uses
  %.not18.i.i.i185 = icmp eq ptr %i.aaa, null
  br i1 %.not18.i.i.i185, label %.critedge.i188, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i183
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !415 ; 2 uses
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = urem i64 %i.aad, %i.zi
  %.not19.i.i.i186 = icmp eq i64 %i.aae, %i.zj
  br i1 %.not19.i.i.i186, label %bb.cr, label %..loopexit_crit_edge21.i.i.i187, !llvm.loop !17

..loopexit_crit_edge21.i.i.i187:                  ; preds = %bb.cs
  br label %.critedge.i188, !llvm.loop !17

.critedge.i188:                                   ; preds = %.lr.ph.i.i.i183, %..loopexit_crit_edge21.i.i.i187, %bb.cp, %.thread30.i181
  %i.aaf = phi i64 [ %i.zu, %bb.cp ], [ %i.zj, %.thread30.i181 ], [ %i.zj, %..loopexit_crit_edge21.i.i.i187 ], [ %i.zj, %.lr.ph.i.i.i183 ]
  %i.aag = phi ptr [ %i.zs, %bb.cp ], [ %i.zh, %.thread30.i181 ], [ %i.zh, %..loopexit_crit_edge21.i.i.i187 ], [ %i.zh, %.lr.ph.i.i.i183 ] ; 3 uses
  %i.aah = phi i64 [ %i.zr, %bb.cp ], [ %i.zg, %.thread30.i181 ], [ %i.zg, %..loopexit_crit_edge21.i.i.i187 ], [ %i.zg, %.lr.ph.i.i.i183 ]
  %i.aai = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 7 uses
  store ptr null, ptr %i.aai, align 8, !tbaa !337
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  store ptr %.0.i.i.i.i143, ptr %i.aaj, align 8, !tbaa !415
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i142, i64 128
  %i.aal = load i64, ptr %i.aag, align 8, !tbaa !412
  %i.aam = load i64, ptr %i.ze, align 8, !tbaa !411
  %i.aan = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aak, i64 noundef %i.aal, i64 noundef %i.aam, i64 noundef 1) #18 ; 2 uses
  %i.aao = extractvalue { i8, i64 } %i.aan, 0
  %i.aap = trunc i8 %i.aao to i1
  br i1 %i.aap, label %bb.ct, label %.critedge.i188._crit_edge

.critedge.i188._crit_edge:                        ; preds = %.critedge.i188
  %.pre422 = load ptr, ptr %i.zd, align 8, !tbaa !413
  br label %bb.de
end_hunk_5
begin_hunk_6_@_ZZN4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE_clES8_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.al, %bb.i ], [ %.sroa.06.0.i.i.i.i17, %bb.k ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !1042 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !342, !noalias !1042
  %i.ao = icmp eq ptr %2, %i.an
  br i1 %i.ao, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i14, label %bb.j, !llvm.loop !30

bb.l:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aq = ptrtoint ptr %2 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !542, !noalias !1042 ; 2 uses
  %i.at = urem i64 %i.aq, %i.as                   ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !543, !noalias !1042
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !345, !noalias !1042 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !337, !noalias !1042 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !342, !noalias !1042
  %i.ba = icmp eq ptr %2, %i.az
  br i1 %i.ba, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.n:                                             ; preds = %bb.o
  %i.bb = icmp eq ptr %2, %i.be
  br i1 %i.bb, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !29

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.m, %bb.n
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.bc, %bb.n ], [ %i.ax, %bb.m ]
  %i.bc = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !1042 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.bc, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !342, !noalias !1042 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = urem i64 %i.bf, %i.as
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.bg, %i.at
  br i1 %.not19.i.i.i.i.i.i10, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !29

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.o
  br label %.loopexit.i.i12, !llvm.loop !29

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.j, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !alias.scope !1042
  %i.bj = or i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 8, !alias.scope !1042
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !1042
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i14: ; preds = %bb.n, %bb.k, %bb.m
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.k ], [ %i.ax, %bb.m ], [ %i.bc, %bb.n ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !alias.scope !1042
  %i.bn = and i8 %i.bm, -2
  store i8 %i.bn, ptr %i.bl, align 8, !alias.scope !1042
  store ptr %i.bk, ptr %4, align 8, !tbaa !548, !alias.scope !1042
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.872") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i14, %bb.p
  %i.bo = phi ptr [ %i.ai, %.loopexit.i.i12 ], [ %i.ai, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.p ] ; 3 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !548   ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !389 ; 2 uses
  %i.br = icmp eq i32 %i.bq, -2147483648
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !389 ; 3 uses
  br i1 %i.br, label %.sink.split.i.i21, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19
  %i.bt = icmp eq i32 %i.bs, -2147483648
  %i.bu = icmp eq i32 %i.bs, %i.bq
  %or.cond.i.i20 = or i1 %i.bt, %i.bu
  br i1 %or.cond.i.i20, label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i23, label %.sink.split.i.i21

.sink.split.i.i21:                                ; preds = %bb.q, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19
  %.sink.i.i22 = phi i32 [ %i.bs, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19 ], [ 2147483647, %bb.q ]
  store i32 %.sink.i.i22, ptr %i.bo, align 4, !tbaa !389
  br label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i23

_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i23: ; preds = %.sink.split.i.i21, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !389 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -2147483648
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !389 ; 3 uses
  br i1 %i.by, label %.sink.split.i6.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i23
  %i.ca = icmp eq i32 %i.bz, -2147483648
  %i.cb = icmp eq i32 %i.bz, %i.bx
  %or.cond.i5.i = or i1 %i.ca, %i.cb
  br i1 %or.cond.i5.i, label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE12doConfluenceERSt4pairIiiERKS5_.exit, label %.sink.split.i6.i

.sink.split.i6.i:                                 ; preds = %bb.r, %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i23
  %.sink.i7.i = phi i32 [ %i.bz, %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i23 ], [ 2147483647, %bb.r ]
  store i32 %.sink.i7.i, ptr %i.bv, align 4, !tbaa !389
  br label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE12doConfluenceERSt4pairIiiERKS5_.exit

_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE12doConfluenceERSt4pairIiiERKS5_.exit: ; preds = %bb.r, %.sink.split.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE12doConfluenceERSt4pairIiiERKS5_.exit, %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE18doConfluenceWithLPERSt4pairIiiERKS5_RKNS_6MCInstE.exit
  ret void
}

declare noundef i64 @_ZNK4llvm4bolt13MCPlusBuilder14getGnuArgsSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.872") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !536, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.5, i64 20) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1046
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1046
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1046
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1046
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1046
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1046 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1046 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1046
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1046
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1046
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1046
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1046 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1046 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1046
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1046
  store ptr %i.ay, ptr %0, align 8, !tbaa !548, !alias.scope !1046
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_20StackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_20StackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_20StackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_20StackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_20StackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_20StackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !541
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_20StackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_20StackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_20StackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr.872", align 8 ; 8 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1052   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1053, !nonnull !130, !align !546 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !544, !noalias !1056
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1056 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1056
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !30

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !542, !noalias !1056 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !543, !noalias !1056
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1056 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1056 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1056
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !29

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1056 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1056 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !29

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !29

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !alias.scope !1056
  %i.ae = or i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 8, !alias.scope !1056
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1056
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !alias.scope !1056
  %i.ai = and i8 %i.ah, -2
  store i8 %i.ai, ptr %i.ag, align 8, !alias.scope !1056
  store ptr %i.af, ptr %2, align 8, !tbaa !548, !alias.scope !1056
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.872") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i: ; preds = %bb.j, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, %.loopexit.i.i.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !548   ; 2 uses
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !389 ; 2 uses
  %i.al = icmp eq i32 %i.ak, -2147483648
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !389 ; 3 uses
  br i1 %i.al, label %.sink.split.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i
  %i.an = icmp eq i32 %i.am, -2147483648
  %i.ao = icmp eq i32 %i.am, %i.ak
  %or.cond.i.i.i = or i1 %i.an, %i.ao
  br i1 %or.cond.i.i.i, label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.k, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i
  %.sink.i.i.i = phi i32 [ %i.am, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i ], [ 2147483647, %bb.k ]
  store i32 %.sink.i.i.i, ptr %i.c, align 4, !tbaa !389
  br label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i

_ZN4llvm4bolt24StackPointerTrackingBaseINS0_20StackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i: ; preds = %.sink.split.i.i.i, %bb.k
end_hunk_6
begin_hunk_7_@_ZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEv
define linkonce_odr hidden void @_ZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::BitVector", align 8   ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 7 uses
  %3 = alloca %"class.std::function", align 8     ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::BitVector", align 8   ; 7 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 13 uses
  %6 = alloca %"class.std::queue", align 8        ; 20 uses
  %7 = alloca %"class.llvm::DenseSet.712", align 8 ; 14 uses
  %8 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 15 uses
  %10 = alloca %"class.std::function", align 8    ; 6 uses
  %11 = alloca %"class.std::function", align 8    ; 6 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %class.anon.893, align 8           ; 7 uses
  tail call void @_ZN4llvm4bolt23StackAllocationAnalysis9preflightEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !550, !nonnull !130, !align !131 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !339  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1248
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.cy, label %.lr.ph225

.lr.ph225:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.b

._crit_edge226:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.ai, align 8, !tbaa !367
  %i.ak = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !368
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !367
  %i.am = add i64 %i.al, -1
  %i.an = lshr i64 %i.am, 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !369
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !370
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !371
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 512 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !372
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !370
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !371
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !372
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !373
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !550, !nonnull !130, !align !131
  store ptr %i.ay, ptr %i.d, align 8, !tbaa !265
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !339
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !340
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bb, align 4, !tbaa !359
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_4bolt14BinaryFunctionENS_11GraphTraitsIS3_EEE10InitializeERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bc = load ptr, ptr %8, align 8, !tbaa !339, !noalias !1095 ; 3 uses
  %i.bd = load i32, ptr %i.ba, align 8, !tbaa !340, !noalias !1095 ; 2 uses
  %.not193227 = icmp eq i32 %i.bd, 0
  br i1 %.not193227, label %._crit_edge231, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %._crit_edge226
  %i.be = zext i32 %i.bd to i64
  %.idx261 = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx261
  br label %.lr.ph230

bb.b:                                             ; preds = %.lr.ph225, %._crit_edge
  %.sroa.0177.0224 = phi ptr [ %i.n, %.lr.ph225 ], [ %i.bq, %._crit_edge ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.0177.0224, align 8, !tbaa !342 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !342
  %i.bh = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4llvm4bolt23StackAllocationAnalysis20getStartingStateAtBBERKNS0_16BinaryBasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.bg) #18
  %i.bi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.bh, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.bj = load i32, ptr %i.u, align 8, !tbaa !384
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !384
  %i.bl = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.v
  br i1 %i.bm, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.bl) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !344 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !344 ; 2 uses
  %.not200221 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not200221, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit64, %_ZN4llvm9BitVectorD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0177.0224, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.bq, %i.r
  br i1 %.not192, label %._crit_edge226, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit64
  %.sroa.0173.0222 = phi ptr [ %i.lv, %_ZN4llvm9BitVectorD2Ev.exit64 ], [ %i.bn, %_ZN4llvm9BitVectorD2Ev.exit ] ; 10 uses
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !551, !nonnull !130, !align !131
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1568
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !387 ; 6 uses
  %i.bu = load i8, ptr %i.y, align 4, !tbaa !135, !range !388, !noundef !130
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.bw = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bt, ptr nonnull @.str.6, i64 23) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bw to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.x, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.bw, %bb.d ] ; 5 uses
  %i.bx = load i16, ptr %i.z, align 8, !tbaa !334 ; 4 uses
  %i.by = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bt, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0173.0222, i32 noundef %.0.i.i) #18, !noalias !1096
  br i1 %i.by, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0173.0222, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !340, !noalias !1096 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ca, -1         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0173.0222, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !339, !noalias !1096 ; 4 uses
  %i.cd = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !392, !noalias !1096
  %i.cg = icmp eq i8 %i.cf, 6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1096
  %i.cj = icmp eq ptr %i.ci, null
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cd, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.cl = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !392, !noalias !1096
  %i.co = icmp eq i8 %i.cn, 6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !1096
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.ct, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ca, %.01318.i.i.i.lcssa.i.i.i
  %i.cu = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.cu, %i.ca
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ca to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !355, !noalias !1096 ; 2 uses
  %i.cz = lshr i64 %i.cy, 56
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.da
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.cv, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !355, !noalias !1096 ; 2 uses
  %i.de = lshr i64 %i.dd, 56
  %i.df = trunc nuw nsw i64 %i.de to i32
  %.not.i.i.i.i97 = icmp eq i32 %.0.i.i, %i.df
  br i1 %.not.i.i.i.i97, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.cy, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.dd, %.critedge.i.i.i.i ]
  %i.dg = shl i64 %.lcssa.i.i.i, 8
  %i.dh = ashr exact i64 %i.dg, 8
  %i.di = add nuw nsw i64 %i.dh, 8
  %i.dj = inttoptr i64 %i.di to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false)
  store ptr %i.aa, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ab, align 8, !tbaa !340
  store i32 6, ptr %i.ac, align 4, !tbaa !359
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.dm, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !395
  %i.dp = icmp eq i16 %i.bx, %i.do
  br i1 %i.dp, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dr = zext i16 %i.bx to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !396 ; 2 uses
  %i.du = urem i64 %i.dr, %i.dt                   ; 2 uses
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !397
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !337 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !395
  %i.eb = icmp eq i16 %i.bx, %i.ea
  br i1 %i.eb, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %i.dy, %bb.h ]
  %i.ec = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !395 ; 2 uses
  %i.ef = zext i16 %i.ee to i64
  %i.eg = urem i64 %i.ef, %i.dt
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.eg, %i.du
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.eh = icmp eq i16 %i.bx, %i.ee
  br i1 %i.eh, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.dy, %bb.h ], [ %i.ec, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !408
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = add i64 %i.ek, 15
  %i.em = and i64 %i.el, -16                      ; 2 uses
  %i.en = add i64 %i.em, 80                       ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !409
  %i.eq = icmp ult i64 %i.en, %i.ep
  br i1 %i.eq, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.er = inttoptr i64 %i.en to ptr
  store ptr %i.er, ptr %i.ei, align 8, !tbaa !408
  %i.es = inttoptr i64 %i.em to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.et = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.eu = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.es, %bb.i ], [ %i.et, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !339
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.ex, align 8, !tbaa !340
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.ey, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.eu, 0
  %i.ez = icmp eq ptr %i.ev, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.ez
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fa = icmp ugt i32 %i.eu, 6
  br i1 %i.fa, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fb = zext i32 %i.eu to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.ev, ptr noundef nonnull %i.ew, i64 noundef %i.fb, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i109 = load ptr, ptr %i.ev, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.fc = phi ptr [ %.pre.i.i.i109, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.ew, %bb.k ]
  %i.fd = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.eu, %bb.k ]
  %i.fe = zext i32 %i.fd to i64
  %i.ff = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fe, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 8 %i.ff, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.eu, ptr %i.ex, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fh = load i32, ptr %i.ad, align 8, !tbaa !384
  store i32 %i.fh, ptr %i.fg, align 8, !tbaa !384
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.fk, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.fl = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !412 ; 2 uses
  %i.fo = urem i64 %i.fl, %i.fn                   ; 5 uses
  %i.fp = load ptr, ptr %i.fi, align 8, !tbaa !413
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i115, label %.critedge.i117, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.fs, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i120 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i120, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !415
  %i.fv = icmp eq ptr %.0.i.i.i.i, %i.fu
  br i1 %i.fv, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.fw = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !412
  %i.fz = urem i64 %i.fw, %i.fy
end_hunk_7
begin_hunk_8_@_ZZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE_clES7_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !551, !nonnull !130, !align !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1113, !nonnull !130, !align !131 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !495
  call void @_ZN4llvm4bolt23StackAllocationAnalysis18doConfluenceWithLPERNS_9BitVectorERKS2_RKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1113, !nonnull !130, !align !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !468, !noalias !1115
  %.not.not.i.i.i.i5 = icmp eq i64 %i.q, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.r, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !1115 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !342, !noalias !1115
  %i.u = icmp eq ptr %2, %i.t
  br i1 %i.u, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !26

bb.g:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = ptrtoint ptr %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !280, !noalias !1115 ; 2 uses
  %i.z = urem i64 %i.w, %i.y                      ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !279, !noalias !1115
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !345, !noalias !1115 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !337, !noalias !1115 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !342, !noalias !1115
  %i.ag = icmp eq ptr %2, %i.af
  br i1 %i.ag, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ah = icmp eq ptr %2, %i.ak
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !24

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.ai, %bb.i ], [ %i.ad, %bb.h ]
  %i.ai = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !1115 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !342, !noalias !1115 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = urem i64 %i.al, %i.y
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.am, %i.z
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !24

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !alias.scope !1115
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 8, !alias.scope !1115
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !1115
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.an, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !497, !alias.scope !1115
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ad, %bb.h ], [ %i.ai, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !alias.scope !1115
  %i.au = and i8 %i.at, -2
  store i8 %i.au, ptr %i.as, align 8, !alias.scope !1115
  store ptr %i.ar, ptr %4, align 8, !tbaa !495, !alias.scope !1115
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.av = phi ptr [ %i.o, %.loopexit.i.i12 ], [ %i.o, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.aw = load ptr, ptr %4, align 8, !tbaa !495
  call void @_ZN4llvm4bolt23StackAllocationAnalysis12doConfluenceERNS_9BitVectorERKS2_(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %i.av, ptr noundef nonnull align 8 dereferenceable(68) %i.aw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

declare void @_ZN4llvm4bolt23StackAllocationAnalysis18doConfluenceWithLPERNS_9BitVectorERKS2_RKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN4llvm4bolt23StackAllocationAnalysis12doConfluenceERNS_9BitVectorERKS2_(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !551, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.6, i64 23) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1119
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1119
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1119
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1119
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1119
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1119 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1119 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1119
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1119
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1119
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1119
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1119 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1119 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1119
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1119
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !1119
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_23StackAllocationAnalysisENS0_9BitVectorELb0ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_23StackAllocationAnalysisENS0_9BitVectorELb0ENS1_12StatePrinterIS4_EEE3runEvEUlNS1_12ProgramPointEE0_JS8_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_23StackAllocationAnalysisENS0_9BitVectorELb0ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_23StackAllocationAnalysisENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_23StackAllocationAnalysisENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_23StackAllocationAnalysisENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !554
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_23StackAllocationAnalysisENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_23StackAllocationAnalysisENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_23StackAllocationAnalysisENS0_9BitVectorELb0ENS1_12StatePrinterIS4_EEE3runEvEUlNS1_12ProgramPointEE0_JS8_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1125   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1126, !nonnull !130, !align !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !1129
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1129 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1129
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !1129 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !1129
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1129 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1129 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1129
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1129 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1129 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !1129
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !1129
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1129
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !497, !alias.scope !1129
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !1129
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !1129
  store ptr %i.ag, ptr %2, align 8, !tbaa !495, !alias.scope !1129
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

_ZZN4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit: ; preds = %.loopexit.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !495
  call void @_ZN4llvm4bolt23StackAllocationAnalysis12doConfluenceERNS_9BitVectorERKS2_(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %i.ak) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZN4llvm4bolt23StackAllocationAnalysis11computeNextERKNS_6MCInstERKNS_9BitVectorE(ptr dead_on_unwind writable sret(%"class.llvm::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt22InstrsDataflowAnalysisINS0_16ReachingDefOrUseILb1EEELb0ENS0_12StatePrinterINS_9BitVectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm4bolt22InstrsDataflowAnalysisINS0_16ReachingDefOrUseILb1EEELb0ENS0_12StatePrinterINS_9BitVectorEEEEE, i64 16), ptr %0, align 8, !tbaa !286
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !514  ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEv:bb.a
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.cy, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge233:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.al, align 8, !tbaa !367
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !368
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !367
  %i.ap = add i64 %i.ao, -1
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq ; 3 uses
  %i.as = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !369
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !370
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.au, align 8, !tbaa !371
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 512 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !372
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !370
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.as, ptr %i.az, align 8, !tbaa !371
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !372
  store ptr %i.as, ptr %i.am, align 8, !tbaa !373
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !558, !nonnull !130, !align !131
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !265
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bc, ptr %8, align 8, !tbaa !339
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !340
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.be, align 4, !tbaa !359
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_4bolt14BinaryFunctionENS_11GraphTraitsIS3_EEE10InitializeERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bf = load ptr, ptr %8, align 8, !tbaa !339, !noalias !1172 ; 3 uses
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !340, !noalias !1172 ; 2 uses
  %.not200234 = icmp eq i32 %i.bg, 0
  br i1 %.not200234, label %._crit_edge238, label %.lr.ph237.preheader

.lr.ph237.preheader:                              ; preds = %._crit_edge233
  %i.bh = zext i32 %i.bg to i64
  %.idx268 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx268
  br label %.lr.ph237

bb.b:                                             ; preds = %.lr.ph232, %._crit_edge
  %.sroa.0184.0231 = phi ptr [ %i.n, %.lr.ph232 ], [ %i.ca, %._crit_edge ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.0184.0231, align 8, !tbaa !342 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !342
  %i.bk = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.bl = load i64, ptr %i.u, align 8, !tbaa !561, !noalias !1173
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = add i32 %i.bm, 63                       ; 2 uses
  %i.bo = lshr i32 %i.bn, 6                       ; 3 uses
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !339, !alias.scope !1173
  store i32 6, ptr %i.x, align 4, !tbaa !359, !alias.scope !1173
  %i.bq = icmp ugt i32 %i.bn, 447
  br i1 %i.bq, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.b
  store i32 0, ptr %i.w, align 8, !tbaa !340, !alias.scope !1173
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.v, i64 noundef %i.bp, i64 noundef 8) #18
  %i.br = load ptr, ptr %4, align 8, !tbaa !339, !alias.scope !1173
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4bolt16ReachingDefOrUseILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.br, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.v, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !354
  br label %_ZN4llvm4bolt16ReachingDefOrUseILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt16ReachingDefOrUseILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i
  store i32 %i.bo, ptr %i.w, align 8, !tbaa !340, !alias.scope !1173
  store i32 %i.bm, ptr %i.y, align 8, !tbaa !384, !alias.scope !1173
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.bk, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.bt = load i32, ptr %i.y, align 8, !tbaa !384
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !384
  %i.bv = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.v
  br i1 %i.bw, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt16ReachingDefOrUseILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit
  call void @free(ptr noundef %i.bv) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm4bolt16ReachingDefOrUseILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !344 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !344 ; 2 uses
  %.not207228 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not207228, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit70, %_ZN4llvm9BitVectorD2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0184.0231, i64 8 ; 2 uses
  %.not199 = icmp eq ptr %i.ca, %i.r
  br i1 %.not199, label %._crit_edge233, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit70
  %.sroa.0180.0229 = phi ptr [ %i.mn, %_ZN4llvm9BitVectorD2Ev.exit70 ], [ %i.bx, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !559, !nonnull !130, !align !131
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1568
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !387 ; 6 uses
  %i.ce = load i8, ptr %i.ab, align 4, !tbaa !135, !range !388, !noundef !130
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.aa, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cg = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cd, ptr nonnull @.str.7, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cg to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.aa, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.cg, %bb.d ] ; 5 uses
  %i.ch = load i16, ptr %i.ac, align 8, !tbaa !278 ; 4 uses
  %i.ci = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.cd, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0180.0229, i32 noundef %.0.i.i) #18, !noalias !1174
  br i1 %i.ci, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0180.0229, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !340, !noalias !1174 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ck, -1         ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0180.0229, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !339, !noalias !1174 ; 4 uses
  %i.cn = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !392, !noalias !1174
  %i.cq = icmp eq i8 %i.cp, 6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1174
  %i.ct = icmp eq ptr %i.cs, null
  %i.cu = select i1 %i.cq, i1 %i.ct, i1 false
  br i1 %i.cu, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cn, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.cv = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !392, !noalias !1174
  %i.cy = icmp eq i8 %i.cx, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !1174
  %i.db = icmp eq ptr %i.da, null
  %i.dc = select i1 %i.cy, i1 %i.db, i1 false
  br i1 %i.dc, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.dd = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.dd, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ck, %.01318.i.i.i.lcssa.i.i.i
  %i.de = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.de, %i.ck
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ck to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !355, !noalias !1174 ; 2 uses
  %i.dj = lshr i64 %i.di, 56
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.dk
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.df, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %indvars.iv.next.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !355, !noalias !1174 ; 2 uses
  %i.do = lshr i64 %i.dn, 56
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %.not.i.i.i.i104 = icmp eq i32 %.0.i.i, %i.dp
  br i1 %.not.i.i.i.i104, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.di, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.dn, %.critedge.i.i.i.i ]
  %i.dq = shl i64 %.lcssa.i.i.i, 8
  %i.dr = ashr exact i64 %i.dq, 8
  %i.ds = add nuw nsw i64 %i.dr, 8
  %i.dt = inttoptr i64 %i.ds to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  store ptr %i.ad, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ae, align 8, !tbaa !340
  store i32 6, ptr %i.af, align 4, !tbaa !359
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.dw, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !395
  %i.dz = icmp eq i16 %i.ch, %i.dy
  br i1 %i.dz, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.eb = zext i16 %i.ch to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !396 ; 2 uses
  %i.ee = urem i64 %i.eb, %i.ed                   ; 2 uses
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !397
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !337 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !395
  %i.el = icmp eq i16 %i.ch, %i.ek
  br i1 %i.el, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i ], [ %i.ei, %bb.h ]
  %i.em = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !395 ; 2 uses
  %i.ep = zext i16 %i.eo to i64
  %i.eq = urem i64 %i.ep, %i.ed
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.eq, %i.ee
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.er = icmp eq i16 %i.ch, %i.eo
  br i1 %i.er, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.ei, %bb.h ], [ %i.em, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !408
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = add i64 %i.eu, 15
  %i.ew = and i64 %i.ev, -16                      ; 2 uses
  %i.ex = add i64 %i.ew, 80                       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !409
  %i.fa = icmp ult i64 %i.ex, %i.ez
  br i1 %i.fa, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fb = inttoptr i64 %i.ex to ptr
  store ptr %i.fb, ptr %i.es, align 8, !tbaa !408
  %i.fc = inttoptr i64 %i.ew to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.es, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.fe = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fc, %bb.i ], [ %i.fd, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !339
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.fh, align 8, !tbaa !340
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.fi, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.fe, 0
  %i.fj = icmp eq ptr %i.ff, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fj
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fk = icmp ugt i32 %i.fe, 6
  br i1 %i.fk, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fl = zext i32 %i.fe to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.ff, ptr noundef nonnull %i.fg, i64 noundef %i.fl, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i116 = load ptr, ptr %i.ff, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.fm = phi ptr [ %.pre.i.i.i116, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fg, %bb.k ]
  %i.fn = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fe, %bb.k ]
  %i.fo = zext i32 %i.fn to i64
  %i.fp = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 8 %i.fp, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fe, ptr %i.fh, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fr = load i32, ptr %i.ag, align 8, !tbaa !384
  store i32 %i.fr, ptr %i.fq, align 8, !tbaa !384
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.fu, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.fv = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !412 ; 2 uses
  %i.fy = urem i64 %i.fv, %i.fx                   ; 5 uses
  %i.fz = load ptr, ptr %i.fs, align 8, !tbaa !413
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i122, label %.critedge.i124, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.gc, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i127 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i127, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !415
  %i.gf = icmp eq ptr %.0.i.i.i.i, %i.ge
  br i1 %i.gf, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.gg = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !412
  %i.gj = urem i64 %i.gg, %i.gi
end_hunk_9
begin_hunk_10_@_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE_clES8_:bb.a
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !559, !nonnull !130, !align !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1192, !nonnull !130, !align !131 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !495
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1192, !nonnull !130, !align !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !468, !noalias !1194
  %.not.not.i.i.i.i5 = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.s, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !1194 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1194
  %i.v = icmp eq ptr %2, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !26

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = ptrtoint ptr %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !280, !noalias !1194 ; 2 uses
  %i.aa = urem i64 %i.x, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !279, !noalias !1194
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345, !noalias !1194 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !337, !noalias !1194 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !342, !noalias !1194
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq ptr %2, %i.al
  br i1 %i.ai, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !24

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !1194 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342, !noalias !1194 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !24

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !1194
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8, !alias.scope !1194
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !1194
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ao, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !497, !alias.scope !1194
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !alias.scope !1194
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8, !alias.scope !1194
  store ptr %i.as, ptr %4, align 8, !tbaa !495, !alias.scope !1194
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.aw = phi ptr [ %i.p, %.loopexit.i.i12 ], [ %i.p, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !495
  %i.ay = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !559, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.7, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1198
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1198
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1198
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1198
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1198
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1198 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1198 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1198
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1198
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1198
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1198
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1198 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1198 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1198
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1198
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !1198
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_16ReachingDefOrUseILb1EEENS0_9BitVectorELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_16ReachingDefOrUseILb1EEENS0_9BitVectorELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_16ReachingDefOrUseILb1EEENS0_9BitVectorELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb1EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb1EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb1EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !564
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb1EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb1EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_16ReachingDefOrUseILb1EEENS0_9BitVectorELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1204   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1205, !nonnull !130, !align !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !1208
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1208 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1208
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !1208 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !1208
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1208 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1208 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1208
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1208 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1208 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !1208
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !1208
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1208
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !497, !alias.scope !1208
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !1208
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !1208
  store ptr %i.ag, ptr %2, align 8, !tbaa !495, !alias.scope !1208
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit: ; preds = %.loopexit.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !495
  %i.al = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %i.ak) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16ReachingDefOrUseILb1EE11computeNextERKNS_6MCInstERKNS_9BitVectorE(ptr dead_on_unwind noalias writable sret(%"class.llvm::BitVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(220) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(68) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !339
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEv:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge243:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.ak, align 8, !tbaa !367
  %i.am = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !368
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !367
  %i.ao = add i64 %i.an, -1
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap ; 3 uses
  %i.ar = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !369
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !370
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !371
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 512 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !372
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !370
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !371
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.au, ptr %i.az, align 8, !tbaa !372
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !373
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !582, !nonnull !130, !align !131
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !339, !alias.scope !1322
  store i32 0, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340, !alias.scope !1322
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bc, align 4, !tbaa !359, !alias.scope !1322
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 232 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !376, !alias.scope !1322
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 216
  store i64 0, ptr %i.bf, align 8, !tbaa !377, !alias.scope !1322
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i64 40, ptr %i.bg, align 8, !tbaa !378, !alias.scope !1322
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1288
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !339
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !342
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE4initES8_(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef %i.bj)
  %i.bk = load i32, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %._crit_edge247, label %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit

_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit: ; preds = %._crit_edge243
  %i.bl = load ptr, ptr %8, align 8, !tbaa !339
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !380 ; 2 uses
  %.not210244 = icmp eq ptr %i.bp, null
  br i1 %.not210244, label %._crit_edge247, label %.lr.ph246

bb.b:                                             ; preds = %.lr.ph242, %._crit_edge
  %.sroa.0194.0241 = phi ptr [ %i.m, %.lr.ph242 ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0194.0241, align 8, !tbaa !342 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !342
  %i.br = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !585, !noalias !1323
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = add i32 %i.bt, 63                       ; 2 uses
  %i.bv = lshr i32 %i.bu, 6                       ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !339, !alias.scope !1323
  store i32 6, ptr %i.w, align 4, !tbaa !359, !alias.scope !1323
  %i.bx = icmp ugt i32 %i.bu, 447
  br i1 %i.bx, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.b
  store i32 0, ptr %i.v, align 8, !tbaa !340, !alias.scope !1323
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.u, i64 noundef %i.bw, i64 noundef 8) #18
  %i.by = load ptr, ptr %4, align 8, !tbaa !339, !alias.scope !1323
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4bolt16ReachingDefOrUseILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.by, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !354
  br label %_ZN4llvm4bolt16ReachingDefOrUseILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt16ReachingDefOrUseILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i
  store i32 %i.bv, ptr %i.v, align 8, !tbaa !340, !alias.scope !1323
  store i32 %i.bt, ptr %i.x, align 8, !tbaa !384, !alias.scope !1323
  %i.bz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.br, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !384
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !384
  %i.cc = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.u
  br i1 %i.cd, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt16ReachingDefOrUseILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit
  call void @free(ptr noundef %i.cc) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm4bolt16ReachingDefOrUseILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !344 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !344 ; 2 uses
  %.not217238 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not217238, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit70, %_ZN4llvm9BitVectorD2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0194.0241, i64 8 ; 2 uses
  %.not209 = icmp eq ptr %i.ch, %i.q
  br i1 %.not209, label %._crit_edge243, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit70
  %.sroa.0190.0239 = phi ptr [ %i.mu, %_ZN4llvm9BitVectorD2Ev.exit70 ], [ %i.ce, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !583, !nonnull !130, !align !131
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1568
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !387 ; 6 uses
  %i.cl = load i8, ptr %i.aa, align 4, !tbaa !135, !range !388, !noundef !130
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.z, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cn = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr nonnull @.str.9, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cn to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.z, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.cn, %bb.d ] ; 5 uses
  %i.co = load i16, ptr %i.ab, align 8, !tbaa !290 ; 4 uses
  %i.cp = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0190.0239, i32 noundef %.0.i.i) #18, !noalias !1324
  br i1 %i.cp, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !340, !noalias !1324 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.cr, -1         ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !339, !noalias !1324 ; 4 uses
  %i.cu = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !392, !noalias !1324
  %i.cx = icmp eq i8 %i.cw, 6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !1324
  %i.da = icmp eq ptr %i.cz, null
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cu, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dc = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !392, !noalias !1324
  %i.df = icmp eq i8 %i.de, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !1324
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = select i1 %i.df, i1 %i.di, i1 false
  br i1 %i.dj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.dk, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.cr, %.01318.i.i.i.lcssa.i.i.i
  %i.dl = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.dl, %i.cr
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.cr to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !355, !noalias !1324 ; 2 uses
  %i.dq = lshr i64 %i.dp, 56
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.dr
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.dm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !355, !noalias !1324 ; 2 uses
  %i.dv = lshr i64 %i.du, 56
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %.not.i.i.i.i112 = icmp eq i32 %.0.i.i, %i.dw
  br i1 %.not.i.i.i.i112, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.dp, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.du, %.critedge.i.i.i.i ]
  %i.dx = shl i64 %.lcssa.i.i.i, 8
  %i.dy = ashr exact i64 %i.dx, 8
  %i.dz = add nuw nsw i64 %i.dy, 8
  %i.ea = inttoptr i64 %i.dz to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  store ptr %i.ac, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ad, align 8, !tbaa !340
  store i32 6, ptr %i.ae, align 4, !tbaa !359
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.ed, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !395
  %i.eg = icmp eq i16 %i.co, %i.ef
  br i1 %i.eg, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ei = zext i16 %i.co to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !396 ; 2 uses
  %i.el = urem i64 %i.ei, %i.ek                   ; 2 uses
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !397
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !337 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !395
  %i.es = icmp eq i16 %i.co, %i.er
  br i1 %i.es, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i ], [ %i.ep, %bb.h ]
  %i.et = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !395 ; 2 uses
  %i.ew = zext i16 %i.ev to i64
  %i.ex = urem i64 %i.ew, %i.ek
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ex, %i.el
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.ey = icmp eq i16 %i.co, %i.ev
  br i1 %i.ey, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.ep, %bb.h ], [ %i.et, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !408
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = add i64 %i.fb, 15
  %i.fd = and i64 %i.fc, -16                      ; 2 uses
  %i.fe = add i64 %i.fd, 80                       ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !409
  %i.fh = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fi = inttoptr i64 %i.fe to ptr
  store ptr %i.fi, ptr %i.ez, align 8, !tbaa !408
  %i.fj = inttoptr i64 %i.fd to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fk = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.fl = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fj, %bb.i ], [ %i.fk, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !339
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.fo, align 8, !tbaa !340
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.fp, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.fl, 0
  %i.fq = icmp eq ptr %i.fm, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fq
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fr = icmp ugt i32 %i.fl, 6
  br i1 %i.fr, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fs = zext i32 %i.fl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.fm, ptr noundef nonnull %i.fn, i64 noundef %i.fs, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i124 = load ptr, ptr %i.fm, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.ft = phi ptr [ %.pre.i.i.i124, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fn, %bb.k ]
  %i.fu = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fl, %bb.k ]
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 8 %i.fw, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fl, ptr %i.fo, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fy = load i32, ptr %i.af, align 8, !tbaa !384
  store i32 %i.fy, ptr %i.fx, align 8, !tbaa !384
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.gb, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gc = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !412 ; 2 uses
  %i.gf = urem i64 %i.gc, %i.ge                   ; 5 uses
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !413
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i130, label %.critedge.i132, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.gj, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i135 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !415
  %i.gm = icmp eq ptr %.0.i.i.i.i, %i.gl
  br i1 %i.gm, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.gn = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !412
  %i.gq = urem i64 %i.gn, %i.gp
end_hunk_11
begin_hunk_12_@_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE_clES8_:bb.a
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !583, !nonnull !130, !align !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1346, !nonnull !130, !align !131 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !495
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1346, !nonnull !130, !align !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !468, !noalias !1348
  %.not.not.i.i.i.i5 = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.s, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !1348 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1348
  %i.v = icmp eq ptr %2, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !26

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = ptrtoint ptr %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !280, !noalias !1348 ; 2 uses
  %i.aa = urem i64 %i.x, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !279, !noalias !1348
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345, !noalias !1348 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !337, !noalias !1348 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !342, !noalias !1348
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq ptr %2, %i.al
  br i1 %i.ai, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !24

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !1348 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342, !noalias !1348 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !24

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !1348
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8, !alias.scope !1348
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !1348
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ao, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !497, !alias.scope !1348
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !alias.scope !1348
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8, !alias.scope !1348
  store ptr %i.as, ptr %4, align 8, !tbaa !495, !alias.scope !1348
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.aw = phi ptr [ %i.p, %.loopexit.i.i12 ], [ %i.p, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !495
  %i.ay = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !583, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.9, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1352
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1352
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1352
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1352
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1352
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1352 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1352 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1352
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1352
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1352
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1352
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1352 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1352 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1352
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1352
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !1352
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_16ReachingDefOrUseILb0EEENS0_9BitVectorELb1ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_16ReachingDefOrUseILb0EEENS0_9BitVectorELb1ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_16ReachingDefOrUseILb0EEENS0_9BitVectorELb1ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb0EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb0EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb0EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !588
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb0EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_16ReachingDefOrUseILb0EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_16ReachingDefOrUseILb0EEENS0_9BitVectorELb1ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1358   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1359, !nonnull !130, !align !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !1362
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1362 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1362
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !1362 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !1362
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1362 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1362 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1362
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1362 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1362 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !1362
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !1362
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1362
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !497, !alias.scope !1362
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !1362
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !1362
  store ptr %i.ag, ptr %2, align 8, !tbaa !495, !alias.scope !1362
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZZN4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit: ; preds = %.loopexit.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !495
  %i.al = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %i.ak) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16ReachingDefOrUseILb0EE11computeNextERKNS_6MCInstERKNS_9BitVectorE(ptr dead_on_unwind noalias writable sret(%"class.llvm::BitVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(220) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(68) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !339
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEv:bb.a
bb.a:
  %1 = alloca %"class.llvm::BitVector", align 8   ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 7 uses
  %3 = alloca %"class.std::function", align 8     ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::BitVector", align 8   ; 7 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 14 uses
  %6 = alloca %"class.std::queue", align 8        ; 20 uses
  %7 = alloca %"class.llvm::DenseSet.712", align 8 ; 14 uses
  %8 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 15 uses
  %10 = alloca %"class.std::function", align 8    ; 6 uses
  %11 = alloca %"class.std::function", align 8    ; 6 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %class.anon.924, align 8           ; 7 uses
  tail call void @_ZN4llvm4bolt17DominatorAnalysisILb0EE9preflightEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !594, !nonnull !130, !align !131 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !339  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1248
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.cz, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge228:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.aj, align 8, !tbaa !367
  %i.al = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !368
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !367
  %i.an = add i64 %i.am, -1
  %i.ao = lshr i64 %i.an, 1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao ; 3 uses
  %i.aq = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !369
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !370
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !371
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 512 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !372
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !370
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !371
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !372
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !373
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !594, !nonnull !130, !align !131
  store ptr %i.az, ptr %i.d, align 8, !tbaa !265
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ba, ptr %8, align 8, !tbaa !339
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !340
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bc, align 4, !tbaa !359
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_4bolt14BinaryFunctionENS_11GraphTraitsIS3_EEE10InitializeERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bd = load ptr, ptr %8, align 8, !tbaa !339, !noalias !1440 ; 3 uses
  %i.be = load i32, ptr %i.bb, align 8, !tbaa !340, !noalias !1440 ; 2 uses
  %.not195229 = icmp eq i32 %i.be, 0
  br i1 %.not195229, label %._crit_edge233, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %._crit_edge228
  %i.bf = zext i32 %i.be to i64
  %.idx263 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx263
  br label %.lr.ph232

bb.b:                                             ; preds = %.lr.ph227, %._crit_edge
  %.sroa.0179.0226 = phi ptr [ %i.n, %.lr.ph227 ], [ %i.br, %._crit_edge ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.0179.0226, align 8, !tbaa !342 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !342
  %i.bi = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4llvm4bolt17DominatorAnalysisILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.bh)
  %i.bj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.bi, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.bk = load i32, ptr %i.u, align 8, !tbaa !384
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !384
  %i.bm = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.v
  br i1 %i.bn, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.bm) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !344 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !344 ; 2 uses
  %.not202223 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not202223, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit64, %_ZN4llvm9BitVectorD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0179.0226, i64 8 ; 2 uses
  %.not194 = icmp eq ptr %i.br, %i.r
  br i1 %.not194, label %._crit_edge228, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit64
  %.sroa.0175.0224 = phi ptr [ %i.mm, %_ZN4llvm9BitVectorD2Ev.exit64 ], [ %i.bo, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !595, !nonnull !130, !align !131
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1568
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !387 ; 6 uses
  %i.bv = load i8, ptr %i.y, align 4, !tbaa !135, !range !388, !noundef !130
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.bx = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bu, ptr nonnull @.str.10, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bx to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.x, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.bx, %bb.d ] ; 5 uses
  %i.by = load i16, ptr %i.z, align 8, !tbaa !318 ; 4 uses
  %i.bz = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bu, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0175.0224, i32 noundef %.0.i.i) #18, !noalias !1441
  br i1 %i.bz, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0175.0224, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !340, !noalias !1441 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.cb, -1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0175.0224, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !339, !noalias !1441 ; 4 uses
  %i.ce = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !392, !noalias !1441
  %i.ch = icmp eq i8 %i.cg, 6
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1441
  %i.ck = icmp eq ptr %i.cj, null
  %i.cl = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %i.cl, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ce, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.cm = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !392, !noalias !1441
  %i.cp = icmp eq i8 %i.co, 6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !1441
  %i.cs = icmp eq ptr %i.cr, null
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %i.ct, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.cu = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.cu, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.cb, %.01318.i.i.i.lcssa.i.i.i
  %i.cv = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.cv, %i.cb
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.cb to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !355, !noalias !1441 ; 2 uses
  %i.da = lshr i64 %i.cz, 56
  %i.db = trunc nuw nsw i64 %i.da to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.db
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.cw, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !355, !noalias !1441 ; 2 uses
  %i.df = lshr i64 %i.de, 56
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %.not.i.i.i.i99 = icmp eq i32 %.0.i.i, %i.dg
  br i1 %.not.i.i.i.i99, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.cz, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.de, %.critedge.i.i.i.i ]
  %i.dh = shl i64 %.lcssa.i.i.i, 8
  %i.di = ashr exact i64 %i.dh, 8
  %i.dj = add nuw nsw i64 %i.di, 8
  %i.dk = inttoptr i64 %i.dj to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false)
  store ptr %i.aa, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ab, align 8, !tbaa !340
  store i32 6, ptr %i.ac, align 4, !tbaa !359
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.dn, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !395
  %i.dq = icmp eq i16 %i.by, %i.dp
  br i1 %i.dq, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ds = zext i16 %i.by to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !396 ; 2 uses
  %i.dv = urem i64 %i.ds, %i.du                   ; 2 uses
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !397
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !337 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !395
  %i.ec = icmp eq i16 %i.by, %i.eb
  br i1 %i.ec, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i ], [ %i.dz, %bb.h ]
  %i.ed = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !395 ; 2 uses
  %i.eg = zext i16 %i.ef to i64
  %i.eh = urem i64 %i.eg, %i.du
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.eh, %i.dv
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.ei = icmp eq i16 %i.by, %i.ef
  br i1 %i.ei, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.dz, %bb.h ], [ %i.ed, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !408
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = add i64 %i.el, 15
  %i.en = and i64 %i.em, -16                      ; 2 uses
  %i.eo = add i64 %i.en, 80                       ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !409
  %i.er = icmp ult i64 %i.eo, %i.eq
  br i1 %i.er, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.es = inttoptr i64 %i.eo to ptr
  store ptr %i.es, ptr %i.ej, align 8, !tbaa !408
  %i.et = inttoptr i64 %i.en to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.eu = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ej, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.ev = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.et, %bb.i ], [ %i.eu, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !339
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.ey, align 8, !tbaa !340
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.ez, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.ev, 0
  %i.fa = icmp eq ptr %i.ew, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fa
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fb = icmp ugt i32 %i.ev, 6
  br i1 %i.fb, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fc = zext i32 %i.ev to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.ew, ptr noundef nonnull %i.ex, i64 noundef %i.fc, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i111 = load ptr, ptr %i.ew, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.fd = phi ptr [ %.pre.i.i.i111, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.ex, %bb.k ]
  %i.fe = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.ev, %bb.k ]
  %i.ff = zext i32 %i.fe to i64
  %i.fg = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.ff, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 8 %i.fg, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.ev, ptr %i.ey, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fi = load i32, ptr %i.ad, align 8, !tbaa !384
  store i32 %i.fi, ptr %i.fh, align 8, !tbaa !384
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.fl, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.fm = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !412 ; 2 uses
  %i.fp = urem i64 %i.fm, %i.fo                   ; 5 uses
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !413
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i117, label %.critedge.i119, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.ft, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i122 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i122, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !415
  %i.fw = icmp eq ptr %.0.i.i.i.i, %i.fv
  br i1 %i.fw, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.fx = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !412
  %i.ga = urem i64 %i.fx, %i.fz
end_hunk_13
begin_hunk_14_@_ZZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE_clES8_:bb.a
  %i.ey = add i32 %i.eb, -1
  %i.ez = icmp ult i32 %i.ey, %.sroa.speculated.i.i
  %or.cond94 = or i1 %min.iters.check52, %i.ez
  br i1 %or.cond94, label %scalar.ph51.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph18.i.i
  %n.vec54 = and i32 %i.ex, -4                    ; 3 uses
  %i.fa = add i32 %.sroa.speculated.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i32 [ 0, %vector.ph53 ], [ %index.next57, %vector.body55 ] ; 2 uses
  %i.fb = add i32 %.sroa.speculated.i.i, %index56
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x i64> zeroinitializer, ptr %i.fd, align 8, !tbaa !354
  store <2 x i64> zeroinitializer, ptr %i.fe, align 8, !tbaa !354
  %index.next57 = add nuw i32 %index56, 4         ; 2 uses
  %i.ff = icmp eq i32 %index.next57, %n.vec54
  br i1 %i.ff, label %middle.block58, label %vector.body55, !llvm.loop !1475

middle.block58:                                   ; preds = %vector.body55
  %cmp.n59 = icmp eq i32 %i.ex, %n.vec54
  br i1 %cmp.n59, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE12doConfluenceERNS_9BitVectorERKS3_.exit, label %scalar.ph51.preheader

scalar.ph51.preheader:                            ; preds = %.lr.ph18.i.i, %middle.block58
  %.117.i.i.ph = phi i32 [ %.sroa.speculated.i.i, %.lr.ph18.i.i ], [ %i.fa, %middle.block58 ] ; 4 uses
  %i.fg = sub i32 %i.eb, %.117.i.i.ph
  %xtraiter100 = and i32 %i.fg, 7                 ; 2 uses
  %lcmp.mod101.not = icmp eq i32 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %scalar.ph51.prol.loopexit, label %scalar.ph51.prol

scalar.ph51.prol:                                 ; preds = %scalar.ph51.preheader, %scalar.ph51.prol
  %.117.i.i.prol = phi i32 [ %i.fj, %scalar.ph51.prol ], [ %.117.i.i.ph, %scalar.ph51.preheader ] ; 2 uses
  %prol.iter102 = phi i32 [ %prol.iter102.next, %scalar.ph51.prol ], [ 0, %scalar.ph51.preheader ]
  %i.fh = zext i32 %.117.i.i.prol to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fh
  store i64 0, ptr %i.fi, align 8, !tbaa !354
  %i.fj = add i32 %.117.i.i.prol, 1               ; 2 uses
  %prol.iter102.next = add i32 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i32 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %scalar.ph51.prol.loopexit, label %scalar.ph51.prol, !llvm.loop !1476

scalar.ph51.prol.loopexit:                        ; preds = %scalar.ph51.prol, %scalar.ph51.preheader
  %.117.i.i.unr = phi i32 [ %.117.i.i.ph, %scalar.ph51.preheader ], [ %i.fj, %scalar.ph51.prol ]
  %i.fk = sub i32 %.117.i.i.ph, %i.eb
  %i.fl = icmp ugt i32 %i.fk, -8
  br i1 %i.fl, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE12doConfluenceERNS_9BitVectorERKS3_.exit, label %scalar.ph51

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i.i
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !354
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !354
  %i.fq = and i64 %i.fp, %i.fn
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !354
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !354
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !354
  %i.fv = and i64 %i.fu, %i.fs
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !354
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i.1
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !354
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !354
  %i.ga = and i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !354
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i.2
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !354
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !354
  %i.gf = and i64 %i.ge, %i.gc
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !354
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.eg
  br i1 %.not.i.i.3, label %.preheader.i.i, label %scalar.ph, !llvm.loop !1477

scalar.ph51:                                      ; preds = %scalar.ph51.prol.loopexit, %scalar.ph51
  %.117.i.i = phi i32 [ %i.hd, %scalar.ph51 ], [ %.117.i.i.unr, %scalar.ph51.prol.loopexit ] ; 9 uses
  %i.gg = zext i32 %.117.i.i to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gg
  store i64 0, ptr %i.gh, align 8, !tbaa !354
  %i.gi = add i32 %.117.i.i, 1
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gj
  store i64 0, ptr %i.gk, align 8, !tbaa !354
  %i.gl = add i32 %.117.i.i, 2
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gm
  store i64 0, ptr %i.gn, align 8, !tbaa !354
  %i.go = add i32 %.117.i.i, 3
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gp
  store i64 0, ptr %i.gq, align 8, !tbaa !354
  %i.gr = add i32 %.117.i.i, 4
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gs
  store i64 0, ptr %i.gt, align 8, !tbaa !354
  %i.gu = add i32 %.117.i.i, 5
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gv
  store i64 0, ptr %i.gw, align 8, !tbaa !354
  %i.gx = add i32 %.117.i.i, 6
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gy
  store i64 0, ptr %i.gz, align 8, !tbaa !354
  %i.ha = add i32 %.117.i.i, 7
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.hb
  store i64 0, ptr %i.hc, align 8, !tbaa !354
  %i.hd = add i32 %.117.i.i, 8                    ; 2 uses
  %.not9.i.i.7 = icmp eq i32 %i.hd, %i.eb
  br i1 %.not9.i.i.7, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE12doConfluenceERNS_9BitVectorERKS3_.exit, label %scalar.ph51, !llvm.loop !1478

_ZN4llvm4bolt17DominatorAnalysisILb0EE12doConfluenceERNS_9BitVectorERKS3_.exit: ; preds = %scalar.ph51.prol.loopexit, %scalar.ph51, %middle.block58, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb0EE12doConfluenceERNS_9BitVectorERKS3_.exit, %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18doConfluenceWithLPERS4_RKS4_RKNS_6MCInstE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !595, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.10, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1491
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1491
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1491
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1491
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1491
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1491 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1491 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1491
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1491
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1491
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1491
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1491 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1491 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1491
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1491
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !1491
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_17DominatorAnalysisILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_17DominatorAnalysisILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_17DominatorAnalysisILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !600
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_17DominatorAnalysisILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 8 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1506   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1507, !nonnull !130, !align !131 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !1510
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1510 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1510
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !1510 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !1510
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1510 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1510 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1510
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1510 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1510 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !alias.scope !1510
  %i.ae = or i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 8, !alias.scope !1510
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1510
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !alias.scope !1510
  %i.ai = and i8 %i.ah, -2
  store i8 %i.ai, ptr %i.ag, align 8, !alias.scope !1510
  store ptr %i.af, ptr %2, align 8, !tbaa !495, !alias.scope !1510
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i: ; preds = %bb.j, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %.loopexit.i.i.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !495   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !340 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.an, i32 %i.al) ; 8 uses
  %.not14.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not14.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !339 ; 8 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !339 ; 8 uses
  %i.aq = zext i32 %.sroa.speculated.i.i.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !604, !nonnull !130, !align !131
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !339, !alias.scope !1589
  store i32 0, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340, !alias.scope !1589
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bc, align 4, !tbaa !359, !alias.scope !1589
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 232 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !376, !alias.scope !1589
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 216
  store i64 0, ptr %i.bf, align 8, !tbaa !377, !alias.scope !1589
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i64 40, ptr %i.bg, align 8, !tbaa !378, !alias.scope !1589
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1288
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !339
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !342
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE4initES8_(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef %i.bj)
  %i.bk = load i32, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %._crit_edge251, label %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit

_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit: ; preds = %._crit_edge247
  %i.bl = load ptr, ptr %8, align 8, !tbaa !339
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !380 ; 2 uses
  %.not214248 = icmp eq ptr %i.bp, null
  br i1 %.not214248, label %._crit_edge251, label %.lr.ph250

bb.b:                                             ; preds = %.lr.ph246, %._crit_edge
  %.sroa.0198.0245 = phi ptr [ %i.m, %.lr.ph246 ], [ %i.cu, %._crit_edge ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0198.0245, align 8, !tbaa !342 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !342
  %i.br = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !340, !noalias !1590
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = load i64, ptr %i.t, align 8, !tbaa !607, !noalias !1590 ; 2 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 4 uses
  %i.bx = add i32 %i.bw, 63                       ; 2 uses
  %i.by = lshr i32 %i.bx, 6                       ; 5 uses
  %i.bz = zext nneg i32 %i.by to i64              ; 5 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !339, !alias.scope !1590
  store i32 6, ptr %i.w, align 4, !tbaa !359, !alias.scope !1590
  %i.ca = icmp ugt i32 %i.bx, 447                 ; 2 uses
  br i1 %i.bu, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.ca, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.c
  store i32 0, ptr %i.v, align 8, !tbaa !340, !alias.scope !1590
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.u, i64 noundef %i.bz, i64 noundef 8) #18
  %i.cb = load ptr, ptr %4, align 8, !tbaa !339, !alias.scope !1590
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit.i, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.cb, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !354
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i

_ZN4llvm9BitVectorC2Ejb.exit.i:                   ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  store i32 %i.by, ptr %i.v, align 8, !tbaa !340, !alias.scope !1590
  store i32 %i.bw, ptr %i.x, align 8, !tbaa !384, !alias.scope !1590
  br label %_ZN4llvm4bolt17DominatorAnalysisILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.ca, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i2.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit.i: ; preds = %bb.d
  store i32 0, ptr %i.v, align 8, !tbaa !340, !alias.scope !1590
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.u, i64 noundef %i.bz, i64 noundef 8) #18
  %i.cc = load ptr, ptr %4, align 8, !tbaa !339, !alias.scope !1590
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i2.i:     ; preds = %bb.d
  %.not.i.i3.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i3.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i2.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit.i
  %.sink17.i = phi ptr [ %i.cc, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit.i ], [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i2.i ] ; 2 uses
  %.idx.i.i.i.i.i.i.i4.i = shl nuw nsw i64 %i.bz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink17.i, i8 -1, i64 %.idx.i.i.i.i.i.i.i4.i, i1 false), !tbaa !354
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i:     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i2.i
  %i.cd = phi ptr [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i2.i ], [ %.sink17.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split.i ]
  store i32 %i.by, ptr %i.v, align 8, !tbaa !340, !alias.scope !1590
  store i32 %i.bw, ptr %i.x, align 8, !tbaa !384, !alias.scope !1590
  %i.ce = and i32 %i.bw, 63
  %.not.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4bolt17DominatorAnalysisILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i
  %i.cf = and i64 %i.bv, 63
  %i.cg = shl nsw i64 -1, %i.cf
  %i.ch = xor i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bz
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !354
  %i.cl = and i64 %i.ck, %i.ch
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !354
  br label %_ZN4llvm4bolt17DominatorAnalysisILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt17DominatorAnalysisILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit: ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, %bb.e
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.br, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.cn = load i32, ptr %i.x, align 8, !tbaa !384
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i32 %i.cn, ptr %i.co, align 8, !tbaa !384
  %i.cp = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.u
  br i1 %i.cq, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit
  call void @free(ptr noundef %i.cp) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cr = load ptr, ptr %i.bq, align 8, !tbaa !344 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !344 ; 2 uses
  %.not221242 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not221242, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit73, %_ZN4llvm9BitVectorD2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0198.0245, i64 8 ; 2 uses
  %.not213 = icmp eq ptr %i.cu, %i.q
  br i1 %.not213, label %._crit_edge247, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit73
  %.sroa.0194.0243 = phi ptr [ %i.np, %_ZN4llvm9BitVectorD2Ev.exit73 ], [ %i.cr, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !605, !nonnull !130, !align !131
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1568
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !387 ; 6 uses
  %i.cy = load i8, ptr %i.aa, align 4, !tbaa !135, !range !388, !noundef !130
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.z, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.g:                                             ; preds = %.lr.ph
  %i.da = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cx, ptr nonnull @.str.11, i64 21) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.da to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.z, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.g
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.da, %bb.g ] ; 5 uses
  %i.db = load i16, ptr %i.ab, align 8, !tbaa !321 ; 4 uses
  %i.dc = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.cx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0194.0243, i32 noundef %.0.i.i) #18, !noalias !1591
  br i1 %i.dc, label %bb.h, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.h:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0194.0243, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !340, !noalias !1591 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.de, -1         ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0194.0243, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !339, !noalias !1591 ; 4 uses
  %i.dh = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !392, !noalias !1591
  %i.dk = icmp eq i8 %i.dj, 6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !1591
  %i.dn = icmp eq ptr %i.dm, null
  %i.do = select i1 %i.dk, i1 %i.dn, i1 false
  br i1 %i.do, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.h, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.dh, %bb.h ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dp = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !392, !noalias !1591
  %i.ds = icmp eq i8 %i.dr, 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !1591
  %i.dv = icmp eq ptr %i.du, null
  %i.dw = select i1 %i.ds, i1 %i.dv, i1 false
  br i1 %i.dw, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.dx = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.h
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.h ], [ %i.dx, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.de, %.01318.i.i.i.lcssa.i.i.i
  %i.dy = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.dy, %i.de
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.de to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !355, !noalias !1591 ; 2 uses
  %i.ed = lshr i64 %i.ec, 56
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.ee
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.dz, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !355, !noalias !1591 ; 2 uses
  %i.ei = lshr i64 %i.eh, 56
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %.not.i.i.i.i116 = icmp eq i32 %.0.i.i, %i.ej
  br i1 %.not.i.i.i.i116, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.ec, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.eh, %.critedge.i.i.i.i ]
  %i.ek = shl i64 %.lcssa.i.i.i, 8
  %i.el = ashr exact i64 %i.ek, 8
  %i.em = add nuw nsw i64 %i.el, 8
  %i.en = inttoptr i64 %i.em to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  store ptr %i.ac, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ad, align 8, !tbaa !340
  store i32 6, ptr %i.ae, align 4, !tbaa !359
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.not.i.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.eq, %bb.i ], [ %.sroa.06.0.i.i.i.i, %bb.j ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.es = load i16, ptr %i.er, align 2, !tbaa !395
  %i.et = icmp eq i16 %i.db, %i.es
  br i1 %i.et, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.j, !llvm.loop !14

bb.k:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.ev = zext i16 %i.db to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !396 ; 2 uses
  %i.ey = urem i64 %i.ev, %i.ex                   ; 2 uses
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !397
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ey
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !337 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !395
  %i.ff = icmp eq i16 %i.db, %i.fe
  br i1 %i.ff, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i ], [ %i.fc, %bb.k ]
  %i.fg = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !395 ; 2 uses
  %i.fj = zext i16 %i.fi to i64
  %i.fk = urem i64 %i.fj, %i.ex
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.fk, %i.ey
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.fl = icmp eq i16 %i.db, %i.fi
  br i1 %i.fl, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j, %bb.k
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.j ], [ %i.fc, %bb.k ], [ %i.fg, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !408
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = add i64 %i.fo, 15
  %i.fq = and i64 %i.fp, -16                      ; 2 uses
  %i.fr = add i64 %i.fq, 80                       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !409
  %i.fu = icmp ult i64 %i.fr, %i.ft
  br i1 %i.fu, label %bb.l, label %bb.m, !prof !360

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fv = inttoptr i64 %i.fr to ptr
  store ptr %i.fv, ptr %i.fm, align 8, !tbaa !408
  %i.fw = inttoptr i64 %i.fq to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.m:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fx = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.fm, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.m, %bb.l
  %i.fy = phi i32 [ 0, %bb.l ], [ %.pre, %bb.m ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fw, %bb.l ], [ %i.fx, %bb.m ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !339
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.gb, align 8, !tbaa !340
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.gc, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.fy, 0
  %i.gd = icmp eq ptr %i.fz, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.gd
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.n

bb.n:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.ge = icmp ugt i32 %i.fy, 6
  br i1 %i.ge, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.n
  %i.gf = zext i32 %i.fy to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.fz, ptr noundef nonnull %i.ga, i64 noundef %i.gf, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i128 = load ptr, ptr %i.fz, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.n
  %i.gg = phi ptr [ %.pre.i.i.i128, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.ga, %bb.n ]
  %i.gh = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fy, %bb.n ]
  %i.gi = zext i32 %i.gh to i64
  %i.gj = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.gi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 8 %i.gj, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fy, ptr %i.gb, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.gl = load i32, ptr %i.af, align 8, !tbaa !384
  store i32 %i.gl, ptr %i.gk, align 8, !tbaa !384
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.go, 0
  br i1 %.not.not.i, label %bb.o, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gp = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !412 ; 2 uses
  %i.gs = urem i64 %i.gp, %i.gr                   ; 5 uses
  %i.gt = load ptr, ptr %i.gm, align 8, !tbaa !413
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i134 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i134, label %.critedge.i136, label %bb.s

bb.o:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.025.0.in.i = phi ptr [ %i.gw, %bb.o ], [ %.sroa.025.0.i, %bb.q ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i139 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i139, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !415
  %i.gz = icmp eq ptr %.0.i.i.i.i, %i.gy
  br i1 %i.gz, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.p, !llvm.loop !16

bb.r:                                             ; preds = %bb.p
  %i.ha = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !412
  %i.hd = urem i64 %i.ha, %i.hc
end_hunk_15
begin_hunk_16_@_ZZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE_clES8_:bb.a
  %i.ey = add i32 %i.eb, -1
  %i.ez = icmp ult i32 %i.ey, %.sroa.speculated.i.i
  %or.cond94 = or i1 %min.iters.check52, %i.ez
  br i1 %or.cond94, label %scalar.ph51.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph18.i.i
  %n.vec54 = and i32 %i.ex, -4                    ; 3 uses
  %i.fa = add i32 %.sroa.speculated.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i32 [ 0, %vector.ph53 ], [ %index.next57, %vector.body55 ] ; 2 uses
  %i.fb = add i32 %.sroa.speculated.i.i, %index56
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x i64> zeroinitializer, ptr %i.fd, align 8, !tbaa !354
  store <2 x i64> zeroinitializer, ptr %i.fe, align 8, !tbaa !354
  %index.next57 = add nuw i32 %index56, 4         ; 2 uses
  %i.ff = icmp eq i32 %index.next57, %n.vec54
  br i1 %i.ff, label %middle.block58, label %vector.body55, !llvm.loop !1651

middle.block58:                                   ; preds = %vector.body55
  %cmp.n59 = icmp eq i32 %i.ex, %n.vec54
  br i1 %cmp.n59, label %_ZN4llvm4bolt17DominatorAnalysisILb1EE12doConfluenceERNS_9BitVectorERKS3_.exit, label %scalar.ph51.preheader

scalar.ph51.preheader:                            ; preds = %.lr.ph18.i.i, %middle.block58
  %.117.i.i.ph = phi i32 [ %.sroa.speculated.i.i, %.lr.ph18.i.i ], [ %i.fa, %middle.block58 ] ; 4 uses
  %i.fg = sub i32 %i.eb, %.117.i.i.ph
  %xtraiter100 = and i32 %i.fg, 7                 ; 2 uses
  %lcmp.mod101.not = icmp eq i32 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %scalar.ph51.prol.loopexit, label %scalar.ph51.prol

scalar.ph51.prol:                                 ; preds = %scalar.ph51.preheader, %scalar.ph51.prol
  %.117.i.i.prol = phi i32 [ %i.fj, %scalar.ph51.prol ], [ %.117.i.i.ph, %scalar.ph51.preheader ] ; 2 uses
  %prol.iter102 = phi i32 [ %prol.iter102.next, %scalar.ph51.prol ], [ 0, %scalar.ph51.preheader ]
  %i.fh = zext i32 %.117.i.i.prol to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fh
  store i64 0, ptr %i.fi, align 8, !tbaa !354
  %i.fj = add i32 %.117.i.i.prol, 1               ; 2 uses
  %prol.iter102.next = add i32 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i32 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %scalar.ph51.prol.loopexit, label %scalar.ph51.prol, !llvm.loop !1652

scalar.ph51.prol.loopexit:                        ; preds = %scalar.ph51.prol, %scalar.ph51.preheader
  %.117.i.i.unr = phi i32 [ %.117.i.i.ph, %scalar.ph51.preheader ], [ %i.fj, %scalar.ph51.prol ]
  %i.fk = sub i32 %.117.i.i.ph, %i.eb
  %i.fl = icmp ugt i32 %i.fk, -8
  br i1 %i.fl, label %_ZN4llvm4bolt17DominatorAnalysisILb1EE12doConfluenceERNS_9BitVectorERKS3_.exit, label %scalar.ph51

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i.i
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !354
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !354
  %i.fq = and i64 %i.fp, %i.fn
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !354
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !354
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !354
  %i.fv = and i64 %i.fu, %i.fs
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !354
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i.1
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !354
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !354
  %i.ga = and i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !354
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i.2
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !354
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !354
  %i.gf = and i64 %i.ge, %i.gc
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !354
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.eg
  br i1 %.not.i.i.3, label %.preheader.i.i, label %scalar.ph, !llvm.loop !1653

scalar.ph51:                                      ; preds = %scalar.ph51.prol.loopexit, %scalar.ph51
  %.117.i.i = phi i32 [ %i.hd, %scalar.ph51 ], [ %.117.i.i.unr, %scalar.ph51.prol.loopexit ] ; 9 uses
  %i.gg = zext i32 %.117.i.i to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gg
  store i64 0, ptr %i.gh, align 8, !tbaa !354
  %i.gi = add i32 %.117.i.i, 1
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gj
  store i64 0, ptr %i.gk, align 8, !tbaa !354
  %i.gl = add i32 %.117.i.i, 2
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gm
  store i64 0, ptr %i.gn, align 8, !tbaa !354
  %i.go = add i32 %.117.i.i, 3
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gp
  store i64 0, ptr %i.gq, align 8, !tbaa !354
  %i.gr = add i32 %.117.i.i, 4
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gs
  store i64 0, ptr %i.gt, align 8, !tbaa !354
  %i.gu = add i32 %.117.i.i, 5
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gv
  store i64 0, ptr %i.gw, align 8, !tbaa !354
  %i.gx = add i32 %.117.i.i, 6
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.gy
  store i64 0, ptr %i.gz, align 8, !tbaa !354
  %i.ha = add i32 %.117.i.i, 7
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.hb
  store i64 0, ptr %i.hc, align 8, !tbaa !354
  %i.hd = add i32 %.117.i.i, 8                    ; 2 uses
  %.not9.i.i.7 = icmp eq i32 %i.hd, %i.eb
  br i1 %.not9.i.i.7, label %_ZN4llvm4bolt17DominatorAnalysisILb1EE12doConfluenceERNS_9BitVectorERKS3_.exit, label %scalar.ph51, !llvm.loop !1654

_ZN4llvm4bolt17DominatorAnalysisILb1EE12doConfluenceERNS_9BitVectorERKS3_.exit: ; preds = %scalar.ph51.prol.loopexit, %scalar.ph51, %middle.block58, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb1EE12doConfluenceERNS_9BitVectorERKS3_.exit, %_ZN4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18doConfluenceWithLPERS4_RKS4_RKNS_6MCInstE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !605, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.11, i64 21) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1667
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1667
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1667
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1667
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1667
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1667 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1667 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1667
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1667
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1667
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1667
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1667 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1667 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1667
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1667
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !1667
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_17DominatorAnalysisILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_17DominatorAnalysisILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_17DominatorAnalysisILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !610
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17DominatorAnalysisILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_17DominatorAnalysisILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 8 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1682   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1683, !nonnull !130, !align !131 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !1686
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1686 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1686
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !1686 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !1686
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1686 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1686 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1686
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1686 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1686 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !alias.scope !1686
  %i.ae = or i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 8, !alias.scope !1686
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1686
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !alias.scope !1686
  %i.ai = and i8 %i.ah, -2
  store i8 %i.ai, ptr %i.ag, align 8, !alias.scope !1686
  store ptr %i.af, ptr %2, align 8, !tbaa !495, !alias.scope !1686
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i: ; preds = %bb.j, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %.loopexit.i.i.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !495   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !340 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.an, i32 %i.al) ; 8 uses
  %.not14.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not14.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit.i
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !339 ; 8 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !339 ; 8 uses
  %i.aq = zext i32 %.sroa.speculated.i.i.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEv:bb.a
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.cy, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge233:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.al, align 8, !tbaa !367
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !368
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !367
  %i.ap = add i64 %i.ao, -1
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq ; 3 uses
  %i.as = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !369
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !370
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.au, align 8, !tbaa !371
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 512 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !372
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !370
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.as, ptr %i.az, align 8, !tbaa !371
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !372
  store ptr %i.as, ptr %i.am, align 8, !tbaa !373
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !614, !nonnull !130, !align !131
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !265
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bc, ptr %8, align 8, !tbaa !339
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !340
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.be, align 4, !tbaa !359
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_4bolt14BinaryFunctionENS_11GraphTraitsIS3_EEE10InitializeERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bf = load ptr, ptr %8, align 8, !tbaa !339, !noalias !1731 ; 3 uses
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !340, !noalias !1731 ; 2 uses
  %.not200234 = icmp eq i32 %i.bg, 0
  br i1 %.not200234, label %._crit_edge238, label %.lr.ph237.preheader

.lr.ph237.preheader:                              ; preds = %._crit_edge233
  %i.bh = zext i32 %i.bg to i64
  %.idx268 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx268
  br label %.lr.ph237

bb.b:                                             ; preds = %.lr.ph232, %._crit_edge
  %.sroa.0184.0231 = phi ptr [ %i.n, %.lr.ph232 ], [ %i.ca, %._crit_edge ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.0184.0231, align 8, !tbaa !342 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !342
  %i.bk = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  %i.bl = load i64, ptr %i.u, align 8, !tbaa !617, !noalias !1732
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = add i32 %i.bm, 63                       ; 2 uses
  %i.bo = lshr i32 %i.bn, 6                       ; 3 uses
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !339, !alias.scope !1732
  store i32 6, ptr %i.x, align 4, !tbaa !359, !alias.scope !1732
  %i.bq = icmp ugt i32 %i.bn, 447
  br i1 %i.bq, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.b
  store i32 0, ptr %i.w, align 8, !tbaa !340, !alias.scope !1732
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.v, i64 noundef %i.bp, i64 noundef 8) #18
  %i.br = load ptr, ptr %4, align 8, !tbaa !339, !alias.scope !1732
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4bolt13ReachingInsnsILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.br, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.v, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !354
  br label %_ZN4llvm4bolt13ReachingInsnsILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt13ReachingInsnsILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i
  store i32 %i.bo, ptr %i.w, align 8, !tbaa !340, !alias.scope !1732
  store i32 %i.bm, ptr %i.y, align 8, !tbaa !384, !alias.scope !1732
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.bk, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.bt = load i32, ptr %i.y, align 8, !tbaa !384
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !384
  %i.bv = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.v
  br i1 %i.bw, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt13ReachingInsnsILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit
  call void @free(ptr noundef %i.bv) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm4bolt13ReachingInsnsILb0EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !344 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !344 ; 2 uses
  %.not207228 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not207228, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit70, %_ZN4llvm9BitVectorD2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0184.0231, i64 8 ; 2 uses
  %.not199 = icmp eq ptr %i.ca, %i.r
  br i1 %.not199, label %._crit_edge233, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit70
  %.sroa.0180.0229 = phi ptr [ %i.mn, %_ZN4llvm9BitVectorD2Ev.exit70 ], [ %i.bx, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !615, !nonnull !130, !align !131
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1568
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !387 ; 6 uses
  %i.ce = load i8, ptr %i.ab, align 4, !tbaa !135, !range !388, !noundef !130
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.aa, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cg = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cd, ptr nonnull @.str.12, i64 13) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cg to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.aa, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.cg, %bb.d ] ; 5 uses
  %i.ch = load i16, ptr %i.ac, align 8, !tbaa !326 ; 4 uses
  %i.ci = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.cd, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0180.0229, i32 noundef %.0.i.i) #18, !noalias !1733
  br i1 %i.ci, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0180.0229, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !340, !noalias !1733 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ck, -1         ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0180.0229, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !339, !noalias !1733 ; 4 uses
  %i.cn = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !392, !noalias !1733
  %i.cq = icmp eq i8 %i.cp, 6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1733
  %i.ct = icmp eq ptr %i.cs, null
  %i.cu = select i1 %i.cq, i1 %i.ct, i1 false
  br i1 %i.cu, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cn, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.cv = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !392, !noalias !1733
  %i.cy = icmp eq i8 %i.cx, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !1733
  %i.db = icmp eq ptr %i.da, null
  %i.dc = select i1 %i.cy, i1 %i.db, i1 false
  br i1 %i.dc, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.dd = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.dd, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ck, %.01318.i.i.i.lcssa.i.i.i
  %i.de = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.de, %i.ck
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ck to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !355, !noalias !1733 ; 2 uses
  %i.dj = lshr i64 %i.di, 56
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.dk
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.df, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %indvars.iv.next.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !355, !noalias !1733 ; 2 uses
  %i.do = lshr i64 %i.dn, 56
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %.not.i.i.i.i104 = icmp eq i32 %.0.i.i, %i.dp
  br i1 %.not.i.i.i.i104, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.di, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.dn, %.critedge.i.i.i.i ]
  %i.dq = shl i64 %.lcssa.i.i.i, 8
  %i.dr = ashr exact i64 %i.dq, 8
  %i.ds = add nuw nsw i64 %i.dr, 8
  %i.dt = inttoptr i64 %i.ds to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  store ptr %i.ad, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ae, align 8, !tbaa !340
  store i32 6, ptr %i.af, align 4, !tbaa !359
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.dw, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !395
  %i.dz = icmp eq i16 %i.ch, %i.dy
  br i1 %i.dz, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.eb = zext i16 %i.ch to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !396 ; 2 uses
  %i.ee = urem i64 %i.eb, %i.ed                   ; 2 uses
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !397
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !337 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !395
  %i.el = icmp eq i16 %i.ch, %i.ek
  br i1 %i.el, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i ], [ %i.ei, %bb.h ]
  %i.em = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !395 ; 2 uses
  %i.ep = zext i16 %i.eo to i64
  %i.eq = urem i64 %i.ep, %i.ed
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.eq, %i.ee
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.er = icmp eq i16 %i.ch, %i.eo
  br i1 %i.er, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.ei, %bb.h ], [ %i.em, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !408
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = add i64 %i.eu, 15
  %i.ew = and i64 %i.ev, -16                      ; 2 uses
  %i.ex = add i64 %i.ew, 80                       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !409
  %i.fa = icmp ult i64 %i.ex, %i.ez
  br i1 %i.fa, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fb = inttoptr i64 %i.ex to ptr
  store ptr %i.fb, ptr %i.es, align 8, !tbaa !408
  %i.fc = inttoptr i64 %i.ew to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.es, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.fe = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fc, %bb.i ], [ %i.fd, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !339
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.fh, align 8, !tbaa !340
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.fi, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.fe, 0
  %i.fj = icmp eq ptr %i.ff, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fj
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fk = icmp ugt i32 %i.fe, 6
  br i1 %i.fk, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fl = zext i32 %i.fe to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.ff, ptr noundef nonnull %i.fg, i64 noundef %i.fl, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i116 = load ptr, ptr %i.ff, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.fm = phi ptr [ %.pre.i.i.i116, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fg, %bb.k ]
  %i.fn = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fe, %bb.k ]
  %i.fo = zext i32 %i.fn to i64
  %i.fp = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 8 %i.fp, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fe, ptr %i.fh, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fr = load i32, ptr %i.ag, align 8, !tbaa !384
  store i32 %i.fr, ptr %i.fq, align 8, !tbaa !384
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.fu, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.fv = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !412 ; 2 uses
  %i.fy = urem i64 %i.fv, %i.fx                   ; 5 uses
  %i.fz = load ptr, ptr %i.fs, align 8, !tbaa !413
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i122, label %.critedge.i124, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.gc, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i127 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i127, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !415
  %i.gf = icmp eq ptr %.0.i.i.i.i, %i.ge
  br i1 %i.gf, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.gg = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !412
  %i.gj = urem i64 %i.gg, %i.gi
end_hunk_17
begin_hunk_18_@_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE_clES8_:bb.a
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !615, !nonnull !130, !align !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1755, !nonnull !130, !align !131 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !495
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1755, !nonnull !130, !align !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !468, !noalias !1757
  %.not.not.i.i.i.i5 = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.s, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !1757 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1757
  %i.v = icmp eq ptr %2, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !26

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = ptrtoint ptr %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !280, !noalias !1757 ; 2 uses
  %i.aa = urem i64 %i.x, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !279, !noalias !1757
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345, !noalias !1757 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !337, !noalias !1757 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !342, !noalias !1757
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq ptr %2, %i.al
  br i1 %i.ai, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !24

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !1757 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342, !noalias !1757 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !24

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !1757
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8, !alias.scope !1757
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !1757
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ao, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !497, !alias.scope !1757
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !alias.scope !1757
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8, !alias.scope !1757
  store ptr %i.as, ptr %4, align 8, !tbaa !495, !alias.scope !1757
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.aw = phi ptr [ %i.p, %.loopexit.i.i12 ], [ %i.p, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !495
  %i.ay = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !615, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.12, i64 13) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1761
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1761
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1761
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1761
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1761
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1761 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1761 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1761
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1761
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1761
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1761
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1761 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1761 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1761
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1761
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !1761
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_13ReachingInsnsILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_13ReachingInsnsILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_13ReachingInsnsILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !620
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb0EEENS1_9BitVectorELb0ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_13ReachingInsnsILb0EEENS0_9BitVectorELb0ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1767   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1768, !nonnull !130, !align !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !1771
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1771 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1771
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !1771 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !1771
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1771 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1771 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1771
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1771 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1771 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !1771
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !1771
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1771
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !497, !alias.scope !1771
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !1771
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !1771
  store ptr %i.ag, ptr %2, align 8, !tbaa !495, !alias.scope !1771
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit: ; preds = %.loopexit.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !495
  %i.al = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %i.ak) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt13ReachingInsnsILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm4bolt13ReachingInsnsILb1EEE, i64 16), ptr %0, align 8, !tbaa !286
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !336  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i
end_hunk_18
begin_hunk_19_@_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEv:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge243:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.ak, align 8, !tbaa !367
  %i.am = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !368
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !367
  %i.ao = add i64 %i.an, -1
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap ; 3 uses
  %i.ar = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !369
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !370
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !371
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 512 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !372
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !370
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !371
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.au, ptr %i.az, align 8, !tbaa !372
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !373
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !624, !nonnull !130, !align !131
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !339, !alias.scope !1848
  store i32 0, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340, !alias.scope !1848
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bc, align 4, !tbaa !359, !alias.scope !1848
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 232 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !376, !alias.scope !1848
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 216
  store i64 0, ptr %i.bf, align 8, !tbaa !377, !alias.scope !1848
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i64 40, ptr %i.bg, align 8, !tbaa !378, !alias.scope !1848
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1288
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !339
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !342
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE4initES8_(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef %i.bj)
  %i.bk = load i32, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !340 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %._crit_edge247, label %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit

_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit: ; preds = %._crit_edge243
  %i.bl = load ptr, ptr %8, align 8, !tbaa !339
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !380 ; 2 uses
  %.not210244 = icmp eq ptr %i.bp, null
  br i1 %.not210244, label %._crit_edge247, label %.lr.ph246

bb.b:                                             ; preds = %.lr.ph242, %._crit_edge
  %.sroa.0194.0241 = phi ptr [ %i.m, %.lr.ph242 ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0194.0241, align 8, !tbaa !342 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !342
  %i.br = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !627, !noalias !1849
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = add i32 %i.bt, 63                       ; 2 uses
  %i.bv = lshr i32 %i.bu, 6                       ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !339, !alias.scope !1849
  store i32 6, ptr %i.w, align 4, !tbaa !359, !alias.scope !1849
  %i.bx = icmp ugt i32 %i.bu, 447
  br i1 %i.bx, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.b
  store i32 0, ptr %i.v, align 8, !tbaa !340, !alias.scope !1849
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.u, i64 noundef %i.bw, i64 noundef 8) #18
  %i.by = load ptr, ptr %4, align 8, !tbaa !339, !alias.scope !1849
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4bolt13ReachingInsnsILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.by, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !354
  br label %_ZN4llvm4bolt13ReachingInsnsILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt13ReachingInsnsILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i
  store i32 %i.bv, ptr %i.v, align 8, !tbaa !340, !alias.scope !1849
  store i32 %i.bt, ptr %i.x, align 8, !tbaa !384, !alias.scope !1849
  %i.bz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.br, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !384
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !384
  %i.cc = load ptr, ptr %4, align 8, !tbaa !339   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.u
  br i1 %i.cd, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt13ReachingInsnsILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit
  call void @free(ptr noundef %i.cc) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm4bolt13ReachingInsnsILb1EE20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !344 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !344 ; 2 uses
  %.not217238 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not217238, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit70, %_ZN4llvm9BitVectorD2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0194.0241, i64 8 ; 2 uses
  %.not209 = icmp eq ptr %i.ch, %i.q
  br i1 %.not209, label %._crit_edge243, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit70
  %.sroa.0190.0239 = phi ptr [ %i.mu, %_ZN4llvm9BitVectorD2Ev.exit70 ], [ %i.ce, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !625, !nonnull !130, !align !131
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1568
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !387 ; 6 uses
  %i.cl = load i8, ptr %i.aa, align 4, !tbaa !135, !range !388, !noundef !130
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.z, align 8, !tbaa !389
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cn = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr nonnull @.str.13, i64 21) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cn to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.z, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.cn, %bb.d ] ; 5 uses
  %i.co = load i16, ptr %i.ab, align 8, !tbaa !332 ; 4 uses
  %i.cp = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0190.0239, i32 noundef %.0.i.i) #18, !noalias !1850
  br i1 %i.cp, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !340, !noalias !1850 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.cr, -1         ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !339, !noalias !1850 ; 4 uses
  %i.cu = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !392, !noalias !1850
  %i.cx = icmp eq i8 %i.cw, 6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !1850
  %i.da = icmp eq ptr %i.cz, null
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cu, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dc = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !392, !noalias !1850
  %i.df = icmp eq i8 %i.de, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !1850
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = select i1 %i.df, i1 %i.di, i1 false
  br i1 %i.dj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.dk, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.cr, %.01318.i.i.i.lcssa.i.i.i
  %i.dl = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.dl, %i.cr
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.cr to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !355, !noalias !1850 ; 2 uses
  %i.dq = lshr i64 %i.dp, 56
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.dr
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.dm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !355, !noalias !1850 ; 2 uses
  %i.dv = lshr i64 %i.du, 56
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %.not.i.i.i.i112 = icmp eq i32 %.0.i.i, %i.dw
  br i1 %.not.i.i.i.i112, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.dp, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.du, %.critedge.i.i.i.i ]
  %i.dx = shl i64 %.lcssa.i.i.i, 8
  %i.dy = ashr exact i64 %i.dx, 8
  %i.dz = add nuw nsw i64 %i.dy, 8
  %i.ea = inttoptr i64 %i.dz to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  store ptr %i.ac, ptr %1, align 8, !tbaa !339
  store i32 0, ptr %i.ad, align 8, !tbaa !340
  store i32 6, ptr %i.ae, align 4, !tbaa !359
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !394
  %.not.not.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.ed, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !395
  %i.eg = icmp eq i16 %i.co, %i.ef
  br i1 %i.eg, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ei = zext i16 %i.co to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !396 ; 2 uses
  %i.el = urem i64 %i.ei, %i.ek                   ; 2 uses
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !397
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !345, !nonnull !130, !noundef !130
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !337 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !395
  %i.es = icmp eq i16 %i.co, %i.er
  br i1 %i.es, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i ], [ %i.ep, %bb.h ]
  %i.et = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !337, !nonnull !130, !noundef !130 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !395 ; 2 uses
  %i.ew = zext i16 %i.ev to i64
  %i.ex = urem i64 %i.ew, %i.ek
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ex, %i.el
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.ey = icmp eq i16 %i.co, %i.ev
  br i1 %i.ey, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.ep, %bb.h ], [ %i.et, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !408
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = add i64 %i.fb, 15
  %i.fd = and i64 %i.fc, -16                      ; 2 uses
  %i.fe = add i64 %i.fd, 80                       ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !409
  %i.fh = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.i, label %bb.j, !prof !360

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fi = inttoptr i64 %i.fe to ptr
  store ptr %i.fi, ptr %i.ez, align 8, !tbaa !408
  %i.fj = inttoptr i64 %i.fd to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fk = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !340
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.fl = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fj, %bb.i ], [ %i.fk, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !286
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !339
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.fo, align 8, !tbaa !340
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.fp, align 4, !tbaa !359
  %.not.i.i.i.i.i = icmp eq i32 %i.fl, 0
  %i.fq = icmp eq ptr %i.fm, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fq
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fr = icmp ugt i32 %i.fl, 6
  br i1 %i.fr, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fs = zext i32 %i.fl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.fm, ptr noundef nonnull %i.fn, i64 noundef %i.fs, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i124 = load ptr, ptr %i.fm, align 8, !tbaa !339
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.ft = phi ptr [ %.pre.i.i.i124, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fn, %bb.k ]
  %i.fu = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fl, %bb.k ]
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %1, align 8, !tbaa !339
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 8 %i.fw, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fl, ptr %i.fo, align 8, !tbaa !340
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fy = load i32, ptr %i.af, align 8, !tbaa !384
  store i32 %i.fy, ptr %i.fx, align 8, !tbaa !384
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !411
  %.not.not.i = icmp eq i64 %i.gb, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gc = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !412 ; 2 uses
  %i.gf = urem i64 %i.gc, %i.ge                   ; 5 uses
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !413
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i130, label %.critedge.i132, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.gj, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !337 ; 3 uses
  %.not.i135 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !415
  %i.gm = icmp eq ptr %.0.i.i.i.i, %i.gl
  br i1 %i.gm, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !16

bb.o:                                             ; preds = %bb.m
  %i.gn = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !412
  %i.gq = urem i64 %i.gn, %i.gp
end_hunk_19
begin_hunk_20_@_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE_clES8_:bb.a
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !625, !nonnull !130, !align !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1876, !nonnull !130, !align !131 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !495
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1876, !nonnull !130, !align !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !468, !noalias !1878
  %.not.not.i.i.i.i5 = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.s, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !337, !noalias !1878 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1878
  %i.v = icmp eq ptr %2, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !26

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = ptrtoint ptr %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !280, !noalias !1878 ; 2 uses
  %i.aa = urem i64 %i.x, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !279, !noalias !1878
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345, !noalias !1878 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !337, !noalias !1878 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !342, !noalias !1878
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq ptr %2, %i.al
  br i1 %i.ai, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !24

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !337, !noalias !1878 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342, !noalias !1878 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !24

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !1878
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8, !alias.scope !1878
  store i32 34, ptr %4, align 8, !tbaa !389, !alias.scope !1878
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ao, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !497, !alias.scope !1878
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !alias.scope !1878
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8, !alias.scope !1878
  store ptr %i.as, ptr %4, align 8, !tbaa !495, !alias.scope !1878
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.aw = phi ptr [ %i.p, %.loopexit.i.i12 ], [ %i.p, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !495
  %i.ay = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !625, !nonnull !130, !align !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !135, !range !388, !noundef !130
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !389
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.13, i64 21) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #18, !noalias !1882
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1882
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1882
  store i32 34, ptr %0, align 8, !tbaa !389, !alias.scope !1882
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !497, !alias.scope !1882
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340, !noalias !1882 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339, !noalias !1882 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !392, !noalias !1882
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1882
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !392, !noalias !1882
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1882
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !355, !noalias !1882 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !355, !noalias !1882 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1882
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1882
  store ptr %i.ay, ptr %0, align 8, !tbaa !495, !alias.scope !1882
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_13ReachingInsnsILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_13ReachingInsnsILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_13ReachingInsnsILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS7_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !493
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !630
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_13ReachingInsnsILb1EEENS1_9BitVectorELb1ENS2_12StatePrinterIS6_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_13ReachingInsnsILb1EEENS0_9BitVectorELb1ENS1_12StatePrinterIS5_EEE3runEvEUlNS1_12ProgramPointEE0_JS9_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !436
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !355 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1888   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1889, !nonnull !130, !align !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468, !noalias !1892
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !337, !noalias !1892 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342, !noalias !1892
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !26

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !280, !noalias !1892 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !1892
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345, !noalias !1892 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337, !noalias !1892 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342, !noalias !1892
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !337, !noalias !1892 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !noalias !1892 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !24

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !24

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !1892
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !1892
  store i32 34, ptr %2, align 8, !tbaa !389, !alias.scope !1892
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !497, !alias.scope !1892
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !1892
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !1892
  store ptr %i.ag, ptr %2, align 8, !tbaa !495, !alias.scope !1892
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit

_ZZN4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE3runEvENKUlNS0_12ProgramPointEE0_clES8_.exit: ; preds = %.loopexit.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !495
  %i.al = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %i.ak) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

end_hunk_20
