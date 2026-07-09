inline.NumInlined: 2363
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK8facebook5velox13FlatMapVector11toMapVectorEv:bb.a
  %wide.masked.load248 = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr align 8 %i.s, <4 x i1> %i.o, <4 x ptr> poison), !tbaa !80
  %wide.masked.load249 = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr align 8 %i.t, <4 x i1> %i.p, <4 x ptr> poison), !tbaa !80
  %wide.masked.load250 = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr align 8 %i.u, <4 x i1> %i.q, <4 x ptr> poison), !tbaa !80
  %i.v = icmp ne <4 x ptr> %wide.masked.load, splat (ptr null)
  %i.w = icmp ne <4 x ptr> %wide.masked.load248, splat (ptr null)
  %i.x = icmp ne <4 x ptr> %wide.masked.load249, splat (ptr null)
  %i.y = icmp ne <4 x ptr> %wide.masked.load250, splat (ptr null)
  %narrow = select <4 x i1> %i.n, <4 x i1> %i.v, <4 x i1> zeroinitializer
  %i.z = zext <4 x i1> %narrow to <4 x i32>
  %predphi = add <4 x i32> %vec.phi, %i.z         ; 2 uses
  %narrow279 = select <4 x i1> %i.o, <4 x i1> %i.w, <4 x i1> zeroinitializer
  %i.aa = zext <4 x i1> %narrow279 to <4 x i32>
  %predphi251 = add <4 x i32> %vec.phi245, %i.aa  ; 2 uses
  %narrow280 = select <4 x i1> %i.p, <4 x i1> %i.x, <4 x i1> zeroinitializer
  %i.ab = zext <4 x i1> %narrow280 to <4 x i32>
  %predphi252 = add <4 x i32> %vec.phi246, %i.ab  ; 2 uses
  %narrow281 = select <4 x i1> %i.q, <4 x i1> %i.y, <4 x i1> zeroinitializer
  %i.ac = zext <4 x i1> %narrow281 to <4 x i32>
  %predphi253 = add <4 x i32> %vec.phi247, %i.ac  ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %predphi251, %predphi
  %bin.rdx254 = add <4 x i32> %predphi252, %bin.rdx
  %bin.rdx255 = add <4 x i32> %predphi253, %bin.rdx254
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx255) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !287

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.ae, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec257 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert258 = insertelement <4 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat259 = shufflevector <4 x i64> %broadcast.splatinsert258, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat261 = shufflevector <4 x i64> %broadcast.splatinsert260, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat261, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index262 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind263 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next268, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi264 = phi <4 x i32> [ %i.af, %vec.epilog.ph ], [ %predphi266, %vec.epilog.vector.body ]
  %i.ag = icmp ugt <4 x i64> %broadcast.splat259, %vec.ind263 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.h, i64 %index262
  %wide.masked.load265 = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr align 8 %i.ah, <4 x i1> %i.ag, <4 x ptr> poison), !tbaa !80
  %i.ai = icmp ne <4 x ptr> %wide.masked.load265, splat (ptr null)
  %narrow282 = select <4 x i1> %i.ag, <4 x i1> %i.ai, <4 x i1> zeroinitializer
  %i.aj = zext <4 x i1> %narrow282 to <4 x i32>
  %predphi266 = add <4 x i32> %vec.phi264, %i.aj  ; 2 uses
  %index.next267 = add nuw i64 %index262, 4       ; 2 uses
  %vec.ind.next268 = add nuw nsw <4 x i64> %vec.ind263, splat (i64 4)
  %i.ak = icmp eq i64 %index.next267, %n.vec257
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi266) ; 2 uses
  %cmp.n269 = icmp eq i64 %n.vec257, %wide.trip.count
  br i1 %cmp.n269, label %.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec257, %vec.epilog.middle.block ]
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
  %.not186 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not186, label %._crit_edge, label %.lr.ph174.preheader

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
          to label %bb.k unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit"
  %indvars.iv192 = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvars.iv.next193, %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit" ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv192
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
  %.not32.not56.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not32.not56.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.by = zext nneg i32 %i.bx to i64
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i", %bb.f
  %.not33.i.i = icmp eq i32 %i.bv, %i.bx
  br i1 %.not33.i.i, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %bb.i

bb.g:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i", %.lr.ph.i.i
  %indvars.iv59.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next60.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i" ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ 64, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i" ] ; 2 uses
  %i.bz = lshr exact i64 %indvars.iv59.i.i, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !33 ; 2 uses
  switch i64 %i.cb, label %.lr.ph.i.i.i [
    i64 -1, label %vector.body272
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i"
  ]

