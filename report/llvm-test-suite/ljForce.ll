Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ljForce?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ljForce:bb.a
  %i.g = load double, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %i.h = load double, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  %i.i = fmul double %i.h, %i.h                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = shl i32 %i.n, 6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1) ; 3 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %smax, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483584
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.pre, %.lr.ph ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.s = getelementptr inbounds nuw i8, ptr %.epil.init, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.epil.init
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !22
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.pre189 = load ptr, ptr %i.k, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.z = phi ptr [ %.pre189, %._crit_edge.loopexit ], [ %i.l, %bb.a ] ; 2 uses
  %i.aa = fmul double %i.e, %i.e
  %i.ab = fmul double %i.e, %i.aa
  %i.ac = fmul double %i.e, %i.ab
  %i.ad = fmul double %i.e, %i.ac
  %i.ae = fmul double %i.e, %i.ad                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !52
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %._crit_edge
  %i.ai = fmul double %i.i, %i.i
  %i.aj = fmul double %i.i, %i.ai
  %i.ak = fdiv double %i.ae, %i.aj                ; 2 uses
  %i.al = fadd double %i.ak, -1.000000e+00
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = fneg double %i.al
  %i.ao = fmul double %i.ak, %i.an
  %i.ap = fmul double %i.g, -4.000000e+00
  %i.aq = insertelement <2 x double> <double poison, double -6.000000e+00>, double %i.ao, i64 0
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.ar = phi ptr [ %.pre, %.lr.ph.new ], [ %i.bc, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ay, align 8, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv.next
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !47  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.bf, align 8, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge158.loopexit:                          ; preds = %.loopexit126
  %i.bg = fmul double %.8, 4.000000e+00
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %._crit_edge
  %.0122.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %i.bg, %._crit_edge158.loopexit ]
  %i.bh = fmul double %i.g, %.0122.lcssa
  store double %i.bh, ptr %i.j, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0

