inline.NumInlined: 245
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6bParse5bFile10swapStructEiPcb:bb.a
  %.pn53 = phi ptr [ %i.d, %.lr.ph55 ], [ %.054, %_ZN6bParse5bFile8swapDataEPcsib.exit ] ; 2 uses
  %.04151 = phi ptr [ %2, %.lr.ph55 ], [ %i.cm, %_ZN6bParse5bFile8swapDataEPcsib.exit ] ; 6 uses
  %.04250 = phi i32 [ 0, %.lr.ph55 ], [ %i.cn, %_ZN6bParse5bFile8swapDataEPcsib.exit ]
  %.054 = getelementptr inbounds nuw i8, ptr %.pn53, i64 4 ; 3 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.n = load i16, ptr %.054, align 2, !tbaa !91
  %i.o = sext i16 %i.n to i32
  %i.p = tail call noundef ptr @_ZN6bParse4bDNA7getTypeEi(ptr noundef nonnull align 8 dereferenceable(420) %i.m, i32 noundef %i.o)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %.pn53, i64 6 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !91
  %i.t = sext i16 %i.s to i32
  %i.u = tail call noundef ptr @_ZN6bParse4bDNA7getNameEi(ptr noundef nonnull align 8 dereferenceable(420) %i.q, i32 noundef %i.t)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !74   ; 4 uses
  %i.w = load i16, ptr %.054, align 2, !tbaa !91  ; 4 uses
  %i.x = load i16, ptr %i.r, align 2, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = sext i16 %i.x to i64
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !98, !range !69, !noundef !72
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 416
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !100
  br label %_ZN6bParse4bDNA14getElementSizeEss.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !116
  %i.aj = sext i16 %i.w to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !91
  %i.am = sext i16 %i.al to i32
  br label %_ZN6bParse4bDNA14getElementSizeEss.exit

_ZN6bParse4bDNA14getElementSizeEss.exit:          ; preds = %bb.d, %bb.e
  %.sink11.i = phi i32 [ %i.am, %bb.e ], [ %i.ag, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !118
  %i.ar = mul i32 %i.aq, %i.ao                    ; 6 uses
  %i.as = mul i32 %i.ar, %.sink11.i               ; 2 uses
  %.not = icmp slt i16 %i.w, %i.j
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN6bParse4bDNA14getElementSizeEss.exit
  %i.at = load i8, ptr %i.u, align 1, !tbaa !9
  %.not45 = icmp eq i8 %i.at, 42
  br i1 %.not45, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = tail call noundef i32 @_ZN6bParse4bDNA14getReverseTypeEPKc(ptr noundef nonnull align 8 dereferenceable(420) %i.v, ptr noundef %i.p) ; 2 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.aw = load i16, ptr %i.r, align 2, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !97
  %i.az = sext i16 %i.aw to i64
  %i.ba = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !117
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !118
  %i.bf = mul nsw i32 %i.be, %i.bc                ; 4 uses
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.bh = icmp sgt i32 %i.bf, 0
  br i1 %i.bh, label %.lr.ph, label %_ZN6bParse5bFile8swapDataEPcsib.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6bParse5bFile10swapStructEiPcb(ptr noundef nonnull align 8 dereferenceable(540) %0, i32 noundef %i.au, ptr noundef %.04151, i1 noundef zeroext %3)
  br label %_ZN6bParse5bFile8swapDataEPcsib.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.03948 = phi i32 [ %i.bl, %.lr.ph ], [ 0, %.preheader ]
  %.04047 = phi ptr [ %i.bk, %.lr.ph ], [ %.04151, %.preheader ] ; 2 uses
  tail call void @_ZN6bParse5bFile10swapStructEiPcb(ptr noundef nonnull align 8 dereferenceable(540) %0, i32 noundef %i.au, ptr noundef %.04047, i1 noundef zeroext %3)
  %i.bi = sdiv i32 %i.as, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %.04047, i64 %i.bj
  %i.bl = add nuw nsw i32 %.03948, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %i.bf
  br i1 %exitcond.not, label %_ZN6bParse5bFile8swapDataEPcsib.exit, label %.lr.ph, !llvm.loop !119

bb.i:                                             ; preds = %bb.f, %_ZN6bParse4bDNA14getElementSizeEss.exit
  br i1 %3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = load i32, ptr %i.l, align 8, !tbaa !66
  %i.bn = and i32 %i.bm, 4
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %_ZN6bParse5bFile8swapDataEPcsib.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bo = and i16 %i.w, -2
  %or.cond.i = icmp eq i16 %i.bo, 2
  %i.bp = icmp sgt i32 %i.ar, 0                   ; 2 uses
  %or.cond42.i = and i1 %or.cond.i, %i.bp
  br i1 %or.cond42.i, label %.lr.ph.i, label %.loopexit36.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.03338.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.04151, %bb.k ] ; 3 uses
  %.03437.i = phi i32 [ %i.bt, %.lr.ph.i ], [ 0, %bb.k ]
  %i.bq = load i16, ptr %.03338.i, align 2, !tbaa !91
  %i.br = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.bq)
  store i16 %i.br, ptr %.03338.i, align 2, !tbaa !91
  %i.bs = getelementptr inbounds nuw i8, ptr %.03338.i, i64 2
  %i.bt = add nuw nsw i32 %.03437.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bt, %i.ar
  br i1 %exitcond.not.i, label %.loopexit36.i, label %.lr.ph.i, !llvm.loop !120

