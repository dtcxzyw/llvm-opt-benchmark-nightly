Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_tmpl?download=true
inline.NumInlined: 55
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@filter_edge:bb.a
  %i.ba = trunc i64 %indvars.iv54 to i32
  %i.bb = add i32 %i.ba, -1
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.p)
  %i.bd = select i1 %.not, i32 %i.bc, i32 %5
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %4, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !9
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.w, %i.bh
  %i.bj = add nuw nsw i32 %i.bi, %i.az
  %i.bk = icmp slt i64 %indvars.iv54, %i.t
  %i.bl = trunc nsw i64 %indvars.iv54 to i32
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.p)
  %i.bn = select i1 %i.bk, i32 %5, i32 %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !9
  %i.br = zext i16 %i.bq to i32
  %i.bs = mul nuw nsw i32 %i.x, %i.br
  %i.bt = add nuw nsw i32 %i.bs, %i.bj
  %i.bu = add nuw nsw i64 %indvars.iv54, 1        ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %i.t
  %i.bw = trunc nsw i64 %i.bu to i32
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.p)
  %i.by = select i1 %i.bv, i32 %5, i32 %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !9
  %i.cc = zext i16 %i.cb to i32
  %i.cd = mul nuw nsw i32 %i.y, %i.cc
  %i.ce = add nuw nsw i32 %i.cd, %i.bt
  %i.cf = add nuw nsw i64 %indvars.iv54, 2        ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.t
  %i.ch = trunc nsw i64 %i.cf to i32
  %i.ci = tail call i32 @llvm.smin.i32(i32 %i.ch, i32 %i.p)
  %i.cj = select i1 %i.cg, i32 %5, i32 %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9
  %i.cn = zext i16 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.z, %i.cn
  %i.cp = add nuw nsw i32 %i.co, %i.ce
  %i.cq = add nuw nsw i32 %i.cp, 8
  %i.cr = lshr i32 %i.cq, 4
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv54
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !9
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %.preheader, label %.preheader38

.preheader:                                       ; preds = %.preheader38, %.preheader39
  %.1.lcssa = phi i32 [ %.037.lcssa, %.preheader39 ], [ %i.n, %.preheader38 ] ; 6 uses
  %i.cu = icmp slt i32 %.1.lcssa, %1
  br i1 %i.cu, label %.lr.ph46, label %._crit_edge

.lr.ph46:                                         ; preds = %.preheader
  %i.cv = add nsw i32 %6, -1                      ; 3 uses
  %i.cw = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %i.cx = sub i32 %1, %.1.lcssa
  %.neg = add i32 %.1.lcssa, 1
  %xtraiter72 = and i32 %i.cx, 1
  %lcmp.mod73.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph46
  %i.cy = icmp sgt i32 %5, %.1.lcssa
  %i.cz = tail call i32 @llvm.smin.i32(i32 %.1.lcssa, i32 %i.cv)
  %i.da = select i1 %i.cy, i32 %5, i32 %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %4, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !9
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cw
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !9
  %indvars.iv.next60.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph46
  %indvars.iv59.unr = phi i64 [ %i.cw, %.lr.ph46 ], [ %indvars.iv.next60.prol, %.prol.loopexit.unr-lcssa ]
  %i.df = icmp eq i32 %1, %.neg
  br i1 %i.df, label %._crit_edge, label %.lr.ph46.new

.lr.ph46.new:                                     ; preds = %.prol.loopexit, %.lr.ph46.new
  %indvars.iv59 = phi i64 [ %indvars.iv.next60.1, %.lr.ph46.new ], [ %indvars.iv59.unr, %.prol.loopexit ] ; 4 uses
  %i.dg = trunc nuw i64 %indvars.iv59 to i32      ; 2 uses
  %i.dh = icmp sgt i32 %5, %i.dg
  %i.di = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.cv)
  %i.dj = select i1 %i.dh, i32 %5, i32 %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [2 x i8], ptr %4, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !9
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !9
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.do = trunc nuw i64 %indvars.iv.next60 to i32 ; 2 uses
  %i.dp = icmp sgt i32 %5, %i.do
  %i.dq = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.cv)
  %i.dr = select i1 %i.dp, i32 %5, i32 %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !9
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !9
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next60.1 to i32
  %i.dx = icmp sgt i32 %1, %i.dw
  br i1 %i.dx, label %.lr.ph46.new, label %._crit_edge

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph46.new, %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @cfl_ac_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %3, -1
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 %3, 2                    ; 2 uses
  %i.c = icmp slt i32 %i.b, %5
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp sgt i32 %4, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = shl nuw nsw i32 %4, 2                    ; 5 uses
  %i.f = icmp slt i32 %i.e, %6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nuw nsw i32 %6, %i.e                 ; 9 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader116.lr.ph, label %.preheader114

