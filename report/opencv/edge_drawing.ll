Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl20ComputeEllipsePointsEPdS2_S2_i:_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit
  store ptr %i.q, ptr %i.r, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.f, i1 false)
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.f, i1 false)
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.f, i1 false)
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.f, i1 false)
  %i.y = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.f, i1 false)
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.f, i1 false)
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.f, i1 false)
  %i.ae = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.f, i1 false)
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %i.f, i1 false)
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %i.f, i1 false)
  %i.ak = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.f, i1 false)
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.am, i8 0, i64 %i.f, i1 false)
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.f, i1 false)
  %i.aq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %i.f, i1 false)
  %i.as = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.f, i1 false)
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.f, i1 false)
  %i.aw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.ax = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.f, i1 false)
  %i.ay = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.f, i1 false)
  %i.ba = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.f, i1 false)
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 13 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %i.be = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 12 uses
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.f, i1 false)
  %i.bg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 12 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bg, i8 0, i64 %i.f, i1 false)
  %i.bi = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.bj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  %i.bm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  %i.bq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %i.bs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bu = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bv = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.bw = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bc, i8 0, i64 %i.f, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load double, ptr %i.bx, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !46
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !46
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ch = load <2 x double>, ptr %i.cd, align 8, !tbaa !46
  %i.ci = fmul <2 x double> %i.ch, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  store <2 x double> %i.ci, ptr %i.cg, align 8, !tbaa !46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  store double %i.ck, ptr %i.cj, align 8, !tbaa !46
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store double %i.cf, ptr %i.cl, align 8, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 8 uses
  store double %i.ca, ptr %i.cm, align 8, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 8 uses
  store double %i.cc, ptr %i.cn, align 8, !tbaa !46
  %.not393 = icmp slt i32 %3, 2                   ; 2 uses
  br i1 %.not393, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !279 ; 3 uses
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !279 ; 3 uses
  %i.cq = sitofp i32 %i.a to double
  %i.cr = fdiv double f0x400921FB54442D18, %i.cq  ; 2 uses
  %i.cs = zext nneg i32 %i.a to i64               ; 2 uses
  %xtraiter = and i64 %i.cs, 1
  %i.ct = icmp eq i32 %i.b, 2
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cs, 1073741822
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.a ] ; 4 uses
  %.0194394 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.dd, %bb.a ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.a ]
  %i.cu = tail call double @cos(double noundef %.0194394) #42
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  store double %i.cu, ptr %i.cv, align 8, !tbaa !46
  %i.cw = tail call double @sin(double noundef %.0194394) #42
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  store double %i.cw, ptr %i.cx, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = fadd double %i.cr, %.0194394            ; 3 uses
  %i.cz = tail call double @cos(double noundef %i.cy) #42
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next
  store double %i.cz, ptr %i.da, align 8, !tbaa !46
  %i.db = tail call double @sin(double noundef %i.cy) #42
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next
  store double %i.db, ptr %i.dc, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dd = fadd double %i.cr, %i.cy                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.a, !llvm.loop !598

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0194394.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.dd, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1131 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod1131)
  %i.de = tail call double @cos(double noundef %.0194394.epil.init) #42
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.epil.init
  store double %i.de, ptr %i.df, align 8, !tbaa !46
  %i.dg = tail call double @sin(double noundef %.0194394.epil.init) #42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.epil.init
  store double %i.dg, ptr %i.dh, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit
  %i.di = tail call noundef i32 @_ZN2cv8ximgproc15EdgeDrawingImpl7inverseEPPdS3_i(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bo, i32 noundef 2) ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 10 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !46
  %i.dl = load double, ptr %i.cm, align 8, !tbaa !46 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 7 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !46
  %i.do = load double, ptr %i.cn, align 8, !tbaa !46 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 10 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !46
  %i.dr = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.dq, i64 1
  %i.dt = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.du, <2 x double> zeroinitializer) ; 2 uses
  %4 = extractelement <2 x double> %i.dv, i64 0
  %5 = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.do, double %4)
  %6 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 7 uses
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = extractelement <2 x double> %i.dv, i64 1
  %9 = tail call double @llvm.fmuladd.f64(double %7, double %i.do, double %8)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dl, double %5, double 0.000000e+00)
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.do, double %9, double %i.dx)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.by, double -4.000000e+00, double %i.dy)
  store double %i.dz, ptr %i.dw, align 8, !tbaa !46
  br i1 %.not393, label %.lr.ph.i320.preheader, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %._crit_edge
  %wide.trip.count43.i = zext nneg i32 %i.b to i64 ; 29 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !279 ; 4 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !279 ; 8 uses
  %.pre452 = load ptr, ptr %i.l, align 8, !tbaa !279 ; 8 uses
  %i.eb = add nsw i64 %wide.trip.count43.i, -1    ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 9
  br i1 %min.iters.check, label %.lr.ph.i274.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph.split.i
  %i.ec = getelementptr nuw i8, ptr %i.ea, i64 8  ; 3 uses
  %i.ed = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ea, i64 %i.ed  ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.eg = getelementptr nuw i8, ptr %.pre, i64 8
  %i.eh = getelementptr i8, ptr %.pre, i64 %i.ed
  %i.ei = getelementptr nuw i8, ptr %.pre452, i64 8
  %i.ej = getelementptr i8, ptr %.pre452, i64 %i.ed
  %bound0 = icmp ult ptr %i.ec, %i.ef
  %bound1 = icmp ult ptr %i.dj, %i.ee
  %found.conflict = and i1 %bound0, %bound1
  %bound0498 = icmp ult ptr %i.ec, %i.eh
  %bound1499 = icmp ult ptr %i.eg, %i.ee
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx = or i1 %found.conflict, %found.conflict500
  %bound0501 = icmp ult ptr %i.ec, %i.ej
  %bound1502 = icmp ult ptr %i.ei, %i.ee
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx, %found.conflict503
  br i1 %conflict.rdx504, label %.lr.ph.i274.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, -2                      ; 2 uses
  %i.ek = or i64 %i.eb, 1
  %i.el = load double, ptr %i.dj, align 8, !tbaa !46, !alias.scope !672
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.el, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = load double, ptr %i.dm, align 8, !tbaa !46, !alias.scope !672
  %broadcast.splatinsert506 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat507 = shufflevector <2 x double> %broadcast.splatinsert506, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.en = or disjoint i64 %index, 1               ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.en ; 3 uses
  store <2 x double> zeroinitializer, ptr %i.eo, align 8, !tbaa !46, !alias.scope !673, !noalias !674
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.en
  %wide.load = load <2 x double>, ptr %i.ep, align 8, !tbaa !46, !alias.scope !675
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !46, !alias.scope !673, !noalias !674
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre452, i64 %i.en
  %wide.load505 = load <2 x double>, ptr %i.er, align 8, !tbaa !46, !alias.scope !676
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat507, <2 x double> %wide.load505, <2 x double> %i.eq)
  store <2 x double> %i.es, ptr %i.eo, align 8, !tbaa !46, !alias.scope !673, !noalias !674
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !604

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge32.split.i282, label %.lr.ph.i274.preheader

.lr.ph.i274.preheader:                            ; preds = %vector.memcheck, %.preheader.lr.ph.split.i, %middle.block
  %indvars.iv40.i275.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.lr.ph.split.i ], [ %i.ek, %middle.block ]
  br label %.lr.ph.i274

