inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6casadi14convexify_evalIdEEiPKNS_23casadi_convexify_configIT_EEPKS2_PS2_PxS8_:bb.a
    i32 1, label %bb.m
  ]

bb.h:                                             ; preds = %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !516
  %i.lh = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 6 uses
  %i.lj = icmp sgt i64 %i.n, 0
  br i1 %i.lj, label %.lr.ph41.preheader.i, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit

.lr.ph41.preheader.i:                             ; preds = %bb.h
  %.pre.i265 = load i64, ptr %i.lh, align 8, !tbaa !208 ; 2 uses
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i266, %.lr.ph41.preheader.i
  %i.lk = phi i64 [ %i.ln, %._crit_edge.i266 ], [ %.pre.i265, %.lr.ph41.preheader.i ] ; 7 uses
  %.039.i = phi double [ %.1.i, %._crit_edge.i266 ], [ 0.000000e+00, %.lr.ph41.preheader.i ]
  %.02738.i = phi i64 [ %i.ll, %._crit_edge.i266 ], [ 0, %.lr.ph41.preheader.i ] ; 5 uses
  %i.ll = add nuw nsw i64 %.02738.i, 1            ; 3 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.ll
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !208 ; 5 uses
  %i.lo = icmp slt i64 %i.lk, %i.ln
  br i1 %i.lo, label %.lr.ph.i267.preheader, label %._crit_edge.i266

.lr.ph.i267.preheader:                            ; preds = %.lr.ph41.i
  %i.lp = sub i64 %i.ln, %i.lk
  %.neg = add i64 %i.lk, 1
  %xtraiter534 = and i64 %i.lp, 1
  %lcmp.mod535.not = icmp eq i64 %xtraiter534, 0
  br i1 %lcmp.mod535.not, label %.lr.ph.i267.prol.loopexit, label %.lr.ph.i267.prol

.lr.ph.i267.prol:                                 ; preds = %.lr.ph.i267.preheader
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.lk
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !208
  %i.ls = icmp eq i64 %i.lr, %.02738.i            ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lk
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !144 ; 2 uses
  %i.lv = tail call double @llvm.fabs.f64(double %i.lu)
  %.132.i.prol = select i1 %i.ls, double %i.lu, double 0.000000e+00 ; 2 uses
  %.130.i.prol = select i1 %i.ls, double 0.000000e+00, double %i.lv ; 2 uses
  %i.lw = add nsw i64 %i.lk, 1
  br label %.lr.ph.i267.prol.loopexit

.lr.ph.i267.prol.loopexit:                        ; preds = %.lr.ph.i267.prol, %.lr.ph.i267.preheader
  %.132.i.lcssa.unr = phi double [ poison, %.lr.ph.i267.preheader ], [ %.132.i.prol, %.lr.ph.i267.prol ]
  %.130.i.lcssa.unr = phi double [ poison, %.lr.ph.i267.preheader ], [ %.130.i.prol, %.lr.ph.i267.prol ]
  %.02835.i.unr = phi i64 [ %i.lk, %.lr.ph.i267.preheader ], [ %i.lw, %.lr.ph.i267.prol ]
  %.02934.i.unr = phi double [ 0.000000e+00, %.lr.ph.i267.preheader ], [ %.130.i.prol, %.lr.ph.i267.prol ]
  %.03133.i.unr = phi double [ 0.000000e+00, %.lr.ph.i267.preheader ], [ %.132.i.prol, %.lr.ph.i267.prol ]
  %i.lx = icmp eq i64 %i.ln, %.neg
  br i1 %i.lx, label %._crit_edge.i266.loopexit, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.prol.loopexit, %.lr.ph.i267
  %.02835.i = phi i64 [ %i.mn, %.lr.ph.i267 ], [ %.02835.i.unr, %.lr.ph.i267.prol.loopexit ] ; 4 uses
  %.02934.i = phi double [ %.130.i.1, %.lr.ph.i267 ], [ %.02934.i.unr, %.lr.ph.i267.prol.loopexit ] ; 2 uses
  %.03133.i = phi double [ %.132.i.1, %.lr.ph.i267 ], [ %.03133.i.unr, %.lr.ph.i267.prol.loopexit ]
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.li, i64 %.02835.i
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !208
  %i.ma = icmp eq i64 %i.lz, %.02738.i            ; 2 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %2, i64 %.02835.i
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !144 ; 2 uses
  %i.md = tail call double @llvm.fabs.f64(double %i.mc)
  %i.me = fadd double %.02934.i, %i.md
  %.132.i = select i1 %i.ma, double %i.mc, double %.03133.i
  %.130.i = select i1 %i.ma, double %.02934.i, double %i.me ; 2 uses
  %i.mf = add nsw i64 %.02835.i, 1                ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.mf
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !208
  %i.mi = icmp eq i64 %i.mh, %.02738.i            ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mf
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !144 ; 2 uses
  %i.ml = tail call double @llvm.fabs.f64(double %i.mk)
  %i.mm = fadd double %.130.i, %i.ml
  %.132.i.1 = select i1 %i.mi, double %i.mk, double %.132.i ; 2 uses
  %.130.i.1 = select i1 %i.mi, double %.130.i, double %i.mm ; 2 uses
  %i.mn = add nsw i64 %.02835.i, 2                ; 2 uses
  %exitcond.not.i268.1 = icmp eq i64 %i.mn, %i.ln
  br i1 %exitcond.not.i268.1, label %._crit_edge.i266.loopexit, label %.lr.ph.i267, !llvm.loop !517

._crit_edge.i266.loopexit:                        ; preds = %.lr.ph.i267, %.lr.ph.i267.prol.loopexit
  %.132.i.lcssa = phi double [ %.132.i.lcssa.unr, %.lr.ph.i267.prol.loopexit ], [ %.132.i.1, %.lr.ph.i267 ]
  %.130.i.lcssa = phi double [ %.130.i.lcssa.unr, %.lr.ph.i267.prol.loopexit ], [ %.130.i.1, %.lr.ph.i267 ]
  %i.mo = fsub double %.132.i.lcssa, %.130.i.lcssa
  br label %._crit_edge.i266

._crit_edge.i266:                                 ; preds = %._crit_edge.i266.loopexit, %.lr.ph41.i
  %i.mp = phi double [ 0.000000e+00, %.lr.ph41.i ], [ %i.mo, %._crit_edge.i266.loopexit ] ; 2 uses
  %i.mq = icmp eq i64 %.02738.i, 0
  %i.mr = tail call nsz double @llvm.minnum.f64(double %.039.i, double %i.mp)
  %.1.i = select i1 %i.mq, double %i.mp, double %i.mr ; 2 uses
  %exitcond44.not.i = icmp eq i64 %i.ll, %i.n
  br i1 %exitcond44.not.i, label %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit, label %.lr.ph41.i, !llvm.loop !518

