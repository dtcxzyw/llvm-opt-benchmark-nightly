Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/array_selfuncs?download=true
inline.NumInlined: 29
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mcelem_array_contained_selec:bb.a
  %i.w = fcmp ogt double %i.v, 5.000000e-03
  %narrow.sel = select i1 %i.w, float 5.000000e-03, float %i.u
  %wide.trip.count236 = zext nneg i32 %5 to i64
  br label %bb.d

.preheader:                                       ; preds = %bb.k, %bb.c
  %.0133.lcssa = phi i32 [ 0, %bb.c ], [ %.1134, %bb.k ] ; 5 uses
  %.0124.lcssa = phi float [ 1.000000e+00, %bb.c ], [ %.4128, %bb.k ] ; 3 uses
  %.0117.lcssa = phi float [ %i.o, %bb.c ], [ %.5122, %bb.k ] ; 3 uses
  %.0111.lcssa = phi i32 [ 0, %bb.c ], [ %.5, %bb.k ] ; 2 uses
  %i.x = icmp slt i32 %.0111.lcssa, %1
  br i1 %i.x, label %.lr.ph210.preheader, label %._crit_edge

.lr.ph210.preheader:                              ; preds = %.preheader
  %i.y = sext i32 %.0111.lcssa to i64             ; 4 uses
  %i.z = sub nsw i64 %i.e, %i.y
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader, %.lr.ph210.prol
  %indvars.iv238.prol = phi i64 [ %indvars.iv.next239.prol, %.lr.ph210.prol ], [ %i.y, %.lr.ph210.preheader ] ; 2 uses
  %.6123208.prol = phi float [ %i.ae, %.lr.ph210.prol ], [ %.0117.lcssa, %.lr.ph210.preheader ]
  %.5129207.prol = phi float [ %i.ad, %.lr.ph210.prol ], [ %.0124.lcssa, %.lr.ph210.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph210.prol ], [ 0, %.lr.ph210.preheader ]
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv238.prol
  %i.ab = load float, ptr %i.aa, align 4          ; 2 uses
  %i.ac = fsub float 1.000000e+00, %i.ab
  %i.ad = fmul float %.5129207.prol, %i.ac        ; 3 uses
  %i.ae = fsub float %.6123208.prol, %i.ab        ; 3 uses
  %indvars.iv.next239.prol = add nsw i64 %indvars.iv238.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol, !llvm.loop !9

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader
  %.lcssa24.unr = phi float [ poison, %.lr.ph210.preheader ], [ %i.ad, %.lr.ph210.prol ]
  %.lcssa23.unr = phi float [ poison, %.lr.ph210.preheader ], [ %i.ae, %.lr.ph210.prol ]
  %indvars.iv238.unr = phi i64 [ %i.y, %.lr.ph210.preheader ], [ %indvars.iv.next239.prol, %.lr.ph210.prol ]
  %.6123208.unr = phi float [ %.0117.lcssa, %.lr.ph210.preheader ], [ %i.ae, %.lr.ph210.prol ]
  %.5129207.unr = phi float [ %.0124.lcssa, %.lr.ph210.preheader ], [ %i.ad, %.lr.ph210.prol ]
  %i.af = sub nsw i64 %i.y, %i.e
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph210

bb.d:                                             ; preds = %.lr.ph202, %bb.k
  %indvars.iv233 = phi i64 [ 0, %.lr.ph202 ], [ %indvars.iv.next234, %bb.k ] ; 4 uses
  %.0111201 = phi i32 [ 0, %.lr.ph202 ], [ %.5, %bb.k ] ; 4 uses
  %.0117200 = phi float [ %i.o, %.lr.ph202 ], [ %.5122, %bb.k ] ; 3 uses
  %.0124199 = phi float [ 1.000000e+00, %.lr.ph202 ], [ %.4128, %bb.k ] ; 3 uses
  %.0133198 = phi i32 [ 0, %.lr.ph202 ], [ %.1134, %bb.k ] ; 4 uses
  %.not264 = icmp eq i64 %indvars.iv233, 0
  br i1 %.not264, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr [8 x i8], ptr %4, i64 %indvars.iv233 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = load i32, ptr %i.t, align 8
  %i.am = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.s, i32 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak) #9
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = icmp slt i32 %.0111201, %1
  br i1 %i.ap, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv233
  %i.ar = sext i32 %.0111201 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.1118193 = phi float [ %.0117200, %.lr.ph ], [ %i.bf, %bb.h ] ; 3 uses
  %.1125192 = phi float [ %.0124199, %.lr.ph ], [ %i.be, %bb.h ] ; 3 uses
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
  %i.be = fmul float %.1125192, %i.bd             ; 2 uses
  %i.bf = fsub float %.1118193, %i.bc             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.g

