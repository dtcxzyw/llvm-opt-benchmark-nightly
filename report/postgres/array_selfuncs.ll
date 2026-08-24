Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/array_selfuncs?download=true
inline.NumInlined: 29
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mcelem_array_contained_selec:bb.a
  %i.w = fcmp ogt double %i.v, 5.000000e-03
  %narrow.sel = select i1 %i.w, float 5.000000e-03, float %i.u
  %wide.trip.count240 = zext nneg i32 %5 to i64
  br label %bb.d

.preheader:                                       ; preds = %bb.k, %bb.c
  %.0133.lcssa = phi i32 [ 0, %bb.c ], [ %.1134, %bb.k ] ; 5 uses
  %.0124.lcssa = phi float [ 1.000000e+00, %bb.c ], [ %.4128, %bb.k ] ; 3 uses
  %.0117.lcssa = phi float [ %i.o, %bb.c ], [ %.5122, %bb.k ] ; 3 uses
  %.0111.lcssa = phi i32 [ 0, %bb.c ], [ %.5, %bb.k ] ; 2 uses
  %i.x = icmp slt i32 %.0111.lcssa, %1
  br i1 %i.x, label %.lr.ph214.preheader, label %._crit_edge

.lr.ph214.preheader:                              ; preds = %.preheader
  %i.y = sext i32 %.0111.lcssa to i64             ; 4 uses
  %i.z = sub nsw i64 %i.e, %i.y
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph214.prol.loopexit, label %.lr.ph214.prol

.lr.ph214.prol:                                   ; preds = %.lr.ph214.preheader, %.lr.ph214.prol
  %indvars.iv242.prol = phi i64 [ %indvars.iv.next243.prol, %.lr.ph214.prol ], [ %i.y, %.lr.ph214.preheader ] ; 2 uses
  %.6123212.prol = phi float [ %i.ae, %.lr.ph214.prol ], [ %.0117.lcssa, %.lr.ph214.preheader ]
  %.5129211.prol = phi float [ %i.ad, %.lr.ph214.prol ], [ %.0124.lcssa, %.lr.ph214.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph214.prol ], [ 0, %.lr.ph214.preheader ]
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv242.prol
  %i.ab = load float, ptr %i.aa, align 4          ; 2 uses
  %i.ac = fsub float 1.000000e+00, %i.ab
  %i.ad = fmul float %.5129211.prol, %i.ac        ; 3 uses
  %i.ae = fsub float %.6123212.prol, %i.ab        ; 3 uses
  %indvars.iv.next243.prol = add nsw i64 %indvars.iv242.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph214.prol.loopexit, label %.lr.ph214.prol, !llvm.loop !9

.lr.ph214.prol.loopexit:                          ; preds = %.lr.ph214.prol, %.lr.ph214.preheader
  %.lcssa25.unr = phi float [ poison, %.lr.ph214.preheader ], [ %i.ad, %.lr.ph214.prol ]
  %.lcssa24.unr = phi float [ poison, %.lr.ph214.preheader ], [ %i.ae, %.lr.ph214.prol ]
  %indvars.iv242.unr = phi i64 [ %i.y, %.lr.ph214.preheader ], [ %indvars.iv.next243.prol, %.lr.ph214.prol ]
  %.6123212.unr = phi float [ %.0117.lcssa, %.lr.ph214.preheader ], [ %i.ae, %.lr.ph214.prol ]
  %.5129211.unr = phi float [ %.0124.lcssa, %.lr.ph214.preheader ], [ %i.ad, %.lr.ph214.prol ]
  %i.af = sub nsw i64 %i.y, %i.e
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph214

bb.d:                                             ; preds = %.lr.ph206, %bb.k
  %indvars.iv237 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next238, %bb.k ] ; 4 uses
  %.0111205 = phi i32 [ 0, %.lr.ph206 ], [ %.5, %bb.k ] ; 4 uses
  %.0117204 = phi float [ %i.o, %.lr.ph206 ], [ %.5122, %bb.k ] ; 3 uses
  %.0124203 = phi float [ 1.000000e+00, %.lr.ph206 ], [ %.4128, %bb.k ] ; 3 uses
  %.0133202 = phi i32 [ 0, %.lr.ph206 ], [ %.1134, %bb.k ] ; 4 uses
  %.not268 = icmp eq i64 %indvars.iv237, 0
  br i1 %.not268, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr [8 x i8], ptr %4, i64 %indvars.iv237 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = load i32, ptr %i.t, align 8
  %i.am = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.s, i32 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak) #9
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = icmp slt i32 %.0111205, %1
  br i1 %i.ap, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv237
  %i.ar = sext i32 %.0111205 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.1118194 = phi float [ %.0117204, %.lr.ph ], [ %i.bf, %bb.h ] ; 3 uses
  %.1125193 = phi float [ %.0124203, %.lr.ph ], [ %i.be, %bb.h ] ; 3 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  %i.at = load i64, ptr %i.as, align 8
  %i.au = load i64, ptr %i.aq, align 8
  %i.av = load i32, ptr %i.t, align 8
  %i.aw = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.s, i32 noundef %i.av, i64 noundef %i.at, i64 noundef %i.au) #9
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.az = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ba = icmp eq i32 %i.ax, 0
  br i1 %i.ba, label %bb.i, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.bc = load float, ptr %i.bb, align 4          ; 2 uses
  %i.bd = fsub float 1.000000e+00, %i.bc
  %i.be = fmul float %.1125193, %i.bd             ; 2 uses
  %i.bf = fsub float %.1118194, %i.bc             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.g

