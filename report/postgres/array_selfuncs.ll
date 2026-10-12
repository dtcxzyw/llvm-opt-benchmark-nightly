Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/array_selfuncs?download=true
inline.NumInlined: 29
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
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
  %.lcssa22.unr = phi float [ poison, %.lr.ph210.preheader ], [ %i.ad, %.lr.ph210.prol ]
  %.lcssa21.unr = phi float [ poison, %.lr.ph210.preheader ], [ %i.ae, %.lr.ph210.prol ]
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
  %.1125190 = phi float [ %.1125192, %.thread ], [ %.0124199, %bb.f ], [ %i.be, %bb.h ]
  %.1118187 = phi float [ %.1118193, %.thread ], [ %.0117200, %bb.f ], [ %i.bf, %bb.h ]
  %.1185 = phi i32 [ %i.az, %.thread ], [ %.0111201, %bb.f ], [ %1, %bb.h ]
  %i.bm = sext i32 %.0133198 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bm
  store float %narrow.sel, ptr %i.bn, align 4
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.1125189 = phi float [ %.1125192, %bb.i ], [ %.1125190, %.critedge ]
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
  %.5129.lcssa = phi float [ %.0124.lcssa, %.preheader ], [ %.lcssa22.unr, %.lr.ph210.prol.loopexit ], [ %i.ck, %.lr.ph210 ]
  %.6123.lcssa = phi float [ %.0117.lcssa, %.preheader ], [ %.lcssa21.unr, %.lr.ph210.prol.loopexit ], [ %i.cl, %.lr.ph210 ] ; 5 uses
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
  %.2135 = phi i32 [ %i.dd, %bb.m ], [ %.0133.lcssa, %bb.l ], [ %.0133.lcssa, %._crit_edge ] ; 11 uses
  %i.df = add i32 %.2135, 1                       ; 5 uses
  %i.dg = sext i32 %i.df to i64                   ; 5 uses
  %i.dh = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 3 uses
  %i.di = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 2 uses
  store float 1.000000e+00, ptr %i.dh, align 4
  %.not72.i = icmp slt i32 %.2135, 1
  br i1 %.not72.i, label %calc_distr.exit, label %.lr.ph77.preheader.i

.lr.ph77.preheader.i:                             ; preds = %bb.n
  %wide.trip.count94.i = zext i32 %i.df to i64
  br label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %._crit_edge.i, %.lr.ph77.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i ], [ 0, %.lr.ph77.preheader.i ] ; 2 uses
  %i.dj = phi float [ %i.ds, %._crit_edge.i ], [ 1.000000e+00, %.lr.ph77.preheader.i ]
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %._crit_edge.i ], [ 1, %.lr.ph77.preheader.i ] ; 5 uses
  %.06274.i = phi ptr [ %.06473.i, %._crit_edge.i ], [ %i.di, %.lr.ph77.preheader.i ] ; 6 uses
  %.06473.i = phi ptr [ %.06274.i, %._crit_edge.i ], [ %i.dh, %.lr.ph77.preheader.i ] ; 8 uses
  %i.dk = add i32 %indvar, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.dk)
  %i.dl = add i32 %smin, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nsw i64 %i.dm, -1                   ; 3 uses
  %i.do = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv91.i
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  %i.dq = load float, ptr %i.dp, align 4          ; 4 uses
  %i.dr = fsub float 1.000000e+00, %i.dq          ; 4 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dr, float 0.000000e+00) ; 2 uses
  store float %i.ds, ptr %.06274.i, align 4
  %xtraiter30 = and i64 %i.dn, 1
  %i.dt = icmp eq i32 %i.dl, 2
  br i1 %i.dt, label %.peel.next.i.epil.preheader, label %.lr.ph77.i.new

.lr.ph77.i.new:                                   ; preds = %.lr.ph77.i
  %unroll_iter = and i64 %i.dn, -2
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.q, %.lr.ph77.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph77.i.new ], [ %indvars.iv.next.i.1, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph77.i.new ], [ %niter.next.1, %bb.q ]
  %i.du = icmp samesign ult i64 %indvars.iv.i, %indvars.iv91.i
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
  %i.ed = icmp samesign ult i64 %indvars.iv.next.i, %indvars.iv91.i
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
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph77.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph77.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 4 uses
  %lcmp.mod32 = trunc i64 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.em = icmp samesign ult i64 %indvars.iv.i.epil.init, %indvars.iv91.i
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
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %exitcond95.i = icmp eq i64 %indvars.iv.next92.i, %wide.trip.count94.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond95.i, label %calc_distr.exit, label %.lr.ph77.i, !llvm.loop !13

calc_distr.exit:                                  ; preds = %._crit_edge.i, %bb.n
  %.064.lcssa.i = phi ptr [ %i.dh, %bb.n ], [ %.06274.i, %._crit_edge.i ] ; 4 uses
  %.062.lcssa.i = phi ptr [ %i.di, %bb.n ], [ %.06473.i, %._crit_edge.i ]
  tail call void @pfree(ptr noundef %.062.lcssa.i) #9
  %i.ev = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 5 uses
  %i.ew = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 4 uses
  store float 1.000000e+00, ptr %i.ev, align 4
  %.not72.i148 = icmp slt i32 %1, 1
  br i1 %.not72.i148, label %._crit_edge78.i, label %.lr.ph77.preheader.i149

.lr.ph77.preheader.i149:                          ; preds = %calc_distr.exit
  %i.ex = add nuw i32 %1, 1
  %wide.trip.count94.i150 = zext i32 %i.ex to i64
  %9 = icmp sgt i32 %.2135, -1
  %exitcond.peel.i = icmp eq i32 %.2135, 0
  br i1 %9, label %.lr.ph77.i151.a, label %.lr.ph77.i151.preheader

