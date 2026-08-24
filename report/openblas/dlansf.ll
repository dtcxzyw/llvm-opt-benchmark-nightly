Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlansf?download=true
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
  %i.dr = add nsw i64 %indvars.iv1846, %i.do      ; 3 uses
  %.not969.not1442 = icmp sgt i64 %i.dr, 0
  %i.ds = mul nsw i64 %indvars.iv1846, %i.dn      ; 4 uses
  br i1 %.not969.not1442, label %.lr.ph1445, label %._crit_edge1446

.lr.ph1445:                                       ; preds = %bb.y
  %wide.trip.count1844 = zext i32 %indvars.iv1842 to i64 ; 2 uses
  %invariant.gep2202 = getelementptr [8 x i8], ptr %4, i64 %i.ds ; 5 uses
  %xtraiter2457 = and i64 %wide.trip.count1844, 3 ; 3 uses
  %i.dt = add i32 %indvars.iv1842, -1
  %i.du = icmp ult i32 %i.dt, 3
  br i1 %i.du, label %.epil.preheader2456, label %.lr.ph1445.new

.lr.ph1445.new:                                   ; preds = %.lr.ph1445
  %unroll_iter2464 = and i64 %wide.trip.count1844, 4294967292
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph1445.new
  %indvars.iv1839 = phi i64 [ 0, %.lr.ph1445.new ], [ %indvars.iv.next1840.3, %bb.z ] ; 6 uses
  %i.dv = phi double [ 0.000000e+00, %.lr.ph1445.new ], [ %i.ey, %bb.z ]
  %niter2465 = phi i64 [ 0, %.lr.ph1445.new ], [ %niter2465.next.3, %bb.z ]
  %gep2203 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv1839
  %i.dw = load double, ptr %gep2203, align 8, !tbaa !9 ; 3 uses
  %i.dx = fcmp oge double %i.dw, 0.000000e+00
  %i.dy = fneg double %i.dw
  %i.dz = select i1 %i.dx, double %i.dw, double %i.dy ; 2 uses
  %i.ea = fadd double %i.dv, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1839 ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !9
  %i.ed = fadd double %i.dz, %i.ec
  store double %i.ed, ptr %i.eb, align 8, !tbaa !9
  %indvars.iv.next1840 = or disjoint i64 %indvars.iv1839, 1 ; 2 uses
  %gep2203.1 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv.next1840
  %i.ee = load double, ptr %gep2203.1, align 8, !tbaa !9 ; 3 uses
  %i.ef = fcmp oge double %i.ee, 0.000000e+00
  %i.eg = fneg double %i.ee
  %i.eh = select i1 %i.ef, double %i.ee, double %i.eg ; 2 uses
  %i.ei = fadd double %i.ea, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !9
  %i.el = fadd double %i.eh, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !9
  %indvars.iv.next1840.1 = or disjoint i64 %indvars.iv1839, 2 ; 2 uses
  %gep2203.2 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv.next1840.1
  %i.em = load double, ptr %gep2203.2, align 8, !tbaa !9 ; 3 uses
  %i.en = fcmp oge double %i.em, 0.000000e+00
  %i.eo = fneg double %i.em
  %i.ep = select i1 %i.en, double %i.em, double %i.eo ; 2 uses
  %i.eq = fadd double %i.ei, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840.1 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !9
  %i.et = fadd double %i.ep, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !9
  %indvars.iv.next1840.2 = or disjoint i64 %indvars.iv1839, 3 ; 2 uses
  %gep2203.3 = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv.next1840.2
  %i.eu = load double, ptr %gep2203.3, align 8, !tbaa !9 ; 3 uses
  %i.ev = fcmp oge double %i.eu, 0.000000e+00
  %i.ew = fneg double %i.eu
  %i.ex = select i1 %i.ev, double %i.eu, double %i.ew ; 2 uses
  %i.ey = fadd double %i.eq, %i.ex                ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840.2 ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !9
  %i.fb = fadd double %i.ex, %i.fa
  store double %i.fb, ptr %i.ez, align 8, !tbaa !9
  %indvars.iv.next1840.3 = add nuw nsw i64 %indvars.iv1839, 4 ; 2 uses
  %niter2465.next.3 = add i64 %niter2465, 4       ; 2 uses
  %niter2465.ncmp.3 = icmp eq i64 %niter2465.next.3, %unroll_iter2464
  br i1 %niter2465.ncmp.3, label %._crit_edge1446.loopexit.unr-lcssa, label %bb.z, !llvm.loop !21

