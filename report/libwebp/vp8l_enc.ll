Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_enc?download=true
inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@EncodeStreamHook:bb.a
  %i.cx = load i32, ptr %i.bi, align 4, !tbaa !136
  %i.cy = icmp slt i32 %i.cx, 100                 ; 2 uses
  br i1 %i.cy, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cz = load i32, ptr %i.bb, align 8, !tbaa !133
  %.not169 = icmp eq i32 %i.cz, 0
  br i1 %.not169, label %bb.h, label %.critedge.thread382

.critedge.thread382:                              ; preds = %bb.g
  store i32 0, ptr %i.bj, align 8, !tbaa !20
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.da = load i32, ptr %i.bd, align 4, !tbaa !64
  %.not170 = icmp eq i32 %i.da, 0
  br i1 %.not170, label %bb.i, label %.thread387

.thread387:                                       ; preds = %bb.h
  store i32 0, ptr %i.bj, align 8, !tbaa !20
  br label %bb.az

bb.i:                                             ; preds = %bb.h
  %i.db = call fastcc i32 @AllocateTransformBuffer(ptr noundef nonnull %i.p, i32 noundef %i.af, i32 noundef %i.ah)
  %.not171 = icmp eq i32 %i.db, 0
  br i1 %.not171, label %MakeInputImageCopy.exit.thread258, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = load i32, ptr %i.bj, align 8, !tbaa !20
  %.not172 = icmp eq i32 %i.dc, 2
  br i1 %.not172, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load i32, ptr %i.bi, align 4, !tbaa !136
  %i.de = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.df = call i32 @VP8ApplyNearLossless(ptr noundef nonnull %i.l, i32 noundef %i.dd, ptr noundef %i.de) #7
  %.not173 = icmp eq i32 %i.df, 0
  br i1 %.not173, label %MakeInputImageCopy.exit.thread258.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.j, %bb.k
  %.ph = phi i32 [ 0, %bb.f ], [ 2, %bb.k ], [ 2, %bb.j ]
  %.pr = load i32, ptr %i.bb, align 8, !tbaa !133
  store i32 %.ph, ptr %i.bj, align 8, !tbaa !20
  %.not174 = icmp eq i32 %.pr, 0
  br i1 %.not174, label %bb.ay, label %bb.l

bb.l:                                             ; preds = %.critedge.thread382, %.critedge
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !38
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !19
  %i.dj = load i32, ptr %i.bn, align 4, !tbaa !30
  %i.dk = call i32 @PaletteSort(i32 noundef %i.dh, ptr noundef %i.di, ptr noundef nonnull %i.bm, i32 noundef %i.dj, ptr noundef nonnull %i.bo) #7
  %.not175 = icmp eq i32 %i.dk, 0
  br i1 %.not175, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = load ptr, ptr %i.bl, align 8, !tbaa !19
  br label %MakeInputImageCopy.exit.thread258.sink.split

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.dm = load i32, ptr %i.bn, align 4, !tbaa !30 ; 3 uses
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !41
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = icmp sgt i32 %i.dm, 17
  %or.cond.i = and i1 %i.ds, %i.dr
  %i.dt = select i1 %or.cond.i, i32 %i.dn, i32 %i.dm ; 2 uses
  %i.du = load i32, ptr %i.ap, align 8, !tbaa !62 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 31
  br i1 %i.dv, label %bb.o, label %VP8LPutBits.exit.i

bb.o:                                             ; preds = %bb.n
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.n) #7
  %.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !62
  br label %VP8LPutBits.exit.i

VP8LPutBits.exit.i:                               ; preds = %bb.o, %bb.n
  %i.dw = phi i32 [ %.pre.i.i, %bb.o ], [ %i.du, %bb.n ] ; 3 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = load i64, ptr %i.n, align 8, !tbaa !67
  %i.ea = or i64 %i.dy, %i.dz                     ; 2 uses
  store i64 %i.ea, ptr %i.n, align 8, !tbaa !67
  %i.eb = add nsw i32 %i.dw, 1                    ; 2 uses
  store i32 %i.eb, ptr %i.ap, align 8, !tbaa !62
  %i.ec = icmp sgt i32 %i.dw, 30
  br i1 %i.ec, label %bb.p, label %VP8LPutBits.exit29.i

bb.p:                                             ; preds = %VP8LPutBits.exit.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.n) #7
  %.pre.i28.i = load i32, ptr %i.ap, align 8, !tbaa !62
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !67
  br label %VP8LPutBits.exit29.i