.lr.ph77.i151.preheader:                          ; preds = %.lr.ph77.preheader.i149
  %10 = zext nneg i32 %1 to i64                   ; 2 uses
  %xtraiter35 = and i64 %10, 7                    ; 3 uses
  %11 = icmp ult i32 %1, 8
  br i1 %11, label %.lr.ph77.i151.epil.preheader, label %.lr.ph77.i151.preheader.new

.lr.ph77.i151.preheader.new:                      ; preds = %.lr.ph77.i151.preheader
  %unroll_iter40 = and i64 %10, 2147483640
  br label %.lr.ph77.i151

.lr.ph77.i151.a:                                  ; preds = %.lr.ph77.preheader.i149, %._crit_edge.i156
  %indvar33 = phi i32 [ %indvar.next34, %._crit_edge.i156 ], [ 0, %.lr.ph77.preheader.i149 ] ; 2 uses
  %12 = phi float [ %17, %._crit_edge.i156 ], [ 1.000000e+00, %.lr.ph77.preheader.i149 ]
  %indvars.iv91.i152 = phi i64 [ %indvars.iv.next92.i157, %._crit_edge.i156 ], [ 1, %.lr.ph77.preheader.i149 ] ; 5 uses
  %.06274.i153 = phi ptr [ %.06473.i154, %._crit_edge.i156 ], [ %i.ew, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06473.i154 = phi ptr [ %.06274.i153, %._crit_edge.i156 ], [ %i.ev, %.lr.ph77.preheader.i149 ] ; 8 uses
  %i.ey = add i32 %indvar33, 1
  %smin35 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.ey)
  %i.ez = add i32 %smin35, 1                      ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add nsw i64 %i.fa, -1                   ; 3 uses
  %13 = getelementptr [4 x i8], ptr %2, i64 %indvars.iv91.i152
  %14 = getelementptr i8, ptr %13, i64 -4
  %15 = load float, ptr %14, align 4              ; 4 uses
  %16 = fsub float 1.000000e+00, %15              ; 4 uses
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %16, float 0.000000e+00) ; 2 uses
  store float %17, ptr %.06274.i153, align 4
  br i1 %exitcond.peel.i, label %._crit_edge.i156, label %.peel.next.i163.preheader

.peel.next.i163.preheader:                        ; preds = %.lr.ph77.i151.a
  %xtraiter36 = and i64 %i.fb, 1
  %i.fc = icmp eq i32 %i.ez, 2
  br i1 %i.fc, label %.peel.next.i163.epil.preheader, label %.peel.next.i163.preheader.new

.peel.next.i163.preheader.new:                    ; preds = %.peel.next.i163.preheader
  %unroll_iter39 = and i64 %i.fb, -2
  br label %.peel.next.i163

.peel.next.i163:                                  ; preds = %bb.u, %.peel.next.i163.preheader.new
  %indvars.iv.i164 = phi i64 [ 1, %.peel.next.i163.preheader.new ], [ %indvars.iv.next.i166.1, %bb.u ] ; 6 uses
  %niter40 = phi i64 [ 0, %.peel.next.i163.preheader.new ], [ %niter40.next.1, %bb.u ]
  %i.fd = icmp samesign ult i64 %indvars.iv.i164, %indvars.iv91.i152
  br i1 %i.fd, label %bb.s, label %.peel.next.i163.1

bb.s:                                             ; preds = %.peel.next.i163
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164
  %i.ff = load float, ptr %i.fe, align 4
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float %16, float 0.000000e+00)
  br label %.peel.next.i163.1

.peel.next.i163.1:                                ; preds = %bb.s, %.peel.next.i163
  %.057.i165 = phi float [ %i.fg, %bb.s ], [ 0.000000e+00, %.peel.next.i163 ]
  %i.fh = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4
  %i.fj = load float, ptr %i.fi, align 4
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fj, float %15, float %.057.i165)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.i164
  store float %i.fk, ptr %i.fl, align 4
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i164, 1 ; 4 uses
  %i.fm = icmp samesign ult i64 %indvars.iv.next.i166, %indvars.iv91.i152
  br i1 %i.fm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.peel.next.i163.1
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.next.i166
  %i.fo = load float, ptr %i.fn, align 4
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float %16, float 0.000000e+00)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.peel.next.i163.1
  %.057.i165.1 = phi float [ %i.fp, %bb.t ], [ 0.000000e+00, %.peel.next.i163.1 ]
  %i.fq = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.next.i166
  %i.fr = getelementptr i8, ptr %i.fq, i64 -4
  %i.fs = load float, ptr %i.fr, align 4
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %15, float %.057.i165.1)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.next.i166
  store float %i.ft, ptr %i.fu, align 4
  %indvars.iv.next.i166.1 = add nuw nsw i64 %indvars.iv.i164, 2 ; 2 uses
  %niter40.next.1 = add i64 %niter40, 2           ; 2 uses
  %niter40.ncmp.1 = icmp eq i64 %niter40.next.1, %unroll_iter39
  br i1 %niter40.ncmp.1, label %._crit_edge.i156.loopexit.unr-lcssa, label %.peel.next.i163, !llvm.loop !12

._crit_edge.i156.loopexit.unr-lcssa:              ; preds = %bb.u
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %._crit_edge.i156, label %.peel.next.i163.epil.preheader

.peel.next.i163.epil.preheader:                   ; preds = %._crit_edge.i156.loopexit.unr-lcssa, %.peel.next.i163.preheader
  %indvars.iv.i164.epil.init = phi i64 [ 1, %.peel.next.i163.preheader ], [ %indvars.iv.next.i166.1, %._crit_edge.i156.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod38 = trunc i64 %i.fb to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.fv = icmp samesign ult i64 %indvars.iv.i164.epil.init, %indvars.iv91.i152
  br i1 %i.fv, label %bb.v, label %._crit_edge.i156.loopexit.epilog-lcssa

bb.v:                                             ; preds = %.peel.next.i163.epil.preheader
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164.epil.init
  %i.fx = load float, ptr %i.fw, align 4
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float %16, float 0.000000e+00)
  br label %._crit_edge.i156.loopexit.epilog-lcssa