.preheader116.lr.ph:                              ; preds = %bb.a
  %i.i = sub nuw nsw i32 %5, %i.b                 ; 9 uses
  %i.j = icmp sgt i32 %i.i, 0
  %.not104108 = icmp eq i32 %8, 0                 ; 2 uses
  %i.k = xor i32 %7, 1
  %reass.sub188 = sub nsw i32 %i.k, %8
  %i.l = add nsw i32 %reass.sub188, 2             ; 17 uses
  %i.m = zext i32 %5 to i64                       ; 16 uses
  %i.n = and i64 %2, 1
  %.not.i106 = icmp eq i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i106)
  %i.o = ashr exact i64 %2, 1
  %i.p = zext nneg i32 %8 to i64
  %i.q = shl nsw i64 %i.o, %i.p                   ; 11 uses
  br i1 %i.j, label %.preheader116.lr.ph.split.us, label %.preheader116.us147.preheader

.preheader116.us147.preheader:                    ; preds = %.preheader116.lr.ph
  %i.r = shl nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.s = add i32 %5, -1
  %i.t = icmp ult i32 %i.s, 7
  %unroll_iter = and i64 %i.m, 4294967288
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod483 = icmp ne i64 %xtraiter, 0
  br label %.preheader116.us147

.preheader116.lr.ph.split.us:                     ; preds = %.preheader116.lr.ph
  %.not = icmp eq i32 %7, 0
  %wide.trip.count241 = zext nneg i32 %i.i to i64 ; 31 uses
  br i1 %.not, label %.preheader116.us.us.preheader, label %.preheader116.lr.ph.split.us.split

.preheader116.us.us.preheader:                    ; preds = %.preheader116.lr.ph.split.us
  %wide.trip.count246 = zext nneg i32 %i.i to i64
  %.not286 = icmp eq i32 %3, 0
  %i.u = zext nneg i32 %i.i to i64                ; 2 uses
  %i.v = xor i32 %i.e, -1
  %i.w = add i32 %6, %i.v
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = mul nuw i64 %i.m, %i.x
  %i.z = add i64 %i.y, %wide.trip.count241
  %i.aa = shl i64 %i.z, 1
  %scevgep344.a = getelementptr i8, ptr %0, i64 %i.aa
  %i.ab = mul i64 %i.q, %i.x
  %i.ac = add i64 %i.ab, %wide.trip.count241
  %i.ad = shl i64 %i.ac, 1
  %scevgep345 = getelementptr i8, ptr %1, i64 %i.ad
  %i.ae = xor i32 %i.e, -1
  %i.af = add i32 %6, %i.ae
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = mul nuw i64 %i.m, %i.ag
  %i.ai = shl nuw nsw i64 %wide.trip.count241, 1  ; 2 uses
  %i.aj = add i64 %i.ah, %wide.trip.count241
  %i.ak = shl i64 %i.aj, 1
  %scevgep372.a = getelementptr i8, ptr %0, i64 %i.ak ; 2 uses
  %scevgep373.a = getelementptr i8, ptr %1, i64 %2
  %i.al = mul i64 %i.q, %i.ag
  %i.am = shl i64 %i.al, 1                        ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %2
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.am
  %scevgep374.a = getelementptr i8, ptr %i.ao, i64 %i.ai
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %scevgep375 = getelementptr i8, ptr %i.ap, i64 %i.ai
  %i.aq = shl nuw nsw i64 %wide.trip.count241, 1
  %i.ar = shl nuw nsw i64 %i.m, 1
  %i.as = sub nsw i64 %i.m, %wide.trip.count241
  %i.at = getelementptr i8, ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 -2
  %min.iters.check386 = icmp ult i32 %i.i, 8
  %bound0376 = icmp ult ptr %0, %scevgep374.a
  %bound1377 = icmp ult ptr %scevgep373.a, %scevgep372.a
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0380 = icmp ult ptr %0, %scevgep375
  %bound1381 = icmp ult ptr %1, %scevgep372.a
  %found.conflict382 = and i1 %bound0380, %bound1381
  %.mask466 = and i64 %i.q, 4611686018427387904
  %stride.check383 = icmp ne i64 %.mask466, 0
  %9 = or i1 %found.conflict382, %stride.check383
  %conflict.rdx384 = or i1 %found.conflict378, %9
  %n.vec388 = and i64 %wide.trip.count241, 2147483640 ; 3 uses
  %broadcast.splatinsert389 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat390 = shufflevector <8 x i32> %broadcast.splatinsert389, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n397 = icmp eq i64 %n.vec388, %wide.trip.count241
  %xtraiter486.a = and i64 %wide.trip.count241, 1
  %lcmp.mod487.not.a = icmp eq i64 %xtraiter486.a, 0
  %i.av = add nsw i64 %wide.trip.count241, -1
  %min.iters.check351.a = icmp ult i32 %i.i, 4
  %bound0346 = icmp ult ptr %0, %scevgep345
  %bound1347 = icmp ult ptr %1, %scevgep344.a
  %found.conflict348 = and i1 %bound0346, %bound1347
  %.mask467 = and i64 %i.q, 4611686018427387904
  %stride.check349 = icmp ne i64 %.mask467, 0
  %i.aw = or i1 %found.conflict348, %stride.check349
  %min.iters.check352 = icmp ult i32 %i.i, 16
  %i.ax = and i64 %wide.trip.count241, 12
  %n.vec354 = and i64 %wide.trip.count241, 2147483632 ; 4 uses
  %broadcast.splatinsert355 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat356 = shufflevector <8 x i32> %broadcast.splatinsert355, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n362 = icmp eq i64 %n.vec354, %wide.trip.count241
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  %n.vec363 = and i64 %wide.trip.count241, 2147483644 ; 3 uses
  %broadcast.splatinsert364 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat365 = shufflevector <4 x i32> %broadcast.splatinsert364, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n369 = icmp eq i64 %n.vec363, %wide.trip.count241
  %xtraiter488.a = and i64 %wide.trip.count241, 3 ; 2 uses
  %lcmp.mod489.not.a = icmp eq i64 %xtraiter488.a, 0
  %xtraiter490 = and i64 %i.as, 7                 ; 2 uses
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  %i.ay = sub nsw i64 %wide.trip.count241, %i.m
  %i.az = icmp ugt i64 %i.ay, -8
  br label %.preheader116.us.us