_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit:     ; preds = %._crit_edge.i266
  %i.ms = fsub double %i.lg, %.1.i                ; 4 uses
  %i.mt = fcmp ule double %i.ms, 0.000000e+00
  br i1 %i.mt, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit, label %.lr.ph21.i

.loopexit.i272:                                   ; preds = %.lr.ph.i273.prol.loopexit, %bb.l, %.lr.ph21.i
  %exitcond22.not.i = icmp eq i64 %i.mv, %i.n
  br i1 %exitcond22.not.i, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit, label %.lr.ph21.i, !llvm.loop !519

.lr.ph21.i:                                       ; preds = %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit, %.loopexit.i272
  %i.mu = phi i64 [ %i.mx, %.loopexit.i272 ], [ %.pre.i265, %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit ] ; 7 uses
  %.020.i271 = phi i64 [ %i.mv, %.loopexit.i272 ], [ 0, %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit ] ; 4 uses
  %i.mv = add nuw nsw i64 %.020.i271, 1           ; 3 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !208 ; 5 uses
  %i.my = icmp slt i64 %i.mu, %i.mx
  br i1 %i.my, label %.lr.ph.i273.preheader, label %.loopexit.i272

.lr.ph.i273.preheader:                            ; preds = %.lr.ph21.i
  %i.mz = sub i64 %i.mx, %i.mu
  %.neg540 = add i64 %i.mu, 1
  %xtraiter537 = and i64 %i.mz, 1
  %lcmp.mod538.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod538.not, label %.lr.ph.i273.prol.loopexit, label %.lr.ph.i273.prol

.lr.ph.i273.prol:                                 ; preds = %.lr.ph.i273.preheader
  %i.na = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.mu
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !208
  %i.nc = icmp eq i64 %i.nb, %.020.i271
  br i1 %i.nc, label %bb.i, label %.lr.ph.i273.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.lr.ph.i273.prol
  %i.nd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mu ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !144
  %i.nf = fadd double %i.ms, %i.ne
  store double %i.nf, ptr %i.nd, align 8, !tbaa !144
  br label %.lr.ph.i273.prol.loopexit.unr-lcssa

.lr.ph.i273.prol.loopexit.unr-lcssa:              ; preds = %bb.i, %.lr.ph.i273.prol
  %i.ng = add nsw i64 %i.mu, 1
  br label %.lr.ph.i273.prol.loopexit

.lr.ph.i273.prol.loopexit:                        ; preds = %.lr.ph.i273.prol.loopexit.unr-lcssa, %.lr.ph.i273.preheader
  %.01819.i.unr = phi i64 [ %i.mu, %.lr.ph.i273.preheader ], [ %i.ng, %.lr.ph.i273.prol.loopexit.unr-lcssa ]
  %i.nh = icmp eq i64 %i.mx, %.neg540
  br i1 %i.nh, label %.loopexit.i272, label %.lr.ph.i273

.lr.ph.i273:                                      ; preds = %.lr.ph.i273.prol.loopexit, %bb.l
  %.01819.i = phi i64 [ %i.nv, %bb.l ], [ %.01819.i.unr, %.lr.ph.i273.prol.loopexit ] ; 4 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.li, i64 %.01819.i
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !208
  %i.nk = icmp eq i64 %i.nj, %.020.i271
  br i1 %i.nk, label %bb.j, label %.lr.ph.i273.1

bb.j:                                             ; preds = %.lr.ph.i273
  %i.nl = getelementptr inbounds [8 x i8], ptr %2, i64 %.01819.i ; 2 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !144
  %i.nn = fadd double %i.ms, %i.nm
  store double %i.nn, ptr %i.nl, align 8, !tbaa !144
  br label %.lr.ph.i273.1

.lr.ph.i273.1:                                    ; preds = %bb.j, %.lr.ph.i273
  %i.no = add nsw i64 %.01819.i, 1                ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !208
  %i.nr = icmp eq i64 %i.nq, %.020.i271
  br i1 %i.nr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i273.1
  %i.ns = getelementptr inbounds [8 x i8], ptr %2, i64 %i.no ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !144
  %i.nu = fadd double %i.ms, %i.nt
  store double %i.nu, ptr %i.ns, align 8, !tbaa !144
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i273.1
  %i.nv = add nsw i64 %.01819.i, 2                ; 2 uses
  %exitcond.not.i274.1 = icmp eq i64 %i.nv, %i.mx
  br i1 %exitcond.not.i274.1, label %.loopexit.i272, label %.lr.ph.i273, !llvm.loop !520

bb.m:                                             ; preds = %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !521
  %i.ny = icmp sgt i64 %i.nx, 1
  br i1 %i.ny, label %.lr.ph, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit

.lr.ph:                                           ; preds = %bb.m
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i32, ptr %i.oa, align 4, !tbaa !522
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.y
  %i.of = phi i32 [ %.pre, %.lr.ph ], [ %i.tw, %bb.y ]
  %.0196332 = phi i64 [ 0, %.lr.ph ], [ %i.oh, %bb.y ] ; 2 uses
  %.0197328 = phi i64 [ 0, %.lr.ph ], [ %.1198, %bb.y ] ; 8 uses
  %i.og = load ptr, ptr %i.nz, align 8, !tbaa !523 ; 2 uses
  %i.oh = add nuw nsw i64 %.0196332, 1            ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.oh
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !208 ; 5 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %.0196332
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !208 ; 5 uses
  %i.om = sub i64 %i.oj, %i.ol                    ; 42 uses
  %.not226 = icmp eq i32 %i.of, 0
  br i1 %.not226, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.on = load i32, ptr %i.ob, align 4, !tbaa !524
  %i.oo = icmp sgt i64 %i.om, 0                   ; 3 uses
  switch i32 %i.on, label %.preheader290 [
    i32 0, label %.preheader292
    i32 2, label %.preheader294
  ]

.preheader294:                                    ; preds = %bb.o
  br i1 %i.oo, label %.preheader283.lr.ph, label %.loopexit291

.preheader283.lr.ph:                              ; preds = %.preheader294
  %i.op = load ptr, ptr %i.oc, align 8, !tbaa !525
  %i.oq = getelementptr [8 x i8], ptr %i.op, i64 %.0197328 ; 3 uses
  br label %.preheader283

.preheader292:                                    ; preds = %bb.o
  br i1 %i.oo, label %.preheader282.lr.ph, label %.loopexit291