vector.body272:                                   ; preds = %bb.g
  %i.cc = shl nuw nsw i64 %indvars.iv59.i.i, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cc ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 64 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.cd, align 4, !tbaa !3
  %wide.load274 = load <8 x i32>, ptr %i.ce, align 4, !tbaa !3
  %wide.load275 = load <8 x i32>, ptr %i.cf, align 4, !tbaa !3
  %wide.load276 = load <8 x i32>, ptr %i.cg, align 4, !tbaa !3
  %i.ch = add nsw <8 x i32> %wide.load, splat (i32 1)
  %i.ci = add nsw <8 x i32> %wide.load274, splat (i32 1)
  %i.cj = add nsw <8 x i32> %wide.load275, splat (i32 1)
  %i.ck = add nsw <8 x i32> %wide.load276, splat (i32 1)
  store <8 x i32> %i.ch, ptr %i.cd, align 4, !tbaa !3
  store <8 x i32> %i.ci, ptr %i.ce, align 4, !tbaa !3
  store <8 x i32> %i.cj, ptr %i.cf, align 4, !tbaa !3
  store <8 x i32> %i.ck, ptr %i.cg, align 4, !tbaa !3
  %i.cl = shl i64 %indvars.iv59.i.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cl ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 128 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 160 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 192 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 224 ; 2 uses
  %wide.load.1 = load <8 x i32>, ptr %i.cn, align 4, !tbaa !3
  %wide.load274.1 = load <8 x i32>, ptr %i.co, align 4, !tbaa !3
  %wide.load275.1 = load <8 x i32>, ptr %i.cp, align 4, !tbaa !3
  %wide.load276.1 = load <8 x i32>, ptr %i.cq, align 4, !tbaa !3
  %i.cr = add nsw <8 x i32> %wide.load.1, splat (i32 1)
  %i.cs = add nsw <8 x i32> %wide.load274.1, splat (i32 1)
  %i.ct = add nsw <8 x i32> %wide.load275.1, splat (i32 1)
  %i.cu = add nsw <8 x i32> %wide.load276.1, splat (i32 1)
  store <8 x i32> %i.cr, ptr %i.cn, align 4, !tbaa !3
  store <8 x i32> %i.cs, ptr %i.co, align 4, !tbaa !3
  store <8 x i32> %i.ct, ptr %i.cp, align 4, !tbaa !3
  store <8 x i32> %i.cu, ptr %i.cq, align 4, !tbaa !3
  br label %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %invariant.gep.i43.i.i = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv59.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.01520.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %i.cz, %bb.h ] ; 3 uses
  %i.cv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i, i1 true)
  %gep.i44.i.i = getelementptr [4 x i8], ptr %invariant.gep.i43.i.i, i64 %i.cv ; 2 uses
  %i.cw = load i32, ptr %gep.i44.i.i, align 4, !tbaa !3
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %gep.i44.i.i, align 4, !tbaa !3
  %i.cy = add i64 %.01520.i.i.i, -1
  %i.cz = and i64 %i.cy, %.01520.i.i.i            ; 2 uses
  %.not.i45.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i45.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i", label %bb.h, !llvm.loop !294

"_ZZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i": ; preds = %bb.h, %vector.body272, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64
  %.not32.not.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.by
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 64
  br i1 %.not32.not.i.i, label %bb.g, label %._crit_edge.i.i, !llvm.loop !295

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.da = lshr i32 %i.bv, 6
  %i.db = and i32 %i.bv, 63
  %i.dc = zext nneg i32 %i.db to i64
  %notmask.i46.i.i = shl nsw i64 -1, %i.dc
  %i.dd = xor i64 %notmask.i46.i.i, -1
  %i.de = zext nneg i32 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !33
  %i.dh = and i64 %i.dg, %i.dd                    ; 2 uses
  %.not.i47.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i47.i.i, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %.preheader.i48.i.i

.preheader.i48.i.i:                               ; preds = %bb.i
  %i.di = zext nneg i32 %i.bx to i64
  %invariant.gep.i50.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.di
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i48.i.i
  %.011.i51.i.i = phi i64 [ %i.dh, %.preheader.i48.i.i ], [ %i.dn, %bb.j ] ; 3 uses
  %i.dj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i, i1 true)
  %gep.i52.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i50.i.i, i64 %i.dj ; 2 uses
  %i.dk = load i32, ptr %gep.i52.i.i, align 4, !tbaa !3
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %gep.i52.i.i, align 4, !tbaa !3
  %i.dm = add nsw i64 %.011.i51.i.i, -1
  %i.dn = and i64 %i.dm, %.011.i51.i.i            ; 2 uses
  %.not10.i53.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not10.i53.i.i, label %"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit", label %bb.j, !llvm.loop !296

