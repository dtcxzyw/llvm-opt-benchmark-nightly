Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/vp8l_enc?download=true
inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@EncodeStreamHook:bb.a
  store i32 %spec.select417, ptr %i.be, align 4, !tbaa !83
  store i32 0, ptr %i.bf, align 8, !tbaa !84
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.bg) #7
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.bh) #7
  %i.cx = load i32, ptr %i.bi, align 4, !tbaa !85
  %i.cy = icmp slt i32 %i.cx, 100                 ; 2 uses
  br i1 %i.cy, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cz = load i32, ptr %i.bb, align 8, !tbaa !80
  %.not169 = icmp eq i32 %i.cz, 0
  br i1 %.not169, label %bb.h, label %.critedge.thread382

.critedge.thread382:                              ; preds = %bb.g
  store i32 0, ptr %i.bj, align 8, !tbaa !16
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.da = load i32, ptr %i.bd, align 4, !tbaa !82
  %.not170 = icmp eq i32 %i.da, 0
  br i1 %.not170, label %bb.i, label %.thread387

.thread387:                                       ; preds = %bb.h
  store i32 0, ptr %i.bj, align 8, !tbaa !16
  br label %bb.az

bb.i:                                             ; preds = %bb.h
  %i.db = call fastcc i32 @AllocateTransformBuffer(ptr noundef nonnull %i.p, i32 noundef %i.af, i32 noundef %i.ah)
  %.not171 = icmp eq i32 %i.db, 0
  br i1 %.not171, label %MakeInputImageCopy.exit.thread258, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = load i32, ptr %i.bj, align 8, !tbaa !16
  %.not172 = icmp eq i32 %i.dc, 2
  br i1 %.not172, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load i32, ptr %i.bi, align 4, !tbaa !85
  %i.de = load ptr, ptr %i.bk, align 8, !tbaa !86
  %i.df = call i32 @VP8ApplyNearLossless(ptr noundef nonnull %i.l, i32 noundef %i.dd, ptr noundef %i.de) #7
  %.not173 = icmp eq i32 %i.df, 0
  br i1 %.not173, label %MakeInputImageCopy.exit.thread258.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.j, %bb.k
  %.ph = phi i32 [ 0, %bb.f ], [ 2, %bb.k ], [ 2, %bb.j ]
  %.pr = load i32, ptr %i.bb, align 8, !tbaa !80
  store i32 %.ph, ptr %i.bj, align 8, !tbaa !16
  %.not174 = icmp eq i32 %.pr, 0
  br i1 %.not174, label %bb.ay, label %bb.l

bb.l:                                             ; preds = %.critedge.thread382, %.critedge
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !35
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.dj = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.dk = call i32 @PaletteSort(i32 noundef %i.dh, ptr noundef %i.di, ptr noundef nonnull %i.bm, i32 noundef %i.dj, ptr noundef nonnull %i.bo) #7
  %.not175 = icmp eq i32 %i.dk, 0
  br i1 %.not175, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = load ptr, ptr %i.bl, align 8, !tbaa !15
  br label %MakeInputImageCopy.exit.thread258.sink.split

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.dm = load i32, ptr %i.bn, align 4, !tbaa !26 ; 3 uses
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = icmp sgt i32 %i.dm, 17
  %or.cond.i = and i1 %i.ds, %i.dr
  %i.dt = select i1 %or.cond.i, i32 %i.dn, i32 %i.dm ; 2 uses
  %i.du = load i32, ptr %i.ap, align 8, !tbaa !76 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 31
  br i1 %i.dv, label %bb.o, label %VP8LPutBits.exit.i

bb.o:                                             ; preds = %bb.n
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !76
  br label %VP8LPutBits.exit.i

VP8LPutBits.exit.i:                               ; preds = %bb.o, %bb.n
  %i.dw = phi i32 [ %.pre.i.i, %bb.o ], [ %i.du, %bb.n ] ; 3 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = load i64, ptr %i.n, align 8, !tbaa !87
  %i.ea = or i64 %i.dy, %i.dz                     ; 2 uses
  store i64 %i.ea, ptr %i.n, align 8, !tbaa !87
  %i.eb = add nsw i32 %i.dw, 1                    ; 2 uses
  store i32 %i.eb, ptr %i.ap, align 8, !tbaa !76
  %i.ec = icmp sgt i32 %i.dw, 30
  br i1 %i.ec, label %bb.p, label %VP8LPutBits.exit29.i