._crit_edge.i156.loopexit.epilog-lcssa:           ; preds = %bb.v, %.peel.next.i163.epil.preheader
  %.057.i165.epil = phi float [ %i.fy, %bb.v ], [ 0.000000e+00, %.peel.next.i163.epil.preheader ]
  %i.fz = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164.epil.init
  %i.ga = getelementptr i8, ptr %i.fz, i64 -4
  %i.gb = load float, ptr %i.ga, align 4
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %15, float %.057.i165.epil)
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.i164.epil.init
  store float %i.gc, ptr %i.gd, align 4
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %._crit_edge.i156.loopexit.epilog-lcssa, %._crit_edge.i156.loopexit.unr-lcssa, %.lr.ph77.i151.a
  %indvars.iv.next92.i157 = add nuw nsw i64 %indvars.iv91.i152, 1 ; 2 uses
  %exitcond95.i158 = icmp eq i64 %indvars.iv.next92.i157, %wide.trip.count94.i150
  %indvar.next34 = add i32 %indvar33, 1
  br i1 %exitcond95.i158, label %._crit_edge78.i, label %.lr.ph77.i151.a, !llvm.loop !13

.lr.ph77.i151:                                    ; preds = %.lr.ph77.i151, %.lr.ph77.i151.preheader.new
  %niter41 = phi i64 [ 0, %.lr.ph77.i151.preheader.new ], [ %niter41.next.7, %.lr.ph77.i151 ]
  %niter41.next.7 = add i64 %niter41, 8           ; 2 uses
  %niter41.ncmp.7 = icmp eq i64 %niter41.next.7, %unroll_iter40
  br i1 %niter41.ncmp.7, label %._crit_edge78.i.loopexit22.unr-lcssa, label %.lr.ph77.i151, !llvm.loop !13

._crit_edge78.i.loopexit22.unr-lcssa:             ; preds = %.lr.ph77.i151
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %._crit_edge78.i, label %.lr.ph77.i151.epil.preheader

.lr.ph77.i151.epil.preheader:                     ; preds = %._crit_edge78.i.loopexit22.unr-lcssa, %.lr.ph77.i151.preheader
  %lcmp.mod39 = icmp ne i64 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph77.i151.epil