"_ZN8facebook5velox4bits10forEachBitIZNKS0_13FlatMapVector11toMapVectorEvE3$_0EEvPKmiibT_.exit": ; preds = %bb.j, %bb.i, %._crit_edge.i.i, %bb.e, %.lr.ph174
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next193, %i.bh
  br i1 %exitcond195.not, label %._crit_edge, label %.lr.ph174, !llvm.loop !297

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !291
  %i.do = load ptr, ptr %7, align 8, !tbaa !80    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !81
  %i.dr = and i8 %i.dq, 2
  %.not.i93 = icmp eq i8 %i.dr, 0
  br i1 %.not.i93, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #29
          to label %.noexc94 unwind label %bb.n

.noexc94:                                         ; preds = %bb.l
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95: ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %i.du = load i32, ptr %i.ao, align 8, !tbaa !58 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph177, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95
  %.pre208 = sext i32 %i.du to i64
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %.lr.ph177, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge
  %.pre-phi = phi i64 [ %.pre208, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge ], [ %i.ed, %.lr.ph177 ]
  %.059.lcssa = phi i32 [ 0, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge ], [ %i.eb, %.lr.ph177 ] ; 3 uses
  %.lcssa = phi i32 [ %i.du, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95.._crit_edge178_crit_edge ], [ %i.ec, %.lr.ph177 ]
  %.not5.i.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i96.preheader

.lr.ph.i.i.i96.preheader:                         ; preds = %._crit_edge178
  %.idx = shl nsw i64 %.pre-phi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 0, i64 %.idx, i1 false), !tbaa !3
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.m:                                             ; preds = %._crit_edge
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.n:                                             ; preds = %bb.l
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.lr.ph177:                                        ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95, %.lr.ph177
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %.lr.ph177 ], [ 0, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95 ] ; 3 uses
  %.059175 = phi i32 [ %i.eb, %.lr.ph177 ], [ 0, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit95 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv196
  store i32 %.059175, ptr %i.dy, align 4, !tbaa !3
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv196
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = add nsw i32 %i.ea, %.059175             ; 2 uses
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.ec = load i32, ptr %i.ao, align 8, !tbaa !58 ; 2 uses
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = icmp slt i64 %indvars.iv.next197, %i.ed
  br i1 %i.ee, label %.lr.ph177, label %._crit_edge178, !llvm.loop !298

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i96.preheader, %._crit_edge178
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !200, !noalias !299
  %i.eh = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.eg, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7MapTypeE, i64 0) #27, !noalias !299 ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.o, label %_ZNK8facebook5velox4Type5asMapEv.exit.i

bb.o:                                             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  invoke void @__cxa_bad_cast() #29
          to label %.noexc97 unwind label %bb.ab

.noexc97:                                         ; preds = %bb.o
  unreachable

_ZNK8facebook5velox4Type5asMapEv.exit.i:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !91, !noalias !299 ; 2 uses
  %i.en = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !108, !noalias !299
  store <2 x ptr> %i.en, ptr %9, align 16, !tbaa !108, !alias.scope !299
  %.not.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i, label %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox4Type5asMapEv.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.ep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !299
  %.not.i.i.i.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !3, !noalias !299
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !3, !noalias !299
  br label %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit

bb.r:                                             ; preds = %bb.p
  %i.es = atomicrmw volatile add ptr %i.eo, i32 1 acq_rel, align 4, !noalias !299 ; 0 uses
  br label %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit

_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox4Type5asMapEv.exit.i
  %i.et = load ptr, ptr %i.ar, align 8, !tbaa !119
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !302
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %.059.lcssa, ptr noundef %i.et)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %_ZNK8facebook5velox13FlatMapVector9valueTypeEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ev = load <2 x ptr>, ptr %3, align 16, !tbaa !108, !noalias !308
  store <2 x ptr> %i.ev, ptr %8, align 16, !tbaa !108, !alias.scope !308
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !302
  %i.ew = load ptr, ptr %i.ek, align 8, !tbaa !91 ; 8 uses
  %.not.i.i99 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i99, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.u, label %bb.v
end_hunk_0
