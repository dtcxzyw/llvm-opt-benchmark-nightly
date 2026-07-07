inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ljForce:bb.a
  %lcmp.mod194 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.s = getelementptr inbounds nuw i8, ptr %.epil.init, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.epil.init
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !16
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.pre189 = load ptr, ptr %i.k, align 8, !tbaa !30
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
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
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
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.aq = phi ptr [ %.pre, %.lr.ph.new ], [ %i.bb, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !34  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv.next
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !34  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.be, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge158.loopexit:                          ; preds = %.loopexit126
  %i.bf = fmul double %.8, 4.000000e+00
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %._crit_edge
  %.0113.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %i.bf, %._crit_edge158.loopexit ]
  %i.bg = fmul double %i.g, %.0113.lcssa
  store double %i.bg, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0

bb.c:                                             ; preds = %.lr.ph157, %.loopexit126
  %i.bh = phi ptr [ %i.z, %.lr.ph157 ], [ %i.ep, %.loopexit126 ] ; 3 uses
  %indvars.iv186 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next187, %.loopexit126 ] ; 3 uses
  %indvars.iv175 = phi i32 [ 0, %.lr.ph157 ], [ %indvars.iv.next176, %.loopexit126 ] ; 3 uses
  %.0113155 = phi double [ 0.000000e+00, %.lr.ph157 ], [ %.8, %.loopexit126 ] ; 4 uses
  %i.bi = zext i32 %indvars.iv175 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv186
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %.fr159 = freeze i32 %i.bm                      ; 3 uses
  %i.bn = icmp eq i32 %.fr159, 0
  br i1 %i.bn, label %.loopexit126, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.bp = call i32 @getNeighborBoxes(ptr noundef nonnull %i.bh, i32 noundef %i.bo, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  %.pre190 = load ptr, ptr %i.k, align 8, !tbaa !30 ; 5 uses
  br i1 %i.bq, label %.lr.ph146, label %.loopexit126

.lr.ph146:                                        ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %.pre190, i64 120
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !40
  %i.bt = icmp sgt i32 %.fr159, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre190, i64 12
  br i1 %i.bt, label %.lr.ph146.split.us.preheader, label %.loopexit126

.lr.ph146.split.us.preheader:                     ; preds = %.lr.ph146
  %i.bv = add i32 %.fr159, %indvars.iv175
  %wide.trip.count184 = zext nneg i32 %i.bp to i64
  br label %.lr.ph146.split.us

.lr.ph146.split.us:                               ; preds = %.lr.ph146.split.us.preheader, %..loopexit125_crit_edge.us
  %indvars.iv181 = phi i64 [ 0, %.lr.ph146.split.us.preheader ], [ %indvars.iv.next182, %..loopexit125_crit_edge.us ] ; 2 uses
  %.1144.us = phi double [ %.0113155, %.lr.ph146.split.us.preheader ], [ %.7.us, %..loopexit125_crit_edge.us ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv181
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 3 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %..loopexit125_crit_edge.us, label %.lr.ph141.us

.lr.ph141.us:                                     ; preds = %.lr.ph146.split.us
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !34 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !41 ; 2 uses
  %i.cf = icmp sgt i32 %i.ca, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  br i1 %i.cf, label %.lr.ph141.split.us.us, label %..loopexit125_crit_edge.us

..loopexit125_crit_edge.us:                       ; preds = %._crit_edge136.us.us, %.lr.ph141.us, %.lr.ph146.split.us
  %.7.us = phi double [ %.1144.us, %.lr.ph146.split.us ], [ %.1144.us, %.lr.ph141.us ], [ %.6.us.us, %._crit_edge136.us.us ] ; 2 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %.loopexit126, label %.lr.ph146.split.us

.lr.ph141.split.us.us:                            ; preds = %.lr.ph141.us
  %i.cj = shl i32 %i.bx, 6
  %i.ck = load i32, ptr %i.bu, align 4, !tbaa !39
  %i.cl = icmp slt i32 %i.bx, %i.ck               ; 2 uses
  %i.cm = sext i32 %i.cj to i64
  br label %.lr.ph135.us.us

.lr.ph135.us.us:                                  ; preds = %._crit_edge136.us.us, %.lr.ph141.split.us.us
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %._crit_edge136.us.us ], [ %i.bi, %.lr.ph141.split.us.us ] ; 5 uses
  %.2139.us.us = phi double [ %.6.us.us, %._crit_edge136.us.us ], [ %.1144.us, %.lr.ph141.split.us.us ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv177
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.us.us, %.lr.ph135.us.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.loopexit.us.us ], [ %i.cm, %.lr.ph135.us.us ] ; 5 uses
  %.3133.us.us = phi double [ %.6.us.us, %.loopexit.us.us ], [ %.2139.us.us, %.lr.ph135.us.us ] ; 4 uses
  %.0118132.us.us = phi i32 [ %i.eo, %.loopexit.us.us ], [ 0, %.lr.ph135.us.us ]
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %indvars.iv171
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %.not.us.us = icmp sgt i32 %i.cq, %i.co
  br i1 %.not.us.us, label %bb.g, label %.loopexit.us.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !42 ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %indvars.iv177 ; 2 uses
  %i.ct = getelementptr inbounds [24 x i8], ptr %i.cr, i64 %indvars.iv171 ; 2 uses
  %i.cu = load <2 x double>, ptr %i.cs, align 8, !tbaa !16
  %i.cv = load <2 x double>, ptr %i.ct, align 8, !tbaa !16
  %i.cw = fsub <2 x double> %i.cu, %i.cv          ; 4 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0 ; 2 uses
  %i.cy = call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double 0.000000e+00)
  %i.cz = extractelement <2 x double> %i.cw, i64 1 ; 2 uses
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.cy)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.de = load double, ptr %i.dd, align 8, !tbaa !16
  %i.df = fsub double %i.dc, %i.de                ; 4 uses
  %i.dg = call double @llvm.fmuladd.f64(double %i.df, double %i.df, double %i.da) ; 2 uses
  %i.dh = fcmp ogt double %i.dg, %i.i
  br i1 %i.dh, label %.loopexit.us.us, label %.loopexit.us.us.loopexit