bb.c:                                             ; preds = %.lr.ph157, %.loopexit126
  %i.bi = phi ptr [ %i.z, %.lr.ph157 ], [ %i.ew, %.loopexit126 ] ; 3 uses
  %indvars.iv186 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next187, %.loopexit126 ] ; 3 uses
  %indvars.iv175 = phi i32 [ 0, %.lr.ph157 ], [ %indvars.iv.next176, %.loopexit126 ] ; 3 uses
  %.0122153 = phi double [ 0.000000e+00, %.lr.ph157 ], [ %.8, %.loopexit126 ] ; 4 uses
  %i.bj = zext i32 %indvars.iv175 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv186
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %.fr159 = freeze i32 %i.bn                      ; 3 uses
  %i.bo = icmp eq i32 %.fr159, 0
  br i1 %i.bo, label %.loopexit126, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.bq = call i32 @getNeighborBoxes(ptr noundef nonnull %i.bi, i32 noundef %i.bp, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  %.pre190 = load ptr, ptr %i.k, align 8, !tbaa !43 ; 5 uses
  br i1 %i.br, label %.lr.ph146, label %.loopexit126

.lr.ph146:                                        ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre190, i64 120
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.bu = icmp sgt i32 %.fr159, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre190, i64 12
  br i1 %i.bu, label %.lr.ph146.split.us.preheader, label %.loopexit126

.lr.ph146.split.us.preheader:                     ; preds = %.lr.ph146
  %i.bw = add i32 %.fr159, %indvars.iv175
  %wide.trip.count184 = zext nneg i32 %i.bq to i64
  br label %.lr.ph146.split.us

.lr.ph146.split.us:                               ; preds = %.lr.ph146.split.us.preheader, %..loopexit125_crit_edge.us
  %indvars.iv181 = phi i64 [ 0, %.lr.ph146.split.us.preheader ], [ %indvars.iv.next182, %..loopexit125_crit_edge.us ] ; 2 uses
  %.1143.us = phi double [ %.0122153, %.lr.ph146.split.us.preheader ], [ %.7.us, %..loopexit125_crit_edge.us ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv181
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7  ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7  ; 3 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %..loopexit125_crit_edge.us, label %.lr.ph141.us

.lr.ph141.us:                                     ; preds = %.lr.ph146.split.us
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !47 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54 ; 2 uses
  %i.cg = icmp sgt i32 %i.cb, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  br i1 %i.cg, label %.lr.ph141.split.us.us, label %..loopexit125_crit_edge.us

.lr.ph141.split.us.us:                            ; preds = %.lr.ph141.us
  %i.ck = shl i32 %i.by, 6
  %i.cl = load i32, ptr %i.bv, align 4, !tbaa !52
  %i.cm = icmp slt i32 %i.by, %i.cl               ; 2 uses
  %i.cn = sext i32 %i.ck to i64
  br label %.lr.ph135.us.us

.lr.ph135.us.us:                                  ; preds = %._crit_edge136.us.us, %.lr.ph141.split.us.us
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %._crit_edge136.us.us ], [ %i.bj, %.lr.ph141.split.us.us ] ; 5 uses
  %.2137.us.us = phi double [ %.6.us.us, %._crit_edge136.us.us ], [ %.1143.us, %.lr.ph141.split.us.us ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv177
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.us.us, %.lr.ph135.us.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.loopexit.us.us ], [ %i.cn, %.lr.ph135.us.us ] ; 5 uses
  %.0115133.us.us = phi i32 [ %i.ev, %.loopexit.us.us ], [ 0, %.lr.ph135.us.us ]
  %.3131.us.us = phi double [ %.6.us.us, %.loopexit.us.us ], [ %.2137.us.us, %.lr.ph135.us.us ] ; 4 uses
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv171
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !7
  %.not.us.us = icmp sgt i32 %i.cr, %i.cp
  br i1 %.not.us.us, label %bb.g, label %.loopexit.us.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !55 ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %indvars.iv177 ; 2 uses
  %i.cu = getelementptr inbounds [24 x i8], ptr %i.cs, i64 %indvars.iv171 ; 2 uses
  %i.cv = load <2 x double>, ptr %i.ct, align 8, !tbaa !22
  %i.cw = load <2 x double>, ptr %i.cu, align 8, !tbaa !22
  %i.cx = fsub <2 x double> %i.cv, %i.cw          ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.cx, %i.cx
  %1 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cy = extractelement <2 x double> %i.cx, i64 1 ; 2 uses
  %i.cz = call double @llvm.fmuladd.f64(double %i.cy, double %i.cy, double %1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.db = load double, ptr %i.da, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !22
  %i.de = fsub double %i.db, %i.dd                ; 4 uses
  %i.df = call double @llvm.fmuladd.f64(double %i.de, double %i.de, double %i.cz) ; 2 uses
  %i.dg = fcmp ogt double %i.df, %i.i
  br i1 %i.dg, label %.loopexit.us.us, label %.loopexit.us.us.loopexit

.loopexit.us.us.loopexit:                         ; preds = %bb.g
  %i.dh = fdiv double 1.000000e+00, %i.df         ; 4 uses
  %i.di = fmul double %i.dh, %i.dh
  %i.dj = fmul double %i.dh, %i.di
  %i.dk = fmul double %i.ae, %i.dj                ; 3 uses
  %i.dl = fadd double %i.dk, -1.000000e+00
  %i.dm = load ptr, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv177 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !22
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %indvars.iv171 ; 2 uses
  %i.dq = fmul double %i.ap, %i.dk
  %i.dr = fmul double %i.dh, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x double> <double poison, double 1.200000e+01>, double %i.dl, i64 0
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.du, <2 x double> %i.aq) ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0 ; 4 uses
  %i.dx = call double @llvm.fmuladd.f64(double %i.dw, double 5.000000e-01, double %i.do)
  store double %i.dx, ptr %i.dn, align 8, !tbaa !22
  %i.dy = load double, ptr %i.dp, align 8, !tbaa !22
  %i.dz = call double @llvm.fmuladd.f64(double %i.dw, double 5.000000e-01, double %i.dy)
  store double %i.dz, ptr %i.dp, align 8, !tbaa !22
  %i.ea = extractelement <2 x double> %i.dv, i64 1
  %i.eb = fmul double %i.ea, %i.dr                ; 3 uses
  %i.ec = load ptr, ptr %i.cj, align 8, !tbaa !50 ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %indvars.iv177 ; 3 uses
  %i.ee = getelementptr inbounds [24 x i8], ptr %i.ec, i64 %indvars.iv171 ; 3 uses
  %i.ef = load <2 x double>, ptr %i.ed, align 8, !tbaa !22
  %i.eg = fneg <2 x double> %i.cx
  %i.eh = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ei, <2 x double> %i.ef)
  store <2 x double> %i.ej, ptr %i.ed, align 8, !tbaa !22
  %i.ek = load <2 x double>, ptr %i.ee, align 8, !tbaa !22
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.ei, <2 x double> %i.ek)
  store <2 x double> %i.el, ptr %i.ee, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !22
  %i.eo = fneg double %i.de
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eb, double %i.en)
  store double %i.ep, ptr %i.em, align 8, !tbaa !22
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !22
  %i.es = call double @llvm.fmuladd.f64(double %i.de, double %i.eb, double %i.er)
  store double %i.es, ptr %i.eq, align 8, !tbaa !22
  %i.et = fadd double %.3131.us.us, %i.dw
  %i.eu = call double @llvm.fmuladd.f64(double %i.dw, double 5.000000e-01, double %.3131.us.us)
  %.4.us.us = select i1 %i.cm, double %i.et, double %i.eu
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %bb.g, %bb.f
  %.6.us.us = phi double [ %.3131.us.us, %bb.f ], [ %.3131.us.us, %bb.g ], [ %.4.us.us, %.loopexit.us.us.loopexit ] ; 3 uses
  %i.ev = add nuw nsw i32 %.0115133.us.us, 1      ; 2 uses
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1
  %exitcond174.not = icmp eq i32 %i.ev, %i.cb
  br i1 %exitcond174.not, label %._crit_edge136.us.us, label %bb.e