bb.i:                                             ; preds = %.thread
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = sext i32 %.0133202 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bi
  store float %i.bh, ptr %i.bj, align 4
  %i.bk = fsub float %.1118194, %i.bh
  %i.bl = add i32 %i.az, 1
  br label %bb.j

.critedge:                                        ; preds = %bb.h, %bb.f, %.thread
  %.1125191 = phi float [ %.1125193, %.thread ], [ %.0124203, %bb.f ], [ %i.be, %bb.h ]
  %.1118188 = phi float [ %.1118194, %.thread ], [ %.0117204, %bb.f ], [ %i.bf, %bb.h ]
  %.1186 = phi i32 [ %i.az, %.thread ], [ %.0111205, %bb.f ], [ %1, %bb.h ]
  %i.bm = sext i32 %.0133202 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bm
  store float %narrow.sel, ptr %i.bn, align 4
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.1125190 = phi float [ %.1125193, %bb.i ], [ %.1125191, %.critedge ]
  %.4121 = phi float [ %i.bk, %bb.i ], [ %.1118188, %.critedge ]
  %.4 = phi i32 [ %i.bl, %bb.i ], [ %.1186, %.critedge ]
  %i.bo = add i32 %.0133202, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j
  %.1134 = phi i32 [ %i.bo, %bb.j ], [ %.0133202, %bb.e ] ; 2 uses
  %.4128 = phi float [ %.1125190, %bb.j ], [ %.0124203, %bb.e ] ; 2 uses
  %.5122 = phi float [ %.4121, %bb.j ], [ %.0117204, %bb.e ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.j ], [ %.0111205, %bb.e ] ; 2 uses
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count240
  br i1 %exitcond241.not, label %.preheader, label %bb.d, !llvm.loop !11

.lr.ph214:                                        ; preds = %.lr.ph214.prol.loopexit, %.lr.ph214
  %indvars.iv242 = phi i64 [ %indvars.iv.next243.3, %.lr.ph214 ], [ %indvars.iv242.unr, %.lr.ph214.prol.loopexit ] ; 5 uses
  %.6123212 = phi float [ %i.cl, %.lr.ph214 ], [ %.6123212.unr, %.lr.ph214.prol.loopexit ]
  %.5129211 = phi float [ %i.ck, %.lr.ph214 ], [ %.5129211.unr, %.lr.ph214.prol.loopexit ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv242
  %i.bq = load float, ptr %i.bp, align 4          ; 2 uses
  %i.br = fsub float 1.000000e+00, %i.bq
  %i.bs = fmul float %.5129211, %i.br
  %i.bt = fsub float %.6123212, %i.bq
  %i.bu = getelementptr [4 x i8], ptr %2, i64 %indvars.iv242
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4          ; 2 uses
  %i.bx = fsub float 1.000000e+00, %i.bw
  %i.by = fmul float %i.bs, %i.bx
  %i.bz = fsub float %i.bt, %i.bw
  %i.ca = getelementptr [4 x i8], ptr %2, i64 %indvars.iv242
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cd = fsub float 1.000000e+00, %i.cc
  %i.ce = fmul float %i.by, %i.cd
  %i.cf = fsub float %i.bz, %i.cc
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %indvars.iv242
  %i.ch = getelementptr i8, ptr %i.cg, i64 12
  %i.ci = load float, ptr %i.ch, align 4          ; 2 uses
  %i.cj = fsub float 1.000000e+00, %i.ci
  %i.ck = fmul float %i.ce, %i.cj                 ; 2 uses
  %i.cl = fsub float %i.cf, %i.ci                 ; 2 uses
  %indvars.iv.next243.3 = add nsw i64 %indvars.iv242, 4 ; 2 uses
  %exitcond246.not.3 = icmp eq i64 %indvars.iv.next243.3, %i.e
  br i1 %exitcond246.not.3, label %._crit_edge, label %.lr.ph214, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph214.prol.loopexit, %.lr.ph214, %.preheader
  %.5129.lcssa = phi float [ %.0124.lcssa, %.preheader ], [ %.lcssa25.unr, %.lr.ph214.prol.loopexit ], [ %i.ck, %.lr.ph214 ]
  %.6123.lcssa = phi float [ %.0117.lcssa, %.preheader ], [ %.lcssa24.unr, %.lr.ph214.prol.loopexit ], [ %i.cl, %.lr.ph214 ] ; 5 uses
  %i.cm = fneg float %.6123.lcssa
  %i.cn = fpext float %i.cm to double             ; 3 uses
  %i.co = tail call double @exp(double noundef %i.cn) #9
  %i.cp = fpext float %.5129.lcssa to double
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = fptrunc double %i.cq to float           ; 3 uses
  %i.cs = add i32 %.0133.lcssa, %1                ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %i.cu = mul i32 %1, 100
  %i.cv = sdiv i32 %i.cu, %i.cs
  %i.cw = icmp sgt i32 %.0133.lcssa, %i.cv
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = sitofp i32 %1 to double                 ; 4 uses
  %i.cy = fmul nnan double %i.cx, 4.000000e+02
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cy)
  %i.da = tail call double @sqrt(double noundef %i.cz) #9
  %i.db = fsub double %i.da, %i.cx
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = fptosi double %i.dc to i32
  %i.de = sext i32 %.0133.lcssa to i64
  tail call void @pg_qsort(ptr noundef %i.q, i64 noundef %i.de, i64 noundef 4, ptr noundef nonnull @float_compare_desc) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge
  %.2135 = phi i32 [ %i.dd, %bb.m ], [ %.0133.lcssa, %bb.l ], [ %.0133.lcssa, %._crit_edge ] ; 9 uses
  %i.df = add i32 %.2135, 1                       ; 5 uses
  %i.dg = sext i32 %i.df to i64                   ; 5 uses
  %i.dh = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 3 uses
  %i.di = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 2 uses
  store float 1.000000e+00, ptr %i.dh, align 4
  %.not72.i = icmp slt i32 %.2135, 1
  br i1 %.not72.i, label %calc_distr.exit, label %.lr.ph77.preheader.i