.lr.ph.i274:                                      ; preds = %.lr.ph.i274.preheader, %.lr.ph.i274
  %indvars.iv40.i275 = phi i64 [ %indvars.iv.next41.i280, %.lr.ph.i274 ], [ %indvars.iv40.i275.ph, %.lr.ph.i274.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv40.i275 ; 3 uses
  store double 0.000000e+00, ptr %i.eu, align 8, !tbaa !46
  %i.ev = load double, ptr %i.dj, align 8, !tbaa !46
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv40.i275
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !46
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ex, double 0.000000e+00) ; 2 uses
  store double %i.ey, ptr %i.eu, align 8, !tbaa !46
  %i.ez = load double, ptr %i.dm, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre452, i64 %indvars.iv40.i275
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !46
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fb, double %i.ey)
  store double %i.fc, ptr %i.eu, align 8, !tbaa !46
  %indvars.iv.next41.i280 = add nuw nsw i64 %indvars.iv40.i275, 1 ; 2 uses
  %exitcond44.not.i281 = icmp eq i64 %indvars.iv.next41.i280, %wide.trip.count43.i
  br i1 %exitcond44.not.i281, label %._crit_edge32.split.i282, label %.lr.ph.i274, !llvm.loop !605

._crit_edge32.split.i282:                         ; preds = %.lr.ph.i274, %middle.block
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !279 ; 4 uses
  %i.fe = add nsw i64 %wide.trip.count43.i, -1    ; 3 uses
  %min.iters.check527 = icmp ult i32 %i.b, 9
  br i1 %min.iters.check527, label %.lr.ph.i274.1.preheader, label %vector.memcheck528

vector.memcheck528:                               ; preds = %._crit_edge32.split.i282
  %i.ff = getelementptr nuw i8, ptr %i.fd, i64 8  ; 3 uses
  %i.fg = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fd, i64 %i.fg  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.fj = getelementptr nuw i8, ptr %.pre, i64 8
  %i.fk = getelementptr i8, ptr %.pre, i64 %i.fg
  %i.fl = getelementptr nuw i8, ptr %.pre452, i64 8
  %i.fm = getelementptr i8, ptr %.pre452, i64 %i.fg
  %bound0529 = icmp ult ptr %i.ff, %i.fi
  %bound1530 = icmp ult ptr %i.dp, %i.fh
  %found.conflict531 = and i1 %bound0529, %bound1530
  %bound0532 = icmp ult ptr %i.ff, %i.fk
  %bound1533 = icmp ult ptr %i.fj, %i.fh
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx535 = or i1 %found.conflict531, %found.conflict534
  %bound0536 = icmp ult ptr %i.ff, %i.fm
  %bound1537 = icmp ult ptr %i.fl, %i.fh
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx539 = or i1 %conflict.rdx535, %found.conflict538
  br i1 %conflict.rdx539, label %.lr.ph.i274.1.preheader, label %vector.ph540

vector.ph540:                                     ; preds = %vector.memcheck528
  %n.vec541 = and i64 %i.fe, -2                   ; 2 uses
  %i.fn = or i64 %i.fe, 1
  %i.fo = load double, ptr %i.dp, align 8, !tbaa !46, !alias.scope !677
  %broadcast.splatinsert545 = insertelement <2 x double> poison, double %i.fo, i64 0
  %broadcast.splat546 = shufflevector <2 x double> %broadcast.splatinsert545, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = load double, ptr %6, align 8, !tbaa !46, !alias.scope !677
  %broadcast.splatinsert548 = insertelement <2 x double> poison, double %i.fp, i64 0
  %broadcast.splat549 = shufflevector <2 x double> %broadcast.splatinsert548, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph540
  %index543 = phi i64 [ 0, %vector.ph540 ], [ %index.next550, %vector.body542 ] ; 2 uses
  %i.fq = or disjoint i64 %index543, 1            ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fq ; 3 uses
  store <2 x double> zeroinitializer, ptr %i.fr, align 8, !tbaa !46, !alias.scope !678, !noalias !679
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fq
  %wide.load544 = load <2 x double>, ptr %i.fs, align 8, !tbaa !46, !alias.scope !680
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat546, <2 x double> %wide.load544, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.ft, ptr %i.fr, align 8, !tbaa !46, !alias.scope !678, !noalias !679
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.pre452, i64 %i.fq
  %wide.load547 = load <2 x double>, ptr %i.fu, align 8, !tbaa !46, !alias.scope !681
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat549, <2 x double> %wide.load547, <2 x double> %i.ft)
  store <2 x double> %i.fv, ptr %i.fr, align 8, !tbaa !46, !alias.scope !678, !noalias !679
  %index.next550 = add nuw i64 %index543, 2       ; 2 uses
  %i.fw = icmp eq i64 %index.next550, %n.vec541
  br i1 %i.fw, label %middle.block551, label %vector.body542, !llvm.loop !611

middle.block551:                                  ; preds = %vector.body542
  %cmp.n552 = icmp eq i64 %i.fe, %n.vec541
  br i1 %cmp.n552, label %.preheader392.preheader, label %.lr.ph.i274.1.preheader

.lr.ph.i274.1.preheader:                          ; preds = %vector.memcheck528, %._crit_edge32.split.i282, %middle.block551
  %indvars.iv40.i275.1.ph = phi i64 [ 1, %vector.memcheck528 ], [ 1, %._crit_edge32.split.i282 ], [ %i.fn, %middle.block551 ]
  br label %.lr.ph.i274.1

.lr.ph.i274.1:                                    ; preds = %.lr.ph.i274.1.preheader, %.lr.ph.i274.1
  %indvars.iv40.i275.1 = phi i64 [ %indvars.iv.next41.i280.1, %.lr.ph.i274.1 ], [ %indvars.iv40.i275.1.ph, %.lr.ph.i274.1.preheader ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv40.i275.1 ; 3 uses
  store double 0.000000e+00, ptr %i.fx, align 8, !tbaa !46
  %i.fy = load double, ptr %i.dp, align 8, !tbaa !46
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv40.i275.1
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !46
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.ga, double 0.000000e+00) ; 2 uses
  store double %i.gb, ptr %i.fx, align 8, !tbaa !46
  %i.gc = load double, ptr %6, align 8, !tbaa !46
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.pre452, i64 %indvars.iv40.i275.1
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !46
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.ge, double %i.gb)
  store double %i.gf, ptr %i.fx, align 8, !tbaa !46
  %indvars.iv.next41.i280.1 = add nuw nsw i64 %indvars.iv40.i275.1, 1 ; 2 uses
  %exitcond44.not.i281.1 = icmp eq i64 %indvars.iv.next41.i280.1, %wide.trip.count43.i
  br i1 %exitcond44.not.i281.1, label %.preheader392.preheader, label %.lr.ph.i274.1, !llvm.loop !612

.preheader392.preheader:                          ; preds = %.lr.ph.i274.1, %middle.block551
  %i.gg = load ptr, ptr %i.j, align 8, !tbaa !279 ; 7 uses
  %i.gh = load ptr, ptr %i.p, align 8, !tbaa !279 ; 7 uses
  %wide.trip.count421 = zext nneg i32 %i.b to i64 ; 2 uses
  %i.gi = add nsw i64 %wide.trip.count43.i, -1    ; 2 uses
  %min.iters.check558 = icmp ult i32 %i.b, 11
  br i1 %min.iters.check558, label %scalar.ph557.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %.preheader392.preheader
  %i.gj = ptrtoaddr ptr %i.gh to i64
  %i.gk = ptrtoaddr ptr %i.gg to i64
  %i.gl = sub i64 %i.gk, %i.bf
  %diff.check = icmp ugt i64 %i.gl, -32
  %i.gm = sub i64 %i.gj, %i.bf
  %diff.check555 = icmp ugt i64 %i.gm, -32
  %conflict.rdx556 = or i1 %diff.check, %diff.check555
  br i1 %conflict.rdx556, label %scalar.ph557.preheader, label %vector.ph559

