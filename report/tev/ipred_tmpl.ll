Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_tmpl?download=true
inline.NumInlined: 55
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@filter_edge:bb.a
  %i.s = getelementptr i8, ptr %i.r, i64 -5
  %i.t = sext i32 %5 to i64                       ; 5 uses
  %i.u = zext nneg i32 %.037.lcssa to i64
  %wide.trip.count57 = zext nneg i32 %i.n to i64
  %.pre = load i8, ptr %i.s, align 1, !tbaa !33
  %.phi.trans.insert = getelementptr i8, ptr %i.r, i64 -4
  %.pre62 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !33
  %.phi.trans.insert63 = getelementptr i8, ptr %i.r, i64 -3
  %.pre64 = load i8, ptr %.phi.trans.insert63, align 1, !tbaa !33
  %.phi.trans.insert65 = getelementptr i8, ptr %i.r, i64 -2
  %.pre66 = load i8, ptr %.phi.trans.insert65, align 1, !tbaa !33
  %.phi.trans.insert67 = getelementptr i8, ptr %i.r, i64 -1
  %.pre68 = load i8, ptr %.phi.trans.insert67, align 1, !tbaa !33
  %i.v = zext i8 %.pre to i32
  %i.w = zext i8 %.pre62 to i32
  %i.x = zext i8 %.pre64 to i32
  %i.y = zext i8 %.pre66 to i32
  %i.z = zext i8 %.pre68 to i32
  br label %.preheader38

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.aa = icmp slt i64 %indvars.iv, %i.d
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.c)
  %i.ad = select i1 %i.aa, i32 %5, i32 %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !13
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ai = icmp slt i64 %indvars.iv.next, %i.d
  %i.aj = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.c)
  %i.al = select i1 %i.ai, i32 %5, i32 %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %4, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !13
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader39.loopexit.unr-lcssa, label %bb.b

.preheader38:                                     ; preds = %.preheader38.lr.ph, %.preheader38
  %indvars.iv54 = phi i64 [ %i.u, %.preheader38.lr.ph ], [ %indvars.iv.next55, %.preheader38 ] ; 9 uses
  %i.aq = add nsw i64 %indvars.iv54, -2           ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %i.t
  %i.as = trunc nsw i64 %i.aq to i32
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.p)
  %i.au = select i1 %i.ar, i32 %5, i32 %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %4, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !13
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul nuw nsw i32 %i.v, %i.ay
  %.not = icmp sgt i64 %indvars.iv54, %i.t
  %i.ba = trunc i64 %indvars.iv54 to i32
  %i.bb = add i32 %i.ba, -1
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.p)
  %i.bd = select i1 %.not, i32 %i.bc, i32 %5
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %4, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !13
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.w, %i.bh
  %i.bj = add nuw nsw i32 %i.bi, %i.az
  %i.bk = icmp slt i64 %indvars.iv54, %i.t
  %i.bl = trunc nsw i64 %indvars.iv54 to i32
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.p)
  %i.bn = select i1 %i.bk, i32 %5, i32 %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !13
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
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !13
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
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !13
  %i.cn = zext i16 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.z, %i.cn
  %i.cp = add nuw nsw i32 %i.co, %i.ce
  %i.cq = add nuw nsw i32 %i.cp, 8
  %i.cr = lshr i32 %i.cq, 4
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv54
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !13
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
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !13
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cw
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !13
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
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !13
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !13
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.do = trunc nuw i64 %indvars.iv.next60 to i32 ; 2 uses
  %i.dp = icmp sgt i32 %5, %i.do
  %i.dq = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.cv)
  %i.dr = select i1 %i.dp, i32 %5, i32 %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !13
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !13
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
  %i.g = sub nsw i32 %6, %i.e                     ; 9 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader116.lr.ph, label %.preheader114

