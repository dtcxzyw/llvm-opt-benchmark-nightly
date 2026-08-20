inline.NumInlined: 29
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mcelem_array_contained_selec:bb.a

.lr.ph211.prol:                                   ; preds = %.lr.ph211.preheader, %.lr.ph211.prol
  %indvars.iv239.prol = phi i64 [ %indvars.iv.next240.prol, %.lr.ph211.prol ], [ %i.y, %.lr.ph211.preheader ] ; 2 uses
  %.6123209.prol = phi float [ %i.ae, %.lr.ph211.prol ], [ %.0117.lcssa, %.lr.ph211.preheader ]
  %.5129208.prol = phi float [ %i.ad, %.lr.ph211.prol ], [ %.0124.lcssa, %.lr.ph211.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph211.prol ], [ 0, %.lr.ph211.preheader ]
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv239.prol
  %i.ab = load float, ptr %i.aa, align 4          ; 2 uses
  %i.ac = fsub float 1.000000e+00, %i.ab
  %i.ad = fmul float %.5129208.prol, %i.ac        ; 3 uses
  %i.ae = fsub float %.6123209.prol, %i.ab        ; 3 uses
  %indvars.iv.next240.prol = add nsw i64 %indvars.iv239.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph211.prol.loopexit, label %.lr.ph211.prol, !llvm.loop !9

.lr.ph211.prol.loopexit:                          ; preds = %.lr.ph211.prol, %.lr.ph211.preheader
  %.lcssa25.unr = phi float [ poison, %.lr.ph211.preheader ], [ %i.ad, %.lr.ph211.prol ]
  %.lcssa24.unr = phi float [ poison, %.lr.ph211.preheader ], [ %i.ae, %.lr.ph211.prol ]
  %indvars.iv239.unr = phi i64 [ %i.y, %.lr.ph211.preheader ], [ %indvars.iv.next240.prol, %.lr.ph211.prol ]
  %.6123209.unr = phi float [ %.0117.lcssa, %.lr.ph211.preheader ], [ %i.ae, %.lr.ph211.prol ]
  %.5129208.unr = phi float [ %.0124.lcssa, %.lr.ph211.preheader ], [ %i.ad, %.lr.ph211.prol ]
  %i.af = sub nsw i64 %i.y, %i.e
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph211

bb.d:                                             ; preds = %.lr.ph203, %bb.k
  %indvars.iv234 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next235, %bb.k ] ; 4 uses
  %.0111202 = phi i32 [ 0, %.lr.ph203 ], [ %.5, %bb.k ] ; 4 uses
  %.0117201 = phi float [ %i.o, %.lr.ph203 ], [ %.5122, %bb.k ] ; 3 uses
  %.0124200 = phi float [ 1.000000e+00, %.lr.ph203 ], [ %.4128, %bb.k ] ; 3 uses
  %.0133199 = phi i32 [ 0, %.lr.ph203 ], [ %.1134, %bb.k ] ; 4 uses
  %.not265 = icmp eq i64 %indvars.iv234, 0
  br i1 %.not265, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr [8 x i8], ptr %4, i64 %indvars.iv234 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = load i32, ptr %i.t, align 8
  %i.am = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.s, i32 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak) #9
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = icmp slt i32 %.0111202, %1
  br i1 %i.ap, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv234
  %i.ar = sext i32 %.0111202 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.1118194 = phi float [ %.0117201, %.lr.ph ], [ %i.bf, %bb.h ] ; 3 uses
  %.1125193 = phi float [ %.0124200, %.lr.ph ], [ %i.be, %bb.h ] ; 3 uses
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
  %i.bi = sext i32 %.0133199 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bi
  store float %i.bh, ptr %i.bj, align 4
  %i.bk = fsub float %.1118194, %i.bh
  %i.bl = add i32 %i.az, 1
  br label %bb.j

.critedge:                                        ; preds = %bb.h, %bb.f, %.thread
  %.1125191 = phi float [ %.1125193, %.thread ], [ %.0124200, %bb.f ], [ %i.be, %bb.h ]
  %.1118188 = phi float [ %.1118194, %.thread ], [ %.0117201, %bb.f ], [ %i.bf, %bb.h ]
  %.1186 = phi i32 [ %i.az, %.thread ], [ %.0111202, %bb.f ], [ %1, %bb.h ]
  %i.bm = sext i32 %.0133199 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bm
  store float %narrow.sel, ptr %i.bn, align 4
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.1125190 = phi float [ %.1125193, %bb.i ], [ %.1125191, %.critedge ]
  %.4121 = phi float [ %i.bk, %bb.i ], [ %.1118188, %.critedge ]
  %.4 = phi i32 [ %i.bl, %bb.i ], [ %.1186, %.critedge ]
  %i.bo = add i32 %.0133199, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j
  %.1134 = phi i32 [ %i.bo, %bb.j ], [ %.0133199, %bb.e ] ; 2 uses
  %.4128 = phi float [ %.1125190, %bb.j ], [ %.0124200, %bb.e ] ; 2 uses
  %.5122 = phi float [ %.4121, %bb.j ], [ %.0117201, %bb.e ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.j ], [ %.0111202, %bb.e ] ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %.preheader, label %bb.d, !llvm.loop !11

