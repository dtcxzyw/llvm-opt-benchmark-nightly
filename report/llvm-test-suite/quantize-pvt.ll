Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/quantize-pvt?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 38
begin_hunk_0_@iteration_init:bb.a
  %i.bp = fadd double %i.bf, %i.bo
  %i.bq = fmul double %i.bp, 5.000000e-01
  %i.br = tail call double @pow(double noundef %i.bq, double noundef 7.500000e-01) #14, !tbaa !4
  %i.bs = fsub double %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @adj43, i64 %indvars.iv.next86
  store double %i.bs, ptr %i.bt, align 8, !tbaa !19
  br label %.preheader68

bb.c:                                             ; preds = %.preheader68
  store double 5.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @adj43, i64 65656), align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %indvars.iv89 = phi i64 [ 1, %bb.c ], [ %indvars.iv.next90.3, %bb.e ] ; 5 uses
  %i.bu = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv89 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !19
  %i.bx = load double, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %i.by = fadd double %i.bw, %i.bx
  %i.bz = fmul double %i.by, 5.000000e-01
  %i.ca = tail call double @pow(double noundef %i.bz, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %i.cb = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv89
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.ce = fadd double %i.bx, %i.cd
  %i.cf = fmul double %i.ce, 5.000000e-01
  %i.cg = tail call double @pow(double noundef %i.cf, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %i.ch = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv89
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %i.ck = fadd double %i.cd, %i.cj
  %i.cl = fmul double %i.ck, 5.000000e-01
  %i.cm = tail call double @pow(double noundef %i.cl, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %exitcond92.not.2 = icmp eq i64 %indvars.iv.next90.2, 8208
  br i1 %exitcond92.not.2, label %.preheader67, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv.next90.2
  %i.co = load double, ptr %i.cn, align 8, !tbaa !19
  %i.cp = fadd double %i.cj, %i.co
  %i.cq = fmul double %i.cp, 5.000000e-01
  %i.cr = tail call double @pow(double noundef %i.cq, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4
  br label %bb.d

.preheader67:                                     ; preds = %bb.d, %.preheader67
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %.preheader67 ], [ 0, %bb.d ] ; 5 uses
  %i.cs = trunc i64 %indvars.iv93 to i32
  %i.ct = add nsw i32 %i.cs, -210
  %i.cu = sitofp i32 %i.ct to double              ; 2 uses
  %i.cv = fmul nnan double %i.cu, -1.875000e-01
  %exp2 = tail call double @exp2(double %i.cv) #14
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @ipow20, i64 %indvars.iv93
  store double %exp2, ptr %i.cw, align 16, !tbaa !19
  %i.cx = fmul nnan double %i.cu, 2.500000e-01
  %exp264 = tail call double @exp2(double %i.cx) #14
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @pow20, i64 %indvars.iv93
  store double %exp264, ptr %i.cy, align 16, !tbaa !19
  %indvars.iv.next94 = or disjoint i64 %indvars.iv93, 1 ; 3 uses
  %i.cz = trunc i64 %indvars.iv.next94 to i32
  %i.da = add nsw i32 %i.cz, -210
  %i.db = sitofp i32 %i.da to double              ; 2 uses
  %i.dc = fmul nnan double %i.db, -1.875000e-01
  %exp2.1 = tail call double @exp2(double %i.dc) #14
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @ipow20, i64 %indvars.iv.next94
  store double %exp2.1, ptr %i.dd, align 8, !tbaa !19
  %i.de = fmul nnan double %i.db, 2.500000e-01
  %exp264.1 = tail call double @exp2(double %i.de) #14
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @pow20, i64 %indvars.iv.next94
  store double %exp264.1, ptr %i.df, align 8, !tbaa !19
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %indvars.iv.next94.1, 256
  br i1 %exitcond96.not.1, label %.loopexit, label %.preheader67, !llvm.loop !23

.loopexit:                                        ; preds = %.preheader67, %bb.a
  store i32 0, ptr @convert_mdct, align 4, !tbaa !4
  store i32 0, ptr @reduce_sidechannel, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.di = icmp eq i32 %i.dh, 2
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  store i32 1, ptr @convert_mdct, align 4, !tbaa !4
  store i32 1, ptr @reduce_sidechannel, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !25 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !26 ; 4 uses
  %i.do = icmp sgt i32 %i.dn, 0                   ; 2 uses
  br i1 %i.dl, label %.preheader66.lr.ph, label %.preheader65

.preheader66.lr.ph:                               ; preds = %bb.g
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
  br i1 %i.do, label %.preheader66.preheader, label %._crit_edge81

.preheader66.preheader:                           ; preds = %.preheader66.lr.ph
  %wide.trip.count104 = zext nneg i32 %i.dk to i64
  %wide.trip.count = zext nneg i32 %i.dn to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dq = icmp eq i32 %i.dn, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod117 = trunc i32 %i.dn to i1
  br label %.preheader66

.preheader66:                                     ; preds = %.preheader66.preheader, %._crit_edge
  %indvars.iv101 = phi i64 [ 0, %.preheader66.preheader ], [ %indvars.iv.next102, %._crit_edge ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [240 x i8], ptr %i.dp, i64 %indvars.iv101 ; 3 uses
  br i1 %i.dq, label %.epil.preheader, label %.preheader66.new

.preheader65:                                     ; preds = %bb.g
  br i1 %i.do, label %.preheader.lr.ph, label %._crit_edge81

.preheader.lr.ph:                                 ; preds = %._crit_edge, %.preheader65
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.preheader

.preheader66.new:                                 ; preds = %.preheader66, %.preheader66.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.preheader66.new ], [ 0, %.preheader66 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader66.new ], [ 0, %.preheader66 ]
  %i.du = getelementptr inbounds nuw [120 x i8], ptr %i.dr, i64 %indvars.iv97 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !27
  %i.dx = icmp eq i32 %i.dw, 2                    ; 2 uses
  %spec.select = select i1 %i.dx, i32 0, i32 21
  %spec.select116 = select i1 %i.dx, i32 0, i32 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  store i32 %spec.select, ptr %i.dy, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 84
  store i32 %spec.select116, ptr %i.dz, align 4, !tbaa !31
  %i.ea = getelementptr inbounds nuw [120 x i8], ptr %i.dr, i64 %indvars.iv97 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !27
  %i.ed = icmp eq i32 %i.ec, 2                    ; 2 uses
  %spec.select.1 = select i1 %i.ed, i32 0, i32 21
  %spec.select116.1 = select i1 %i.ed, i32 0, i32 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store i32 %spec.select.1, ptr %i.ee, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 204
  store i32 %spec.select116.1, ptr %i.ef, align 4, !tbaa !31
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader66.new, !llvm.loop !32

._crit_edge.unr-lcssa:                            ; preds = %.preheader66.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader66
  %indvars.iv97.epil.init = phi i64 [ 0, %.preheader66 ], [ %indvars.iv.next98.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.eg = getelementptr inbounds nuw [120 x i8], ptr %i.dr, i64 %indvars.iv97.epil.init ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !27
  %i.ej = icmp eq i32 %i.ei, 2                    ; 2 uses
  %spec.select.epil = select i1 %i.ej, i32 0, i32 21
  %spec.select116.epil = select i1 %i.ej, i32 0, i32 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  store i32 %spec.select.epil, ptr %i.ek, align 8, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 84
  store i32 %spec.select116.epil, ptr %i.el, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %.preheader.lr.ph, label %.preheader66, !llvm.loop !33

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv109 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next110, %.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %indvars.iv109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.em, i8 0, i64 16, i1 false), !tbaa !4
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.en = load i32, ptr %i.ds, align 4, !tbaa !26
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next110, %i.eo
  br i1 %i.ep, label %.preheader, label %._crit_edge81, !llvm.loop !34

._crit_edge81:                                    ; preds = %.preheader, %.preheader66.lr.ph, %.preheader65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @compute_ath(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = sitofp i32 %i.b to double
  %i.d = fdiv double %i.c, 1.000000e+03           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  br label %bb.b

..loopexit52_crit_edge:                           ; preds = %.lr.ph
  store double %., ptr %i.h, align 8, !tbaa !19
  br label %.loopexit52

.loopexit52:                                      ; preds = %..loopexit52_crit_edge, %bb.b
  %exitcond62.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond62.not, label %.preheader.a, label %bb.b, !llvm.loop !36

bb.b:                                             ; preds = %bb.a, %.loopexit52
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit52 ] ; 3 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv
  %4 = load i32, ptr %3, align 4, !tbaa !4        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store double f0x547D42AEA2879F2E, ptr %i.h, align 8, !tbaa !19
  %i.i = icmp slt i32 %4, %i.g
  br i1 %i.i, label %.lr.ph, label %.loopexit52

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.54 = phi double [ %., %.lr.ph ], [ f0x547D42AEA2879F2E, %bb.b ] ; 2 uses
  %.053 = phi i32 [ %i.ab, %.lr.ph ], [ %4, %bb.b ] ; 2 uses
  %i.j = sitofp i32 %.053 to double
  %i.k = fmul double %i.d, %i.j
  %i.l = fdiv double %i.k, 1.152000e+03           ; 2 uses
  %i.m = fcmp olt double %i.l, 2.000000e-02
  %i.n = select i1 %i.m, double 2.000000e-02, double %i.l ; 3 uses
  %i.o = tail call double @pow(double noundef %i.n, double noundef -8.000000e-01) #14, !tbaa !4
  %i.p = fadd double %i.n, -3.300000e+00
  %i.q = tail call double @pow(double noundef %i.p, double noundef 2.000000e+00) #14, !tbaa !4
  %i.r = fmul double %i.q, -6.000000e-01
  %i.s = tail call double @exp(double noundef %i.r) #14, !tbaa !4
  %i.t = fmul double %i.s, -6.500000e+00
  %i.u = tail call double @llvm.fmuladd.f64(double %i.o, double 3.640000e+00, double %i.t)
  %i.v = tail call double @pow(double noundef %i.n, double noundef 4.000000e+00) #14, !tbaa !4
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double 1.000000e-03, double %i.u)
  %i.x = load i32, ptr %i.e, align 4, !tbaa !37
  %.not.i = icmp eq i32 %i.x, 0
  %.0.v.i = select i1 %.not.i, double -1.140000e+02, double -2.000000e+02
  %.0.i = fadd double %i.w, %.0.v.i
  %i.y = fdiv double %.0.i, 1.000000e+01
  %i.z = tail call double @pow(double noundef 1.000000e+01, double noundef %i.y) #14, !tbaa !4 ; 2 uses
  %i.aa = fcmp olt double %.54, %i.z
  %. = select i1 %i.aa, double %.54, double %i.z  ; 2 uses
  %i.ab = add nsw i32 %.053, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.g
  br i1 %exitcond.not, label %..loopexit52_crit_edge, label %.lr.ph, !llvm.loop !38

..loopexit_crit_edge:                             ; preds = %.lr.ph57
  store double %.48, ptr %i.ae, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader.a
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 12
  br i1 %exitcond67.not, label %bb.c, label %.preheader.a, !llvm.loop !39

.preheader.a:                                     ; preds = %.loopexit52, %.loopexit
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.loopexit ], [ 0, %.loopexit52 ] ; 3 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv64
  %6 = load i32, ptr %5, align 4, !tbaa !4        ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv.next65
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64 ; 2 uses
  store double f0x547D42AEA2879F2E, ptr %i.ae, align 8, !tbaa !19
  %i.af = icmp slt i32 %6, %i.ad
  br i1 %i.af, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader.a, %.lr.ph57
  %.4859 = phi double [ %.48, %.lr.ph57 ], [ f0x547D42AEA2879F2E, %.preheader.a ] ; 2 uses
  %.156 = phi i32 [ %i.ay, %.lr.ph57 ], [ %6, %.preheader.a ] ; 2 uses
  %i.ag = sitofp i32 %.156 to double
  %i.ah = fmul double %i.d, %i.ag
  %i.ai = fdiv double %i.ah, 3.840000e+02         ; 2 uses
  %i.aj = fcmp olt double %i.ai, 2.000000e-02
  %i.ak = select i1 %i.aj, double 2.000000e-02, double %i.ai ; 3 uses
  %i.al = tail call double @pow(double noundef %i.ak, double noundef -8.000000e-01) #14, !tbaa !4
  %i.am = fadd double %i.ak, -3.300000e+00
  %i.an = tail call double @pow(double noundef %i.am, double noundef 2.000000e+00) #14, !tbaa !4
  %i.ao = fmul double %i.an, -6.000000e-01
  %i.ap = tail call double @exp(double noundef %i.ao) #14, !tbaa !4
  %i.aq = fmul double %i.ap, -6.500000e+00
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.al, double 3.640000e+00, double %i.aq)
  %i.as = tail call double @pow(double noundef %i.ak, double noundef 4.000000e+00) #14, !tbaa !4
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double 1.000000e-03, double %i.ar)
  %i.au = load i32, ptr %i.e, align 4, !tbaa !37
  %.not.i49 = icmp eq i32 %i.au, 0
  %.0.v.i50 = select i1 %.not.i49, double -1.140000e+02, double -2.000000e+02
  %.0.i51 = fadd double %i.at, %.0.v.i50
  %i.av = fdiv double %.0.i51, 1.000000e+01
  %i.aw = tail call double @pow(double noundef 1.000000e+01, double noundef %i.av) #14, !tbaa !4 ; 2 uses
  %i.ax = fcmp olt double %.4859, %i.aw
  %.48 = select i1 %i.ax, double %.4859, double %i.aw ; 2 uses
  %i.ay = add nsw i32 %.156, 1                    ; 2 uses
  %exitcond63.not = icmp eq i32 %i.ay, %i.ad
  br i1 %exitcond63.not, label %..loopexit_crit_edge, label %.lr.ph57, !llvm.loop !40