.loopexit36.i:                                    ; preds = %.lr.ph.i, %bb.k
  %i.bu = and i16 %i.w, -4
  %or.cond5.i = icmp eq i16 %i.bu, 4
  %or.cond43.i = and i1 %or.cond5.i, %i.bp
  br i1 %or.cond43.i, label %.lr.ph41.i.preheader, label %_ZN6bParse5bFile8swapDataEPcsib.exit

.lr.ph41.i.preheader:                             ; preds = %.loopexit36.i
  %xtraiter = and i32 %i.ar, 3                    ; 3 uses
  %i.bv = icmp ult i32 %i.ar, 4
  br i1 %i.bv, label %.lr.ph41.i.epil.preheader, label %.lr.ph41.i.preheader.new

.lr.ph41.i.preheader.new:                         ; preds = %.lr.ph41.i.preheader
  %unroll_iter = and i32 %i.ar, 2147483644
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i, %.lr.ph41.i.preheader.new
  %.03239.i = phi ptr [ %.04151, %.lr.ph41.i.preheader.new ], [ %i.ch, %.lr.ph41.i ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph41.i.preheader.new ], [ %niter.next.3, %.lr.ph41.i ]
  %i.bw = load <4 x i8>, ptr %.03239.i, align 1, !tbaa !9
  %i.bx = shufflevector <4 x i8> %i.bw, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.bx, ptr %.03239.i, align 1, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %.03239.i, i64 4 ; 2 uses
  %i.bz = load <4 x i8>, ptr %i.by, align 1, !tbaa !9
  %i.ca = shufflevector <4 x i8> %i.bz, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ca, ptr %i.by, align 1, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %.03239.i, i64 8 ; 2 uses
  %i.cc = load <4 x i8>, ptr %i.cb, align 1, !tbaa !9
  %i.cd = shufflevector <4 x i8> %i.cc, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cd, ptr %i.cb, align 1, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %.03239.i, i64 12 ; 2 uses
  %i.cf = load <4 x i8>, ptr %i.ce, align 1, !tbaa !9
  %i.cg = shufflevector <4 x i8> %i.cf, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cg, ptr %i.ce, align 1, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %.03239.i, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6bParse5bFile8swapDataEPcsib.exit.loopexit.unr-lcssa, label %.lr.ph41.i, !llvm.loop !121

_ZN6bParse5bFile8swapDataEPcsib.exit.loopexit.unr-lcssa: ; preds = %.lr.ph41.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6bParse5bFile8swapDataEPcsib.exit, label %.lr.ph41.i.epil.preheader