vector.ph559:                                     ; preds = %vector.memcheck554
  %n.vec560 = and i64 %i.gi, -4                   ; 3 uses
  %i.gn = or disjoint i64 %n.vec560, 1
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph559
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next567, %vector.body561 ] ; 2 uses
  %i.go = or disjoint i64 %index562, 1            ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load563 = load <2 x double>, ptr %i.gp, align 8, !tbaa !46
  %wide.load564 = load <2 x double>, ptr %i.gq, align 8, !tbaa !46
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.go ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load565 = load <2 x double>, ptr %i.gr, align 8, !tbaa !46
  %wide.load566 = load <2 x double>, ptr %i.gs, align 8, !tbaa !46
  %i.gt = fmul <2 x double> %wide.load563, %wide.load565
  %i.gu = fmul <2 x double> %wide.load564, %wide.load566
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.go ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store <2 x double> %i.gt, ptr %i.gv, align 8, !tbaa !46
  store <2 x double> %i.gu, ptr %i.gw, align 8, !tbaa !46
  %index.next567 = add nuw i64 %index562, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next567, %n.vec560
  br i1 %i.gx, label %middle.block568, label %vector.body561, !llvm.loop !613

middle.block568:                                  ; preds = %vector.body561
  %cmp.n569 = icmp eq i64 %i.gi, %n.vec560
  br i1 %cmp.n569, label %._crit_edge399, label %scalar.ph557.preheader

scalar.ph557.preheader:                           ; preds = %vector.memcheck554, %.preheader392.preheader, %middle.block568
  %indvars.iv418.ph = phi i64 [ 1, %vector.memcheck554 ], [ 1, %.preheader392.preheader ], [ %i.gn, %middle.block568 ] ; 4 uses
  %i.gy = sub nsw i64 %wide.trip.count43.i, %indvars.iv418.ph
  %xtraiter1132 = and i64 %i.gy, 3                ; 2 uses
  %lcmp.mod1133.not = icmp eq i64 %xtraiter1132, 0
  br i1 %lcmp.mod1133.not, label %scalar.ph557.prol.loopexit, label %scalar.ph557.prol