.preheader116.us.us:                              ; preds = %.preheader116.us.us.preheader, %._crit_edge.us.us
  %indvar = phi i64 [ 0, %.preheader116.us.us.preheader ], [ %indvar.next, %._crit_edge.us.us ] ; 2 uses
  %.091131.us.us = phi i32 [ 0, %.preheader116.us.us.preheader ], [ %i.ff, %._crit_edge.us.us ]
  %.095128.us.us = phi ptr [ %0, %.preheader116.us.us.preheader ], [ %i.fd, %._crit_edge.us.us ] ; 21 uses
  %.099125.us.us = phi ptr [ %1, %.preheader116.us.us.preheader ], [ %i.fe, %._crit_edge.us.us ] ; 13 uses
  %i.ba = mul i64 %i.ar, %indvar
  %scevgep443 = getelementptr i8, ptr %i.au, i64 %i.ba
  %i.bb = getelementptr i8, ptr %.099125.us.us, i64 %2 ; 4 uses
  br i1 %.not104108, label %iter.check, label %.lr.ph.split.us.split.us141.us.preheader

.lr.ph.split.us.split.us141.us.preheader:         ; preds = %.preheader116.us.us
  %brmerge = select i1 %min.iters.check386, i1 true, i1 %conflict.rdx384
  br i1 %brmerge, label %.lr.ph.split.us.split.us141.us.preheader472, label %vector.body391