bb.i:                                             ; preds = %.thread
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = sext i32 %.0133198 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bi
  store float %i.bh, ptr %i.bj, align 4
  %i.bk = fsub float %.1118193, %i.bh
  %i.bl = add i32 %i.az, 1
  br label %bb.j

.critedge:                                        ; preds = %bb.h, %bb.f, %.thread
  %.1125190.a = phi float [ %.1125192, %.thread ], [ %.0124199, %bb.f ], [ %i.be, %bb.h ]
  %.1118187 = phi float [ %.1118193, %.thread ], [ %.0117200, %bb.f ], [ %i.bf, %bb.h ]
  %.1185 = phi i32 [ %i.az, %.thread ], [ %.0111201, %bb.f ], [ %1, %bb.h ]
  %i.bm = sext i32 %.0133198 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bm
  store float %narrow.sel, ptr %i.bn, align 4
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.1125189 = phi float [ %.1125192, %bb.i ], [ %.1125190.a, %.critedge ]
  %.4121 = phi float [ %i.bk, %bb.i ], [ %.1118187, %.critedge ]
  %.4 = phi i32 [ %i.bl, %bb.i ], [ %.1185, %.critedge ]
  %i.bo = add i32 %.0133198, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j
  %.1134 = phi i32 [ %i.bo, %bb.j ], [ %.0133198, %bb.e ] ; 2 uses
  %.4128 = phi float [ %.1125189, %bb.j ], [ %.0124199, %bb.e ] ; 2 uses
  %.5122 = phi float [ %.4121, %bb.j ], [ %.0117200, %bb.e ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.j ], [ %.0111201, %bb.e ] ; 2 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %.preheader, label %bb.d, !llvm.loop !10

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %indvars.iv238 = phi i64 [ %indvars.iv.next239.3, %.lr.ph210 ], [ %indvars.iv238.unr, %.lr.ph210.prol.loopexit ] ; 5 uses
  %.6123208 = phi float [ %i.cl, %.lr.ph210 ], [ %.6123208.unr, %.lr.ph210.prol.loopexit ]
  %.5129207 = phi float [ %i.ck, %.lr.ph210 ], [ %.5129207.unr, %.lr.ph210.prol.loopexit ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv238
  %i.bq = load float, ptr %i.bp, align 4          ; 2 uses
  %i.br = fsub float 1.000000e+00, %i.bq
  %i.bs = fmul float %.5129207, %i.br
  %i.bt = fsub float %.6123208, %i.bq
  %i.bu = getelementptr [4 x i8], ptr %2, i64 %indvars.iv238
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4          ; 2 uses
  %i.bx = fsub float 1.000000e+00, %i.bw
  %i.by = fmul float %i.bs, %i.bx
  %i.bz = fsub float %i.bt, %i.bw
  %i.ca = getelementptr [4 x i8], ptr %2, i64 %indvars.iv238
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cd = fsub float 1.000000e+00, %i.cc
  %i.ce = fmul float %i.by, %i.cd
  %i.cf = fsub float %i.bz, %i.cc
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %indvars.iv238
  %i.ch = getelementptr i8, ptr %i.cg, i64 12
  %i.ci = load float, ptr %i.ch, align 4          ; 2 uses
  %i.cj = fsub float 1.000000e+00, %i.ci
  %i.ck = fmul float %i.ce, %i.cj                 ; 2 uses
  %i.cl = fsub float %i.cf, %i.ci                 ; 2 uses
  %indvars.iv.next239.3 = add nsw i64 %indvars.iv238, 4 ; 2 uses
  %exitcond242.not.3 = icmp eq i64 %indvars.iv.next239.3, %i.e
  br i1 %exitcond242.not.3, label %._crit_edge, label %.lr.ph210, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210, %.preheader
  %.5129.lcssa = phi float [ %.0124.lcssa, %.preheader ], [ %.lcssa24.unr, %.lr.ph210.prol.loopexit ], [ %i.ck, %.lr.ph210 ]
  %.6123.lcssa = phi float [ %.0117.lcssa, %.preheader ], [ %.lcssa23.unr, %.lr.ph210.prol.loopexit ], [ %i.cl, %.lr.ph210 ] ; 5 uses
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
  %.2135 = phi i32 [ %i.dd, %bb.m ], [ %.0133.lcssa, %bb.l ], [ %.0133.lcssa, %._crit_edge ] ; 8 uses
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
  %xtraiter32 = and i64 %i.dn, 1
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
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.peel.next.i, !llvm.loop !12

._crit_edge.i.unr-lcssa:                          ; preds = %bb.q
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph77.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph77.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 4 uses
  %lcmp.mod34 = trunc i64 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
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
  br i1 %exitcond98.i, label %calc_distr.exit, label %.lr.ph77.i, !llvm.loop !13

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
  %indvar35 = phi i32 [ %indvar.next36, %._crit_edge.i156 ], [ 0, %.lr.ph77.preheader.i149 ] ; 2 uses
  %indvars.iv94.i152 = phi i64 [ %indvars.iv.next95.i157, %._crit_edge.i156 ], [ 1, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06274.i153 = phi ptr [ %.06473.i154, %._crit_edge.i156 ], [ %i.ew, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06473.i154 = phi ptr [ %.06274.i153, %._crit_edge.i156 ], [ %i.ev, %.lr.ph77.preheader.i149 ] ; 9 uses
  %i.ey = add i32 %indvar35, 1
  %smin37 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.ey)
  %i.ez = add i32 %smin37, 1                      ; 2 uses
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
  %xtraiter38 = and i64 %i.fb, 1
  %i.fk = icmp eq i32 %i.ez, 2
  br i1 %i.fk, label %.peel.next.i163.epil.preheader, label %.peel.next.i163.preheader.new

.peel.next.i163.preheader.new:                    ; preds = %.peel.next.i163.preheader
  %unroll_iter41 = and i64 %i.fb, -2
  br label %.peel.next.i163

.peel.next.i163:                                  ; preds = %bb.v, %.peel.next.i163.preheader.new
  %indvars.iv.i164 = phi i64 [ 1, %.peel.next.i163.preheader.new ], [ %indvars.iv.next.i166.1, %bb.v ] ; 6 uses
  %niter42 = phi i64 [ 0, %.peel.next.i163.preheader.new ], [ %niter42.next.1, %bb.v ]
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
  %niter42.next.1 = add i64 %niter42, 2           ; 2 uses
  %niter42.ncmp.1 = icmp eq i64 %niter42.next.1, %unroll_iter41
  br i1 %niter42.ncmp.1, label %._crit_edge.i156.loopexit.unr-lcssa, label %.peel.next.i163, !llvm.loop !12

._crit_edge.i156.loopexit.unr-lcssa:              ; preds = %bb.v
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %._crit_edge.i156, label %.peel.next.i163.epil.preheader

.peel.next.i163.epil.preheader:                   ; preds = %._crit_edge.i156.loopexit.unr-lcssa, %.peel.next.i163.preheader
  %indvars.iv.i164.epil.init = phi i64 [ 1, %.peel.next.i163.preheader ], [ %indvars.iv.next.i166.1, %._crit_edge.i156.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod40 = trunc i64 %i.fb to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
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
  %indvar.next36 = add i32 %indvar35, 1
  br i1 %exitcond98.i158, label %._crit_edge78.i, label %.lr.ph77.i151, !llvm.loop !13

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
  br i1 %i.gq, label %cdce.call, label %calc_distr.exit168, !prof !25

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
  br label %.lr.ph86.preheader.i

.lr.ph86.preheader.i:                             ; preds = %._crit_edge87.i, %.preheader.preheader.i
  %indvars.iv243 = phi i32 [ %indvars.iv.next244, %._crit_edge87.i ], [ %.2135, %.preheader.preheader.i ] ; 5 uses
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge87.i ], [ 0, %.preheader.preheader.i ] ; 7 uses
  %.090.i = phi float [ %i.im, %._crit_edge87.i ], [ %i.gv, %.preheader.preheader.i ] ; 5 uses
  %i.gw = shl nuw nsw i64 %indvars.iv105.i, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gw
  %9 = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gw
  %scevgep13 = getelementptr i8, ptr %9, i64 4
  %10 = zext i32 %indvars.iv243 to i64
  %i.gx = shl nuw nsw i64 %10, 2                  ; 2 uses
  %scevgep14 = getelementptr i8, ptr %scevgep13, i64 %i.gx
  %scevgep16 = getelementptr i8, ptr %scevgep15, i64 %i.gx
  %11 = zext i32 %indvars.iv243 to i64            ; 4 uses
  %12 = add nuw nsw i64 %11, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv243, 11
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.preheader.i
  %i.gy = shl nuw nsw i64 %indvars.iv105.i, 2
  %i.gz = trunc i64 %i.gy to i34                  ; 2 uses
  %13 = zext i32 %indvars.iv243 to i34
  %mul = shl nuw i34 %13, 2
  %i.ha = add i34 %mul, %i.gz
  %i.hb = icmp slt i34 %i.ha, %i.gz
  br i1 %i.hb, label %.lr.ph86.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep16
  %bound1 = icmp ult ptr %.064.lcssa.i159, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %12, 8589934584                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.090.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %index ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load = load <4 x float>, ptr %i.hc, align 4, !alias.scope !26
  %wide.load17.a = load <4 x float>, ptr %i.hd, align 4, !alias.scope !26
  %i.he = add nuw nsw i64 %index, %indvars.iv105.i
  %i.hf = shl i64 %i.he, 32
  %i.hg = ashr exact i64 %i.hf, 30
  %i.hh = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hg ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load18 = load <4 x float>, ptr %i.hh, align 4, !alias.scope !27, !noalias !26
  %wide.load19 = load <4 x float>, ptr %i.hi, align 4, !alias.scope !27, !noalias !26
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load18)
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load17.a, <4 x float> %broadcast.splat, <4 x float> %wide.load19)
  store <4 x float> %i.hj, ptr %i.hh, align 4, !alias.scope !27, !noalias !26
  store <4 x float> %i.hk, ptr %i.hi, align 4, !alias.scope !27, !noalias !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %._crit_edge87.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv102.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %i.hm = and i64 %11, 1
  %lcmp.mod44.not.not = icmp eq i64 %i.hm, 0
  br i1 %lcmp.mod44.not.not, label %.lr.ph86.i.prol, label %.lr.ph86.i.prol.loopexit