scalar.ph557.prol:                                ; preds = %scalar.ph557.preheader, %scalar.ph557.prol
  %indvars.iv418.prol = phi i64 [ %indvars.iv.next419.prol, %scalar.ph557.prol ], [ %indvars.iv418.ph, %scalar.ph557.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph557.prol ], [ 0, %scalar.ph557.preheader ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv418.prol
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !46
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv418.prol
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !46
  %i.hd = fmul double %i.ha, %i.hc
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv418.prol
  store double %i.hd, ptr %i.he, align 8, !tbaa !46
  %indvars.iv.next419.prol = add nuw nsw i64 %indvars.iv418.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1132
  br i1 %prol.iter.cmp.not, label %scalar.ph557.prol.loopexit, label %scalar.ph557.prol, !llvm.loop !614

scalar.ph557.prol.loopexit:                       ; preds = %scalar.ph557.prol, %scalar.ph557.preheader
  %indvars.iv418.unr = phi i64 [ %indvars.iv418.ph, %scalar.ph557.preheader ], [ %indvars.iv.next419.prol, %scalar.ph557.prol ]
  %i.hf = sub nsw i64 %indvars.iv418.ph, %wide.trip.count43.i
  %i.hg = icmp ugt i64 %i.hf, -4
  br i1 %i.hg, label %._crit_edge399, label %scalar.ph557

.lr.ph403:                                        ; preds = %scalar.ph575.prol.loopexit, %scalar.ph575, %middle.block586
  %.pre453 = load double, ptr %i.dw, align 8, !tbaa !46 ; 3 uses
  %xtraiter1140 = and i64 %i.eb, 1
  %i.hh = icmp eq i32 %i.b, 2
  br i1 %i.hh, label %.epil.preheader1139, label %.lr.ph403.new

.lr.ph403.new:                                    ; preds = %.lr.ph403
  %unroll_iter1143 = and i64 %i.eb, -2
  br label %bb.c

scalar.ph557:                                     ; preds = %scalar.ph557.prol.loopexit, %scalar.ph557
  %indvars.iv418 = phi i64 [ %indvars.iv.next419.3, %scalar.ph557 ], [ %indvars.iv418.unr, %scalar.ph557.prol.loopexit ] ; 7 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv418
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !46
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv418
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !46
  %i.hm = fmul double %i.hj, %i.hl
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv418
  store double %i.hm, ptr %i.hn, align 8, !tbaa !46
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1 ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next419
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !46
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next419
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !46
  %i.hs = fmul double %i.hp, %i.hr
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next419
  store double %i.hs, ptr %i.ht, align 8, !tbaa !46
  %indvars.iv.next419.11135 = add nuw nsw i64 %indvars.iv418, 2 ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next419.11135
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !46
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next419.11135
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !46
  %i.hy = fmul double %i.hv, %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next419.11135
  store double %i.hy, ptr %i.hz, align 8, !tbaa !46
  %indvars.iv.next419.2 = add nuw nsw i64 %indvars.iv418, 3 ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next419.2
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !46
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next419.2
  %i.id = load double, ptr %i.ic, align 8, !tbaa !46
  %i.ie = fmul double %i.ib, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next419.2
  store double %i.ie, ptr %i.if, align 8, !tbaa !46
  %indvars.iv.next419.3 = add nuw nsw i64 %indvars.iv418, 4 ; 2 uses
  %exitcond422.not.3 = icmp eq i64 %indvars.iv.next419.3, %wide.trip.count421
  br i1 %exitcond422.not.3, label %._crit_edge399, label %scalar.ph557, !llvm.loop !615

._crit_edge399:                                   ; preds = %scalar.ph557.prol.loopexit, %scalar.ph557, %middle.block568
  %i.ig = load ptr, ptr %i.l, align 8, !tbaa !279 ; 7 uses
  %i.ih = load ptr, ptr %i.r, align 8, !tbaa !279 ; 7 uses
  %i.ii = add nsw i64 %wide.trip.count43.i, -1    ; 2 uses
  %min.iters.check576 = icmp ult i32 %i.b, 11
  br i1 %min.iters.check576, label %scalar.ph575.preheader, label %vector.memcheck571

vector.memcheck571:                               ; preds = %._crit_edge399
  %i.ij = ptrtoaddr ptr %i.ih to i64
  %i.ik = ptrtoaddr ptr %i.ig to i64
  %i.il = sub i64 %i.ik, %i.bh
  %diff.check572 = icmp ugt i64 %i.il, -32
  %i.im = sub i64 %i.ij, %i.bh
  %diff.check573 = icmp ugt i64 %i.im, -32
  %conflict.rdx574 = or i1 %diff.check572, %diff.check573
  br i1 %conflict.rdx574, label %scalar.ph575.preheader, label %vector.ph577

vector.ph577:                                     ; preds = %vector.memcheck571
  %n.vec578 = and i64 %i.ii, -4                   ; 3 uses
  %i.in = or disjoint i64 %n.vec578, 1
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 2 uses
  %i.io = or disjoint i64 %index580, 1            ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load581 = load <2 x double>, ptr %i.ip, align 8, !tbaa !46
  %wide.load582 = load <2 x double>, ptr %i.iq, align 8, !tbaa !46
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.io ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load583 = load <2 x double>, ptr %i.ir, align 8, !tbaa !46
  %wide.load584 = load <2 x double>, ptr %i.is, align 8, !tbaa !46
  %i.it = fmul <2 x double> %wide.load581, %wide.load583
  %i.iu = fmul <2 x double> %wide.load582, %wide.load584
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.io ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <2 x double> %i.it, ptr %i.iv, align 8, !tbaa !46
  store <2 x double> %i.iu, ptr %i.iw, align 8, !tbaa !46
  %index.next585 = add nuw i64 %index580, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.ix, label %middle.block586, label %vector.body579, !llvm.loop !616

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %i.ii, %n.vec578
  br i1 %cmp.n587, label %.lr.ph403, label %scalar.ph575.preheader

scalar.ph575.preheader:                           ; preds = %vector.memcheck571, %._crit_edge399, %middle.block586
  %indvars.iv418.1.ph = phi i64 [ 1, %vector.memcheck571 ], [ 1, %._crit_edge399 ], [ %i.in, %middle.block586 ] ; 4 uses
  %i.iy = sub nsw i64 %wide.trip.count43.i, %indvars.iv418.1.ph
  %xtraiter1136 = and i64 %i.iy, 3                ; 2 uses
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1136, 0
  br i1 %lcmp.mod1137.not, label %scalar.ph575.prol.loopexit, label %scalar.ph575.prol

scalar.ph575.prol:                                ; preds = %scalar.ph575.preheader, %scalar.ph575.prol
  %indvars.iv418.1.prol = phi i64 [ %indvars.iv.next419.1.prol, %scalar.ph575.prol ], [ %indvars.iv418.1.ph, %scalar.ph575.preheader ] ; 4 uses
  %prol.iter1138 = phi i64 [ %prol.iter1138.next, %scalar.ph575.prol ], [ 0, %scalar.ph575.preheader ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv418.1.prol
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !46
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv418.1.prol
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !46
  %i.jd = fmul double %i.ja, %i.jc
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv418.1.prol
  store double %i.jd, ptr %i.je, align 8, !tbaa !46
  %indvars.iv.next419.1.prol = add nuw nsw i64 %indvars.iv418.1.prol, 1 ; 2 uses
  %prol.iter1138.next = add i64 %prol.iter1138, 1 ; 2 uses
  %prol.iter1138.cmp.not = icmp eq i64 %prol.iter1138.next, %xtraiter1136
  br i1 %prol.iter1138.cmp.not, label %scalar.ph575.prol.loopexit, label %scalar.ph575.prol, !llvm.loop !617

end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15EdgeDrawingImpl20ComputeEllipsePointsEPdS2_S2_i:_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pv, <2 x double> %wide.load941, <2 x double> %i.pw)
  %i.py = fmul <2 x double> %i.px, splat (double 5.000000e-01)
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.pb
  store <2 x double> %i.py, ptr %i.pz, align 8, !tbaa !46, !alias.scope !700, !noalias !701
  %index.next943 = add nuw i64 %index930, 2       ; 2 uses
  %i.qa = icmp eq i64 %index.next943, %n.vec928
  br i1 %i.qa, label %middle.block944, label %vector.body929, !llvm.loop !640

middle.block944:                                  ; preds = %vector.body929
  %cmp.n945 = icmp eq i64 %i.oe, %n.vec928
  br i1 %cmp.n945, label %.preheader.lr.ph.split.i287, label %scalar.ph805.preheader

scalar.ph805.preheader:                           ; preds = %vector.memcheck807, %.lr.ph412, %middle.block944
  %indvars.iv442.ph = phi i64 [ 1, %vector.memcheck807 ], [ 1, %.lr.ph412 ], [ %i.pa, %middle.block944 ]
  br label %scalar.ph805

scalar.ph632:                                     ; preds = %scalar.ph632.prol.loopexit, %scalar.ph632
  %indvars.iv437 = phi i64 [ %indvars.iv.next438.1, %scalar.ph632 ], [ %indvars.iv437.unr, %scalar.ph632.prol.loopexit ] ; 4 uses
  %i.qb = load double, ptr %i.cm, align 8, !tbaa !46
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv437
  store double %i.qb, ptr %i.qc, align 8, !tbaa !46
  %i.qd = load double, ptr %i.cn, align 8, !tbaa !46
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv437
  store double %i.qd, ptr %i.qe, align 8, !tbaa !46
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %i.qf = load double, ptr %i.cm, align 8, !tbaa !46
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv.next438
  store double %i.qf, ptr %i.qg, align 8, !tbaa !46
  %i.qh = load double, ptr %i.cn, align 8, !tbaa !46
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next438
  store double %i.qh, ptr %i.qi, align 8, !tbaa !46
  %indvars.iv.next438.1 = add nuw nsw i64 %indvars.iv437, 2 ; 2 uses
  %exitcond441.not.1 = icmp eq i64 %indvars.iv.next438.1, %wide.trip.count440
  br i1 %exitcond441.not.1, label %.lr.ph412, label %scalar.ph632, !llvm.loop !641

scalar.ph805:                                     ; preds = %scalar.ph805.preheader, %scalar.ph805
  %indvars.iv442 = phi i64 [ %indvars.iv.next443, %scalar.ph805 ], [ %indvars.iv442.ph, %scalar.ph805.preheader ] ; 11 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv442 ; 2 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !46
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv442 ; 2 uses
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !46
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv442 ; 2 uses
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !46
  %i.qp = fneg double %i.qo
  %i.qq = tail call double @llvm.fmuladd.f64(double %i.qk, double %i.qm, double %i.qp)
  %i.qr = fmul double %i.qq, 5.000000e-01
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv442
  store double %i.qr, ptr %i.qs, align 8, !tbaa !46
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv442 ; 2 uses
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !46
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv442 ; 2 uses
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !46
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv442 ; 2 uses
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !46
  %i.qz = fneg double %i.qy
  %i.ra = tail call double @llvm.fmuladd.f64(double %i.qu, double %i.qw, double %i.qz)
  %i.rb = fmul double %i.ra, 5.000000e-01
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv442
  store double %i.rb, ptr %i.rc, align 8, !tbaa !46
  %i.rd = load double, ptr %i.qj, align 8, !tbaa !46
  %i.re = fneg double %i.rd
  %i.rf = load double, ptr %i.ql, align 8, !tbaa !46
  %i.rg = load double, ptr %i.qn, align 8, !tbaa !46
  %i.rh = fneg double %i.rg
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.re, double %i.rf, double %i.rh)
  %i.rj = fmul double %i.ri, 5.000000e-01
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv442
  store double %i.rj, ptr %i.rk, align 8, !tbaa !46
  %i.rl = load double, ptr %i.qt, align 8, !tbaa !46
  %i.rm = fneg double %i.rl
  %i.rn = load double, ptr %i.qv, align 8, !tbaa !46
  %i.ro = load double, ptr %i.qx, align 8, !tbaa !46
  %i.rp = fneg double %i.ro
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.rm, double %i.rn, double %i.rp)
  %i.rr = fmul double %i.rq, 5.000000e-01
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv442
  store double %i.rr, ptr %i.rs, align 8, !tbaa !46
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next443, %wide.trip.count445
  br i1 %exitcond446.not, label %.preheader.lr.ph.split.i287, label %scalar.ph805, !llvm.loop !642

.preheader.lr.ph.split.i287:                      ; preds = %scalar.ph805, %middle.block944
  %wide.trip.count43.i288 = zext nneg i32 %i.b to i64 ; 4 uses
  %i.rt = load ptr, ptr %i.ah, align 8, !tbaa !279 ; 4 uses
  %.pre454 = load ptr, ptr %i.at, align 8, !tbaa !279 ; 8 uses
  %.pre455 = load ptr, ptr %i.av, align 8, !tbaa !279 ; 8 uses
  %i.ru = add nsw i64 %wide.trip.count43.i, -1    ; 3 uses
  %min.iters.check966 = icmp ult i32 %i.b, 9
  br i1 %min.iters.check966, label %.lr.ph.i291.preheader, label %vector.memcheck967