.loopexit.us.us.loopexit:                         ; preds = %bb.g
  %i.di = fdiv double 1.000000e+00, %i.dg         ; 4 uses
  %i.dj = fmul double %i.di, %i.di
  %i.dk = fmul double %i.di, %i.dj
  %i.dl = fmul double %i.ae, %i.dk                ; 4 uses
  %i.dm = fadd double %i.dl, -1.000000e+00
  %i.dn = call double @llvm.fmuladd.f64(double %i.dl, double %i.dm, double %i.ao) ; 4 uses
  %i.do = load ptr, ptr %i.ch, align 8, !tbaa !38 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv177 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !16
  %i.dr = call double @llvm.fmuladd.f64(double %i.dn, double 5.000000e-01, double %i.dq)
  store double %i.dr, ptr %i.dp, align 8, !tbaa !16
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.do, i64 %indvars.iv171 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !16
  %1 = call double @llvm.fmuladd.f64(double %i.dn, double 5.000000e-01, double %i.dt)
  store double %1, ptr %i.ds, align 8, !tbaa !16
  %2 = fmul double %i.ap, %i.dl
  %3 = fmul double %i.di, %2
  %4 = call double @llvm.fmuladd.f64(double %i.dl, double 1.200000e+01, double -6.000000e+00)
  %i.du = fmul double %4, %3                      ; 3 uses
  %i.dv = load ptr, ptr %i.ci, align 8, !tbaa !35 ; 2 uses
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %indvars.iv177 ; 3 uses
  %i.dx = getelementptr inbounds [24 x i8], ptr %i.dv, i64 %indvars.iv171 ; 3 uses
  %i.dy = load <2 x double>, ptr %i.dw, align 8, !tbaa !16
  %i.dz = fneg <2 x double> %i.cw
  %i.ea = insertelement <2 x double> poison, double %i.du, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.eb, <2 x double> %i.dy)
  store <2 x double> %i.ec, ptr %i.dw, align 8, !tbaa !16
  %i.ed = load <2 x double>, ptr %i.dx, align 8, !tbaa !16
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.eb, <2 x double> %i.ed)
  store <2 x double> %i.ee, ptr %i.dx, align 8, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !16
  %i.eh = fneg double %i.df
  %i.ei = call double @llvm.fmuladd.f64(double %i.eh, double %i.du, double %i.eg)
  store double %i.ei, ptr %i.ef, align 8, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !16
  %i.el = call double @llvm.fmuladd.f64(double %i.df, double %i.du, double %i.ek)
  store double %i.el, ptr %i.ej, align 8, !tbaa !16
  %i.em = fadd double %.3133.us.us, %i.dn
  %i.en = call double @llvm.fmuladd.f64(double %i.dn, double 5.000000e-01, double %.3133.us.us)
  %.4.us.us = select i1 %i.cl, double %i.em, double %i.en
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %bb.g, %bb.f
  %.6.us.us = phi double [ %.3133.us.us, %bb.f ], [ %.3133.us.us, %bb.g ], [ %.4.us.us, %.loopexit.us.us.loopexit ] ; 3 uses
  %i.eo = add nuw nsw i32 %.0118132.us.us, 1      ; 2 uses
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1
  %exitcond174.not = icmp eq i32 %i.eo, %i.ca
  br i1 %exitcond174.not, label %._crit_edge136.us.us, label %bb.e