.preheader282.lr.ph:                              ; preds = %.preheader292
  %i.or = load ptr, ptr %i.oc, align 8, !tbaa !525
  %i.os = getelementptr [8 x i8], ptr %i.or, i64 %.0197328 ; 5 uses
  br label %.preheader282

.preheader290:                                    ; preds = %bb.o
  br i1 %i.oo, label %.preheader281.lr.ph, label %.loopexit291

.preheader281.lr.ph:                              ; preds = %.preheader290
  %i.ot = load ptr, ptr %i.oc, align 8, !tbaa !525
  %i.ou = getelementptr [8 x i8], ptr %i.ot, i64 %.0197328 ; 3 uses
  %i.ov = xor i64 %i.ol, -1
  %i.ow = add i64 %i.oj, %i.ov
  br label %.preheader281

.preheader282:                                    ; preds = %.preheader282.lr.ph, %._crit_edge
  %indvars.iv350 = phi i64 [ %i.om, %.preheader282.lr.ph ], [ %indvars.iv.next351, %._crit_edge ] ; 4 uses
  %.0186306 = phi i64 [ 0, %.preheader282.lr.ph ], [ %i.qb, %._crit_edge ] ; 2 uses
  %.0199305 = phi i64 [ 0, %.preheader282.lr.ph ], [ %indvars.iv350, %._crit_edge ] ; 4 uses
  %5 = sub i64 %indvars.iv350, %.0199305
  %6 = mul i64 %i.om, %.0186306
  %xtraiter498 = and i64 %5, 3                    ; 2 uses
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader282, %.prol.preheader
  %.1200303.prol = phi i64 [ %i.pc, %.prol.preheader ], [ %.0199305, %.preheader282 ] ; 3 uses
  %prol.iter498 = phi i64 [ %prol.iter498.next, %.prol.preheader ], [ 0, %.preheader282 ]
  %i.ox = getelementptr [8 x i8], ptr %i.os, i64 %.1200303.prol
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !208
  %i.oz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.oy
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !144
  %i.pb = getelementptr inbounds [8 x i8], ptr %4, i64 %.1200303.prol
  store double %i.pa, ptr %i.pb, align 8, !tbaa !144
  %i.pc = add i64 %.1200303.prol, 1               ; 2 uses
  %prol.iter498.next = add i64 %prol.iter498, 1   ; 2 uses
  %prol.iter498.cmp.not = icmp eq i64 %prol.iter498.next, %xtraiter498
  br i1 %prol.iter498.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !526

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader282
  %.1200303.unr = phi i64 [ %.0199305, %.preheader282 ], [ %i.pc, %.prol.preheader ]
  %7 = add i64 %i.oj, %6
  %8 = sub i64 %i.ol, %7
  %9 = add i64 %8, %.0199305
  %10 = icmp ugt i64 %9, -4
  br i1 %10, label %._crit_edge, label %.preheader282.new

.preheader282.new:                                ; preds = %.prol.loopexit, %.preheader282.new
  %.1200303 = phi i64 [ %i.qa, %.preheader282.new ], [ %.1200303.unr, %.prol.loopexit ] ; 6 uses
  %i.pd = getelementptr [8 x i8], ptr %i.os, i64 %.1200303
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !208
  %i.pf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pe
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !144
  %i.ph = getelementptr inbounds [8 x i8], ptr %4, i64 %.1200303
  store double %i.pg, ptr %i.ph, align 8, !tbaa !144
  %i.pi = add i64 %.1200303, 1                    ; 2 uses
  %i.pj = getelementptr [8 x i8], ptr %i.os, i64 %i.pi
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !208
  %i.pl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pk
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !144
  %i.pn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.pi
  store double %i.pm, ptr %i.pn, align 8, !tbaa !144
  %i.po = add i64 %.1200303, 2                    ; 2 uses
  %i.pp = getelementptr [8 x i8], ptr %i.os, i64 %i.po
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !208
  %i.pr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pq
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !144
  %i.pt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.po
  store double %i.ps, ptr %i.pt, align 8, !tbaa !144
  %i.pu = add i64 %.1200303, 3                    ; 2 uses
  %i.pv = getelementptr [8 x i8], ptr %i.os, i64 %i.pu
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !208
  %i.px = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pw
  %i.py = load double, ptr %i.px, align 8, !tbaa !144
  %i.pz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.pu
  store double %i.py, ptr %i.pz, align 8, !tbaa !144
  %i.qa = add i64 %.1200303, 4                    ; 2 uses
  %exitcond350.not.3 = icmp eq i64 %i.qa, %indvars.iv350
  br i1 %exitcond350.not.3, label %._crit_edge, label %.preheader282.new, !llvm.loop !527

._crit_edge:                                      ; preds = %.preheader282.new, %.prol.loopexit
  %i.qb = add nuw nsw i64 %.0186306, 1            ; 2 uses
  %indvars.iv.next351 = add i64 %indvars.iv350, %i.om
  %exitcond351.not = icmp eq i64 %i.qb, %i.om
  br i1 %exitcond351.not, label %.loopexit291, label %.preheader282, !llvm.loop !528

.preheader283:                                    ; preds = %.preheader283.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 1, %.preheader283.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %.1302 = phi i64 [ 0, %.preheader283.lr.ph ], [ %i.rg, %bb.q ] ; 4 uses
  %.2201301 = phi i64 [ 0, %.preheader283.lr.ph ], [ %.lcssa, %bb.q ] ; 2 uses
  %i.qc = mul nuw nsw i64 %.1302, %i.om
  %i.qd = getelementptr [8 x i8], ptr %4, i64 %i.qc ; 3 uses
  %i.qe = getelementptr [8 x i8], ptr %4, i64 %.1302 ; 3 uses
  %xtraiter492 = and i64 %indvars.iv, 1
  %i.qf = icmp eq i64 %.1302, 0
  br i1 %i.qf, label %.epil.preheader, label %.preheader283.new

