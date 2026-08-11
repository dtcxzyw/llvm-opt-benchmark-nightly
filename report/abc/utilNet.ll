inline.NumInlined: 220
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Tn_SolveProblem:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 13 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !57
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21
  %i.t = trunc i64 %i.s to i32                    ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 36 uses
  store i32 %i.t, ptr %i.u, align 8, !tbaa !58
  %i.v = mul nsw i32 %i.t, %i.t                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 22 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !59
  %i.x = shl nuw i32 1, %0                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %i.x, ptr %i.y, align 8, !tbaa !60
  %i.z = add nsw i32 %i.x, %0
  %i.aa = mul nsw i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 216 ; 3 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %3, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 3 uses
  store i32 %4, ptr %i.ad, align 4, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store i32 %5, ptr %i.ae, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 %9, ptr %i.af, align 4, !tbaa !63
  %i.ag = icmp sgt i32 %1, 0
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ai = zext nneg i32 %1 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr readonly align 8 %2, i64 %i.aj, i1 false), !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 1000, ptr %i.al, align 4, !tbaa !18
  %i.am = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 248 ; 4 uses
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !43
  %i.ap = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store i32 1000, ptr %i.aq, align 4, !tbaa !18
  %i.ar = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.n, i8 0, i64 60, i1 false)
  %i.at = add nsw i32 %i.t, -1                    ; 5 uses
  %.02936.i.i = add nsw i32 %0, 1                 ; 7 uses
  %i.au = icmp slt i32 %.02936.i.i, %i.at
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %.lr.ph55.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %reass.sub.i = sub i32 %i.t, %0
  %i.av = add i32 %reass.sub.i, -2                ; 4 uses
  %wide.trip.count.i.i = zext i32 %i.av to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.av, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 4 uses
  %i.aw = trunc nuw i64 %n.vec to i32
  %i.ax = add i32 %.02936.i.i, %i.aw
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.02936.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %vec.ind, ptr %i.ay, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.az, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.lr.ph55.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.02938.i.i.ph = phi i32 [ %.02936.i.i, %.lr.ph.preheader.i.i ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph.i.i, %middle.block, %._crit_edge.i
  %.0.lcssa98.i.i = phi i32 [ 0, %._crit_edge.i ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i ] ; 5 uses
  %i.bb = shl nuw nsw i32 1, %.0.lcssa98.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 60 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %wide.trip.count74.i.i = zext i32 %.0.lcssa98.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count74.i.i, 1
  %i.be = icmp eq i32 %.0.lcssa98.i.i, 1          ; 0 uses
  %unroll_iter = and i64 %wide.trip.count74.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod889 = trunc i32 %.0.lcssa98.i.i to i1
  br label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02938.i.i = phi i32 [ %.029.i.i, %.lr.ph.i.i ], [ %.02938.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i
  store i32 %.02938.i.i, ptr %i.bf, align 4, !tbaa !8
  %.029.i.i = add nsw i32 %.02938.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph55.i.i, label %.lr.ph.i.i, !llvm.loop !65

bb.b:                                             ; preds = %._crit_edge50.split.i.i, %.lr.ph55.i.i
  %i.bg = phi ptr [ %i.ar, %.lr.ph55.i.i ], [ %i.ga, %._crit_edge50.split.i.i ]
  %i.bh = phi ptr [ %i.ar, %.lr.ph55.i.i ], [ %i.gb, %._crit_edge50.split.i.i ] ; 2 uses
  %.lcssa48.lcssa62.i.i = phi i32 [ 1000, %.lr.ph55.i.i ], [ %.lcssa48.lcssa63.i.i, %._crit_edge50.split.i.i ] ; 5 uses
  %.lcssa46.lcssa58.i.i = phi i32 [ 0, %.lr.ph55.i.i ], [ %.lcssa46.lcssa59.i.i, %._crit_edge50.split.i.i ] ; 3 uses
  %.02754.i.i = phi i32 [ 0, %.lr.ph55.i.i ], [ %i.gc, %._crit_edge50.split.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  store i64 1, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  store i32 0, ptr %i.p, align 16, !tbaa !8
  switch i32 %.0.lcssa98.i.i, label %.lr.ph41.i.i [
    i32 0, label %._crit_edge.i.i
    i32 1, label %.lr.ph41.i.i.epil.preheader
  ]

.lr.ph41.i.i:                                     ; preds = %bb.b, %.lr.ph41.i.i
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i.1, %.lr.ph41.i.i ], [ 0, %bb.b ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph41.i.i ], [ 0, %bb.b ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv71.i.i
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !8
  %i.bk = trunc nuw nsw i64 %indvars.iv71.i.i to i32
  %i.bl = lshr i32 %.02754.i.i, %i.bk
  %i.bm = and i32 %i.bl, 1
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw [60 x i8], ptr %i.p, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bn ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8  ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !8
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bs
  store i32 %i.bj, ptr %i.bt, align 4, !tbaa !8
  %indvars.iv.next72.i.i = or disjoint i64 %indvars.iv71.i.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next72.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8
  %i.bw = trunc nuw nsw i64 %indvars.iv.next72.i.i to i32
  %i.bx = lshr i32 %.02754.i.i, %i.bw
  %i.by = and i32 %i.bx, 1
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [60 x i8], ptr %i.p, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bz ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !8
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ce
  store i32 %i.bv, ptr %i.cf, align 4, !tbaa !8
  %indvars.iv.next72.i.i.1 = add nuw nsw i64 %indvars.iv71.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph41.i.i, !llvm.loop !66

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph41.i.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph41.i.i.epil.preheader

.lr.ph41.i.i.epil.preheader:                      ; preds = %bb.b, %._crit_edge.loopexit.i.i.unr-lcssa
  %indvars.iv71.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next72.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod889)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv71.i.i.epil.init
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = trunc nuw nsw i64 %indvars.iv71.i.i.epil.init to i32
  %i.cj = lshr i32 %.02754.i.i, %i.ci
  %i.ck = and i32 %i.cj, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw [60 x i8], ptr %i.p, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cl ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8  ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !8
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cq
  store i32 %i.ch, ptr %i.cr, align 4, !tbaa !8
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph41.i.i.epil.preheader
  %.pre.i.i = load i32, ptr %i.bd, align 4, !tbaa !8
  %.pre91.i.i = load i32, ptr %i.o, align 8, !tbaa !8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %._crit_edge.loopexit.i.i
  %i.cs = phi i32 [ %.pre91.i.i, %._crit_edge.loopexit.i.i ], [ 1, %bb.b ] ; 3 uses
  %i.ct = phi i32 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ 0, %bb.b ] ; 4 uses
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cv
  store i32 %i.at, ptr %i.cw, align 4, !tbaa !8
  %i.cx = shl i32 %i.cs, 1
  %i.cy = mul i32 %i.cx, %i.cu
  %i.cz = icmp slt i32 %.lcssa46.lcssa58.i.i, %.lcssa48.lcssa62.i.i
  br i1 %i.cz, label %tn_vi_push.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.da = icmp slt i32 %.lcssa48.lcssa62.i.i, 4
  %i.db = lshr i32 %.lcssa48.lcssa62.i.i, 1
  %i.dc = mul nuw nsw i32 %i.db, 3
  %i.dd = select i1 %i.da, i32 8, i32 %i.dc       ; 3 uses
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = tail call ptr @realloc(ptr noundef %i.bh, i64 noundef %i.df) #20 ; 4 uses
  store ptr %i.dg, ptr %i.as, align 8, !tbaa !16
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.d, label %tn_vi_push.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.di = sitofp i32 %.lcssa48.lcssa62.i.i to double
  %i.dj = fmul nnan double %i.di, 4.000000e+00
  %i.dk = fmul nnan double %i.dj, f0x3EB0000000000000
  %i.dl = uitofp nneg i32 %i.dd to double
  %i.dm = fmul nnan double %i.dl, 4.000000e+00
  %i.dn = fmul nnan double %i.dm, f0x3EB0000000000000
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.dk, double noundef %i.dn) ; 0 uses
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.dq = tail call i32 @fflush(ptr noundef %i.dp) ; 0 uses
  unreachable