VP8LPutBits.exit29.i:                             ; preds = %bb.p, %VP8LPutBits.exit.i
  %i.ed = phi i64 [ %.pre.i, %bb.p ], [ %i.ea, %VP8LPutBits.exit.i ]
  %i.ee = phi i32 [ %.pre.i28.i, %bb.p ], [ %i.eb, %VP8LPutBits.exit.i ] ; 3 uses
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl i64 3, %i.ef
  %i.eh = or i64 %i.eg, %i.ed                     ; 2 uses
  store i64 %i.eh, ptr %i.n, align 8, !tbaa !67
  %i.ei = add nsw i32 %i.ee, 2                    ; 2 uses
  store i32 %i.ei, ptr %i.ap, align 8, !tbaa !62
  %i.ej = add i32 %i.dt, -1                       ; 3 uses
  %i.ek = icmp sgt i32 %i.ee, 29
  br i1 %i.ek, label %bb.q, label %VP8LPutBits.exit31.i

bb.q:                                             ; preds = %VP8LPutBits.exit29.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.n) #7
  %.pre.i30.i = load i32, ptr %i.ap, align 8, !tbaa !62
  %.pre34.i = load i64, ptr %i.n, align 8, !tbaa !67
  br label %VP8LPutBits.exit31.i

VP8LPutBits.exit31.i:                             ; preds = %bb.q, %VP8LPutBits.exit29.i
  %i.el = phi i64 [ %.pre34.i, %bb.q ], [ %i.eh, %VP8LPutBits.exit29.i ]
  %i.em = phi i32 [ %.pre.i30.i, %bb.q ], [ %i.ei, %VP8LPutBits.exit29.i ] ; 2 uses
  %i.en = zext i32 %i.ej to i64                   ; 8 uses
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = shl i64 %i.en, %i.eo
  %i.eq = or i64 %i.ep, %i.el
  store i64 %i.eq, ptr %i.n, align 8, !tbaa !67
  %i.er = add nsw i32 %i.em, 8
  store i32 %i.er, ptr %i.ap, align 8, !tbaa !62
  %i.es = icmp sgt i32 %i.ej, 0
  br i1 %i.es, label %.lr.ph.i.preheader, label %EncodePalette.exit

.lr.ph.i.preheader:                               ; preds = %VP8LPutBits.exit31.i
  %min.iters.check = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader472, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.et = shl nuw nsw i64 %i.en, 2                ; 2 uses
  %scevgep453 = getelementptr i8, ptr %scevgep452, i64 %i.et
  %scevgep455 = getelementptr i8, ptr %scevgep454, i64 %i.et
  %bound0 = icmp ult ptr %scevgep, %scevgep455
  %bound1 = icmp ult ptr %i.bo, %scevgep453
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader472, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.en, 2147483640              ; 2 uses
  %i.eu = and i64 %i.en, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = sub i64 %i.en, %index                   ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ev ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -12
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ex, align 4, !tbaa !41, !alias.scope !137 ; 2 uses
  %wide.load456 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !41, !alias.scope !137 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ew, i64 -16
  %i.fa = getelementptr i8, ptr %i.ew, i64 -32
  %wide.load458 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !41, !alias.scope !137 ; 2 uses
  %wide.load459 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !41, !alias.scope !137 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ev ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -12
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -28
  %i.fe = or <4 x i32> %wide.load, splat (i32 16711680)
  %i.ff = and <4 x i32> %wide.load458, splat (i32 -16711936)
  %i.fg = sub <4 x i32> %i.fe, %i.ff
  %i.fh = and <4 x i32> %i.fg, splat (i32 -16711936)
  %i.fi = or <4 x i32> %wide.load, splat (i32 65280)
  %i.fj = and <4 x i32> %wide.load458, splat (i32 16711935)
  %i.fk = sub <4 x i32> %i.fi, %i.fj
  %i.fl = and <4 x i32> %i.fk, splat (i32 16711935)
  %reverse462 = or disjoint <4 x i32> %i.fh, %i.fl
  %i.fm = or <4 x i32> %wide.load456, splat (i32 16711680)
  %i.fn = and <4 x i32> %wide.load459, splat (i32 -16711936)
  %i.fo = sub <4 x i32> %i.fm, %i.fn
  %i.fp = and <4 x i32> %i.fo, splat (i32 -16711936)
  %i.fq = or <4 x i32> %wide.load456, splat (i32 65280)
  %i.fr = and <4 x i32> %wide.load459, splat (i32 16711935)
  %i.fs = sub <4 x i32> %i.fq, %i.fr
  %i.ft = and <4 x i32> %i.fs, splat (i32 16711935)
  %reverse463 = or disjoint <4 x i32> %i.fp, %i.ft
  store <4 x i32> %reverse462, ptr %i.fc, align 4, !tbaa !41, !alias.scope !138, !noalias !137
  store <4 x i32> %reverse463, ptr %i.fd, align 4, !tbaa !41, !alias.scope !138, !noalias !137
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.en
  br i1 %cmp.n, label %EncodePalette.exit, label %.lr.ph.i.preheader472