vector.memcheck967:                               ; preds = %.preheader.lr.ph.split.i287
  %i.rv = getelementptr nuw i8, ptr %i.rt, i64 8  ; 3 uses
  %i.rw = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.rx = getelementptr i8, ptr %i.rt, i64 %i.rw  ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.rz = getelementptr nuw i8, ptr %.pre454, i64 8
  %i.sa = getelementptr i8, ptr %.pre454, i64 %i.rw
  %i.sb = getelementptr nuw i8, ptr %.pre455, i64 8
  %i.sc = getelementptr i8, ptr %.pre455, i64 %i.rw
  %bound0968 = icmp ult ptr %i.rv, %i.ry
  %bound1969 = icmp ult ptr %i.dj, %i.rx
  %found.conflict970 = and i1 %bound0968, %bound1969
  %bound0971 = icmp ult ptr %i.rv, %i.sa
  %bound1972 = icmp ult ptr %i.rz, %i.rx
  %found.conflict973 = and i1 %bound0971, %bound1972
  %conflict.rdx974 = or i1 %found.conflict970, %found.conflict973
  %bound0975 = icmp ult ptr %i.rv, %i.sc
  %bound1976 = icmp ult ptr %i.sb, %i.rx
  %found.conflict977 = and i1 %bound0975, %bound1976
  %conflict.rdx978 = or i1 %conflict.rdx974, %found.conflict977
  br i1 %conflict.rdx978, label %.lr.ph.i291.preheader, label %vector.ph979

vector.ph979:                                     ; preds = %vector.memcheck967
  %n.vec980 = and i64 %i.ru, -2                   ; 2 uses
  %i.sd = or i64 %i.ru, 1
  %i.se = load double, ptr %i.dj, align 8, !tbaa !46, !alias.scope !702
  %broadcast.splatinsert984 = insertelement <2 x double> poison, double %i.se, i64 0
  %broadcast.splat985 = shufflevector <2 x double> %broadcast.splatinsert984, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sf = load double, ptr %i.dm, align 8, !tbaa !46, !alias.scope !702
  %broadcast.splatinsert987 = insertelement <2 x double> poison, double %i.sf, i64 0
  %broadcast.splat988 = shufflevector <2 x double> %broadcast.splatinsert987, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph979
  %index982 = phi i64 [ 0, %vector.ph979 ], [ %index.next989, %vector.body981 ] ; 2 uses
  %i.sg = or disjoint i64 %index982, 1            ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.sg ; 3 uses
  store <2 x double> zeroinitializer, ptr %i.sh, align 8, !tbaa !46, !alias.scope !703, !noalias !704
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.pre454, i64 %i.sg
  %wide.load983 = load <2 x double>, ptr %i.si, align 8, !tbaa !46, !alias.scope !705
  %i.sj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat985, <2 x double> %wide.load983, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.sj, ptr %i.sh, align 8, !tbaa !46, !alias.scope !703, !noalias !704
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %.pre455, i64 %i.sg
  %wide.load986 = load <2 x double>, ptr %i.sk, align 8, !tbaa !46, !alias.scope !706
  %i.sl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat988, <2 x double> %wide.load986, <2 x double> %i.sj)
  store <2 x double> %i.sl, ptr %i.sh, align 8, !tbaa !46, !alias.scope !703, !noalias !704
  %index.next989 = add nuw i64 %index982, 2       ; 2 uses
  %i.sm = icmp eq i64 %index.next989, %n.vec980
  br i1 %i.sm, label %middle.block990, label %vector.body981, !llvm.loop !648

middle.block990:                                  ; preds = %vector.body981
  %cmp.n991 = icmp eq i64 %i.ru, %n.vec980
  br i1 %cmp.n991, label %._crit_edge32.split.i299, label %.lr.ph.i291.preheader

.lr.ph.i291.preheader:                            ; preds = %vector.memcheck967, %.preheader.lr.ph.split.i287, %middle.block990
  %indvars.iv40.i292.ph = phi i64 [ 1, %vector.memcheck967 ], [ 1, %.preheader.lr.ph.split.i287 ], [ %i.sd, %middle.block990 ]
  br label %.lr.ph.i291

.lr.ph.i291:                                      ; preds = %.lr.ph.i291.preheader, %.lr.ph.i291
  %indvars.iv40.i292 = phi i64 [ %indvars.iv.next41.i297, %.lr.ph.i291 ], [ %indvars.iv40.i292.ph, %.lr.ph.i291.preheader ] ; 4 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv40.i292 ; 3 uses
  store double 0.000000e+00, ptr %i.sn, align 8, !tbaa !46
  %i.so = load double, ptr %i.dj, align 8, !tbaa !46
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %.pre454, i64 %indvars.iv40.i292
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !46
  %i.sr = tail call double @llvm.fmuladd.f64(double %i.so, double %i.sq, double 0.000000e+00) ; 2 uses
  store double %i.sr, ptr %i.sn, align 8, !tbaa !46
  %i.ss = load double, ptr %i.dm, align 8, !tbaa !46
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %.pre455, i64 %indvars.iv40.i292
  %i.su = load double, ptr %i.st, align 8, !tbaa !46
  %i.sv = tail call double @llvm.fmuladd.f64(double %i.ss, double %i.su, double %i.sr)
  store double %i.sv, ptr %i.sn, align 8, !tbaa !46
  %indvars.iv.next41.i297 = add nuw nsw i64 %indvars.iv40.i292, 1 ; 2 uses
  %exitcond44.not.i298 = icmp eq i64 %indvars.iv.next41.i297, %wide.trip.count43.i288
  br i1 %exitcond44.not.i298, label %._crit_edge32.split.i299, label %.lr.ph.i291, !llvm.loop !649

._crit_edge32.split.i299:                         ; preds = %.lr.ph.i291, %middle.block990
  %i.sw = load ptr, ptr %i.aj, align 8, !tbaa !279 ; 4 uses
  %i.sx = add nsw i64 %wide.trip.count43.i, -1    ; 3 uses
  %min.iters.check1012 = icmp ult i32 %i.b, 9
  br i1 %min.iters.check1012, label %.lr.ph.i291.1.preheader, label %vector.memcheck1013

vector.memcheck1013:                              ; preds = %._crit_edge32.split.i299
  %i.sy = getelementptr nuw i8, ptr %i.sw, i64 8  ; 3 uses
  %i.sz = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.ta = getelementptr i8, ptr %i.sw, i64 %i.sz  ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.tc = getelementptr nuw i8, ptr %.pre454, i64 8
  %i.td = getelementptr i8, ptr %.pre454, i64 %i.sz
  %i.te = getelementptr nuw i8, ptr %.pre455, i64 8
  %i.tf = getelementptr i8, ptr %.pre455, i64 %i.sz
  %bound01014 = icmp ult ptr %i.sy, %i.tb
  %bound11015 = icmp ult ptr %i.dp, %i.ta
  %found.conflict1016 = and i1 %bound01014, %bound11015
  %bound01017 = icmp ult ptr %i.sy, %i.td
  %bound11018 = icmp ult ptr %i.tc, %i.ta
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %conflict.rdx1020 = or i1 %found.conflict1016, %found.conflict1019
  %bound01021 = icmp ult ptr %i.sy, %i.tf
  %bound11022 = icmp ult ptr %i.te, %i.ta
  %found.conflict1023 = and i1 %bound01021, %bound11022
  %conflict.rdx1024 = or i1 %conflict.rdx1020, %found.conflict1023
  br i1 %conflict.rdx1024, label %.lr.ph.i291.1.preheader, label %vector.ph1025