.lr.ph41.i.epil.preheader:                        ; preds = %_ZN6bParse5bFile8swapDataEPcsib.exit.loopexit.unr-lcssa, %.lr.ph41.i.preheader
  %.03239.i.epil.init = phi ptr [ %.04151, %.lr.ph41.i.preheader ], [ %i.ch, %_ZN6bParse5bFile8swapDataEPcsib.exit.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph41.i.epil

.lr.ph41.i.epil:                                  ; preds = %.lr.ph41.i.epil, %.lr.ph41.i.epil.preheader
  %.03239.i.epil = phi ptr [ %i.ck, %.lr.ph41.i.epil ], [ %.03239.i.epil.init, %.lr.ph41.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph41.i.epil ], [ 0, %.lr.ph41.i.epil.preheader ]
  %i.ci = load <4 x i8>, ptr %.03239.i.epil, align 1, !tbaa !9
  %i.cj = shufflevector <4 x i8> %i.ci, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cj, ptr %.03239.i.epil, align 1, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %.03239.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6bParse5bFile8swapDataEPcsib.exit, label %.lr.ph41.i.epil, !llvm.loop !122

_ZN6bParse5bFile8swapDataEPcsib.exit:             ; preds = %.lr.ph, %_ZN6bParse5bFile8swapDataEPcsib.exit.loopexit.unr-lcssa, %.lr.ph41.i.epil, %.preheader, %.loopexit36.i, %bb.j, %bb.h
  %i.cl = sext i32 %i.as to i64
  %i.cm = getelementptr inbounds i8, ptr %.04151, i64 %i.cl
  %i.cn = add nuw nsw i32 %.04250, 1              ; 2 uses
  %exitcond57.not = icmp eq i32 %i.cn, %i.g
  br i1 %exitcond57.not, label %.loopexit, label %bb.c, !llvm.loop !123

.loopexit:                                        ; preds = %_ZN6bParse5bFile8swapDataEPcsib.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6bParse5bFile7swapLenEPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(540) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !124    ; 2 uses
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.h = and i32 %i.g, 65535
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink115 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %.sink101.ph = phi i64 [ 12, %bb.b ], [ 16, %bb.c ]
  %.sink99.ph = phi i64 [ 15, %bb.b ], [ 19, %bb.c ]
  %.sink93.ph = phi i64 [ 13, %bb.b ], [ 17, %bb.c ]
  %.sink91.ph = phi i64 [ 14, %bb.b ], [ 18, %bb.c ]
  %.sink85.ph = phi i64 [ 16, %bb.b ], [ 20, %bb.c ]
  %.sink83.ph = phi i64 [ 19, %bb.b ], [ 23, %bb.c ]
  %.sink.ph = phi i64 [ 17, %bb.b ], [ 21, %bb.c ]
  %.sink76.ph = phi i64 [ 18, %bb.b ], [ 22, %bb.c ]
  %i.j = ashr exact i32 %.sink115, 16
  store i32 %i.j, ptr %1, align 4, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink101 = phi i64 [ 12, %bb.b ], [ 16, %bb.c ], [ %.sink101.ph, %bb.d ]
  %.sink99 = phi i64 [ 15, %bb.b ], [ 19, %bb.c ], [ %.sink99.ph, %bb.d ]
  %.sink93 = phi i64 [ 13, %bb.b ], [ 17, %bb.c ], [ %.sink93.ph, %bb.d ]
  %.sink91 = phi i64 [ 14, %bb.b ], [ 18, %bb.c ], [ %.sink91.ph, %bb.d ]
  %.sink85 = phi i64 [ 16, %bb.b ], [ 20, %bb.c ], [ %.sink85.ph, %bb.d ]
  %.sink83 = phi i64 [ 19, %bb.b ], [ 23, %bb.c ], [ %.sink83.ph, %bb.d ]
  %.sink = phi i64 [ 17, %bb.b ], [ 21, %bb.c ], [ %.sink.ph, %bb.d ]
  %.sink76 = phi i64 [ 18, %bb.b ], [ 22, %bb.c ], [ %.sink76.ph, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load <4 x i8>, ptr %i.k, align 1, !tbaa !9
  %i.m = shufflevector <4 x i8> %i.l, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.m, ptr %i.k, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sink101 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sink99 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  store i8 %i.q, ptr %i.n, align 1, !tbaa !9
  store i8 %i.o, ptr %i.p, align 1, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.sink93 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sink91 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  store i8 %i.u, ptr %i.r, align 1, !tbaa !9
  store i8 %i.s, ptr %i.t, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sink85 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sink83 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  store i8 %i.y, ptr %i.v, align 1, !tbaa !9
  store i8 %i.w, ptr %i.x, align 1, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sink76 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !9
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse5bFile7swapDNAEPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(540) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #26
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %spec.select = select i1 %i.f, ptr %i.g, ptr %i.d ; 4 uses
  %i.h = load i32, ptr %spec.select, align 4, !tbaa !85 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %i.h)
  %.pre = load i32, ptr %spec.select, align 4, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %.pre, %bb.b ], [ %i.h, %bb.a ]
  %.075 = phi i32 [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.k = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %i.j)
  store i32 %i.k, ptr %spec.select, align 4, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 2 uses
  %i.m = icmp sgt i32 %.075, 0
  br i1 %i.m, label %.preheader90, label %._crit_edge