.preheader116.lr.ph:                              ; preds = %bb.a
  %i.i = sub nsw i32 %5, %i.b                     ; 9 uses
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
  %scevgep344 = getelementptr i8, ptr %0, i64 %i.aa
  %i.ab = mul i64 %i.q, %i.x
  %9 = add i64 %i.ab, %wide.trip.count241
  %i.ac = shl i64 %9, 1
  %scevgep345 = getelementptr i8, ptr %1, i64 %i.ac
  %i.ad = xor i32 %i.e, -1
  %i.ae = add i32 %6, %i.ad
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = mul nuw i64 %i.m, %i.af
  %i.ah = shl nuw nsw i64 %wide.trip.count241, 1  ; 2 uses
  %i.ai = add i64 %i.ag, %wide.trip.count241
  %i.aj = shl i64 %i.ai, 1
  %scevgep372 = getelementptr i8, ptr %0, i64 %i.aj ; 2 uses
  %scevgep373 = getelementptr i8, ptr %1, i64 %2
  %i.ak = mul i64 %i.q, %i.af
  %i.al = shl i64 %i.ak, 1                        ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %2
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %scevgep374 = getelementptr i8, ptr %i.an, i64 %i.ah
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %scevgep375 = getelementptr i8, ptr %i.ao, i64 %i.ah
  %i.ap = shl nuw nsw i64 %wide.trip.count241, 1
  %i.aq = shl nuw nsw i64 %i.m, 1
  %i.ar = sub nsw i64 %i.m, %wide.trip.count241
  %i.as = getelementptr i8, ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 -2
  %min.iters.check386 = icmp ult i32 %i.i, 8
  %bound0376 = icmp ult ptr %0, %scevgep374
  %bound1377 = icmp ult ptr %scevgep373, %scevgep372
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0380 = icmp ult ptr %0, %scevgep375
  %bound1381 = icmp ult ptr %1, %scevgep372
  %found.conflict382 = and i1 %bound0380, %bound1381
  %.mask466 = and i64 %i.q, 4611686018427387904
  %stride.check383 = icmp ne i64 %.mask466, 0
  %i.au = or i1 %found.conflict382, %stride.check383
  %conflict.rdx384 = or i1 %found.conflict378, %i.au
  %n.vec388 = and i64 %wide.trip.count241, 2147483640 ; 3 uses
  %broadcast.splatinsert389 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat390 = shufflevector <8 x i32> %broadcast.splatinsert389, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n397 = icmp eq i64 %n.vec388, %wide.trip.count241
  %xtraiter486 = and i64 %wide.trip.count241, 1
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  %i.av = add nsw i64 %wide.trip.count241, -1
  %min.iters.check351 = icmp ult i32 %i.i, 4
  %bound0346 = icmp ult ptr %0, %scevgep345
  %bound1347 = icmp ult ptr %1, %scevgep344
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
  %xtraiter488 = and i64 %wide.trip.count241, 3   ; 2 uses
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  %xtraiter490.a = and i64 %i.ar, 7               ; 2 uses
  %lcmp.mod491.not.a = icmp eq i64 %xtraiter490.a, 0
  %i.ay = sub nsw i64 %wide.trip.count241, %i.m
  %i.az = icmp ugt i64 %i.ay, -8
  br label %.preheader116.us.us

.preheader116.us.us:                              ; preds = %.preheader116.us.us.preheader, %._crit_edge.us.us
  %indvar = phi i64 [ 0, %.preheader116.us.us.preheader ], [ %indvar.next, %._crit_edge.us.us ] ; 2 uses
  %.091131.us.us = phi i32 [ 0, %.preheader116.us.us.preheader ], [ %i.dm, %._crit_edge.us.us ]
  %.095128.us.us = phi ptr [ %0, %.preheader116.us.us.preheader ], [ %i.dk, %._crit_edge.us.us ] ; 21 uses
  %.099125.us.us = phi ptr [ %1, %.preheader116.us.us.preheader ], [ %i.dl, %._crit_edge.us.us ] ; 13 uses
  %i.ba = mul i64 %i.aq, %indvar
  %scevgep443 = getelementptr i8, ptr %i.at, i64 %i.ba
  %i.bb = getelementptr i8, ptr %.099125.us.us, i64 %2 ; 4 uses
  br i1 %.not104108, label %iter.check, label %.lr.ph.split.us.split.us144.us.preheader

.lr.ph.split.us.split.us144.us.preheader:         ; preds = %.preheader116.us.us
  %brmerge = select i1 %min.iters.check386, i1 true, i1 %conflict.rdx384
  br i1 %brmerge, label %.lr.ph.split.us.split.us144.us.preheader472, label %vector.body391