tn_vi_push.exit.i.i:                              ; preds = %bb.c, %._crit_edge.i.i
  %i.dr = phi ptr [ %i.bg, %._crit_edge.i.i ], [ %i.dg, %bb.c ] ; 2 uses
  %i.ds = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %i.dg, %bb.c ] ; 3 uses
  %.lcssa48.lcssa65.i.i = phi i32 [ %.lcssa48.lcssa62.i.i, %._crit_edge.i.i ], [ %i.dd, %bb.c ] ; 2 uses
  %i.dt = add i32 %.lcssa46.lcssa58.i.i, 1        ; 2 uses
  %i.du = sext i32 %.lcssa46.lcssa58.i.i to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du
  store i32 %i.cy, ptr %i.dv, align 4, !tbaa !8
  %i.dw = icmp slt i32 %i.cs, 1
  %.not42.i.i = icmp slt i32 %i.ct, 0
  %or.cond.i.i = or i1 %i.dw, %.not42.i.i
  br i1 %or.cond.i.i, label %._crit_edge50.split.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %tn_vi_push.exit.i.i
  %10 = shl nuw i32 %i.ct, 1
  %11 = add i32 %10, 2
  %wide.trip.count90.i.i = zext nneg i32 %i.cs to i64
  %wide.trip.count83.i.i = zext i32 %i.cu to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge45.i.i, %.preheader.preheader.i.i
  %i.dx = phi ptr [ %i.dr, %.preheader.preheader.i.i ], [ %i.fw, %._crit_edge45.i.i ]
  %i.dy = phi ptr [ %i.ds, %.preheader.preheader.i.i ], [ %i.fw, %._crit_edge45.i.i ]
  %indvars.iv85.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next86.i.i, %._crit_edge45.i.i ] ; 2 uses
  %indvars.iv76.i.i = phi i32 [ %i.dt, %.preheader.preheader.i.i ], [ %indvars.iv.next77.i.i, %._crit_edge45.i.i ] ; 2 uses
  %.lcssa4853.i.i = phi i32 [ %.lcssa48.lcssa65.i.i, %.preheader.preheader.i.i ], [ %i.fx, %._crit_edge45.i.i ]
  %12 = sext i32 %indvars.iv76.i.i to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv85.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %tn_vi_push.exit34.i.i, %.preheader.i.i
  %i.eb = phi ptr [ %i.dx, %.preheader.i.i ], [ %i.fw, %tn_vi_push.exit34.i.i ]
  %i.ec = phi ptr [ %i.dy, %.preheader.i.i ], [ %i.fw, %tn_vi_push.exit34.i.i ] ; 2 uses
  %indvars.iv78.i.i.a = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next79.i.i, %tn_vi_push.exit34.i.i ] ; 2 uses
  %indvars.iv76.i.i.a = phi i64 [ %12, %.preheader.i.i ], [ %indvars.iv.next77.i.i.a, %tn_vi_push.exit34.i.i ] ; 4 uses
  %i.ed = phi i32 [ %.lcssa4853.i.i, %.preheader.i.i ], [ %i.fx, %tn_vi_push.exit34.i.i ] ; 5 uses
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp slt i64 %indvars.iv76.i.i.a, %i.ee
  br i1 %i.ef, label %tn_vi_push.exit32.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = icmp slt i32 %i.ed, 4
  %i.eh = lshr i32 %i.ed, 1
  %i.ei = mul nuw nsw i32 %i.eh, 3
  %i.ej = select i1 %i.eg, i32 8, i32 %i.ei       ; 3 uses
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = shl nuw nsw i64 %i.ek, 2
  %i.em = tail call ptr @realloc(ptr noundef nonnull %i.ec, i64 noundef %i.el) #20 ; 4 uses
  store ptr %i.em, ptr %i.as, align 8, !tbaa !16
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.g, label %tn_vi_push.exit32.i.i

bb.g:                                             ; preds = %bb.f
  %i.eo = sitofp i32 %i.ed to double
  %i.ep = fmul nnan double %i.eo, 4.000000e+00
  %i.eq = fmul nnan double %i.ep, f0x3EB0000000000000
  %i.er = uitofp nneg i32 %i.ej to double
  %i.es = fmul nnan double %i.er, 4.000000e+00
  %i.et = fmul nnan double %i.es, f0x3EB0000000000000
  %i.eu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.eq, double noundef %i.et) ; 0 uses
  %i.ev = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ew = tail call i32 @fflush(ptr noundef %i.ev) ; 0 uses
  unreachable

tn_vi_push.exit32.i.i:                            ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %i.ee, %bb.e ], [ %i.ek, %bb.f ]
  %i.ex = phi ptr [ %i.eb, %bb.e ], [ %i.em, %bb.f ]
  %i.ey = phi ptr [ %i.ec, %bb.e ], [ %i.em, %bb.f ] ; 2 uses
  %i.ez = phi i32 [ %i.ed, %bb.e ], [ %i.ej, %bb.f ] ; 4 uses
  %i.fa = add nsw i64 %indvars.iv76.i.i.a, 1      ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %indvars.iv76.i.i.a
  store i32 %i.ea, ptr %i.fb, align 4, !tbaa !8
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv78.i.i.a
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !8
  %i.fe = icmp slt i64 %i.fa, %.pre-phi.i
  br i1 %i.fe, label %tn_vi_push.exit34.i.i, label %bb.h

bb.h:                                             ; preds = %tn_vi_push.exit32.i.i
  %i.ff = icmp slt i32 %i.ez, 4
  %i.fg = lshr i32 %i.ez, 1
  %i.fh = mul nuw nsw i32 %i.fg, 3
  %i.fi = select i1 %i.ff, i32 8, i32 %i.fh       ; 3 uses
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = tail call ptr @realloc(ptr noundef nonnull %i.ey, i64 noundef %i.fk) #20 ; 3 uses
  store ptr %i.fl, ptr %i.as, align 8, !tbaa !16
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.i, label %tn_vi_push.exit34.i.i

bb.i:                                             ; preds = %bb.h
  %i.fn = sitofp i32 %i.ez to double
  %i.fo = fmul nnan double %i.fn, 4.000000e+00
  %i.fp = fmul nnan double %i.fo, f0x3EB0000000000000
  %i.fq = uitofp nneg i32 %i.fi to double
  %i.fr = fmul nnan double %i.fq, 4.000000e+00
  %i.fs = fmul nnan double %i.fr, f0x3EB0000000000000
  %i.ft = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.fp, double noundef %i.fs) ; 0 uses
  %i.fu = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.fv = tail call i32 @fflush(ptr noundef %i.fu) ; 0 uses
  unreachable

tn_vi_push.exit34.i.i:                            ; preds = %bb.h, %tn_vi_push.exit32.i.i
  %i.fw = phi ptr [ %i.ex, %tn_vi_push.exit32.i.i ], [ %i.fl, %bb.h ] ; 7 uses
  %i.fx = phi i32 [ %i.ez, %tn_vi_push.exit32.i.i ], [ %i.fi, %bb.h ] ; 3 uses
  %indvars.iv.next77.i.i.a = add nsw i64 %indvars.iv76.i.i.a, 2 ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.fa
  store i32 %i.fd, ptr %i.fy, align 4, !tbaa !8
  %indvars.iv.next79.i.i = add nuw nsw i64 %indvars.iv78.i.i.a, 1 ; 2 uses
  %exitcond84.not.i.i = icmp eq i64 %indvars.iv.next79.i.i, %wide.trip.count83.i.i
  br i1 %exitcond84.not.i.i, label %._crit_edge45.i.i, label %bb.e, !llvm.loop !67

._crit_edge45.i.i:                                ; preds = %tn_vi_push.exit34.i.i
  %indvars.iv.next86.i.i = add nuw nsw i64 %indvars.iv85.i.i, 1 ; 2 uses
  %indvars.iv.next77.i.i = add i32 %11, %indvars.iv76.i.i
  %exitcond89.not.i.i = icmp eq i64 %indvars.iv.next86.i.i, %wide.trip.count90.i.i
  br i1 %exitcond89.not.i.i, label %._crit_edge50.split.loopexit.i.i, label %.preheader.i.i, !llvm.loop !68

._crit_edge50.split.loopexit.i.i:                 ; preds = %._crit_edge45.i.i
  %i.fz = trunc nsw i64 %indvars.iv.next77.i.i.a to i32
  br label %._crit_edge50.split.i.i