.lr.ph77.preheader.i:                             ; preds = %bb.n
  %wide.trip.count97.i = zext i32 %i.df to i64
  br label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %._crit_edge.i, %.lr.ph77.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i ], [ 0, %.lr.ph77.preheader.i ] ; 2 uses
  %i.dj = phi float [ %i.ds, %._crit_edge.i ], [ 1.000000e+00, %.lr.ph77.preheader.i ]
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %._crit_edge.i ], [ 1, %.lr.ph77.preheader.i ] ; 5 uses
  %.06274.i = phi ptr [ %.06473.i, %._crit_edge.i ], [ %i.di, %.lr.ph77.preheader.i ] ; 6 uses
  %.06473.i = phi ptr [ %.06274.i, %._crit_edge.i ], [ %i.dh, %.lr.ph77.preheader.i ] ; 8 uses
  %i.dk = add i32 %indvar, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.dk)
  %i.dl = add i32 %smin, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nsw i64 %i.dm, -1                   ; 3 uses
  %i.do = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv94.i
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  %i.dq = load float, ptr %i.dp, align 4          ; 4 uses
  %i.dr = fsub float 1.000000e+00, %i.dq          ; 4 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dr, float 0.000000e+00) ; 2 uses
  store float %i.ds, ptr %.06274.i, align 4
  %xtraiter33 = and i64 %i.dn, 1
  %i.dt = icmp eq i32 %i.dl, 2
  br i1 %i.dt, label %.peel.next.i.epil.preheader, label %.lr.ph77.i.new

.lr.ph77.i.new:                                   ; preds = %.lr.ph77.i
  %unroll_iter = and i64 %i.dn, -2
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.q, %.lr.ph77.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph77.i.new ], [ %indvars.iv.next.i.1, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph77.i.new ], [ %niter.next.1, %bb.q ]
  %i.du = icmp samesign ult i64 %indvars.iv.i, %indvars.iv94.i
  br i1 %i.du, label %bb.o, label %.peel.next.i.1

bb.o:                                             ; preds = %.peel.next.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.06473.i, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dr, float 0.000000e+00)
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.o, %.peel.next.i
  %.057.i = phi float [ %i.dx, %bb.o ], [ 0.000000e+00, %.peel.next.i ]
  %i.dy = getelementptr [4 x i8], ptr %.06473.i, i64 %indvars.iv.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 -4
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.dq, float %.057.i)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.06274.i, i64 %indvars.iv.i
  store float %i.eb, ptr %i.ec, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.ed = icmp samesign ult i64 %indvars.iv.next.i, %indvars.iv94.i
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.peel.next.i.1
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.06473.i, i64 %indvars.iv.next.i
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.dr, float 0.000000e+00)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.peel.next.i.1
  %.057.i.1 = phi float [ %i.eg, %bb.p ], [ 0.000000e+00, %.peel.next.i.1 ]
  %i.eh = getelementptr [4 x i8], ptr %.06473.i, i64 %indvars.iv.next.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -4
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.dq, float %.057.i.1)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.06274.i, i64 %indvars.iv.next.i
  store float %i.ek, ptr %i.el, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.peel.next.i, !llvm.loop !13

._crit_edge.i.unr-lcssa:                          ; preds = %bb.q
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph77.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph77.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 4 uses
  %lcmp.mod35 = trunc i64 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.em = icmp samesign ult i64 %indvars.iv.i.epil.init, %indvars.iv94.i
  br i1 %i.em, label %bb.r, label %._crit_edge.i.epilog-lcssa

bb.r:                                             ; preds = %.peel.next.i.epil.preheader
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.06473.i, i64 %indvars.iv.i.epil.init
  %i.eo = load float, ptr %i.en, align 4
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dr, float 0.000000e+00)
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.r, %.peel.next.i.epil.preheader
  %.057.i.epil = phi float [ %i.ep, %bb.r ], [ 0.000000e+00, %.peel.next.i.epil.preheader ]
  %i.eq = getelementptr [4 x i8], ptr %.06473.i, i64 %indvars.iv.i.epil.init
  %i.er = getelementptr i8, ptr %i.eq, i64 -4
  %i.es = load float, ptr %i.er, align 4
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float %i.dq, float %.057.i.epil)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.06274.i, i64 %indvars.iv.i.epil.init
  store float %i.et, ptr %i.eu, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %._crit_edge.i.epilog-lcssa
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond98.i, label %calc_distr.exit, label %.lr.ph77.i, !llvm.loop !15

calc_distr.exit:                                  ; preds = %._crit_edge.i, %bb.n
  %.064.lcssa.i = phi ptr [ %i.dh, %bb.n ], [ %.06274.i, %._crit_edge.i ] ; 4 uses
  %.062.lcssa.i = phi ptr [ %i.di, %bb.n ], [ %.06473.i, %._crit_edge.i ]
  tail call void @pfree(ptr noundef %.062.lcssa.i) #9
  %i.ev = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 3 uses
  %i.ew = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 2 uses
  store float 1.000000e+00, ptr %i.ev, align 4
  %.not72.i148 = icmp slt i32 %1, 1
  br i1 %.not72.i148, label %._crit_edge78.i, label %.lr.ph77.preheader.i149