.lr.ph86.i.prol:                                  ; preds = %.lr.ph86.i.preheader
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv102.i.ph
  %i.ho = load float, ptr %i.hn, align 4
  %i.hp = add nuw nsw i64 %indvars.iv102.i.ph, %indvars.iv105.i
  %sext.i.prol = shl i64 %i.hp, 32
  %i.hq = ashr exact i64 %sext.i.prol, 30
  %i.hr = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hq ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.ho, float %.090.i, float %i.hs)
  store float %i.ht, ptr %i.hr, align 4
  %indvars.iv.next103.i.prol = or disjoint i64 %indvars.iv102.i.ph, 1
  br label %.lr.ph86.i.prol.loopexit

.lr.ph86.i.prol.loopexit:                         ; preds = %.lr.ph86.i.prol, %.lr.ph86.i.preheader
  %indvars.iv102.i.unr = phi i64 [ %indvars.iv102.i.ph, %.lr.ph86.i.preheader ], [ %indvars.iv.next103.i.prol, %.lr.ph86.i.prol ]
  %i.hu = icmp eq i64 %indvars.iv102.i.ph, %11
  br i1 %i.hu, label %._crit_edge87.i, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i.1, %.lr.ph86.i ], [ %indvars.iv102.i.unr, %.lr.ph86.i.prol.loopexit ] ; 4 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv102.i
  %i.hw = load float, ptr %i.hv, align 4
  %i.hx = add nuw nsw i64 %indvars.iv102.i, %indvars.iv105.i
  %sext.i = shl i64 %i.hx, 32
  %i.hy = ashr exact i64 %sext.i, 30
  %i.hz = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hw, float %.090.i, float %i.ia)
  store float %i.ib, ptr %i.hz, align 4
  %indvars.iv.next103.i.a = add nuw nsw i64 %indvars.iv102.i, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv.next103.i.a
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = add nuw nsw i64 %indvars.iv.next103.i.a, %indvars.iv105.i
  %sext.i.1 = shl i64 %i.ie, 32
  %i.if = ashr exact i64 %sext.i.1, 30
  %i.ig = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.if ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.id, float %.090.i, float %i.ih)
  store float %i.ii, ptr %i.ig, align 4
  %indvars.iv.next103.i.1 = add nuw nsw i64 %indvars.iv102.i, 2
  %exitcond245.not.1 = icmp eq i64 %indvars.iv.next103.i.a, %11
  br i1 %exitcond245.not.1, label %._crit_edge87.i, label %.lr.ph86.i, !llvm.loop !18