._crit_edge50.split.i.i:                          ; preds = %._crit_edge50.split.loopexit.i.i, %tn_vi_push.exit.i.i
  %i.ga = phi ptr [ %i.dr, %tn_vi_push.exit.i.i ], [ %i.fw, %._crit_edge50.split.loopexit.i.i ]
  %i.gb = phi ptr [ %i.ds, %tn_vi_push.exit.i.i ], [ %i.fw, %._crit_edge50.split.loopexit.i.i ]
  %.lcssa48.lcssa63.i.i = phi i32 [ %.lcssa48.lcssa65.i.i, %tn_vi_push.exit.i.i ], [ %i.fx, %._crit_edge50.split.loopexit.i.i ] ; 2 uses
  %.lcssa46.lcssa59.i.i = phi i32 [ %i.dt, %tn_vi_push.exit.i.i ], [ %i.fz, %._crit_edge50.split.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  %i.gc = add nuw nsw i32 %.02754.i.i, 1          ; 2 uses
  %exitcond90.not.i.i = icmp eq i32 %i.gc, %i.bb
  br i1 %exitcond90.not.i.i, label %._crit_edge56.i.i, label %bb.b, !llvm.loop !69

._crit_edge56.i.i:                                ; preds = %._crit_edge50.split.i.i
  store i32 %.lcssa46.lcssa59.i.i, ptr %i.ap, align 8
  store i32 %.lcssa48.lcssa63.i.i, ptr %i.aq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 4 uses
  store ptr %i.ap, ptr %i.gd, align 8, !tbaa !22
  %i.ge = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  store i32 1000, ptr %i.gf, align 4, !tbaa !18
  %i.gg = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19 ; 7 uses
  %i.gh = getelementptr i8, ptr %i.ge, i64 8      ; 5 uses
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !16
  store i32 2, ptr %i.gg, align 4, !tbaa !8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 0, ptr %i.gi, align 4, !tbaa !8
  store i32 3, ptr %i.ge, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 %i.at, ptr %i.gj, align 4, !tbaa !8
  %reass.sub = sub i32 %i.t, %0                   ; 3 uses
  %i.gk = add i32 %reass.sub, -2                  ; 8 uses
  %.not107.i.i = icmp slt i32 %i.gk, 1
  %.not110.i.i = icmp eq i32 %i.gk, 31
  %or.cond133.i = or i1 %.not107.i.i, %.not110.i.i
  br i1 %or.cond133.i, label %Tn_PathGen.exit.i, label %.lr.ph.i.preheader.us.preheader.i.i

.lr.ph.i.preheader.us.preheader.i.i:              ; preds = %._crit_edge56.i.i
  %i.gl = shl nuw i32 1, %i.gk
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.gl, i32 1)
  %i.gm = sub i32 %i.at, %0
  %wide.trip.count139.i.i = zext i32 %i.gm to i64
  %i.gn = add i32 %i.t, -3
  %min.iters.check603 = icmp ult i32 %i.gk, 8
  %n.vec605 = and i32 %i.gk, 2147483640           ; 3 uses
  %cmp.n616 = icmp eq i32 %i.gk, %n.vec605
  %xtraiter890 = and i32 %reass.sub, 1
  %i.go = icmp eq i32 %i.gn, %0
  %unroll_iter893 = and i32 %i.gk, 2147483646
  %lcmp.mod891.not = icmp eq i32 %xtraiter890, 0
  %lcmp.mod892 = trunc i32 %reass.sub to i1
  br label %.lr.ph.i.preheader.us.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %._crit_edge106.us.i.i, %.lr.ph.i.preheader.us.preheader.i.i
  %i.gp = phi ptr [ %i.gg, %.lr.ph.i.preheader.us.preheader.i.i ], [ %i.ne, %._crit_edge106.us.i.i ]
  %i.gq = phi ptr [ %i.gg, %.lr.ph.i.preheader.us.preheader.i.i ], [ %i.nf, %._crit_edge106.us.i.i ]
  %.promoted.us145.i.i = phi i32 [ 1000, %.lr.ph.i.preheader.us.preheader.i.i ], [ %.promoted.us147.i.i, %._crit_edge106.us.i.i ]
  %.promoted97.us141.i.i = phi i32 [ 3, %.lr.ph.i.preheader.us.preheader.i.i ], [ %.promoted97.us143.i.i, %._crit_edge106.us.i.i ]
  %indvars.iv136.i.i = phi i64 [ 1, %.lr.ph.i.preheader.us.preheader.i.i ], [ %indvars.iv.next137.i.i, %._crit_edge106.us.i.i ] ; 17 uses
  %indvars.iv128.i.i = phi i32 [ 4, %.lr.ph.i.preheader.us.preheader.i.i ], [ %indvars.iv.next129.i.i, %._crit_edge106.us.i.i ] ; 2 uses
  %min.iters.check619 = icmp samesign ult i64 %indvars.iv136.i.i, 8
  br i1 %min.iters.check619, label %.lr.ph.i.us.i.i.preheader, label %vector.ph620

vector.ph620:                                     ; preds = %.lr.ph.i.preheader.us.i.i
  %n.vec621 = and i64 %indvars.iv136.i.i, 9223372036854775800 ; 3 uses
  %i.gr = or disjoint i64 %n.vec621, 1
  br label %vector.body622

vector.body622:                                   ; preds = %vector.body622, %vector.ph620
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next628, %vector.body622 ]
  %vec.phi624 = phi <4 x i32> [ splat (i32 1), %vector.ph620 ], [ %i.gs, %vector.body622 ]
  %vec.phi625 = phi <4 x i32> [ splat (i32 1), %vector.ph620 ], [ %i.gt, %vector.body622 ]
  %vec.ind626 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph620 ], [ %vec.ind.next629, %vector.body622 ] ; 3 uses
  %step.add627 = add <4 x i32> %vec.ind626, splat (i32 4)
  %i.gs = mul <4 x i32> %vec.phi624, %vec.ind626  ; 2 uses
  %i.gt = mul <4 x i32> %vec.phi625, %step.add627 ; 2 uses
  %index.next628 = add nuw i64 %index623, 8       ; 2 uses
  %vec.ind.next629 = add <4 x i32> %vec.ind626, splat (i32 8)
  %i.gu = icmp eq i64 %index.next628, %n.vec621
  br i1 %i.gu, label %middle.block630, label %vector.body622, !llvm.loop !70

middle.block630:                                  ; preds = %vector.body622
  %bin.rdx631 = mul <4 x i32> %i.gt, %i.gs
  %i.gv = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx631) ; 2 uses
  %cmp.n632 = icmp eq i64 %indvars.iv136.i.i, %n.vec621
  br i1 %cmp.n632, label %Tn_Factorial.exit.us.i.i, label %.lr.ph.i.us.i.i.preheader

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph.i.preheader.us.i.i, %middle.block630
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader.us.i.i ], [ %i.gr, %middle.block630 ]
  %.09.i.us.i.i.ph = phi i32 [ 1, %.lr.ph.i.preheader.us.i.i ], [ %i.gv, %middle.block630 ]
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.preheader, %.lr.ph.i.us.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.us.i.i ], [ %indvars.iv.i.ph, %.lr.ph.i.us.i.i.preheader ] ; 3 uses
  %.09.i.us.i.i = phi i32 [ %i.gx, %.lr.ph.i.us.i.i ], [ %.09.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader ]
  %i.gw = trunc nuw i64 %indvars.iv.i to i32
  %i.gx = mul nuw nsw i32 %.09.i.us.i.i, %i.gw    ; 2 uses
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv136.i.i, %indvars.iv.i
  br i1 %exitcond.not.i.us.i.i, label %Tn_Factorial.exit.us.i.i, label %.lr.ph.i.us.i.i, !llvm.loop !71