.lr.ph77.preheader.i149:                          ; preds = %calc_distr.exit
  %i.ex = add nuw i32 %1, 1
  %wide.trip.count97.i150 = zext i32 %i.ex to i64
  br label %.lr.ph77.i151

.lr.ph77.i151:                                    ; preds = %._crit_edge.i156, %.lr.ph77.preheader.i149
  %indvar36 = phi i32 [ %indvar.next37, %._crit_edge.i156 ], [ 0, %.lr.ph77.preheader.i149 ] ; 2 uses
  %indvars.iv94.i152 = phi i64 [ %indvars.iv.next95.i157, %._crit_edge.i156 ], [ 1, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06274.i153 = phi ptr [ %.06473.i154, %._crit_edge.i156 ], [ %i.ew, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06473.i154 = phi ptr [ %.06274.i153, %._crit_edge.i156 ], [ %i.ev, %.lr.ph77.preheader.i149 ] ; 9 uses
  %i.ey = add i32 %indvar36, 1
  %smin38 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.ey)
  %i.ez = add i32 %smin38, 1                      ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add nsw i64 %i.fa, -1                   ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv94.i152 to i32
  %smin.i155 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.fc) ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %2, i64 %indvars.iv94.i152
  %i.fe = getelementptr i8, ptr %i.fd, i64 -4
  %i.ff = load float, ptr %i.fe, align 4          ; 4 uses
  %i.fg = icmp sgt i32 %smin.i155, -1
  br i1 %i.fg, label %bb.s, label %._crit_edge.i156

bb.s:                                             ; preds = %.lr.ph77.i151
  %i.fh = fsub float 1.000000e+00, %i.ff          ; 4 uses
  %i.fi = load float, ptr %.06473.i154, align 4
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fh, float 0.000000e+00)
  store float %i.fj, ptr %.06274.i153, align 4
  %exitcond.peel.i162 = icmp eq i32 %smin.i155, 0
  br i1 %exitcond.peel.i162, label %._crit_edge.i156, label %.peel.next.i163.preheader

.peel.next.i163.preheader:                        ; preds = %bb.s
  %xtraiter39 = and i64 %i.fb, 1
  %i.fk = icmp eq i32 %i.ez, 2
  br i1 %i.fk, label %.peel.next.i163.epil.preheader, label %.peel.next.i163.preheader.new

.peel.next.i163.preheader.new:                    ; preds = %.peel.next.i163.preheader
  %unroll_iter42 = and i64 %i.fb, -2
  br label %.peel.next.i163

.peel.next.i163:                                  ; preds = %bb.v, %.peel.next.i163.preheader.new
  %indvars.iv.i164 = phi i64 [ 1, %.peel.next.i163.preheader.new ], [ %indvars.iv.next.i166.1, %bb.v ] ; 6 uses
  %niter43 = phi i64 [ 0, %.peel.next.i163.preheader.new ], [ %niter43.next.1, %bb.v ]
  %i.fl = icmp samesign ult i64 %indvars.iv.i164, %indvars.iv94.i152
  br i1 %i.fl, label %bb.t, label %.peel.next.i163.1

bb.t:                                             ; preds = %.peel.next.i163
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fh, float 0.000000e+00)
  br label %.peel.next.i163.1

.peel.next.i163.1:                                ; preds = %bb.t, %.peel.next.i163
  %.057.i165 = phi float [ %i.fo, %bb.t ], [ 0.000000e+00, %.peel.next.i163 ]
  %i.fp = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164
  %i.fq = getelementptr i8, ptr %i.fp, i64 -4
  %i.fr = load float, ptr %i.fq, align 4
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.ff, float %.057.i165)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.i164
  store float %i.fs, ptr %i.ft, align 4
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i164, 1 ; 4 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next.i166, %indvars.iv94.i152
  br i1 %i.fu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.peel.next.i163.1
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.next.i166
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fh, float 0.000000e+00)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.peel.next.i163.1
  %.057.i165.1 = phi float [ %i.fx, %bb.u ], [ 0.000000e+00, %.peel.next.i163.1 ]
  %i.fy = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.next.i166
  %i.fz = getelementptr i8, ptr %i.fy, i64 -4
  %i.ga = load float, ptr %i.fz, align 4
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.ff, float %.057.i165.1)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.next.i166
  store float %i.gb, ptr %i.gc, align 4
  %indvars.iv.next.i166.1 = add nuw nsw i64 %indvars.iv.i164, 2 ; 2 uses
  %niter43.next.1 = add i64 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i64 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %._crit_edge.i156.loopexit.unr-lcssa, label %.peel.next.i163, !llvm.loop !13

._crit_edge.i156.loopexit.unr-lcssa:              ; preds = %bb.v
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %._crit_edge.i156, label %.peel.next.i163.epil.preheader

.peel.next.i163.epil.preheader:                   ; preds = %._crit_edge.i156.loopexit.unr-lcssa, %.peel.next.i163.preheader
  %indvars.iv.i164.epil.init = phi i64 [ 1, %.peel.next.i163.preheader ], [ %indvars.iv.next.i166.1, %._crit_edge.i156.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod41 = trunc i64 %i.fb to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.gd = icmp samesign ult i64 %indvars.iv.i164.epil.init, %indvars.iv94.i152
  br i1 %i.gd, label %bb.w, label %._crit_edge.i156.loopexit.epilog-lcssa

bb.w:                                             ; preds = %.peel.next.i163.epil.preheader
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164.epil.init
  %i.gf = load float, ptr %i.ge, align 4
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.fh, float 0.000000e+00)
  br label %._crit_edge.i156.loopexit.epilog-lcssa