vector.ph1025:                                    ; preds = %vector.memcheck1013
  %n.vec1026 = and i64 %i.sx, -2                  ; 2 uses
  %i.tg = or i64 %i.sx, 1
  %i.th = load double, ptr %i.dp, align 8, !tbaa !46, !alias.scope !707
  %broadcast.splatinsert1030 = insertelement <2 x double> poison, double %i.th, i64 0
  %broadcast.splat1031 = shufflevector <2 x double> %broadcast.splatinsert1030, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ti = load double, ptr %6, align 8, !tbaa !46, !alias.scope !707
  %broadcast.splatinsert1033 = insertelement <2 x double> poison, double %i.ti, i64 0
  %broadcast.splat1034 = shufflevector <2 x double> %broadcast.splatinsert1033, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1025
  %index1028 = phi i64 [ 0, %vector.ph1025 ], [ %index.next1035, %vector.body1027 ] ; 2 uses
  %i.tj = or disjoint i64 %index1028, 1           ; 3 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.tj ; 3 uses
  store <2 x double> zeroinitializer, ptr %i.tk, align 8, !tbaa !46, !alias.scope !708, !noalias !709
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.pre454, i64 %i.tj
  %wide.load1029 = load <2 x double>, ptr %i.tl, align 8, !tbaa !46, !alias.scope !710
  %i.tm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1031, <2 x double> %wide.load1029, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.tm, ptr %i.tk, align 8, !tbaa !46, !alias.scope !708, !noalias !709
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %.pre455, i64 %i.tj
  %wide.load1032 = load <2 x double>, ptr %i.tn, align 8, !tbaa !46, !alias.scope !711
  %i.to = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1034, <2 x double> %wide.load1032, <2 x double> %i.tm)
  store <2 x double> %i.to, ptr %i.tk, align 8, !tbaa !46, !alias.scope !708, !noalias !709
  %index.next1035 = add nuw i64 %index1028, 2     ; 2 uses
  %i.tp = icmp eq i64 %index.next1035, %n.vec1026
  br i1 %i.tp, label %middle.block1036, label %vector.body1027, !llvm.loop !655

middle.block1036:                                 ; preds = %vector.body1027
  %cmp.n1037 = icmp eq i64 %i.sx, %n.vec1026
  br i1 %cmp.n1037, label %._crit_edge32.split.i299.1, label %.lr.ph.i291.1.preheader

.lr.ph.i291.1.preheader:                          ; preds = %vector.memcheck1013, %._crit_edge32.split.i299, %middle.block1036
  %indvars.iv40.i292.1.ph = phi i64 [ 1, %vector.memcheck1013 ], [ 1, %._crit_edge32.split.i299 ], [ %i.tg, %middle.block1036 ]
  br label %.lr.ph.i291.1

.lr.ph.i291.1:                                    ; preds = %.lr.ph.i291.1.preheader, %.lr.ph.i291.1
  %indvars.iv40.i292.1 = phi i64 [ %indvars.iv.next41.i297.1, %.lr.ph.i291.1 ], [ %indvars.iv40.i292.1.ph, %.lr.ph.i291.1.preheader ] ; 4 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %indvars.iv40.i292.1 ; 3 uses
  store double 0.000000e+00, ptr %i.tq, align 8, !tbaa !46
  %i.tr = load double, ptr %i.dp, align 8, !tbaa !46
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %.pre454, i64 %indvars.iv40.i292.1
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !46
  %i.tu = tail call double @llvm.fmuladd.f64(double %i.tr, double %i.tt, double 0.000000e+00) ; 2 uses
  store double %i.tu, ptr %i.tq, align 8, !tbaa !46
  %i.tv = load double, ptr %6, align 8, !tbaa !46
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %.pre455, i64 %indvars.iv40.i292.1
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !46
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.tv, double %i.tx, double %i.tu)
  store double %i.ty, ptr %i.tq, align 8, !tbaa !46
  %indvars.iv.next41.i297.1 = add nuw nsw i64 %indvars.iv40.i292.1, 1 ; 2 uses
  %exitcond44.not.i298.1 = icmp eq i64 %indvars.iv.next41.i297.1, %wide.trip.count43.i288
  br i1 %exitcond44.not.i298.1, label %._crit_edge32.split.i299.1, label %.lr.ph.i291.1, !llvm.loop !656

._crit_edge32.split.i299.1:                       ; preds = %.lr.ph.i291.1, %middle.block1036
  %i.tz = load ptr, ptr %i.an, align 8, !tbaa !279 ; 4 uses
  %.pre456 = load ptr, ptr %i.az, align 8, !tbaa !279 ; 8 uses
  %.pre457 = load ptr, ptr %i.bb, align 8, !tbaa !279 ; 8 uses
  %i.ua = add nsw i64 %wide.trip.count43.i, -1    ; 3 uses
  %min.iters.check1058 = icmp ult i32 %i.b, 9
  br i1 %min.iters.check1058, label %.lr.ph.i308.preheader, label %vector.memcheck1059

vector.memcheck1059:                              ; preds = %._crit_edge32.split.i299.1
  %i.ub = getelementptr nuw i8, ptr %i.tz, i64 8  ; 3 uses
  %i.uc = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.ud = getelementptr i8, ptr %i.tz, i64 %i.uc  ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.uf = getelementptr nuw i8, ptr %.pre456, i64 8
  %i.ug = getelementptr i8, ptr %.pre456, i64 %i.uc
  %i.uh = getelementptr nuw i8, ptr %.pre457, i64 8
  %i.ui = getelementptr i8, ptr %.pre457, i64 %i.uc
  %bound01060 = icmp ult ptr %i.ub, %i.ue
  %bound11061 = icmp ult ptr %i.dj, %i.ud
  %found.conflict1062 = and i1 %bound01060, %bound11061
  %bound01063 = icmp ult ptr %i.ub, %i.ug
  %bound11064 = icmp ult ptr %i.uf, %i.ud
  %found.conflict1065 = and i1 %bound01063, %bound11064
  %conflict.rdx1066 = or i1 %found.conflict1062, %found.conflict1065
  %bound01067 = icmp ult ptr %i.ub, %i.ui
  %bound11068 = icmp ult ptr %i.uh, %i.ud
  %found.conflict1069 = and i1 %bound01067, %bound11068
  %conflict.rdx1070 = or i1 %conflict.rdx1066, %found.conflict1069
  br i1 %conflict.rdx1070, label %.lr.ph.i308.preheader, label %vector.ph1071

vector.ph1071:                                    ; preds = %vector.memcheck1059
  %n.vec1072 = and i64 %i.ua, -2                  ; 2 uses
  %i.uj = or i64 %i.ua, 1
  %i.uk = load double, ptr %i.dj, align 8, !tbaa !46, !alias.scope !712
  %broadcast.splatinsert1076 = insertelement <2 x double> poison, double %i.uk, i64 0
  %broadcast.splat1077 = shufflevector <2 x double> %broadcast.splatinsert1076, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ul = load double, ptr %i.dm, align 8, !tbaa !46, !alias.scope !712
  %broadcast.splatinsert1079 = insertelement <2 x double> poison, double %i.ul, i64 0
  %broadcast.splat1080 = shufflevector <2 x double> %broadcast.splatinsert1079, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1081, %vector.body1073 ] ; 2 uses
  %i.um = or disjoint i64 %index1074, 1           ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.um ; 3 uses
  store <2 x double> zeroinitializer, ptr %i.un, align 8, !tbaa !46, !alias.scope !713, !noalias !714
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %.pre456, i64 %i.um
  %wide.load1075 = load <2 x double>, ptr %i.uo, align 8, !tbaa !46, !alias.scope !715
  %i.up = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1077, <2 x double> %wide.load1075, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.up, ptr %i.un, align 8, !tbaa !46, !alias.scope !713, !noalias !714
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %.pre457, i64 %i.um
  %wide.load1078 = load <2 x double>, ptr %i.uq, align 8, !tbaa !46, !alias.scope !716
  %i.ur = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1080, <2 x double> %wide.load1078, <2 x double> %i.up)
  store <2 x double> %i.ur, ptr %i.un, align 8, !tbaa !46, !alias.scope !713, !noalias !714
  %index.next1081 = add nuw i64 %index1074, 2     ; 2 uses
  %i.us = icmp eq i64 %index.next1081, %n.vec1072
  br i1 %i.us, label %middle.block1082, label %vector.body1073, !llvm.loop !662