.lr.ph.i.preheader472:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.i.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader472, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader472 ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 -4
  %i.fx = load <2 x i32>, ptr %i.fw, align 4, !tbaa !41 ; 2 uses
  %i.fy = shufflevector <2 x i32> %i.fx, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.fz = or <2 x i32> %i.fy, <i32 16711680, i32 65280>
  %i.ga = shufflevector <2 x i32> %i.fx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gb = and <2 x i32> %i.ga, <i32 -16711936, i32 16711935>
  %i.gc = sub <2 x i32> %i.fz, %i.gb
  %i.gd = and <2 x i32> %i.gc, <i32 -16711936, i32 16711935> ; 2 uses
  %shift = shufflevector <2 x i32> %i.gd, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %i.gd, %shift
  %i.ge = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !41
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.gg = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.gg, label %.lr.ph.i, label %EncodePalette.exit, !llvm.loop !108

EncodePalette.exit:                               ; preds = %.lr.ph.i, %middle.block, %VP8LPutBits.exit31.i
  %i.gh = load i32, ptr %i.bo, align 8, !tbaa !41
  store i32 %i.gh, ptr %i.f, align 16, !tbaa !41
  %i.gi = load ptr, ptr %i.bl, align 8, !tbaa !19
  %i.gj = call fastcc range(i32 0, 2) i32 @EncodeImageNoHuffman(ptr noundef nonnull %i.n, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bg, i32 noundef %i.dt, i32 noundef 1, i32 noundef 20, i32 noundef range(i32 0, 2) %i.ad, ptr noundef %i.gi, i32 noundef range(i32 -24, 25) %.sext, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %.not176 = icmp eq i32 %i.gj, 0
  br i1 %.not176, label %MakeInputImageCopy.exit.thread258, label %bb.r

bb.r:                                             ; preds = %EncodePalette.exit
  %i.gk = load ptr, ptr %i.bl, align 8, !tbaa !19 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !25 ; 27 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !26 ; 15 uses
  %i.gp = load i32, ptr %i.bn, align 4, !tbaa !30 ; 7 uses
  %i.gq = icmp slt i32 %i.gp, 5
  %i.gr = icmp slt i32 %i.gp, 3
  %i.gs = select i1 %i.gr, i32 3, i32 2
  %i.gt = icmp slt i32 %i.gp, 17
  %i.gu = zext i1 %i.gt to i32
  %.0.i = select i1 %i.gq, i32 %i.gs, i32 %i.gu   ; 11 uses
  %i.gv = shl nuw nsw i32 1, %.0.i
  %i.gw = add i32 %i.gm, -1
  %i.gx = add i32 %i.gw, %i.gv
  %i.gy = lshr i32 %i.gx, %.0.i
  %i.gz = call fastcc i32 @AllocateTransformBuffer(ptr noundef nonnull %i.p, i32 noundef %i.gy, i32 noundef %i.go)
  %.not.i = icmp eq i32 %i.gz, 0
  br i1 %.not.i, label %MakeInputImageCopy.exit.thread258, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 72
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !39 ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gk, i64 80
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !40 ; 5 uses
  %i.he = load ptr, ptr %i.bk, align 8, !tbaa !66 ; 9 uses
  %i.hf = load i32, ptr %i.br, align 8, !tbaa !68 ; 5 uses
  %i.hg = sext i32 %i.gm to i64
  %i.hh = call ptr @WebPSafeMalloc(i64 noundef %i.hg, i64 noundef 1) #7 ; 22 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %ApplyPalette.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hj = icmp slt i32 %i.gp, 4
  br i1 %i.hj, label %bb.u, label %call.0.us.us.preheader.i.i

bb.u:                                             ; preds = %bb.t
  %i.hk = icmp sgt i32 %i.go, 0
  br i1 %i.hk, label %.preheader.lr.ph.i.i, label %ApplyPalette.exit.thread.i

.preheader.lr.ph.i.i:                             ; preds = %bb.u
  %i.hl = load i32, ptr %i.bo, align 8, !tbaa !41
  %i.hm = icmp sgt i32 %i.gm, 0
  %i.hn = zext i32 %i.hd to i64
  %i.ho = zext i32 %i.hf to i64
  %wide.trip.count384.i.i = zext nneg i32 %i.gm to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i
  %.0173317.i.i = phi i8 [ 0, %.preheader.lr.ph.i.i ], [ %.1174.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0176316.i.i = phi i32 [ %i.hl, %.preheader.lr.ph.i.i ], [ %.1177.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0181315.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.ib, %._crit_edge.i.i ]
  %.0190314.i.i = phi ptr [ %i.hb, %.preheader.lr.ph.i.i ], [ %i.hz, %._crit_edge.i.i ] ; 2 uses
  %.0195313.i.i = phi ptr [ %i.he, %.preheader.lr.ph.i.i ], [ %i.ia, %._crit_edge.i.i ] ; 2 uses
  br i1 %i.hm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %SearchColorGreedy.exit.i.i
  %indvars.iv382.i.i = phi i64 [ %indvars.iv.next383.i.i, %SearchColorGreedy.exit.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %.1174310.i.i = phi i8 [ %.2175.i.i, %SearchColorGreedy.exit.i.i ], [ %.0173317.i.i, %.preheader.i.i ]
  %.1177309.i.i = phi i32 [ %.2178.i.i, %SearchColorGreedy.exit.i.i ], [ %.0176316.i.i, %.preheader.i.i ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.0190314.i.i, i64 %indvars.iv382.i.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !41 ; 7 uses
  %.not218.i.i = icmp eq i32 %i.hq, %.1177309.i.i
  br i1 %.not218.i.i, label %SearchColorGreedy.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.hr = load i32, ptr %i.bo, align 8, !tbaa !41
  %i.hs = icmp eq i32 %i.hq, %i.hr
  br i1 %i.hs, label %SearchColorGreedy.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ht = load i32, ptr %i.bs, align 4, !tbaa !41
  %i.hu = icmp eq i32 %i.hq, %i.ht
  br i1 %i.hu, label %SearchColorGreedy.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hv = load i32, ptr %i.bt, align 8, !tbaa !41
  %i.hw = icmp eq i32 %i.hq, %i.hv
  %..i.i.i = select i1 %i.hw, i8 2, i8 3
  br label %SearchColorGreedy.exit.i.i

SearchColorGreedy.exit.i.i:                       ; preds = %bb.x, %bb.w, %bb.v, %.lr.ph.i.i
  %.2178.i.i = phi i32 [ %.1177309.i.i, %.lr.ph.i.i ], [ %i.hq, %bb.v ], [ %i.hq, %bb.w ], [ %i.hq, %bb.x ] ; 2 uses
  %.2175.i.i = phi i8 [ %.1174310.i.i, %.lr.ph.i.i ], [ 0, %bb.v ], [ 1, %bb.w ], [ %..i.i.i, %bb.x ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv382.i.i
  store i8 %.2175.i.i, ptr %i.hx, align 1, !tbaa !42
  %indvars.iv.next383.i.i = add nuw nsw i64 %indvars.iv382.i.i, 1 ; 2 uses
  %exitcond385.not.i.i = icmp eq i64 %indvars.iv.next383.i.i, %wide.trip.count384.i.i
  br i1 %exitcond385.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !109

._crit_edge.i.i:                                  ; preds = %SearchColorGreedy.exit.i.i, %.preheader.i.i
  %.1177.lcssa.i.i = phi i32 [ %.0176316.i.i, %.preheader.i.i ], [ %.2178.i.i, %SearchColorGreedy.exit.i.i ]
  %.1174.lcssa.i.i = phi i8 [ %.0173317.i.i, %.preheader.i.i ], [ %.2175.i.i, %SearchColorGreedy.exit.i.i ]
  %i.hy = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.hy(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.0195313.i.i) #7, !inline_history !110
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0190314.i.i, i64 %i.hn
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0195313.i.i, i64 %i.ho
  %i.ib = add nuw nsw i32 %.0181315.i.i, 1        ; 2 uses
  %exitcond386.not.i.i = icmp eq i32 %i.ib, %i.go
  br i1 %exitcond386.not.i.i, label %ApplyPalette.exit.thread.i, label %.preheader.i.i, !llvm.loop !111

call.0.us.us.preheader.i.i:                       ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  %wide.trip.count342.i.i = zext nneg i32 %i.gp to i64 ; 3 uses
  br label %call.0.us.us.i.i

call.0.us.us.i.i:                                 ; preds = %bb.y, %call.0.us.us.preheader.i.i
  %indvars.iv339.i.i = phi i64 [ 0, %call.0.us.us.preheader.i.i ], [ %indvars.iv.next340.i.i, %bb.y ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv339.i.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !41
  %i.ie = lshr i32 %i.id, 8
  %i.if = and i32 %i.ie, 255
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ig ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !71
  %.not.us.us.i.i = icmp eq i16 %i.ii, -1
  br i1 %.not.us.us.i.i, label %bb.y, label %call.1.us.us.preheader.1.i.i

bb.y:                                             ; preds = %call.0.us.us.i.i
  %i.ij = trunc i64 %indvars.iv339.i.i to i16
  store i16 %i.ij, ptr %i.ih, align 2, !tbaa !71
  %indvars.iv.next340.i.i = add nuw nsw i64 %indvars.iv339.i.i, 1 ; 2 uses
  %exitcond343.not.i.i = icmp eq i64 %indvars.iv.next340.i.i, %wide.trip.count342.i.i
  br i1 %exitcond343.not.i.i, label %bb.ab, label %call.0.us.us.i.i, !llvm.loop !112

call.1.us.us.preheader.1.i.i:                     ; preds = %call.0.us.us.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %call.1.us.us.1.i.i

call.1.us.us.1.i.i:                               ; preds = %bb.z, %call.1.us.us.preheader.1.i.i
  %indvars.iv334.1.i.i = phi i64 [ 0, %call.1.us.us.preheader.1.i.i ], [ %indvars.iv.next335.1.i.i, %bb.z ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv334.1.i.i
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !41
  %i.im = and i32 %i.il, 16777215
  %i.in = mul i32 %i.im, -72723225
  %i.io = lshr i32 %i.in, 21
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ip ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !71
  %.not.us243.us.1.i.i = icmp eq i16 %i.ir, -1
  br i1 %.not.us243.us.1.i.i, label %bb.z, label %call.2.us.us.preheader.2.i.i

bb.z:                                             ; preds = %call.1.us.us.1.i.i
  %i.is = trunc i64 %indvars.iv334.1.i.i to i16
  store i16 %i.is, ptr %i.iq, align 2, !tbaa !71
  %indvars.iv.next335.1.i.i = add nuw nsw i64 %indvars.iv334.1.i.i, 1 ; 2 uses
  %exitcond338.1.not.i.i = icmp eq i64 %indvars.iv.next335.1.i.i, %wide.trip.count342.i.i
  br i1 %exitcond338.1.not.i.i, label %bb.ah, label %call.1.us.us.1.i.i, !llvm.loop !112

call.2.us.us.preheader.2.i.i:                     ; preds = %call.1.us.us.1.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %call.2.us.us.2.i.i

call.2.us.us.2.i.i:                               ; preds = %bb.aa, %call.2.us.us.preheader.2.i.i
  %indvars.iv.2.i.i = phi i64 [ 0, %call.2.us.us.preheader.2.i.i ], [ %indvars.iv.next.2.i.i, %bb.aa ] ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.2.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !41
  %i.iv = and i32 %i.iu, 16777215
  %i.iw = mul i32 %i.iv, 2147483647
  %i.ix = lshr i32 %i.iw, 21
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.iy ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !71
  %.not.us249.us.2.i.i = icmp eq i16 %i.ja, -1
  br i1 %.not.us249.us.2.i.i, label %bb.aa, label %bb.as

bb.aa:                                            ; preds = %call.2.us.us.2.i.i
  %i.jb = trunc i64 %indvars.iv.2.i.i to i16
  store i16 %i.jb, ptr %i.iz, align 2, !tbaa !71
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, %wide.trip.count342.i.i
  br i1 %exitcond.2.not.i.i, label %.loopexit232.i.i, label %call.2.us.us.2.i.i, !llvm.loop !112

bb.ab:                                            ; preds = %bb.y
  %i.jc = icmp sgt i32 %i.go, 0
  br i1 %i.jc, label %.preheader226.lr.ph.i.i, label %.loopexit227.i.i

.preheader226.lr.ph.i.i:                          ; preds = %bb.ab
  %i.jd = icmp sgt i32 %i.gm, 0
  %i.je = zext i32 %i.hd to i64
  %i.jf = zext i32 %i.hf to i64                   ; 2 uses
  br i1 %i.jd, label %.preheader226.us.preheader.i.i, label %.preheader226.i.i
end_hunk_0
