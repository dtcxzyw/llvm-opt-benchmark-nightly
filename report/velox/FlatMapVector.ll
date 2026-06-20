inline.NumInlined: 2363
inline.NumDeleted: 900
begin_hunk_0_@_ZNK8facebook5velox13FlatMapVector11toMapVectorEv:bb.a
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert261 = insertelement <4 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat262 = shufflevector <4 x i64> %broadcast.splatinsert261, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat264 = shufflevector <4 x i64> %broadcast.splatinsert263, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat264, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index265 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next270, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind266 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next271, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi267 = phi <4 x i32> [ %i.af, %vec.epilog.ph ], [ %predphi269, %vec.epilog.vector.body ]
  %i.ag = icmp ugt <4 x i64> %broadcast.splat262, %vec.ind266 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.h, i64 %index265
  %wide.masked.load268 = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr align 8 %i.ah, <4 x i1> %i.ag, <4 x ptr> poison), !tbaa !80
  %i.ai = icmp ne <4 x ptr> %wide.masked.load268, splat (ptr null)
  %narrow285 = select <4 x i1> %i.ag, <4 x i1> %i.ai, <4 x i1> zeroinitializer
  %i.aj = zext <4 x i1> %narrow285 to <4 x i32>
  %predphi269 = add <4 x i32> %vec.phi267, %i.aj  ; 2 uses
  %index.next270 = add nuw i64 %index265, 4       ; 2 uses
  %vec.ind.next271 = add nuw nsw <4 x i64> %vec.ind266, splat (i64 4)
  %i.ak = icmp eq i64 %index.next270, %n.vec260
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi269) ; 2 uses
  %cmp.n272 = icmp eq i64 %n.vec260, %wide.trip.count
  br i1 %cmp.n272, label %.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec260, %vec.epilog.middle.block ]
  %.057167170.ph = phi i32 [ 0, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph

.split:                                           ; preds = %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread.lr.ph
  %.057.lcssa164 = phi i32 [ 0, %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread.lr.ph ], [ %i.al, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %.1, %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread ]
  %i.am = sub i32 %i.d, %.057.lcssa164
  br label %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit91

_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit91: ; preds = %bb.a, %.split
  %i.an = phi i32 [ %i.am, %.split ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 8 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !58
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 %i.an, ptr %6, align 4, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.at, align 4, !tbaa !289
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.aq, ptr noundef %i.as, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.au = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !81
  %i.ax = and i8 %i.aw, 2
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.b, !prof !76

bb.b:                                             ; preds = %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit91
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !86 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !93 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !96 ; 3 uses
  %.not187 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not187, label %._crit_edge, label %.lr.ph174.preheader

.lr.ph174.preheader:                              ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  br label %.lr.ph174

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.057167170 = phi i32 [ %.1, %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread ], [ %.057167170.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bi = icmp ugt i64 %i.l, %indvars.iv
  br i1 %i.bi, label %bb.c, label %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  %.not = icmp ne ptr %i.bk, null
  %i.bl = zext i1 %.not to i32
  %spec.select = add i32 %.057167170, %i.bl
  br label %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread

_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit.thread: ; preds = %bb.c, %.lr.ph
  %.1 = phi i32 [ %.057167170, %.lr.ph ], [ %spec.select, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split, label %.lr.ph, !llvm.loop !290

._crit_edge:                                      ; preds = %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bm = load i32, ptr %i.ao, align 8, !tbaa !58
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !119
  %i.bo = sext i32 %i.bm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !291
  store i32 0, ptr %4, align 4, !tbaa !23, !noalias !291
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 1, ptr %i.bp, align 4, !tbaa !289, !noalias !291
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %7, i64 noundef %i.bo, ptr noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit"
  %indvars.iv193 = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvars.iv.next194, %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit" ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv193
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !80 ; 2 uses
  %.not157 = icmp eq ptr %i.bs, null
  br i1 %.not157, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %bb.e

bb.e:                                             ; preds = %.lr.ph174
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !86 ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 8, !tbaa !58 ; 5 uses
  %i.bw = icmp slt i32 %i.bv, 1
  br i1 %i.bw, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = and i32 %i.bv, 2147483584               ; 4 uses
  %.not32.not50.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not32.not50.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.by = zext nneg i32 %i.bx to i64
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i", %bb.f
  %.not33.i.i = icmp eq i32 %i.bv, %i.bx
  br i1 %.not33.i.i, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %bb.h

bb.g:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i", %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i" ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ 64, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i" ] ; 2 uses
  %i.bz = lshr exact i64 %indvars.iv53.i.i, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !33 ; 2 uses
  switch i64 %i.cb, label %.lr.ph.i.preheader.i.i [
    i64 -1, label %vector.body275
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i"
  ]

vector.body275:                                   ; preds = %bb.g
  %i.cc = shl i64 %indvars.iv53.i.i, 32
  %i.cd = ashr exact i64 %i.cc, 30
  %i.ce = getelementptr inbounds i8, ptr %i.az, i64 %i.cd ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.ce, align 4, !tbaa !3
  %wide.load277 = load <8 x i32>, ptr %i.cf, align 4, !tbaa !3
  %wide.load278 = load <8 x i32>, ptr %i.cg, align 4, !tbaa !3
  %wide.load279 = load <8 x i32>, ptr %i.ch, align 4, !tbaa !3
  %i.ci = add nsw <8 x i32> %wide.load, splat (i32 1)
  %i.cj = add nsw <8 x i32> %wide.load277, splat (i32 1)
  %i.ck = add nsw <8 x i32> %wide.load278, splat (i32 1)
  %i.cl = add nsw <8 x i32> %wide.load279, splat (i32 1)
  store <8 x i32> %i.ci, ptr %i.ce, align 4, !tbaa !3
  store <8 x i32> %i.cj, ptr %i.cf, align 4, !tbaa !3
  store <8 x i32> %i.ck, ptr %i.cg, align 4, !tbaa !3
  store <8 x i32> %i.cl, ptr %i.ch, align 4, !tbaa !3
  %i.cm = shl i64 %indvars.iv53.i.i, 32
  %i.cn = ashr exact i64 %i.cm, 30
  %i.co = getelementptr i8, ptr %i.az, i64 %i.cn  ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 128    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 160    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 192    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.co, i64 224    ; 2 uses
  %wide.load.1 = load <8 x i32>, ptr %i.cp, align 4, !tbaa !3
  %wide.load277.1 = load <8 x i32>, ptr %i.cq, align 4, !tbaa !3
  %wide.load278.1 = load <8 x i32>, ptr %i.cr, align 4, !tbaa !3
  %wide.load279.1 = load <8 x i32>, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nsw <8 x i32> %wide.load.1, splat (i32 1)
  %i.cu = add nsw <8 x i32> %wide.load277.1, splat (i32 1)
  %i.cv = add nsw <8 x i32> %wide.load278.1, splat (i32 1)
  %i.cw = add nsw <8 x i32> %wide.load279.1, splat (i32 1)
  store <8 x i32> %i.ct, ptr %i.cp, align 4, !tbaa !3
  store <8 x i32> %i.cu, ptr %i.cq, align 4, !tbaa !3
  store <8 x i32> %i.cv, ptr %i.cr, align 4, !tbaa !3
  store <8 x i32> %i.cw, ptr %i.cs, align 4, !tbaa !3
  br label %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i"

.lr.ph.i.preheader.i.i:                           ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv53.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.01520.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i ], [ %i.cb, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.cy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i, i1 true)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %i.dc = add i64 %.01520.i.i.i, -1
  %i.dd = and i64 %i.dc, %.01520.i.i.i            ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i41.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i", label %.lr.ph.i.i.i, !llvm.loop !294

"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i": ; preds = %.lr.ph.i.i.i, %vector.body275, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64
  %.not32.not.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.by
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 64
  br i1 %.not32.not.i.i, label %bb.g, label %._crit_edge.i.i, !llvm.loop !295

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.de = lshr i32 %i.bv, 6
  %i.df = and i32 %i.bv, 63
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i42.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i42.i.i, -1
  %i.di = zext nneg i32 %i.de to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !33
  %i.dl = and i64 %i.dk, %i.dh                    ; 2 uses
  %.not.i43.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i43.i.i, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %.preheader.i44.i.i

.preheader.i44.i.i:                               ; preds = %bb.h, %.preheader.i44.i.i
  %.011.i46.i.i = phi i64 [ %i.du, %.preheader.i44.i.i ], [ %i.dl, %bb.h ] ; 3 uses
  %i.dm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i46.i.i, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = or disjoint i32 %i.bx, %i.dn
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !3
  %i.dt = add nsw i64 %.011.i46.i.i, -1
  %i.du = and i64 %i.dt, %.011.i46.i.i            ; 2 uses
  %.not10.i47.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i47.i.i, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %.preheader.i44.i.i, !llvm.loop !296

"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit": ; preds = %.preheader.i44.i.i, %bb.h, %._crit_edge.i.i, %bb.e, %.lr.ph174
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next194, %i.bh
  br i1 %exitcond196.not, label %._crit_edge, label %.lr.ph174, !llvm.loop !297

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !291
  %i.dv = load ptr, ptr %7, align 8, !tbaa !80    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !81
  %i.dy = and i8 %i.dx, 2
  %.not.i93 = icmp eq i8 %i.dy, 0
  br i1 %.not.i93, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95, label %bb.j, !prof !76

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #29
          to label %.noexc94 unwind label %bb.l

.noexc94:                                         ; preds = %bb.j
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95: ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !86 ; 2 uses
  %i.eb = load i32, ptr %i.ao, align 8, !tbaa !58 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph177, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95
  %.pre210 = sext i32 %i.eb to i64
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %.lr.ph177, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge
  %.pre-phi = phi i64 [ %.pre210, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge ], [ %i.ek, %.lr.ph177 ]
  %.059.lcssa = phi i32 [ 0, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge ], [ %i.ei, %.lr.ph177 ] ; 3 uses
  %.lcssa = phi i32 [ %i.eb, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge ], [ %i.ej, %.lr.ph177 ]
  %.not5.i.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i96.preheader

.lr.ph.i.i.i96.preheader:                         ; preds = %._crit_edge178
  %.idx = shl nsw i64 %.pre-phi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 0, i64 %.idx, i1 false), !tbaa !3
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.l:                                             ; preds = %bb.j
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.lr.ph177:                                        ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95, %.lr.ph177
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %.lr.ph177 ], [ 0, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95 ] ; 3 uses
  %.059175 = phi i32 [ %i.ei, %.lr.ph177 ], [ 0, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv197
  store i32 %.059175, ptr %i.ef, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv197
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = add nsw i32 %i.eh, %.059175             ; 2 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.ej = load i32, ptr %i.ao, align 8, !tbaa !58 ; 2 uses
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = icmp slt i64 %indvars.iv.next198, %i.ek
  br i1 %i.el, label %.lr.ph177, label %._crit_edge178, !llvm.loop !298

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i96.preheader, %._crit_edge178
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !200, !noalias !299
  %i.eo = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.en, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7MapTypeE, i64 0) #27, !noalias !299 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.m, label %_ZNK8facebook5velox4Type5asMapEv.exit.i

bb.m:                                             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  invoke void @__cxa_bad_cast() #29
          to label %.noexc97 unwind label %bb.z

.noexc97:                                         ; preds = %bb.m
  unreachable

_ZNK8facebook5velox4Type5asMapEv.exit.i:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !91, !noalias !299 ; 2 uses
  %i.eu = load <2 x ptr>, ptr %i.eq, align 8, !tbaa !108, !noalias !299
  store <2 x ptr> %i.eu, ptr %9, align 16, !tbaa !108, !alias.scope !299
  %.not.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i, label %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox4Type5asMapEv.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !299
  %.not.i.i.i.i.i = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !299
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !3, !noalias !299
  br label %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit

bb.p:                                             ; preds = %bb.n
  %i.ez = atomicrmw volatile add ptr %i.ev, i32 1 acq_rel, align 4, !noalias !299 ; 0 uses
  br label %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit

_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox4Type5asMapEv.exit.i
  %i.fa = load ptr, ptr %i.ar, align 8, !tbaa !119
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !302
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %.059.lcssa, ptr noundef %i.fa)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fc = load <2 x ptr>, ptr %3, align 16, !tbaa !108, !noalias !308
  store <2 x ptr> %i.fc, ptr %8, align 16, !tbaa !108, !alias.scope !308
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !302
  %i.fd = load ptr, ptr %i.er, align 8, !tbaa !91 ; 8 uses
  %.not.i.i99 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i99, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.fe, align 8, !tbaa !109
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !111
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !43
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #27, !inline_history !209
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !43
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #27, !inline_history !209
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i100 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i100, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