.preheader90:                                     ; preds = %bb.c, %.preheader90
  %.07492 = phi i32 [ %i.o, %.preheader90 ], [ 0, %bb.c ]
  %.07891 = phi ptr [ %i.n, %.preheader90 ], [ %i.l, %bb.c ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.07891)
  %scevgep = getelementptr i8, ptr %.07891, i64 %strlen
  %i.n = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  %i.o = add nuw nsw i32 %.07492, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %.075
  br i1 %exitcond.not, label %._crit_edge, label %.preheader90, !llvm.loop !128

._crit_edge:                                      ; preds = %.preheader90, %bb.c
  %.078.lcssa = phi ptr [ %i.l, %bb.c ], [ %i.n, %.preheader90 ]
  %i.p = ptrtoint ptr %.078.lcssa to i64
  %i.q = add i64 %i.p, 3
  %i.r = and i64 %i.q, -4
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !85   ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.v = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %i.u)
  %.pre124 = load i32, ptr %i.t, align 4, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre124, %bb.d ], [ %i.u, %._crit_edge ]
  %.176 = phi i32 [ %i.v, %bb.d ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.x = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %i.w)
  store i32 %i.x, ptr %i.t, align 4, !tbaa !85
  %i.y = icmp sgt i32 %.176, 0
  br i1 %i.y, label %.preheader.preheader, label %._crit_edge95

.preheader.preheader:                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.194 = phi i32 [ %i.ab, %.preheader ], [ 0, %.preheader.preheader ]
  %.28093 = phi ptr [ %i.aa, %.preheader ], [ %i.z, %.preheader.preheader ] ; 2 uses
  %strlen118 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.28093)
  %scevgep119 = getelementptr i8, ptr %.28093, i64 %strlen118
  %i.aa = getelementptr inbounds nuw i8, ptr %scevgep119, i64 1 ; 2 uses
  %i.ab = add nuw nsw i32 %.194, 1                ; 2 uses
  %exitcond120.not = icmp eq i32 %i.ab, %.176
  br i1 %exitcond120.not, label %.lr.ph.preheader, label %.preheader, !llvm.loop !129

._crit_edge95:                                    ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  br label %._crit_edge100

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = add i64 %i.ad, 3
  %i.af = and i64 %i.ae, -4
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.298 = phi i32 [ %i.ak, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.08297 = phi ptr [ %i.al, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 3 uses
  %i.ai = load i16, ptr %.08297, align 2, !tbaa !91
  %i.aj = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.ai)
  store i16 %i.aj, ptr %.08297, align 2, !tbaa !91
  %i.ak = add nuw nsw i32 %.298, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08297, i64 2 ; 2 uses
  %exitcond121.not = icmp eq i32 %i.ak, %.176
  br i1 %exitcond121.not, label %._crit_edge100, label %.lr.ph, !llvm.loop !130

._crit_edge100:                                   ; preds = %.lr.ph, %._crit_edge95
  %.082.lcssa = phi ptr [ %i.ac, %._crit_edge95 ], [ %i.al, %.lr.ph ]
  %i.am = shl i32 %.176, 1
  %i.an = and i32 %i.am, 2
  %spec.select89.idx = zext nneg i32 %i.an to i64
  %spec.select89 = getelementptr inbounds nuw i8, ptr %.082.lcssa, i64 %spec.select89.idx ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select89, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !85 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge100
  %i.aq = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %i.ap)
  %.pre125 = load i32, ptr %i.ao, align 4, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge100, %bb.f
  %i.ar = phi i32 [ %.pre125, %bb.f ], [ %i.ap, %._crit_edge100 ]
  %.277 = phi i32 [ %i.aq, %bb.f ], [ %i.ap, %._crit_edge100 ] ; 2 uses
  %i.as = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %i.ar)
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !85
  %i.at = icmp sgt i32 %.277, 0
  br i1 %i.at, label %.lr.ph113.preheader, label %._crit_edge114

