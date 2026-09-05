Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_enc?download=true
inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@EncodeStreamHook:bb.a
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
  %i.fz = or <2 x i32> %i.fy, <i32 65280, i32 16711680>
  %i.ga = shufflevector <2 x i32> %i.fx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gb = and <2 x i32> %i.ga, <i32 16711935, i32 -16711936>
  %i.gc = sub <2 x i32> %i.fz, %i.gb
  %i.gd = and <2 x i32> %i.gc, <i32 16711935, i32 -16711936> ; 2 uses
  %shift = shufflevector <2 x i32> %i.gd, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %shift, %i.gd
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
  br label %call.1.us.us.1.i.i.a

call.1.us.us.1.i.i.a:                             ; preds = %bb.y, %call.0.us.us.preheader.i.i
  %indvars.iv334.1.i.i.a = phi i64 [ 0, %call.0.us.us.preheader.i.i ], [ %indvars.iv.next335.1.i.i.a, %bb.y ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv334.1.i.i.a
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !41
  %7 = lshr i32 %i.id, 8
  %8 = and i32 %7, 255
  %i.ie = zext nneg i32 %8 to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !71
  %.not.us243.us.1.i.i.a = icmp eq i16 %i.ig, -1
  br i1 %.not.us243.us.1.i.i.a, label %bb.y, label %call.2.us.us.preheader.2.i.i.a

bb.y:                                             ; preds = %call.1.us.us.1.i.i.a
  %i.ih = trunc i64 %indvars.iv334.1.i.i.a to i16
  store i16 %i.ih, ptr %i.if, align 2, !tbaa !71
  %indvars.iv.next335.1.i.i.a = add nuw nsw i64 %indvars.iv334.1.i.i.a, 1 ; 2 uses
  %exitcond338.1.not.i.i.a = icmp eq i64 %indvars.iv.next335.1.i.i.a, %wide.trip.count342.i.i
  br i1 %exitcond338.1.not.i.i.a, label %bb.ab, label %call.1.us.us.1.i.i.a, !llvm.loop !112

call.2.us.us.preheader.2.i.i.a:                   ; preds = %call.1.us.us.1.i.i.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %call.2.us.us.2.i.i.a

call.2.us.us.2.i.i.a:                             ; preds = %bb.z, %call.2.us.us.preheader.2.i.i.a
  %indvars.iv.2.i.i.a = phi i64 [ 0, %call.2.us.us.preheader.2.i.i.a ], [ %indvars.iv.next.2.i.i.a, %bb.z ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.2.i.i.a
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !41
  %i.ik = and i32 %i.ij, 16777215
  %i.il = mul i32 %i.ik, -72723225
  %i.im = lshr i32 %i.il, 21
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.in ; 2 uses
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !71
  %.not.us249.us.2.i.i.a = icmp eq i16 %i.ip, -1
  br i1 %.not.us249.us.2.i.i.a, label %bb.z, label %call.2.us.us.preheader.2.i.i

bb.z:                                             ; preds = %call.2.us.us.2.i.i.a
  %i.iq = trunc i64 %indvars.iv.2.i.i.a to i16
  store i16 %i.iq, ptr %i.io, align 2, !tbaa !71
  %indvars.iv.next.2.i.i.a = add nuw nsw i64 %indvars.iv.2.i.i.a, 1 ; 2 uses
  %exitcond.2.not.i.i.a = icmp eq i64 %indvars.iv.next.2.i.i.a, %wide.trip.count342.i.i
  br i1 %exitcond.2.not.i.i.a, label %bb.ah, label %call.2.us.us.2.i.i.a, !llvm.loop !112

call.2.us.us.preheader.2.i.i:                     ; preds = %call.2.us.us.2.i.i.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %call.0.us.us.i.i

call.0.us.us.i.i:                                 ; preds = %bb.aa, %call.2.us.us.preheader.2.i.i
  %indvars.iv339.i.i = phi i64 [ 0, %call.2.us.us.preheader.2.i.i ], [ %indvars.iv.next340.i.i, %bb.aa ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv339.i.i
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !41
  %9 = and i32 %i.is, 16777215
  %10 = mul i32 %9, 2147483647
  %11 = lshr i32 %10, 21
  %i.it = zext nneg i32 %11 to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.it ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !71
  %.not.us.us.i.i = icmp eq i16 %i.iv, -1
  br i1 %.not.us.us.i.i, label %bb.aa, label %bb.as

bb.aa:                                            ; preds = %call.0.us.us.i.i
  %i.iw = trunc i64 %indvars.iv339.i.i to i16
  store i16 %i.iw, ptr %i.iu, align 2, !tbaa !71
  %indvars.iv.next340.i.i = add nuw nsw i64 %indvars.iv339.i.i, 1 ; 2 uses
  %exitcond343.not.i.i = icmp eq i64 %indvars.iv.next340.i.i, %wide.trip.count342.i.i
  br i1 %exitcond343.not.i.i, label %.loopexit232.i.i, label %call.0.us.us.i.i, !llvm.loop !112

bb.ab:                                            ; preds = %bb.y
  %i.ix = icmp sgt i32 %i.go, 0
  br i1 %i.ix, label %.preheader226.lr.ph.i.i, label %.loopexit227.i.i

.preheader226.lr.ph.i.i:                          ; preds = %bb.ab
  %i.iy = icmp sgt i32 %i.gm, 0
  %i.iz = zext i32 %i.hd to i64
  %i.ja = zext i32 %i.hf to i64                   ; 2 uses
  br i1 %i.iy, label %.preheader226.us.preheader.i.i, label %.preheader226.i.i

.preheader226.us.preheader.i.i:                   ; preds = %.preheader226.lr.ph.i.i
  %i.jb = load i32, ptr %i.bo, align 8, !tbaa !41
  %wide.trip.count372.i.i = zext nneg i32 %i.gm to i64 ; 2 uses
  %xtraiter507 = and i64 %wide.trip.count372.i.i, 1
  %i.jc = icmp eq i32 %i.gm, 1
  %unroll_iter512 = and i64 %wide.trip.count372.i.i, 2147483646
  %lcmp.mod508.not = icmp eq i64 %xtraiter507, 0
  %lcmp.mod511 = trunc i32 %i.gm to i1
  br label %.preheader226.us.i.i

.preheader226.us.i.i:                             ; preds = %._crit_edge.us294.i.i, %.preheader226.us.preheader.i.i
  %.0162292.us.i.i = phi i8 [ %.2164.us.i.i.lcssa, %._crit_edge.us294.i.i ], [ 0, %.preheader226.us.preheader.i.i ] ; 2 uses
  %.0165291.us.i.i = phi i32 [ %.2167.us.i.i.lcssa, %._crit_edge.us294.i.i ], [ %i.jb, %.preheader226.us.preheader.i.i ] ; 2 uses
  %.1182290.us.i.i = phi i32 [ %i.kh, %._crit_edge.us294.i.i ], [ 0, %.preheader226.us.preheader.i.i ]
  %.1191289.us.i.i = phi ptr [ %i.kf, %._crit_edge.us294.i.i ], [ %i.hb, %.preheader226.us.preheader.i.i ] ; 4 uses
  %.1196288.us.i.i = phi ptr [ %i.kg, %._crit_edge.us294.i.i ], [ %i.he, %.preheader226.us.preheader.i.i ] ; 2 uses
  br i1 %i.jc, label %.epil.preheader506, label %.preheader226.us.i.i.new

.preheader226.us.i.i.new:                         ; preds = %.preheader226.us.i.i, %bb.af
  %indvars.iv370.i.i = phi i64 [ %indvars.iv.next371.i.i.1, %bb.af ], [ 0, %.preheader226.us.i.i ] ; 4 uses
  %.1163285.us.i.i = phi i8 [ %.2164.us.i.i.1, %bb.af ], [ %.0162292.us.i.i, %.preheader226.us.i.i ]
  %.1166284.us.i.i = phi i32 [ %.2167.us.i.i.1, %bb.af ], [ %.0165291.us.i.i, %.preheader226.us.i.i ] ; 2 uses
  %niter513 = phi i64 [ %niter513.next.1, %bb.af ], [ 0, %.preheader226.us.i.i ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.1191289.us.i.i, i64 %indvars.iv370.i.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !41 ; 3 uses
  %.not217.us.i.i = icmp eq i32 %i.je, %.1166284.us.i.i
  br i1 %.not217.us.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader226.us.i.i.new
  %i.jf = lshr i32 %i.je, 8
  %i.jg = and i32 %i.jf, 255
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.jh
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !71
  %i.jk = trunc i16 %i.jj to i8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader226.us.i.i.new
  %.2167.us.i.i = phi i32 [ %i.je, %bb.ac ], [ %.1166284.us.i.i, %.preheader226.us.i.i.new ] ; 2 uses
  %.2164.us.i.i = phi i8 [ %i.jk, %bb.ac ], [ %.1163285.us.i.i, %.preheader226.us.i.i.new ] ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv370.i.i
  store i8 %.2164.us.i.i, ptr %i.jl, align 1, !tbaa !42
  %indvars.iv.next371.i.i = or disjoint i64 %indvars.iv370.i.i, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.1191289.us.i.i, i64 %indvars.iv.next371.i.i
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !41 ; 3 uses
  %.not217.us.i.i.1 = icmp eq i32 %i.jn, %.2167.us.i.i
  br i1 %.not217.us.i.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jo = lshr i32 %i.jn, 8
  %i.jp = and i32 %i.jo, 255
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !71
  %i.jt = trunc i16 %i.js to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.2167.us.i.i.1 = phi i32 [ %i.jn, %bb.ae ], [ %.2167.us.i.i, %bb.ad ] ; 3 uses
  %.2164.us.i.i.1 = phi i8 [ %i.jt, %bb.ae ], [ %.2164.us.i.i, %bb.ad ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv.next371.i.i
  store i8 %.2164.us.i.i.1, ptr %i.ju, align 1, !tbaa !42
  %indvars.iv.next371.i.i.1 = add nuw nsw i64 %indvars.iv370.i.i, 2 ; 2 uses
  %niter513.next.1 = add i64 %niter513, 2         ; 2 uses
  %niter513.ncmp.1 = icmp eq i64 %niter513.next.1, %unroll_iter512
  br i1 %niter513.ncmp.1, label %._crit_edge.us294.i.i.unr-lcssa, label %.preheader226.us.i.i.new, !llvm.loop !113

._crit_edge.us294.i.i.unr-lcssa:                  ; preds = %bb.af
  br i1 %lcmp.mod508.not, label %._crit_edge.us294.i.i, label %.epil.preheader506

.epil.preheader506:                               ; preds = %._crit_edge.us294.i.i.unr-lcssa, %.preheader226.us.i.i
  %indvars.iv370.i.i.epil.init = phi i64 [ 0, %.preheader226.us.i.i ], [ %indvars.iv.next371.i.i.1, %._crit_edge.us294.i.i.unr-lcssa ] ; 2 uses
  %.1163285.us.i.i.epil.init = phi i8 [ %.0162292.us.i.i, %.preheader226.us.i.i ], [ %.2164.us.i.i.1, %._crit_edge.us294.i.i.unr-lcssa ]
  %.1166284.us.i.i.epil.init = phi i32 [ %.0165291.us.i.i, %.preheader226.us.i.i ], [ %.2167.us.i.i.1, %._crit_edge.us294.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod511)
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.1191289.us.i.i, i64 %indvars.iv370.i.i.epil.init
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !41 ; 3 uses
  %.not217.us.i.i.epil = icmp eq i32 %i.jw, %.1166284.us.i.i.epil.init
  br i1 %.not217.us.i.i.epil, label %._crit_edge.us294.i.i.epilog-lcssa, label %bb.ag

bb.ag:                                            ; preds = %.epil.preheader506
  %i.jx = lshr i32 %i.jw, 8
  %i.jy = and i32 %i.jx, 255
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !71
  %i.kc = trunc i16 %i.kb to i8
  br label %._crit_edge.us294.i.i.epilog-lcssa

._crit_edge.us294.i.i.epilog-lcssa:               ; preds = %bb.ag, %.epil.preheader506
  %.2167.us.i.i.epil = phi i32 [ %i.jw, %bb.ag ], [ %.1166284.us.i.i.epil.init, %.epil.preheader506 ]
  %.2164.us.i.i.epil = phi i8 [ %i.kc, %bb.ag ], [ %.1163285.us.i.i.epil.init, %.epil.preheader506 ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv370.i.i.epil.init
  store i8 %.2164.us.i.i.epil, ptr %i.kd, align 1, !tbaa !42
  br label %._crit_edge.us294.i.i

._crit_edge.us294.i.i:                            ; preds = %._crit_edge.us294.i.i.unr-lcssa, %._crit_edge.us294.i.i.epilog-lcssa
  %.2167.us.i.i.lcssa = phi i32 [ %.2167.us.i.i.1, %._crit_edge.us294.i.i.unr-lcssa ], [ %.2167.us.i.i.epil, %._crit_edge.us294.i.i.epilog-lcssa ]
  %.2164.us.i.i.lcssa = phi i8 [ %.2164.us.i.i.1, %._crit_edge.us294.i.i.unr-lcssa ], [ %.2164.us.i.i.epil, %._crit_edge.us294.i.i.epilog-lcssa ]
  %i.ke = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.ke(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.1196288.us.i.i) #7, !inline_history !110
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.1191289.us.i.i, i64 %i.iz
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.1196288.us.i.i, i64 %i.ja
  %i.kh = add nuw nsw i32 %.1182290.us.i.i, 1     ; 2 uses
  %exitcond374.not.i.i = icmp eq i32 %i.kh, %i.go
  br i1 %exitcond374.not.i.i, label %.loopexit227.i.i, label %.preheader226.us.i.i, !llvm.loop !114

.preheader226.i.i:                                ; preds = %.preheader226.lr.ph.i.i, %.preheader226.i.i
  %.1182290.i.i = phi i32 [ %i.kk, %.preheader226.i.i ], [ 0, %.preheader226.lr.ph.i.i ]
  %.1196288.i.i = phi ptr [ %i.kj, %.preheader226.i.i ], [ %i.he, %.preheader226.lr.ph.i.i ] ; 2 uses
  %i.ki = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.ki(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.1196288.i.i) #7, !inline_history !110
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.1196288.i.i, i64 %i.ja
  %i.kk = add nuw nsw i32 %.1182290.i.i, 1        ; 2 uses
  %exitcond369.not.i.i = icmp eq i32 %i.kk, %i.go
  br i1 %exitcond369.not.i.i, label %.loopexit227.i.i, label %.preheader226.i.i, !llvm.loop !114

bb.ah:                                            ; preds = %bb.z
  %i.kl = icmp sgt i32 %i.go, 0
  br i1 %i.kl, label %.preheader228.lr.ph.i.i, label %.loopexit227.i.i

.preheader228.lr.ph.i.i:                          ; preds = %bb.ah
  %i.km = icmp sgt i32 %i.gm, 0
  %i.kn = zext i32 %i.hd to i64
  %i.ko = zext i32 %i.hf to i64                   ; 2 uses
  br i1 %i.km, label %.preheader228.us.preheader.i.i, label %.preheader228.i.i

.preheader228.us.preheader.i.i:                   ; preds = %.preheader228.lr.ph.i.i
  %i.kp = load i32, ptr %i.bo, align 8, !tbaa !41
  %wide.trip.count366.i.i = zext nneg i32 %i.gm to i64 ; 2 uses
  %xtraiter499 = and i64 %wide.trip.count366.i.i, 1
  %i.kq = icmp eq i32 %i.gm, 1
  %unroll_iter504 = and i64 %wide.trip.count366.i.i, 2147483646
  %lcmp.mod500.not = icmp eq i64 %xtraiter499, 0
  %lcmp.mod503 = trunc i32 %i.gm to i1
  br label %.preheader228.us.i.i

.preheader228.us.i.i:                             ; preds = %._crit_edge.us282.i.i, %.preheader228.us.preheader.i.i
  %.0156280.us.i.i = phi i8 [ %.2158.us.i.i.lcssa, %._crit_edge.us282.i.i ], [ 0, %.preheader228.us.preheader.i.i ] ; 2 uses
  %.0159279.us.i.i = phi i32 [ %.2161.us.i.i.lcssa, %._crit_edge.us282.i.i ], [ %i.kp, %.preheader228.us.preheader.i.i ] ; 2 uses
  %.2183278.us.i.i = phi i32 [ %i.ly, %._crit_edge.us282.i.i ], [ 0, %.preheader228.us.preheader.i.i ]
  %.2192277.us.i.i = phi ptr [ %i.lw, %._crit_edge.us282.i.i ], [ %i.hb, %.preheader228.us.preheader.i.i ] ; 4 uses
  %.2197276.us.i.i = phi ptr [ %i.lx, %._crit_edge.us282.i.i ], [ %i.he, %.preheader228.us.preheader.i.i ] ; 2 uses
  br i1 %i.kq, label %.epil.preheader498, label %.preheader228.us.i.i.new

.preheader228.us.i.i.new:                         ; preds = %.preheader228.us.i.i, %bb.al
  %indvars.iv364.i.i = phi i64 [ %indvars.iv.next365.i.i.1, %bb.al ], [ 0, %.preheader228.us.i.i ] ; 4 uses
  %.1157273.us.i.i = phi i8 [ %.2158.us.i.i.1, %bb.al ], [ %.0156280.us.i.i, %.preheader228.us.i.i ]
  %.1160272.us.i.i = phi i32 [ %.2161.us.i.i.1, %bb.al ], [ %.0159279.us.i.i, %.preheader228.us.i.i ] ; 2 uses
  %niter505 = phi i64 [ %niter505.next.1, %bb.al ], [ 0, %.preheader228.us.i.i ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.2192277.us.i.i, i64 %indvars.iv364.i.i
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !41 ; 3 uses
  %.not216.us.i.i = icmp eq i32 %i.ks, %.1160272.us.i.i
  br i1 %.not216.us.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader228.us.i.i.new
  %i.kt = and i32 %i.ks, 16777215
  %i.ku = mul i32 %i.kt, -72723225
  %i.kv = lshr i32 %i.ku, 21
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !71
  %i.kz = trunc i16 %i.ky to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.preheader228.us.i.i.new
  %.2161.us.i.i = phi i32 [ %i.ks, %bb.ai ], [ %.1160272.us.i.i, %.preheader228.us.i.i.new ] ; 2 uses
  %.2158.us.i.i = phi i8 [ %i.kz, %bb.ai ], [ %.1157273.us.i.i, %.preheader228.us.i.i.new ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv364.i.i
  store i8 %.2158.us.i.i, ptr %i.la, align 1, !tbaa !42
  %indvars.iv.next365.i.i = or disjoint i64 %indvars.iv364.i.i, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.2192277.us.i.i, i64 %indvars.iv.next365.i.i
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !41 ; 3 uses
  %.not216.us.i.i.1 = icmp eq i32 %i.lc, %.2161.us.i.i
  br i1 %.not216.us.i.i.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ld = and i32 %i.lc, 16777215
  %i.le = mul i32 %i.ld, -72723225
  %i.lf = lshr i32 %i.le, 21
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !71
  %i.lj = trunc i16 %i.li to i8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.2161.us.i.i.1 = phi i32 [ %i.lc, %bb.ak ], [ %.2161.us.i.i, %bb.aj ] ; 3 uses
  %.2158.us.i.i.1 = phi i8 [ %i.lj, %bb.ak ], [ %.2158.us.i.i, %bb.aj ] ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv.next365.i.i
  store i8 %.2158.us.i.i.1, ptr %i.lk, align 1, !tbaa !42
  %indvars.iv.next365.i.i.1 = add nuw nsw i64 %indvars.iv364.i.i, 2 ; 2 uses
  %niter505.next.1 = add i64 %niter505, 2         ; 2 uses
  %niter505.ncmp.1 = icmp eq i64 %niter505.next.1, %unroll_iter504
  br i1 %niter505.ncmp.1, label %._crit_edge.us282.i.i.unr-lcssa, label %.preheader228.us.i.i.new, !llvm.loop !115

._crit_edge.us282.i.i.unr-lcssa:                  ; preds = %bb.al
  br i1 %lcmp.mod500.not, label %._crit_edge.us282.i.i, label %.epil.preheader498

.epil.preheader498:                               ; preds = %._crit_edge.us282.i.i.unr-lcssa, %.preheader228.us.i.i
  %indvars.iv364.i.i.epil.init = phi i64 [ 0, %.preheader228.us.i.i ], [ %indvars.iv.next365.i.i.1, %._crit_edge.us282.i.i.unr-lcssa ] ; 2 uses
  %.1157273.us.i.i.epil.init = phi i8 [ %.0156280.us.i.i, %.preheader228.us.i.i ], [ %.2158.us.i.i.1, %._crit_edge.us282.i.i.unr-lcssa ]
  %.1160272.us.i.i.epil.init = phi i32 [ %.0159279.us.i.i, %.preheader228.us.i.i ], [ %.2161.us.i.i.1, %._crit_edge.us282.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod503)
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.2192277.us.i.i, i64 %indvars.iv364.i.i.epil.init
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !41 ; 3 uses
  %.not216.us.i.i.epil = icmp eq i32 %i.lm, %.1160272.us.i.i.epil.init
  br i1 %.not216.us.i.i.epil, label %._crit_edge.us282.i.i.epilog-lcssa, label %bb.am

bb.am:                                            ; preds = %.epil.preheader498
  %i.ln = and i32 %i.lm, 16777215
  %i.lo = mul i32 %i.ln, -72723225
  %i.lp = lshr i32 %i.lo, 21
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.lq
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !71
  %i.lt = trunc i16 %i.ls to i8
  br label %._crit_edge.us282.i.i.epilog-lcssa

._crit_edge.us282.i.i.epilog-lcssa:               ; preds = %bb.am, %.epil.preheader498
  %.2161.us.i.i.epil = phi i32 [ %i.lm, %bb.am ], [ %.1160272.us.i.i.epil.init, %.epil.preheader498 ]
  %.2158.us.i.i.epil = phi i8 [ %i.lt, %bb.am ], [ %.1157273.us.i.i.epil.init, %.epil.preheader498 ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv364.i.i.epil.init
  store i8 %.2158.us.i.i.epil, ptr %i.lu, align 1, !tbaa !42
  br label %._crit_edge.us282.i.i

._crit_edge.us282.i.i:                            ; preds = %._crit_edge.us282.i.i.unr-lcssa, %._crit_edge.us282.i.i.epilog-lcssa
  %.2161.us.i.i.lcssa = phi i32 [ %.2161.us.i.i.1, %._crit_edge.us282.i.i.unr-lcssa ], [ %.2161.us.i.i.epil, %._crit_edge.us282.i.i.epilog-lcssa ]
  %.2158.us.i.i.lcssa = phi i8 [ %.2158.us.i.i.1, %._crit_edge.us282.i.i.unr-lcssa ], [ %.2158.us.i.i.epil, %._crit_edge.us282.i.i.epilog-lcssa ]
  %i.lv = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.lv(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.2197276.us.i.i) #7, !inline_history !110
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.2192277.us.i.i, i64 %i.kn
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.2197276.us.i.i, i64 %i.ko
  %i.ly = add nuw nsw i32 %.2183278.us.i.i, 1     ; 2 uses
  %exitcond368.not.i.i = icmp eq i32 %i.ly, %i.go
  br i1 %exitcond368.not.i.i, label %.loopexit227.i.i, label %.preheader228.us.i.i, !llvm.loop !116

.preheader228.i.i:                                ; preds = %.preheader228.lr.ph.i.i, %.preheader228.i.i
  %.2183278.i.i = phi i32 [ %i.mb, %.preheader228.i.i ], [ 0, %.preheader228.lr.ph.i.i ]
  %.2197276.i.i = phi ptr [ %i.ma, %.preheader228.i.i ], [ %i.he, %.preheader228.lr.ph.i.i ] ; 2 uses
  %i.lz = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.lz(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.2197276.i.i) #7, !inline_history !110
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.2197276.i.i, i64 %i.ko
  %i.mb = add nuw nsw i32 %.2183278.i.i, 1        ; 2 uses
  %exitcond363.not.i.i = icmp eq i32 %i.mb, %i.go
  br i1 %exitcond363.not.i.i, label %.loopexit227.i.i, label %.preheader228.i.i, !llvm.loop !116

.loopexit232.i.i:                                 ; preds = %bb.aa
  %i.mc = icmp sgt i32 %i.go, 0
  br i1 %i.mc, label %.preheader230.lr.ph.i.i, label %.loopexit227.i.i

.preheader230.lr.ph.i.i:                          ; preds = %.loopexit232.i.i
  %i.md = icmp sgt i32 %i.gm, 0
  %i.me = zext i32 %i.hd to i64
  %i.mf = zext i32 %i.hf to i64                   ; 2 uses
  br i1 %i.md, label %.preheader230.us.preheader.i.i, label %.preheader230.i.i

.preheader230.us.preheader.i.i:                   ; preds = %.preheader230.lr.ph.i.i
  %i.mg = load i32, ptr %i.bo, align 8, !tbaa !41
  %wide.trip.count360.i.i = zext nneg i32 %i.gm to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count360.i.i, 1
  %i.mh = icmp eq i32 %i.gm, 1
  %unroll_iter = and i64 %wide.trip.count360.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod497 = trunc i32 %i.gm to i1
  br label %.preheader230.us.i.i

.preheader230.us.i.i:                             ; preds = %._crit_edge.us.i.i, %.preheader230.us.preheader.i.i
  %.0150269.us.i.i = phi i8 [ %.2152.us.i.i.lcssa, %._crit_edge.us.i.i ], [ 0, %.preheader230.us.preheader.i.i ] ; 2 uses
  %.0153268.us.i.i = phi i32 [ %.2155.us.i.i.lcssa, %._crit_edge.us.i.i ], [ %i.mg, %.preheader230.us.preheader.i.i ] ; 2 uses
  %.3267.us.i.i = phi i32 [ %i.np, %._crit_edge.us.i.i ], [ 0, %.preheader230.us.preheader.i.i ]
  %.3193266.us.i.i = phi ptr [ %i.nn, %._crit_edge.us.i.i ], [ %i.hb, %.preheader230.us.preheader.i.i ] ; 4 uses
  %.3198265.us.i.i = phi ptr [ %i.no, %._crit_edge.us.i.i ], [ %i.he, %.preheader230.us.preheader.i.i ] ; 2 uses
  br i1 %i.mh, label %.epil.preheader, label %.preheader230.us.i.i.new

.preheader230.us.i.i.new:                         ; preds = %.preheader230.us.i.i, %bb.aq
  %indvars.iv358.i.i = phi i64 [ %indvars.iv.next359.i.i.1, %bb.aq ], [ 0, %.preheader230.us.i.i ] ; 4 uses
  %.1151262.us.i.i = phi i8 [ %.2152.us.i.i.1, %bb.aq ], [ %.0150269.us.i.i, %.preheader230.us.i.i ]
  %.1154261.us.i.i = phi i32 [ %.2155.us.i.i.1, %bb.aq ], [ %.0153268.us.i.i, %.preheader230.us.i.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.aq ], [ 0, %.preheader230.us.i.i ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.3193266.us.i.i, i64 %indvars.iv358.i.i
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !41 ; 3 uses
  %.not215.us.i.i = icmp eq i32 %i.mj, %.1154261.us.i.i
  br i1 %.not215.us.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader230.us.i.i.new
  %i.mk = and i32 %i.mj, 16777215
  %i.ml = mul i32 %i.mk, 2147483647
  %i.mm = lshr i32 %i.ml, 21
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !71
  %i.mq = trunc i16 %i.mp to i8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.preheader230.us.i.i.new
  %.2155.us.i.i = phi i32 [ %i.mj, %bb.an ], [ %.1154261.us.i.i, %.preheader230.us.i.i.new ] ; 2 uses
  %.2152.us.i.i = phi i8 [ %i.mq, %bb.an ], [ %.1151262.us.i.i, %.preheader230.us.i.i.new ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv358.i.i
  store i8 %.2152.us.i.i, ptr %i.mr, align 1, !tbaa !42
  %indvars.iv.next359.i.i = or disjoint i64 %indvars.iv358.i.i, 1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.3193266.us.i.i, i64 %indvars.iv.next359.i.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !41 ; 3 uses
  %.not215.us.i.i.1 = icmp eq i32 %i.mt, %.2155.us.i.i
  br i1 %.not215.us.i.i.1, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mu = and i32 %i.mt, 16777215
  %i.mv = mul i32 %i.mu, 2147483647
  %i.mw = lshr i32 %i.mv, 21
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !71
  %i.na = trunc i16 %i.mz to i8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2155.us.i.i.1 = phi i32 [ %i.mt, %bb.ap ], [ %.2155.us.i.i, %bb.ao ] ; 3 uses
  %.2152.us.i.i.1 = phi i8 [ %i.na, %bb.ap ], [ %.2152.us.i.i, %bb.ao ] ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv.next359.i.i
  store i8 %.2152.us.i.i.1, ptr %i.nb, align 1, !tbaa !42
  %indvars.iv.next359.i.i.1 = add nuw nsw i64 %indvars.iv358.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader230.us.i.i.new, !llvm.loop !117

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %bb.aq
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader230.us.i.i
  %indvars.iv358.i.i.epil.init = phi i64 [ 0, %.preheader230.us.i.i ], [ %indvars.iv.next359.i.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.1151262.us.i.i.epil.init = phi i8 [ %.0150269.us.i.i, %.preheader230.us.i.i ], [ %.2152.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ]
  %.1154261.us.i.i.epil.init = phi i32 [ %.0153268.us.i.i, %.preheader230.us.i.i ], [ %.2155.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod497)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.3193266.us.i.i, i64 %indvars.iv358.i.i.epil.init
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !41 ; 3 uses
  %.not215.us.i.i.epil = icmp eq i32 %i.nd, %.1154261.us.i.i.epil.init
  br i1 %.not215.us.i.i.epil, label %._crit_edge.us.i.i.epilog-lcssa, label %bb.ar

bb.ar:                                            ; preds = %.epil.preheader
  %i.ne = and i32 %i.nd, 16777215
  %i.nf = mul i32 %i.ne, 2147483647
  %i.ng = lshr i32 %i.nf, 21
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !71
  %i.nk = trunc i16 %i.nj to i8
  br label %._crit_edge.us.i.i.epilog-lcssa

._crit_edge.us.i.i.epilog-lcssa:                  ; preds = %bb.ar, %.epil.preheader
  %.2155.us.i.i.epil = phi i32 [ %i.nd, %bb.ar ], [ %.1154261.us.i.i.epil.init, %.epil.preheader ]
  %.2152.us.i.i.epil = phi i8 [ %i.nk, %bb.ar ], [ %.1151262.us.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv358.i.i.epil.init
  store i8 %.2152.us.i.i.epil, ptr %i.nl, align 1, !tbaa !42
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %._crit_edge.us.i.i.epilog-lcssa
  %.2155.us.i.i.lcssa = phi i32 [ %.2155.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ], [ %.2155.us.i.i.epil, %._crit_edge.us.i.i.epilog-lcssa ]
  %.2152.us.i.i.lcssa = phi i8 [ %.2152.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ], [ %.2152.us.i.i.epil, %._crit_edge.us.i.i.epilog-lcssa ]
  %i.nm = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.nm(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.3198265.us.i.i) #7, !inline_history !110
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.3193266.us.i.i, i64 %i.me
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.3198265.us.i.i, i64 %i.mf
  %i.np = add nuw nsw i32 %.3267.us.i.i, 1        ; 2 uses
  %exitcond362.not.i.i = icmp eq i32 %i.np, %i.go
  br i1 %exitcond362.not.i.i, label %.loopexit227.i.i, label %.preheader230.us.i.i, !llvm.loop !118

.preheader230.i.i:                                ; preds = %.preheader230.lr.ph.i.i, %.preheader230.i.i
  %.3267.i.i = phi i32 [ %i.ns, %.preheader230.i.i ], [ 0, %.preheader230.lr.ph.i.i ]
  %.3198265.i.i = phi ptr [ %i.nr, %.preheader230.i.i ], [ %i.he, %.preheader230.lr.ph.i.i ] ; 2 uses
  %i.nq = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.nq(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.3198265.i.i) #7, !inline_history !110
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.3198265.i.i, i64 %i.mf
  %i.ns = add nuw nsw i32 %.3267.i.i, 1           ; 2 uses
  %exitcond357.not.i.i = icmp eq i32 %i.ns, %i.go
  br i1 %exitcond357.not.i.i, label %.loopexit227.i.i, label %.preheader230.i.i, !llvm.loop !118

bb.as:                                            ; preds = %call.0.us.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @PrepareMapToPalette(ptr noundef nonnull %i.bo, i32 noundef %i.gp, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #7
  %i.nt = icmp sgt i32 %i.go, 0
  br i1 %i.nt, label %.preheader225.lr.ph.i.i, label %._crit_edge305.i.i

.preheader225.lr.ph.i.i:                          ; preds = %bb.as
  %i.nu = icmp sgt i32 %i.gm, 0
  %i.nv = zext i32 %i.hd to i64
  %i.nw = zext i32 %i.hf to i64                   ; 2 uses
  br i1 %i.nu, label %.preheader225.us.preheader.i.i, label %.preheader225.i.i

.preheader225.us.preheader.i.i:                   ; preds = %.preheader225.lr.ph.i.i
  %i.nx = load i32, ptr %i.bo, align 8, !tbaa !41
  %wide.trip.count379.i.i = zext nneg i32 %i.gm to i64
  br label %.preheader225.us.i.i

.preheader225.us.i.i:                             ; preds = %._crit_edge.us307.i.i, %.preheader225.us.preheader.i.i
  %.0304.us.i.i = phi i32 [ %.2.us.i.i, %._crit_edge.us307.i.i ], [ 0, %.preheader225.us.preheader.i.i ]
  %.0147303.us.i.i = phi i32 [ %.2149.us.i.i, %._crit_edge.us307.i.i ], [ %i.nx, %.preheader225.us.preheader.i.i ]
  %.4302.us.i.i = phi i32 [ %i.oj, %._crit_edge.us307.i.i ], [ 0, %.preheader225.us.preheader.i.i ]
  %.4194301.us.i.i = phi ptr [ %i.oh, %._crit_edge.us307.i.i ], [ %i.hb, %.preheader225.us.preheader.i.i ] ; 2 uses
  %.4199300.us.i.i = phi ptr [ %i.oi, %._crit_edge.us307.i.i ], [ %i.he, %.preheader225.us.preheader.i.i ] ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %.preheader225.us.i.i
  %indvars.iv376.i.i = phi i64 [ 0, %.preheader225.us.i.i ], [ %indvars.iv.next377.i.i, %bb.av ] ; 3 uses
  %.1297.us.i.i = phi i32 [ %.0304.us.i.i, %.preheader225.us.i.i ], [ %.2.us.i.i, %bb.av ]
  %.1148296.us.i.i = phi i32 [ %.0147303.us.i.i, %.preheader225.us.i.i ], [ %.2149.us.i.i, %bb.av ] ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.4194301.us.i.i, i64 %indvars.iv376.i.i
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !41 ; 3 uses
  %.not214.us.i.i = icmp eq i32 %i.nz, %.1148296.us.i.i
  br i1 %.not214.us.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oa = call i32 @SearchColorNoIdx(ptr noundef nonnull %i.e, i32 noundef %i.nz, i32 noundef %i.gp) #7
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !41
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.2149.us.i.i = phi i32 [ %i.nz, %bb.au ], [ %.1148296.us.i.i, %bb.at ] ; 2 uses
  %.2.us.i.i = phi i32 [ %i.od, %bb.au ], [ %.1297.us.i.i, %bb.at ] ; 3 uses
  %i.oe = trunc i32 %.2.us.i.i to i8
  %i.of = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv376.i.i
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !42
  %indvars.iv.next377.i.i = add nuw nsw i64 %indvars.iv376.i.i, 1 ; 2 uses
  %exitcond380.not.i.i = icmp eq i64 %indvars.iv.next377.i.i, %wide.trip.count379.i.i
  br i1 %exitcond380.not.i.i, label %._crit_edge.us307.i.i, label %bb.at, !llvm.loop !119

._crit_edge.us307.i.i:                            ; preds = %bb.av
  %i.og = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.og(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.4199300.us.i.i) #7, !inline_history !110
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.4194301.us.i.i, i64 %i.nv
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.4199300.us.i.i, i64 %i.nw
  %i.oj = add nuw nsw i32 %.4302.us.i.i, 1        ; 2 uses
  %exitcond381.not.i.i = icmp eq i32 %i.oj, %i.go
  br i1 %exitcond381.not.i.i, label %._crit_edge305.i.i, label %.preheader225.us.i.i, !llvm.loop !120

.preheader225.i.i:                                ; preds = %.preheader225.lr.ph.i.i, %.preheader225.i.i
  %.4302.i.i = phi i32 [ %i.om, %.preheader225.i.i ], [ 0, %.preheader225.lr.ph.i.i ]
  %.4199300.i.i = phi ptr [ %i.ol, %.preheader225.i.i ], [ %i.he, %.preheader225.lr.ph.i.i ] ; 2 uses
  %i.ok = load ptr, ptr @VP8LBundleColorMap, align 8, !tbaa !69
  call void %i.ok(ptr noundef nonnull %i.hh, i32 noundef %i.gm, i32 noundef range(i32 0, 4) %.0.i, ptr noundef %.4199300.i.i) #7, !inline_history !110
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.4199300.i.i, i64 %i.nw
  %i.om = add nuw nsw i32 %.4302.i.i, 1           ; 2 uses
  %exitcond375.not.i.i = icmp eq i32 %i.om, %i.go
  br i1 %exitcond375.not.i.i, label %._crit_edge305.i.i, label %.preheader225.i.i, !llvm.loop !120

._crit_edge305.i.i:                               ; preds = %.preheader225.i.i, %._crit_edge.us307.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit227.i.i

.loopexit227.i.i:                                 ; preds = %.preheader230.i.i, %._crit_edge.us.i.i, %.preheader228.i.i, %._crit_edge.us282.i.i, %.preheader226.i.i, %._crit_edge.us294.i.i, %._crit_edge305.i.i, %.loopexit232.i.i, %bb.ah, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %ApplyPalette.exit.thread.i

ApplyPalette.exit.thread.i:                       ; preds = %._crit_edge.i.i, %.loopexit227.i.i, %bb.u
  call void @WebPSafeFree(ptr noundef nonnull %i.hh) #7
  br label %bb.aw

ApplyPalette.exit.i:                              ; preds = %bb.s
  %i.on = call i32 @WebPEncodingSetError(ptr noundef nonnull %i.gk, i32 noundef 1) #7
  %.not25.i = icmp eq i32 %i.on, 0
  br i1 %.not25.i, label %MakeInputImageCopy.exit.thread258, label %bb.aw

bb.aw:                                            ; preds = %ApplyPalette.exit.i, %ApplyPalette.exit.thread.i
  store i32 3, ptr %i.bj, align 8, !tbaa !20
  %i.oo = load i32, ptr %i.bn, align 4, !tbaa !30 ; 2 uses
  %i.op = icmp slt i32 %i.oo, 1024
  br i1 %i.op, label %bb.ax, label %MakeInputImageCopy.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.oq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.oo, i1 true)
  %i.or = sub nuw nsw i32 32, %i.oq
  store i32 %i.or, ptr %i.bf, align 8, !tbaa !135
  br label %MakeInputImageCopy.exit.thread

bb.ay:                                            ; preds = %.critedge
  br i1 %i.cy, label %MakeInputImageCopy.exit.thread, label %bb.az

bb.az:                                            ; preds = %.thread387, %bb.ay
  %i.os = load ptr, ptr %i.bl, align 8, !tbaa !19 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !25 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !26 ; 5 uses
  %i.ox = call fastcc i32 @AllocateTransformBuffer(ptr noundef nonnull %i.p, i32 noundef %i.ou, i32 noundef %i.ow)
  %.not.i192 = icmp eq i32 %i.ox, 0
  br i1 %.not.i192, label %MakeInputImageCopy.exit.thread258, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oy = load i32, ptr %i.bj, align 8, !tbaa !20
  %i.oz = icmp eq i32 %i.oy, 1
  br i1 %i.oz, label %MakeInputImageCopy.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pa = icmp sgt i32 %i.ow, 0
  br i1 %i.pa, label %.lr.ph.i193, label %._crit_edge.i

.lr.ph.i193:                                      ; preds = %bb.bb
  %i.pb = getelementptr inbounds nuw i8, ptr %i.os, i64 72
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !39 ; 2 uses
  %i.pd = load ptr, ptr %i.bk, align 8, !tbaa !66 ; 2 uses
  %i.pe = sext i32 %i.ou to i64                   ; 6 uses
  %i.pf = shl nsw i64 %i.pe, 2                    ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.os, i64 80 ; 5 uses
  %xtraiter515 = and i32 %i.ow, 3                 ; 3 uses
  %i.ph = icmp ult i32 %i.ow, 4
  br i1 %i.ph, label %.epil.preheader514, label %.lr.ph.i193.new

.lr.ph.i193.new:                                  ; preds = %.lr.ph.i193
  %unroll_iter518 = and i32 %i.ow, 2147483644
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph.i193.new
  %.02024.i = phi ptr [ %i.pc, %.lr.ph.i193.new ], [ %i.px, %bb.bc ] ; 2 uses
  %.02123.i = phi ptr [ %i.pd, %.lr.ph.i193.new ], [ %i.pu, %bb.bc ] ; 2 uses
  %niter519 = phi i32 [ 0, %.lr.ph.i193.new ], [ %niter519.next.3, %bb.bc ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.02123.i, ptr align 4 %.02024.i, i64 %i.pf, i1 false)
  %i.pi = getelementptr inbounds [4 x i8], ptr %.02123.i, i64 %i.pe ; 2 uses
  %i.pj = load i32, ptr %i.pg, align 8, !tbaa !40
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %.02024.i, i64 %i.pk ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.pi, ptr align 4 %i.pl, i64 %i.pf, i1 false)
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pe ; 2 uses
  %i.pn = load i32, ptr %i.pg, align 8, !tbaa !40
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.pl, i64 %i.po ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.pm, ptr align 4 %i.pp, i64 %i.pf, i1 false)
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.pe ; 2 uses
  %i.pr = load i32, ptr %i.pg, align 8, !tbaa !40
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.ps ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.pq, ptr align 4 %i.pt, i64 %i.pf, i1 false)
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.pe ; 2 uses
  %i.pv = load i32, ptr %i.pg, align 8, !tbaa !40
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pw ; 2 uses
  %niter519.next.3 = add nuw nsw i32 %niter519, 4 ; 2 uses
  %niter519.ncmp.3 = icmp eq i32 %niter519.next.3, %unroll_iter518
  br i1 %niter519.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.bc, !llvm.loop !121

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.bc
  %lcmp.mod516.not = icmp eq i32 %xtraiter515, 0
  br i1 %lcmp.mod516.not, label %._crit_edge.i, label %.epil.preheader514

.epil.preheader514:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i193
  %.02024.i.epil.init = phi ptr [ %i.pc, %.lr.ph.i193 ], [ %i.px, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02123.i.epil.init = phi ptr [ %i.pd, %.lr.ph.i193 ], [ %i.pu, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod517 = icmp ne i32 %xtraiter515, 0
  call void @llvm.assume(i1 %lcmp.mod517)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.epil.preheader514
  %.02024.i.epil = phi ptr [ %.02024.i.epil.init, %.epil.preheader514 ], [ %i.qb, %bb.bd ] ; 2 uses
  %.02123.i.epil = phi ptr [ %.02123.i.epil.init, %.epil.preheader514 ], [ %i.py, %bb.bd ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader514 ], [ %epil.iter.next, %bb.bd ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.02123.i.epil, ptr align 4 %.02024.i.epil, i64 %i.pf, i1 false)
  %i.py = getelementptr inbounds [4 x i8], ptr %.02123.i.epil, i64 %i.pe
  %i.pz = load i32, ptr %i.pg, align 8, !tbaa !40
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %.02024.i.epil, i64 %i.qa
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter515
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.bd, !llvm.loop !122

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.bd, %bb.bb
  store i32 1, ptr %i.bj, align 8, !tbaa !20
  br label %MakeInputImageCopy.exit.thread

MakeInputImageCopy.exit.thread:                   ; preds = %bb.aw, %bb.ax, %bb.ba, %._crit_edge.i, %bb.ay
  %.0156386 = phi i32 [ %i.ba, %bb.ay ], [ %i.ba, %bb.ba ], [ %i.ba, %._crit_edge.i ], [ %i.bq, %bb.ax ], [ %i.bq, %bb.aw ] ; 4 uses
  %i.qc = load i32, ptr %i.bc, align 8, !tbaa !134
  %.not181 = icmp eq i32 %i.qc, 0
  br i1 %.not181, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %MakeInputImageCopy.exit.thread
end_hunk_0