Tn_Factorial.exit.us.i.i:                         ; preds = %.lr.ph.i.us.i.i, %middle.block630
  %.lcssa545 = phi i32 [ %i.gv, %middle.block630 ], [ %i.gx, %.lr.ph.i.us.i.i ] ; 2 uses
  %i.gy = icmp sgt i32 %.lcssa545, 0
  %i.gz = trunc nuw i64 %indvars.iv136.i.i to i32 ; 3 uses
  %i.ha = add i32 %i.gz, 2
  %min.iters.check590 = icmp samesign ult i64 %indvars.iv136.i.i, 8
  %n.vec592 = and i64 %indvars.iv136.i.i, 9223372036854775800 ; 3 uses
  %cmp.n600 = icmp eq i64 %indvars.iv136.i.i, %n.vec592
  %i.hb = icmp sgt i32 %i.gz, 0
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i.preheader, %.lr.ph.us.i.i
  %.05482.us.i.i = phi i32 [ %i.he, %.lr.ph.us.i.i ], [ %.05482.us.i.i.ph, %.lr.ph.us.i.i.preheader ]
  %.05581.us.i.i = phi i32 [ %i.hf, %.lr.ph.us.i.i ], [ %.05581.us.i.i.ph, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %i.hc = lshr i32 %.057104.us.i.i, %.05581.us.i.i
  %i.hd = and i32 %i.hc, 1
  %i.he = add nuw nsw i32 %i.hd, %.05482.us.i.i   ; 2 uses
  %i.hf = add nuw nsw i32 %.05581.us.i.i, 1       ; 2 uses
  %exitcond.not.i70.i = icmp eq i32 %i.hf, %i.gk
  br i1 %exitcond.not.i70.i, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i, !llvm.loop !72

._crit_edge.us.i.i:                               ; preds = %.lr.ph.us.i.i, %middle.block615
  %.lcssa546 = phi i32 [ %i.nq, %middle.block615 ], [ %i.he, %.lr.ph.us.i.i ]
  %i.hg = zext nneg i32 %.lcssa546 to i64
  %.not59.us.i.i = icmp eq i64 %indvars.iv136.i.i, %i.hg
  br i1 %.not59.us.i.i, label %.lr.ph86.us.preheader.i.i, label %bb.z

.lr.ph86.us.preheader.i.i:                        ; preds = %._crit_edge.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  br i1 %i.go, label %.lr.ph86.us.i.i.epil.preheader, label %.lr.ph86.us.i.i

.lr.ph86.us.i.i:                                  ; preds = %.lr.ph86.us.preheader.i.i, %bb.l
  %.05184.us.i.i = phi i32 [ %.1.us.i.i.1, %bb.l ], [ 0, %.lr.ph86.us.preheader.i.i ] ; 3 uses
  %.05283.us.i.i = phi i32 [ %i.hu, %bb.l ], [ 0, %.lr.ph86.us.preheader.i.i ] ; 5 uses
  %niter894 = phi i32 [ %niter894.next.1, %bb.l ], [ 0, %.lr.ph86.us.preheader.i.i ]
  %i.hh = shl nuw i32 1, %.05283.us.i.i
  %i.hi = and i32 %i.hh, %.057104.us.i.i
  %.not60.us.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not60.us.i.i, label %.lr.ph86.us.i.i.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph86.us.i.i
  %i.hj = add nsw i32 %.05283.us.i.i, %.02936.i.i
  %i.hk = add nsw i32 %.05184.us.i.i, 1
  %i.hl = sext i32 %.05184.us.i.i to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.hl
  store i32 %i.hj, ptr %i.hm, align 4, !tbaa !8
  br label %.lr.ph86.us.i.i.1

.lr.ph86.us.i.i.1:                                ; preds = %bb.j, %.lr.ph86.us.i.i
  %.1.us.i.i = phi i32 [ %i.hk, %bb.j ], [ %.05184.us.i.i, %.lr.ph86.us.i.i ] ; 3 uses
  %i.hn = shl nuw i32 2, %.05283.us.i.i
  %i.ho = and i32 %i.hn, %.057104.us.i.i
  %.not60.us.i.i.1 = icmp eq i32 %i.ho, 0
  br i1 %.not60.us.i.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph86.us.i.i.1
  %i.hp = or disjoint i32 %.05283.us.i.i, 1
  %i.hq = add nsw i32 %i.hp, %.02936.i.i
  %i.hr = add nsw i32 %.1.us.i.i, 1
  %i.hs = sext i32 %.1.us.i.i to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.hs
  store i32 %i.hq, ptr %i.ht, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph86.us.i.i.1
  %.1.us.i.i.1 = phi i32 [ %i.hr, %bb.k ], [ %.1.us.i.i, %.lr.ph86.us.i.i.1 ] ; 2 uses
  %i.hu = add nuw nsw i32 %.05283.us.i.i, 2       ; 2 uses
  %niter894.next.1 = add i32 %niter894, 2         ; 2 uses
  %niter894.ncmp.1 = icmp eq i32 %niter894.next.1, %unroll_iter893
  br i1 %niter894.ncmp.1, label %._crit_edge87.us.i.i.unr-lcssa, label %.lr.ph86.us.i.i, !llvm.loop !73

._crit_edge87.us.i.i.unr-lcssa:                   ; preds = %bb.l
  br i1 %lcmp.mod891.not, label %._crit_edge87.us.i.i, label %.lr.ph86.us.i.i.epil.preheader

.lr.ph86.us.i.i.epil.preheader:                   ; preds = %._crit_edge87.us.i.i.unr-lcssa, %.lr.ph86.us.preheader.i.i
  %.05184.us.i.i.epil.init = phi i32 [ 0, %.lr.ph86.us.preheader.i.i ], [ %.1.us.i.i.1, %._crit_edge87.us.i.i.unr-lcssa ]
  %.05283.us.i.i.epil.init = phi i32 [ 0, %.lr.ph86.us.preheader.i.i ], [ %i.hu, %._crit_edge87.us.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod892)
  %i.hv = shl nuw i32 1, %.05283.us.i.i.epil.init
  %i.hw = and i32 %i.hv, %.057104.us.i.i
  %.not60.us.i.i.epil = icmp eq i32 %i.hw, 0
  br i1 %.not60.us.i.i.epil, label %._crit_edge87.us.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph86.us.i.i.epil.preheader
  %i.hx = add nsw i32 %.05283.us.i.i.epil.init, %.02936.i.i
  %i.hy = sext i32 %.05184.us.i.i.epil.init to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.hy
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !8
  br label %._crit_edge87.us.i.i

._crit_edge87.us.i.i:                             ; preds = %.lr.ph86.us.i.i.epil.preheader, %bb.m, %._crit_edge87.us.i.i.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  br i1 %min.iters.check590, label %scalar.ph589.preheader, label %vector.body593

vector.body593:                                   ; preds = %._crit_edge87.us.i.i, %vector.body593
  %index594 = phi i64 [ %index.next597, %vector.body593 ], [ 0, %._crit_edge87.us.i.i ] ; 2 uses
  %vec.ind595 = phi <4 x i32> [ %vec.ind.next598, %vector.body593 ], [ <i32 0, i32 1, i32 2, i32 3>, %._crit_edge87.us.i.i ] ; 3 uses
  %step.add596 = add <4 x i32> %vec.ind595, splat (i32 4)
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index594 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <4 x i32> %vec.ind595, ptr %i.ia, align 16, !tbaa !8
  store <4 x i32> %step.add596, ptr %i.ib, align 16, !tbaa !8
  %index.next597 = add nuw i64 %index594, 8       ; 2 uses
  %vec.ind.next598 = add <4 x i32> %vec.ind595, splat (i32 8)
  %i.ic = icmp eq i64 %index.next597, %n.vec592
  br i1 %i.ic, label %middle.block599, label %vector.body593, !llvm.loop !74

middle.block599:                                  ; preds = %vector.body593
  br i1 %cmp.n600, label %.preheader.us.i.i, label %scalar.ph589.preheader

scalar.ph589.preheader:                           ; preds = %._crit_edge87.us.i.i, %middle.block599
  %indvars.iv.i71.i.ph = phi i64 [ 0, %._crit_edge87.us.i.i ], [ %n.vec592, %middle.block599 ]
  br label %scalar.ph589

scalar.ph589:                                     ; preds = %scalar.ph589.preheader, %scalar.ph589
  %indvars.iv.i71.i = phi i64 [ %indvars.iv.next.i72.i, %scalar.ph589 ], [ %indvars.iv.i71.i.ph, %scalar.ph589.preheader ] ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i71.i
  %i.ie = trunc nuw nsw i64 %indvars.iv.i71.i to i32
  store i32 %i.ie, ptr %i.id, align 4, !tbaa !8
  %indvars.iv.next.i72.i = add nuw nsw i64 %indvars.iv.i71.i, 1 ; 2 uses
  %exitcond125.not.i.i = icmp eq i64 %indvars.iv.next.i72.i, %indvars.iv136.i.i
  br i1 %exitcond125.not.i.i, label %.preheader.us.i.i, label %scalar.ph589, !llvm.loop !75

.lr.ph95.us.i.i.a:                                ; preds = %.lr.ph95.us.i.i, %Tn_GetNextPerm.exit.us.i.i
  %i.if = phi ptr [ %i.nh, %.lr.ph95.us.i.i ], [ %i.lz, %Tn_GetNextPerm.exit.us.i.i ]
  %i.ig = phi ptr [ %i.ni, %.lr.ph95.us.i.i ], [ %i.lz, %Tn_GetNextPerm.exit.us.i.i ] ; 2 uses
  %indvars.iv130.i.i = phi i32 [ %14, %.lr.ph95.us.i.i ], [ %indvars.iv.next131.i.i, %Tn_GetNextPerm.exit.us.i.i ] ; 2 uses
  %.lcssa91102.us.i.i = phi i32 [ %.promoted.us.i.i, %.lr.ph95.us.i.i ], [ %.lcssa91103.us.i.i, %Tn_GetNextPerm.exit.us.i.i ] ; 5 uses
  %.lcssa8998.us.i.i = phi i32 [ %.promoted97.us.i.i, %.lr.ph95.us.i.i ], [ %i.ma, %Tn_GetNextPerm.exit.us.i.i ] ; 3 uses
  %.094.us.i.i = phi i32 [ 0, %.lr.ph95.us.i.i ], [ %i.na, %Tn_GetNextPerm.exit.us.i.i ]
  %13 = sext i32 %indvars.iv130.i.i to i64
  %i.ih = icmp slt i32 %.lcssa8998.us.i.i, %.lcssa91102.us.i.i
  br i1 %i.ih, label %tn_vi_push.exit66.us.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph95.us.i.i.a
  %i.ii = icmp slt i32 %.lcssa91102.us.i.i, 4
  %i.ij = lshr i32 %.lcssa91102.us.i.i, 1
  %i.ik = mul nuw nsw i32 %i.ij, 3
  %i.il = select i1 %i.ii, i32 8, i32 %i.ik       ; 3 uses
  %i.im = zext nneg i32 %i.il to i64
  %i.in = shl nuw nsw i64 %i.im, 2
  %i.io = tail call ptr @realloc(ptr noundef %i.ig, i64 noundef %i.in) #20 ; 4 uses
  store ptr %i.io, ptr %i.gh, align 8, !tbaa !16
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.o, label %tn_vi_push.exit66.us.i.i

bb.o:                                             ; preds = %bb.n
  %i.iq = sitofp i32 %.lcssa91102.us.i.i to double
  %i.ir = fmul nnan double %i.iq, 4.000000e+00
  %i.is = fmul nnan double %i.ir, f0x3EB0000000000000
  %i.it = uitofp nneg i32 %i.il to double
  %i.iu = fmul nnan double %i.it, 4.000000e+00
  %i.iv = fmul nnan double %i.iu, f0x3EB0000000000000
  %i.iw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.is, double noundef %i.iv) ; 0 uses
  %i.ix = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.iy = tail call i32 @fflush(ptr noundef %i.ix) ; 0 uses
  unreachable