.lr.ph77.i151.epil:                               ; preds = %.lr.ph77.i151.epil, %.lr.ph77.i151.epil.preheader
  %.06274.i153.epil = phi ptr [ %.06473.i154.epil, %.lr.ph77.i151.epil ], [ %i.ew, %.lr.ph77.i151.epil.preheader ] ; 2 uses
  %.06473.i154.epil = phi ptr [ %.06274.i153.epil, %.lr.ph77.i151.epil ], [ %i.ev, %.lr.ph77.i151.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph77.i151.epil ], [ 0, %.lr.ph77.i151.epil.preheader ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter35
  br i1 %epil.iter.cmp.not, label %._crit_edge78.i, label %.lr.ph77.i151.epil, !llvm.loop !14

._crit_edge78.i:                                  ; preds = %._crit_edge78.i.loopexit22.unr-lcssa, %.lr.ph77.i151.epil, %._crit_edge.i156, %calc_distr.exit
  %.064.lcssa.i158 = phi ptr [ %i.ev, %calc_distr.exit ], [ %.06274.i153, %._crit_edge.i156 ], [ %i.ev, %._crit_edge78.i.loopexit22.unr-lcssa ], [ %.06274.i153.epil, %.lr.ph77.i151.epil ] ; 10 uses
  %.062.lcssa.i159 = phi ptr [ %i.ew, %calc_distr.exit ], [ %.06473.i154, %._crit_edge.i156 ], [ %i.ew, %._crit_edge78.i.loopexit22.unr-lcssa ], [ %.06473.i154.epil, %.lr.ph77.i151.epil ] ; 11 uses
  %i.ge = fpext float %.6123.lcssa to double
  %i.gf = fcmp ogt double %i.ge, 5.000000e-03
  br i1 %i.gf, label %.preheader70.i, label %calc_distr.exit168

.preheader70.i:                                   ; preds = %._crit_edge78.i
  %.not6780.i = icmp slt i32 %.2135, 0
  br i1 %.not6780.i, label %._crit_edge83.thread.i, label %.preheader.preheader.i

._crit_edge83.thread.i:                           ; preds = %.preheader70.i
  %i.gg = fcmp ogt float %.6123.lcssa, 7.450000e+02
  %i.gh = fcmp olt float %.6123.lcssa, -7.090000e+02
  %i.gi = or i1 %i.gh, %i.gg
  br i1 %i.gi, label %cdce.call, label %calc_distr.exit168, !prof !26

cdce.call:                                        ; preds = %._crit_edge83.thread.i
  %i.gj = tail call double @exp(double noundef %i.cn) #9 ; 0 uses
  br label %calc_distr.exit168

.preheader.preheader.i:                           ; preds = %.preheader70.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1)
  %i.gk = zext nneg i32 %smax.i to i64            ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gk, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.062.lcssa.i159, i8 0, i64 %i.gl, i1 false)
  %i.gm = tail call double @exp(double noundef %i.cn) #9
  %i.gn = fptrunc double %i.gm to float
  %narrow = add nuw i32 %.2135, 1
  %i.go = zext i32 %narrow to i64                 ; 3 uses
  %i.gp = zext nneg i32 %.2135 to i64
  %i.gq = shl nuw nsw i64 %i.go, 2
  %scevgep13 = getelementptr i8, ptr %.062.lcssa.i159, i64 %i.gq
  %i.gr = zext nneg i32 %.2135 to i64
  %bound1 = icmp ult ptr %.064.lcssa.i158, %scevgep13
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit, %.preheader.preheader.i
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %.loopexit ], [ %i.go, %.preheader.preheader.i ] ; 6 uses
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %.loopexit ], [ 0, %.preheader.preheader.i ] ; 10 uses
  %.087.i = phi float [ %i.ip, %.loopexit ], [ %i.gn, %.preheader.preheader.i ] ; 5 uses
  %i.gs = shl nuw nsw i64 %indvars.iv102.i, 2
  %scevgep = getelementptr i8, ptr %.062.lcssa.i159, i64 %i.gs
  %i.gt = sub nsw i64 %i.go, %indvars.iv102.i
  %i.gu = shl i64 %i.gt, 2
  %scevgep14 = getelementptr i8, ptr %.064.lcssa.i158, i64 %i.gu
  %min.iters.check = icmp ult i64 %indvars.iv243, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.gv = shl nuw nsw i64 %indvars.iv102.i, 2
  %i.gw = trunc i64 %i.gv to i34                  ; 2 uses
  %i.gx = sub nsw i64 %i.gp, %indvars.iv102.i     ; 2 uses
  %i.gy = trunc i64 %i.gx to i34
  %mul.result = shl i34 %i.gy, 2
  %i.gz = add i34 %mul.result, %i.gw
  %i.ha = icmp slt i34 %i.gz, %i.gw
  %i.hb = icmp ugt i64 %i.gx, 4294967295
  %i.hc = or i1 %i.ha, %i.hb
  %bound0 = icmp ult ptr %scevgep, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  %or.cond64 = select i1 %i.hc, i1 true, i1 %found.conflict
  br i1 %or.cond64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %indvars.iv243, -8             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.087.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i158, i64 %index ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load = load <4 x float>, ptr %i.hd, align 4, !alias.scope !27
  %wide.load15 = load <4 x float>, ptr %i.he, align 4, !alias.scope !27
  %i.hf = add nuw nsw i64 %index, %indvars.iv102.i
  %i.hg = shl i64 %i.hf, 32
  %i.hh = ashr exact i64 %i.hg, 30
  %i.hi = getelementptr inbounds i8, ptr %.062.lcssa.i159, i64 %i.hh ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.hi, align 4, !alias.scope !28, !noalias !27
  %wide.load17 = load <4 x float>, ptr %i.hj, align 4, !alias.scope !28, !noalias !27
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load16)
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load15, <4 x float> %broadcast.splat, <4 x float> %wide.load17)
  store <4 x float> %i.hk, ptr %i.hi, align 4, !alias.scope !28, !noalias !27
  store <4 x float> %i.hl, ptr %i.hj, align 4, !alias.scope !28, !noalias !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv243, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i, %middle.block
  %indvars.iv99.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i ] ; 5 uses
  %i.hn = add i64 %indvars.iv102.i, %indvars.iv99.i.ph
  %xtraiter41 = and i64 %indvars.iv243, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i158, i64 %indvars.iv99.i.ph
  %i.hp = load float, ptr %i.ho, align 4
  %i.hq = add nuw nsw i64 %indvars.iv99.i.ph, %indvars.iv102.i
  %i.hr = shl i64 %i.hq, 32
  %i.hs = ashr exact i64 %i.hr, 30
  %i.ht = getelementptr inbounds i8, ptr %.062.lcssa.i159, i64 %i.hs ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hp, float %.087.i, float %i.hu)
  store float %i.hv, ptr %i.ht, align 4
  %indvars.iv.next100.i.prol = or disjoint i64 %indvars.iv99.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv99.i.unr = phi i64 [ %indvars.iv99.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next100.i.prol, %scalar.ph.prol ]
  %i.hw = icmp eq i64 %i.hn, %i.gr
  br i1 %i.hw, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i.1, %scalar.ph ], [ %indvars.iv99.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i158, i64 %indvars.iv99.i
  %i.hy = load float, ptr %i.hx, align 4
  %i.hz = add nuw nsw i64 %indvars.iv99.i, %indvars.iv102.i
  %i.ia = shl i64 %i.hz, 32
  %i.ib = ashr exact i64 %i.ia, 30
  %i.ic = getelementptr inbounds i8, ptr %.062.lcssa.i159, i64 %i.ib ; 2 uses
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.hy, float %.087.i, float %i.id)
  store float %i.ie, ptr %i.ic, align 4
  %indvars.iv.next100.i = add nuw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i158, i64 %indvars.iv.next100.i
  %i.ig = load float, ptr %i.if, align 4
  %i.ih = add nuw nsw i64 %indvars.iv.next100.i, %indvars.iv102.i
  %i.ii = shl i64 %i.ih, 32
  %i.ij = ashr exact i64 %i.ii, 30
  %i.ik = getelementptr inbounds i8, ptr %.062.lcssa.i159, i64 %i.ij ; 2 uses
  %i.il = load float, ptr %i.ik, align 4
  %i.im = tail call float @llvm.fmuladd.f32(float %i.ig, float %.087.i, float %i.il)
  store float %i.im, ptr %i.ik, align 4
  %indvars.iv.next100.i.1 = add nuw i64 %indvars.iv99.i, 2 ; 2 uses
  %exitcond245.not.1 = icmp eq i64 %indvars.iv.next100.i.1, %indvars.iv243
  br i1 %exitcond245.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !19

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 3 uses
  %i.in = trunc nuw nsw i64 %indvars.iv.next103.i to i32
  %18 = uitofp nneg i32 %i.in to float
  %i.io = fdiv float %.6123.lcssa, %18
  %i.ip = fmul float %.087.i, %i.io
  %exitcond107.i = icmp eq i64 %indvars.iv.next103.i, %i.gk
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, -1
  br i1 %exitcond107.i, label %calc_distr.exit168, label %.preheader.i, !llvm.loop !20