._crit_edge87.i:                                  ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i, %middle.block
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 3 uses
  %i.ij = trunc nuw nsw i64 %indvars.iv.next106.i to i32
  %i.ik = sitofp i32 %i.ij to float
  %i.il = fdiv float %.6123.lcssa, %i.ik
  %i.im = fmul float %.090.i, %i.il
  %exitcond110.i = icmp eq i64 %indvars.iv.next106.i, %i.gs
  %indvars.iv.next244 = add i32 %indvars.iv243, -1
  br i1 %exitcond110.i, label %calc_distr.exit168, label %.lr.ph86.preheader.i, !llvm.loop !19

calc_distr.exit168:                               ; preds = %._crit_edge87.i, %cdce.call, %._crit_edge83.thread.i, %._crit_edge78.i
  %.165.i = phi ptr [ %.064.lcssa.i159, %._crit_edge78.i ], [ %.062.lcssa.i160, %cdce.call ], [ %.062.lcssa.i160, %._crit_edge83.thread.i ], [ %.062.lcssa.i160, %._crit_edge87.i ] ; 4 uses
  %.163.i = phi ptr [ %.062.lcssa.i160, %._crit_edge78.i ], [ %.064.lcssa.i159, %cdce.call ], [ %.064.lcssa.i159, %._crit_edge83.thread.i ], [ %.064.lcssa.i159, %._crit_edge87.i ]
  tail call void @pfree(ptr noundef %.163.i) #9
  %i.in = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 5 uses
  %i.io = add nsw i32 %7, -2
  %i.ip = uitofp nneg i32 %i.io to float
  %i.iq = fdiv float 1.000000e+00, %i.ip          ; 2 uses
  %.not54.i = icmp slt i32 %.2135, 0
  br i1 %.not54.i, label %._crit_edge217, label %.preheader.preheader.i169