tn_vi_push.exit66.us.i.i:                         ; preds = %bb.n, %.lr.ph95.us.i.i.a
  %i.iz = phi ptr [ %i.if, %.lr.ph95.us.i.i.a ], [ %i.io, %bb.n ]
  %i.ja = phi ptr [ %i.ig, %.lr.ph95.us.i.i.a ], [ %i.io, %bb.n ] ; 3 uses
  %.lcssa91101.us.i.i = phi i32 [ %.lcssa91102.us.i.i, %.lr.ph95.us.i.i.a ], [ %i.il, %bb.n ] ; 5 uses
  %i.jb = add nsw i32 %.lcssa8998.us.i.i, 1       ; 2 uses
  %i.jc = sext i32 %.lcssa8998.us.i.i to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jc
  store i32 %i.ha, ptr %i.jd, align 4, !tbaa !8
  %i.je = icmp slt i32 %i.jb, %.lcssa91101.us.i.i
  br i1 %i.je, label %tn_vi_push.exit68.us.i.i, label %bb.p

bb.p:                                             ; preds = %tn_vi_push.exit66.us.i.i
  %i.jf = icmp slt i32 %.lcssa91101.us.i.i, 4
  %i.jg = lshr i32 %.lcssa91101.us.i.i, 1
  %i.jh = mul nuw nsw i32 %i.jg, 3
  %i.ji = select i1 %i.jf, i32 8, i32 %i.jh       ; 3 uses
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 2
  %i.jl = tail call ptr @realloc(ptr noundef nonnull %i.ja, i64 noundef %i.jk) #20 ; 4 uses
  store ptr %i.jl, ptr %i.gh, align 8, !tbaa !16
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.q, label %tn_vi_push.exit68.us.i.i

bb.q:                                             ; preds = %bb.p
  %i.jn = sitofp i32 %.lcssa91101.us.i.i to double
  %i.jo = fmul nnan double %i.jn, 4.000000e+00
  %i.jp = fmul nnan double %i.jo, f0x3EB0000000000000
  %i.jq = uitofp nneg i32 %i.ji to double
  %i.jr = fmul nnan double %i.jq, 4.000000e+00
  %i.js = fmul nnan double %i.jr, f0x3EB0000000000000
  %i.jt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.jp, double noundef %i.js) ; 0 uses
  %i.ju = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.jv = tail call i32 @fflush(ptr noundef %i.ju) ; 0 uses
  unreachable

tn_vi_push.exit68.us.i.i:                         ; preds = %bb.p, %tn_vi_push.exit66.us.i.i
  %i.jw = phi ptr [ %i.iz, %tn_vi_push.exit66.us.i.i ], [ %i.jl, %bb.p ]
  %i.jx = phi ptr [ %i.ja, %tn_vi_push.exit66.us.i.i ], [ %i.jl, %bb.p ] ; 2 uses
  %.lcssa91100.us.i.i = phi i32 [ %.lcssa91101.us.i.i, %tn_vi_push.exit66.us.i.i ], [ %i.ji, %bb.p ]
  %i.jy = sext i32 %i.jb to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.jy
  store i32 0, ptr %i.jz, align 4, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %tn_vi_push.exit70.us.i.i, %tn_vi_push.exit68.us.i.i
  %i.ka = phi ptr [ %i.lb, %tn_vi_push.exit70.us.i.i ], [ %i.jw, %tn_vi_push.exit68.us.i.i ]
  %i.kb = phi ptr [ %i.lc, %tn_vi_push.exit70.us.i.i ], [ %i.jx, %tn_vi_push.exit68.us.i.i ] ; 2 uses
  %indvars.iv128.i.i.a = phi i64 [ %indvars.iv.next129.i.i.a, %tn_vi_push.exit70.us.i.i ], [ %13, %tn_vi_push.exit68.us.i.i ] ; 4 uses
  %indvars.iv126.i.i = phi i64 [ %indvars.iv.next127.i.i, %tn_vi_push.exit70.us.i.i ], [ 0, %tn_vi_push.exit68.us.i.i ] ; 2 uses
  %i.kc = phi i32 [ %i.ld, %tn_vi_push.exit70.us.i.i ], [ %.lcssa91100.us.i.i, %tn_vi_push.exit68.us.i.i ] ; 5 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv126.i.i
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !8
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !8
  %i.ki = sext i32 %i.kc to i64
  %i.kj = icmp slt i64 %indvars.iv128.i.i.a, %i.ki
  br i1 %i.kj, label %tn_vi_push.exit70.us.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kk = icmp slt i32 %i.kc, 4
  %i.kl = lshr i32 %i.kc, 1
  %i.km = mul nuw nsw i32 %i.kl, 3
  %i.kn = select i1 %i.kk, i32 8, i32 %i.km       ; 3 uses
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 2
  %i.kq = tail call ptr @realloc(ptr noundef %i.kb, i64 noundef %i.kp) #20 ; 4 uses
  store ptr %i.kq, ptr %i.gh, align 8, !tbaa !16
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %bb.t, label %tn_vi_push.exit70.us.i.i

bb.t:                                             ; preds = %bb.s
  %i.ks = sitofp i32 %i.kc to double
  %i.kt = fmul nnan double %i.ks, 4.000000e+00
  %i.ku = fmul nnan double %i.kt, f0x3EB0000000000000
  %i.kv = uitofp nneg i32 %i.kn to double
  %i.kw = fmul nnan double %i.kv, 4.000000e+00
  %i.kx = fmul nnan double %i.kw, f0x3EB0000000000000
  %i.ky = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.ku, double noundef %i.kx) ; 0 uses
  %i.kz = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.la = tail call i32 @fflush(ptr noundef %i.kz) ; 0 uses
  unreachable

tn_vi_push.exit70.us.i.i:                         ; preds = %bb.s, %bb.r
  %i.lb = phi ptr [ %i.ka, %bb.r ], [ %i.kq, %bb.s ] ; 2 uses
  %i.lc = phi ptr [ %i.kb, %bb.r ], [ %i.kq, %bb.s ] ; 3 uses
  %i.ld = phi i32 [ %i.kc, %bb.r ], [ %i.kn, %bb.s ] ; 6 uses
  %indvars.iv.next129.i.i.a = add nsw i64 %indvars.iv128.i.i.a, 1 ; 3 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %indvars.iv128.i.i.a
  store i32 %i.kh, ptr %i.le, align 4, !tbaa !8
  %indvars.iv.next127.i.i = add nuw nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %exitcond134.not.i.i = icmp eq i64 %indvars.iv.next127.i.i, %indvars.iv136.i.i
  br i1 %exitcond134.not.i.i, label %bb.u, label %bb.r, !llvm.loop !76

bb.u:                                             ; preds = %tn_vi_push.exit70.us.i.i
  %i.lf = trunc nsw i64 %indvars.iv128.i.i.a to i32
  %i.lg = trunc nsw i64 %indvars.iv.next129.i.i.a to i32
  %i.lh = icmp sgt i32 %i.ld, %i.lg
  br i1 %i.lh, label %tn_vi_push.exit72.us.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.li = icmp slt i32 %i.ld, 4
  %i.lj = lshr i32 %i.ld, 1
  %i.lk = mul nuw nsw i32 %i.lj, 3
  %i.ll = select i1 %i.li, i32 8, i32 %i.lk       ; 3 uses
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl nuw nsw i64 %i.lm, 2
  %i.lo = tail call ptr @realloc(ptr noundef nonnull %i.lc, i64 noundef %i.ln) #20 ; 3 uses
  store ptr %i.lo, ptr %i.gh, align 8, !tbaa !16
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.w, label %tn_vi_push.exit72.us.i.i