calc_distr.exit168:                               ; preds = %.loopexit, %cdce.call, %._crit_edge83.thread.i, %._crit_edge78.i
  %.165.i = phi ptr [ %.064.lcssa.i158, %._crit_edge78.i ], [ %.062.lcssa.i159, %cdce.call ], [ %.062.lcssa.i159, %._crit_edge83.thread.i ], [ %.062.lcssa.i159, %.loopexit ] ; 4 uses
  %.163.i = phi ptr [ %.062.lcssa.i159, %._crit_edge78.i ], [ %.064.lcssa.i158, %cdce.call ], [ %.064.lcssa.i158, %._crit_edge83.thread.i ], [ %.064.lcssa.i158, %.loopexit ]
  tail call void @pfree(ptr noundef %.163.i) #9
  %i.iq = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 5 uses
  %i.ir = add nsw i32 %7, -2
  %i.is = uitofp nneg i32 %i.ir to float
  %i.it = fdiv float 1.000000e+00, %i.is          ; 2 uses
  %.not54.i = icmp slt i32 %.2135, 0
  br i1 %.not54.i, label %._crit_edge217, label %.preheader.preheader.i169

.preheader.preheader.i169:                        ; preds = %calc_distr.exit168
  %smax.i170 = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1) ; 2 uses
  %wide.trip.count.i171 = zext nneg i32 %smax.i170 to i64 ; 3 uses
  br label %.preheader.i172

.preheader.i172:                                  ; preds = %bb.aa, %.preheader.preheader.i169
  %indvars.iv64.i = phi i64 [ 0, %.preheader.preheader.i169 ], [ %indvars.iv.next65.i, %bb.aa ] ; 3 uses
  %.04059.i = phi float [ 0.000000e+00, %.preheader.preheader.i169 ], [ %.141.i, %bb.aa ] ; 6 uses
  %.04258.i = phi i32 [ 0, %.preheader.preheader.i169 ], [ %.14348.i, %bb.aa ] ; 4 uses
  %i.iu = icmp slt i32 %.04258.i, %i.l
  br i1 %i.iu, label %.lr.ph.i, label %.critedge.thread.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i172
  %i.iv = trunc nuw nsw i64 %indvars.iv64.i to i32
  %19 = uitofp nneg i32 %i.iv to float
  %i.iw = sext i32 %.04258.i to i64
  %i.ix = sub i32 %i.l, %.04258.i                 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i
  %indvars.iv.i174 = phi i64 [ %i.iw, %.lr.ph.i ], [ %indvars.iv.next.i175, %bb.x ] ; 4 uses
  %.03852.i = phi i32 [ 0, %.lr.ph.i ], [ %i.jb, %bb.x ] ; 3 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv.i174
  %i.iz = load float, ptr %i.iy, align 4          ; 2 uses
  %i.ja = fcmp ugt float %i.iz, %19
  br i1 %i.ja, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jb = add nuw i32 %.03852.i, 1                ; 2 uses
  %indvars.iv.next.i175 = add nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jb, %i.ix
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.w, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.w
  %i.jc = trunc nsw i64 %indvars.iv.i174 to i32   ; 2 uses
  %i.jd = icmp sgt i32 %.03852.i, 0
  br i1 %i.jd, label %bb.y, label %.critedge.thread.thread.i

.critedge.thread.i:                               ; preds = %bb.x
  %i.je = trunc nsw i64 %indvars.iv.next.i175 to i32 ; 2 uses
  %i.jf = icmp sgt i32 %i.ix, 0
  br i1 %i.jf, label %.thread.i, label %.critedge.thread.thread.i

bb.y:                                             ; preds = %.critedge.i
  %i.jg = shl i64 %indvars.iv.i174, 32
  %sext.i = add i64 %i.jg, -4294967296
  %i.jh = ashr exact i64 %sext.i, 30
  %i.ji = getelementptr inbounds i8, ptr %6, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4
  %i.jk = fsub float %i.iz, %i.jj
  br label %.thread.i

.thread.i:                                        ; preds = %bb.y, %.critedge.thread.i
  %.14350.i = phi i32 [ %i.jc, %bb.y ], [ %i.je, %.critedge.thread.i ]
  %.03846.i = phi i32 [ %.03852.i, %bb.y ], [ %i.ix, %.critedge.thread.i ]
  %.039.i = phi float [ %i.jk, %bb.y ], [ 0.000000e+00, %.critedge.thread.i ] ; 3 uses
  %i.jl = add nsw i32 %.03846.i, -1
  %i.jm = uitofp nneg i32 %i.jl to float
  %i.jn = fcmp ogt float %.039.i, 0.000000e+00
  %i.jo = insertelement <2 x float> poison, float %.039.i, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %.04059.i, i64 1
  %i.jq = fdiv <2 x float> splat (float 5.000000e-01), %i.jp ; 2 uses
  %i.jr = extractelement <2 x float> %i.jq, i64 0
  %i.js = select i1 %i.jn, float %i.jr, float -0.000000e+00
  %.0.i = fadd float %i.js, %i.jm                 ; 2 uses
  %i.jt = fcmp ogt float %.04059.i, 0.000000e+00
  %i.ju = extractelement <2 x float> %i.jq, i64 1
  %i.jv = fadd float %i.ju, %.0.i
  %.1.i = select i1 %i.jt, float %i.jv, float %.0.i
  %i.jw = fmul float %i.it, %.1.i
  br label %bb.aa