.lr.ph113.preheader:                              ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select89, i64 8
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %._crit_edge108
  %.3111 = phi i32 [ %i.bd, %._crit_edge108 ], [ 0, %.lr.ph113.preheader ]
  %.284110 = phi ptr [ %.385.lcssa, %._crit_edge108 ], [ %i.au, %.lr.ph113.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.284110, i64 2 ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !91 ; 2 uses
  %i.ax = zext nneg i16 %i.aw to i32
  %i.ay = load i16, ptr %.284110, align 2, !tbaa !91
  %i.az = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.ay)
  store i16 %i.az, ptr %.284110, align 2, !tbaa !91
  %i.ba = load i16, ptr %i.av, align 2, !tbaa !91
  %i.bb = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.ba)
  store i16 %i.bb, ptr %i.av, align 2, !tbaa !91
  %.385102 = getelementptr inbounds nuw i8, ptr %.284110, i64 4 ; 2 uses
  %i.bc = icmp sgt i16 %i.aw, 0
  br i1 %i.bc, label %.lr.ph107, label %._crit_edge108

._crit_edge108:                                   ; preds = %.lr.ph107, %.lr.ph113
  %.385.lcssa = phi ptr [ %.385102, %.lr.ph113 ], [ %.385, %.lr.ph107 ]
  %i.bd = add nuw nsw i32 %.3111, 1               ; 2 uses
  %exitcond123.not = icmp eq i32 %i.bd, %.277
  br i1 %exitcond123.not, label %._crit_edge114, label %.lr.ph113, !llvm.loop !131

.lr.ph107:                                        ; preds = %.lr.ph113, %.lr.ph107
  %.385105 = phi ptr [ %.385, %.lr.ph107 ], [ %.385102, %.lr.ph113 ] ; 4 uses
  %.0104 = phi i32 [ %i.bj, %.lr.ph107 ], [ 0, %.lr.ph113 ]
  %.284.pn103 = phi ptr [ %.385105, %.lr.ph107 ], [ %.284110, %.lr.ph113 ]
  %i.be = load i16, ptr %.385105, align 2, !tbaa !91
  %i.bf = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.be)
  store i16 %i.bf, ptr %.385105, align 2, !tbaa !91
  %i.bg = getelementptr inbounds nuw i8, ptr %.284.pn103, i64 6 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !91
  %i.bi = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.bh)
  store i16 %i.bi, ptr %i.bg, align 2, !tbaa !91
  %i.bj = add nuw nsw i32 %.0104, 1               ; 2 uses
  %.385 = getelementptr inbounds nuw i8, ptr %.385105, i64 4 ; 2 uses
  %exitcond122.not = icmp eq i32 %i.bj, %i.ax
  br i1 %exitcond122.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !132

._crit_edge114:                                   ; preds = %._crit_edge108, %bb.g
  ret void
}

declare noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef) local_unnamed_addr #14