middle.block1082:                                 ; preds = %vector.body1073
  %cmp.n1083 = icmp eq i64 %i.ua, %n.vec1072
  br i1 %cmp.n1083, label %._crit_edge32.split.i316, label %.lr.ph.i308.preheader

.lr.ph.i308.preheader:                            ; preds = %vector.memcheck1059, %._crit_edge32.split.i299.1, %middle.block1082
  %indvars.iv40.i309.ph = phi i64 [ 1, %vector.memcheck1059 ], [ 1, %._crit_edge32.split.i299.1 ], [ %i.uj, %middle.block1082 ]
  br label %.lr.ph.i308

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.preheader, %.lr.ph.i308
  %indvars.iv40.i309 = phi i64 [ %indvars.iv.next41.i314, %.lr.ph.i308 ], [ %indvars.iv40.i309.ph, %.lr.ph.i308.preheader ] ; 4 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv40.i309 ; 3 uses
  store double 0.000000e+00, ptr %i.ut, align 8, !tbaa !46
  %i.uu = load double, ptr %i.dj, align 8, !tbaa !46
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %.pre456, i64 %indvars.iv40.i309
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !46
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.uu, double %i.uw, double 0.000000e+00) ; 2 uses
  store double %i.ux, ptr %i.ut, align 8, !tbaa !46
  %i.uy = load double, ptr %i.dm, align 8, !tbaa !46
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %.pre457, i64 %indvars.iv40.i309
  %i.va = load double, ptr %i.uz, align 8, !tbaa !46
  %i.vb = tail call double @llvm.fmuladd.f64(double %i.uy, double %i.va, double %i.ux)
  store double %i.vb, ptr %i.ut, align 8, !tbaa !46
  %indvars.iv.next41.i314 = add nuw nsw i64 %indvars.iv40.i309, 1 ; 2 uses
  %exitcond44.not.i315 = icmp eq i64 %indvars.iv.next41.i314, %wide.trip.count43.i288
  br i1 %exitcond44.not.i315, label %._crit_edge32.split.i316, label %.lr.ph.i308, !llvm.loop !663

._crit_edge32.split.i316:                         ; preds = %.lr.ph.i308, %middle.block1082
  %i.vc = load ptr, ptr %i.ap, align 8, !tbaa !279 ; 4 uses
  %i.vd = add nsw i64 %wide.trip.count43.i, -1    ; 3 uses
  %min.iters.check1104 = icmp ult i32 %i.b, 9
  br i1 %min.iters.check1104, label %.lr.ph.i308.1.preheader, label %vector.memcheck1105

vector.memcheck1105:                              ; preds = %._crit_edge32.split.i316
  %i.ve = getelementptr nuw i8, ptr %i.vc, i64 8  ; 3 uses
  %i.vf = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.vg = getelementptr i8, ptr %i.vc, i64 %i.vf  ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.vi = getelementptr nuw i8, ptr %.pre456, i64 8
  %i.vj = getelementptr i8, ptr %.pre456, i64 %i.vf
  %i.vk = getelementptr nuw i8, ptr %.pre457, i64 8
  %i.vl = getelementptr i8, ptr %.pre457, i64 %i.vf
  %bound01106 = icmp ult ptr %i.ve, %i.vh
  %bound11107 = icmp ult ptr %i.dp, %i.vg
  %found.conflict1108 = and i1 %bound01106, %bound11107
  %bound01109 = icmp ult ptr %i.ve, %i.vj
  %bound11110 = icmp ult ptr %i.vi, %i.vg
  %found.conflict1111 = and i1 %bound01109, %bound11110
  %conflict.rdx1112 = or i1 %found.conflict1108, %found.conflict1111
  %bound01113 = icmp ult ptr %i.ve, %i.vl
  %bound11114 = icmp ult ptr %i.vk, %i.vg
  %found.conflict1115 = and i1 %bound01113, %bound11114
  %conflict.rdx1116 = or i1 %conflict.rdx1112, %found.conflict1115
  br i1 %conflict.rdx1116, label %.lr.ph.i308.1.preheader, label %vector.ph1117

vector.ph1117:                                    ; preds = %vector.memcheck1105
  %n.vec1118 = and i64 %i.vd, -2                  ; 2 uses
  %i.vm = or i64 %i.vd, 1
  %i.vn = load double, ptr %i.dp, align 8, !tbaa !46, !alias.scope !717
  %broadcast.splatinsert1122 = insertelement <2 x double> poison, double %i.vn, i64 0
  %broadcast.splat1123 = shufflevector <2 x double> %broadcast.splatinsert1122, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vo = load double, ptr %6, align 8, !tbaa !46, !alias.scope !717
  %broadcast.splatinsert1125 = insertelement <2 x double> poison, double %i.vo, i64 0
  %broadcast.splat1126 = shufflevector <2 x double> %broadcast.splatinsert1125, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %vector.ph1117
  %index1120 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1127, %vector.body1119 ] ; 2 uses
  %i.vp = or disjoint i64 %index1120, 1           ; 3 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vp ; 3 uses
  store <2 x double> zeroinitializer, ptr %i.vq, align 8, !tbaa !46, !alias.scope !718, !noalias !719
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %.pre456, i64 %i.vp
  %wide.load1121 = load <2 x double>, ptr %i.vr, align 8, !tbaa !46, !alias.scope !720
  %i.vs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1123, <2 x double> %wide.load1121, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.vs, ptr %i.vq, align 8, !tbaa !46, !alias.scope !718, !noalias !719
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %.pre457, i64 %i.vp
  %wide.load1124 = load <2 x double>, ptr %i.vt, align 8, !tbaa !46, !alias.scope !721
  %i.vu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1126, <2 x double> %wide.load1124, <2 x double> %i.vs)
  store <2 x double> %i.vu, ptr %i.vq, align 8, !tbaa !46, !alias.scope !718, !noalias !719
  %index.next1127 = add nuw i64 %index1120, 2     ; 2 uses
  %i.vv = icmp eq i64 %index.next1127, %n.vec1118
  br i1 %i.vv, label %middle.block1128, label %vector.body1119, !llvm.loop !669

middle.block1128:                                 ; preds = %vector.body1119
  %cmp.n1129 = icmp eq i64 %i.vd, %n.vec1118
  br i1 %cmp.n1129, label %.lr.ph416, label %.lr.ph.i308.1.preheader

.lr.ph.i308.1.preheader:                          ; preds = %vector.memcheck1105, %._crit_edge32.split.i316, %middle.block1128
  %indvars.iv40.i309.1.ph = phi i64 [ 1, %vector.memcheck1105 ], [ 1, %._crit_edge32.split.i316 ], [ %i.vm, %middle.block1128 ]
  br label %.lr.ph.i308.1

.lr.ph.i308.1:                                    ; preds = %.lr.ph.i308.1.preheader, %.lr.ph.i308.1
  %indvars.iv40.i309.1 = phi i64 [ %indvars.iv.next41.i314.1, %.lr.ph.i308.1 ], [ %indvars.iv40.i309.1.ph, %.lr.ph.i308.1.preheader ] ; 4 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv40.i309.1 ; 3 uses
  store double 0.000000e+00, ptr %i.vw, align 8, !tbaa !46
  %i.vx = load double, ptr %i.dp, align 8, !tbaa !46
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %.pre456, i64 %indvars.iv40.i309.1
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !46
  %i.wa = tail call double @llvm.fmuladd.f64(double %i.vx, double %i.vz, double 0.000000e+00) ; 2 uses
  store double %i.wa, ptr %i.vw, align 8, !tbaa !46
  %i.wb = load double, ptr %6, align 8, !tbaa !46
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.pre457, i64 %indvars.iv40.i309.1
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !46
  %i.we = tail call double @llvm.fmuladd.f64(double %i.wb, double %i.wd, double %i.wa)
  store double %i.we, ptr %i.vw, align 8, !tbaa !46
  %indvars.iv.next41.i314.1 = add nuw nsw i64 %indvars.iv40.i309.1, 1 ; 2 uses
  %exitcond44.not.i315.1 = icmp eq i64 %indvars.iv.next41.i314.1, %wide.trip.count43.i288
  br i1 %exitcond44.not.i315.1, label %.lr.ph416, label %.lr.ph.i308.1, !llvm.loop !670