.critedge.thread.thread.i:                        ; preds = %.critedge.thread.i, %.critedge.i, %.preheader.i172
  %.14349.i = phi i32 [ %i.je, %.critedge.thread.i ], [ %i.jc, %.critedge.i ], [ %.04258.i, %.preheader.i172 ] ; 2 uses
  %i.jx = fcmp ogt float %.04059.i, 0.000000e+00
  br i1 %i.jx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.thread.thread.i
  %i.jy = fdiv float %i.it, %.04059.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge.thread.thread.i, %.thread.i
  %.sink.i = phi float [ %i.jy, %bb.z ], [ %i.jw, %.thread.i ], [ 0.000000e+00, %.critedge.thread.thread.i ]
  %.14348.i = phi i32 [ %.14349.i, %bb.z ], [ %.14350.i, %.thread.i ], [ %.14349.i, %.critedge.thread.thread.i ]
  %.141.i = phi float [ %.04059.i, %bb.z ], [ %.039.i, %.thread.i ], [ %.04059.i, %.critedge.thread.thread.i ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv64.i
  store float %.sink.i, ptr %i.jz, align 4
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count.i171
  br i1 %exitcond67.i, label %.lr.ph216.preheader, label %.preheader.i172, !llvm.loop !22

.lr.ph216.preheader:                              ; preds = %bb.aa
  %xtraiter44 = and i64 %wide.trip.count.i171, 1
  %i.ka = icmp slt i32 %i.df, 2
  br i1 %i.ka, label %.lr.ph216.epil.preheader, label %.lr.ph216.preheader.new

.lr.ph216.preheader.new:                          ; preds = %.lr.ph216.preheader
  %unroll_iter48 = and i64 %wide.trip.count.i171, 2147483646
  br label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.ad, %.lr.ph216.preheader.new
  %indvars.iv246 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %indvars.iv.next247.1, %bb.ad ] ; 5 uses
  %.0130215 = phi float [ 0.000000e+00, %.lr.ph216.preheader.new ], [ %.1131.1, %bb.ad ] ; 2 uses
  %niter49 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %niter49.next.1, %bb.ad ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv246
  %i.kc = load float, ptr %i.kb, align 4          ; 2 uses
  %i.kd = fcmp ogt float %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.ab, label %.lr.ph216.1

bb.ab:                                            ; preds = %.lr.ph216
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv246
  %i.kf = load float, ptr %i.ke, align 4
  %i.kg = fmul float %i.kf, %i.cr
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv246
  %i.ki = load float, ptr %i.kh, align 4
  %i.kj = fmul float %i.kg, %i.ki
  %i.kk = fdiv float %i.kj, %i.kc
  %i.kl = fadd float %.0130215, %i.kk
  br label %.lr.ph216.1

.lr.ph216.1:                                      ; preds = %.lr.ph216, %bb.ab
  %.1131 = phi float [ %i.kl, %bb.ab ], [ %.0130215, %.lr.ph216 ] ; 2 uses
  %indvars.iv.next247 = or disjoint i64 %indvars.iv246, 1 ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv.next247
  %i.kn = load float, ptr %i.km, align 4          ; 2 uses
  %i.ko = fcmp ogt float %i.kn, 0.000000e+00
  br i1 %i.ko, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph216.1
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next247
  %i.kq = load float, ptr %i.kp, align 4
  %i.kr = fmul float %i.kq, %i.cr
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv.next247
  %i.kt = load float, ptr %i.ks, align 4
  %i.ku = fmul float %i.kr, %i.kt
  %i.kv = fdiv float %i.ku, %i.kn
  %i.kw = fadd float %.1131, %i.kv
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph216.1
  %.1131.1 = phi float [ %i.kw, %bb.ac ], [ %.1131, %.lr.ph216.1 ] ; 3 uses
  %indvars.iv.next247.1 = add nuw nsw i64 %indvars.iv246, 2 ; 2 uses
  %niter49.next.1 = add i64 %niter49, 2           ; 2 uses
  %niter49.ncmp.1 = icmp eq i64 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1, label %._crit_edge217.loopexit.unr-lcssa, label %.lr.ph216, !llvm.loop !23

._crit_edge217.loopexit.unr-lcssa:                ; preds = %bb.ad
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %._crit_edge217, label %.lr.ph216.epil.preheader

.lr.ph216.epil.preheader:                         ; preds = %._crit_edge217.loopexit.unr-lcssa, %.lr.ph216.preheader
  %indvars.iv246.epil.init = phi i64 [ 0, %.lr.ph216.preheader ], [ %indvars.iv.next247.1, %._crit_edge217.loopexit.unr-lcssa ] ; 3 uses
  %.0130215.epil.init = phi float [ 0.000000e+00, %.lr.ph216.preheader ], [ %.1131.1, %._crit_edge217.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod47 = trunc i32 %smax.i170 to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv246.epil.init
  %i.ky = load float, ptr %i.kx, align 4          ; 2 uses
  %i.kz = fcmp ogt float %i.ky, 0.000000e+00
  br i1 %i.kz, label %bb.ae, label %._crit_edge217

bb.ae:                                            ; preds = %.lr.ph216.epil.preheader
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv246.epil.init
  %i.lb = load float, ptr %i.la, align 4
  %i.lc = fmul float %i.lb, %i.cr
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv246.epil.init
  %i.le = load float, ptr %i.ld, align 4
  %i.lf = fmul float %i.lc, %i.le
  %i.lg = fdiv float %i.lf, %i.ky
  %i.lh = fadd float %.0130215.epil.init, %i.lg
  br label %._crit_edge217

._crit_edge217:                                   ; preds = %._crit_edge217.loopexit.unr-lcssa, %bb.ae, %.lr.ph216.epil.preheader, %calc_distr.exit168
  %.0130.lcssa = phi float [ 0.000000e+00, %calc_distr.exit168 ], [ %.1131.1, %._crit_edge217.loopexit.unr-lcssa ], [ %i.lh, %bb.ae ], [ %.0130215.epil.init, %.lr.ph216.epil.preheader ]
  tail call void @pfree(ptr noundef nonnull %.064.lcssa.i) #9
  tail call void @pfree(ptr noundef %.165.i) #9
  tail call void @pfree(ptr noundef %i.iq) #9
  tail call void @pfree(ptr noundef %i.q) #9
  %i.li = fsub float 1.000000e+00, %i.k
  %i.lj = fmul float %i.li, %.0130.lcssa          ; 3 uses
  %i.lk = fcmp olt float %i.lj, 0.000000e+00
  br i1 %i.lk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge217
  %i.ll = fcmp ogt float %i.lj, 1.000000e+00
  %spec.store.select = select i1 %i.ll, float 1.000000e+00, float %i.lj
  %i.lm = fpext float %spec.store.select to double
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge217, %bb.b, %bb.a
  %.0 = phi double [ 5.000000e-03, %bb.b ], [ 5.000000e-03, %bb.a ], [ %i.lm, %bb.af ], [ 0.000000e+00, %._crit_edge217 ]
  ret double %.0
}