._crit_edge1446.loopexit.unr-lcssa:               ; preds = %bb.z
  %lcmp.mod2461.not = icmp eq i64 %xtraiter2457, 0
  br i1 %lcmp.mod2461.not, label %._crit_edge1446, label %.epil.preheader2456

.epil.preheader2456:                              ; preds = %._crit_edge1446.loopexit.unr-lcssa, %.lr.ph1445
  %indvars.iv1839.epil.init = phi i64 [ 0, %.lr.ph1445 ], [ %indvars.iv.next1840.3, %._crit_edge1446.loopexit.unr-lcssa ]
  %.epil.init2460 = phi double [ 0.000000e+00, %.lr.ph1445 ], [ %i.ey, %._crit_edge1446.loopexit.unr-lcssa ]
  %lcmp.mod2463 = icmp ne i64 %xtraiter2457, 0
  tail call void @llvm.assume(i1 %lcmp.mod2463)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader2456
  %indvars.iv1839.epil = phi i64 [ %indvars.iv1839.epil.init, %.epil.preheader2456 ], [ %indvars.iv.next1840.epil, %bb.aa ] ; 3 uses
  %i.fc = phi double [ %.epil.init2460, %.epil.preheader2456 ], [ %i.fh, %bb.aa ]
  %epil.iter2458 = phi i64 [ 0, %.epil.preheader2456 ], [ %epil.iter2458.next, %bb.aa ]
  %gep2203.epil = getelementptr [8 x i8], ptr %invariant.gep2202, i64 %indvars.iv1839.epil
  %i.fd = load double, ptr %gep2203.epil, align 8, !tbaa !9 ; 3 uses
  %i.fe = fcmp oge double %i.fd, 0.000000e+00
  %i.ff = fneg double %i.fd
  %i.fg = select i1 %i.fe, double %i.fd, double %i.ff ; 2 uses
  %i.fh = fadd double %i.fc, %i.fg                ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1839.epil ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9
  %i.fk = fadd double %i.fg, %i.fj
  store double %i.fk, ptr %i.fi, align 8, !tbaa !9
  %indvars.iv.next1840.epil = add nuw nsw i64 %indvars.iv1839.epil, 1
  %epil.iter2458.next = add i64 %epil.iter2458, 1 ; 2 uses
  %epil.iter2458.cmp.not = icmp eq i64 %epil.iter2458.next, %xtraiter2457
  br i1 %epil.iter2458.cmp.not, label %._crit_edge1446, label %bb.aa, !llvm.loop !22