.preheader283.new:                                ; preds = %.preheader283
  %unroll_iter = and i64 %indvars.iv, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader283.new
  %.1190300 = phi i64 [ 0, %.preheader283.new ], [ %i.qw, %bb.p ] ; 4 uses
  %.3202299 = phi i64 [ %.2201301, %.preheader283.new ], [ %i.qx, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader283.new ], [ %niter.next.1, %bb.p ]
  %i.qg = getelementptr [8 x i8], ptr %i.oq, i64 %.3202299
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !208
  %i.qi = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qh
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !144 ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %i.qd, i64 %.1190300
  store double %i.qj, ptr %i.qk, align 8, !tbaa !144
  %i.ql = mul nuw nsw i64 %.1190300, %i.om
  %i.qm = getelementptr [8 x i8], ptr %i.qe, i64 %i.ql
  store double %i.qj, ptr %i.qm, align 8, !tbaa !144
  %i.qn = or disjoint i64 %.1190300, 1            ; 2 uses
  %i.qo = getelementptr [8 x i8], ptr %i.oq, i64 %.3202299
  %i.qp = getelementptr i8, ptr %i.qo, i64 8
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !208
  %i.qr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qq
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !144 ; 2 uses
  %i.qt = getelementptr [8 x i8], ptr %i.qd, i64 %i.qn
  store double %i.qs, ptr %i.qt, align 8, !tbaa !144
  %i.qu = mul nuw nsw i64 %i.qn, %i.om
  %i.qv = getelementptr [8 x i8], ptr %i.qe, i64 %i.qu
  store double %i.qs, ptr %i.qv, align 8, !tbaa !144
  %i.qw = add nuw nsw i64 %.1190300, 2            ; 2 uses
  %i.qx = add nsw i64 %.3202299, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.p, !llvm.loop !529

.unr-lcssa:                                       ; preds = %bb.p
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %bb.q, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader283
  %.1190300.epil.init = phi i64 [ 0, %.preheader283 ], [ %i.qw, %.unr-lcssa ] ; 2 uses
  %.3202299.epil.init = phi i64 [ %.2201301, %.preheader283 ], [ %i.qx, %.unr-lcssa ] ; 2 uses
  %lcmp.mod495 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod495)
  %i.qy = getelementptr [8 x i8], ptr %i.oq, i64 %.3202299.epil.init
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !208
  %i.ra = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qz
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !144 ; 2 uses
  %i.rc = getelementptr [8 x i8], ptr %i.qd, i64 %.1190300.epil.init
  store double %i.rb, ptr %i.rc, align 8, !tbaa !144
  %i.rd = mul nuw nsw i64 %.1190300.epil.init, %i.om
  %i.re = getelementptr [8 x i8], ptr %i.qe, i64 %i.rd
  store double %i.rb, ptr %i.re, align 8, !tbaa !144
  %i.rf = add nsw i64 %.3202299.epil.init, 1
  br label %bb.q

bb.q:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.qx, %.unr-lcssa ], [ %i.rf, %.epil.preheader ]
  %i.rg = add nuw nsw i64 %.1302, 1               ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond349.not = icmp eq i64 %i.rg, %i.om
  br i1 %exitcond349.not, label %.loopexit291, label %.preheader283, !llvm.loop !530

.preheader281:                                    ; preds = %.preheader281.lr.ph, %.unr-lcssa504
  %.2310 = phi i64 [ 0, %.preheader281.lr.ph ], [ %i.sn, %.unr-lcssa504 ] ; 9 uses
  %.4203309 = phi i64 [ 0, %.preheader281.lr.ph ], [ %.lcssa464, %.unr-lcssa504 ] ; 3 uses
  %i.rh = sub nsw i64 %i.om, %.2310
  %i.ri = mul nuw nsw i64 %.2310, %i.om
  %i.rj = getelementptr [8 x i8], ptr %4, i64 %i.ri ; 3 uses
  %i.rk = getelementptr [8 x i8], ptr %4, i64 %.2310 ; 3 uses
  %xtraiter501 = and i64 %i.rh, 1
  %lcmp.mod502.not = icmp eq i64 %xtraiter501, 0
  br i1 %lcmp.mod502.not, label %.prol.loopexit500, label %.prol.loopexit500.unr-lcssa

.prol.loopexit500.unr-lcssa:                      ; preds = %.preheader281
  %i.rl = getelementptr [8 x i8], ptr %i.ou, i64 %.4203309
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !208
  %i.rn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.rm
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !144 ; 2 uses
  %i.rp = getelementptr [8 x i8], ptr %i.rj, i64 %.2310
  store double %i.ro, ptr %i.rp, align 8, !tbaa !144
  %i.rq = mul nuw nsw i64 %.2310, %i.om
  %i.rr = getelementptr [8 x i8], ptr %i.rk, i64 %i.rq
  store double %i.ro, ptr %i.rr, align 8, !tbaa !144
  %i.rs = add nuw nsw i64 %.2310, 1
  %i.rt = add nsw i64 %.4203309, 1                ; 2 uses
  br label %.prol.loopexit500

.prol.loopexit500:                                ; preds = %.prol.loopexit500.unr-lcssa, %.preheader281
  %.lcssa464.unr = phi i64 [ poison, %.preheader281 ], [ %i.rt, %.prol.loopexit500.unr-lcssa ]
  %.2191308.unr = phi i64 [ %.2310, %.preheader281 ], [ %i.rs, %.prol.loopexit500.unr-lcssa ]
  %.5204307.unr = phi i64 [ %.4203309, %.preheader281 ], [ %i.rt, %.prol.loopexit500.unr-lcssa ]
  %i.ru = icmp eq i64 %i.ow, %.2310
  br i1 %i.ru, label %.unr-lcssa504, label %.preheader281.new

.preheader281.new:                                ; preds = %.prol.loopexit500, %.preheader281.new
  %.2191308 = phi i64 [ %i.sl, %.preheader281.new ], [ %.2191308.unr, %.prol.loopexit500 ] ; 4 uses
  %.5204307 = phi i64 [ %i.sm, %.preheader281.new ], [ %.5204307.unr, %.prol.loopexit500 ] ; 3 uses
  %i.rv = getelementptr [8 x i8], ptr %i.ou, i64 %.5204307
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !208
  %i.rx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.rw
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !144 ; 2 uses
  %i.rz = getelementptr [8 x i8], ptr %i.rj, i64 %.2191308
  store double %i.ry, ptr %i.rz, align 8, !tbaa !144
  %i.sa = mul nuw nsw i64 %.2191308, %i.om
  %i.sb = getelementptr [8 x i8], ptr %i.rk, i64 %i.sa
  store double %i.ry, ptr %i.sb, align 8, !tbaa !144
  %i.sc = add nuw nsw i64 %.2191308, 1            ; 2 uses
  %i.sd = getelementptr [8 x i8], ptr %i.ou, i64 %.5204307
  %i.se = getelementptr i8, ptr %i.sd, i64 8
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !208
  %i.sg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.sf
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !144 ; 2 uses
  %i.si = getelementptr [8 x i8], ptr %i.rj, i64 %i.sc
  store double %i.sh, ptr %i.si, align 8, !tbaa !144
  %i.sj = mul nuw nsw i64 %i.sc, %i.om
  %i.sk = getelementptr [8 x i8], ptr %i.rk, i64 %i.sj
  store double %i.sh, ptr %i.sk, align 8, !tbaa !144
  %i.sl = add nuw nsw i64 %.2191308, 2            ; 2 uses
  %i.sm = add nsw i64 %.5204307, 2                ; 2 uses
  %exitcond352.not.1 = icmp eq i64 %i.sl, %i.om
  br i1 %exitcond352.not.1, label %.unr-lcssa504, label %.preheader281.new, !llvm.loop !531