._crit_edge.i156.loopexit.epilog-lcssa:           ; preds = %bb.w, %.peel.next.i163.epil.preheader
  %.057.i165.epil = phi float [ %i.gg, %bb.w ], [ 0.000000e+00, %.peel.next.i163.epil.preheader ]
  %i.gh = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164.epil.init
  %i.gi = getelementptr i8, ptr %i.gh, i64 -4
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.ff, float %.057.i165.epil)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.i164.epil.init
  store float %i.gk, ptr %i.gl, align 4
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %._crit_edge.i156.loopexit.epilog-lcssa, %._crit_edge.i156.loopexit.unr-lcssa, %bb.s, %.lr.ph77.i151
  %indvars.iv.next95.i157 = add nuw nsw i64 %indvars.iv94.i152, 1 ; 2 uses
  %exitcond98.i158 = icmp eq i64 %indvars.iv.next95.i157, %wide.trip.count97.i150
  %indvar.next37 = add i32 %indvar36, 1
  br i1 %exitcond98.i158, label %._crit_edge78.i, label %.lr.ph77.i151, !llvm.loop !15

._crit_edge78.i:                                  ; preds = %._crit_edge.i156, %calc_distr.exit
  %.064.lcssa.i159 = phi ptr [ %i.ev, %calc_distr.exit ], [ %.06274.i153, %._crit_edge.i156 ] ; 10 uses
  %.062.lcssa.i160 = phi ptr [ %i.ew, %calc_distr.exit ], [ %.06473.i154, %._crit_edge.i156 ] ; 11 uses
  %i.gm = fpext float %.6123.lcssa to double
  %i.gn = fcmp ogt double %i.gm, 5.000000e-03
  br i1 %i.gn, label %.preheader70.i, label %calc_distr.exit168

.preheader70.i:                                   ; preds = %._crit_edge78.i
  %.not6780.i = icmp slt i32 %.2135, 0
  br i1 %.not6780.i, label %._crit_edge83.thread.i, label %.preheader.preheader.i

._crit_edge83.thread.i:                           ; preds = %.preheader70.i
  %i.go = fcmp ogt float %.6123.lcssa, 7.450000e+02
  %i.gp = fcmp olt float %.6123.lcssa, -7.090000e+02
  %i.gq = or i1 %i.gp, %i.go
  br i1 %i.gq, label %cdce.call, label %calc_distr.exit168, !prof !16

cdce.call:                                        ; preds = %._crit_edge83.thread.i
  %i.gr = tail call double @exp(double noundef %i.cn) #9 ; 0 uses
  br label %calc_distr.exit168

.preheader.preheader.i:                           ; preds = %.preheader70.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1)
  %i.gs = zext nneg i32 %smax.i to i64            ; 2 uses
  %i.gt = shl nuw nsw i64 %i.gs, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.062.lcssa.i160, i8 0, i64 %i.gt, i1 false)
  %i.gu = tail call double @exp(double noundef %i.cn) #9
  %i.gv = fptrunc double %i.gu to float
  %scevgep15 = getelementptr i8, ptr %.064.lcssa.i159, i64 4
  br label %.preheader.i.a

.preheader.i.a:                                   ; preds = %._crit_edge87.i, %.preheader.preheader.i
  %indvars.iv247 = phi i32 [ %indvars.iv.next248, %._crit_edge87.i ], [ %.2135, %.preheader.preheader.i ] ; 5 uses
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge87.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %.090.i = phi float [ %i.io, %._crit_edge87.i ], [ %i.gv, %.preheader.preheader.i ] ; 5 uses
  %i.gw = shl nuw nsw i64 %indvars.iv105.i, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gw
  %i.gx = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gw
  %scevgep13 = getelementptr i8, ptr %i.gx, i64 4
  %i.gy = zext i32 %indvars.iv247 to i64
  %i.gz = shl nuw nsw i64 %i.gy, 2                ; 2 uses
  %scevgep14 = getelementptr i8, ptr %scevgep13, i64 %i.gz
  %scevgep16 = getelementptr i8, ptr %scevgep15, i64 %i.gz
  %9 = shl nuw nsw i64 %indvars.iv105.i, 2
  %10 = trunc i64 %9 to i34                       ; 2 uses
  %i.ha = zext i32 %indvars.iv247 to i64          ; 4 uses
  %11 = trunc nuw nsw i64 %indvars.iv105.i to i32
  %12 = sub i32 %.2135, %11
  %.not6984.i = icmp slt i32 %12, 0
  br i1 %.not6984.i, label %._crit_edge87.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %.preheader.i.a
  %13 = add nuw nsw i64 %i.ha, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv247, 11
  br i1 %min.iters.check, label %.lr.ph86.i.preheader23, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.i.preheader
  %i.hb = zext i32 %indvars.iv247 to i34
  %mul = shl nuw i34 %i.hb, 2
  %i.hc = add i34 %mul, %10
  %i.hd = icmp slt i34 %i.hc, %10
  br i1 %i.hd, label %.lr.ph86.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep16
  %bound1 = icmp ult ptr %.064.lcssa.i159, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph86.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %13, 8589934584                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.090.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %index ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load = load <4 x float>, ptr %i.he, align 4, !alias.scope !17
  %wide.load17 = load <4 x float>, ptr %i.hf, align 4, !alias.scope !17
  %i.hg = add nuw nsw i64 %index, %indvars.iv105.i
  %i.hh = shl i64 %i.hg, 32
  %i.hi = ashr exact i64 %i.hh, 30
  %i.hj = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hi ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %wide.load18 = load <4 x float>, ptr %i.hj, align 4, !alias.scope !20, !noalias !17
  %wide.load19 = load <4 x float>, ptr %i.hk, align 4, !alias.scope !20, !noalias !17
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load18)
  %i.hm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load17, <4 x float> %broadcast.splat, <4 x float> %wide.load19)
  store <4 x float> %i.hl, ptr %i.hj, align 4, !alias.scope !20, !noalias !17
  store <4 x float> %i.hm, ptr %i.hk, align 4, !alias.scope !20, !noalias !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %._crit_edge87.i, label %.lr.ph86.i.preheader23