.preheader.preheader.i169:                        ; preds = %calc_distr.exit168
  %smax.i170 = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1) ; 2 uses
  %wide.trip.count.i171 = zext nneg i32 %smax.i170 to i64 ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %.preheader.preheader.i169
  %indvars.iv64.i = phi i64 [ 0, %.preheader.preheader.i169 ], [ %indvars.iv.next65.i, %bb.ab ] ; 3 uses
  %.04059.i = phi float [ 0.000000e+00, %.preheader.preheader.i169 ], [ %.141.i, %bb.ab ] ; 6 uses
  %.04258.i = phi i32 [ 0, %.preheader.preheader.i169 ], [ %.14348.i, %bb.ab ] ; 4 uses
  %i.ir = icmp slt i32 %.04258.i, %i.l
  br i1 %i.ir, label %.lr.ph.i, label %.critedge.thread.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.is = trunc nuw nsw i64 %indvars.iv64.i to i32
  %i.it = sitofp i32 %i.is to float
  %i.iu = sext i32 %.04258.i to i64
  %i.iv = sub i32 %i.l, %.04258.i                 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i173 = phi i64 [ %i.iu, %.lr.ph.i ], [ %indvars.iv.next.i174, %bb.y ] ; 4 uses
  %.03852.i = phi i32 [ 0, %.lr.ph.i ], [ %i.iz, %bb.y ] ; 3 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv.i173
  %i.ix = load float, ptr %i.iw, align 4          ; 2 uses
  %i.iy = fcmp ugt float %i.ix, %i.it
  br i1 %i.iy, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iz = add nuw i32 %.03852.i, 1                ; 2 uses
  %indvars.iv.next.i174 = add nsw i64 %indvars.iv.i173, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.iz, %i.iv
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.x, !llvm.loop !20

.critedge.i:                                      ; preds = %bb.x
  %i.ja = trunc nsw i64 %indvars.iv.i173 to i32   ; 2 uses
  %i.jb = icmp sgt i32 %.03852.i, 0
  br i1 %i.jb, label %bb.z, label %.critedge.thread.thread.i

.critedge.thread.i:                               ; preds = %bb.y
  %i.jc = trunc nsw i64 %indvars.iv.next.i174 to i32 ; 2 uses
  %i.jd = icmp sgt i32 %i.iv, 0
  br i1 %i.jd, label %.thread.i, label %.critedge.thread.thread.i

