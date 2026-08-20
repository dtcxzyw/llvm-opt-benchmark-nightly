loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@dlansf_:bb.a
  %i.co = load double, ptr %i.cn, align 8, !tbaa !9 ; 3 uses
  %i.cp = fcmp oge double %i.co, 0.000000e+00
  %i.cq = fneg double %i.co
  %i.cr = select i1 %i.cp, double %i.co, double %i.cq ; 3 uses
  store double %i.cr, ptr %i.c, align 8, !tbaa !9
  %i.cs = fcmp olt double %.101025, %i.cr
  br i1 %i.cs, label %._crit_edge1948, label %bb.q

bb.q:                                             ; preds = %.lr.ph1027
  %i.ct = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not977 = icmp eq i32 %i.ct, 0
  %.pre1946 = load i32, ptr %i.d, align 4, !tbaa !8
  %.pre1949 = load double, ptr %i.c, align 8
  %spec.select2224 = select i1 %.not977, double %.101025, double %.pre1949
  br label %._crit_edge1948

._crit_edge1948:                                  ; preds = %bb.q, %.lr.ph1027
  %i.cu = phi i32 [ %.pre1946, %bb.q ], [ %i.cj, %.lr.ph1027 ] ; 2 uses
  %.11 = phi double [ %spec.select2224, %bb.q ], [ %i.cr, %.lr.ph1027 ] ; 2 uses
  %i.cv = add nuw nsw i32 %.37971024, 1
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !8
  %.not976.not = icmp slt i32 %.37971024, %i.cw
  br i1 %.not976.not, label %.lr.ph1027, label %._crit_edge1028.loopexit, !llvm.loop !18

._crit_edge1028.loopexit:                         ; preds = %._crit_edge1948
  %.pre1950 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %._crit_edge1028

._crit_edge1028:                                  ; preds = %._crit_edge1028.loopexit, %.lr.ph1033
  %i.cx = phi i32 [ %i.cg, %.lr.ph1033 ], [ %.pre1950, %._crit_edge1028.loopexit ] ; 2 uses
  %i.cy = phi i32 [ %.pre1947, %.lr.ph1033 ], [ %i.cu, %._crit_edge1028.loopexit ] ; 2 uses
  %.10.lcssa = phi double [ %.91031, %.lr.ph1033 ], [ %.11, %._crit_edge1028.loopexit ] ; 2 uses
  %i.cz = add nsw i32 %i.cy, 1                    ; 2 uses
  store i32 %i.cz, ptr %i.d, align 4, !tbaa !8
  %.not975.not = icmp slt i32 %i.cy, %i.cx
  br i1 %.not975.not, label %.lr.ph1033, label %.loopexit, !llvm.loop !19

bb.r:                                             ; preds = %bb.f
  %i.da = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #7
  %.not855 = icmp eq i32 %i.da, 0
  br i1 %.not855, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.db = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %.not856 = icmp eq i32 %i.db, 0
  br i1 %.not856, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = load i8, ptr %0, align 1, !tbaa !20
  %i.dd = icmp eq i8 %i.dc, 49
  br i1 %i.dd, label %bb.u, label %bb.cj

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.de = load i32, ptr %3, align 4, !tbaa !8     ; 44 uses
  %i.df = sdiv i32 %i.de, 2                       ; 82 uses
  store i32 %i.df, ptr %i.e, align 4, !tbaa !8
  %.not946 = icmp eq i32 %spec.store.select, 0    ; 2 uses
  br i1 %.not, label %bb.v, label %bb.ax

bb.v:                                             ; preds = %bb.u
  br i1 %.not946, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not852.not.not.not.not.not.not.not.not, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = add nsw i32 %i.df, -1                   ; 4 uses
  %.not966.not1436 = icmp sgt i32 %i.de, 1
  br i1 %.not966.not1436, label %._crit_edge1440.thread, label %._crit_edge1440

._crit_edge1440.thread:                           ; preds = %bb.x
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, i8 0, i64 %i.dj, i1 false), !tbaa !9
  br label %.lr.ph1464

._crit_edge1440:                                  ; preds = %bb.x
  %.not9681461 = icmp slt i32 %i.de, -1
  br i1 %.not9681461, label %.thread, label %.lr.ph1464

.thread:                                          ; preds = %._crit_edge1440
  %i.dk = load double, ptr %5, align 8, !tbaa !9
  br label %.loopexit

.lr.ph1464:                                       ; preds = %._crit_edge1440.thread, %._crit_edge1440
  %i.dl = shl nsw i32 %i.df, 1
  %i.dm = sext i32 %i.dg to i64
  %i.dn = sext i32 %.0784 to i64
  %i.do = sext i32 %i.df to i64
  %i.dp = add nsw i32 %i.df, 1                    ; 2 uses
  %wide.trip.count1858 = zext i32 %i.dp to i64
  %wide.trip.count1855 = zext i32 %i.dg to i64    ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph1464, %._crit_edge1455
  %indvars.iv1846 = phi i64 [ 0, %.lr.ph1464 ], [ %indvars.iv.next1847, %._crit_edge1455 ] ; 10 uses
  %indvars.iv1842 = phi i32 [ %i.df, %.lr.ph1464 ], [ %indvars.iv.next1843, %._crit_edge1455 ] ; 5 uses
  %i.dq = sub nsw i64 %wide.trip.count1855, %indvars.iv1846
  %i.dr = zext i32 %indvars.iv1842 to i64         ; 2 uses
  %i.ds = add nsw i64 %indvars.iv1846, %i.do      ; 3 uses
  %.not969.not1442 = icmp sgt i64 %i.ds, 0
  %i.dt = mul nsw i64 %indvars.iv1846, %i.dn      ; 4 uses
  br i1 %.not969.not1442, label %.lr.ph1445, label %._crit_edge1446

.lr.ph1445:                                       ; preds = %bb.y
  %invariant.gep2202 = getelementptr [8 x i8], ptr %4, i64 %i.dt ; 5 uses
  %xtraiter2457 = and i64 %i.dr, 3                ; 3 uses
  %i.du = add i32 %indvars.iv1842, -1
  %i.dv = icmp ult i32 %i.du, 3
  br i1 %i.dv, label %.epil.preheader2456, label %.lr.ph1445.new

.lr.ph1445.new:                                   ; preds = %.lr.ph1445
  %unroll_iter2464 = and i64 %i.dr, 4294967292
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph1445.new
  %indvars.iv1839 = phi i64 [ 0, %.lr.ph1445.new ], [ %indvars.iv.next1840.3, %bb.z ] ; 6 uses
  %i.dw = phi double [ 0.000000e+00, %.lr.ph1445.new ], [ %i.ez, %bb.z ]
  %niter2465 = phi i64 [ 0, %.lr.ph1445.new ], [ %niter2465.next.3, %bb.z ]
  %gep2203 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv1839
  %i.dx = load double, ptr %gep2203, align 8, !tbaa !9 ; 3 uses
  %i.dy = fcmp oge double %i.dx, 0.000000e+00
  %i.dz = fneg double %i.dx
  %i.ea = select i1 %i.dy, double %i.dx, double %i.dz ; 2 uses
  %i.eb = fadd double %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1839 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !9
  %i.ee = fadd double %i.ea, %i.ed
  store double %i.ee, ptr %i.ec, align 8, !tbaa !9
  %indvars.iv.next1840 = or disjoint i64 %indvars.iv1839, 1 ; 2 uses
  %gep2203.1 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv.next1840
  %i.ef = load double, ptr %gep2203.1, align 8, !tbaa !9 ; 3 uses
  %i.eg = fcmp oge double %i.ef, 0.000000e+00
  %i.eh = fneg double %i.ef
  %i.ei = select i1 %i.eg, double %i.ef, double %i.eh ; 2 uses
  %i.ej = fadd double %i.eb, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840 ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !9
  %i.em = fadd double %i.ei, %i.el
  store double %i.em, ptr %i.ek, align 8, !tbaa !9
  %indvars.iv.next1840.1 = or disjoint i64 %indvars.iv1839, 2 ; 2 uses
  %gep2203.2 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv.next1840.1
  %i.en = load double, ptr %gep2203.2, align 8, !tbaa !9 ; 3 uses
  %i.eo = fcmp oge double %i.en, 0.000000e+00
  %i.ep = fneg double %i.en
  %i.eq = select i1 %i.eo, double %i.en, double %i.ep ; 2 uses
  %i.er = fadd double %i.ej, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840.1 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !9
  %i.eu = fadd double %i.eq, %i.et
  store double %i.eu, ptr %i.es, align 8, !tbaa !9
  %indvars.iv.next1840.2 = or disjoint i64 %indvars.iv1839, 3 ; 2 uses
  %gep2203.3 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv.next1840.2
  %i.ev = load double, ptr %gep2203.3, align 8, !tbaa !9 ; 3 uses
  %i.ew = fcmp oge double %i.ev, 0.000000e+00
  %i.ex = fneg double %i.ev
  %i.ey = select i1 %i.ew, double %i.ev, double %i.ex ; 2 uses
  %i.ez = fadd double %i.er, %i.ey                ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840.2 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !9
  %i.fc = fadd double %i.ey, %i.fb
  store double %i.fc, ptr %i.fa, align 8, !tbaa !9
  %indvars.iv.next1840.3 = add nuw nsw i64 %indvars.iv1839, 4 ; 2 uses
  %niter2465.next.3 = add i64 %niter2465, 4       ; 2 uses
  %niter2465.ncmp.3 = icmp eq i64 %niter2465.next.3, %unroll_iter2464
  br i1 %niter2465.ncmp.3, label %._crit_edge1446.loopexit.unr-lcssa, label %bb.z, !llvm.loop !21

