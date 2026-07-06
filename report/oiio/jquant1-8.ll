inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@jinit_1pass_quantizer:bb.a
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi i32 [ %.pre, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !44  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 68 ; 8 uses
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !53  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !55
  %i.au = zext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3  ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.au
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.au
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  %i.bd = sext i32 %i.ao to i64                   ; 5 uses
  %i.be = icmp sgt i32 %i.ar, 1
  br i1 %i.be, label %.lr.ph.us.i.i.preheader, label %.split.preheader.i.i

.lr.ph.us.i.i.preheader:                          ; preds = %bb.i
  %i.bf = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.bg = add nsw i32 %i.ar, -2
  %xtraiter = and i32 %i.bf, 7                    ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 7
  %unroll_iter = and i32 %i.bf, -8
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod85 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.us.i.i

.split.preheader.i.i:                             ; preds = %bb.i
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 1) ; 2 uses
  %narrow.i.i = add nuw i32 %smax.i.i, 1
  br label %.split60.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i.preheader, %._crit_edge.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.us.i.i ], [ 1, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 12 uses
  br i1 %i.bh, label %.epil.preheader, label %.lr.ph.us.i.i.new

.lr.ph.us.i.i.new:                                ; preds = %.lr.ph.us.i.i
  %factor.op.mul = mul i64 %indvars.iv.next.i.i, %indvars.iv.next.i.i
  %factor.op.mul102 = mul i64 %factor.op.mul, %indvars.iv.next.i.i
  %factor.op.mul103 = mul i64 %factor.op.mul102, %indvars.iv.next.i.i
  %factor.op.mul104 = mul i64 %factor.op.mul103, %indvars.iv.next.i.i
  %factor.op.mul105 = mul i64 %factor.op.mul104, %indvars.iv.next.i.i
  %factor.op.mul106 = mul i64 %factor.op.mul105, %indvars.iv.next.i.i
  %factor.op.mul107 = mul i64 %factor.op.mul106, %indvars.iv.next.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.us.i.i.new
  %.058.us.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.us.i.i.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %bb.j ]
  %niter = phi i32 [ 0, %.lr.ph.us.i.i.new ], [ %niter.next.7, %bb.j ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.058.us.i.i, %factor.op.mul107 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.i.unr-lcssa, label %bb.j, !llvm.loop !56

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %bb.j
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.lr.ph.us.i.i
  %.058.us.i.i.epil.init = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.us.i.i ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.058.us.i.i.epil = phi i64 [ %.058.us.i.i.epil.init, %.epil.preheader ], [ %i.bi, %bb.k ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bi = mul nuw nsw i64 %.058.us.i.i.epil, %indvars.iv.next.i.i ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %bb.k, !llvm.loop !58

._crit_edge.us.i.i:                               ; preds = %bb.k, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa83 = phi i64 [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bi, %bb.k ] ; 2 uses
  %.not.us.i.i = icmp sgt i64 %.lcssa83, %i.bd
  br i1 %.not.us.i.i, label %.split60.us.loopexit.i.i, label %.lr.ph.us.i.i, !llvm.loop !60

.split60.us.loopexit.i.i:                         ; preds = %._crit_edge.us.i.i
  %i.bj = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bk = trunc i64 %.lcssa83 to i32
  br label %.split60.us.i.i

.split60.us.i.i:                                  ; preds = %.split60.us.loopexit.i.i, %.split.preheader.i.i
  %.us-phi.i.i = phi i32 [ %i.bj, %.split60.us.loopexit.i.i ], [ %smax.i.i, %.split.preheader.i.i ] ; 4 uses
  %.us-phi61.i.i = phi i32 [ %i.bk, %.split60.us.loopexit.i.i ], [ %narrow.i.i, %.split.preheader.i.i ]
  %i.bl = icmp samesign ult i32 %.us-phi.i.i, 2
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split60.us.i.i
  %i.bm = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 58, ptr %i.bn, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store i32 %.us-phi61.i.i, ptr %i.bo, align 4, !tbaa !36
  %i.bp = load ptr, ptr %0, align 8, !tbaa !32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37
  tail call void %i.bq(ptr noundef nonnull %0) #8, !inline_history !61
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split60.us.i.i
  %i.br = icmp sgt i32 %i.ar, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i, label %select_ncolors.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %wide.trip.count85.i.i = zext nneg i32 %i.ar to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count85.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.us-phi.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bv, %vector.body ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.bt, align 4, !tbaa !3
  %i.bu = mul <4 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %i.bv = mul <4 x i32> %vec.phi74, %broadcast.splat ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count85.i.i
  br i1 %cmp.n, label %.lr.ph67.us.preheader.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv82.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.04863.i.i.ph = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph67.us.preheader.i.i:                        ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa72 = phi i32 [ %i.bx, %middle.block ], [ %i.dy, %.lr.ph.i.i ] ; 2 uses
  %i.by = load i32, ptr %i.as, align 8, !tbaa !55
  %i.bz = icmp eq i32 %i.by, 2
  %narrow101.i64.i = select i1 %i.bz, i32 %i.aw, i32 0
  %spec.select.i65.i = sext i32 %narrow101.i64.i to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i65.i ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3  ; 2 uses
  %i.cc = sdiv i32 %.lcssa72, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = add nsw i32 %i.cb, 1                    ; 3 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.cd, %i.cf                ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, %i.bd
  br i1 %i.ch, label %select_ncolors.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph67.us.preheader.i.i
  %exitcond90.peel.not.i.i = icmp eq i32 %i.ar, 1
  br i1 %exitcond90.peel.not.i.i, label %._crit_edge.us73.i.us.i, label %.peel.next.i.preheader.i

._crit_edge.us73.i.us.i:                          ; preds = %.lr.ph.i, %._crit_edge.us73.i.us.i
  %i.ci = phi i64 [ %i.cu, %._crit_edge.us73.i.us.i ], [ %i.cg, %.lr.ph.i ]
  %i.cj = phi i32 [ %i.cs, %._crit_edge.us73.i.us.i ], [ %i.ce, %.lr.ph.i ]
  %i.ck = phi ptr [ %i.co, %._crit_edge.us73.i.us.i ], [ %i.ca, %.lr.ph.i ]
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %i.cl = trunc i64 %i.ci to i32                  ; 2 uses
  %i.cm = load i32, ptr %i.as, align 8, !tbaa !55
  %i.cn = icmp eq i32 %i.cm, 2
  %narrow101.i.us.i = select i1 %i.cn, i32 %i.aw, i32 0
  %spec.select.i.us.i = sext i32 %narrow101.i.us.i to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i.us.i ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = sdiv i32 %i.cl, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = add nsw i32 %i.cp, 1                    ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.cr, %i.ct                ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, %i.bd
  br i1 %i.cv, label %select_ncolors.exit.i, label %._crit_edge.us73.i.us.i

.peel.next.i.preheader.i:                         ; preds = %.lr.ph.i, %._crit_edge.us73.i.loopexit.i
  %i.cw = phi i64 [ %i.dv, %._crit_edge.us73.i.loopexit.i ], [ %i.cg, %.lr.ph.i ]
  %i.cx = phi i32 [ %i.dt, %._crit_edge.us73.i.loopexit.i ], [ %i.ce, %.lr.ph.i ]
  %i.cy = phi ptr [ %i.dp, %._crit_edge.us73.i.loopexit.i ], [ %i.ca, %.lr.ph.i ]
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !3
  %i.cz = trunc i64 %i.cw to i32
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.p, %.peel.next.i.preheader.i
  %indvars.iv87.i.i = phi i64 [ %indvars.iv.next88.i.i, %bb.p ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.265.us.i.i = phi i32 [ %i.dm, %bb.p ], [ %i.cz, %.peel.next.i.preheader.i ] ; 2 uses
  %i.da = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.db = icmp eq i32 %i.da, 2
  %1 = trunc nuw nsw i64 %indvars.iv87.i.i to i32
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.peel.next.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.peel.next.i.i
  %2 = phi i32 [ %i.dd, %bb.n ], [ %1, %.peel.next.i.i ]
  %3 = sext i32 %2 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %i.dg = sdiv i32 %.265.us.i.i, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = add nsw i32 %i.df, 1                    ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %i.dh, %i.dj                ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, %i.bd
  br i1 %i.dl, label %._crit_edge.us73.i.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.di, ptr %i.de, align 4, !tbaa !3
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  %indvars.iv.next88.i.i = add nuw nsw i64 %indvars.iv87.i.i, 1 ; 2 uses
  %exitcond90.not.i.i = icmp eq i64 %indvars.iv.next88.i.i, %wide.trip.count85.i.i
  br i1 %exitcond90.not.i.i, label %.._crit_edge.us73.i.loopexit_crit_edge.i, label %.peel.next.i.i, !llvm.loop !65

.._crit_edge.us73.i.loopexit_crit_edge.i:         ; preds = %bb.p
  %.pre.i = load i32, ptr %i.as, align 8, !tbaa !55
  br label %._crit_edge.us73.i.loopexit.i, !llvm.loop !65

._crit_edge.us73.i.loopexit.i:                    ; preds = %bb.o, %.._crit_edge.us73.i.loopexit_crit_edge.i
  %i.dn = phi i32 [ %.pre.i, %.._crit_edge.us73.i.loopexit_crit_edge.i ], [ %i.da, %bb.o ]
  %.2.lcssa.us.i.ph.i = phi i32 [ %i.dm, %.._crit_edge.us73.i.loopexit_crit_edge.i ], [ %.265.us.i.i, %bb.o ] ; 2 uses
  %i.do = icmp eq i32 %i.dn, 2
  %narrow101.i.i = select i1 %i.do, i32 %i.aw, i32 0
  %spec.select.i.i = sext i32 %narrow101.i.i to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i.i ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3  ; 2 uses
  %i.dr = sdiv i32 %.2.lcssa.us.i.ph.i, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add nsw i32 %i.dq, 1                    ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.ds, %i.du                ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, %i.bd
  br i1 %i.dw, label %select_ncolors.exit.i, label %.peel.next.i.preheader.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv82.i.i = phi i64 [ %indvars.iv.next83.i.i, %.lr.ph.i.i ], [ %indvars.iv82.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.04863.i.i = phi i32 [ %i.dy, %.lr.ph.i.i ], [ %.04863.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv82.i.i
  store i32 %.us-phi.i.i, ptr %i.dx, align 4, !tbaa !3
  %i.dy = mul nuw nsw i32 %.04863.i.i, %.us-phi.i.i ; 2 uses
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %exitcond86.not.i.i = icmp eq i64 %indvars.iv.next83.i.i, %wide.trip.count85.i.i
  br i1 %exitcond86.not.i.i, label %.lr.ph67.us.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !67

select_ncolors.exit.i:                            ; preds = %._crit_edge.us73.i.loopexit.i, %._crit_edge.us73.i.us.i, %.lr.ph67.us.preheader.i.i, %bb.m
  %.us-phi76.i.i = phi i32 [ 1, %bb.m ], [ %.lcssa72, %.lr.ph67.us.preheader.i.i ], [ %i.cl, %._crit_edge.us73.i.us.i ], [ %.2.lcssa.us.i.ph.i, %._crit_edge.us73.i.loopexit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.dz = load i32, ptr %i.y, align 8, !tbaa !53
  %i.ea = icmp eq i32 %i.dz, 3
  %i.eb = load ptr, ptr %0, align 8, !tbaa !32    ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i32 %.us-phi76.i.i, ptr %i.ec, align 4, !tbaa !36
  br i1 %i.ea, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select_ncolors.exit.i
  %i.ed = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 52
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ap, i64 76
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !3
  br label %bb.s

bb.r:                                             ; preds = %select_ncolors.exit.i
  %i.el = load ptr, ptr %0, align 8, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ 96, %bb.q ], [ 97, %bb.r ]
  %.sink.i = phi ptr [ %i.eb, %bb.q ], [ %i.el, %bb.r ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store i32 %.sink, ptr %i.em, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !68
  tail call void %i.eo(ptr noundef nonnull %0, i32 noundef 1) #8, !inline_history !69
  %i.ep = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !70
  %i.es = load i32, ptr %i.y, align 8, !tbaa !53
  %i.et = tail call ptr %i.er(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.us-phi76.i.i, i32 noundef %i.es) #8, !inline_history !69 ; 2 uses
  %i.eu = load i32, ptr %i.y, align 8, !tbaa !53  ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph76.preheader.i, label %create_colormap.exit

.lr.ph76.preheader.i:                             ; preds = %bb.s
  %i.ew = sext i32 %.us-phi76.i.i to i64
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %._crit_edge73.i, %.lr.ph76.preheader.i
  %i.ex = phi i32 [ %i.eu, %.lr.ph76.preheader.i ], [ %i.gl, %._crit_edge73.i ] ; 2 uses
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph76.preheader.i ], [ %indvars.iv.next94.i, %._crit_edge73.i ] ; 3 uses
  %.06074.i = phi i32 [ %.us-phi76.i.i, %.lr.ph76.preheader.i ], [ %.fr77.i, %._crit_edge73.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv93.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3  ; 4 uses
  %i.fa = sdiv i32 %.06074.i, %i.ez
  %.fr77.i = freeze i32 %i.fa                     ; 5 uses
  %i.fb = icmp sgt i32 %i.ez, 0
  br i1 %i.fb, label %.lr.ph72.i, label %._crit_edge73.i

.lr.ph72.i:                                       ; preds = %.lr.ph76.i
  %i.fc = add nsw i32 %i.ez, -1                   ; 2 uses
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = zext nneg i32 %i.fc to i64
  %i.fg = icmp sgt i32 %.fr77.i, 0
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv93.i ; 5 uses
  br i1 %i.fg, label %.lr.ph72.split.us.preheader.i, label %._crit_edge73.i

.lr.ph72.split.us.preheader.i:                    ; preds = %.lr.ph72.i
  %i.fi = zext nneg i32 %.fr77.i to i64           ; 3 uses
  %i.fj = sext i32 %.06074.i to i64
  %wide.trip.count91.i = zext nneg i32 %i.ez to i64
  %xtraiter87 = and i64 %i.fi, 3                  ; 3 uses
  %i.fk = icmp ult i32 %.fr77.i, 4
  %unroll_iter91 = and i64 %i.fi, 2147483644
  %lcmp.mod89.not = icmp eq i64 %xtraiter87, 0
  %lcmp.mod90 = icmp ne i64 %xtraiter87, 0
  br label %.lr.ph72.split.us.i

.lr.ph72.split.us.i:                              ; preds = %._crit_edge69.us.i, %.lr.ph72.split.us.preheader.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph72.split.us.preheader.i ], [ %indvars.iv.next89.i, %._crit_edge69.us.i ] ; 3 uses
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph72.split.us.preheader.i ], [ %indvars.iv.next84.i, %._crit_edge69.us.i ] ; 2 uses
  %i.fl = trunc i64 %indvars.iv88.i to i32
  %i.fm = mul i32 %.fr77.i, %i.fl
  %i.fn = icmp slt i32 %i.fm, %.us-phi76.i.i
  br i1 %i.fn, label %.preheader.lr.ph.us.i, label %._crit_edge69.us.i

._crit_edge69.us.i:                               ; preds = %._crit_edge.us.i, %.lr.ph72.split.us.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, %i.fi
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %wide.trip.count91.i
  br i1 %exitcond92.not.i, label %._crit_edge73.loopexit.i, label %.lr.ph72.split.us.i, !llvm.loop !71

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 5 uses
  %niter92 = phi i64 [ %niter92.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.fo = load ptr, ptr %i.fh, align 8, !tbaa !72
  %i.fp = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 %indvars.iv85.i
  store i8 %i.gk, ptr %i.fq, align 1, !tbaa !36
  %i.fr = load ptr, ptr %i.fh, align 8, !tbaa !72
  %i.fs = getelementptr i8, ptr %i.fr, i64 %indvars.iv.i
  %i.ft = getelementptr i8, ptr %i.fs, i64 1
  %i.fu = getelementptr i8, ptr %i.ft, i64 %indvars.iv85.i
  store i8 %i.gk, ptr %i.fu, align 1, !tbaa !36
  %i.fv = load ptr, ptr %i.fh, align 8, !tbaa !72
  %i.fw = getelementptr i8, ptr %i.fv, i64 %indvars.iv.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 2
  %i.fy = getelementptr i8, ptr %i.fx, i64 %indvars.iv85.i
  store i8 %i.gk, ptr %i.fy, align 1, !tbaa !36
  %i.fz = load ptr, ptr %i.fh, align 8, !tbaa !72
  %i.ga = getelementptr i8, ptr %i.fz, i64 %indvars.iv.i
  %i.gb = getelementptr i8, ptr %i.ga, i64 3
  %i.gc = getelementptr i8, ptr %i.gb, i64 %indvars.iv85.i
  store i8 %i.gk, ptr %i.gc, align 1, !tbaa !36
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter92.next.3 = add i64 %niter92, 4           ; 2 uses
  %niter92.ncmp.3 = icmp eq i64 %niter92.next.3, %unroll_iter91
  br i1 %niter92.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !73

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.us.i, %._crit_edge.us.i
  %indvars.iv85.i = phi i64 [ %indvars.iv83.i, %.preheader.lr.ph.us.i ], [ %indvars.iv.next86.i, %._crit_edge.us.i ] ; 6 uses
  br i1 %i.fk, label %.epil.preheader86, label %.preheader.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod89.not, label %._crit_edge.us.i, label %.epil.preheader86

.epil.preheader86:                                ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader86
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader86 ], [ %indvars.iv.next.i.epil, %bb.t ] ; 2 uses
  %epil.iter88 = phi i64 [ 0, %.epil.preheader86 ], [ %epil.iter88.next, %bb.t ]
  %i.gd = load ptr, ptr %i.fh, align 8, !tbaa !72
  %i.ge = getelementptr i8, ptr %i.gd, i64 %indvars.iv.i.epil
  %i.gf = getelementptr i8, ptr %i.ge, i64 %indvars.iv85.i
  store i8 %i.gk, ptr %i.gf, align 1, !tbaa !36
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter88.next = add i64 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i64 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %._crit_edge.us.i, label %bb.t, !llvm.loop !74

._crit_edge.us.i:                                 ; preds = %bb.t, %._crit_edge.us.i.unr-lcssa
  %indvars.iv.next86.i = add nsw i64 %indvars.iv85.i, %i.fj ; 2 uses
  %i.gg = icmp slt i64 %indvars.iv.next86.i, %i.ew
  br i1 %i.gg, label %.preheader.us.i, label %._crit_edge69.us.i, !llvm.loop !75

.preheader.lr.ph.us.i:                            ; preds = %.lr.ph72.split.us.i
  %i.gh = mul nuw nsw i64 %indvars.iv88.i, 255
  %i.gi = add nuw nsw i64 %i.gh, %i.fe
  %i.gj = udiv i64 %i.gi, %i.ff
end_hunk_0