vector.body391:                                   ; preds = %.lr.ph.split.us.split.us144.us.preheader, %vector.body391
  %index392 = phi i64 [ %index.next395, %vector.body391 ], [ 0, %.lr.ph.split.us.split.us144.us.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index392
  %wide.load393 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !13, !alias.scope !69
  %i.bd = zext <8 x i16> %wide.load393 to <8 x i32>
  %i.be = getelementptr [2 x i8], ptr %i.bb, i64 %index392
  %wide.load394 = load <8 x i16>, ptr %i.be, align 2, !tbaa !13, !alias.scope !72
  %i.bf = zext <8 x i16> %wide.load394 to <8 x i32>
  %i.bg = add nuw nsw <8 x i32> %i.bf, %i.bd
  %i.bh = shl nuw nsw <8 x i32> %i.bg, %broadcast.splat390
  %i.bi = trunc <8 x i32> %i.bh to <8 x i16>
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index392
  store <8 x i16> %i.bi, ptr %i.bj, align 2, !tbaa !13, !alias.scope !74, !noalias !76
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next395, %n.vec388
  br i1 %i.bk, label %middle.block396, label %vector.body391, !llvm.loop !77

middle.block396:                                  ; preds = %vector.body391
  br i1 %cmp.n397, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us144.us.preheader472

.lr.ph.split.us.split.us144.us.preheader472:      ; preds = %.lr.ph.split.us.split.us144.us.preheader, %middle.block396
  %indvars.iv238.ph = phi i64 [ %n.vec388, %middle.block396 ], [ 0, %.lr.ph.split.us.split.us144.us.preheader ] ; 6 uses
  br i1 %lcmp.mod487.not, label %.lr.ph.split.us.split.us144.us.prol.loopexit, label %.lr.ph.split.us.split.us144.us.prol

.lr.ph.split.us.split.us144.us.prol:              ; preds = %.lr.ph.split.us.split.us144.us.preheader472
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv238.ph
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !13
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv238.ph
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !13
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bq, %i.bn
  %i.bs = shl nuw nsw i32 %i.br, %i.l
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv238.ph
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !13
  %indvars.iv.next239.prol = or disjoint i64 %indvars.iv238.ph, 1
  br label %.lr.ph.split.us.split.us144.us.prol.loopexit

.lr.ph.split.us.split.us144.us.prol.loopexit:     ; preds = %.lr.ph.split.us.split.us144.us.prol, %.lr.ph.split.us.split.us144.us.preheader472
  %indvars.iv238.unr = phi i64 [ %indvars.iv238.ph, %.lr.ph.split.us.split.us144.us.preheader472 ], [ %indvars.iv.next239.prol, %.lr.ph.split.us.split.us144.us.prol ]
  %i.bv = icmp eq i64 %indvars.iv238.ph, %i.av
  br i1 %i.bv, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us144.us

iter.check:                                       ; preds = %.preheader116.us.us
  %brmerge507 = select i1 %min.iters.check351, i1 true, i1 %i.aw
  br i1 %brmerge507, label %.lr.ph.split.us.split.us.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check352, label %vec.epilog.ph, label %vector.body357

vector.body357:                                   ; preds = %vector.main.loop.iter.check, %vector.body357
  %index358 = phi i64 [ %index.next360, %vector.body357 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index358 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <8 x i16>, ptr %i.bw, align 2, !tbaa !13, !alias.scope !78
  %wide.load359 = load <8 x i16>, ptr %i.bx, align 2, !tbaa !13, !alias.scope !78
  %i.by = zext <8 x i16> %wide.load to <8 x i32>
  %i.bz = zext <8 x i16> %wide.load359 to <8 x i32>
  %i.ca = shl nuw nsw <8 x i32> %i.by, %broadcast.splat356
  %i.cb = shl nuw nsw <8 x i32> %i.bz, %broadcast.splat356
  %i.cc = trunc <8 x i32> %i.ca to <8 x i16>
  %i.cd = trunc <8 x i32> %i.cb to <8 x i16>
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index358 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <8 x i16> %i.cc, ptr %i.ce, align 2, !tbaa !13, !alias.scope !81, !noalias !78
  store <8 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !13, !alias.scope !81, !noalias !78
  %index.next360 = add nuw i64 %index358, 16      ; 2 uses
  %i.cg = icmp eq i64 %index.next360, %n.vec354
  br i1 %i.cg, label %middle.block361, label %vector.body357, !llvm.loop !83

middle.block361:                                  ; preds = %vector.body357
  br i1 %cmp.n362, label %..preheader115_crit_edge.split.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block361
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.us.us.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec354, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index366 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next368, %vec.epilog.vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index366
  %wide.load367 = load <4 x i16>, ptr %i.ch, align 2, !tbaa !13, !alias.scope !78
  %i.ci = zext <4 x i16> %wide.load367 to <4 x i32>
  %i.cj = shl nuw nsw <4 x i32> %i.ci, %broadcast.splat365
  %i.ck = trunc <4 x i32> %i.cj to <4 x i16>
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index366
  store <4 x i16> %i.ck, ptr %i.cl, align 2, !tbaa !13, !alias.scope !81, !noalias !78
  %index.next368 = add nuw i64 %index366, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !84

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n369, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us.preheader

.lr.ph.split.us.split.us.us.us.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv243.ph = phi i64 [ 0, %iter.check ], [ %n.vec363, %vec.epilog.middle.block ], [ %n.vec354, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod489.not, label %.lr.ph.split.us.split.us.us.us.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.prol

.lr.ph.split.us.split.us.us.us.prol:              ; preds = %.lr.ph.split.us.split.us.us.us.preheader, %.lr.ph.split.us.split.us.us.us.prol
  %indvars.iv243.prol = phi i64 [ %indvars.iv.next244.prol, %.lr.ph.split.us.split.us.us.us.prol ], [ %indvars.iv243.ph, %.lr.ph.split.us.split.us.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.split.us.us.us.prol ], [ 0, %.lr.ph.split.us.split.us.us.us.preheader ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv243.prol
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !13
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, %i.l
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv243.prol
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !13
  %indvars.iv.next244.prol = add nuw nsw i64 %indvars.iv243.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter488
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.split.us.us.us.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.prol, !llvm.loop !85

.lr.ph.split.us.split.us.us.us.prol.loopexit:     ; preds = %.lr.ph.split.us.split.us.us.us.prol, %.lr.ph.split.us.split.us.us.us.preheader
  %indvars.iv243.unr = phi i64 [ %indvars.iv243.ph, %.lr.ph.split.us.split.us.us.us.preheader ], [ %indvars.iv.next244.prol, %.lr.ph.split.us.split.us.us.us.prol ]
  %i.ct = sub nsw i64 %indvars.iv243.ph, %wide.trip.count241
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us

.lr.ph124.us.us:                                  ; preds = %.lr.ph124.us.us.prol.loopexit, %.lr.ph124.us.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252.7, %.lr.ph124.us.us ], [ %indvars.iv251.unr, %.lr.ph124.us.us.prol.loopexit ] ; 9 uses
  %i.cv = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  store i16 %load_initial, ptr %i.cv, align 2, !tbaa !13
  %i.cw = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.cx = getelementptr i8, ptr %i.cw, i64 2
  store i16 %load_initial, ptr %i.cx, align 2, !tbaa !13
  %i.cy = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  store i16 %load_initial, ptr %i.cz, align 2, !tbaa !13
  %i.da = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.db = getelementptr i8, ptr %i.da, i64 6
  store i16 %load_initial, ptr %i.db, align 2, !tbaa !13
  %i.dc = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  store i16 %load_initial, ptr %i.dd, align 2, !tbaa !13
  %i.de = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.df = getelementptr i8, ptr %i.de, i64 10
  store i16 %load_initial, ptr %i.df, align 2, !tbaa !13
  %i.dg = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.dh = getelementptr i8, ptr %i.dg, i64 12
  store i16 %load_initial, ptr %i.dh, align 2, !tbaa !13
  %i.di = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.dj = getelementptr i8, ptr %i.di, i64 14
  store i16 %load_initial, ptr %i.dj, align 2, !tbaa !13
  %indvars.iv.next252.7 = add nuw nsw i64 %indvars.iv251, 8 ; 2 uses
  %exitcond255.not.7 = icmp eq i64 %indvars.iv.next252.7, %i.m
  br i1 %exitcond255.not.7, label %._crit_edge.us.us, label %.lr.ph124.us.us

._crit_edge.us.us:                                ; preds = %.lr.ph124.us.us.prol.loopexit, %.lr.ph124.us.us, %..preheader115_crit_edge.split.us.us.us
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %i.m ; 2 uses
  %i.dl = getelementptr inbounds [2 x i8], ptr %.099125.us.us, i64 %i.q
  %i.dm = add nuw nsw i32 %.091131.us.us, 1       ; 2 uses
  %exitcond256.not = icmp eq i32 %i.dm, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond256.not, label %.preheader114, label %.preheader116.us.us

.lr.ph.split.us.split.us144.us:                   ; preds = %.lr.ph.split.us.split.us144.us.prol.loopexit, %.lr.ph.split.us.split.us144.us
  %indvars.iv238 = phi i64 [ %indvars.iv.next239.1, %.lr.ph.split.us.split.us144.us ], [ %indvars.iv238.unr, %.lr.ph.split.us.split.us144.us.prol.loopexit ] ; 5 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv238
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !13
  %i.dp = zext i16 %i.do to i32
  %i.dq = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv238
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !13
  %i.ds = zext i16 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.ds, %i.dp
  %i.du = shl nuw nsw i32 %i.dt, %i.l
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv238
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !13
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 3 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next239
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !13
  %i.dz = zext i16 %i.dy to i32
  %i.ea = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv.next239
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !13
  %i.ec = zext i16 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, %i.dz
  %i.ee = shl nuw nsw i32 %i.ed, %i.l
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next239
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !13
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %exitcond242.not.1 = icmp eq i64 %indvars.iv.next239.1, %wide.trip.count241
  br i1 %exitcond242.not.1, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us144.us, !llvm.loop !86

..preheader115_crit_edge.split.us.us.us:          ; preds = %.lr.ph.split.us.split.us144.us.prol.loopexit, %.lr.ph.split.us.split.us144.us, %.lr.ph.split.us.split.us.us.us.prol.loopexit, %.lr.ph.split.us.split.us.us.us, %middle.block396, %middle.block361, %vec.epilog.middle.block
  br i1 %.not286, label %._crit_edge.us.us, label %.lr.ph124.us.us.preheader

.lr.ph124.us.us.preheader:                        ; preds = %..preheader115_crit_edge.split.us.us.us
  %load_initial = load i16, ptr %scevgep443, align 2 ; 9 uses
  br i1 %lcmp.mod491.not.a, label %.lr.ph124.us.us.prol.loopexit, label %.lr.ph124.us.us.prol

.lr.ph124.us.us.prol:                             ; preds = %.lr.ph124.us.us.preheader, %.lr.ph124.us.us.prol
  %indvars.iv251.prol = phi i64 [ %indvars.iv.next252.prol, %.lr.ph124.us.us.prol ], [ %i.u, %.lr.ph124.us.us.preheader ] ; 2 uses
  %prol.iter492.a = phi i64 [ %prol.iter492.next.a, %.lr.ph124.us.us.prol ], [ 0, %.lr.ph124.us.us.preheader ]
  %i.eh = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251.prol
  store i16 %load_initial, ptr %i.eh, align 2, !tbaa !13
  %indvars.iv.next252.prol = add nuw nsw i64 %indvars.iv251.prol, 1 ; 2 uses
  %prol.iter492.next.a = add i64 %prol.iter492.a, 1 ; 2 uses
  %prol.iter492.cmp.not.a = icmp eq i64 %prol.iter492.next.a, %xtraiter490.a
  br i1 %prol.iter492.cmp.not.a, label %.lr.ph124.us.us.prol.loopexit, label %.lr.ph124.us.us.prol, !llvm.loop !87

.lr.ph124.us.us.prol.loopexit:                    ; preds = %.lr.ph124.us.us.prol, %.lr.ph124.us.us.preheader
  %indvars.iv251.unr = phi i64 [ %i.u, %.lr.ph124.us.us.preheader ], [ %indvars.iv.next252.prol, %.lr.ph124.us.us.prol ]
  br i1 %i.az, label %._crit_edge.us.us, label %.lr.ph124.us.us

.lr.ph.split.us.split.us.us.us:                   ; preds = %.lr.ph.split.us.split.us.us.us.prol.loopexit, %.lr.ph.split.us.split.us.us.us
  %indvars.iv243 = phi i64 [ %indvars.iv.next244.3, %.lr.ph.split.us.split.us.us.us ], [ %indvars.iv243.unr, %.lr.ph.split.us.split.us.us.us.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv243
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !13
  %i.ek = zext i16 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, %i.l
  %i.em = trunc i32 %i.el to i16
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv243
  store i16 %i.em, ptr %i.en, align 2, !tbaa !13
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.eq = zext i16 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, %i.l
  %i.es = trunc i32 %i.er to i16
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244
  store i16 %i.es, ptr %i.et, align 2, !tbaa !13
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244.1
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !13
  %i.ew = zext i16 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, %i.l
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244.1
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !13
  %indvars.iv.next244.2 = add nuw nsw i64 %indvars.iv243, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244.2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !13
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, %i.l
  %i.fe = trunc i32 %i.fd to i16
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244.2
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !13
  %indvars.iv.next244.3 = add nuw nsw i64 %indvars.iv243, 4 ; 2 uses
  %exitcond247.not.3 = icmp eq i64 %indvars.iv.next244.3, %wide.trip.count246
  br i1 %exitcond247.not.3, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us, !llvm.loop !88

.preheader116.lr.ph.split.us.split:               ; preds = %.preheader116.lr.ph.split.us
  %.not285 = icmp eq i32 %3, 0                    ; 2 uses
  %i.fg = add nsw i64 %wide.trip.count241, -1     ; 2 uses
  %i.fh = xor i32 %i.e, -1
  %i.fi = add i32 %6, %i.fh
  %i.fj = zext i32 %i.fi to i64                   ; 3 uses
  %i.fk = mul nuw i64 %i.m, %i.fj
  %i.fl = add i64 %i.fk, %wide.trip.count241
  %i.fm = shl i64 %i.fl, 1
  %scevgep320 = getelementptr i8, ptr %0, i64 %i.fm ; 3 uses
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
  %.not462 = icmp eq i64 %i.fu, 0
  %or.cond468 = select i1 %min.iters.check, i1 %.not462, i1 false
  %bound0 = icmp ult ptr %0, %scevgep304
  %bound1 = icmp ult ptr %scevgep303, %scevgep320
  %found.conflict = and i1 %bound0, %bound1
  %bound0306 = icmp ult ptr %0, %scevgep305
  %bound1307 = icmp ult ptr %1, %scevgep320
  %found.conflict308 = and i1 %bound0306, %bound1307
  %.mask = and i64 %i.q, 4611686018427387904
  %stride.check309 = icmp ne i64 %.mask, 0
  %i.fv = or i1 %found.conflict308, %stride.check309
  %conflict.rdx = or i1 %found.conflict, %i.fv
  %n.vec = and i64 %wide.trip.count241, 2147483644 ; 5 uses
  %i.fw = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count241
  br label %.preheader116.us

.preheader116.us.us159.preheader:                 ; preds = %.preheader116.lr.ph.split.us.split
  %i.fx = mul i64 %i.q, %i.fj
  %i.fy = shl i64 %i.fx, 1
  %i.fz = shl nuw nsw i64 %wide.trip.count241, 2
  %i.ga = getelementptr i8, ptr %1, i64 %i.fy
  %scevgep321 = getelementptr i8, ptr %i.ga, i64 %i.fz
  %i.gb = shl nuw nsw i64 %i.m, 1
  %min.iters.check327 = icmp ugt i32 %i.i, 11
  %i.gc = and i64 %i.fg, -3221225472
  %.not464 = icmp eq i64 %i.gc, 0
  %or.cond = select i1 %min.iters.check327, i1 %.not464, i1 false
  %bound0322 = icmp ult ptr %0, %scevgep321
  %bound1323 = icmp ult ptr %1, %scevgep320
  %found.conflict324 = and i1 %bound0322, %bound1323
  %.mask465 = and i64 %i.q, 4611686018427387904
  %stride.check325 = icmp ne i64 %.mask465, 0
  %i.gd = or i1 %found.conflict324, %stride.check325
  %n.vec329 = and i64 %wide.trip.count241, 2147483644 ; 5 uses
  %i.ge = or disjoint i64 %n.vec329, 1
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat331 = shufflevector <4 x i32> %broadcast.splatinsert330, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n340 = icmp eq i64 %n.vec329, %wide.trip.count241
  %xtraiter484 = and i64 %wide.trip.count241, 1
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  %i.gf = add nsw i64 %wide.trip.count241, -1
  br label %.preheader116.us.us159

.preheader116.us.us159:                           ; preds = %.preheader116.us.us159.preheader, %._crit_edge.us.us165
  %indvar444 = phi i64 [ 0, %.preheader116.us.us159.preheader ], [ %indvar.next445, %._crit_edge.us.us165 ] ; 2 uses
  %.091131.us.us160 = phi i32 [ 0, %.preheader116.us.us159.preheader ], [ %i.ho, %._crit_edge.us.us165 ]
  %.095128.us.us161 = phi ptr [ %0, %.preheader116.us.us159.preheader ], [ %i.hm, %._crit_edge.us.us165 ] ; 6 uses
  %.099125.us.us162 = phi ptr [ %1, %.preheader116.us.us159.preheader ], [ %i.hn, %._crit_edge.us.us165 ] ; 8 uses
  %i.gg = mul i64 %i.gb, %indvar444
  %i.gh = getelementptr i8, ptr %0, i64 %i.gg
  %scevgep446 = getelementptr i8, ptr %i.gh, i64 -2
  %or.cond.not = xor i1 %or.cond, true
  %brmerge508 = select i1 %or.cond.not, i1 true, i1 %i.gd
  br i1 %brmerge508, label %.thread.us.us.us.preheader, label %vector.body332

vector.body332:                                   ; preds = %.preheader116.us.us159, %vector.body332
  %index333 = phi i64 [ %index.next337, %vector.body332 ], [ 0, %.preheader116.us.us159 ] ; 3 uses
  %i.gi = trunc i64 %index333 to i32
  %i.gj = shl nuw i32 %i.gi, 1
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.gk
  %wide.vec334 = load <8 x i16>, ptr %i.gl, align 2, !tbaa !13, !alias.scope !89
  %i.gm = freeze <8 x i16> %wide.vec334
  %i.gn = bitcast <8 x i16> %i.gm to <4 x i32>    ; 2 uses
  %i.go = lshr <4 x i32> %i.gn, splat (i32 16)
  %i.gp = add <4 x i32> %i.go, %i.gn
  %i.gq = shl <4 x i32> %i.gp, %broadcast.splat331
  %i.gr = trunc <4 x i32> %i.gq to <4 x i16>
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %index333
  store <4 x i16> %i.gr, ptr %i.gs, align 2, !tbaa !13, !alias.scope !92, !noalias !89
  %index.next337 = add nuw i64 %index333, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next337, %n.vec329
  br i1 %i.gt, label %middle.block338, label %vector.body332, !llvm.loop !94

middle.block338:                                  ; preds = %vector.body332
  br i1 %cmp.n340, label %..preheader115_crit_edge.split.split.us.us.us, label %.thread.us.us.us.preheader

.thread.us.us.us.preheader:                       ; preds = %.preheader116.us.us159, %middle.block338
  %indvars.iv232.ph = phi i64 [ %i.ge, %middle.block338 ], [ 1, %.preheader116.us.us159 ] ; 3 uses
  %indvars.iv225.ph = phi i64 [ %n.vec329, %middle.block338 ], [ 0, %.preheader116.us.us159 ] ; 6 uses
  br i1 %lcmp.mod485.not, label %.thread.us.us.us.prol.loopexit, label %.thread.us.us.us.prol

.thread.us.us.us.prol:                            ; preds = %.thread.us.us.us.preheader
  %i.gu = trunc nuw nsw i64 %indvars.iv225.ph to i32
  %i.gv = shl nuw i32 %i.gu, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !13
  %i.gz = zext i16 %i.gy to i32
  %.idx.prol = shl nuw nsw i64 %indvars.iv225.ph, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx.prol
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !13
  %i.hd = zext i16 %i.hc to i32
  %i.he = add nuw nsw i32 %i.hd, %i.gz
  %i.hf = shl nuw nsw i32 %i.he, %i.l
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv225.ph
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !13
  %indvars.iv.next226.prol = or disjoint i64 %indvars.iv225.ph, 1
  %indvars.iv.next233.prol = add nuw nsw i64 %indvars.iv232.ph, 1
  br label %.thread.us.us.us.prol.loopexit

.thread.us.us.us.prol.loopexit:                   ; preds = %.thread.us.us.us.prol, %.thread.us.us.us.preheader
  %indvars.iv232.unr = phi i64 [ %indvars.iv232.ph, %.thread.us.us.us.preheader ], [ %indvars.iv.next233.prol, %.thread.us.us.us.prol ]
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %.thread.us.us.us.preheader ], [ %indvars.iv.next226.prol, %.thread.us.us.us.prol ]
  %i.hi = icmp eq i64 %indvars.iv225.ph, %i.gf
  br i1 %i.hi, label %..preheader115_crit_edge.split.split.us.us.us, label %.thread.us.us.us

.lr.ph124.us.us164:                               ; preds = %.lr.ph124.us.us164.preheader, %.lr.ph124.us.us164
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph124.us.us164 ], [ %indvars.iv232.lcssa, %.lr.ph124.us.us164.preheader ] ; 2 uses
  %i.hj = getelementptr [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv234
  store i16 %load_initial448, ptr %i.hj, align 2, !tbaa !13
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.hk = trunc nuw i64 %indvars.iv.next235 to i32
  %i.hl = icmp sgt i32 %5, %i.hk
  br i1 %i.hl, label %.lr.ph124.us.us164, label %._crit_edge.us.us165

._crit_edge.us.us165:                             ; preds = %.lr.ph124.us.us164, %..preheader115_crit_edge.split.split.us.us.us
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %i.m ; 2 uses
  %i.hn = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.q
  %i.ho = add nuw nsw i32 %.091131.us.us160, 1    ; 2 uses
  %exitcond237.not = icmp eq i32 %i.ho, %i.g
  %indvar.next445 = add i64 %indvar444, 1
  br i1 %exitcond237.not, label %.preheader114, label %.preheader116.us.us159

.thread.us.us.us:                                 ; preds = %.thread.us.us.us.prol.loopexit, %.thread.us.us.us
  %indvars.iv232 = phi i64 [ %indvars.iv.next233.1, %.thread.us.us.us ], [ %indvars.iv232.unr, %.thread.us.us.us.prol.loopexit ] ; 2 uses
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %.thread.us.us.us ], [ %indvars.iv225.unr, %.thread.us.us.us.prol.loopexit ] ; 5 uses
  %i.hp = trunc nuw nsw i64 %indvars.iv225 to i32
  %i.hq = shl nuw i32 %i.hp, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !13
  %i.hu = zext i16 %i.ht to i32
  %.idx = shl nuw nsw i64 %indvars.iv225, 2
  %i.hv = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !13
  %i.hy = zext i16 %i.hx to i32
  %i.hz = add nuw nsw i32 %i.hy, %i.hu
  %i.ia = shl nuw nsw i32 %i.hz, %i.l
  %i.ib = trunc i32 %i.ia to i16
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv225
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !13
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 3 uses
  %i.id = trunc nuw nsw i64 %indvars.iv.next226 to i32
  %i.ie = shl nuw i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !13
  %i.ii = zext i16 %i.ih to i32
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next226, 2
  %i.ij = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx.1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !13
  %i.im = zext i16 %i.il to i32
  %i.in = add nuw nsw i32 %i.im, %i.ii
  %i.io = shl nuw nsw i32 %i.in, %i.l
  %i.ip = trunc i32 %i.io to i16
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv.next226
  store i16 %i.ip, ptr %i.iq, align 2, !tbaa !13
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %exitcond229.not.1 = icmp eq i64 %indvars.iv.next226.1, %wide.trip.count241
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2
  br i1 %exitcond229.not.1, label %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa, label %.thread.us.us.us, !llvm.loop !95

..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa: ; preds = %.thread.us.us.us
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  br label %..preheader115_crit_edge.split.split.us.us.us

..preheader115_crit_edge.split.split.us.us.us:    ; preds = %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa, %.thread.us.us.us.prol.loopexit, %middle.block338
  %indvars.iv232.lcssa = phi i64 [ %n.vec329, %middle.block338 ], [ %indvars.iv232.ph, %.thread.us.us.us.prol.loopexit ], [ %indvars.iv.next233, %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  br i1 %.not285, label %._crit_edge.us.us165, label %.lr.ph124.us.us164.preheader

.lr.ph124.us.us164.preheader:                     ; preds = %..preheader115_crit_edge.split.split.us.us.us
  %i.ir = shl i64 %indvars.iv232.lcssa, 1
  %scevgep447 = getelementptr i8, ptr %scevgep446, i64 %i.ir
  %load_initial448 = load i16, ptr %scevgep447, align 2
  br label %.lr.ph124.us.us164

.preheader116.us:                                 ; preds = %.preheader116.us.preheader, %._crit_edge.us
  %indvar450 = phi i64 [ 0, %.preheader116.us.preheader ], [ %indvar.next451, %._crit_edge.us ] ; 2 uses
  %.091131.us = phi i32 [ 0, %.preheader116.us.preheader ], [ %i.kq, %._crit_edge.us ]
  %.095128.us = phi ptr [ %0, %.preheader116.us.preheader ], [ %i.ko, %._crit_edge.us ] ; 4 uses
  %.099125.us = phi ptr [ %1, %.preheader116.us.preheader ], [ %i.kp, %._crit_edge.us ] ; 5 uses
  %i.is = mul i64 %i.ft, %indvar450
  %i.it = getelementptr i8, ptr %0, i64 %i.is
  %scevgep452 = getelementptr i8, ptr %i.it, i64 -2
  %i.iu = getelementptr i8, ptr %.099125.us, i64 %2 ; 3 uses
  %or.cond468.not = xor i1 %or.cond468, true
  %brmerge509 = select i1 %or.cond468.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge509, label %.thread.us134.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader116.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader116.us ] ; 3 uses
  %i.iv = trunc i64 %index to i32
  %i.iw = shl nuw i32 %i.iv, 1
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [2 x i8], ptr %.099125.us, i64 %i.ix
  %wide.vec = load <8 x i16>, ptr %i.iy, align 2, !tbaa !13, !alias.scope !96
  %i.iz = freeze <8 x i16> %wide.vec
  %i.ja = bitcast <8 x i16> %i.iz to <4 x i32>    ; 2 uses
  %i.jb = lshr <4 x i32> %i.ja, splat (i32 16)
  %i.jc = add <4 x i32> %i.jb, %i.ja
  %i.jd = getelementptr [2 x i8], ptr %i.iu, i64 %i.ix
  %wide.vec311 = load <8 x i16>, ptr %i.jd, align 2, !tbaa !13, !alias.scope !99
  %i.je = freeze <8 x i16> %wide.vec311
  %i.jf = bitcast <8 x i16> %i.je to <4 x i32>    ; 2 uses
  %i.jg = lshr <4 x i32> %i.jf, splat (i32 16)
  %i.jh = add <4 x i32> %i.jc, %i.jf
  %i.ji = add <4 x i32> %i.jh, %i.jg
  %i.jj = shl <4 x i32> %i.ji, %broadcast.splat
  %i.jk = trunc <4 x i32> %i.jj to <4 x i16>
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.095128.us, i64 %index
  store <4 x i16> %i.jk, ptr %i.jl, align 2, !tbaa !13, !alias.scope !101, !noalias !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader115_crit_edge.split.split.us136, label %.thread.us134.preheader

.thread.us134.preheader:                          ; preds = %.preheader116.us, %middle.block
  %indvars.iv219.ph = phi i64 [ %i.fw, %middle.block ], [ 1, %.preheader116.us ]
  %indvars.iv212.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader116.us ]
  br label %.thread.us134

.thread.us134:                                    ; preds = %.thread.us134.preheader, %.thread.us134
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %.thread.us134 ], [ %indvars.iv219.ph, %.thread.us134.preheader ] ; 2 uses
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.thread.us134 ], [ %indvars.iv212.ph, %.thread.us134.preheader ] ; 4 uses
  %i.jn = trunc nuw nsw i64 %indvars.iv212 to i32
end_hunk_0