._crit_edge1446.loopexit.unr-lcssa:               ; preds = %bb.z
  %lcmp.mod2461.not = icmp eq i64 %xtraiter2457, 0
  br i1 %lcmp.mod2461.not, label %._crit_edge1446, label %.epil.preheader2456

.epil.preheader2456:                              ; preds = %._crit_edge1446.loopexit.unr-lcssa, %.lr.ph1445
  %indvars.iv1839.epil.init = phi i64 [ 0, %.lr.ph1445 ], [ %indvars.iv.next1840.3, %._crit_edge1446.loopexit.unr-lcssa ]
  %.epil.init2460 = phi double [ 0.000000e+00, %.lr.ph1445 ], [ %i.ez, %._crit_edge1446.loopexit.unr-lcssa ]
  %lcmp.mod2463 = icmp ne i64 %xtraiter2457, 0
  tail call void @llvm.assume(i1 %lcmp.mod2463)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader2456
  %indvars.iv1839.epil = phi i64 [ %indvars.iv1839.epil.init, %.epil.preheader2456 ], [ %indvars.iv.next1840.epil, %bb.aa ] ; 3 uses
  %i.fd = phi double [ %.epil.init2460, %.epil.preheader2456 ], [ %i.fi, %bb.aa ]
  %epil.iter2458 = phi i64 [ 0, %.epil.preheader2456 ], [ %epil.iter2458.next, %bb.aa ]
  %gep2203.epil = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv1839.epil
  %i.fe = load double, ptr %gep2203.epil, align 8, !tbaa !9 ; 3 uses
  %i.ff = fcmp oge double %i.fe, 0.000000e+00
  %i.fg = fneg double %i.fe
  %i.fh = select i1 %i.ff, double %i.fe, double %i.fg ; 2 uses
  %i.fi = fadd double %i.fd, %i.fh                ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1839.epil ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !9
  %i.fl = fadd double %i.fh, %i.fk
  store double %i.fl, ptr %i.fj, align 8, !tbaa !9
  %indvars.iv.next1840.epil = add nuw nsw i64 %indvars.iv1839.epil, 1
  %epil.iter2458.next = add i64 %epil.iter2458, 1 ; 2 uses
  %epil.iter2458.cmp.not = icmp eq i64 %epil.iter2458.next, %xtraiter2457
  br i1 %epil.iter2458.cmp.not, label %._crit_edge1446, label %bb.aa, !llvm.loop !22