.lr.ph86.i.preheader23:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph86.i.preheader, %middle.block
  %indvars.iv102.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ho = and i64 %i.ha, 1
  %lcmp.mod45.not.not = icmp eq i64 %i.ho, 0
  br i1 %lcmp.mod45.not.not, label %.lr.ph86.i.prol, label %.lr.ph86.i.prol.loopexit

.lr.ph86.i.prol:                                  ; preds = %.lr.ph86.i.preheader23
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv102.i.ph
  %i.hq = load float, ptr %i.hp, align 4
  %i.hr = add nuw nsw i64 %indvars.iv102.i.ph, %indvars.iv105.i
  %sext.i.prol = shl i64 %i.hr, 32
  %i.hs = ashr exact i64 %sext.i.prol, 30
  %i.ht = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hs ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hq, float %.090.i, float %i.hu)
  store float %i.hv, ptr %i.ht, align 4
  %indvars.iv.next103.i.prol = or disjoint i64 %indvars.iv102.i.ph, 1
  br label %.lr.ph86.i.prol.loopexit

.lr.ph86.i.prol.loopexit:                         ; preds = %.lr.ph86.i.prol, %.lr.ph86.i.preheader23
  %indvars.iv102.i.unr = phi i64 [ %indvars.iv102.i.ph, %.lr.ph86.i.preheader23 ], [ %indvars.iv.next103.i.prol, %.lr.ph86.i.prol ]
  %i.hw = icmp eq i64 %indvars.iv102.i.ph, %i.ha
  br i1 %i.hw, label %._crit_edge87.i, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i.1, %.lr.ph86.i ], [ %indvars.iv102.i.unr, %.lr.ph86.i.prol.loopexit ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv102.i
  %i.hy = load float, ptr %i.hx, align 4
  %i.hz = add nuw nsw i64 %indvars.iv102.i, %indvars.iv105.i
  %sext.i = shl i64 %i.hz, 32
  %i.ia = ashr exact i64 %sext.i, 30
  %i.ib = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.ia ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4
  %i.id = tail call float @llvm.fmuladd.f32(float %i.hy, float %.090.i, float %i.ic)
  store float %i.id, ptr %i.ib, align 4
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv.next103.i
  %i.if = load float, ptr %i.ie, align 4
  %i.ig = add nuw nsw i64 %indvars.iv.next103.i, %indvars.iv105.i
  %sext.i.1 = shl i64 %i.ig, 32
  %i.ih = ashr exact i64 %sext.i.1, 30
  %i.ii = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.ih ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.if, float %.090.i, float %i.ij)
  store float %i.ik, ptr %i.ii, align 4
  %indvars.iv.next103.i.1 = add nuw nsw i64 %indvars.iv102.i, 2
  %exitcond249.not.1 = icmp eq i64 %indvars.iv.next103.i, %i.ha
  br i1 %exitcond249.not.1, label %._crit_edge87.i, label %.lr.ph86.i, !llvm.loop !25

._crit_edge87.i:                                  ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i, %middle.block, %.preheader.i.a
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 3 uses
  %i.il = trunc nuw nsw i64 %indvars.iv.next106.i to i32
  %i.im = sitofp i32 %i.il to float
  %i.in = fdiv float %.6123.lcssa, %i.im
  %i.io = fmul float %.090.i, %i.in
  %exitcond110.i = icmp eq i64 %indvars.iv.next106.i, %i.gs
  %indvars.iv.next248 = add i32 %indvars.iv247, -1
  br i1 %exitcond110.i, label %calc_distr.exit168, label %.preheader.i.a, !llvm.loop !26

calc_distr.exit168:                               ; preds = %._crit_edge87.i, %cdce.call, %._crit_edge83.thread.i, %._crit_edge78.i
  %.165.i = phi ptr [ %.064.lcssa.i159, %._crit_edge78.i ], [ %.062.lcssa.i160, %cdce.call ], [ %.062.lcssa.i160, %._crit_edge83.thread.i ], [ %.062.lcssa.i160, %._crit_edge87.i ] ; 4 uses
  %.163.i = phi ptr [ %.062.lcssa.i160, %._crit_edge78.i ], [ %.064.lcssa.i159, %cdce.call ], [ %.064.lcssa.i159, %._crit_edge83.thread.i ], [ %.064.lcssa.i159, %._crit_edge87.i ]
  tail call void @pfree(ptr noundef %.163.i) #9
  %i.ip = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 5 uses
  %i.iq = add nsw i32 %7, -2
  %i.ir = uitofp nneg i32 %i.iq to float
  %i.is = fdiv float 1.000000e+00, %i.ir          ; 2 uses
  %.not54.i = icmp slt i32 %.2135, 0
  br i1 %.not54.i, label %._crit_edge221, label %.preheader.preheader.i169