bb.w:                                             ; preds = %bb.v
  %i.lq = sitofp i32 %i.ld to double
  %i.lr = fmul nnan double %i.lq, 4.000000e+00
  %i.ls = fmul nnan double %i.lr, f0x3EB0000000000000
  %i.lt = uitofp nneg i32 %i.ll to double
  %i.lu = fmul nnan double %i.lt, 4.000000e+00
  %i.lv = fmul nnan double %i.lu, f0x3EB0000000000000
  %i.lw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.ls, double noundef %i.lv) ; 0 uses
  %i.lx = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ly = tail call i32 @fflush(ptr noundef %i.lx) ; 0 uses
  unreachable

tn_vi_push.exit72.us.i.i:                         ; preds = %bb.v, %bb.u
  %i.lz = phi ptr [ %i.lb, %bb.u ], [ %i.lo, %bb.v ] ; 5 uses
  %.lcssa91103.us.i.i = phi i32 [ %i.ld, %bb.u ], [ %i.ll, %bb.v ] ; 3 uses
  %i.ma = add nsw i32 %i.lf, 2                    ; 3 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %indvars.iv.next129.i.i.a
  store i32 %i.at, ptr %i.mb, align 4, !tbaa !8
  br i1 %i.hb, label %.lr.ph587, label %Tn_GetNextPerm.exit.us.i.i

bb.x:                                             ; preds = %.lr.ph587
  %i.mc = icmp sgt i32 %indvars.iv59.in.i.us.i.i586, 1
  br i1 %i.mc, label %.lr.ph587, label %Tn_GetNextPerm.exit.us.i.i, !llvm.loop !77

.lr.ph587:                                        ; preds = %tn_vi_push.exit72.us.i.i, %bb.x
  %indvars.iv59.in.i.us.i.i586 = phi i32 [ %indvars.iv59.i.us.i.i, %bb.x ], [ %i.gz, %tn_vi_push.exit72.us.i.i ] ; 3 uses
  %indvars.iv59.i.us.i.i = add nsw i32 %indvars.iv59.in.i.us.i.i586, -1 ; 2 uses
  %i.md = zext nneg i32 %indvars.iv59.in.i.us.i.i586 to i64 ; 5 uses
  %i.me = getelementptr [4 x i8], ptr %i.m, i64 %i.md ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 -8
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !8  ; 3 uses
  %i.mh = zext nneg i32 %indvars.iv59.i.us.i.i to i64 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !8
  %.not.i.us.i.i = icmp slt i32 %i.mg, %i.mj
  br i1 %.not.i.us.i.i, label %.critedge.preheader.i.us.i.i, label %bb.x, !llvm.loop !77

.critedge.preheader.i.us.i.i:                     ; preds = %.lr.ph587
  %i.mk = getelementptr i8, ptr %i.me, i64 -8
  %.not4350.i.us.i.i = icmp samesign ult i64 %indvars.iv136.i.i, %i.md
  br i1 %.not4350.i.us.i.i, label %.critedge2.i.us.i.i, label %.lr.ph.i73.us.i.i

.lr.ph.i73.us.i.i:                                ; preds = %.critedge.preheader.i.us.i.i, %.critedge.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i, %.critedge.i.us.i.i ], [ %indvars.iv136.i.i, %.critedge.preheader.i.us.i.i ] ; 4 uses
  %i.ml = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.i.us.i.i
  %i.mm = getelementptr i8, ptr %i.ml, i64 -4
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !8
  %.not44.i.us.i.i = icmp sgt i32 %i.mn, %i.mg
  br i1 %.not44.i.us.i.i, label %.critedge2.i.us.i.i, label %.critedge.i.us.i.i

.critedge.i.us.i.i:                               ; preds = %.lr.ph.i73.us.i.i
  %indvars.iv.next.i.us.i.i = add nsw i64 %indvars.iv.i.us.i.i, -1
  %.not43.not.i.us.i.i = icmp sgt i64 %indvars.iv.i.us.i.i, %i.md
  br i1 %.not43.not.i.us.i.i, label %.lr.ph.i73.us.i.i, label %.critedge2.i.us.i.i, !llvm.loop !78

.critedge2.i.us.i.i:                              ; preds = %.critedge.i.us.i.i, %.lr.ph.i73.us.i.i, %.critedge.preheader.i.us.i.i
  %.041.lcssa.i.us.i.i = phi i64 [ %indvars.iv136.i.i, %.critedge.preheader.i.us.i.i ], [ %i.mh, %.critedge.i.us.i.i ], [ %indvars.iv.i.us.i.i, %.lr.ph.i73.us.i.i ]
  %i.mo = getelementptr [4 x i8], ptr %i.m, i64 %.041.lcssa.i.us.i.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 -4     ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !8
  store i32 %i.mq, ptr %i.mk, align 4, !tbaa !8
  store i32 %i.mg, ptr %i.mp, align 4, !tbaa !8
  %i.mr = icmp samesign ugt i64 %indvars.iv136.i.i, %i.md
  br i1 %i.mr, label %.lr.ph55.i.us.i.i, label %Tn_GetNextPerm.exit.us.i.i

.lr.ph55.i.us.i.i:                                ; preds = %.critedge2.i.us.i.i, %.lr.ph55.i.us.i.i
  %indvars.iv66.i.us.i.i = phi i64 [ %indvars.iv.next67.i.us.i.i, %.lr.ph55.i.us.i.i ], [ %indvars.iv136.i.i, %.critedge2.i.us.i.i ] ; 2 uses
  %indvars.iv64.i.us.i.i = phi i64 [ %indvars.iv.next65.i.us.i.i, %.lr.ph55.i.us.i.i ], [ %i.md, %.critedge2.i.us.i.i ] ; 2 uses
  %i.ms = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv64.i.us.i.i
  %i.mt = getelementptr i8, ptr %i.ms, i64 -4     ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !8
  %i.mv = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv66.i.us.i.i
  %i.mw = getelementptr i8, ptr %i.mv, i64 -4     ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !8
  store i32 %i.mx, ptr %i.mt, align 4, !tbaa !8
  store i32 %i.mu, ptr %i.mw, align 4, !tbaa !8
  %indvars.iv.next65.i.us.i.i = add nuw nsw i64 %indvars.iv64.i.us.i.i, 1 ; 2 uses
  %indvars.iv.next67.i.us.i.i = add nsw i64 %indvars.iv66.i.us.i.i, -1 ; 2 uses
  %sext.i.us.i.i = shl i64 %indvars.iv.next65.i.us.i.i, 32
  %i.my = ashr exact i64 %sext.i.us.i.i, 32
  %i.mz = icmp slt i64 %i.my, %indvars.iv.next67.i.us.i.i
  br i1 %i.mz, label %.lr.ph55.i.us.i.i, label %Tn_GetNextPerm.exit.us.i.i, !llvm.loop !9

Tn_GetNextPerm.exit.us.i.i:                       ; preds = %bb.x, %.lr.ph55.i.us.i.i, %tn_vi_push.exit72.us.i.i, %.critedge2.i.us.i.i
  %i.na = add nuw nsw i32 %.094.us.i.i, 1         ; 2 uses
  %i.nb = icmp slt i32 %i.na, %.lcssa545
  %indvars.iv.next131.i.i = add i32 %indvars.iv130.i.i, %indvars.iv128.i.i
  br i1 %i.nb, label %.lr.ph95.us.i.i.a, label %._crit_edge96.us.i.i, !llvm.loop !79