declare void @free_attstatsslot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @arraycontsel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.AttStatsSlot, align 8       ; 8 uses
  %2 = alloca %struct.AttStatsSlot, align 8       ; 7 uses
  %3 = alloca %struct.VariableStatData, align 8   ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32                    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc i64 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.o = call zeroext i1 @get_restriction_variable(ptr noundef %i.e, ptr noundef %i.k, i32 noundef %i.n, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.h, 2750
  %i.q = select i1 %i.p, i64 4576918229304087675, i64 4572414629676717179
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 7
  br i1 %i.t, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull %i.v) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = icmp eq i32 %i.h, 2750
  %i.z = select i1 %i.y, i64 4576918229304087675, i64 4572414629676717179
  br label %bb.af

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !4, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not29 = icmp eq ptr %i.ae, null
  br i1 %.not29, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull %i.ae) #9
  br label %bb.af

bb.j:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp eq i32 %i.h, 2751
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp eq i32 %i.h, 2752
  %spec.store.select = select i1 %i.ak, i32 2751, i32 %i.h
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.020 = phi i32 [ %i.h, %bb.j ], [ %spec.store.select, %bb.l ], [ 2752, %bb.k ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = call i32 @get_base_element_type(i32 noundef %i.am) #9 ; 3 uses
  %.not27 = icmp eq i32 %i.an, 0
  br i1 %.not27, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = call i32 @get_base_element_type(i32 noundef %i.ap) #9
  %i.ar = icmp eq i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = call ptr @lookup_type_cache(i32 noundef range(i32 1, 0) %i.an, i32 noundef 64) #9 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp eq i32 %.020, 2750
  %i.az = select i1 %i.ay, double 1.000000e-02, double 5.000000e-03
  br label %calc_arraycontsel.exit

bb.q:                                             ; preds = %bb.o
  %i.ba = inttoptr i64 %i.au to ptr
  %i.bb = call ptr @pg_detoast_datum(ptr noundef %i.ba) #9 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not28.i = icmp eq ptr %i.bd, null
  br i1 %.not28.i, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load i32, ptr %i.aw, align 8
  %i.bf = call zeroext i1 @statistic_proc_security_check(ptr noundef nonnull %3, i32 noundef %i.be) #9
  br i1 %i.bf, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.bg = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %.val.i = load ptr, ptr %i.bh, align 8          ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.bj = load i8, ptr %i.bi, align 2
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bk
  %i.bm = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %1, ptr noundef %i.bg, i32 noundef 4, i32 noundef 0, i32 noundef 3) #9
  br i1 %i.bm, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %.not29.i = icmp eq i32 %.020, 2752
  br i1 %.not29.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.bc, align 8
  %i.bo = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %2, ptr noundef %i.bn, i32 noundef 5, i32 noundef 0, i32 noundef 2) #9
  br i1 %i.bo, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.u
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre32.i = load i32, ptr %.phi.trans.insert31.i, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i
  %i.bp = phi i32 [ %.pre32.i, %._crit_edge.i ], [ 0, %bb.v ]
  %i.bq = phi ptr [ %.pre.i, %._crit_edge.i ], [ null, %bb.v ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = call fastcc double @mcelem_array_selec(ptr noundef %i.bb, ptr noundef nonnull %i.av, ptr noundef %i.bs, i32 noundef %i.bu, ptr noundef %i.bw, i32 noundef %i.by, ptr noundef %i.bq, i32 noundef %i.bp, i32 noundef %.020)
  call void @free_attstatsslot(ptr noundef nonnull %2) #9
  call void @free_attstatsslot(ptr noundef nonnull %1) #9
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.ca = call fastcc double @mcelem_array_selec(ptr noundef %i.bb, ptr noundef nonnull %i.av, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %.020)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i = phi double [ %i.bz, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = fpext float %i.cc to double
  %i.ce = fsub double 1.000000e+00, %i.cd
  %i.cf = fmul double %.0.i, %i.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.aa

bb.z:                                             ; preds = %bb.r, %bb.q
  %i.cg = call fastcc double @mcelem_array_selec(ptr noundef %i.bb, ptr noundef nonnull %i.av, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %.020)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.i = phi double [ %i.cf, %bb.y ], [ %i.cg, %bb.z ] ; 2 uses
  %i.ch = ptrtoint ptr %i.bb to i64
  %.not30.i = icmp eq i64 %i.au, %i.ch
  br i1 %.not30.i, label %calc_arraycontsel.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @pfree(ptr noundef %i.bb) #9
  br label %calc_arraycontsel.exit

bb.ac:                                            ; preds = %bb.n, %bb.m
  %i.ci = icmp eq i32 %.020, 2750
  %i.cj = select i1 %i.ci, double 1.000000e-02, double 5.000000e-03
  br label %calc_arraycontsel.exit

calc_arraycontsel.exit:                           ; preds = %bb.ab, %bb.aa, %bb.p, %bb.ac
  %.0 = phi double [ %i.cj, %bb.ac ], [ %i.az, %bb.p ], [ %.1.i, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not28 = icmp eq ptr %i.cl, null
  br i1 %.not28, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %calc_arraycontsel.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull %i.cl) #9
  br label %bb.ae

bb.ae:                                            ; preds = %calc_arraycontsel.exit, %bb.ad
  %i.co = fcmp olt double %.0, 0.000000e+00
  %i.cp = fcmp ogt double %.0, 1.000000e+00
  %i.cq = bitcast double %.0 to i64
  %i.cr = select i1 %i.cp, i64 4607182418800017408, i64 %i.cq
  %i.cs = select i1 %i.co, i64 0, i64 %i.cr
  br label %bb.af

bb.af:                                            ; preds = %bb.h, %bb.i, %bb.ae, %bb.f, %bb.b
  %.021 = phi i64 [ %i.q, %bb.b ], [ %i.cs, %bb.ae ], [ %i.z, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i64 %.021
}

declare zeroext i1 @get_restriction_variable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_base_element_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 4572414629676717179, 4576918229304087676) i64 @arraycontjoinsel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 2750
  %i.e = select i1 %i.d, i64 4576918229304087675, i64 4572414629676717179
  ret i64 %i.e
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @mcelem_array_selec(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = load i32, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.i = load i8, ptr %i.h, align 2, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.l = load i8, ptr %i.k, align 1
  call void @deconstruct_array(ptr noundef %0, i32 noundef %i.d, i32 noundef %i.g, i1 noundef zeroext %i.j, i8 noundef signext %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #9
  %i.m = load i32, ptr %i.a, align 4              ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 2 uses
  %.pre48 = load ptr, ptr %i.c, align 8           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %i.p = phi ptr [ %.pre48, %.lr.ph.preheader.new ], [ %i.aj, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.03845 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.d ] ; 3 uses
  %.03944 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.140.1, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i32 %.03845, 1
  %i.x = sext i32 %.03845 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.x
  store i64 %i.v, ptr %i.y, align 8
  %.pre = load ptr, ptr %i.c, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %i.z = phi ptr [ %.pre, %bb.b ], [ %i.p, %.lr.ph ] ; 2 uses
  %.140 = phi i1 [ %.03944, %bb.b ], [ true, %.lr.ph ]
  %.1 = phi i32 [ %i.w, %bb.b ], [ %.03845, %.lr.ph ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !range !4, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.ad = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i32 %.1, 1
  %i.ah = sext i32 %.1 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ah
  store i64 %i.af, ptr %i.ai, align 8
  %.pre.1 = load ptr, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %i.aj = phi ptr [ %.pre.1, %bb.c ], [ %i.z, %.lr.ph.1 ] ; 2 uses
  %.140.1 = phi i1 [ %.140, %bb.c ], [ true, %.lr.ph.1 ] ; 3 uses
  %.1.1 = phi i32 [ %i.ag, %bb.c ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !31

._crit_edge.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre48, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03845.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.03944.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.140.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod56 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %i.ak = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %indvars.iv.epil.init
  %i.al = load i8, ptr %i.ak, align 1, !range !4, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.an = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.epil.init
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i32 %.03845.epil.init, 1
  %i.ar = sext i32 %.03845.epil.init to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ar
  store i64 %i.ap, ptr %i.as, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.140.lcssa = phi i1 [ %.140.1, %._crit_edge.unr-lcssa ], [ %.03944.epil.init, %bb.e ], [ true, %.lr.ph.epil.preheader ]
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.aq, %bb.e ], [ %.03845.epil.init, %.lr.ph.epil.preheader ]
  %i.at = icmp eq i32 %8, 2751
  %or.cond = and i1 %i.at, %.140.lcssa
  br i1 %or.cond, label %bb.j, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.038.lcssa53 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = sext i32 %.038.lcssa53 to i64
  call void @qsort_arg(ptr noundef %i.au, i64 noundef %i.av, i64 noundef 8, ptr noundef nonnull @element_compare, ptr noundef nonnull %1) #9
  %i.aw = and i32 %8, -2
  %or.cond3 = icmp eq i32 %i.aw, 2750
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread
  %i.ax = load ptr, ptr %i.b, align 8
  %i.ay = call fastcc double @mcelem_array_contain_overlap_selec(ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.ax, i32 noundef %.038.lcssa53, i32 noundef %8, ptr noundef nonnull %1)
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.thread
  %i.az = icmp eq i32 %8, 2752
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = call fastcc double @mcelem_array_contained_selec(ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.ba, i32 noundef %.038.lcssa53, ptr noundef %6, i32 noundef %7, ptr noundef nonnull %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.bd = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %8) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 494, ptr noundef nonnull @__func__.mcelem_array_selec) #9
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.h, %._crit_edge
  %.042 = phi double [ 0.000000e+00, %._crit_edge ], [ %i.ay, %bb.f ], [ %i.bb, %bb.h ]
  %i.be = load ptr, ptr %i.b, align 8
  call void @pfree(ptr noundef %i.be) #9
  %i.bf = load ptr, ptr %i.c, align 8
  call void @pfree(ptr noundef %i.bf) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.042
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare void @deconstruct_array(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @element_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.c, i32 noundef %i.e, i64 noundef %i.a, i64 noundef %i.b) #9
  %i.g = trunc i64 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @float_compare_desc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = load float, ptr %1, align 4              ; 2 uses
  %i.c = fcmp ogt float %i.a, %i.b
  %i.d = fcmp olt float %i.a, %i.b
  %. = zext i1 %i.d to i32
  %.0 = select i1 %i.c, i32 -1, i32 %.
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6, !25}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !24}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !6, !29, !30}
!19 = distinct !{!19, !6, !29}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"llvm.loop.peeled.count", i32 1}
!26 = !{!"branch_weights", i32 1, i32 1048575}
!27 = !{!16}
!28 = !{!17}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !6}
end_hunk_0