.unr-lcssa504:                                    ; preds = %.preheader281.new, %.prol.loopexit500
  %.lcssa464 = phi i64 [ %.lcssa464.unr, %.prol.loopexit500 ], [ %i.sm, %.preheader281.new ]
  %i.sn = add nuw nsw i64 %.2310, 1               ; 2 uses
  %exitcond353.not = icmp eq i64 %i.sn, %i.om
  br i1 %exitcond353.not, label %.loopexit291, label %.preheader281, !llvm.loop !532

.loopexit291:                                     ; preds = %bb.q, %._crit_edge, %.unr-lcssa504, %.preheader294, %.preheader292, %.preheader290
  %i.so = mul nsw i64 %i.om, %i.om
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.so
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.sq = getelementptr inbounds [8 x i8], ptr %2, i64 %.0197328
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit291
  %.0188 = phi ptr [ %4, %.loopexit291 ], [ %i.sq, %bb.r ] ; 10 uses
  %.0187 = phi ptr [ %i.sp, %.loopexit291 ], [ %4, %bb.r ]
  %i.sr = load double, ptr %i.od, align 8, !tbaa !516
  %i.ss = load i32, ptr %0, align 8, !tbaa !515
  %i.st = icmp eq i32 %i.ss, 2
  %i.su = zext i1 %i.st to i64
  %i.sv = load i64, ptr %i.oe, align 8, !tbaa !533
  %i.sw = tail call noundef i32 @_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px(i64 noundef %i.om, ptr noundef %.0188, double noundef %i.sr, double noundef 1.000000e-10, i64 noundef %i.su, i64 noundef %i.sv, ptr noundef %.0187, ptr noundef %3) ; 2 uses
  %.not228 = icmp eq i32 %i.sw, 0
  br i1 %.not228, label %.preheader289, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit

.preheader289:                                    ; preds = %bb.s
  %i.sx = icmp sgt i64 %i.om, 0                   ; 4 uses
  br i1 %i.sx, label %.preheader280, label %._crit_edge313

.preheader280:                                    ; preds = %.preheader289, %.epilog-lcssa509
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %.epilog-lcssa509 ], [ 1, %.preheader289 ] ; 3 uses
  %.3312 = phi i64 [ %i.tv, %.epilog-lcssa509 ], [ 0, %.preheader289 ] ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.0188, i64 %.3312 ; 5 uses
  %i.sy = mul nuw nsw i64 %.3312, %i.om
  %i.sz = getelementptr [8 x i8], ptr %.0188, i64 %i.sy ; 5 uses
  %xtraiter507 = and i64 %indvars.iv354, 3        ; 3 uses
  %i.ta = icmp samesign ult i64 %.3312, 3
  br i1 %i.ta, label %.epil.preheader506, label %.preheader280.new

.preheader280.new:                                ; preds = %.preheader280
  %unroll_iter511 = and i64 %indvars.iv354, -4
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader280.new
  %.3192311 = phi i64 [ 0, %.preheader280.new ], [ %i.tq, %bb.t ] ; 6 uses
  %niter512 = phi i64 [ 0, %.preheader280.new ], [ %niter512.next.3, %bb.t ]
  %i.tb = mul nuw nsw i64 %.3192311, %i.om
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.tb
  %i.tc = load double, ptr %gep, align 8, !tbaa !144
  %i.td = getelementptr [8 x i8], ptr %i.sz, i64 %.3192311
  store double %i.tc, ptr %i.td, align 8, !tbaa !144
  %i.te = or disjoint i64 %.3192311, 1            ; 2 uses
  %i.tf = mul nuw nsw i64 %i.te, %i.om
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.tf
  %i.tg = load double, ptr %gep.1, align 8, !tbaa !144
  %i.th = getelementptr [8 x i8], ptr %i.sz, i64 %i.te
  store double %i.tg, ptr %i.th, align 8, !tbaa !144
  %i.ti = or disjoint i64 %.3192311, 2            ; 2 uses
  %i.tj = mul nuw nsw i64 %i.ti, %i.om
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.tj
  %i.tk = load double, ptr %gep.2, align 8, !tbaa !144
  %i.tl = getelementptr [8 x i8], ptr %i.sz, i64 %i.ti
  store double %i.tk, ptr %i.tl, align 8, !tbaa !144
  %i.tm = or disjoint i64 %.3192311, 3            ; 2 uses
  %i.tn = mul nuw nsw i64 %i.tm, %i.om
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.tn
  %i.to = load double, ptr %gep.3, align 8, !tbaa !144
  %i.tp = getelementptr [8 x i8], ptr %i.sz, i64 %i.tm
  store double %i.to, ptr %i.tp, align 8, !tbaa !144
  %i.tq = add nuw nsw i64 %.3192311, 4            ; 2 uses
  %niter512.next.3 = add i64 %niter512, 4         ; 2 uses
  %niter512.ncmp.3 = icmp eq i64 %niter512.next.3, %unroll_iter511
  br i1 %niter512.ncmp.3, label %.unr-lcssa505, label %bb.t, !llvm.loop !534

.unr-lcssa505:                                    ; preds = %bb.t
  %lcmp.mod508.not = icmp eq i64 %xtraiter507, 0
  br i1 %lcmp.mod508.not, label %.epilog-lcssa509, label %.epil.preheader506

.epil.preheader506:                               ; preds = %.unr-lcssa505, %.preheader280
  %.3192311.epil.init = phi i64 [ 0, %.preheader280 ], [ %i.tq, %.unr-lcssa505 ]
  %lcmp.mod510 = icmp ne i64 %xtraiter507, 0
  tail call void @llvm.assume(i1 %lcmp.mod510)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader506
  %.3192311.epil = phi i64 [ %.3192311.epil.init, %.epil.preheader506 ], [ %i.tu, %bb.u ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader506 ], [ %epil.iter.next, %bb.u ]
  %i.tr = mul nuw nsw i64 %.3192311.epil, %i.om
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.tr
  %i.ts = load double, ptr %gep.epil, align 8, !tbaa !144
  %i.tt = getelementptr [8 x i8], ptr %i.sz, i64 %.3192311.epil
  store double %i.ts, ptr %i.tt, align 8, !tbaa !144
  %i.tu = add nuw nsw i64 %.3192311.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter507
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa509, label %bb.u, !llvm.loop !535