bb.y:                                             ; preds = %._crit_edge96.us.i.i, %.preheader.us.i.i
  %i.nc = phi ptr [ %i.lz, %._crit_edge96.us.i.i ], [ %i.nh, %.preheader.us.i.i ]
  %i.nd = phi ptr [ %i.lz, %._crit_edge96.us.i.i ], [ %i.ni, %.preheader.us.i.i ]
  %.promoted.us148.i.i = phi i32 [ %.lcssa91103.us.i.i, %._crit_edge96.us.i.i ], [ %.promoted.us.i.i, %.preheader.us.i.i ]
  %.promoted97.us144.i.i = phi i32 [ %i.ma, %._crit_edge96.us.i.i ], [ %.promoted97.us.i.i, %.preheader.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.us.i.i
  %i.ne = phi ptr [ %i.nc, %bb.y ], [ %i.nh, %._crit_edge.us.i.i ] ; 3 uses
  %i.nf = phi ptr [ %i.nd, %bb.y ], [ %i.ni, %._crit_edge.us.i.i ] ; 2 uses
  %.promoted.us147.i.i = phi i32 [ %.promoted.us148.i.i, %bb.y ], [ %.promoted.us.i.i, %._crit_edge.us.i.i ] ; 2 uses
  %.promoted97.us143.i.i = phi i32 [ %.promoted97.us144.i.i, %bb.y ], [ %.promoted97.us.i.i, %._crit_edge.us.i.i ] ; 3 uses
  %i.ng = add nuw nsw i32 %.057104.us.i.i, 1      ; 2 uses
  %exitcond135.not.i.i = icmp eq i32 %i.ng, %smax.i.i
  br i1 %exitcond135.not.i.i, label %._crit_edge106.us.i.i, label %.lr.ph.us.preheader.i.i, !llvm.loop !80

.preheader.us.i.i:                                ; preds = %scalar.ph589, %middle.block599
  br i1 %i.gy, label %.lr.ph95.us.i.i, label %bb.y

.lr.ph.us.preheader.i.i:                          ; preds = %bb.z, %Tn_Factorial.exit.us.i.i
  %i.nh = phi ptr [ %i.gp, %Tn_Factorial.exit.us.i.i ], [ %i.ne, %bb.z ] ; 3 uses
  %i.ni = phi ptr [ %i.gq, %Tn_Factorial.exit.us.i.i ], [ %i.nf, %bb.z ] ; 3 uses
  %.promoted.us.i.i = phi i32 [ %.promoted.us145.i.i, %Tn_Factorial.exit.us.i.i ], [ %.promoted.us147.i.i, %bb.z ] ; 3 uses
  %.promoted97.us.i.i = phi i32 [ %.promoted97.us141.i.i, %Tn_Factorial.exit.us.i.i ], [ %.promoted97.us143.i.i, %bb.z ] ; 4 uses
  %.057104.us.i.i = phi i32 [ 0, %Tn_Factorial.exit.us.i.i ], [ %i.ng, %bb.z ] ; 6 uses
  br i1 %min.iters.check603, label %.lr.ph.us.i.i.preheader, label %vector.ph604

vector.ph604:                                     ; preds = %.lr.ph.us.preheader.i.i
  %broadcast.splatinsert606 = insertelement <4 x i32> poison, i32 %.057104.us.i.i, i64 0
  %broadcast.splat607 = shufflevector <4 x i32> %broadcast.splatinsert606, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body608

vector.body608:                                   ; preds = %vector.body608, %vector.ph604
  %index609 = phi i32 [ 0, %vector.ph604 ], [ %index.next613, %vector.body608 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph604 ], [ %i.nn, %vector.body608 ]
  %vec.phi610 = phi <4 x i32> [ zeroinitializer, %vector.ph604 ], [ %i.no, %vector.body608 ]
  %vec.ind611 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph604 ], [ %vec.ind.next614, %vector.body608 ] ; 3 uses
  %step.add612 = add nuw <4 x i32> %vec.ind611, splat (i32 4)
  %i.nj = lshr <4 x i32> %broadcast.splat607, %vec.ind611
  %i.nk = lshr <4 x i32> %broadcast.splat607, %step.add612
  %i.nl = and <4 x i32> %i.nj, splat (i32 1)
  %i.nm = and <4 x i32> %i.nk, splat (i32 1)
  %i.nn = add <4 x i32> %i.nl, %vec.phi           ; 2 uses
  %i.no = add <4 x i32> %i.nm, %vec.phi610        ; 2 uses
  %index.next613 = add nuw i32 %index609, 8       ; 2 uses
  %vec.ind.next614 = add nuw <4 x i32> %vec.ind611, splat (i32 8)
  %i.np = icmp eq i32 %index.next613, %n.vec605
  br i1 %i.np, label %middle.block615, label %vector.body608, !llvm.loop !81

middle.block615:                                  ; preds = %vector.body608
  %bin.rdx = add <4 x i32> %i.no, %i.nn
  %i.nq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n616, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i.preheader

.lr.ph.us.i.i.preheader:                          ; preds = %.lr.ph.us.preheader.i.i, %middle.block615
  %.05482.us.i.i.ph = phi i32 [ 0, %.lr.ph.us.preheader.i.i ], [ %i.nq, %middle.block615 ]
  %.05581.us.i.i.ph = phi i32 [ 0, %.lr.ph.us.preheader.i.i ], [ %n.vec605, %middle.block615 ]
  br label %.lr.ph.us.i.i

.lr.ph95.us.i.i:                                  ; preds = %.preheader.us.i.i
  %14 = add i32 %.promoted97.us.i.i, 2
  br label %.lr.ph95.us.i.i.a

._crit_edge96.us.i.i:                             ; preds = %Tn_GetNextPerm.exit.us.i.i
  store i32 %i.ma, ptr %i.ge, align 8
  store i32 %.lcssa91103.us.i.i, ptr %i.gf, align 4
  br label %bb.y

._crit_edge106.us.i.i:                            ; preds = %bb.z
  %indvars.iv.next137.i.i = add nuw nsw i64 %indvars.iv136.i.i, 1 ; 2 uses
  %indvars.iv.next129.i.i = add nuw i32 %indvars.iv128.i.i, 1
  %exitcond140.not.i.i = icmp eq i64 %indvars.iv.next137.i.i, %wide.trip.count139.i.i
  br i1 %exitcond140.not.i.i, label %Tn_PathGen.exit.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !82

Tn_PathGen.exit.i:                                ; preds = %._crit_edge106.us.i.i, %._crit_edge56.i.i
  %.val63.i = phi ptr [ %i.gg, %._crit_edge56.i.i ], [ %i.ne, %._crit_edge106.us.i.i ] ; 2 uses
  %.val.i = phi i32 [ 3, %._crit_edge56.i.i ], [ %.promoted97.us143.i.i, %._crit_edge106.us.i.i ] ; 8 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.q, i64 168 ; 2 uses
  store ptr %i.ge, ptr %i.nr, align 8, !tbaa !22
  %i.ns = icmp eq i32 %1, 3
  %i.nt = and i32 %1, -2
  %or.cond.i = icmp eq i32 %i.nt, 2
  br i1 %or.cond.i, label %bb.aa, label %Tn_Init.exit

bb.aa:                                            ; preds = %Tn_PathGen.exit.i
  %i.nu = load ptr, ptr %i.gd, align 8, !tbaa !22 ; 3 uses
  %.val68.i = load i32, ptr %i.nu, align 8, !tbaa !12 ; 5 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 8      ; 2 uses
  %.val69.i = load ptr, ptr %i.nv, align 8, !tbaa !16
  %i.nw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  store i32 %.val68.i, ptr %i.nx, align 4, !tbaa !18
  %i.ny = sext i32 %.val68.i to i64
  %i.nz = shl nsw i64 %i.ny, 2                    ; 2 uses
  %i.oa = tail call noalias ptr @malloc(i64 noundef %i.nz) #19 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !16
  store i32 %.val68.i, ptr %i.nw, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oa, ptr readonly align 4 %.val69.i, i64 %i.nz, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  store ptr %i.nw, ptr %i.oc, align 8, !tbaa !22
  %i.od = load i32, ptr %i.u, align 8, !tbaa !58  ; 3 uses
  %i.oe = add nsw i32 %i.od, -1                   ; 12 uses
  %i.of = add nsw i32 %i.od, -2                   ; 6 uses
  %i.og = icmp sgt i32 %.val68.i, 0
  br i1 %i.og, label %.lr.ph33.i.i.preheader, label %Tn_SetSwap.exit.i

.lr.ph33.i.i.preheader:                           ; preds = %bb.aa
  %broadcast.splatinsert639 = insertelement <4 x i32> poison, i32 %i.oe, i64 0
  %broadcast.splat640 = shufflevector <4 x i32> %broadcast.splatinsert639, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert641 = insertelement <4 x i32> poison, i32 %i.of, i64 0
  %broadcast.splat642 = shufflevector <4 x i32> %broadcast.splatinsert641, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph33.i.i.preheader, %._crit_edge.i73.i
  %.031.i.i = phi i32 [ %i.qd, %._crit_edge.i73.i ], [ 0, %.lr.ph33.i.i.preheader ] ; 2 uses
  %i.oh = add nsw i32 %.031.i.i, 1                ; 2 uses
  %i.oi = sext i32 %.031.i.i to i64
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !8  ; 4 uses
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %.lr.ph.preheader.i74.i, label %._crit_edge.i73.i

.lr.ph.preheader.i74.i:                           ; preds = %.lr.ph33.i.i
  %i.om = sext i32 %i.oh to i64
  %wide.trip.count.i75.i = zext nneg i32 %i.ok to i64 ; 3 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.oa, i64 %i.om ; 9 uses
  %min.iters.check636 = icmp ult i32 %i.ok, 8
  br i1 %min.iters.check636, label %.lr.ph.i76.i.preheader, label %vector.ph637