._crit_edge1446:                                  ; preds = %._crit_edge1446.loopexit.unr-lcssa, %bb.aa, %bb.y
  %.lcssa14561459 = phi double [ 0.000000e+00, %bb.y ], [ %i.ez, %._crit_edge1446.loopexit.unr-lcssa ], [ %i.fi, %bb.aa ] ; 2 uses
  %.5799.lcssa = phi i32 [ 0, %bb.y ], [ %indvars.iv1842, %bb.aa ], [ %indvars.iv1842, %._crit_edge1446.loopexit.unr-lcssa ] ; 4 uses
  %i.fm = sext i32 %.5799.lcssa to i64
  %i.fn = getelementptr [8 x i8], ptr %4, i64 %i.dt
  %i.fo = getelementptr [8 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !9 ; 3 uses
  %i.fq = fcmp oge double %i.fp, 0.000000e+00
  %i.fr = fneg double %i.fp
  %i.fs = select i1 %i.fq, double %i.fp, double %i.fr
  %i.ft = fadd double %.lcssa14561459, %i.fs
  %i.fu = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ds
  store double %i.ft, ptr %i.fu, align 8, !tbaa !9
  %i.fv = icmp eq i32 %.5799.lcssa, %i.dl
  br i1 %i.fv, label %._crit_edge1468, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1446
  %6 = getelementptr [8 x i8], ptr %4, i64 %i.dt
  %i.fw = sext i32 %.5799.lcssa to i64
  %i.fx = getelementptr [8 x i8], ptr %6, i64 %i.fw
  %7 = getelementptr i8, ptr %i.fx, i64 8
  %i.fy = load double, ptr %7, align 8, !tbaa !9  ; 3 uses
  %i.fz = fcmp oge double %i.fy, 0.000000e+00
  %i.ga = fneg double %i.fy
  %i.gb = select i1 %i.fz, double %i.fy, double %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1846 ; 4 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !9
  %i.ge = fadd double %i.gd, %i.gb                ; 2 uses
  store double %i.ge, ptr %i.gc, align 8, !tbaa !9
  %.not970.not1450 = icmp slt i64 %indvars.iv1846, %i.dm
  br i1 %.not970.not1450, label %.lr.ph1454.preheader, label %._crit_edge1455

.lr.ph1454.preheader:                             ; preds = %bb.ab
  %8 = zext nneg i32 %.5799.lcssa to i64
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %invariant.gep2204 = getelementptr [8 x i8], ptr %4, i64 %i.dt ; 5 uses
  %xtraiter2466 = and i64 %i.dq, 3                ; 2 uses
  %lcmp.mod2467.not = icmp eq i64 %xtraiter2466, 0
  br i1 %lcmp.mod2467.not, label %.lr.ph1454.prol.loopexit, label %.lr.ph1454.prol

.lr.ph1454.prol:                                  ; preds = %.lr.ph1454.preheader, %.lr.ph1454.prol
  %indvars.iv1850.prol = phi i64 [ %indvars.iv.next1851.prol, %.lr.ph1454.prol ], [ %9, %.lr.ph1454.preheader ]
  %indvars.iv1848.prol = phi i64 [ %indvars.iv.next1849.prol, %.lr.ph1454.prol ], [ %indvars.iv1846, %.lr.ph1454.preheader ]
  %i.gf = phi double [ %i.gk, %.lr.ph1454.prol ], [ 0.000000e+00, %.lr.ph1454.preheader ]
  %prol.iter2468 = phi i64 [ %prol.iter2468.next, %.lr.ph1454.prol ], [ 0, %.lr.ph1454.preheader ]
  %indvars.iv.next1849.prol = add nuw nsw i64 %indvars.iv1848.prol, 1 ; 3 uses
  %indvars.iv.next1851.prol = add nuw nsw i64 %indvars.iv1850.prol, 1 ; 3 uses
  %gep2205.prol = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv.next1851.prol
  %i.gg = load double, ptr %gep2205.prol, align 8, !tbaa !9 ; 3 uses
  %i.gh = fcmp oge double %i.gg, 0.000000e+00
  %i.gi = fneg double %i.gg
  %i.gj = select i1 %i.gh, double %i.gg, double %i.gi ; 2 uses
  %i.gk = fadd double %i.gf, %i.gj                ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1849.prol ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !9
  %i.gn = fadd double %i.gj, %i.gm
  store double %i.gn, ptr %i.gl, align 8, !tbaa !9
  %prol.iter2468.next = add i64 %prol.iter2468, 1 ; 2 uses
  %prol.iter2468.cmp.not = icmp eq i64 %prol.iter2468.next, %xtraiter2466
  br i1 %prol.iter2468.cmp.not, label %.lr.ph1454.prol.loopexit, label %.lr.ph1454.prol, !llvm.loop !24

.lr.ph1454.prol.loopexit:                         ; preds = %.lr.ph1454.prol, %.lr.ph1454.preheader
  %.lcssa2289.unr = phi double [ poison, %.lr.ph1454.preheader ], [ %i.gk, %.lr.ph1454.prol ]
  %indvars.iv1850.unr = phi i64 [ %9, %.lr.ph1454.preheader ], [ %indvars.iv.next1851.prol, %.lr.ph1454.prol ]
  %indvars.iv1848.unr = phi i64 [ %indvars.iv1846, %.lr.ph1454.preheader ], [ %indvars.iv.next1849.prol, %.lr.ph1454.prol ]
  %.unr2469 = phi double [ 0.000000e+00, %.lr.ph1454.preheader ], [ %i.gk, %.lr.ph1454.prol ]
  %i.go = sub nsw i64 %indvars.iv1846, %wide.trip.count1855
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %._crit_edge1455.loopexit, label %.lr.ph1454

.lr.ph1454:                                       ; preds = %.lr.ph1454.prol.loopexit, %.lr.ph1454
  %indvars.iv1850 = phi i64 [ %indvars.iv.next1851.3, %.lr.ph1454 ], [ %indvars.iv1850.unr, %.lr.ph1454.prol.loopexit ] ; 4 uses
  %indvars.iv1848 = phi i64 [ %indvars.iv.next1849.3, %.lr.ph1454 ], [ %indvars.iv1848.unr, %.lr.ph1454.prol.loopexit ] ; 4 uses
  %i.gq = phi double [ %i.hz, %.lr.ph1454 ], [ %.unr2469, %.lr.ph1454.prol.loopexit ]
  %i.gr = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv1850
  %gep2205 = getelementptr i8, ptr %i.gr, i64 8
  %i.gs = load double, ptr %gep2205, align 8, !tbaa !9 ; 3 uses
  %i.gt = fcmp oge double %i.gs, 0.000000e+00
  %i.gu = fneg double %i.gs
  %i.gv = select i1 %i.gt, double %i.gs, double %i.gu ; 2 uses
  %i.gw = fadd double %i.gq, %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !9
  %i.ha = fadd double %i.gv, %i.gz
  store double %i.ha, ptr %i.gy, align 8, !tbaa !9
  %i.hb = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv1850
  %gep2205.1 = getelementptr i8, ptr %i.hb, i64 16
  %i.hc = load double, ptr %gep2205.1, align 8, !tbaa !9 ; 3 uses
  %i.hd = fcmp oge double %i.hc, 0.000000e+00
  %i.he = fneg double %i.hc
  %i.hf = select i1 %i.hd, double %i.hc, double %i.he ; 2 uses
  %i.hg = fadd double %i.gw, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !9
  %i.hk = fadd double %i.hf, %i.hj
  store double %i.hk, ptr %i.hi, align 8, !tbaa !9
  %i.hl = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv1850
  %gep2205.2 = getelementptr i8, ptr %i.hl, i64 24
  %i.hm = load double, ptr %gep2205.2, align 8, !tbaa !9 ; 3 uses
  %i.hn = fcmp oge double %i.hm, 0.000000e+00
  %i.ho = fneg double %i.hm
  %i.hp = select i1 %i.hn, double %i.hm, double %i.ho ; 2 uses
  %i.hq = fadd double %i.hg, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !9
  %i.hu = fadd double %i.hp, %i.ht
  store double %i.hu, ptr %i.hs, align 8, !tbaa !9
  %indvars.iv.next1849.3 = add nuw nsw i64 %indvars.iv1848, 4 ; 3 uses
  %indvars.iv.next1851.3 = add nuw nsw i64 %indvars.iv1850, 4 ; 2 uses
  %gep2205.3 = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv.next1851.3
  %i.hv = load double, ptr %gep2205.3, align 8, !tbaa !9 ; 3 uses
  %i.hw = fcmp oge double %i.hv, 0.000000e+00
  %i.hx = fneg double %i.hv
  %i.hy = select i1 %i.hw, double %i.hv, double %i.hx ; 2 uses
  %i.hz = fadd double %i.hq, %i.hy                ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1849.3 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !9
  %i.ic = fadd double %i.hy, %i.ib
  store double %i.ic, ptr %i.ia, align 8, !tbaa !9
  %exitcond1856.not.3 = icmp eq i64 %indvars.iv.next1849.3, %wide.trip.count1855
  br i1 %exitcond1856.not.3, label %._crit_edge1455.loopexit, label %.lr.ph1454, !llvm.loop !25

._crit_edge1455.loopexit:                         ; preds = %.lr.ph1454, %.lr.ph1454.prol.loopexit
  %.lcssa2289 = phi double [ %.lcssa2289.unr, %.lr.ph1454.prol.loopexit ], [ %i.hz, %.lr.ph1454 ]
  %.pre1982 = load double, ptr %i.gc, align 8, !tbaa !9
  br label %._crit_edge1455

._crit_edge1455:                                  ; preds = %._crit_edge1455.loopexit, %bb.ab
  %i.id = phi double [ %i.ge, %bb.ab ], [ %.pre1982, %._crit_edge1455.loopexit ]
  %.lcssa14561458 = phi double [ 0.000000e+00, %bb.ab ], [ %.lcssa2289, %._crit_edge1455.loopexit ] ; 2 uses
  %i.ie = fadd double %.lcssa14561458, %i.id
  store double %i.ie, ptr %i.gc, align 8, !tbaa !9
  %indvars.iv.next1847 = add nuw nsw i64 %indvars.iv1846, 1 ; 2 uses
  %indvars.iv.next1843 = add i32 %indvars.iv1842, 1
  %exitcond1859.not = icmp eq i64 %indvars.iv.next1847, %wide.trip.count1858
  br i1 %exitcond1859.not, label %._crit_edge1465, label %bb.y, !llvm.loop !26

._crit_edge1465:                                  ; preds = %._crit_edge1455
  store double %.lcssa14561458, ptr %i.f, align 8, !tbaa !9
  br label %bb.ac

._crit_edge1468:                                  ; preds = %._crit_edge1446
  %i.if = trunc nuw nsw i64 %indvars.iv1846 to i32
  %i.ig = trunc nsw i64 %i.ds to i32
  store double %.lcssa14561459, ptr %i.f, align 8, !tbaa !9
  %i.ih = add nsw i32 %i.ig, -1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge1468, %._crit_edge1465
  %i.ii = phi i32 [ %i.dg, %._crit_edge1465 ], [ %i.ih, %._crit_edge1468 ]
  %storemerge967.lcssa = phi i32 [ %i.dp, %._crit_edge1465 ], [ %i.if, %._crit_edge1468 ]
  store i32 %storemerge967.lcssa, ptr %i.d, align 4, !tbaa !8
  store i32 %i.ii, ptr %i.b, align 4
  %i.ij = load double, ptr %5, align 8, !tbaa !9  ; 2 uses
  %i.ik = add nsw i32 %i.de, -1
  store i32 %i.ik, ptr %i.a, align 4, !tbaa !8
  %.not9711472 = icmp slt i32 %i.de, 2
  br i1 %.not9711472, label %.loopexit, label %.lr.ph1476

.lr.ph1476:                                       ; preds = %bb.ac, %._crit_edge1983
  %indvars.iv1860 = phi i64 [ %indvars.iv.next1861, %._crit_edge1983 ], [ 1, %bb.ac ] ; 3 uses
  %.121474 = phi double [ %.13, %._crit_edge1983 ], [ %i.ij, %bb.ac ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1860
  %i.im = load double, ptr %i.il, align 8, !tbaa !9 ; 3 uses
  store double %i.im, ptr %i.c, align 8, !tbaa !9
  %i.in = fcmp olt double %.121474, %i.im
  br i1 %i.in, label %._crit_edge1983, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1476
  %i.io = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not972 = icmp eq i32 %i.io, 0
  %.pre1984 = load double, ptr %i.c, align 8
  %spec.select2225 = select i1 %.not972, double %.121474, double %.pre1984
  br label %._crit_edge1983

._crit_edge1983:                                  ; preds = %bb.ad, %.lr.ph1476
  %.13 = phi double [ %spec.select2225, %bb.ad ], [ %i.im, %.lr.ph1476 ] ; 2 uses
  %indvars.iv.next1861 = add nuw nsw i64 %indvars.iv1860, 1
  %i.ip = load i32, ptr %i.a, align 4, !tbaa !8
  %i.iq = sext i32 %i.ip to i64
  %.not971.not = icmp slt i64 %indvars.iv1860, %i.iq
  br i1 %.not971.not, label %.lr.ph1476, label %.loopexit, !llvm.loop !27

bb.ae:                                            ; preds = %bb.w
  %i.ir = add nsw i32 %i.df, 1                    ; 5 uses
  store i32 %i.ir, ptr %i.e, align 4, !tbaa !8
  %i.is = add i32 %i.de, -1                       ; 3 uses
  %.not960.not1478 = icmp slt i32 %i.ir, %i.de
  br i1 %.not960.not1478, label %.lr.ph1481.preheader, label %.preheader993

.lr.ph1481.preheader:                             ; preds = %bb.ae
  %i.it = sext i32 %i.df to i64
  %i.iu = shl nsw i64 %i.it, 3
  %i.iv = getelementptr i8, ptr %5, i64 %i.iu
  %scevgep1863 = getelementptr i8, ptr %i.iv, i64 8
  %i.iw = add nsw i32 %i.de, -2
  %i.ix = sub i32 %i.iw, %i.df
  %i.iy = zext i32 %i.ix to i64
  %i.iz = shl nuw nsw i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1863, i8 0, i64 %i.ja, i1 false), !tbaa !9
  br label %.preheader993

.preheader993:                                    ; preds = %.lr.ph1481.preheader, %bb.ae
  %i.jb = icmp sgt i32 %i.de, -2
  br i1 %i.jb, label %.lr.ph1505, label %.thread2084

.thread2084:                                      ; preds = %.preheader993
  %i.jc = load double, ptr %5, align 8, !tbaa !9
  br label %.loopexit

.lr.ph1505:                                       ; preds = %.preheader993
  %i.jd = zext nneg i32 %i.ir to i64
  %invariant.gep2208 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.jd ; 5 uses
  %wide.trip.count1879 = sext i32 %i.is to i64    ; 3 uses
  %i.je = sext i32 %i.df to i64                   ; 2 uses
  %i.jf = sub nsw i64 %wide.trip.count1879, %i.je
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph1505, %._crit_edge1496
  %indvar2482 = phi i64 [ 0, %.lr.ph1505 ], [ %indvar.next2483, %._crit_edge1496 ] ; 3 uses
  %indvar2471 = phi i32 [ 0, %.lr.ph1505 ], [ %indvar.next2472, %._crit_edge1496 ] ; 2 uses
  %storemerge961.in1508 = phi i32 [ %i.df, %.lr.ph1505 ], [ %storemerge961, %._crit_edge1496 ] ; 8 uses
  %storemerge961.in1503 = phi i32 [ %i.ir, %.lr.ph1505 ], [ %storemerge961.in1508, %._crit_edge1496 ] ; 3 uses
  %i.jg = add i64 %i.jf, %indvar2482
  %i.jh = xor i32 %indvar2471, -1
  %i.ji = add i32 %i.df, %i.jh                    ; 2 uses
  %i.jj = zext i32 %i.ji to i64                   ; 2 uses
  %.not9641483 = icmp slt i32 %storemerge961.in1503, 3
  br i1 %.not9641483, label %._crit_edge1487, label %.lr.ph1486

.lr.ph1486:                                       ; preds = %bb.af
  %i.jk = mul nsw i32 %storemerge961.in1508, %.0784
  %i.jl = sext i32 %i.jk to i64
  %i.jm = add nsw i32 %storemerge961.in1503, -2   ; 2 uses
  %invariant.gep2206 = getelementptr [8 x i8], ptr %4, i64 %i.jl ; 5 uses
  %xtraiter2473 = and i64 %i.jj, 3                ; 3 uses
  %i.jn = add i32 %i.ji, -1
  %i.jo = icmp ult i32 %i.jn, 3
  br i1 %i.jo, label %.epil.preheader2470, label %.lr.ph1486.new

.lr.ph1486.new:                                   ; preds = %.lr.ph1486
  %unroll_iter2480 = and i64 %i.jj, 4294967292
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph1486.new
  %indvars.iv1867 = phi i64 [ 0, %.lr.ph1486.new ], [ %indvars.iv.next1868.3, %bb.ag ] ; 6 uses
  %i.jp = phi double [ 0.000000e+00, %.lr.ph1486.new ], [ %i.kp, %bb.ag ]
  %niter2481 = phi i64 [ 0, %.lr.ph1486.new ], [ %niter2481.next.3, %bb.ag ]
  %gep2207 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv1867
  %i.jq = load double, ptr %gep2207, align 8, !tbaa !9 ; 3 uses
  %i.jr = fcmp oge double %i.jq, 0.000000e+00
  %i.js = fneg double %i.jq
  %i.jt = select i1 %i.jr, double %i.jq, double %i.js ; 2 uses
  %i.ju = fadd double %i.jp, %i.jt
  %gep2209 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv1867 ; 2 uses
  %i.jv = load double, ptr %gep2209, align 8, !tbaa !9
  %i.jw = fadd double %i.jt, %i.jv
  store double %i.jw, ptr %gep2209, align 8, !tbaa !9
  %indvars.iv.next1868 = or disjoint i64 %indvars.iv1867, 1 ; 2 uses
  %gep2207.1 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv.next1868
  %i.jx = load double, ptr %gep2207.1, align 8, !tbaa !9 ; 3 uses
  %i.jy = fcmp oge double %i.jx, 0.000000e+00
  %i.jz = fneg double %i.jx
  %i.ka = select i1 %i.jy, double %i.jx, double %i.jz ; 2 uses
  %i.kb = fadd double %i.ju, %i.ka
  %gep2209.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv.next1868 ; 2 uses
  %i.kc = load double, ptr %gep2209.1, align 8, !tbaa !9
  %i.kd = fadd double %i.ka, %i.kc
  store double %i.kd, ptr %gep2209.1, align 8, !tbaa !9
  %indvars.iv.next1868.1 = or disjoint i64 %indvars.iv1867, 2 ; 2 uses
  %gep2207.2 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv.next1868.1
  %i.ke = load double, ptr %gep2207.2, align 8, !tbaa !9 ; 3 uses
  %i.kf = fcmp oge double %i.ke, 0.000000e+00
  %i.kg = fneg double %i.ke
  %i.kh = select i1 %i.kf, double %i.ke, double %i.kg ; 2 uses
  %i.ki = fadd double %i.kb, %i.kh
  %gep2209.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv.next1868.1 ; 2 uses
  %i.kj = load double, ptr %gep2209.2, align 8, !tbaa !9
  %i.kk = fadd double %i.kh, %i.kj
  store double %i.kk, ptr %gep2209.2, align 8, !tbaa !9
  %indvars.iv.next1868.2 = or disjoint i64 %indvars.iv1867, 3 ; 2 uses
  %gep2207.3 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv.next1868.2
  %i.kl = load double, ptr %gep2207.3, align 8, !tbaa !9 ; 3 uses
  %i.km = fcmp oge double %i.kl, 0.000000e+00
  %i.kn = fneg double %i.kl
  %i.ko = select i1 %i.km, double %i.kl, double %i.kn ; 2 uses
  %i.kp = fadd double %i.ki, %i.ko                ; 3 uses
  %gep2209.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv.next1868.2 ; 2 uses
  %i.kq = load double, ptr %gep2209.3, align 8, !tbaa !9
  %i.kr = fadd double %i.ko, %i.kq
  store double %i.kr, ptr %gep2209.3, align 8, !tbaa !9
  %indvars.iv.next1868.3 = add nuw nsw i64 %indvars.iv1867, 4 ; 2 uses
  %niter2481.next.3 = add i64 %niter2481, 4       ; 2 uses
  %niter2481.ncmp.3 = icmp eq i64 %niter2481.next.3, %unroll_iter2480
  br i1 %niter2481.ncmp.3, label %._crit_edge1487.thread.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !28

._crit_edge1487:                                  ; preds = %bb.af
  %.not990 = icmp eq i32 %storemerge961.in1503, 1
  br i1 %.not990, label %._crit_edge1487._crit_edge, label %._crit_edge1487.thread

._crit_edge1487._crit_edge:                       ; preds = %._crit_edge1487
  %.pre2010 = mul nsw i32 %storemerge961.in1508, %.0784
  br label %bb.ai

._crit_edge1487.thread.loopexit.unr-lcssa:        ; preds = %bb.ag
  %lcmp.mod2477.not = icmp eq i64 %xtraiter2473, 0
  br i1 %lcmp.mod2477.not, label %._crit_edge1487.thread, label %.epil.preheader2470

.epil.preheader2470:                              ; preds = %._crit_edge1487.thread.loopexit.unr-lcssa, %.lr.ph1486
  %indvars.iv1867.epil.init = phi i64 [ 0, %.lr.ph1486 ], [ %indvars.iv.next1868.3, %._crit_edge1487.thread.loopexit.unr-lcssa ]
  %.epil.init2476 = phi double [ 0.000000e+00, %.lr.ph1486 ], [ %i.kp, %._crit_edge1487.thread.loopexit.unr-lcssa ]
  %lcmp.mod2479 = icmp ne i64 %xtraiter2473, 0
  tail call void @llvm.assume(i1 %lcmp.mod2479)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader2470
  %indvars.iv1867.epil = phi i64 [ %indvars.iv1867.epil.init, %.epil.preheader2470 ], [ %indvars.iv.next1868.epil, %bb.ah ] ; 3 uses
  %i.ks = phi double [ %.epil.init2476, %.epil.preheader2470 ], [ %i.kx, %bb.ah ]
  %epil.iter2474 = phi i64 [ 0, %.epil.preheader2470 ], [ %epil.iter2474.next, %bb.ah ]
  %gep2207.epil = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv1867.epil
  %i.kt = load double, ptr %gep2207.epil, align 8, !tbaa !9 ; 3 uses
  %i.ku = fcmp oge double %i.kt, 0.000000e+00
  %i.kv = fneg double %i.kt
  %i.kw = select i1 %i.ku, double %i.kt, double %i.kv ; 2 uses
  %i.kx = fadd double %i.ks, %i.kw                ; 2 uses
  %gep2209.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv1867.epil ; 2 uses
  %i.ky = load double, ptr %gep2209.epil, align 8, !tbaa !9
  %i.kz = fadd double %i.kw, %i.ky
  store double %i.kz, ptr %gep2209.epil, align 8, !tbaa !9
  %indvars.iv.next1868.epil = add nuw nsw i64 %indvars.iv1867.epil, 1
  %epil.iter2474.next = add i64 %epil.iter2474, 1 ; 2 uses
  %epil.iter2474.cmp.not = icmp eq i64 %epil.iter2474.next, %xtraiter2473
  br i1 %epil.iter2474.cmp.not, label %._crit_edge1487.thread, label %bb.ah, !llvm.loop !29

._crit_edge1487.thread:                           ; preds = %._crit_edge1487.thread.loopexit.unr-lcssa, %bb.ah, %._crit_edge1487
  %.9803.lcssa2083 = phi i32 [ 0, %._crit_edge1487 ], [ %i.jm, %bb.ah ], [ %i.jm, %._crit_edge1487.thread.loopexit.unr-lcssa ] ; 3 uses
  %.lcssa149715002082 = phi double [ 0.000000e+00, %._crit_edge1487 ], [ %i.kp, %._crit_edge1487.thread.loopexit.unr-lcssa ], [ %i.kx, %bb.ah ]
  %i.la = mul nsw i32 %storemerge961.in1508, %.0784 ; 2 uses
  %i.lb = add nsw i32 %.9803.lcssa2083, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !9 ; 3 uses
  %i.lf = fcmp oge double %i.le, 0.000000e+00
  %i.lg = fneg double %i.le
  %i.lh = select i1 %i.lf, double %i.le, double %i.lg
  %i.li = fadd double %.lcssa149715002082, %i.lh
  %i.lj = add nuw nsw i32 %.9803.lcssa2083, %i.ir
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.lk ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !9
  %i.ln = fadd double %i.lm, %i.li
  store double %i.ln, ptr %i.ll, align 8, !tbaa !9
  %i.lo = add nuw nsw i32 %.9803.lcssa2083, 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge1487._crit_edge, %._crit_edge1487.thread
  %.pre-phi2011 = phi i32 [ %.pre2010, %._crit_edge1487._crit_edge ], [ %i.la, %._crit_edge1487.thread ] ; 2 uses
  %.10804 = phi i32 [ 0, %._crit_edge1487._crit_edge ], [ %i.lo, %._crit_edge1487.thread ] ; 2 uses
  %i.lp = add nsw i32 %.10804, %.pre-phi2011
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lq
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !9 ; 3 uses
  %i.lt = fcmp oge double %i.ls, 0.000000e+00
  %i.lu = fneg double %i.ls
  %i.lv = select i1 %i.lt, double %i.ls, double %i.lu ; 2 uses
  %i.lw = sext i32 %storemerge961.in1508 to i64   ; 3 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %5, i64 %i.lw ; 3 uses
  store double %i.lv, ptr %i.lx, align 8, !tbaa !9
  %.not965.not1491 = icmp slt i32 %storemerge961.in1508, %i.is
  br i1 %.not965.not1491, label %.lr.ph1495.preheader, label %._crit_edge1496

.lr.ph1495.preheader:                             ; preds = %bb.ai
  %i.ly = zext nneg i32 %.10804 to i64            ; 2 uses
  %i.lz = sext i32 %.pre-phi2011 to i64
  %invariant.gep2210 = getelementptr [8 x i8], ptr %4, i64 %i.lz ; 5 uses
  %xtraiter2484 = and i64 %i.jg, 3                ; 2 uses
  %lcmp.mod2485.not = icmp eq i64 %xtraiter2484, 0
  br i1 %lcmp.mod2485.not, label %.lr.ph1495.prol.loopexit, label %.lr.ph1495.prol

.lr.ph1495.prol:                                  ; preds = %.lr.ph1495.preheader, %.lr.ph1495.prol
  %indvars.iv1874.prol = phi i64 [ %indvars.iv.next1875.prol, %.lr.ph1495.prol ], [ %i.ly, %.lr.ph1495.preheader ]
  %indvars.iv1872.prol = phi i64 [ %indvars.iv.next1873.prol, %.lr.ph1495.prol ], [ %i.lw, %.lr.ph1495.preheader ]
  %i.ma = phi double [ %i.mf, %.lr.ph1495.prol ], [ 0.000000e+00, %.lr.ph1495.preheader ]
  %prol.iter2486 = phi i64 [ %prol.iter2486.next, %.lr.ph1495.prol ], [ 0, %.lr.ph1495.preheader ]
  %indvars.iv.next1873.prol = add nsw i64 %indvars.iv1872.prol, 1 ; 3 uses
  %indvars.iv.next1875.prol = add nuw nsw i64 %indvars.iv1874.prol, 1 ; 3 uses
  %gep2211.prol = getelementptr [8 x i8], ptr %invariant.gep2210, i64 %indvars.iv.next1875.prol
  %i.mb = load double, ptr %gep2211.prol, align 8, !tbaa !9 ; 3 uses
  %i.mc = fcmp oge double %i.mb, 0.000000e+00
  %i.md = fneg double %i.mb
  %i.me = select i1 %i.mc, double %i.mb, double %i.md ; 2 uses
  %i.mf = fadd double %i.ma, %i.me                ; 3 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.next1873.prol ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !9
  %i.mi = fadd double %i.me, %i.mh
  store double %i.mi, ptr %i.mg, align 8, !tbaa !9
  %prol.iter2486.next = add i64 %prol.iter2486, 1 ; 2 uses
  %prol.iter2486.cmp.not = icmp eq i64 %prol.iter2486.next, %xtraiter2484
  br i1 %prol.iter2486.cmp.not, label %.lr.ph1495.prol.loopexit, label %.lr.ph1495.prol, !llvm.loop !30

.lr.ph1495.prol.loopexit:                         ; preds = %.lr.ph1495.prol, %.lr.ph1495.preheader
  %.lcssa2286.unr = phi double [ poison, %.lr.ph1495.preheader ], [ %i.mf, %.lr.ph1495.prol ]
  %indvars.iv1874.unr = phi i64 [ %i.ly, %.lr.ph1495.preheader ], [ %indvars.iv.next1875.prol, %.lr.ph1495.prol ]
  %indvars.iv1872.unr = phi i64 [ %i.lw, %.lr.ph1495.preheader ], [ %indvars.iv.next1873.prol, %.lr.ph1495.prol ]
  %.unr2487 = phi double [ 0.000000e+00, %.lr.ph1495.preheader ], [ %i.mf, %.lr.ph1495.prol ]
  %i.mj = add i64 %indvar2482, %wide.trip.count1879
  %i.mk = sub i64 %i.je, %i.mj
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %._crit_edge1496.loopexit, label %.lr.ph1495

.lr.ph1495:                                       ; preds = %.lr.ph1495.prol.loopexit, %.lr.ph1495
  %indvars.iv1874 = phi i64 [ %indvars.iv.next1875.3, %.lr.ph1495 ], [ %indvars.iv1874.unr, %.lr.ph1495.prol.loopexit ] ; 4 uses
  %indvars.iv1872 = phi i64 [ %indvars.iv.next1873.3, %.lr.ph1495 ], [ %indvars.iv1872.unr, %.lr.ph1495.prol.loopexit ] ; 4 uses
  %i.mm = phi double [ %i.nv, %.lr.ph1495 ], [ %.unr2487, %.lr.ph1495.prol.loopexit ]
  %i.mn = getelementptr [8 x i8], ptr %invariant.gep2210, i64 %indvars.iv1874
  %gep2211 = getelementptr i8, ptr %i.mn, i64 8
  %i.mo = load double, ptr %gep2211, align 8, !tbaa !9 ; 3 uses
  %i.mp = fcmp oge double %i.mo, 0.000000e+00
  %i.mq = fneg double %i.mo
  %i.mr = select i1 %i.mp, double %i.mo, double %i.mq ; 2 uses
  %i.ms = fadd double %i.mm, %i.mr
  %i.mt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1872
  %i.mu = getelementptr i8, ptr %i.mt, i64 8      ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@dlansf_:bb.a
  %i.aof = load double, ptr %gep2181.2, align 8, !tbaa !9
  %i.aog = fadd double %i.aof, %i.aoe
  store double %i.aog, ptr %gep2181.2, align 8, !tbaa !9
  %i.aoh = fadd double %i.aoe, %i.aoa
  %indvars.iv.next1743.2 = or disjoint i64 %indvars.iv1742, 3 ; 2 uses
  %gep2179.3 = getelementptr [8 x i8], ptr %invariant.gep2178, i64 %indvars.iv.next1743.2
  %i.aoi = load double, ptr %gep2179.3, align 8, !tbaa !9 ; 3 uses
  %i.aoj = fcmp oge double %i.aoi, 0.000000e+00
  %i.aok = fneg double %i.aoi
  %i.aol = select i1 %i.aoj, double %i.aoi, double %i.aok ; 2 uses
  %gep2181.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2180, i64 %indvars.iv.next1743.2 ; 2 uses
  %i.aom = load double, ptr %gep2181.3, align 8, !tbaa !9
  %i.aon = fadd double %i.aom, %i.aol
  store double %i.aon, ptr %gep2181.3, align 8, !tbaa !9
  %i.aoo = fadd double %i.aol, %i.aoh             ; 3 uses
  %indvars.iv.next1743.3 = add nuw nsw i64 %indvars.iv1742, 4 ; 2 uses
  %niter2384.next.3 = add i64 %niter2384, 4       ; 2 uses
  %niter2384.ncmp.3 = icmp eq i64 %niter2384.next.3, %unroll_iter2383
  br i1 %niter2384.ncmp.3, label %._crit_edge1289.unr-lcssa, label %.lr.ph1288.new, !llvm.loop !65

._crit_edge1289.unr-lcssa:                        ; preds = %.lr.ph1288.new
  br i1 %lcmp.mod2380.not, label %._crit_edge1289, label %.epil.preheader2375

.epil.preheader2375:                              ; preds = %._crit_edge1289.unr-lcssa, %.lr.ph1288
  %indvars.iv1742.epil.init = phi i64 [ 0, %.lr.ph1288 ], [ %indvars.iv.next1743.3, %._crit_edge1289.unr-lcssa ]
  %.epil.init2379 = phi double [ 0.000000e+00, %.lr.ph1288 ], [ %i.aoo, %._crit_edge1289.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2382)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.epil.preheader2375
  %indvars.iv1742.epil = phi i64 [ %indvars.iv1742.epil.init, %.epil.preheader2375 ], [ %indvars.iv.next1743.epil, %bb.br ] ; 3 uses
  %i.aop = phi double [ %.epil.init2379, %.epil.preheader2375 ], [ %i.aow, %bb.br ]
  %epil.iter2377 = phi i64 [ 0, %.epil.preheader2375 ], [ %epil.iter2377.next, %bb.br ]
  %gep2179.epil = getelementptr [8 x i8], ptr %invariant.gep2178, i64 %indvars.iv1742.epil
  %i.aoq = load double, ptr %gep2179.epil, align 8, !tbaa !9 ; 3 uses
  %i.aor = fcmp oge double %i.aoq, 0.000000e+00
  %i.aos = fneg double %i.aoq
  %i.aot = select i1 %i.aor, double %i.aoq, double %i.aos ; 2 uses
  %gep2181.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2180, i64 %indvars.iv1742.epil ; 2 uses
  %i.aou = load double, ptr %gep2181.epil, align 8, !tbaa !9
  %i.aov = fadd double %i.aou, %i.aot
  store double %i.aov, ptr %gep2181.epil, align 8, !tbaa !9
  %i.aow = fadd double %i.aot, %i.aop             ; 2 uses
  %indvars.iv.next1743.epil = add nuw nsw i64 %indvars.iv1742.epil, 1
  %epil.iter2377.next = add i64 %epil.iter2377, 1 ; 2 uses
  %epil.iter2377.cmp.not = icmp eq i64 %epil.iter2377.next, %xtraiter2376
  br i1 %epil.iter2377.cmp.not, label %._crit_edge1289, label %bb.br, !llvm.loop !66

._crit_edge1289:                                  ; preds = %bb.br, %._crit_edge1289.unr-lcssa
  %.lcssa2305 = phi double [ %i.aoo, %._crit_edge1289.unr-lcssa ], [ %i.aow, %bb.br ] ; 2 uses
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1747
  store double %.lcssa2305, ptr %i.aox, align 8, !tbaa !9
  %indvars.iv.next1748 = add nuw nsw i64 %indvars.iv1747, 1 ; 2 uses
  %exitcond1751.not = icmp eq i64 %indvars.iv.next1748, %wide.trip.count1750
  br i1 %exitcond1751.not, label %._crit_edge1300, label %.lr.ph1288, !llvm.loop !67

._crit_edge1300:                                  ; preds = %._crit_edge1289
  store double %.lcssa2305, ptr %i.f, align 8, !tbaa !9
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1283.thread, %._crit_edge1300, %._crit_edge1283
  %.promoted1330 = phi i32 [ %i.ang, %._crit_edge1300 ], [ undef, %._crit_edge1283 ], [ undef, %._crit_edge1283.thread ]
  %storemerge913.lcssa1291 = phi i32 [ %i.df, %._crit_edge1300 ], [ 0, %._crit_edge1283 ], [ 0, %._crit_edge1283.thread ] ; 2 uses
  %i.aoy = mul nsw i32 %storemerge913.lcssa1291, %.0784
  %i.aoz = sext i32 %i.aoy to i64                 ; 2 uses
  %i.apa = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aoz
  %i.apb = load double, ptr %i.apa, align 8, !tbaa !9 ; 3 uses
  %i.apc = fcmp oge double %i.apb, 0.000000e+00
  %i.apd = fneg double %i.apb
  %i.ape = select i1 %i.apc, double %i.apb, double %i.apd ; 3 uses
  %.not915.not1305 = icmp sgt i32 %i.de, 3
  br i1 %.not915.not1305, label %.lr.ph1308.preheader, label %._crit_edge1309

.lr.ph1308.preheader:                             ; preds = %bb.bs
  %i.apf = zext nneg i32 %i.df to i64
  %smax1755 = tail call i32 @llvm.smax.i32(i32 %i.df, i32 2)
  %wide.trip.count1756 = zext nneg i32 %smax1755 to i64
  %invariant.gep2182 = getelementptr [8 x i8], ptr %4, i64 %i.aoz ; 5 uses
  %invariant.gep2184 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.apf ; 5 uses
  %i.apg = add nsw i64 %wide.trip.count1756, -1   ; 2 uses
  %xtraiter2385 = and i64 %i.apg, 3               ; 3 uses
  %i.aph = icmp slt i32 %i.de, 10
  br i1 %i.aph, label %.lr.ph1308.epil.preheader, label %.lr.ph1308.preheader.new

.lr.ph1308.preheader.new:                         ; preds = %.lr.ph1308.preheader
  %unroll_iter2392 = and i64 %i.apg, -4
  br label %.lr.ph1308

.lr.ph1308:                                       ; preds = %.lr.ph1308, %.lr.ph1308.preheader.new
  %indvars.iv1752 = phi i64 [ 1, %.lr.ph1308.preheader.new ], [ %indvars.iv.next1753.3, %.lr.ph1308 ] ; 6 uses
  %i.api = phi double [ %i.ape, %.lr.ph1308.preheader.new ], [ %i.aqk, %.lr.ph1308 ]
  %niter2393 = phi i64 [ 0, %.lr.ph1308.preheader.new ], [ %niter2393.next.3, %.lr.ph1308 ]
  %gep2183 = getelementptr [8 x i8], ptr %invariant.gep2182, i64 %indvars.iv1752
  %i.apj = load double, ptr %gep2183, align 8, !tbaa !9 ; 3 uses
  %i.apk = fcmp oge double %i.apj, 0.000000e+00
  %i.apl = fneg double %i.apj
  %i.apm = select i1 %i.apk, double %i.apj, double %i.apl ; 2 uses
  %gep2185 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2184, i64 %indvars.iv1752 ; 2 uses
  %i.apn = load double, ptr %gep2185, align 8, !tbaa !9
  %i.apo = fadd double %i.apn, %i.apm
  store double %i.apo, ptr %gep2185, align 8, !tbaa !9
  %i.app = fadd double %i.apm, %i.api
  %indvars.iv.next1753 = add nuw nsw i64 %indvars.iv1752, 1 ; 2 uses
  %gep2183.1 = getelementptr [8 x i8], ptr %invariant.gep2182, i64 %indvars.iv.next1753
  %i.apq = load double, ptr %gep2183.1, align 8, !tbaa !9 ; 3 uses
  %i.apr = fcmp oge double %i.apq, 0.000000e+00
  %i.aps = fneg double %i.apq
  %i.apt = select i1 %i.apr, double %i.apq, double %i.aps ; 2 uses
  %gep2185.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2184, i64 %indvars.iv.next1753 ; 2 uses
  %i.apu = load double, ptr %gep2185.1, align 8, !tbaa !9
  %i.apv = fadd double %i.apu, %i.apt
  store double %i.apv, ptr %gep2185.1, align 8, !tbaa !9
  %i.apw = fadd double %i.apt, %i.app
  %indvars.iv.next1753.1 = add nuw nsw i64 %indvars.iv1752, 2 ; 2 uses
  %gep2183.2 = getelementptr [8 x i8], ptr %invariant.gep2182, i64 %indvars.iv.next1753.1
  %i.apx = load double, ptr %gep2183.2, align 8, !tbaa !9 ; 3 uses
  %i.apy = fcmp oge double %i.apx, 0.000000e+00
  %i.apz = fneg double %i.apx
  %i.aqa = select i1 %i.apy, double %i.apx, double %i.apz ; 2 uses
  %gep2185.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2184, i64 %indvars.iv.next1753.1 ; 2 uses
  %i.aqb = load double, ptr %gep2185.2, align 8, !tbaa !9
  %i.aqc = fadd double %i.aqb, %i.aqa
  store double %i.aqc, ptr %gep2185.2, align 8, !tbaa !9
  %i.aqd = fadd double %i.aqa, %i.apw
  %indvars.iv.next1753.2 = add nuw nsw i64 %indvars.iv1752, 3 ; 2 uses
  %gep2183.3 = getelementptr [8 x i8], ptr %invariant.gep2182, i64 %indvars.iv.next1753.2
  %i.aqe = load double, ptr %gep2183.3, align 8, !tbaa !9 ; 3 uses
  %i.aqf = fcmp oge double %i.aqe, 0.000000e+00
  %i.aqg = fneg double %i.aqe
  %i.aqh = select i1 %i.aqf, double %i.aqe, double %i.aqg ; 2 uses
  %gep2185.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2184, i64 %indvars.iv.next1753.2 ; 2 uses
  %i.aqi = load double, ptr %gep2185.3, align 8, !tbaa !9
  %i.aqj = fadd double %i.aqi, %i.aqh
  store double %i.aqj, ptr %gep2185.3, align 8, !tbaa !9
  %i.aqk = fadd double %i.aqh, %i.aqd             ; 3 uses
  %indvars.iv.next1753.3 = add nuw nsw i64 %indvars.iv1752, 4 ; 2 uses
  %niter2393.next.3 = add i64 %niter2393, 4       ; 2 uses
  %niter2393.ncmp.3 = icmp eq i64 %niter2393.next.3, %unroll_iter2392
  br i1 %niter2393.ncmp.3, label %._crit_edge1309.loopexit.unr-lcssa, label %.lr.ph1308, !llvm.loop !68

._crit_edge1309.loopexit.unr-lcssa:               ; preds = %.lr.ph1308
  %lcmp.mod2389.not = icmp eq i64 %xtraiter2385, 0
  br i1 %lcmp.mod2389.not, label %._crit_edge1309, label %.lr.ph1308.epil.preheader

.lr.ph1308.epil.preheader:                        ; preds = %._crit_edge1309.loopexit.unr-lcssa, %.lr.ph1308.preheader
  %indvars.iv1752.epil.init = phi i64 [ 1, %.lr.ph1308.preheader ], [ %indvars.iv.next1753.3, %._crit_edge1309.loopexit.unr-lcssa ]
  %.epil.init2388 = phi double [ %i.ape, %.lr.ph1308.preheader ], [ %i.aqk, %._crit_edge1309.loopexit.unr-lcssa ]
  %lcmp.mod2391 = icmp ne i64 %xtraiter2385, 0
  tail call void @llvm.assume(i1 %lcmp.mod2391)
  br label %.lr.ph1308.epil

.lr.ph1308.epil:                                  ; preds = %.lr.ph1308.epil, %.lr.ph1308.epil.preheader
  %indvars.iv1752.epil = phi i64 [ %indvars.iv1752.epil.init, %.lr.ph1308.epil.preheader ], [ %indvars.iv.next1753.epil, %.lr.ph1308.epil ] ; 3 uses
  %i.aql = phi double [ %.epil.init2388, %.lr.ph1308.epil.preheader ], [ %i.aqs, %.lr.ph1308.epil ]
  %epil.iter2386 = phi i64 [ 0, %.lr.ph1308.epil.preheader ], [ %epil.iter2386.next, %.lr.ph1308.epil ]
  %gep2183.epil = getelementptr [8 x i8], ptr %invariant.gep2182, i64 %indvars.iv1752.epil
  %i.aqm = load double, ptr %gep2183.epil, align 8, !tbaa !9 ; 3 uses
  %i.aqn = fcmp oge double %i.aqm, 0.000000e+00
  %i.aqo = fneg double %i.aqm
  %i.aqp = select i1 %i.aqn, double %i.aqm, double %i.aqo ; 2 uses
  %gep2185.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2184, i64 %indvars.iv1752.epil ; 2 uses
  %i.aqq = load double, ptr %gep2185.epil, align 8, !tbaa !9
  %i.aqr = fadd double %i.aqq, %i.aqp
  store double %i.aqr, ptr %gep2185.epil, align 8, !tbaa !9
  %i.aqs = fadd double %i.aqp, %i.aql             ; 2 uses
  %indvars.iv.next1753.epil = add nuw nsw i64 %indvars.iv1752.epil, 1
  %epil.iter2386.next = add i64 %epil.iter2386, 1 ; 2 uses
  %epil.iter2386.cmp.not = icmp eq i64 %epil.iter2386.next, %xtraiter2385
  br i1 %epil.iter2386.cmp.not, label %._crit_edge1309, label %.lr.ph1308.epil, !llvm.loop !69

._crit_edge1309:                                  ; preds = %._crit_edge1309.loopexit.unr-lcssa, %.lr.ph1308.epil, %bb.bs
  %i.aqt = phi double [ %i.ape, %bb.bs ], [ %i.aqk, %._crit_edge1309.loopexit.unr-lcssa ], [ %i.aqs, %.lr.ph1308.epil ]
  %i.aqu = zext nneg i32 %storemerge913.lcssa1291 to i64
  %i.aqv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aqu ; 2 uses
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !9
  %i.aqx = fadd double %i.aqt, %i.aqw
  store double %i.aqx, ptr %i.aqv, align 8, !tbaa !9
  %storemerge9161333 = add nsw i32 %i.df, 1       ; 4 uses
  store i32 %storemerge9161333, ptr %i.d, align 4, !tbaa !8
  %.not917.not1334 = icmp slt i32 %i.df, %i.amw
  br i1 %.not917.not1334, label %.lr.ph1338, label %bb.bw

.lr.ph1338:                                       ; preds = %._crit_edge1309
  %smax1772 = tail call i32 @llvm.smax.i32(i32 %storemerge9161333, i32 %i.amw) ; 2 uses
  %i.aqy = add i32 %smax1772, 1                   ; 2 uses
  %wide.trip.count1770 = sext i32 %i.amw to i64   ; 3 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1338, %._crit_edge1325
  %indvar = phi i64 [ 0, %.lr.ph1338 ], [ %indvar.next, %._crit_edge1325 ] ; 4 uses
  %storemerge916.in1343 = phi i32 [ %storemerge9161333, %.lr.ph1338 ], [ %storemerge916, %._crit_edge1325 ] ; 7 uses
  %storemerge916.in1335 = phi i32 [ %i.df, %.lr.ph1338 ], [ %storemerge916.in1343, %._crit_edge1325 ] ; 3 uses
  %i.aqz = sext i32 %storemerge916.in1343 to i64  ; 2 uses
  %i.ara = sub nsw i64 %wide.trip.count1770, %i.aqz
  %i.arb = sub i32 %i.df, %storemerge916.in1335
  %.not9211312 = icmp sgt i32 %i.arb, -1
  %.pre2018 = mul nsw i32 %storemerge916.in1343, %.0784 ; 4 uses
  br i1 %.not9211312, label %._crit_edge1316, label %.lr.ph1315

.lr.ph1315:                                       ; preds = %bb.bt
  %i.arc = add i64 %indvar, -1
  %i.ard = sext i32 %.pre2018 to i64
  %i.are = sub i32 %storemerge916.in1335, %i.df   ; 2 uses
  %invariant.gep2186 = getelementptr [8 x i8], ptr %4, i64 %i.ard ; 5 uses
  %xtraiter2395 = and i64 %indvar, 3              ; 3 uses
  %i.arf = icmp ult i64 %i.arc, 3
  br i1 %i.arf, label %.epil.preheader2394, label %.lr.ph1315.new

.lr.ph1315.new:                                   ; preds = %.lr.ph1315
  %unroll_iter2402 = and i64 %indvar, -4
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.lr.ph1315.new
  %indvars.iv1758 = phi i64 [ 0, %.lr.ph1315.new ], [ %indvars.iv.next1759.3, %bb.bu ] ; 6 uses
  %i.arg = phi double [ 0.000000e+00, %.lr.ph1315.new ], [ %i.asm, %bb.bu ]
  %niter2403 = phi i64 [ 0, %.lr.ph1315.new ], [ %niter2403.next.3, %bb.bu ]
  %gep2187 = getelementptr [8 x i8], ptr %invariant.gep2186, i64 %indvars.iv1758
  %i.arh = load double, ptr %gep2187, align 8, !tbaa !9 ; 3 uses
  %i.ari = fcmp oge double %i.arh, 0.000000e+00
  %i.arj = fneg double %i.arh
  %i.ark = select i1 %i.ari, double %i.arh, double %i.arj ; 2 uses
  %i.arl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1758 ; 2 uses
  %i.arm = load double, ptr %i.arl, align 8, !tbaa !9
  %i.arn = fadd double %i.arm, %i.ark
  store double %i.arn, ptr %i.arl, align 8, !tbaa !9
  %i.aro = fadd double %i.ark, %i.arg
  %indvars.iv.next1759 = or disjoint i64 %indvars.iv1758, 1 ; 2 uses
  %gep2187.1 = getelementptr [8 x i8], ptr %invariant.gep2186, i64 %indvars.iv.next1759
  %i.arp = load double, ptr %gep2187.1, align 8, !tbaa !9 ; 3 uses
  %i.arq = fcmp oge double %i.arp, 0.000000e+00
  %i.arr = fneg double %i.arp
  %i.ars = select i1 %i.arq, double %i.arp, double %i.arr ; 2 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1759 ; 2 uses
  %i.aru = load double, ptr %i.art, align 8, !tbaa !9
  %i.arv = fadd double %i.aru, %i.ars
  store double %i.arv, ptr %i.art, align 8, !tbaa !9
  %i.arw = fadd double %i.ars, %i.aro
  %indvars.iv.next1759.1 = or disjoint i64 %indvars.iv1758, 2 ; 2 uses
  %gep2187.2 = getelementptr [8 x i8], ptr %invariant.gep2186, i64 %indvars.iv.next1759.1
  %i.arx = load double, ptr %gep2187.2, align 8, !tbaa !9 ; 3 uses
  %i.ary = fcmp oge double %i.arx, 0.000000e+00
  %i.arz = fneg double %i.arx
  %i.asa = select i1 %i.ary, double %i.arx, double %i.arz ; 2 uses
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1759.1 ; 2 uses
  %i.asc = load double, ptr %i.asb, align 8, !tbaa !9
  %i.asd = fadd double %i.asc, %i.asa
  store double %i.asd, ptr %i.asb, align 8, !tbaa !9
  %i.ase = fadd double %i.asa, %i.arw
  %indvars.iv.next1759.2 = or disjoint i64 %indvars.iv1758, 3 ; 2 uses
  %gep2187.3 = getelementptr [8 x i8], ptr %invariant.gep2186, i64 %indvars.iv.next1759.2
  %i.asf = load double, ptr %gep2187.3, align 8, !tbaa !9 ; 3 uses
  %i.asg = fcmp oge double %i.asf, 0.000000e+00
  %i.ash = fneg double %i.asf
  %i.asi = select i1 %i.asg, double %i.asf, double %i.ash ; 2 uses
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1759.2 ; 2 uses
  %i.ask = load double, ptr %i.asj, align 8, !tbaa !9
  %i.asl = fadd double %i.ask, %i.asi
  store double %i.asl, ptr %i.asj, align 8, !tbaa !9
  %i.asm = fadd double %i.asi, %i.ase             ; 3 uses
  %indvars.iv.next1759.3 = add nuw nsw i64 %indvars.iv1758, 4 ; 2 uses
  %niter2403.next.3 = add i64 %niter2403, 4       ; 2 uses
  %niter2403.ncmp.3 = icmp eq i64 %niter2403.next.3, %unroll_iter2402
  br i1 %niter2403.ncmp.3, label %._crit_edge1316.loopexit.unr-lcssa, label %bb.bu, !llvm.loop !70

._crit_edge1316.loopexit.unr-lcssa:               ; preds = %bb.bu
  %lcmp.mod2399.not = icmp eq i64 %xtraiter2395, 0
  br i1 %lcmp.mod2399.not, label %._crit_edge1316, label %.epil.preheader2394

.epil.preheader2394:                              ; preds = %._crit_edge1316.loopexit.unr-lcssa, %.lr.ph1315
  %indvars.iv1758.epil.init = phi i64 [ 0, %.lr.ph1315 ], [ %indvars.iv.next1759.3, %._crit_edge1316.loopexit.unr-lcssa ]
  %.epil.init2398 = phi double [ 0.000000e+00, %.lr.ph1315 ], [ %i.asm, %._crit_edge1316.loopexit.unr-lcssa ]
  %lcmp.mod2401 = icmp ne i64 %xtraiter2395, 0
  tail call void @llvm.assume(i1 %lcmp.mod2401)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader2394
  %indvars.iv1758.epil = phi i64 [ %indvars.iv1758.epil.init, %.epil.preheader2394 ], [ %indvars.iv.next1759.epil, %bb.bv ] ; 3 uses
  %i.asn = phi double [ %.epil.init2398, %.epil.preheader2394 ], [ %i.asv, %bb.bv ]
  %epil.iter2396 = phi i64 [ 0, %.epil.preheader2394 ], [ %epil.iter2396.next, %bb.bv ]
  %gep2187.epil = getelementptr [8 x i8], ptr %invariant.gep2186, i64 %indvars.iv1758.epil
  %i.aso = load double, ptr %gep2187.epil, align 8, !tbaa !9 ; 3 uses
  %i.asp = fcmp oge double %i.aso, 0.000000e+00
  %i.asq = fneg double %i.aso
  %i.asr = select i1 %i.asp, double %i.aso, double %i.asq ; 2 uses
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1758.epil ; 2 uses
  %i.ast = load double, ptr %i.ass, align 8, !tbaa !9
  %i.asu = fadd double %i.ast, %i.asr
  store double %i.asu, ptr %i.ass, align 8, !tbaa !9
  %i.asv = fadd double %i.asr, %i.asn             ; 2 uses
  %indvars.iv.next1759.epil = add nuw nsw i64 %indvars.iv1758.epil, 1
  %epil.iter2396.next = add i64 %epil.iter2396, 1 ; 2 uses
  %epil.iter2396.cmp.not = icmp eq i64 %epil.iter2396.next, %xtraiter2395
  br i1 %epil.iter2396.cmp.not, label %._crit_edge1316, label %bb.bv, !llvm.loop !71

._crit_edge1316:                                  ; preds = %._crit_edge1316.loopexit.unr-lcssa, %bb.bv, %bb.bt
  %.lcssa13261328 = phi double [ 0.000000e+00, %bb.bt ], [ %i.asm, %._crit_edge1316.loopexit.unr-lcssa ], [ %i.asv, %bb.bv ]
  %.36.lcssa = phi i32 [ 0, %bb.bt ], [ %i.are, %bb.bv ], [ %i.are, %._crit_edge1316.loopexit.unr-lcssa ] ; 3 uses
  %i.asw = add nsw i32 %.36.lcssa, %.pre2018
  %i.asx = sext i32 %i.asw to i64
  %i.asy = getelementptr inbounds [8 x i8], ptr %4, i64 %i.asx
  %i.asz = load double, ptr %i.asy, align 8, !tbaa !9 ; 3 uses
  %i.ata = fcmp oge double %i.asz, 0.000000e+00
  %i.atb = fneg double %i.asz
  %i.atc = select i1 %i.ata, double %i.asz, double %i.atb
  %i.atd = fadd double %.lcssa13261328, %i.atc
  %i.ate = sub i32 %storemerge916.in1335, %i.df
  %i.atf = sext i32 %i.ate to i64
  %i.atg = getelementptr inbounds [8 x i8], ptr %5, i64 %i.atf ; 2 uses
  %i.ath = load double, ptr %i.atg, align 8, !tbaa !9
  %i.ati = fadd double %i.ath, %i.atd
  store double %i.ati, ptr %i.atg, align 8, !tbaa !9
  %i.atj = add nuw nsw i32 %.36.lcssa, 1
  %i.atk = add nsw i32 %i.atj, %.pre2018
  %i.atl = sext i32 %i.atk to i64
  %i.atm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.atl
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !9 ; 3 uses
  %i.ato = fcmp oge double %i.atn, 0.000000e+00
  %i.atp = fneg double %i.atn
  %i.atq = select i1 %i.ato, double %i.atn, double %i.atp ; 3 uses
  %.not922.not1320 = icmp slt i32 %storemerge916.in1343, %i.amw
  %i.atr = sext i32 %storemerge916.in1343 to i64  ; 3 uses
  br i1 %.not922.not1320, label %.lr.ph1324.preheader, label %._crit_edge1325

.lr.ph1324.preheader:                             ; preds = %._crit_edge1316
  %i.ats = sext i32 %.36.lcssa to i64
  %i.att = add nsw i64 %i.ats, 1                  ; 2 uses
  %i.atu = sext i32 %.pre2018 to i64
  %invariant.gep2188 = getelementptr [8 x i8], ptr %4, i64 %i.atu ; 5 uses
  %xtraiter2404 = and i64 %i.ara, 3               ; 2 uses
  %lcmp.mod2405.not = icmp eq i64 %xtraiter2404, 0
  br i1 %lcmp.mod2405.not, label %.lr.ph1324.prol.loopexit, label %.lr.ph1324.prol

.lr.ph1324.prol:                                  ; preds = %.lr.ph1324.preheader, %.lr.ph1324.prol
  %indvars.iv1765.prol = phi i64 [ %indvars.iv.next1766.prol, %.lr.ph1324.prol ], [ %i.att, %.lr.ph1324.preheader ]
  %indvars.iv1763.prol = phi i64 [ %indvars.iv.next1764.prol, %.lr.ph1324.prol ], [ %i.atr, %.lr.ph1324.preheader ]
  %i.atv = phi double [ %i.aud, %.lr.ph1324.prol ], [ %i.atq, %.lr.ph1324.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1324.prol ], [ 0, %.lr.ph1324.preheader ]
  %indvars.iv.next1764.prol = add nsw i64 %indvars.iv1763.prol, 1 ; 3 uses
  %indvars.iv.next1766.prol = add nuw nsw i64 %indvars.iv1765.prol, 1 ; 3 uses
  %gep2189.prol = getelementptr [8 x i8], ptr %invariant.gep2188, i64 %indvars.iv.next1766.prol
  %i.atw = load double, ptr %gep2189.prol, align 8, !tbaa !9 ; 3 uses
  %i.atx = fcmp oge double %i.atw, 0.000000e+00
  %i.aty = fneg double %i.atw
  %i.atz = select i1 %i.atx, double %i.atw, double %i.aty ; 2 uses
  %i.aua = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.next1764.prol ; 2 uses
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !9
  %i.auc = fadd double %i.aub, %i.atz
  store double %i.auc, ptr %i.aua, align 8, !tbaa !9
  %i.aud = fadd double %i.atz, %i.atv             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2404
  br i1 %prol.iter.cmp.not, label %.lr.ph1324.prol.loopexit, label %.lr.ph1324.prol, !llvm.loop !72

.lr.ph1324.prol.loopexit:                         ; preds = %.lr.ph1324.prol, %.lr.ph1324.preheader
  %.lcssa2303.unr = phi double [ poison, %.lr.ph1324.preheader ], [ %i.aud, %.lr.ph1324.prol ]
  %indvars.iv1765.unr = phi i64 [ %i.att, %.lr.ph1324.preheader ], [ %indvars.iv.next1766.prol, %.lr.ph1324.prol ]
  %indvars.iv1763.unr = phi i64 [ %i.atr, %.lr.ph1324.preheader ], [ %indvars.iv.next1764.prol, %.lr.ph1324.prol ]
  %.unr2406 = phi double [ %i.atq, %.lr.ph1324.preheader ], [ %i.aud, %.lr.ph1324.prol ]
  %i.aue = sub nsw i64 %i.aqz, %wide.trip.count1770
  %i.auf = icmp ugt i64 %i.aue, -4
  br i1 %i.auf, label %._crit_edge1325, label %.lr.ph1324

.lr.ph1324:                                       ; preds = %.lr.ph1324.prol.loopexit, %.lr.ph1324
  %indvars.iv1765 = phi i64 [ %indvars.iv.next1766.3, %.lr.ph1324 ], [ %indvars.iv1765.unr, %.lr.ph1324.prol.loopexit ] ; 4 uses
  %indvars.iv1763 = phi i64 [ %indvars.iv.next1764.3, %.lr.ph1324 ], [ %indvars.iv1763.unr, %.lr.ph1324.prol.loopexit ] ; 4 uses
  %i.aug = phi double [ %i.avs, %.lr.ph1324 ], [ %.unr2406, %.lr.ph1324.prol.loopexit ]
  %i.auh = getelementptr [8 x i8], ptr %invariant.gep2188, i64 %indvars.iv1765
  %gep2189 = getelementptr i8, ptr %i.auh, i64 8
  %i.aui = load double, ptr %gep2189, align 8, !tbaa !9 ; 3 uses
  %i.auj = fcmp oge double %i.aui, 0.000000e+00
  %i.auk = fneg double %i.aui
  %i.aul = select i1 %i.auj, double %i.aui, double %i.auk ; 2 uses
  %i.aum = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1763
  %i.aun = getelementptr i8, ptr %i.aum, i64 8    ; 2 uses
  %i.auo = load double, ptr %i.aun, align 8, !tbaa !9
  %i.aup = fadd double %i.auo, %i.aul
  store double %i.aup, ptr %i.aun, align 8, !tbaa !9
  %i.auq = fadd double %i.aul, %i.aug
  %i.aur = getelementptr [8 x i8], ptr %invariant.gep2188, i64 %indvars.iv1765
  %gep2189.1 = getelementptr i8, ptr %i.aur, i64 16
  %i.aus = load double, ptr %gep2189.1, align 8, !tbaa !9 ; 3 uses
  %i.aut = fcmp oge double %i.aus, 0.000000e+00
  %i.auu = fneg double %i.aus
  %i.auv = select i1 %i.aut, double %i.aus, double %i.auu ; 2 uses
  %i.auw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1763
  %i.aux = getelementptr i8, ptr %i.auw, i64 16   ; 2 uses
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !9
  %i.auz = fadd double %i.auy, %i.auv
  store double %i.auz, ptr %i.aux, align 8, !tbaa !9
  %i.ava = fadd double %i.auv, %i.auq
  %i.avb = getelementptr [8 x i8], ptr %invariant.gep2188, i64 %indvars.iv1765
  %gep2189.2 = getelementptr i8, ptr %i.avb, i64 24
  %i.avc = load double, ptr %gep2189.2, align 8, !tbaa !9 ; 3 uses
  %i.avd = fcmp oge double %i.avc, 0.000000e+00
  %i.ave = fneg double %i.avc
  %i.avf = select i1 %i.avd, double %i.avc, double %i.ave ; 2 uses
  %i.avg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1763
  %i.avh = getelementptr i8, ptr %i.avg, i64 24   ; 2 uses
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !9
  %i.avj = fadd double %i.avi, %i.avf
  store double %i.avj, ptr %i.avh, align 8, !tbaa !9
end_hunk_1