._crit_edge1446:                                  ; preds = %._crit_edge1446.loopexit.unr-lcssa, %bb.aa, %bb.y
  %.lcssa14561459 = phi double [ 0.000000e+00, %bb.y ], [ %i.ey, %._crit_edge1446.loopexit.unr-lcssa ], [ %i.fh, %bb.aa ] ; 2 uses
  %.5799.lcssa = phi i32 [ 0, %bb.y ], [ %indvars.iv1842, %bb.aa ], [ %indvars.iv1842, %._crit_edge1446.loopexit.unr-lcssa ] ; 4 uses
  %i.fl = sext i32 %.5799.lcssa to i64
  %i.fm = getelementptr [8 x i8], ptr %4, i64 %i.ds
  %i.fn = getelementptr [8 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !9 ; 3 uses
  %i.fp = fcmp oge double %i.fo, 0.000000e+00
  %i.fq = fneg double %i.fo
  %i.fr = select i1 %i.fp, double %i.fo, double %i.fq
  %i.fs = fadd double %.lcssa14561459, %i.fr
  %i.ft = getelementptr inbounds [8 x i8], ptr %5, i64 %i.dr
  store double %i.fs, ptr %i.ft, align 8, !tbaa !9
  %i.fu = icmp eq i32 %.5799.lcssa, %i.dl
  br i1 %i.fu, label %._crit_edge1468, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1446
  %6 = getelementptr [8 x i8], ptr %4, i64 %i.ds
  %i.fv = sext i32 %.5799.lcssa to i64
  %i.fw = getelementptr [8 x i8], ptr %6, i64 %i.fv
  %7 = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = load double, ptr %7, align 8, !tbaa !9  ; 3 uses
  %i.fy = fcmp oge double %i.fx, 0.000000e+00
  %i.fz = fneg double %i.fx
  %i.ga = select i1 %i.fy, double %i.fx, double %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1846 ; 4 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !9
  %i.gd = fadd double %i.gc, %i.ga                ; 2 uses
  store double %i.gd, ptr %i.gb, align 8, !tbaa !9
  %.not970.not1450 = icmp slt i64 %indvars.iv1846, %i.dm
  br i1 %.not970.not1450, label %.lr.ph1454.preheader, label %._crit_edge1455

.lr.ph1454.preheader:                             ; preds = %bb.ab
  %8 = zext nneg i32 %.5799.lcssa to i64
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %invariant.gep2204 = getelementptr [8 x i8], ptr %4, i64 %i.ds ; 5 uses
  %xtraiter2466 = and i64 %i.dq, 3                ; 2 uses
  %lcmp.mod2467.not = icmp eq i64 %xtraiter2466, 0
  br i1 %lcmp.mod2467.not, label %.lr.ph1454.prol.loopexit, label %.lr.ph1454.prol

.lr.ph1454.prol:                                  ; preds = %.lr.ph1454.preheader, %.lr.ph1454.prol
  %indvars.iv1850.prol = phi i64 [ %indvars.iv.next1851.prol, %.lr.ph1454.prol ], [ %9, %.lr.ph1454.preheader ]
  %indvars.iv1848.prol = phi i64 [ %indvars.iv.next1849.prol, %.lr.ph1454.prol ], [ %indvars.iv1846, %.lr.ph1454.preheader ]
  %i.ge = phi double [ %i.gj, %.lr.ph1454.prol ], [ 0.000000e+00, %.lr.ph1454.preheader ]
  %prol.iter2468 = phi i64 [ %prol.iter2468.next, %.lr.ph1454.prol ], [ 0, %.lr.ph1454.preheader ]
  %indvars.iv.next1849.prol = add nuw nsw i64 %indvars.iv1848.prol, 1 ; 3 uses
  %indvars.iv.next1851.prol = add nuw nsw i64 %indvars.iv1850.prol, 1 ; 3 uses
  %gep2205.prol = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv.next1851.prol
  %i.gf = load double, ptr %gep2205.prol, align 8, !tbaa !9 ; 3 uses
  %i.gg = fcmp oge double %i.gf, 0.000000e+00
  %i.gh = fneg double %i.gf
  %i.gi = select i1 %i.gg, double %i.gf, double %i.gh ; 2 uses
  %i.gj = fadd double %i.ge, %i.gi                ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1849.prol ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !9
  %i.gm = fadd double %i.gi, %i.gl
  store double %i.gm, ptr %i.gk, align 8, !tbaa !9
  %prol.iter2468.next = add i64 %prol.iter2468, 1 ; 2 uses
  %prol.iter2468.cmp.not = icmp eq i64 %prol.iter2468.next, %xtraiter2466
  br i1 %prol.iter2468.cmp.not, label %.lr.ph1454.prol.loopexit, label %.lr.ph1454.prol, !llvm.loop !24

.lr.ph1454.prol.loopexit:                         ; preds = %.lr.ph1454.prol, %.lr.ph1454.preheader
  %.lcssa2289.unr = phi double [ poison, %.lr.ph1454.preheader ], [ %i.gj, %.lr.ph1454.prol ]
  %indvars.iv1850.unr = phi i64 [ %9, %.lr.ph1454.preheader ], [ %indvars.iv.next1851.prol, %.lr.ph1454.prol ]
  %indvars.iv1848.unr = phi i64 [ %indvars.iv1846, %.lr.ph1454.preheader ], [ %indvars.iv.next1849.prol, %.lr.ph1454.prol ]
  %.unr2469 = phi double [ 0.000000e+00, %.lr.ph1454.preheader ], [ %i.gj, %.lr.ph1454.prol ]
  %i.gn = sub nsw i64 %indvars.iv1846, %wide.trip.count1855
  %i.go = icmp ugt i64 %i.gn, -4
  br i1 %i.go, label %._crit_edge1455.loopexit, label %.lr.ph1454

.lr.ph1454:                                       ; preds = %.lr.ph1454.prol.loopexit, %.lr.ph1454
  %indvars.iv1850 = phi i64 [ %indvars.iv.next1851.3, %.lr.ph1454 ], [ %indvars.iv1850.unr, %.lr.ph1454.prol.loopexit ] ; 4 uses
  %indvars.iv1848 = phi i64 [ %indvars.iv.next1849.3, %.lr.ph1454 ], [ %indvars.iv1848.unr, %.lr.ph1454.prol.loopexit ] ; 4 uses
  %i.gp = phi double [ %i.hy, %.lr.ph1454 ], [ %.unr2469, %.lr.ph1454.prol.loopexit ]
  %i.gq = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv1850
  %gep2205 = getelementptr i8, ptr %i.gq, i64 8
  %i.gr = load double, ptr %gep2205, align 8, !tbaa !9 ; 3 uses
  %i.gs = fcmp oge double %i.gr, 0.000000e+00
  %i.gt = fneg double %i.gr
  %i.gu = select i1 %i.gs, double %i.gr, double %i.gt ; 2 uses
  %i.gv = fadd double %i.gp, %i.gu
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !9
  %i.gz = fadd double %i.gu, %i.gy
  store double %i.gz, ptr %i.gx, align 8, !tbaa !9
  %i.ha = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv1850
  %gep2205.1 = getelementptr i8, ptr %i.ha, i64 16
  %i.hb = load double, ptr %gep2205.1, align 8, !tbaa !9 ; 3 uses
  %i.hc = fcmp oge double %i.hb, 0.000000e+00
  %i.hd = fneg double %i.hb
  %i.he = select i1 %i.hc, double %i.hb, double %i.hd ; 2 uses
  %i.hf = fadd double %i.gv, %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !9
  %i.hj = fadd double %i.he, %i.hi
  store double %i.hj, ptr %i.hh, align 8, !tbaa !9
  %i.hk = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv1850
  %gep2205.2 = getelementptr i8, ptr %i.hk, i64 24
  %i.hl = load double, ptr %gep2205.2, align 8, !tbaa !9 ; 3 uses
  %i.hm = fcmp oge double %i.hl, 0.000000e+00
  %i.hn = fneg double %i.hl
  %i.ho = select i1 %i.hm, double %i.hl, double %i.hn ; 2 uses
  %i.hp = fadd double %i.hf, %i.ho
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !9
  %i.ht = fadd double %i.ho, %i.hs
  store double %i.ht, ptr %i.hr, align 8, !tbaa !9
  %indvars.iv.next1849.3 = add nuw nsw i64 %indvars.iv1848, 4 ; 3 uses
  %indvars.iv.next1851.3 = add nuw nsw i64 %indvars.iv1850, 4 ; 2 uses
  %gep2205.3 = getelementptr [8 x i8], ptr %invariant.gep2204, i64 %indvars.iv.next1851.3
  %i.hu = load double, ptr %gep2205.3, align 8, !tbaa !9 ; 3 uses
  %i.hv = fcmp oge double %i.hu, 0.000000e+00
  %i.hw = fneg double %i.hu
  %i.hx = select i1 %i.hv, double %i.hu, double %i.hw ; 2 uses
  %i.hy = fadd double %i.hp, %i.hx                ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1849.3 ; 2 uses
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !9
  %i.ib = fadd double %i.hx, %i.ia
  store double %i.ib, ptr %i.hz, align 8, !tbaa !9
  %exitcond1856.not.3 = icmp eq i64 %indvars.iv.next1849.3, %wide.trip.count1855
  br i1 %exitcond1856.not.3, label %._crit_edge1455.loopexit, label %.lr.ph1454, !llvm.loop !25

._crit_edge1455.loopexit:                         ; preds = %.lr.ph1454, %.lr.ph1454.prol.loopexit
  %.lcssa2289 = phi double [ %.lcssa2289.unr, %.lr.ph1454.prol.loopexit ], [ %i.hy, %.lr.ph1454 ]
  %.pre1982 = load double, ptr %i.gb, align 8, !tbaa !9
  br label %._crit_edge1455

._crit_edge1455:                                  ; preds = %._crit_edge1455.loopexit, %bb.ab
  %i.ic = phi double [ %i.gd, %bb.ab ], [ %.pre1982, %._crit_edge1455.loopexit ]
  %.lcssa14561458 = phi double [ 0.000000e+00, %bb.ab ], [ %.lcssa2289, %._crit_edge1455.loopexit ] ; 2 uses
  %i.id = fadd double %.lcssa14561458, %i.ic
  store double %i.id, ptr %i.gb, align 8, !tbaa !9
  %indvars.iv.next1847 = add nuw nsw i64 %indvars.iv1846, 1 ; 2 uses
  %indvars.iv.next1843 = add i32 %indvars.iv1842, 1
  %exitcond1859.not = icmp eq i64 %indvars.iv.next1847, %wide.trip.count1858
  br i1 %exitcond1859.not, label %._crit_edge1465, label %bb.y, !llvm.loop !26

._crit_edge1465:                                  ; preds = %._crit_edge1455
  store double %.lcssa14561458, ptr %i.f, align 8, !tbaa !9
  br label %bb.ac

._crit_edge1468:                                  ; preds = %._crit_edge1446
  %i.ie = trunc nuw nsw i64 %indvars.iv1846 to i32
  %i.if = trunc nsw i64 %i.dr to i32
  store double %.lcssa14561459, ptr %i.f, align 8, !tbaa !9
  %i.ig = add nsw i32 %i.if, -1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge1468, %._crit_edge1465
  %i.ih = phi i32 [ %i.dg, %._crit_edge1465 ], [ %i.ig, %._crit_edge1468 ]
  %storemerge967.lcssa = phi i32 [ %i.dp, %._crit_edge1465 ], [ %i.ie, %._crit_edge1468 ]
  store i32 %storemerge967.lcssa, ptr %i.d, align 4, !tbaa !8
  store i32 %i.ih, ptr %i.b, align 4
  %i.ii = load double, ptr %5, align 8, !tbaa !9  ; 2 uses
  %i.ij = add nsw i32 %i.de, -1
  store i32 %i.ij, ptr %i.a, align 4, !tbaa !8
  %.not9711472 = icmp slt i32 %i.de, 2
  br i1 %.not9711472, label %.loopexit, label %.lr.ph1476

.lr.ph1476:                                       ; preds = %bb.ac, %._crit_edge1983
  %indvars.iv1860 = phi i64 [ %indvars.iv.next1861, %._crit_edge1983 ], [ 1, %bb.ac ] ; 3 uses
  %.121474 = phi double [ %.13, %._crit_edge1983 ], [ %i.ii, %bb.ac ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1860
  %i.il = load double, ptr %i.ik, align 8, !tbaa !9 ; 3 uses
  store double %i.il, ptr %i.c, align 8, !tbaa !9
  %i.im = fcmp olt double %.121474, %i.il
  br i1 %i.im, label %._crit_edge1983, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1476
  %i.in = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not972 = icmp eq i32 %i.in, 0
  %.pre1984 = load double, ptr %i.c, align 8
  %spec.select2225 = select i1 %.not972, double %.121474, double %.pre1984
  br label %._crit_edge1983

._crit_edge1983:                                  ; preds = %bb.ad, %.lr.ph1476
  %.13 = phi double [ %spec.select2225, %bb.ad ], [ %i.il, %.lr.ph1476 ] ; 2 uses
  %indvars.iv.next1861 = add nuw nsw i64 %indvars.iv1860, 1
  %i.io = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ip = sext i32 %i.io to i64
  %.not971.not = icmp slt i64 %indvars.iv1860, %i.ip
  br i1 %.not971.not, label %.lr.ph1476, label %.loopexit, !llvm.loop !27

bb.ae:                                            ; preds = %bb.w
  %i.iq = add nsw i32 %i.df, 1                    ; 5 uses
  store i32 %i.iq, ptr %i.e, align 4, !tbaa !8
  %i.ir = add i32 %i.de, -1                       ; 3 uses
  %.not960.not1478 = icmp slt i32 %i.iq, %i.de
  br i1 %.not960.not1478, label %.lr.ph1481.preheader, label %.preheader993

.lr.ph1481.preheader:                             ; preds = %bb.ae
  %i.is = sext i32 %i.df to i64
  %i.it = shl nsw i64 %i.is, 3
  %i.iu = getelementptr i8, ptr %5, i64 %i.it
  %scevgep1863 = getelementptr i8, ptr %i.iu, i64 8
  %i.iv = add nsw i32 %i.de, -2
  %i.iw = sub i32 %i.iv, %i.df
  %i.ix = zext i32 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 3
  %i.iz = add nuw nsw i64 %i.iy, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1863, i8 0, i64 %i.iz, i1 false), !tbaa !9
  br label %.preheader993

.preheader993:                                    ; preds = %.lr.ph1481.preheader, %bb.ae
  %i.ja = icmp sgt i32 %i.de, -2
  br i1 %i.ja, label %.lr.ph1505, label %.thread2084

.thread2084:                                      ; preds = %.preheader993
  %i.jb = load double, ptr %5, align 8, !tbaa !9
  br label %.loopexit

.lr.ph1505:                                       ; preds = %.preheader993
  %i.jc = zext nneg i32 %i.iq to i64
  %invariant.gep2208 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.jc ; 5 uses
  %wide.trip.count1879 = sext i32 %i.ir to i64    ; 3 uses
  %i.jd = sext i32 %i.df to i64                   ; 2 uses
  %i.je = sub nsw i64 %wide.trip.count1879, %i.jd
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph1505, %._crit_edge1496
  %indvar2482 = phi i64 [ 0, %.lr.ph1505 ], [ %indvar.next2483, %._crit_edge1496 ] ; 3 uses
  %indvar2471 = phi i32 [ 0, %.lr.ph1505 ], [ %indvar.next2472, %._crit_edge1496 ] ; 2 uses
  %storemerge961.in1508 = phi i32 [ %i.df, %.lr.ph1505 ], [ %storemerge961, %._crit_edge1496 ] ; 8 uses
  %storemerge961.in1503 = phi i32 [ %i.iq, %.lr.ph1505 ], [ %storemerge961.in1508, %._crit_edge1496 ] ; 3 uses
  %i.jf = add i64 %i.je, %indvar2482
  %.not9641483 = icmp slt i32 %storemerge961.in1503, 3
  br i1 %.not9641483, label %._crit_edge1487, label %.lr.ph1486

.lr.ph1486:                                       ; preds = %bb.af
  %i.jg = mul nsw i32 %storemerge961.in1508, %.0784
  %i.jh = sext i32 %i.jg to i64
  %i.ji = add nsw i32 %storemerge961.in1503, -2   ; 3 uses
  %wide.trip.count1870 = zext nneg i32 %i.ji to i64 ; 2 uses
  %invariant.gep2206 = getelementptr [8 x i8], ptr %4, i64 %i.jh ; 5 uses
  %xtraiter2473 = and i64 %wide.trip.count1870, 3 ; 3 uses
  %i.jj = sub i32 %i.df, %indvar2471
  %i.jk = add i32 %i.jj, -2
  %i.jl = icmp ult i32 %i.jk, 3
  br i1 %i.jl, label %.epil.preheader2470, label %.lr.ph1486.new

.lr.ph1486.new:                                   ; preds = %.lr.ph1486
  %unroll_iter2480 = and i64 %wide.trip.count1870, 2147483644
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph1486.new
  %indvars.iv1867 = phi i64 [ 0, %.lr.ph1486.new ], [ %indvars.iv.next1868.3, %bb.ag ] ; 6 uses
  %i.jm = phi double [ 0.000000e+00, %.lr.ph1486.new ], [ %i.km, %bb.ag ]
  %niter2481 = phi i64 [ 0, %.lr.ph1486.new ], [ %niter2481.next.3, %bb.ag ]
  %gep2207 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv1867
  %i.jn = load double, ptr %gep2207, align 8, !tbaa !9 ; 3 uses
  %i.jo = fcmp oge double %i.jn, 0.000000e+00
  %i.jp = fneg double %i.jn
  %i.jq = select i1 %i.jo, double %i.jn, double %i.jp ; 2 uses
  %i.jr = fadd double %i.jm, %i.jq
  %gep2209 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv1867 ; 2 uses
  %i.js = load double, ptr %gep2209, align 8, !tbaa !9
  %i.jt = fadd double %i.jq, %i.js
  store double %i.jt, ptr %gep2209, align 8, !tbaa !9
  %indvars.iv.next1868 = or disjoint i64 %indvars.iv1867, 1 ; 2 uses
  %gep2207.1 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv.next1868
  %i.ju = load double, ptr %gep2207.1, align 8, !tbaa !9 ; 3 uses
end_hunk_0