.epilog-lcssa509:                                 ; preds = %bb.u, %.unr-lcssa505
  %i.tv = add nuw nsw i64 %.3312, 1               ; 2 uses
  %indvars.iv.next355 = add nuw i64 %indvars.iv354, 1
  %exitcond357.not = icmp eq i64 %i.tv, %i.om
  br i1 %exitcond357.not, label %._crit_edge313, label %.preheader280, !llvm.loop !536

._crit_edge313:                                   ; preds = %.epilog-lcssa509, %.preheader289
  %i.tw = load i32, ptr %i.oa, align 4, !tbaa !522 ; 2 uses
  %.not229 = icmp eq i32 %i.tw, 0
  %.pre366 = load i32, ptr %i.ob, align 4, !tbaa !524 ; 2 uses
  br i1 %.not229, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %._crit_edge313
  switch i32 %.pre366, label %.preheader284 [
    i32 0, label %.preheader285
    i32 2, label %.preheader287
  ]

.preheader287:                                    ; preds = %bb.v
  br i1 %i.sx, label %.preheader279.lr.ph, label %.loopexit.thread414

.preheader279.lr.ph:                              ; preds = %.preheader287
  %i.tx = load ptr, ptr %i.oc, align 8, !tbaa !525
  %i.ty = getelementptr [8 x i8], ptr %i.tx, i64 %.0197328 ; 5 uses
  br label %.preheader279

.preheader285:                                    ; preds = %bb.v
  br i1 %i.sx, label %.preheader278.lr.ph, label %.loopexit.thread

.preheader278.lr.ph:                              ; preds = %.preheader285
  %i.tz = load ptr, ptr %i.oc, align 8, !tbaa !525
  %i.ua = getelementptr [8 x i8], ptr %i.tz, i64 %.0197328 ; 5 uses
  br label %.preheader278

.preheader284:                                    ; preds = %bb.v
  br i1 %i.sx, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader284
  %i.ub = load ptr, ptr %i.oc, align 8, !tbaa !525
  %i.uc = getelementptr [8 x i8], ptr %i.ub, i64 %.0197328 ; 5 uses
  %i.ud = sub i64 %i.ol, %i.oj
  br label %.preheader

.preheader278:                                    ; preds = %.preheader278.lr.ph, %._crit_edge320
  %indvars.iv364 = phi i64 [ %i.om, %.preheader278.lr.ph ], [ %indvars.iv.next365, %._crit_edge320 ] ; 4 uses
  %.4323 = phi i64 [ 0, %.preheader278.lr.ph ], [ %i.vi, %._crit_edge320 ] ; 2 uses
  %.6205322 = phi i64 [ 0, %.preheader278.lr.ph ], [ %indvars.iv364, %._crit_edge320 ] ; 4 uses
  %11 = sub i64 %indvars.iv364, %.6205322
  %12 = mul i64 %i.om, %.4323
  %xtraiter527 = and i64 %11, 3                   ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  br i1 %lcmp.mod528.not, label %.prol.loopexit524, label %.prol.preheader523

.prol.preheader523:                               ; preds = %.preheader278, %.prol.preheader523
  %.7318.prol = phi i64 [ %i.uj, %.prol.preheader523 ], [ %.6205322, %.preheader278 ] ; 3 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.prol.preheader523 ], [ 0, %.preheader278 ]
  %i.ue = getelementptr inbounds [8 x i8], ptr %.0188, i64 %.7318.prol
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !144
  %i.ug = getelementptr [8 x i8], ptr %i.ua, i64 %.7318.prol
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !208
  %i.ui = getelementptr inbounds [8 x i8], ptr %2, i64 %i.uh
  store double %i.uf, ptr %i.ui, align 8, !tbaa !144
  %i.uj = add i64 %.7318.prol, 1                  ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter527
  br i1 %prol.iter527.cmp.not, label %.prol.loopexit524, label %.prol.preheader523, !llvm.loop !537

.prol.loopexit524:                                ; preds = %.prol.preheader523, %.preheader278
  %.7318.unr = phi i64 [ %.6205322, %.preheader278 ], [ %i.uj, %.prol.preheader523 ]
  %13 = add i64 %i.oj, %12
  %14 = sub i64 %i.ol, %13
  %15 = add i64 %14, %.6205322
  %16 = icmp ugt i64 %15, -4
  br i1 %16, label %._crit_edge320, label %.preheader278.new

.preheader278.new:                                ; preds = %.prol.loopexit524, %.preheader278.new
  %.7318 = phi i64 [ %i.vh, %.preheader278.new ], [ %.7318.unr, %.prol.loopexit524 ] ; 6 uses
  %i.uk = getelementptr inbounds [8 x i8], ptr %.0188, i64 %.7318
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !144
  %i.um = getelementptr [8 x i8], ptr %i.ua, i64 %.7318
  %i.un = load i64, ptr %i.um, align 8, !tbaa !208
  %i.uo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.un
  store double %i.ul, ptr %i.uo, align 8, !tbaa !144
  %i.up = add i64 %.7318, 1                       ; 2 uses
  %i.uq = getelementptr inbounds [8 x i8], ptr %.0188, i64 %i.up
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !144
  %i.us = getelementptr [8 x i8], ptr %i.ua, i64 %i.up
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !208
  %i.uu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ut
  store double %i.ur, ptr %i.uu, align 8, !tbaa !144
  %i.uv = add i64 %.7318, 2                       ; 2 uses
  %i.uw = getelementptr inbounds [8 x i8], ptr %.0188, i64 %i.uv
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !144
  %i.uy = getelementptr [8 x i8], ptr %i.ua, i64 %i.uv
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !208
  %i.va = getelementptr inbounds [8 x i8], ptr %2, i64 %i.uz
  store double %i.ux, ptr %i.va, align 8, !tbaa !144
  %i.vb = add i64 %.7318, 3                       ; 2 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %.0188, i64 %i.vb
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !144
  %i.ve = getelementptr [8 x i8], ptr %i.ua, i64 %i.vb
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !208
  %i.vg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.vf
  store double %i.vd, ptr %i.vg, align 8, !tbaa !144
  %i.vh = add i64 %.7318, 4                       ; 2 uses
  %exitcond362.not.3 = icmp eq i64 %i.vh, %indvars.iv364
  br i1 %exitcond362.not.3, label %._crit_edge320, label %.preheader278.new, !llvm.loop !538