vector.body391:                                   ; preds = %.lr.ph.split.us.split.us141.us.preheader, %vector.body391
  %index392 = phi i64 [ %index.next395, %vector.body391 ], [ 0, %.lr.ph.split.us.split.us141.us.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index392
  %wide.load393 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !9, !alias.scope !101
  %i.bd = zext <8 x i16> %wide.load393 to <8 x i32>
  %i.be = getelementptr [2 x i8], ptr %i.bb, i64 %index392
  %wide.load394 = load <8 x i16>, ptr %i.be, align 2, !tbaa !9, !alias.scope !102
  %i.bf = zext <8 x i16> %wide.load394 to <8 x i32>
  %i.bg = add nuw nsw <8 x i32> %i.bf, %i.bd
  %i.bh = shl nuw nsw <8 x i32> %i.bg, %broadcast.splat390
  %i.bi = trunc <8 x i32> %i.bh to <8 x i16>
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index392
  store <8 x i16> %i.bi, ptr %i.bj, align 2, !tbaa !9, !alias.scope !103, !noalias !104
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next395, %n.vec388
  br i1 %i.bk, label %middle.block396, label %vector.body391, !llvm.loop !73

middle.block396:                                  ; preds = %vector.body391
  br i1 %cmp.n397, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us141.us.preheader472

.lr.ph.split.us.split.us141.us.preheader472:      ; preds = %.lr.ph.split.us.split.us141.us.preheader, %middle.block396
  %indvars.iv238.ph = phi i64 [ %n.vec388, %middle.block396 ], [ 0, %.lr.ph.split.us.split.us141.us.preheader ] ; 6 uses
  br i1 %lcmp.mod487.not.a, label %.lr.ph.split.us.split.us141.us.prol.loopexit, label %.lr.ph.split.us.split.us141.us.prol

.lr.ph.split.us.split.us141.us.prol:              ; preds = %.lr.ph.split.us.split.us141.us.preheader472
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv238.ph
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !9
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv238.ph
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !9
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bq, %i.bn
  %i.bs = shl nuw nsw i32 %i.br, %i.l
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv238.ph
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !9
  %indvars.iv.next239.prol = or disjoint i64 %indvars.iv238.ph, 1
  br label %.lr.ph.split.us.split.us141.us.prol.loopexit

.lr.ph.split.us.split.us141.us.prol.loopexit:     ; preds = %.lr.ph.split.us.split.us141.us.prol, %.lr.ph.split.us.split.us141.us.preheader472
  %indvars.iv238.unr = phi i64 [ %indvars.iv238.ph, %.lr.ph.split.us.split.us141.us.preheader472 ], [ %indvars.iv.next239.prol, %.lr.ph.split.us.split.us141.us.prol ]
  %i.bv = icmp eq i64 %indvars.iv238.ph, %i.av
  br i1 %i.bv, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us141.us

iter.check:                                       ; preds = %.preheader116.us.us
  %brmerge507.a = select i1 %min.iters.check351.a, i1 true, i1 %i.aw
  br i1 %brmerge507.a, label %.lr.ph.split.us.split.us.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check352, label %vec.epilog.ph, label %vector.body357

vector.body357:                                   ; preds = %vector.main.loop.iter.check, %vector.body357
  %index358 = phi i64 [ %index.next360, %vector.body357 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index358 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <8 x i16>, ptr %i.bw, align 2, !tbaa !9, !alias.scope !105
  %wide.load359 = load <8 x i16>, ptr %i.bx, align 2, !tbaa !9, !alias.scope !105
  %i.by = zext <8 x i16> %wide.load to <8 x i32>
  %i.bz = zext <8 x i16> %wide.load359 to <8 x i32>
  %i.ca = shl nuw nsw <8 x i32> %i.by, %broadcast.splat356
  %i.cb = shl nuw nsw <8 x i32> %i.bz, %broadcast.splat356
  %i.cc = trunc <8 x i32> %i.ca to <8 x i16>
  %i.cd = trunc <8 x i32> %i.cb to <8 x i16>
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index358 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <8 x i16> %i.cc, ptr %i.ce, align 2, !tbaa !9, !alias.scope !106, !noalias !105
  store <8 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !9, !alias.scope !106, !noalias !105
  %index.next360 = add nuw i64 %index358, 16      ; 2 uses
  %i.cg = icmp eq i64 %index.next360, %n.vec354
  br i1 %i.cg, label %middle.block361, label %vector.body357, !llvm.loop !77

middle.block361:                                  ; preds = %vector.body357
  br i1 %cmp.n362, label %..preheader115_crit_edge.split.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block361
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.us.us.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec354, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index366 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next368, %vec.epilog.vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index366
  %wide.load367 = load <4 x i16>, ptr %i.ch, align 2, !tbaa !9, !alias.scope !105
  %i.ci = zext <4 x i16> %wide.load367 to <4 x i32>
  %i.cj = shl nuw nsw <4 x i32> %i.ci, %broadcast.splat365
  %i.ck = trunc <4 x i32> %i.cj to <4 x i16>
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index366
  store <4 x i16> %i.ck, ptr %i.cl, align 2, !tbaa !9, !alias.scope !106, !noalias !105
  %index.next368 = add nuw i64 %index366, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n369, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us.preheader

.lr.ph.split.us.split.us.us.us.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv243.ph = phi i64 [ 0, %iter.check ], [ %n.vec363, %vec.epilog.middle.block ], [ %n.vec354, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod489.not.a, label %.lr.ph.split.us.split.us.us.us.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.prol

.lr.ph.split.us.split.us.us.us.prol:              ; preds = %.lr.ph.split.us.split.us.us.us.preheader, %.lr.ph.split.us.split.us.us.us.prol
  %indvars.iv243.prol = phi i64 [ %indvars.iv.next244.prol, %.lr.ph.split.us.split.us.us.us.prol ], [ %indvars.iv243.ph, %.lr.ph.split.us.split.us.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.split.us.us.us.prol ], [ 0, %.lr.ph.split.us.split.us.us.us.preheader ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv243.prol
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !9
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, %i.l
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv243.prol
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !9
  %indvars.iv.next244.prol = add nuw nsw i64 %indvars.iv243.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter488.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.split.us.us.us.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.prol, !llvm.loop !79

.lr.ph.split.us.split.us.us.us.prol.loopexit:     ; preds = %.lr.ph.split.us.split.us.us.us.prol, %.lr.ph.split.us.split.us.us.us.preheader
  %indvars.iv243.unr = phi i64 [ %indvars.iv243.ph, %.lr.ph.split.us.split.us.us.us.preheader ], [ %indvars.iv.next244.prol, %.lr.ph.split.us.split.us.us.us.prol ]
  %i.ct = sub nsw i64 %indvars.iv243.ph, %wide.trip.count241
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us

.lr.ph.split.us.split.us141.us:                   ; preds = %.lr.ph.split.us.split.us141.us.prol.loopexit, %.lr.ph.split.us.split.us141.us
  %indvars.iv238 = phi i64 [ %indvars.iv.next239.1, %.lr.ph.split.us.split.us141.us ], [ %indvars.iv238.unr, %.lr.ph.split.us.split.us141.us.prol.loopexit ] ; 5 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv238
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !9
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv238
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !9
  %i.da = zext i16 %i.cz to i32
  %i.db = add nuw nsw i32 %i.da, %i.cx
  %i.dc = shl nuw nsw i32 %i.db, %i.l
  %i.dd = trunc i32 %i.dc to i16
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv238
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !9
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next239
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !9
  %i.dh = zext i16 %i.dg to i32
  %i.di = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv.next239
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !9
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dk, %i.dh
  %i.dm = shl nuw nsw i32 %i.dl, %i.l
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next239
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !9
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %exitcond242.not.1 = icmp eq i64 %indvars.iv.next239.1, %wide.trip.count241
  br i1 %exitcond242.not.1, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us141.us, !llvm.loop !80

.lr.ph.split.us.split.us.us.us:                   ; preds = %.lr.ph.split.us.split.us.us.us.prol.loopexit, %.lr.ph.split.us.split.us.us.us
  %indvars.iv243 = phi i64 [ %indvars.iv.next244.3, %.lr.ph.split.us.split.us.us.us ], [ %indvars.iv243.unr, %.lr.ph.split.us.split.us.us.us.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv243
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !9
  %i.dr = zext i16 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, %i.l
  %i.dt = trunc i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv243
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !9
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !9
  %i.dx = zext i16 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, %i.l
  %i.dz = trunc i32 %i.dy to i16
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !9
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244.1
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !9
  %i.ed = zext i16 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, %i.l
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244.1
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !9
  %indvars.iv.next244.2 = add nuw nsw i64 %indvars.iv243, 3 ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244.2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !9
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, %i.l
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244.2
  store i16 %i.el, ptr %i.em, align 2, !tbaa !9
  %indvars.iv.next244.3 = add nuw nsw i64 %indvars.iv243, 4 ; 2 uses
  %exitcond247.not.3 = icmp eq i64 %indvars.iv.next244.3, %wide.trip.count246
  br i1 %exitcond247.not.3, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us, !llvm.loop !81

..preheader115_crit_edge.split.us.us.us:          ; preds = %.lr.ph.split.us.split.us141.us.prol.loopexit, %.lr.ph.split.us.split.us141.us, %.lr.ph.split.us.split.us.us.us.prol.loopexit, %.lr.ph.split.us.split.us.us.us, %middle.block396, %middle.block361, %vec.epilog.middle.block
  br i1 %.not286, label %._crit_edge.us.us, label %.lr.ph124.us.us.preheader

.lr.ph124.us.us.preheader:                        ; preds = %..preheader115_crit_edge.split.us.us.us
  %load_initial = load i16, ptr %scevgep443, align 2 ; 9 uses
  br i1 %lcmp.mod491.not, label %.lr.ph124.us.us.prol.loopexit, label %.lr.ph124.us.us.prol

.lr.ph124.us.us.prol:                             ; preds = %.lr.ph124.us.us.preheader, %.lr.ph124.us.us.prol
  %indvars.iv251.prol = phi i64 [ %indvars.iv.next252.prol, %.lr.ph124.us.us.prol ], [ %i.u, %.lr.ph124.us.us.preheader ] ; 2 uses
  %prol.iter492 = phi i64 [ %prol.iter492.next, %.lr.ph124.us.us.prol ], [ 0, %.lr.ph124.us.us.preheader ]
  %i.en = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251.prol
  store i16 %load_initial, ptr %i.en, align 2, !tbaa !9
  %indvars.iv.next252.prol = add nuw nsw i64 %indvars.iv251.prol, 1 ; 2 uses
  %prol.iter492.next = add i64 %prol.iter492, 1   ; 2 uses
  %prol.iter492.cmp.not = icmp eq i64 %prol.iter492.next, %xtraiter490
  br i1 %prol.iter492.cmp.not, label %.lr.ph124.us.us.prol.loopexit, label %.lr.ph124.us.us.prol, !llvm.loop !82

.lr.ph124.us.us.prol.loopexit:                    ; preds = %.lr.ph124.us.us.prol, %.lr.ph124.us.us.preheader
  %indvars.iv251.unr = phi i64 [ %i.u, %.lr.ph124.us.us.preheader ], [ %indvars.iv.next252.prol, %.lr.ph124.us.us.prol ]
  br i1 %i.az, label %._crit_edge.us.us, label %.lr.ph124.us.us

.lr.ph124.us.us:                                  ; preds = %.lr.ph124.us.us.prol.loopexit, %.lr.ph124.us.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252.7, %.lr.ph124.us.us ], [ %indvars.iv251.unr, %.lr.ph124.us.us.prol.loopexit ] ; 9 uses
  %i.eo = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  store i16 %load_initial, ptr %i.eo, align 2, !tbaa !9
  %i.ep = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.eq = getelementptr i8, ptr %i.ep, i64 2
  store i16 %load_initial, ptr %i.eq, align 2, !tbaa !9
  %i.er = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.es = getelementptr i8, ptr %i.er, i64 4
  store i16 %load_initial, ptr %i.es, align 2, !tbaa !9
  %i.et = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.eu = getelementptr i8, ptr %i.et, i64 6
  store i16 %load_initial, ptr %i.eu, align 2, !tbaa !9
  %i.ev = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  store i16 %load_initial, ptr %i.ew, align 2, !tbaa !9
  %i.ex = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.ey = getelementptr i8, ptr %i.ex, i64 10
  store i16 %load_initial, ptr %i.ey, align 2, !tbaa !9
  %i.ez = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.fa = getelementptr i8, ptr %i.ez, i64 12
  store i16 %load_initial, ptr %i.fa, align 2, !tbaa !9
  %i.fb = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.fc = getelementptr i8, ptr %i.fb, i64 14
  store i16 %load_initial, ptr %i.fc, align 2, !tbaa !9
  %indvars.iv.next252.7 = add nuw nsw i64 %indvars.iv251, 8 ; 2 uses
  %exitcond255.not.7 = icmp eq i64 %indvars.iv.next252.7, %i.m
  br i1 %exitcond255.not.7, label %._crit_edge.us.us, label %.lr.ph124.us.us

._crit_edge.us.us:                                ; preds = %.lr.ph124.us.us.prol.loopexit, %.lr.ph124.us.us, %..preheader115_crit_edge.split.us.us.us
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %i.m ; 2 uses
  %i.fe = getelementptr inbounds [2 x i8], ptr %.099125.us.us, i64 %i.q
  %i.ff = add nuw nsw i32 %.091131.us.us, 1       ; 2 uses
  %exitcond256.not = icmp eq i32 %i.ff, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond256.not, label %.preheader114, label %.preheader116.us.us

.preheader116.lr.ph.split.us.split:               ; preds = %.preheader116.lr.ph.split.us
  %.not285 = icmp eq i32 %3, 0                    ; 2 uses
  %i.fg = add nsw i64 %wide.trip.count241, -1     ; 2 uses
  %i.fh = xor i32 %i.e, -1
  %i.fi = add i32 %6, %i.fh
  %i.fj = zext i32 %i.fi to i64                   ; 3 uses
  %i.fk = mul nuw i64 %i.m, %i.fj
  %i.fl = add i64 %i.fk, %wide.trip.count241
  %i.fm = shl i64 %i.fl, 1
  %scevgep320.a = getelementptr i8, ptr %0, i64 %i.fm ; 3 uses
  br i1 %.not104108, label %.preheader116.us.us159.preheader, label %.preheader116.us.preheader

.preheader116.us.preheader:                       ; preds = %.preheader116.lr.ph.split.us.split
  %scevgep303 = getelementptr i8, ptr %1, i64 %2
  %i.fn = mul i64 %i.q, %i.fj
  %i.fo = shl i64 %i.fn, 1                        ; 2 uses
  %i.fp = shl nuw nsw i64 %wide.trip.count241, 2  ; 2 uses
  %i.fq = getelementptr i8, ptr %1, i64 %2
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fo
  %scevgep304 = getelementptr i8, ptr %i.fr, i64 %i.fp
  %i.fs = getelementptr i8, ptr %1, i64 %i.fo
  %scevgep305 = getelementptr i8, ptr %i.fs, i64 %i.fp
  %i.ft = shl nuw nsw i64 %i.m, 1
  %min.iters.check = icmp ugt i32 %i.i, 11
  %i.fu = and i64 %i.fg, -3221225472
  %.not462.a = icmp eq i64 %i.fu, 0
  %or.cond468 = select i1 %min.iters.check, i1 %.not462.a, i1 false
  %bound0 = icmp ult ptr %0, %scevgep304
  %bound1 = icmp ult ptr %scevgep303, %scevgep320.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0306 = icmp ult ptr %0, %scevgep305
  %bound1307 = icmp ult ptr %1, %scevgep320.a
  %found.conflict308 = and i1 %bound0306, %bound1307
  %.mask = and i64 %i.q, 4611686018427387904
  %stride.check309 = icmp ne i64 %.mask, 0
  %10 = or i1 %found.conflict308, %stride.check309
  %conflict.rdx = or i1 %found.conflict, %10
  %n.vec = and i64 %wide.trip.count241, 2147483644 ; 5 uses
  %i.fv = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count241
  br label %.preheader116.us

.preheader116.us.us159.preheader:                 ; preds = %.preheader116.lr.ph.split.us.split
  %i.fw = mul i64 %i.q, %i.fj
  %i.fx = shl i64 %i.fw, 1
  %i.fy = shl nuw nsw i64 %wide.trip.count241, 2
  %i.fz = getelementptr i8, ptr %1, i64 %i.fx
  %scevgep321 = getelementptr i8, ptr %i.fz, i64 %i.fy
  %i.ga = shl nuw nsw i64 %i.m, 1
  %min.iters.check327 = icmp ugt i32 %i.i, 11
  %i.gb = and i64 %i.fg, -3221225472
  %.not464 = icmp eq i64 %i.gb, 0
  %or.cond = select i1 %min.iters.check327, i1 %.not464, i1 false
  %bound0322 = icmp ult ptr %0, %scevgep321
  %bound1323 = icmp ult ptr %1, %scevgep320.a
  %found.conflict324 = and i1 %bound0322, %bound1323
  %.mask465 = and i64 %i.q, 4611686018427387904
  %stride.check325 = icmp ne i64 %.mask465, 0
  %i.gc = or i1 %found.conflict324, %stride.check325
  %n.vec329 = and i64 %wide.trip.count241, 2147483644 ; 5 uses
  %i.gd = or disjoint i64 %n.vec329, 1
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat331 = shufflevector <4 x i32> %broadcast.splatinsert330, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n340 = icmp eq i64 %n.vec329, %wide.trip.count241
  %xtraiter484 = and i64 %wide.trip.count241, 1
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  %i.ge = add nsw i64 %wide.trip.count241, -1
  br label %.preheader116.us.us159

.preheader116.us.us159:                           ; preds = %.preheader116.us.us159.preheader, %._crit_edge.us.us165
  %indvar444 = phi i64 [ 0, %.preheader116.us.us159.preheader ], [ %indvar.next445, %._crit_edge.us.us165 ] ; 2 uses
  %.091131.us.us160 = phi i32 [ 0, %.preheader116.us.us159.preheader ], [ %i.iq, %._crit_edge.us.us165 ]
  %.095128.us.us161 = phi ptr [ %0, %.preheader116.us.us159.preheader ], [ %i.io, %._crit_edge.us.us165 ] ; 6 uses
  %.099125.us.us162 = phi ptr [ %1, %.preheader116.us.us159.preheader ], [ %i.ip, %._crit_edge.us.us165 ] ; 8 uses
  %i.gf = mul i64 %i.ga, %indvar444
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf
  %scevgep446 = getelementptr i8, ptr %i.gg, i64 -2
  %or.cond.not = xor i1 %or.cond, true
  %brmerge508 = select i1 %or.cond.not, i1 true, i1 %i.gc
  br i1 %brmerge508, label %.thread.us.us.us.preheader, label %vector.body332

vector.body332:                                   ; preds = %.preheader116.us.us159, %vector.body332
  %index333 = phi i64 [ %index.next337, %vector.body332 ], [ 0, %.preheader116.us.us159 ] ; 3 uses
  %i.gh = trunc i64 %index333 to i32
  %i.gi = shl nuw i32 %i.gh, 1
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.gj
  %wide.vec334 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !9, !alias.scope !107
  %i.gl = freeze <8 x i16> %wide.vec334
  %i.gm = bitcast <8 x i16> %i.gl to <4 x i32>    ; 2 uses
  %i.gn = lshr <4 x i32> %i.gm, splat (i32 16)
  %i.go = add <4 x i32> %i.gn, %i.gm
  %i.gp = shl <4 x i32> %i.go, %broadcast.splat331
  %i.gq = trunc <4 x i32> %i.gp to <4 x i16>
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %index333
  store <4 x i16> %i.gq, ptr %i.gr, align 2, !tbaa !9, !alias.scope !108, !noalias !107
  %index.next337 = add nuw i64 %index333, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next337, %n.vec329
  br i1 %i.gs, label %middle.block338, label %vector.body332, !llvm.loop !86

middle.block338:                                  ; preds = %vector.body332
  br i1 %cmp.n340, label %..preheader115_crit_edge.split.split.us.us.us, label %.thread.us.us.us.preheader

.thread.us.us.us.preheader:                       ; preds = %.preheader116.us.us159, %middle.block338
  %indvars.iv232.ph = phi i64 [ %i.gd, %middle.block338 ], [ 1, %.preheader116.us.us159 ] ; 3 uses
  %indvars.iv225.ph = phi i64 [ %n.vec329, %middle.block338 ], [ 0, %.preheader116.us.us159 ] ; 6 uses
  br i1 %lcmp.mod485.not, label %.thread.us.us.us.prol.loopexit, label %.thread.us.us.us.prol

.thread.us.us.us.prol:                            ; preds = %.thread.us.us.us.preheader
  %i.gt = trunc nuw nsw i64 %indvars.iv225.ph to i32
  %i.gu = shl nuw i32 %i.gt, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !9
  %i.gy = zext i16 %i.gx to i32
  %.idx.prol = shl nuw nsw i64 %indvars.iv225.ph, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx.prol
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !9
  %i.hc = zext i16 %i.hb to i32
  %i.hd = add nuw nsw i32 %i.hc, %i.gy
  %i.he = shl nuw nsw i32 %i.hd, %i.l
  %i.hf = trunc i32 %i.he to i16
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv225.ph
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !9
  %indvars.iv.next226.prol = or disjoint i64 %indvars.iv225.ph, 1
  %indvars.iv.next233.prol = add nuw nsw i64 %indvars.iv232.ph, 1
  br label %.thread.us.us.us.prol.loopexit

.thread.us.us.us.prol.loopexit:                   ; preds = %.thread.us.us.us.prol, %.thread.us.us.us.preheader
  %indvars.iv232.unr = phi i64 [ %indvars.iv232.ph, %.thread.us.us.us.preheader ], [ %indvars.iv.next233.prol, %.thread.us.us.us.prol ]
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %.thread.us.us.us.preheader ], [ %indvars.iv.next226.prol, %.thread.us.us.us.prol ]
  %i.hh = icmp eq i64 %indvars.iv225.ph, %i.ge
  br i1 %i.hh, label %..preheader115_crit_edge.split.split.us.us.us, label %.thread.us.us.us

.thread.us.us.us:                                 ; preds = %.thread.us.us.us.prol.loopexit, %.thread.us.us.us
  %indvars.iv232 = phi i64 [ %indvars.iv.next233.1, %.thread.us.us.us ], [ %indvars.iv232.unr, %.thread.us.us.us.prol.loopexit ] ; 2 uses
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %.thread.us.us.us ], [ %indvars.iv225.unr, %.thread.us.us.us.prol.loopexit ] ; 5 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv225 to i32
  %i.hj = shl nuw i32 %i.hi, 1
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !9
  %i.hn = zext i16 %i.hm to i32
  %.idx = shl nuw nsw i64 %indvars.iv225, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !9
  %i.hr = zext i16 %i.hq to i32
  %i.hs = add nuw nsw i32 %i.hr, %i.hn
  %i.ht = shl nuw nsw i32 %i.hs, %i.l
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv225
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !9
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 3 uses
  %i.hw = trunc nuw nsw i64 %indvars.iv.next226 to i32
  %i.hx = shl nuw i32 %i.hw, 1
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !9
  %i.ib = zext i16 %i.ia to i32
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next226, 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx.1
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !9
  %i.if = zext i16 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.if, %i.ib
  %i.ih = shl nuw nsw i32 %i.ig, %i.l
  %i.ii = trunc i32 %i.ih to i16
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv.next226
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !9
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %exitcond229.not.1 = icmp eq i64 %indvars.iv.next226.1, %wide.trip.count241
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2
  br i1 %exitcond229.not.1, label %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa, label %.thread.us.us.us, !llvm.loop !87

..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa: ; preds = %.thread.us.us.us
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  br label %..preheader115_crit_edge.split.split.us.us.us

..preheader115_crit_edge.split.split.us.us.us:    ; preds = %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa, %.thread.us.us.us.prol.loopexit, %middle.block338
  %indvars.iv232.lcssa = phi i64 [ %n.vec329, %middle.block338 ], [ %indvars.iv232.ph, %.thread.us.us.us.prol.loopexit ], [ %indvars.iv.next233, %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  br i1 %.not285, label %._crit_edge.us.us165, label %.lr.ph124.us.us163.preheader

.lr.ph124.us.us163.preheader:                     ; preds = %..preheader115_crit_edge.split.split.us.us.us
  %i.ik = shl i64 %indvars.iv232.lcssa, 1
  %scevgep447 = getelementptr i8, ptr %scevgep446, i64 %i.ik
  %load_initial448 = load i16, ptr %scevgep447, align 2
  br label %.lr.ph124.us.us163

.lr.ph124.us.us163:                               ; preds = %.lr.ph124.us.us163.preheader, %.lr.ph124.us.us163
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph124.us.us163 ], [ %indvars.iv232.lcssa, %.lr.ph124.us.us163.preheader ] ; 2 uses
  %i.il = getelementptr [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv234
  store i16 %load_initial448, ptr %i.il, align 2, !tbaa !9
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.im = trunc nuw i64 %indvars.iv.next235 to i32
  %i.in = icmp sgt i32 %5, %i.im
  br i1 %i.in, label %.lr.ph124.us.us163, label %._crit_edge.us.us165

._crit_edge.us.us165:                             ; preds = %.lr.ph124.us.us163, %..preheader115_crit_edge.split.split.us.us.us
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %i.m ; 2 uses
  %i.ip = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.q
  %i.iq = add nuw nsw i32 %.091131.us.us160, 1    ; 2 uses
  %exitcond237.not = icmp eq i32 %i.iq, %i.g
  %indvar.next445 = add i64 %indvar444, 1
  br i1 %exitcond237.not, label %.preheader114, label %.preheader116.us.us159

.preheader116.us:                                 ; preds = %.preheader116.us.preheader, %._crit_edge.us
  %indvar450 = phi i64 [ 0, %.preheader116.us.preheader ], [ %indvar.next451, %._crit_edge.us ] ; 2 uses
  %.091131.us = phi i32 [ 0, %.preheader116.us.preheader ], [ %i.kq, %._crit_edge.us ]
  %.095128.us = phi ptr [ %0, %.preheader116.us.preheader ], [ %i.ko, %._crit_edge.us ] ; 4 uses
  %.099125.us = phi ptr [ %1, %.preheader116.us.preheader ], [ %i.kp, %._crit_edge.us ] ; 5 uses
  %i.ir = mul i64 %i.ft, %indvar450
  %i.is = getelementptr i8, ptr %0, i64 %i.ir
  %scevgep452 = getelementptr i8, ptr %i.is, i64 -2
  %i.it = getelementptr i8, ptr %.099125.us, i64 %2 ; 3 uses
  %or.cond468.not = xor i1 %or.cond468, true
  %brmerge509 = select i1 %or.cond468.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge509, label %.thread.us136.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader116.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader116.us ] ; 3 uses
  %i.iu = trunc i64 %index to i32
  %i.iv = shl nuw i32 %i.iu, 1
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds [2 x i8], ptr %.099125.us, i64 %i.iw
  %wide.vec = load <8 x i16>, ptr %i.ix, align 2, !tbaa !9, !alias.scope !109
  %i.iy = freeze <8 x i16> %wide.vec
  %i.iz = bitcast <8 x i16> %i.iy to <4 x i32>    ; 2 uses
  %i.ja = lshr <4 x i32> %i.iz, splat (i32 16)
  %i.jb = add <4 x i32> %i.ja, %i.iz
  %i.jc = getelementptr [2 x i8], ptr %i.it, i64 %i.iw
  %wide.vec311 = load <8 x i16>, ptr %i.jc, align 2, !tbaa !9, !alias.scope !110
  %i.jd = freeze <8 x i16> %wide.vec311
  %i.je = bitcast <8 x i16> %i.jd to <4 x i32>    ; 2 uses
end_hunk_0