declare noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6bParse5bFile9writeFileEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(540) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !67
  %i.f = sext i32 %i.e to i64
  %i.g = tail call i64 @fwrite(ptr noundef %i.c, i64 noundef 1, i64 noundef %i.f, ptr noundef %i.a) ; 0 uses
  %i.h = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse5bFile7preSwapEv(ptr noundef nonnull align 8 dereferenceable(540) initializes((160, 164)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.bParse::bChunkInd", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9
  %i.e = icmp eq i8 %i.d, 86
  %. = select i1 %i.e, i8 118, i8 86
  store i8 %., ptr %i.c, align 1, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 12, ptr %i.f, align 8, !tbaa !57
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %i.k = call noundef i32 @_ZN6bParse5bFile12getNextBlockEPNS_9bChunkIndEPKci(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull %i.h, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.021 = phi ptr [ %i.h, %bb.a ], [ %i.aw, %bb.i ] ; 15 uses
  %.0 = phi i32 [ %i.k, %bb.a ], [ %i.ay, %bb.i ]
  %i.m = load i32, ptr %1, align 8, !tbaa !133
  switch i32 %i.m, label %bb.d [
    i32 1313164372, label %bb.c
    i32 1162893652, label %bb.c
    i32 1129469011, label %bb.c
    i32 1095648339, label %bb.c
    i32 826363460, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  tail call void @_ZN6bParse5bFile7swapDNAEPc(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %.021)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.i, align 8, !tbaa !66
  %i.o = tail call noundef i32 @_ZN6bParse10ChunkUtils9getOffsetEi(i32 noundef %i.n)
  %i.p = load i32, ptr %i.i, align 8, !tbaa !66
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %.021, align 4, !tbaa !124 ; 2 uses
  %i.s = and i32 %i.r, 65535
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %_ZN6bParse5bFile7swapLenEPc.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load i32, ptr %.021, align 8, !tbaa !126 ; 2 uses
  %i.v = and i32 %i.u, 65535
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %_ZN6bParse5bFile7swapLenEPc.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink115.i = phi i32 [ %i.r, %bb.e ], [ %i.u, %bb.f ]
  %.sink101.ph.i = phi i64 [ 12, %bb.e ], [ 16, %bb.f ]
  %.sink99.ph.i = phi i64 [ 15, %bb.e ], [ 19, %bb.f ]
  %.sink93.ph.i = phi i64 [ 13, %bb.e ], [ 17, %bb.f ]
  %.sink91.ph.i = phi i64 [ 14, %bb.e ], [ 18, %bb.f ]
  %.sink85.ph.i = phi i64 [ 16, %bb.e ], [ 20, %bb.f ]
  %.sink83.ph.i = phi i64 [ 19, %bb.e ], [ 23, %bb.f ]
  %.sink.ph.i = phi i64 [ 17, %bb.e ], [ 21, %bb.f ]
  %.sink76.ph.i = phi i64 [ 18, %bb.e ], [ 22, %bb.f ]
  %i.x = ashr exact i32 %.sink115.i, 16
  store i32 %i.x, ptr %.021, align 4, !tbaa !85
  br label %_ZN6bParse5bFile7swapLenEPc.exit

_ZN6bParse5bFile7swapLenEPc.exit:                 ; preds = %bb.e, %bb.f, %bb.g
  %.sink101.i = phi i64 [ 12, %bb.e ], [ 16, %bb.f ], [ %.sink101.ph.i, %bb.g ]
  %.sink99.i = phi i64 [ 15, %bb.e ], [ 19, %bb.f ], [ %.sink99.ph.i, %bb.g ]
  %.sink93.i = phi i64 [ 13, %bb.e ], [ 17, %bb.f ], [ %.sink93.ph.i, %bb.g ]
  %.sink91.i = phi i64 [ 14, %bb.e ], [ 18, %bb.f ], [ %.sink91.ph.i, %bb.g ]
  %.sink85.i = phi i64 [ 16, %bb.e ], [ 20, %bb.f ], [ %.sink85.ph.i, %bb.g ]
  %.sink83.i = phi i64 [ 19, %bb.e ], [ 23, %bb.f ], [ %.sink83.ph.i, %bb.g ]
  %.sink.i = phi i64 [ 17, %bb.e ], [ 21, %bb.f ], [ %.sink.ph.i, %bb.g ]
  %.sink76.i = phi i64 [ 18, %bb.e ], [ 22, %bb.f ], [ %.sink76.ph.i, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %.021, i64 4 ; 2 uses
  %i.z = load <4 x i8>, ptr %i.y, align 1, !tbaa !9
  %i.aa = shufflevector <4 x i8> %i.z, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.aa, ptr %i.y, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink101.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink99.i ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !9
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink93.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink91.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink85.i ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink83.i ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !9
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink.i ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink76.i ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !9
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !9
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !90
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6bParse5bFile7swapLenEPc.exit
  %i.at = sext i32 %i.o to i64
  %i.au = getelementptr inbounds i8, ptr %.021, i64 %i.at
  call void @_ZN6bParse5bFile4swapEPcRNS_9bChunkIndEb(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6bParse5bFile7swapLenEPc.exit
  %i.av = sext i32 %.0 to i64
  %i.aw = getelementptr inbounds i8, ptr %.021, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.i, align 8, !tbaa !66
  %i.ay = call noundef i32 @_ZN6bParse5bFile12getNextBlockEPNS_9bChunkIndEPKci(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %i.aw, i32 noundef %i.ax) ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %bb.b, !llvm.loop !134

.loopexit:                                        ; preds = %bb.i, %bb.c
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !66
  %storemerge23 = xor i32 %i.ba, 4
  store i32 %storemerge23, ptr %i.i, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN6bParse5bFile10readStructEPcRNS_9bChunkIndE(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.b3HashPtr, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6bParse5bFile4swapEPcRNS_9bChunkIndEb(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !90
  %i.i = tail call noundef zeroext i1 @_ZN6bParse4bDNA9flagEqualEi(ptr noundef nonnull align 8 dereferenceable(420) %i.f, i32 noundef %i.h)
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.k = load i32, ptr %i.g, align 8, !tbaa !90
  %i.l = tail call noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr noundef nonnull align 8 dereferenceable(420) %i.j, i32 noundef %i.k) ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.n = load i16, ptr %i.l, align 2, !tbaa !91
  %i.o = sext i16 %i.n to i32
  %i.p = tail call noundef ptr @_ZN6bParse4bDNA7getTypeEi(ptr noundef nonnull align 8 dereferenceable(420) %i.m, i32 noundef %i.o) ; 4 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.r = load i16, ptr %i.l, align 2, !tbaa !91
  %i.s = sext i16 %i.r to i32
  %i.t = tail call noundef signext i16 @_ZN6bParse4bDNA9getLengthEi(ptr noundef nonnull align 8 dereferenceable(420) %i.q, i32 noundef %i.s) ; 2 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.v = and i32 %i.u, 128
  %.not80 = icmp eq i32 %i.v, 0
  br i1 %.not80, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(23) @.str.8) #26
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp eq i16 %i.t, 20
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(20) @.str.9) #26
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !95 ; 6 uses
  %i.ad = shl nsw i32 %i.ac, 1
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #31 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i8 0, i64 %i.af, i1 false)
  %i.ah = icmp sgt i32 %i.ac, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ai = and i32 %i.u, 4
  %.not83 = icmp eq i32 %i.ai, 0
  br i1 %.not83, label %.lr.ph.split.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i32 %i.ac, 16
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <8 x i16>, ptr %i.ak, align 2, !tbaa !91 ; 2 uses
  %wide.load99 = load <8 x i16>, ptr %i.al, align 2, !tbaa !91 ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.aq = lshr <8 x i16> %wide.load99, splat (i16 8)
  %i.ar = shufflevector <8 x i16> %i.ap, <8 x i16> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i16> %i.ar to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.am, align 1, !tbaa !9
  %i.as = shufflevector <8 x i16> %i.aq, <8 x i16> %wide.load99, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec100 = trunc <16 x i16> %i.as to <16 x i8>
  store <16 x i8> %interleaved.vec100, ptr %i.ao, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.preheader, label %vec.epilog.ph, !prof !136

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index102
  %wide.load103 = load <4 x i16>, ptr %i.au, align 2, !tbaa !91 ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index102
  %i.aw = lshr <4 x i16> %wide.load103, splat (i16 8)
  %i.ax = shufflevector <4 x i16> %i.aw, <4 x i16> %wide.load103, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec104 = trunc <8 x i16> %i.ax to <8 x i8>
  store <8 x i8> %interleaved.vec104, ptr %i.av, align 1, !tbaa !9
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %n.vec101, %wide.trip.count
  br i1 %cmp.n106, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec101, %vec.epilog.middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.az = shl nuw i32 %i.ac, 1
  %i.ba = zext i32 %i.az to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ag, ptr align 2 %1, i64 %i.ba, i1 false), !tbaa !91
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.us.preheader, %bb.g
  %i.bb = load ptr, ptr %0, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
end_hunk_0