.lr.ph211:                                        ; preds = %.lr.ph211.prol.loopexit, %.lr.ph211
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.3, %.lr.ph211 ], [ %indvars.iv239.unr, %.lr.ph211.prol.loopexit ] ; 5 uses
  %.6123209 = phi float [ %i.cl, %.lr.ph211 ], [ %.6123209.unr, %.lr.ph211.prol.loopexit ]
  %.5129208 = phi float [ %i.ck, %.lr.ph211 ], [ %.5129208.unr, %.lr.ph211.prol.loopexit ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv239
  %i.bq = load float, ptr %i.bp, align 4          ; 2 uses
  %i.br = fsub float 1.000000e+00, %i.bq
  %i.bs = fmul float %.5129208, %i.br
  %i.bt = fsub float %.6123209, %i.bq
  %i.bu = getelementptr [4 x i8], ptr %2, i64 %indvars.iv239
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4          ; 2 uses
  %i.bx = fsub float 1.000000e+00, %i.bw
  %i.by = fmul float %i.bs, %i.bx
  %i.bz = fsub float %i.bt, %i.bw
  %i.ca = getelementptr [4 x i8], ptr %2, i64 %indvars.iv239
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cd = fsub float 1.000000e+00, %i.cc
  %i.ce = fmul float %i.by, %i.cd
  %i.cf = fsub float %i.bz, %i.cc
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %indvars.iv239
  %i.ch = getelementptr i8, ptr %i.cg, i64 12
  %i.ci = load float, ptr %i.ch, align 4          ; 2 uses
  %i.cj = fsub float 1.000000e+00, %i.ci
  %i.ck = fmul float %i.ce, %i.cj                 ; 2 uses
  %i.cl = fsub float %i.cf, %i.ci                 ; 2 uses
  %indvars.iv.next240.3 = add nsw i64 %indvars.iv239, 4 ; 2 uses
  %exitcond243.not.3 = icmp eq i64 %indvars.iv.next240.3, %i.e
  br i1 %exitcond243.not.3, label %._crit_edge, label %.lr.ph211, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph211.prol.loopexit, %.lr.ph211, %.preheader
  %.5129.lcssa = phi float [ %.0124.lcssa, %.preheader ], [ %.lcssa25.unr, %.lr.ph211.prol.loopexit ], [ %i.ck, %.lr.ph211 ]
  %.6123.lcssa = phi float [ %.0117.lcssa, %.preheader ], [ %.lcssa24.unr, %.lr.ph211.prol.loopexit ], [ %i.cl, %.lr.ph211 ] ; 5 uses
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
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge87.i, %.preheader.preheader.i
  %indvars.iv244 = phi i32 [ %indvars.iv.next245, %._crit_edge87.i ], [ %.2135, %.preheader.preheader.i ] ; 6 uses
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge87.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %.090.i = phi float [ %i.iu, %._crit_edge87.i ], [ %i.gv, %.preheader.preheader.i ] ; 5 uses
  %i.gw = zext i32 %indvars.iv244 to i64          ; 2 uses
  %i.gx = shl nuw nsw i64 %indvars.iv105.i, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gx
  %i.gy = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gx
  %scevgep13 = getelementptr i8, ptr %i.gy, i64 4
  %i.gz = zext i32 %indvars.iv244 to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 2 uses
  %scevgep14 = getelementptr i8, ptr %scevgep13, i64 %i.ha
  %scevgep16 = getelementptr i8, ptr %scevgep15, i64 %i.ha
  %i.hb = shl nuw nsw i64 %indvars.iv105.i, 2
  %i.hc = trunc i64 %i.hb to i34                  ; 2 uses
  %i.hd = zext i32 %indvars.iv244 to i64          ; 2 uses
  %i.he = trunc nuw nsw i64 %indvars.iv105.i to i32
  %i.hf = sub i32 %.2135, %i.he
  %.not6984.i = icmp slt i32 %i.hf, 0
  br i1 %.not6984.i, label %._crit_edge87.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %.preheader.i
  %i.hg = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv244, 11
  br i1 %min.iters.check, label %.lr.ph86.i.preheader23, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.i.preheader
  %i.hh = zext i32 %indvars.iv244 to i34
  %mul = shl nuw i34 %i.hh, 2
  %i.hi = add i34 %mul, %i.hc
  %i.hj = icmp slt i34 %i.hi, %i.hc
  br i1 %i.hj, label %.lr.ph86.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep16
  %bound1 = icmp ult ptr %.064.lcssa.i159, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph86.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hg, 8589934584              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.090.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %index ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load = load <4 x float>, ptr %i.hk, align 4, !alias.scope !17
  %wide.load17 = load <4 x float>, ptr %i.hl, align 4, !alias.scope !17
  %i.hm = add nuw nsw i64 %index, %indvars.iv105.i
  %i.hn = shl i64 %i.hm, 32
  %i.ho = ashr exact i64 %i.hn, 30
  %i.hp = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.ho ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %wide.load18 = load <4 x float>, ptr %i.hp, align 4, !alias.scope !20, !noalias !17
  %wide.load19 = load <4 x float>, ptr %i.hq, align 4, !alias.scope !20, !noalias !17
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load18)
  %i.hs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load17, <4 x float> %broadcast.splat, <4 x float> %wide.load19)
  store <4 x float> %i.hr, ptr %i.hp, align 4, !alias.scope !20, !noalias !17
  store <4 x float> %i.hs, ptr %i.hq, align 4, !alias.scope !20, !noalias !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
end_hunk_0