vector.ph637:                                     ; preds = %.lr.ph.preheader.i74.i
  %n.vec638 = and i64 %wide.trip.count.i75.i, 2147483640 ; 3 uses
  br label %vector.body643

vector.body643:                                   ; preds = %pred.store.continue660, %vector.ph637
  %index644 = phi i64 [ 0, %vector.ph637 ], [ %index.next661, %pred.store.continue660 ] ; 9 uses
  %i.on = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644 ; 3 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 16
  %wide.load = load <4 x i32>, ptr %i.on, align 4, !tbaa !8 ; 2 uses
  %wide.load645 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !8 ; 2 uses
  %i.op = icmp eq <4 x i32> %wide.load, %broadcast.splat640 ; 2 uses
  %i.oq = icmp eq <4 x i32> %wide.load645, %broadcast.splat640 ; 2 uses
  %i.or = icmp eq <4 x i32> %wide.load, %broadcast.splat642
  %i.os = icmp eq <4 x i32> %wide.load645, %broadcast.splat642
  %i.ot = select <4 x i1> %i.op, <4 x i1> splat (i1 true), <4 x i1> %i.or ; 4 uses
  %i.ou = select <4 x i1> %i.oq, <4 x i1> splat (i1 true), <4 x i1> %i.os ; 4 uses
  %predphi = select <4 x i1> %i.op, <4 x i32> %broadcast.splat642, <4 x i32> %broadcast.splat640 ; 4 uses
  %predphi646 = select <4 x i1> %i.oq, <4 x i32> %broadcast.splat642, <4 x i32> %broadcast.splat640 ; 4 uses
  %i.ov = extractelement <4 x i1> %i.ot, i64 0
  br i1 %i.ov, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body643
  %i.ow = extractelement <4 x i32> %predphi, i64 0
  store i32 %i.ow, ptr %i.on, align 4, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body643
  %i.ox = extractelement <4 x i1> %i.ot, i64 1
  br i1 %i.ox, label %pred.store.if647, label %pred.store.continue648

pred.store.if647:                                 ; preds = %pred.store.continue
  %i.oy = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644
  %i.oz = getelementptr i8, ptr %i.oy, i64 4
  %i.pa = extractelement <4 x i32> %predphi, i64 1
  store i32 %i.pa, ptr %i.oz, align 4, !tbaa !8
  br label %pred.store.continue648

pred.store.continue648:                           ; preds = %pred.store.if647, %pred.store.continue
  %i.pb = extractelement <4 x i1> %i.ot, i64 2
  br i1 %i.pb, label %pred.store.if649, label %pred.store.continue650

pred.store.if649:                                 ; preds = %pred.store.continue648
  %i.pc = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644
  %i.pd = getelementptr i8, ptr %i.pc, i64 8
  %i.pe = extractelement <4 x i32> %predphi, i64 2
  store i32 %i.pe, ptr %i.pd, align 4, !tbaa !8
  br label %pred.store.continue650

pred.store.continue650:                           ; preds = %pred.store.if649, %pred.store.continue648
  %i.pf = extractelement <4 x i1> %i.ot, i64 3
  br i1 %i.pf, label %pred.store.if651, label %pred.store.continue652

pred.store.if651:                                 ; preds = %pred.store.continue650
  %i.pg = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644
  %i.ph = getelementptr i8, ptr %i.pg, i64 12
  %i.pi = extractelement <4 x i32> %predphi, i64 3
  store i32 %i.pi, ptr %i.ph, align 4, !tbaa !8
  br label %pred.store.continue652

pred.store.continue652:                           ; preds = %pred.store.if651, %pred.store.continue650
  %i.pj = extractelement <4 x i1> %i.ou, i64 0
  br i1 %i.pj, label %pred.store.if653, label %pred.store.continue654

pred.store.if653:                                 ; preds = %pred.store.continue652
  %i.pk = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644
  %i.pl = getelementptr i8, ptr %i.pk, i64 16
  %i.pm = extractelement <4 x i32> %predphi646, i64 0
  store i32 %i.pm, ptr %i.pl, align 4, !tbaa !8
  br label %pred.store.continue654

pred.store.continue654:                           ; preds = %pred.store.if653, %pred.store.continue652
  %i.pn = extractelement <4 x i1> %i.ou, i64 1
  br i1 %i.pn, label %pred.store.if655, label %pred.store.continue656

pred.store.if655:                                 ; preds = %pred.store.continue654
  %i.po = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644
  %i.pp = getelementptr i8, ptr %i.po, i64 20
  %i.pq = extractelement <4 x i32> %predphi646, i64 1
  store i32 %i.pq, ptr %i.pp, align 4, !tbaa !8
  br label %pred.store.continue656

pred.store.continue656:                           ; preds = %pred.store.if655, %pred.store.continue654
  %i.pr = extractelement <4 x i1> %i.ou, i64 2
  br i1 %i.pr, label %pred.store.if657, label %pred.store.continue658

pred.store.if657:                                 ; preds = %pred.store.continue656
  %i.ps = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644
  %i.pt = getelementptr i8, ptr %i.ps, i64 24
  %i.pu = extractelement <4 x i32> %predphi646, i64 2
  store i32 %i.pu, ptr %i.pt, align 4, !tbaa !8
  br label %pred.store.continue658

pred.store.continue658:                           ; preds = %pred.store.if657, %pred.store.continue656
  %i.pv = extractelement <4 x i1> %i.ou, i64 3
  br i1 %i.pv, label %pred.store.if659, label %pred.store.continue660

pred.store.if659:                                 ; preds = %pred.store.continue658
  %i.pw = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index644
  %i.px = getelementptr i8, ptr %i.pw, i64 28
  %i.py = extractelement <4 x i32> %predphi646, i64 3
  store i32 %i.py, ptr %i.px, align 4, !tbaa !8
  br label %pred.store.continue660

pred.store.continue660:                           ; preds = %pred.store.if659, %pred.store.continue658
  %index.next661 = add nuw i64 %index644, 8       ; 2 uses
  %i.pz = icmp eq i64 %index.next661, %n.vec638
  br i1 %i.pz, label %middle.block662, label %vector.body643, !llvm.loop !83

middle.block662:                                  ; preds = %pred.store.continue660
  %cmp.n663 = icmp eq i64 %n.vec638, %wide.trip.count.i75.i
  br i1 %cmp.n663, label %._crit_edge.i73.i, label %.lr.ph.i76.i.preheader

.lr.ph.i76.i.preheader:                           ; preds = %.lr.ph.preheader.i74.i, %middle.block662
  %indvars.iv.i77.i.ph = phi i64 [ 0, %.lr.ph.preheader.i74.i ], [ %n.vec638, %middle.block662 ]
  br label %.lr.ph.i76.i

.lr.ph.i76.i:                                     ; preds = %.lr.ph.i76.i.preheader, %bb.ac
  %indvars.iv.i77.i = phi i64 [ %indvars.iv.next.i78.i, %bb.ac ], [ %indvars.iv.i77.i.ph, %.lr.ph.i76.i.preheader ] ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i77.i ; 2 uses
  %i.qa = load i32, ptr %gep.i.i, align 4, !tbaa !8 ; 2 uses
  %i.qb = icmp eq i32 %i.qa, %i.oe
  br i1 %i.qb, label %.sink.split.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i76.i
  %i.qc = icmp eq i32 %i.qa, %i.of
  br i1 %i.qc, label %.sink.split.i.i, label %bb.ac

.sink.split.i.i:                                  ; preds = %bb.ab, %.lr.ph.i76.i
  %.sink.i.i = phi i32 [ %i.of, %.lr.ph.i76.i ], [ %i.oe, %bb.ab ]
  store i32 %.sink.i.i, ptr %gep.i.i, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %bb.ab
  %indvars.iv.next.i78.i = add nuw nsw i64 %indvars.iv.i77.i, 1 ; 2 uses
  %exitcond.not.i79.i = icmp eq i64 %indvars.iv.next.i78.i, %wide.trip.count.i75.i
  br i1 %exitcond.not.i79.i, label %._crit_edge.i73.i, label %.lr.ph.i76.i, !llvm.loop !84

._crit_edge.i73.i:                                ; preds = %bb.ac, %middle.block662, %.lr.ph33.i.i
  %i.qd = add nsw i32 %i.ok, %i.oh                ; 2 uses
  %i.qe = icmp slt i32 %i.qd, %.val68.i
  br i1 %i.qe, label %.lr.ph33.i.i, label %Tn_SetSwap.exit.i, !llvm.loop !85
end_hunk_0