.lr.ph416:                                        ; preds = %.lr.ph.i308.1, %middle.block1128
  %i.wf = zext nneg i32 %i.a to i64               ; 2 uses
  %wide.trip.count450 = zext nneg i32 %i.b to i64
  br label %bb.h

.lr.ph.i320.preheader:                            ; preds = %bb.k, %._crit_edge
  %i.wg = load ptr, ptr %i.c, align 8, !tbaa !279 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %.lr.ph.i320.1, label %bb.l

bb.h:                                             ; preds = %.lr.ph416, %bb.k
  %indvars.iv447 = phi i64 [ 1, %.lr.ph416 ], [ %indvars.iv.next448, %bb.k ] ; 8 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv447
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !46
  %i.wk = fcmp oeq double %i.wj, -1.000000e+00
  br i1 %i.wk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.wl = add nsw i64 %indvars.iv447, -1          ; 3 uses
  %i.wm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.wl
  store double -1.000000e+00, ptr %i.wm, align 8, !tbaa !46
  %i.wn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wl
  store double -1.000000e+00, ptr %i.wn, align 8, !tbaa !46
  %i.wo = add nuw nsw i64 %i.wl, %i.wf            ; 2 uses
  %i.wp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.wo
  store double -1.000000e+00, ptr %i.wp, align 8, !tbaa !46
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.wq = load ptr, ptr %i.ah, align 8, !tbaa !279
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %indvars.iv447
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !46
  %i.wt = add nsw i64 %indvars.iv447, -1          ; 3 uses
  %i.wu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.wt
  store double %i.ws, ptr %i.wu, align 8, !tbaa !46
  %i.wv = load ptr, ptr %i.aj, align 8, !tbaa !279
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv447
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !46
  %i.wy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.wt
  store double %i.wx, ptr %i.wy, align 8, !tbaa !46
  %i.wz = load ptr, ptr %i.an, align 8, !tbaa !279
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv447
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !46
  %i.xc = add nuw nsw i64 %i.wt, %i.wf            ; 2 uses
  %i.xd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.xc
  store double %i.xb, ptr %i.xd, align 8, !tbaa !46
  %i.xe = load ptr, ptr %i.ap, align 8, !tbaa !279
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv447
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink484 = phi i64 [ %i.wo, %bb.i ], [ %i.xc, %bb.j ]
  %.sink482 = phi double [ -1.000000e+00, %bb.i ], [ %i.xg, %bb.j ]
  %i.xh = getelementptr inbounds [8 x i8], ptr %2, i64 %.sink484
  store double %.sink482, ptr %i.xh, align 8, !tbaa !46
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %.lr.ph.i320.preheader, label %bb.h, !llvm.loop !671

bb.l:                                             ; preds = %.lr.ph.i320.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.wg) #43
  br label %.lr.ph.i320.1

.lr.ph.i320.1:                                    ; preds = %bb.l, %.lr.ph.i320.preheader
  %i.xi = load ptr, ptr %i.j, align 8, !tbaa !279 ; 2 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %.lr.ph.i320.2, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i320.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.xi) #43
  br label %.lr.ph.i320.2

.lr.ph.i320.2:                                    ; preds = %bb.m, %.lr.ph.i320.1
  %i.xk = load ptr, ptr %i.l, align 8, !tbaa !279 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i320.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.xk) #43
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit: ; preds = %bb.n, %.lr.ph.i320.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #43
  %i.xm = load ptr, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.xn = icmp eq ptr %i.xm, null
  br i1 %i.xn, label %.lr.ph.i324.1, label %bb.o

bb.o:                                             ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.xm) #43
  br label %.lr.ph.i324.1

.lr.ph.i324.1:                                    ; preds = %bb.o, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit
  %i.xo = load ptr, ptr %i.p, align 8, !tbaa !279 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %.lr.ph.i324.2, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i324.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.xo) #43
  br label %.lr.ph.i324.2

.lr.ph.i324.2:                                    ; preds = %bb.p, %.lr.ph.i324.1
  %i.xq = load ptr, ptr %i.r, align 8, !tbaa !279 ; 2 uses
  %i.xr = icmp eq ptr %i.xq, null
  br i1 %i.xr, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit328, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i324.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.xq) #43
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit328

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit328: ; preds = %bb.q, %.lr.ph.i324.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #43
  %i.xs = load ptr, ptr %i.s, align 8, !tbaa !279 ; 2 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %.lr.ph.i329.1, label %bb.r

bb.r:                                             ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit328
  tail call void @_ZdaPv(ptr noundef nonnull %i.xs) #43
  br label %.lr.ph.i329.1

.lr.ph.i329.1:                                    ; preds = %bb.r, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit328
  %i.xu = load ptr, ptr %i.v, align 8, !tbaa !279 ; 2 uses
  %i.xv = icmp eq ptr %i.xu, null
  br i1 %i.xv, label %.lr.ph.i329.2, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i329.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.xu) #43
  br label %.lr.ph.i329.2

.lr.ph.i329.2:                                    ; preds = %bb.s, %.lr.ph.i329.1
  %i.xw = load ptr, ptr %i.x, align 8, !tbaa !279 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i329.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.xw) #43
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333: ; preds = %bb.t, %.lr.ph.i329.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #43
  %i.xy = load ptr, ptr %i.y, align 8, !tbaa !279 ; 2 uses
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %.lr.ph.i334.1, label %bb.u

bb.u:                                             ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333
  tail call void @_ZdaPv(ptr noundef nonnull %i.xy) #43
  br label %.lr.ph.i334.1

.lr.ph.i334.1:                                    ; preds = %bb.u, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333
  %i.ya = load ptr, ptr %i.ab, align 8, !tbaa !279 ; 2 uses
  %i.yb = icmp eq ptr %i.ya, null
  br i1 %i.yb, label %.lr.ph.i334.2, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i334.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.ya) #43
  br label %.lr.ph.i334.2

.lr.ph.i334.2:                                    ; preds = %bb.v, %.lr.ph.i334.1
  %i.yc = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, null
  br i1 %i.yd, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit338, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i334.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.yc) #43
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit338

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit338: ; preds = %bb.w, %.lr.ph.i334.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #43
  %i.ye = load ptr, ptr %i.ae, align 8, !tbaa !279 ; 2 uses
  %i.yf = icmp eq ptr %i.ye, null
  br i1 %i.yf, label %.lr.ph.i339.1, label %bb.x

bb.x:                                             ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit338
  tail call void @_ZdaPv(ptr noundef nonnull %i.ye) #43
  br label %.lr.ph.i339.1

.lr.ph.i339.1:                                    ; preds = %bb.x, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit338
  %i.yg = load ptr, ptr %i.ah, align 8, !tbaa !279 ; 2 uses
  %i.yh = icmp eq ptr %i.yg, null
  br i1 %i.yh, label %.lr.ph.i339.2, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i339.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.yg) #43
  br label %.lr.ph.i339.2

.lr.ph.i339.2:                                    ; preds = %bb.y, %.lr.ph.i339.1
  %i.yi = load ptr, ptr %i.aj, align 8, !tbaa !279 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit343, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i339.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.yi) #43
end_hunk_1