._crit_edge320:                                   ; preds = %.preheader278.new, %.prol.loopexit524
  %i.vi = add nuw nsw i64 %.4323, 1               ; 2 uses
  %indvars.iv.next365 = add i64 %indvars.iv364, %i.om
  %exitcond363.not.a = icmp eq i64 %i.vi, %i.om
  br i1 %exitcond363.not.a, label %.loopexit, label %.preheader278, !llvm.loop !539

.preheader279:                                    ; preds = %.preheader279.lr.ph, %.epilog-lcssa518
  %indvars.iv358 = phi i64 [ 1, %.preheader279.lr.ph ], [ %indvars.iv.next359, %.epilog-lcssa518 ] ; 3 uses
  %.5317 = phi i64 [ 0, %.preheader279.lr.ph ], [ %i.wv, %.epilog-lcssa518 ] ; 3 uses
  %.8316 = phi i64 [ 0, %.preheader279.lr.ph ], [ %.lcssa465, %.epilog-lcssa518 ] ; 2 uses
  %i.vj = mul nuw nsw i64 %.5317, %i.om
  %i.vk = getelementptr [8 x i8], ptr %.0188, i64 %i.vj ; 5 uses
  %xtraiter515 = and i64 %indvars.iv358, 3        ; 3 uses
  %i.vl = icmp samesign ult i64 %.5317, 3
  br i1 %i.vl, label %.epil.preheader514, label %.preheader279.new

.preheader279.new:                                ; preds = %.preheader279
  %unroll_iter521 = and i64 %indvars.iv358, -4
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader279.new
  %.5194315 = phi i64 [ 0, %.preheader279.new ], [ %i.wm, %bb.w ] ; 5 uses
  %.9314 = phi i64 [ %.8316, %.preheader279.new ], [ %i.wn, %bb.w ] ; 5 uses
  %niter522 = phi i64 [ 0, %.preheader279.new ], [ %niter522.next.3, %bb.w ]
  %i.vm = getelementptr [8 x i8], ptr %i.vk, i64 %.5194315
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !144
  %i.vo = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !208
  %i.vq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.vp
  store double %i.vn, ptr %i.vq, align 8, !tbaa !144
  %i.vr = getelementptr [8 x i8], ptr %i.vk, i64 %.5194315
  %i.vs = getelementptr i8, ptr %i.vr, i64 8
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !144
  %i.vu = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.vv = getelementptr i8, ptr %i.vu, i64 8
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !208
  %i.vx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.vw
  store double %i.vt, ptr %i.vx, align 8, !tbaa !144
  %i.vy = getelementptr [8 x i8], ptr %i.vk, i64 %.5194315
  %i.vz = getelementptr i8, ptr %i.vy, i64 16
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !144
  %i.wb = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.wc = getelementptr i8, ptr %i.wb, i64 16
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !208
  %i.we = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wd
  store double %i.wa, ptr %i.we, align 8, !tbaa !144
  %i.wf = getelementptr [8 x i8], ptr %i.vk, i64 %.5194315
  %i.wg = getelementptr i8, ptr %i.wf, i64 24
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !144
  %i.wi = getelementptr [8 x i8], ptr %i.ty, i64 %.9314
  %i.wj = getelementptr i8, ptr %i.wi, i64 24
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !208
  %i.wl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wk
  store double %i.wh, ptr %i.wl, align 8, !tbaa !144
  %i.wm = add nuw nsw i64 %.5194315, 4            ; 2 uses
  %i.wn = add nsw i64 %.9314, 4                   ; 3 uses
  %niter522.next.3 = add i64 %niter522, 4         ; 2 uses
  %niter522.ncmp.3 = icmp eq i64 %niter522.next.3, %unroll_iter521
  br i1 %niter522.ncmp.3, label %.unr-lcssa513, label %bb.w, !llvm.loop !540

.unr-lcssa513:                                    ; preds = %bb.w
  %lcmp.mod517.not = icmp eq i64 %xtraiter515, 0
  br i1 %lcmp.mod517.not, label %.epilog-lcssa518, label %.epil.preheader514

.epil.preheader514:                               ; preds = %.unr-lcssa513, %.preheader279
  %.5194315.epil.init = phi i64 [ 0, %.preheader279 ], [ %i.wm, %.unr-lcssa513 ]
  %.9314.epil.init = phi i64 [ %.8316, %.preheader279 ], [ %i.wn, %.unr-lcssa513 ]
  %lcmp.mod520 = icmp ne i64 %xtraiter515, 0
  tail call void @llvm.assume(i1 %lcmp.mod520)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader514
  %.5194315.epil = phi i64 [ %.5194315.epil.init, %.epil.preheader514 ], [ %i.wt, %bb.x ] ; 2 uses
  %.9314.epil = phi i64 [ %.9314.epil.init, %.epil.preheader514 ], [ %i.wu, %bb.x ] ; 2 uses
  %epil.iter516 = phi i64 [ 0, %.epil.preheader514 ], [ %epil.iter516.next, %bb.x ]
  %i.wo = getelementptr [8 x i8], ptr %i.vk, i64 %.5194315.epil
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !144
  %i.wq = getelementptr [8 x i8], ptr %i.ty, i64 %.9314.epil
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !208
  %i.ws = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wr
  store double %i.wp, ptr %i.ws, align 8, !tbaa !144
  %i.wt = add nuw nsw i64 %.5194315.epil, 1
  %i.wu = add nsw i64 %.9314.epil, 1              ; 2 uses
  %epil.iter516.next = add i64 %epil.iter516, 1   ; 2 uses
  %epil.iter516.cmp.not = icmp eq i64 %epil.iter516.next, %xtraiter515
  br i1 %epil.iter516.cmp.not, label %.epilog-lcssa518, label %bb.x, !llvm.loop !541

.epilog-lcssa518:                                 ; preds = %bb.x, %.unr-lcssa513
  %.lcssa465 = phi i64 [ %i.wn, %.unr-lcssa513 ], [ %i.wu, %bb.x ]
  %i.wv = add nuw nsw i64 %.5317, 1               ; 2 uses
  %indvars.iv.next359 = add nuw i64 %indvars.iv358, 1
  %exitcond361.not = icmp eq i64 %i.wv, %i.om
  br i1 %exitcond361.not, label %.loopexit, label %.preheader279, !llvm.loop !542

.preheader:                                       ; preds = %.preheader.lr.ph, %.unr-lcssa533
  %.6327 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.yk, %.unr-lcssa533 ] ; 6 uses
  %.10326 = phi i64 [ 0, %.preheader.lr.ph ], [ %.lcssa466, %.unr-lcssa533 ] ; 2 uses
  %i.ww = sub nsw i64 %i.om, %.6327
  %i.wx = mul nuw nsw i64 %.6327, %i.om
  %i.wy = getelementptr [8 x i8], ptr %.0188, i64 %i.wx ; 5 uses
  %xtraiter530 = and i64 %i.ww, 3                 ; 2 uses
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod531.not, label %.prol.loopexit529, label %.prol.preheader528