bb.p:                                             ; preds = %VP8LPutBits.exit.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i28.i = load i32, ptr %i.ap, align 8, !tbaa !76
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !87
  br label %VP8LPutBits.exit29.i

VP8LPutBits.exit29.i:                             ; preds = %bb.p, %VP8LPutBits.exit.i
  %i.ed = phi i64 [ %.pre.i, %bb.p ], [ %i.ea, %VP8LPutBits.exit.i ]
  %i.ee = phi i32 [ %.pre.i28.i, %bb.p ], [ %i.eb, %VP8LPutBits.exit.i ] ; 3 uses
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl i64 3, %i.ef
  %i.eh = or i64 %i.eg, %i.ed                     ; 2 uses
  store i64 %i.eh, ptr %i.n, align 8, !tbaa !87
  %i.ei = add nsw i32 %i.ee, 2                    ; 2 uses
  store i32 %i.ei, ptr %i.ap, align 8, !tbaa !76
  %i.ej = add i32 %i.dt, -1                       ; 3 uses
  %i.ek = icmp sgt i32 %i.ee, 29
  br i1 %i.ek, label %bb.q, label %VP8LPutBits.exit31.i

bb.q:                                             ; preds = %VP8LPutBits.exit29.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i30.i = load i32, ptr %i.ap, align 8, !tbaa !76
  %.pre34.i = load i64, ptr %i.n, align 8, !tbaa !87
  br label %VP8LPutBits.exit31.i

VP8LPutBits.exit31.i:                             ; preds = %bb.q, %VP8LPutBits.exit29.i
  %i.el = phi i64 [ %.pre34.i, %bb.q ], [ %i.eh, %VP8LPutBits.exit29.i ]
  %i.em = phi i32 [ %.pre.i30.i, %bb.q ], [ %i.ei, %VP8LPutBits.exit29.i ] ; 2 uses
  %i.en = zext i32 %i.ej to i64                   ; 8 uses
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = shl i64 %i.en, %i.eo
  %i.eq = or i64 %i.ep, %i.el
  store i64 %i.eq, ptr %i.n, align 8, !tbaa !87
  %i.er = add nsw i32 %i.em, 8
  store i32 %i.er, ptr %i.ap, align 8, !tbaa !76
  %i.es = icmp sgt i32 %i.ej, 0
  br i1 %i.es, label %.lr.ph.i.preheader, label %EncodePalette.exit

.lr.ph.i.preheader:                               ; preds = %VP8LPutBits.exit31.i
  %min.iters.check = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader471, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.et = shl nuw nsw i64 %i.en, 2                ; 2 uses
  %scevgep453 = getelementptr i8, ptr %scevgep452, i64 %i.et
  %scevgep455 = getelementptr i8, ptr %scevgep454, i64 %i.et
  %bound0 = icmp ult ptr %scevgep, %scevgep455
  %bound1 = icmp ult ptr %i.bo, %scevgep453
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader471, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.ex, align 4, !tbaa !3, !alias.scope !88 ; 2 uses
  %wide.load456 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !3, !alias.scope !88 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ew, i64 -16
  %i.fa = getelementptr i8, ptr %i.ew, i64 -32
  %wide.load458 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !3, !alias.scope !88 ; 2 uses
  %wide.load459 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !3, !alias.scope !88 ; 2 uses
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
  store <4 x i32> %reverse462, ptr %i.fc, align 4, !tbaa !3, !alias.scope !91, !noalias !88
  store <4 x i32> %reverse463, ptr %i.fd, align 4, !tbaa !3, !alias.scope !91, !noalias !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.en
  br i1 %cmp.n, label %EncodePalette.exit, label %.lr.ph.i.preheader471