.preheader.preheader.i169:                        ; preds = %calc_distr.exit168
  %smax.i170 = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1) ; 2 uses
  %wide.trip.count.i171 = zext nneg i32 %smax.i170 to i64 ; 3 uses
  br label %.preheader.i172

.preheader.i172:                                  ; preds = %bb.ab, %.preheader.preheader.i169
  %indvars.iv62.i = phi i64 [ 0, %.preheader.preheader.i169 ], [ %indvars.iv.next63.i, %bb.ab ] ; 3 uses
  %.04057.i = phi float [ 0.000000e+00, %.preheader.preheader.i169 ], [ %.141.i, %bb.ab ] ; 6 uses
  %.04256.i = phi i32 [ 0, %.preheader.preheader.i169 ], [ %.14348.i, %bb.ab ] ; 4 uses
  %i.it = icmp slt i32 %.04256.i, %i.l
  br i1 %i.it, label %.lr.ph.i, label %.critedge.thread.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i172
  %i.iu = trunc nuw nsw i64 %indvars.iv62.i to i32
  %i.iv = sitofp i32 %i.iu to float
  %i.iw = sext i32 %.04256.i to i64
  %i.ix = sub i32 %i.l, %.04256.i                 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i174 = phi i64 [ %i.iw, %.lr.ph.i ], [ %indvars.iv.next.i175, %bb.y ] ; 4 uses
  %.03852.i = phi i32 [ 0, %.lr.ph.i ], [ %i.jb, %bb.y ] ; 3 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv.i174
  %i.iz = load float, ptr %i.iy, align 4          ; 2 uses
  %i.ja = fcmp ugt float %i.iz, %i.iv
  br i1 %i.ja, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jb = add nuw i32 %.03852.i, 1                ; 2 uses
  %indvars.iv.next.i175 = add nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jb, %i.ix
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.x, !llvm.loop !27

.critedge.i:                                      ; preds = %bb.x
  %i.jc = trunc nsw i64 %indvars.iv.i174 to i32   ; 2 uses
  %i.jd = icmp sgt i32 %.03852.i, 0
  br i1 %i.jd, label %bb.z, label %.critedge.thread.thread.i

.critedge.thread.i:                               ; preds = %bb.y
  %i.je = trunc nsw i64 %indvars.iv.next.i175 to i32 ; 2 uses
  %i.jf = icmp sgt i32 %i.ix, 0
  br i1 %i.jf, label %.thread.i, label %.critedge.thread.thread.i

bb.z:                                             ; preds = %.critedge.i
  %i.jg = shl i64 %indvars.iv.i174, 32
  %sext.i176 = add i64 %i.jg, -4294967296
  %i.jh = ashr exact i64 %sext.i176, 30
  %i.ji = getelementptr inbounds i8, ptr %6, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4
  %i.jk = fsub float %i.iz, %i.jj
  br label %.thread.i

.thread.i:                                        ; preds = %bb.z, %.critedge.thread.i
  %.14350.i = phi i32 [ %i.jc, %bb.z ], [ %i.je, %.critedge.thread.i ]
  %.03846.i = phi i32 [ %.03852.i, %bb.z ], [ %i.ix, %.critedge.thread.i ]
  %.039.i = phi float [ %i.jk, %bb.z ], [ 0.000000e+00, %.critedge.thread.i ] ; 3 uses
  %i.jl = add nsw i32 %.03846.i, -1
  %i.jm = uitofp nneg i32 %i.jl to float
  %i.jn = fcmp ogt float %.039.i, 0.000000e+00
  %i.jo = insertelement <2 x float> poison, float %.039.i, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %.04057.i, i64 1
  %i.jq = fdiv <2 x float> splat (float 5.000000e-01), %i.jp ; 2 uses
  %i.jr = extractelement <2 x float> %i.jq, i64 0
  %i.js = select i1 %i.jn, float %i.jr, float -0.000000e+00
  %.0.i = fadd float %i.js, %i.jm                 ; 2 uses
  %i.jt = fcmp ogt float %.04057.i, 0.000000e+00
  %i.ju = extractelement <2 x float> %i.jq, i64 1
  %i.jv = fadd float %i.ju, %.0.i
  %.1.i = select i1 %i.jt, float %i.jv, float %.0.i
  %i.jw = fmul float %i.is, %.1.i
  br label %bb.ab