.prol.preheader528:                               ; preds = %.preheader, %.prol.preheader528
  %.6195325.prol = phi i64 [ %i.xe, %.prol.preheader528 ], [ %.6327, %.preheader ] ; 2 uses
  %.11324.prol = phi i64 [ %i.xf, %.prol.preheader528 ], [ %.10326, %.preheader ] ; 2 uses
  %prol.iter532 = phi i64 [ %prol.iter532.next, %.prol.preheader528 ], [ 0, %.preheader ]
  %i.wz = getelementptr [8 x i8], ptr %i.wy, i64 %.6195325.prol
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !144
  %i.xb = getelementptr [8 x i8], ptr %i.uc, i64 %.11324.prol
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !208
  %i.xd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xc
  store double %i.xa, ptr %i.xd, align 8, !tbaa !144
  %i.xe = add nuw nsw i64 %.6195325.prol, 1       ; 2 uses
  %i.xf = add nsw i64 %.11324.prol, 1             ; 3 uses
  %prol.iter532.next = add i64 %prol.iter532, 1   ; 2 uses
  %prol.iter532.cmp.not = icmp eq i64 %prol.iter532.next, %xtraiter530
  br i1 %prol.iter532.cmp.not, label %.prol.loopexit529, label %.prol.preheader528, !llvm.loop !543

.prol.loopexit529:                                ; preds = %.prol.preheader528, %.preheader
  %.lcssa466.unr = phi i64 [ poison, %.preheader ], [ %i.xf, %.prol.preheader528 ]
  %.6195325.unr = phi i64 [ %.6327, %.preheader ], [ %i.xe, %.prol.preheader528 ]
  %.11324.unr = phi i64 [ %.10326, %.preheader ], [ %i.xf, %.prol.preheader528 ]
  %i.xg = add i64 %i.ud, %.6327
  %i.xh = icmp ugt i64 %i.xg, -4
  br i1 %i.xh, label %.unr-lcssa533, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit529, %.preheader.new
  %.6195325 = phi i64 [ %i.yi, %.preheader.new ], [ %.6195325.unr, %.prol.loopexit529 ] ; 5 uses
  %.11324 = phi i64 [ %i.yj, %.preheader.new ], [ %.11324.unr, %.prol.loopexit529 ] ; 5 uses
  %i.xi = getelementptr [8 x i8], ptr %i.wy, i64 %.6195325
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !144
  %i.xk = getelementptr [8 x i8], ptr %i.uc, i64 %.11324
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !208
  %i.xm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xl
  store double %i.xj, ptr %i.xm, align 8, !tbaa !144
  %i.xn = getelementptr [8 x i8], ptr %i.wy, i64 %.6195325
  %i.xo = getelementptr i8, ptr %i.xn, i64 8
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !144
  %i.xq = getelementptr [8 x i8], ptr %i.uc, i64 %.11324
  %i.xr = getelementptr i8, ptr %i.xq, i64 8
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !208
  %i.xt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xs
  store double %i.xp, ptr %i.xt, align 8, !tbaa !144
  %i.xu = getelementptr [8 x i8], ptr %i.wy, i64 %.6195325
  %i.xv = getelementptr i8, ptr %i.xu, i64 16
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !144
  %i.xx = getelementptr [8 x i8], ptr %i.uc, i64 %.11324
  %i.xy = getelementptr i8, ptr %i.xx, i64 16
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !208
  %i.ya = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xz
  store double %i.xw, ptr %i.ya, align 8, !tbaa !144
  %i.yb = getelementptr [8 x i8], ptr %i.wy, i64 %.6195325
  %i.yc = getelementptr i8, ptr %i.yb, i64 24
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !144
  %i.ye = getelementptr [8 x i8], ptr %i.uc, i64 %.11324
  %i.yf = getelementptr i8, ptr %i.ye, i64 24
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !208
  %i.yh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.yg
  store double %i.yd, ptr %i.yh, align 8, !tbaa !144
  %i.yi = add nuw nsw i64 %.6195325, 4            ; 2 uses
  %i.yj = add nsw i64 %.11324, 4                  ; 2 uses
  %exitcond364.not.3 = icmp eq i64 %i.yi, %i.om
  br i1 %exitcond364.not.3, label %.unr-lcssa533, label %.preheader.new, !llvm.loop !544

.unr-lcssa533:                                    ; preds = %.preheader.new, %.prol.loopexit529
  %.lcssa466 = phi i64 [ %.lcssa466.unr, %.prol.loopexit529 ], [ %i.yj, %.preheader.new ]
  %i.yk = add nuw nsw i64 %.6327, 1               ; 2 uses
  %exitcond365.not = icmp eq i64 %i.yk, %i.om
  br i1 %exitcond365.not, label %.loopexit, label %.preheader, !llvm.loop !545

.loopexit:                                        ; preds = %.epilog-lcssa518, %._crit_edge320, %.unr-lcssa533, %.preheader284, %._crit_edge313
  %i.yl = icmp eq i32 %.pre366, 0
  br i1 %i.yl, label %.loopexit.thread, label %.loopexit.thread414

.loopexit.thread:                                 ; preds = %.preheader285, %.loopexit
  %i.ym = mul nsw i64 %i.om, %i.om
  br label %bb.y

.loopexit.thread414:                              ; preds = %.preheader287, %.loopexit
  %i.yn = add nsw i64 %i.om, 1
  %i.yo = mul nsw i64 %i.yn, %i.om
  %i.yp = sdiv i64 %i.yo, 2
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.thread, %.loopexit.thread414
  %.pn = phi i64 [ %i.ym, %.loopexit.thread ], [ %i.yp, %.loopexit.thread414 ]
  %.1198 = add nsw i64 %.pn, %.0197328
  %i.yq = load i64, ptr %i.nw, align 8, !tbaa !521
  %i.yr = add nsw i64 %i.yq, -1
  %i.ys = icmp slt i64 %i.oh, %i.yr
  br i1 %i.ys, label %bb.n, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit, !llvm.loop !546

_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit: ; preds = %bb.s, %bb.y, %.loopexit.i272, %bb.m, %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit, %bb.h, %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit ], [ 0, %bb.m ], [ 0, %_ZN6casadi13casadi_lb_eigIdEET_PKxPKS1_.exit ], [ 0, %.loopexit.i272 ], [ %i.sw, %bb.s ], [ 0, %bb.y ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @_ZN6casadi12ScopedTimingD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
end_hunk_0