.lr.ph.i.preheader471:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.i.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader471, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader471 ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i ; 2 uses
  %7 = load i32, ptr %i.fv, align 4, !tbaa !3     ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -4
  %8 = load i32, ptr %i.fw, align 4, !tbaa !3     ; 2 uses
  %9 = or i32 %7, 16711680
  %10 = and i32 %8, -16711936
  %11 = sub i32 %9, %10
  %12 = or i32 %7, 65280
  %13 = and i32 %8, 16711935
  %14 = sub i32 %12, %13
  %15 = and i32 %11, -16711936
  %16 = and i32 %14, 16711935
  %17 = or disjoint i32 %15, %16
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %17, ptr %i.fx, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.fy = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.fy, label %.lr.ph.i, label %EncodePalette.exit, !llvm.loop !96

EncodePalette.exit:                               ; preds = %.lr.ph.i, %middle.block, %VP8LPutBits.exit31.i
  %i.fz = load i32, ptr %i.bo, align 8, !tbaa !3
  store i32 %i.fz, ptr %i.f, align 16, !tbaa !3
  %i.ga = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.gb = call fastcc range(i32 0, 2) i32 @EncodeImageNoHuffman(ptr noundef nonnull %i.n, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bg, i32 noundef %i.dt, i32 noundef 1, i32 noundef 20, i32 noundef range(i32 0, 2) %i.ad, ptr noundef %i.ga, i32 noundef range(i32 -24, 25) %.sext, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %.not176 = icmp eq i32 %i.gb, 0
  br i1 %.not176, label %MakeInputImageCopy.exit.thread258, label %bb.r

bb.r:                                             ; preds = %EncodePalette.exit
  %i.gc = load ptr, ptr %i.bl, align 8, !tbaa !15 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !18 ; 27 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !22 ; 15 uses
  %i.gh = load i32, ptr %i.bn, align 4, !tbaa !26 ; 7 uses
  %i.gi = icmp slt i32 %i.gh, 5
  %i.gj = icmp slt i32 %i.gh, 3
  %i.gk = select i1 %i.gj, i32 3, i32 2
  %i.gl = icmp slt i32 %i.gh, 17
  %i.gm = zext i1 %i.gl to i32
  %.0.i = select i1 %i.gi, i32 %i.gk, i32 %i.gm   ; 11 uses
  %i.gn = shl nuw nsw i32 1, %.0.i
  %i.go = add i32 %i.ge, -1
  %i.gp = add i32 %i.go, %i.gn
  %i.gq = lshr i32 %i.gp, %.0.i
  %i.gr = call fastcc i32 @AllocateTransformBuffer(ptr noundef nonnull %i.p, i32 noundef %i.gq, i32 noundef %i.gg)
  %.not.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i, label %MakeInputImageCopy.exit.thread258, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !36 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !37 ; 5 uses
  %i.gw = load ptr, ptr %i.bk, align 8, !tbaa !86 ; 9 uses
  %i.gx = load i32, ptr %i.br, align 8, !tbaa !97 ; 5 uses
  %i.gy = sext i32 %i.ge to i64
  %i.gz = call ptr @WebPSafeMalloc(i64 noundef %i.gy, i64 noundef 1) #7 ; 22 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %ApplyPalette.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hb = icmp slt i32 %i.gh, 4
  br i1 %i.hb, label %bb.u, label %call.0.us.us.preheader.i.i

bb.u:                                             ; preds = %bb.t
  %i.hc = icmp sgt i32 %i.gg, 0
  br i1 %i.hc, label %.preheader.lr.ph.i.i, label %ApplyPalette.exit.thread.i

.preheader.lr.ph.i.i:                             ; preds = %bb.u
  %i.hd = load i32, ptr %i.bo, align 8, !tbaa !3
  %i.he = icmp sgt i32 %i.ge, 0
  %i.hf = zext i32 %i.gv to i64
  %i.hg = zext i32 %i.gx to i64
  %wide.trip.count384.i.i = zext nneg i32 %i.ge to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i
  %.0173317.i.i = phi i8 [ 0, %.preheader.lr.ph.i.i ], [ %.1174.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0176316.i.i = phi i32 [ %i.hd, %.preheader.lr.ph.i.i ], [ %.1177.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0181315.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.ht, %._crit_edge.i.i ]
  %.0190314.i.i = phi ptr [ %i.gt, %.preheader.lr.ph.i.i ], [ %i.hr, %._crit_edge.i.i ] ; 2 uses
  %.0195313.i.i = phi ptr [ %i.gw, %.preheader.lr.ph.i.i ], [ %i.hs, %._crit_edge.i.i ] ; 2 uses
  br i1 %i.he, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %SearchColorGreedy.exit.i.i
  %indvars.iv382.i.i = phi i64 [ %indvars.iv.next383.i.i, %SearchColorGreedy.exit.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %.1174310.i.i = phi i8 [ %.2175.i.i, %SearchColorGreedy.exit.i.i ], [ %.0173317.i.i, %.preheader.i.i ]
  %.1177309.i.i = phi i32 [ %.2178.i.i, %SearchColorGreedy.exit.i.i ], [ %.0176316.i.i, %.preheader.i.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0190314.i.i, i64 %indvars.iv382.i.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3  ; 7 uses
  %.not218.i.i = icmp eq i32 %i.hi, %.1177309.i.i
  br i1 %.not218.i.i, label %SearchColorGreedy.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.hj = load i32, ptr %i.bo, align 8, !tbaa !3
  %i.hk = icmp eq i32 %i.hi, %i.hj
  br i1 %i.hk, label %SearchColorGreedy.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hl = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.hm = icmp eq i32 %i.hi, %i.hl
  br i1 %i.hm, label %SearchColorGreedy.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hn = load i32, ptr %i.bt, align 8, !tbaa !3
  %i.ho = icmp eq i32 %i.hi, %i.hn
  %..i.i.i = select i1 %i.ho, i8 2, i8 3
  br label %SearchColorGreedy.exit.i.i

SearchColorGreedy.exit.i.i:                       ; preds = %bb.x, %bb.w, %bb.v, %.lr.ph.i.i
  %.2178.i.i = phi i32 [ %.1177309.i.i, %.lr.ph.i.i ], [ %i.hi, %bb.v ], [ %i.hi, %bb.w ], [ %i.hi, %bb.x ] ; 2 uses
  %.2175.i.i = phi i8 [ %.1174310.i.i, %.lr.ph.i.i ], [ 0, %bb.v ], [ 1, %bb.w ], [ %..i.i.i, %bb.x ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv382.i.i
  store i8 %.2175.i.i, ptr %i.hp, align 1, !tbaa !40
  %indvars.iv.next383.i.i = add nuw nsw i64 %indvars.iv382.i.i, 1 ; 2 uses
  %exitcond385.not.i.i = icmp eq i64 %indvars.iv.next383.i.i, %wide.trip.count384.i.i
  br i1 %exitcond385.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !98

._crit_edge.i.i:                                  ; preds = %SearchColorGreedy.exit.i.i, %.preheader.i.i
  %.1177.lcssa.i.i = phi i32 [ %.0176316.i.i, %.preheader.i.i ], [ %.2178.i.i, %SearchColorGreedy.exit.i.i ]
  %.1174.lcssa.i.i = phi i8 [ %.0173317.i.i, %.preheader.i.i ], [ %.2175.i.i, %SearchColorGreedy.exit.i.i ]
  %i.hq = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !99
  call void %i.hq(ptr noundef nonnull %i.gz, i32 noundef %i.ge, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.0195313.i.i) #7, !inline_history !100
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.0190314.i.i, i64 %i.hf
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.0195313.i.i, i64 %i.hg
  %i.ht = add nuw nsw i32 %.0181315.i.i, 1        ; 2 uses
  %exitcond386.not.i.i = icmp eq i32 %i.ht, %i.gg
  br i1 %exitcond386.not.i.i, label %ApplyPalette.exit.thread.i, label %.preheader.i.i, !llvm.loop !101

call.0.us.us.preheader.i.i:                       ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  %wide.trip.count342.i.i = zext nneg i32 %i.gh to i64 ; 3 uses
  br label %call.0.us.us.i.i

call.1.us.us.preheader.1.i.i:                     ; preds = %call.0.us.us.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %call.1.us.us.1.i.i

call.1.us.us.1.i.i:                               ; preds = %bb.y, %call.1.us.us.preheader.1.i.i
  %indvars.iv334.1.i.i = phi i64 [ 0, %call.1.us.us.preheader.1.i.i ], [ %indvars.iv.next335.1.i.i, %bb.y ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv334.1.i.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = and i32 %i.hv, 16777215
  %i.hx = mul i32 %i.hw, -72723225
  %i.hy = lshr i32 %i.hx, 21
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hz ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !102
  %.not.us243.us.1.i.i = icmp eq i16 %i.ib, -1
  br i1 %.not.us243.us.1.i.i, label %bb.y, label %call.2.us.us.preheader.2.i.i

bb.y:                                             ; preds = %call.1.us.us.1.i.i
  %i.ic = trunc i64 %indvars.iv334.1.i.i to i16
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !102
  %indvars.iv.next335.1.i.i = add nuw nsw i64 %indvars.iv334.1.i.i, 1 ; 2 uses
  %exitcond338.1.not.i.i = icmp eq i64 %indvars.iv.next335.1.i.i, %wide.trip.count342.i.i
  br i1 %exitcond338.1.not.i.i, label %bb.ah, label %call.1.us.us.1.i.i, !llvm.loop !104

call.2.us.us.preheader.2.i.i:                     ; preds = %call.1.us.us.1.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %call.2.us.us.2.i.i

call.2.us.us.2.i.i:                               ; preds = %bb.z, %call.2.us.us.preheader.2.i.i
  %indvars.iv.2.i.i = phi i64 [ 0, %call.2.us.us.preheader.2.i.i ], [ %indvars.iv.next.2.i.i, %bb.z ] ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.2.i.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = and i32 %i.ie, 16777215
  %i.ig = mul i32 %i.if, 2147483647
  %i.ih = lshr i32 %i.ig, 21
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ii ; 2 uses
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !102
  %.not.us249.us.2.i.i = icmp eq i16 %i.ik, -1
  br i1 %.not.us249.us.2.i.i, label %bb.z, label %bb.as

bb.z:                                             ; preds = %call.2.us.us.2.i.i
  %i.il = trunc i64 %indvars.iv.2.i.i to i16
  store i16 %i.il, ptr %i.ij, align 2, !tbaa !102
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, %wide.trip.count342.i.i
  br i1 %exitcond.2.not.i.i, label %.loopexit232.i.i, label %call.2.us.us.2.i.i, !llvm.loop !104

call.0.us.us.i.i:                                 ; preds = %bb.aa, %call.0.us.us.preheader.i.i
  %indvars.iv339.i.i = phi i64 [ 0, %call.0.us.us.preheader.i.i ], [ %indvars.iv.next340.i.i, %bb.aa ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv339.i.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = lshr i32 %i.in, 8
  %i.ip = and i32 %i.io, 255
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !102
  %.not.us.us.i.i = icmp eq i16 %i.is, -1
  br i1 %.not.us.us.i.i, label %bb.aa, label %call.1.us.us.preheader.1.i.i

bb.aa:                                            ; preds = %call.0.us.us.i.i
  %i.it = trunc i64 %indvars.iv339.i.i to i16
  store i16 %i.it, ptr %i.ir, align 2, !tbaa !102
  %indvars.iv.next340.i.i = add nuw nsw i64 %indvars.iv339.i.i, 1 ; 2 uses
  %exitcond343.not.i.i = icmp eq i64 %indvars.iv.next340.i.i, %wide.trip.count342.i.i
  br i1 %exitcond343.not.i.i, label %bb.ab, label %call.0.us.us.i.i, !llvm.loop !104

bb.ab:                                            ; preds = %bb.aa
  %i.iu = icmp sgt i32 %i.gg, 0
  br i1 %i.iu, label %.preheader226.lr.ph.i.i, label %.loopexit227.i.i

.preheader226.lr.ph.i.i:                          ; preds = %bb.ab
  %i.iv = icmp sgt i32 %i.ge, 0
  %i.iw = zext i32 %i.gv to i64
  %i.ix = zext i32 %i.gx to i64                   ; 2 uses
  br i1 %i.iv, label %.preheader226.us.preheader.i.i, label %.preheader226.i.i

.preheader226.us.preheader.i.i:                   ; preds = %.preheader226.lr.ph.i.i
  %i.iy = load i32, ptr %i.bo, align 8, !tbaa !3
end_hunk_0