._crit_edge136.us.us:                             ; preds = %.loopexit.us.us
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next178 to i32
  %exitcond180.not = icmp eq i32 %i.bv, %lftr.wideiv
  br i1 %exitcond180.not, label %..loopexit125_crit_edge.us, label %.lr.ph135.us.us

.loopexit126:                                     ; preds = %..loopexit125_crit_edge.us, %.lr.ph146, %bb.d, %bb.c
  %i.ep = phi ptr [ %i.bh, %bb.c ], [ %.pre190, %bb.d ], [ %.pre190, %.lr.ph146 ], [ %.pre190, %..loopexit125_crit_edge.us ] ; 2 uses
  %.8 = phi double [ %.0113155, %bb.c ], [ %.0113155, %bb.d ], [ %.0113155, %.lr.ph146 ], [ %.7.us, %..loopexit125_crit_edge.us ] ; 2 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !39
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next187, %i.es
  %indvars.iv.next176 = add i32 %indvars.iv175, 64
  br i1 %i.et, label %bb.c, label %._crit_edge158.loopexit
}

; Function Attrs: nofree nounwind uwtable
define internal void @ljPrint(ptr nofree noundef captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.2, i64 35, i64 1, ptr %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.e) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !43
  %i.i = fdiv double %i.h, f0x4059E921DD37DC65
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, double noundef %i.i) #13 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.k) #13 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !17
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.n) #13 ; 0 uses
  %i.p = load double, ptr %1, align 8, !tbaa !28
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, double noundef %i.p) #13 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load double, ptr %i.r, align 8, !tbaa !27
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, double noundef %i.s) #13 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load double, ptr %i.u, align 8, !tbaa !26
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, double noundef %i.v) #13 ; 0 uses
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS15BasePotentialSt", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !10, i64 40}
!12 = !{!"LjPotentialSt", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !6, i64 32, !5, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !13, i64 64, !13, i64 72}
!13 = !{!"double", !6, i64 0}
!14 = !{!12, !10, i64 48}
!15 = !{!12, !10, i64 56}
!16 = !{!13, !13, i64 0}
!17 = !{!12, !13, i64 16}
!18 = !{!12, !5, i64 36}
!19 = !{!20, !9, i64 64}
!20 = !{!"SimFlatSt", !5, i64 0, !5, i64 4, !13, i64 8, !21, i64 16, !22, i64 24, !23, i64 32, !24, i64 40, !13, i64 48, !13, i64 56, !9, i64 64, !25, i64 72}
!21 = !{!"p1 _ZTS8DomainSt", !10, i64 0}
!22 = !{!"p1 _ZTS10LinkCellSt", !10, i64 0}
!23 = !{!"p1 _ZTS7AtomsSt", !10, i64 0}
!24 = !{!"p1 _ZTS13SpeciesDataSt", !10, i64 0}
!25 = !{!"p1 _ZTS14HaloExchangeSt", !10, i64 0}
!26 = !{!12, !13, i64 64}
!27 = !{!12, !13, i64 72}
!28 = !{!12, !13, i64 0}
!29 = !{!20, !13, i64 48}
!30 = !{!20, !22, i64 24}
!31 = !{!32, !5, i64 20}
!32 = !{!"LinkCellSt", !6, i64 0, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 48, !6, i64 72, !6, i64 96, !33, i64 120}
!33 = !{!"p1 int", !10, i64 0}
!34 = !{!20, !23, i64 32}
!35 = !{!36, !37, i64 40}
!36 = !{!"AtomsSt", !5, i64 0, !5, i64 4, !33, i64 8, !33, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!37 = !{!"p1 double", !10, i64 0}
!38 = !{!36, !37, i64 48}
!39 = !{!32, !5, i64 12}
!40 = !{!32, !33, i64 120}
!41 = !{!36, !33, i64 8}
!42 = !{!36, !37, i64 24}
!43 = !{!12, !13, i64 8}
end_hunk_0