bb.z:                                             ; preds = %.critedge.i
  %i.je = shl i64 %indvars.iv.i173, 32
  %sext.i175 = add i64 %i.je, -4294967296
  %i.jf = ashr exact i64 %sext.i175, 30
  %i.jg = getelementptr inbounds i8, ptr %6, i64 %i.jf
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = fsub float %i.ix, %i.jh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.z, %.critedge.thread.i
  %.14350.i = phi i32 [ %i.ja, %bb.z ], [ %i.jc, %.critedge.thread.i ]
  %.03846.i = phi i32 [ %.03852.i, %bb.z ], [ %i.iv, %.critedge.thread.i ]
  %.039.i = phi float [ %i.ji, %bb.z ], [ 0.000000e+00, %.critedge.thread.i ] ; 3 uses
  %i.jj = add nsw i32 %.03846.i, -1
  %i.jk = uitofp nneg i32 %i.jj to float
  %i.jl = fcmp ogt float %.039.i, 0.000000e+00
  %i.jm = insertelement <2 x float> poison, float %.039.i, i64 0
  %i.jn = insertelement <2 x float> %i.jm, float %.04059.i, i64 1
  %i.jo = fdiv <2 x float> splat (float 5.000000e-01), %i.jn ; 2 uses
  %i.jp = extractelement <2 x float> %i.jo, i64 0
  %i.jq = select i1 %i.jl, float %i.jp, float -0.000000e+00
  %.0.i = fadd float %i.jq, %i.jk                 ; 2 uses
  %i.jr = fcmp ogt float %.04059.i, 0.000000e+00
  %i.js = extractelement <2 x float> %i.jo, i64 1
  %i.jt = fadd float %i.js, %.0.i
  %.1.i = select i1 %i.jr, float %i.jt, float %.0.i
  %i.ju = fmul float %i.iq, %.1.i
  br label %bb.ab

.critedge.thread.thread.i:                        ; preds = %.critedge.thread.i, %.critedge.i, %.preheader.i
  %.14349.i = phi i32 [ %i.jc, %.critedge.thread.i ], [ %i.ja, %.critedge.i ], [ %.04258.i, %.preheader.i ] ; 2 uses
  %i.jv = fcmp ogt float %.04059.i, 0.000000e+00
  br i1 %i.jv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread.thread.i
  %i.jw = fdiv float %i.iq, %.04059.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.thread.thread.i, %.thread.i
  %.sink.i = phi float [ %i.jw, %bb.aa ], [ %i.ju, %.thread.i ], [ 0.000000e+00, %.critedge.thread.thread.i ]
  %.14348.i = phi i32 [ %.14349.i, %bb.aa ], [ %.14350.i, %.thread.i ], [ %.14349.i, %.critedge.thread.thread.i ]
  %.141.i = phi float [ %.04059.i, %bb.aa ], [ %.039.i, %.thread.i ], [ %.04059.i, %.critedge.thread.thread.i ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv64.i
  store float %.sink.i, ptr %i.jx, align 4
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count.i171
  br i1 %exitcond67.i, label %.lr.ph216.preheader, label %.preheader.i, !llvm.loop !21

.lr.ph216.preheader:                              ; preds = %bb.ab
  %xtraiter46 = and i64 %wide.trip.count.i171, 1
  %i.jy = icmp slt i32 %i.df, 2
  br i1 %i.jy, label %.lr.ph216.epil.preheader, label %.lr.ph216.preheader.new

.lr.ph216.preheader.new:                          ; preds = %.lr.ph216.preheader
  %unroll_iter50 = and i64 %wide.trip.count.i171, 2147483646
  br label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.ae, %.lr.ph216.preheader.new
  %indvars.iv246 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %indvars.iv.next247.1, %bb.ae ] ; 5 uses
  %.0130215 = phi float [ 0.000000e+00, %.lr.ph216.preheader.new ], [ %.1131.1, %bb.ae ] ; 2 uses
  %niter51 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %niter51.next.1, %bb.ae ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv246
  %i.ka = load float, ptr %i.jz, align 4          ; 2 uses
  %i.kb = fcmp ogt float %i.ka, 0.000000e+00
  br i1 %i.kb, label %bb.ac, label %.lr.ph216.1