.critedge.thread.thread.i:                        ; preds = %.critedge.thread.i, %.critedge.i, %.preheader.i172
  %.14349.i = phi i32 [ %i.je, %.critedge.thread.i ], [ %i.jc, %.critedge.i ], [ %.04256.i, %.preheader.i172 ] ; 2 uses
  %i.jx = fcmp ogt float %.04057.i, 0.000000e+00
  br i1 %i.jx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread.thread.i
  %i.jy = fdiv float %i.is, %.04057.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.thread.thread.i, %.thread.i
  %.sink.i = phi float [ %i.jy, %bb.aa ], [ %i.jw, %.thread.i ], [ 0.000000e+00, %.critedge.thread.thread.i ]
  %.14348.i = phi i32 [ %.14349.i, %bb.aa ], [ %.14350.i, %.thread.i ], [ %.14349.i, %.critedge.thread.thread.i ]
  %.141.i = phi float [ %.04057.i, %bb.aa ], [ %.039.i, %.thread.i ], [ %.04057.i, %.critedge.thread.thread.i ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv62.i
  store float %.sink.i, ptr %i.jz, align 4
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond65.i = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count.i171
  br i1 %exitcond65.i, label %.lr.ph220.preheader, label %.preheader.i172, !llvm.loop !28

.lr.ph220.preheader:                              ; preds = %bb.ab
  %xtraiter47 = and i64 %wide.trip.count.i171, 1
  %i.ka = icmp slt i32 %i.df, 2
  br i1 %i.ka, label %.lr.ph220.epil.preheader, label %.lr.ph220.preheader.new

.lr.ph220.preheader.new:                          ; preds = %.lr.ph220.preheader
  %unroll_iter51 = and i64 %wide.trip.count.i171, 2147483646
  br label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.ae, %.lr.ph220.preheader.new
  %indvars.iv250 = phi i64 [ 0, %.lr.ph220.preheader.new ], [ %indvars.iv.next251.1, %bb.ae ] ; 5 uses
  %.0130219 = phi float [ 0.000000e+00, %.lr.ph220.preheader.new ], [ %.1131.1, %bb.ae ] ; 2 uses
  %niter52 = phi i64 [ 0, %.lr.ph220.preheader.new ], [ %niter52.next.1, %bb.ae ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv250
  %i.kc = load float, ptr %i.kb, align 4          ; 2 uses
  %i.kd = fcmp ogt float %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.ac, label %.lr.ph220.1

bb.ac:                                            ; preds = %.lr.ph220
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv250
  %i.kf = load float, ptr %i.ke, align 4
  %i.kg = fmul float %i.kf, %i.cr
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv250
  %i.ki = load float, ptr %i.kh, align 4
  %i.kj = fmul float %i.kg, %i.ki
  %i.kk = fdiv float %i.kj, %i.kc
  %i.kl = fadd float %.0130219, %i.kk
  br label %.lr.ph220.1

.lr.ph220.1:                                      ; preds = %.lr.ph220, %bb.ac
  %.1131 = phi float [ %i.kl, %bb.ac ], [ %.0130219, %.lr.ph220 ] ; 2 uses
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv.next251
  %i.kn = load float, ptr %i.km, align 4          ; 2 uses
  %i.ko = fcmp ogt float %i.kn, 0.000000e+00
  br i1 %i.ko, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph220.1
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.next251
  %i.kq = load float, ptr %i.kp, align 4
  %i.kr = fmul float %i.kq, %i.cr
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv.next251
  %i.kt = load float, ptr %i.ks, align 4
  %i.ku = fmul float %i.kr, %i.kt
  %i.kv = fdiv float %i.ku, %i.kn
  %i.kw = fadd float %.1131, %i.kv
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph220.1
  %.1131.1 = phi float [ %i.kw, %bb.ad ], [ %.1131, %.lr.ph220.1 ] ; 3 uses
  %indvars.iv.next251.1 = add nuw nsw i64 %indvars.iv250, 2 ; 2 uses
  %niter52.next.1 = add i64 %niter52, 2           ; 2 uses
  %niter52.ncmp.1 = icmp eq i64 %niter52.next.1, %unroll_iter51
  br i1 %niter52.ncmp.1, label %._crit_edge221.loopexit.unr-lcssa, label %.lr.ph220, !llvm.loop !29

._crit_edge221.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %._crit_edge221, label %.lr.ph220.epil.preheader

.lr.ph220.epil.preheader:                         ; preds = %._crit_edge221.loopexit.unr-lcssa, %.lr.ph220.preheader
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph220.preheader ], [ %indvars.iv.next251.1, %._crit_edge221.loopexit.unr-lcssa ] ; 3 uses
  %.0130219.epil.init = phi float [ 0.000000e+00, %.lr.ph220.preheader ], [ %.1131.1, %._crit_edge221.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i32 %smax.i170 to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv250.epil.init
  %i.ky = load float, ptr %i.kx, align 4          ; 2 uses
  %i.kz = fcmp ogt float %i.ky, 0.000000e+00
  br i1 %i.kz, label %bb.af, label %._crit_edge221

bb.af:                                            ; preds = %.lr.ph220.epil.preheader
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv250.epil.init
  %i.lb = load float, ptr %i.la, align 4
  %i.lc = fmul float %i.lb, %i.cr
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv250.epil.init
  %i.le = load float, ptr %i.ld, align 4
  %i.lf = fmul float %i.lc, %i.le
  %i.lg = fdiv float %i.lf, %i.ky
  %i.lh = fadd float %.0130219.epil.init, %i.lg
  br label %._crit_edge221

._crit_edge221:                                   ; preds = %._crit_edge221.loopexit.unr-lcssa, %bb.af, %.lr.ph220.epil.preheader, %calc_distr.exit168
  %.0130.lcssa = phi float [ 0.000000e+00, %calc_distr.exit168 ], [ %.1131.1, %._crit_edge221.loopexit.unr-lcssa ], [ %i.lh, %bb.af ], [ %.0130219.epil.init, %.lr.ph220.epil.preheader ]
  tail call void @pfree(ptr noundef nonnull %.064.lcssa.i) #9
  tail call void @pfree(ptr noundef %.165.i) #9
  tail call void @pfree(ptr noundef %i.ip) #9
  tail call void @pfree(ptr noundef %i.q) #9
  %i.li = fsub float 1.000000e+00, %i.k
  %i.lj = fmul float %i.li, %.0130.lcssa          ; 3 uses
  %i.lk = fcmp olt float %i.lj, 0.000000e+00
end_hunk_0