bb.c:                                             ; preds = %.loopexit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @ATHformula(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp olt double %1, 2.000000e-02
  %i.b = select i1 %i.a, double 2.000000e-02, double %1 ; 3 uses
  %i.c = tail call double @pow(double noundef %i.b, double noundef -8.000000e-01) #14, !tbaa !4
  %i.d = fadd double %i.b, -3.300000e+00
  %i.e = tail call double @pow(double noundef %i.d, double noundef 2.000000e+00) #14, !tbaa !4
  %i.f = fmul double %i.e, -6.000000e-01
  %i.g = tail call double @exp(double noundef %i.f) #14, !tbaa !4
  %i.h = fmul double %i.g, -6.500000e+00
  %i.i = tail call double @llvm.fmuladd.f64(double %i.c, double 3.640000e+00, double %i.h)
  %i.j = tail call double @pow(double noundef %i.b, double noundef 4.000000e+00) #14, !tbaa !4
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double 1.000000e-03, double %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %.not = icmp eq i32 %i.m, 0
  %.0.v = select i1 %.not, double -1.140000e+02, double -2.000000e+02
  %.0 = fadd double %i.k, %.0.v
  %i.n = fdiv double %.0, 1.000000e+01
  %i.o = tail call double @pow(double noundef 1.000000e+01, double noundef %i.n) #14, !tbaa !4
  ret double %i.o
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ms_convert(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
vector.memcheck:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4608 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 9216
  %scevgep15 = getelementptr i8, ptr %1, i64 9216
  %bound0 = icmp ult ptr %0, %scevgep15
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x double>, ptr %i.c, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %wide.load16 = load <2 x double>, ptr %i.d, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.e = fadd <2 x double> %wide.load, %wide.load16
  %i.f = fmul <2 x double> %i.e, splat (double f0x3FE6A09E667F3BCD)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  store <2 x double> %i.f, ptr %i.g, align 8, !tbaa !19, !alias.scope !44, !noalias !41
  %i.h = fsub <2 x double> %wide.load, %wide.load16
  %i.i = fmul <2 x double> %i.h, splat (double f0x3FE6A09E667F3BCD)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  store <2 x double> %i.i, ptr %i.j, align 8, !tbaa !19, !alias.scope !44, !noalias !41
  %index.next = or disjoint i64 %index, 2         ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index.next
  %wide.load.1 = load <2 x double>, ptr %i.k, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index.next
  %wide.load16.1 = load <2 x double>, ptr %i.l, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.m = fadd <2 x double> %wide.load.1, %wide.load16.1
  %i.n = fmul <2 x double> %i.m, splat (double f0x3FE6A09E667F3BCD)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next
  store <2 x double> %i.n, ptr %i.o, align 8, !tbaa !19, !alias.scope !44, !noalias !41
  %i.p = fsub <2 x double> %wide.load.1, %wide.load16.1
  %i.q = fmul <2 x double> %i.p, splat (double f0x3FE6A09E667F3BCD)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index.next
  store <2 x double> %i.q, ptr %i.r, align 8, !tbaa !19, !alias.scope !44, !noalias !41
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next.1, 576
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !46

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !19 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.w = load double, ptr %i.v, align 8, !tbaa !19 ; 2 uses
  %i.x = fadd double %i.u, %i.w
  %i.y = fmul double %i.x, f0x3FE6A09E667F3BCD
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double %i.y, ptr %i.z, align 8, !tbaa !19
  %i.aa = fsub double %i.u, %i.w
  %i.ab = fmul double %i.aa, f0x3FE6A09E667F3BCD
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.ab, ptr %i.ac, align 8, !tbaa !19
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fmul double %i.ah, f0x3FE6A09E667F3BCD
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store double %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = fsub double %i.ae, %i.ag
  %i.al = fmul double %i.ak, f0x3FE6A09E667F3BCD
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store double %i.al, ptr %i.am, align 8, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 576
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !49

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @on_pe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @ResvMaxBits(i32 noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %5) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i32, ptr %i.a, align 4
  %i.f = sext i32 %5 to i64                       ; 2 uses
  %i.g = getelementptr [240 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.b, align 4, !tbaa !4
  %i.i = getelementptr inbounds [16 x i8], ptr %1, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.j = phi i32 [ %i.d, %.lr.ph ], [ %i.ab, %bb.b ]
  %i.k = phi i32 [ %.promoted, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.l = getelementptr [120 x i8], ptr %i.g, i64 %indvars.iv
  %i.m = sdiv i32 %i.h, %i.j                      ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.p = load double, ptr %i.o, align 8, !tbaa !19
  %i.q = fadd double %i.p, -7.500000e+02
  %i.r = fdiv double %i.q, 1.550000e+00
  %i.s = fptosi double %i.r to i32
  %i.t = getelementptr i8, ptr %i.l, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27
  %i.v = icmp eq i32 %i.u, 2
  %minmaxop = select i1 %i.v, i32 500, i32 0
  %spec.store.select = call i32 @llvm.smax.i32(i32 %minmaxop, i32 %i.s)
  %spec.store.select41 = call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %i.k) ; 2 uses
  %i.w = add nsw i32 %spec.store.select41, %i.m
  %i.x = icmp sgt i32 %i.w, 4095
  %i.y = sub nsw i32 4095, %i.m
  %spec.select = select i1 %i.x, i32 %i.y, i32 %spec.store.select41 ; 2 uses
  %i.z = add nsw i32 %spec.select, %i.m
  store i32 %i.z, ptr %i.n, align 4, !tbaa !4
  %i.aa = sub nsw i32 %i.k, %spec.select
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !26  ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
end_hunk_0