bb.ac:                                            ; preds = %.lr.ph216
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv246
  %i.kd = load float, ptr %i.kc, align 4
  %i.ke = fmul float %i.kd, %i.cr
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv246
  %i.kg = load float, ptr %i.kf, align 4
  %i.kh = fmul float %i.ke, %i.kg
  %i.ki = fdiv float %i.kh, %i.ka
  %i.kj = fadd float %.0130215, %i.ki
  br label %.lr.ph216.1

.lr.ph216.1:                                      ; preds = %.lr.ph216, %bb.ac
  %.1131 = phi float [ %i.kj, %bb.ac ], [ %.0130215, %.lr.ph216 ] ; 2 uses
  %indvars.iv.next247 = or disjoint i64 %indvars.iv246, 1 ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv.next247
  %i.kl = load float, ptr %i.kk, align 4          ; 2 uses
  %i.km = fcmp ogt float %i.kl, 0.000000e+00
  br i1 %i.km, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph216.1
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next247
  %i.ko = load float, ptr %i.kn, align 4
  %i.kp = fmul float %i.ko, %i.cr
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv.next247
  %i.kr = load float, ptr %i.kq, align 4
  %i.ks = fmul float %i.kp, %i.kr
  %i.kt = fdiv float %i.ks, %i.kl
  %i.ku = fadd float %.1131, %i.kt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph216.1
  %.1131.1 = phi float [ %i.ku, %bb.ad ], [ %.1131, %.lr.ph216.1 ] ; 3 uses
  %indvars.iv.next247.1 = add nuw nsw i64 %indvars.iv246, 2 ; 2 uses
  %niter51.next.1 = add i64 %niter51, 2           ; 2 uses
  %niter51.ncmp.1 = icmp eq i64 %niter51.next.1, %unroll_iter50
  br i1 %niter51.ncmp.1, label %._crit_edge217.loopexit.unr-lcssa, label %.lr.ph216, !llvm.loop !22

._crit_edge217.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %._crit_edge217, label %.lr.ph216.epil.preheader

.lr.ph216.epil.preheader:                         ; preds = %._crit_edge217.loopexit.unr-lcssa, %.lr.ph216.preheader
  %indvars.iv246.epil.init = phi i64 [ 0, %.lr.ph216.preheader ], [ %indvars.iv.next247.1, %._crit_edge217.loopexit.unr-lcssa ] ; 3 uses
  %.0130215.epil.init = phi float [ 0.000000e+00, %.lr.ph216.preheader ], [ %.1131.1, %._crit_edge217.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i32 %smax.i170 to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv246.epil.init
  %i.kw = load float, ptr %i.kv, align 4          ; 2 uses
  %i.kx = fcmp ogt float %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.af, label %._crit_edge217

bb.af:                                            ; preds = %.lr.ph216.epil.preheader
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv246.epil.init
  %i.kz = load float, ptr %i.ky, align 4
  %i.la = fmul float %i.kz, %i.cr
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv246.epil.init
  %i.lc = load float, ptr %i.lb, align 4
  %i.ld = fmul float %i.la, %i.lc
  %i.le = fdiv float %i.ld, %i.kw
  %i.lf = fadd float %.0130215.epil.init, %i.le
  br label %._crit_edge217

._crit_edge217:                                   ; preds = %._crit_edge217.loopexit.unr-lcssa, %bb.af, %.lr.ph216.epil.preheader, %calc_distr.exit168
  %.0130.lcssa = phi float [ 0.000000e+00, %calc_distr.exit168 ], [ %.1131.1, %._crit_edge217.loopexit.unr-lcssa ], [ %i.lf, %bb.af ], [ %.0130215.epil.init, %.lr.ph216.epil.preheader ]
  tail call void @pfree(ptr noundef nonnull %.064.lcssa.i) #9
  tail call void @pfree(ptr noundef %.165.i) #9
  tail call void @pfree(ptr noundef %i.in) #9
  tail call void @pfree(ptr noundef %i.q) #9
  %i.lg = fsub float 1.000000e+00, %i.k
  %i.lh = fmul float %i.lg, %.0130.lcssa          ; 3 uses
  %i.li = fcmp olt float %i.lh, 0.000000e+00
  br i1 %i.li, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge217
  %i.lj = fcmp ogt float %i.lh, 1.000000e+00
  %spec.store.select = select i1 %i.lj, float 1.000000e+00, float %i.lh
  %i.lk = fpext float %spec.store.select to double
  br label %bb.ah
end_hunk_0