._crit_edge136.us.us:                             ; preds = %.loopexit.us.us
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next178 to i32
  %exitcond180.not = icmp eq i32 %i.bw, %lftr.wideiv
  br i1 %exitcond180.not, label %..loopexit125_crit_edge.us, label %.lr.ph135.us.us

..loopexit125_crit_edge.us:                       ; preds = %._crit_edge136.us.us, %.lr.ph141.us, %.lr.ph146.split.us
  %.7.us = phi double [ %.1143.us, %.lr.ph146.split.us ], [ %.1143.us, %.lr.ph141.us ], [ %.6.us.us, %._crit_edge136.us.us ] ; 2 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %.loopexit126, label %.lr.ph146.split.us

.loopexit126:                                     ; preds = %..loopexit125_crit_edge.us, %.lr.ph146, %bb.d, %bb.c
  %i.ew = phi ptr [ %i.bi, %bb.c ], [ %.pre190, %bb.d ], [ %.pre190, %.lr.ph146 ], [ %.pre190, %..loopexit125_crit_edge.us ] ; 2 uses
  %.8 = phi double [ %.0122153, %bb.c ], [ %.0122153, %bb.d ], [ %.0122153, %.lr.ph146 ], [ %.7.us, %..loopexit125_crit_edge.us ] ; 2 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !52
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next187, %i.ez
  %indvars.iv.next176 = add i32 %indvars.iv175, 64
  br i1 %i.fa, label %bb.c, label %._crit_edge158.loopexit
}

; Function Attrs: nofree nounwind uwtable
define internal void @ljPrint(ptr nofree noundef captures(none) %0, ptr noundef %1) #4 !guid !56 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 35, i64 1, ptr %0) ; 0 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.d) #13 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !57
  %i.h = fdiv double %i.g, f0x4059E921DD37DC65
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, double noundef %i.h) #13 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.j) #13 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !23
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.m) #13 ; 0 uses
  %i.o = load double, ptr %1, align 8, !tbaa !27
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, double noundef %i.o) #13 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load double, ptr %i.q, align 8, !tbaa !26
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, double noundef %i.r) #13 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load double, ptr %i.t, align 8, !tbaa !25
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, double noundef %i.u) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i32 @getNeighborBoxes(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -6901363699097515161}
!9 = !{i64 6719012806894084463}
!10 = !{i64 -7541608346525649702}
!11 = !{i64 -4134247065281632384}
!12 = !{i64 -711140496888514740}
!13 = !{i64 8889999243032907873}
!14 = !{i64 3368834918606266270}
!15 = !{i64 -5143270545707788119}
!16 = !{i64 2984503027178140145}
!17 = !{i64 -4551254410720878873}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTS15BasePotentialSt", !18, i64 0}
!20 = !{!"double", !5, i64 0}
!21 = !{!"LjPotentialSt", !20, i64 0, !20, i64 8, !20, i64 16, !5, i64 24, !5, i64 32, !6, i64 36, !18, i64 40, !18, i64 48, !18, i64 56, !20, i64 64, !20, i64 72}
!22 = !{!20, !20, i64 0}
!23 = !{!21, !20, i64 16}
!24 = !{!21, !6, i64 36}
!25 = !{!21, !20, i64 64}
!26 = !{!21, !20, i64 72}
!27 = !{!21, !20, i64 0}
!28 = !{i64 7602061215330661291}
end_hunk_0
