Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/voting_parallel_tree_learner?download=true
inline.NumInlined: 16168
inline.NumDeleted: 5419
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.i, %bb.h
  %.6125.ph = phi double [ %.0119156, %bb.h ], [ %i.ar, %bb.i ], [ %.0119156, %bb.g ], [ %.0119156, %bb.f ], [ %.0119156, %bb.c ], [ %.0119156, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111157, %bb.h ], [ %i.ao, %bb.i ], [ %.0111157, %bb.g ], [ %.0111157, %bb.f ], [ %.0111157, %bb.c ], [ %.0111157, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103158, %bb.h ], [ %i.bd, %bb.i ], [ %.0103158, %bb.g ], [ %.0103158, %bb.f ], [ %.0103158, %bb.c ], [ %.0103158, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095159, %bb.h ], [ %i.am, %bb.i ], [ %.095159, %bb.g ], [ %.095159, %bb.f ], [ %.095159, %bb.c ], [ %.095159, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090160, %bb.h ], [ %7, %bb.i ], [ %.090160, %bb.g ], [ %.090160, %bb.f ], [ %.090160, %bb.c ], [ %.090160, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !620

._crit_edge:                                      ; preds = %bb.j, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119156, %bb.e ], [ %.0119156, %bb.d ], [ %.6125.ph, %bb.j ] ; 5 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111157, %bb.e ], [ %.0111157, %bb.d ], [ %.6117.ph, %bb.j ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103158, %bb.e ], [ %.0103158, %bb.d ], [ %.6109.ph, %bb.j ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095159, %bb.e ], [ %.095159, %bb.d ], [ %.6101.ph, %bb.j ] ; 3 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090160, %bb.e ], [ %.090160, %bb.d ], [ %.6.ph, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !242, !range !231, !noundef !232
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.k, label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !312
  %i.bl = fadd double %5, %i.bk
  %i.bm = fcmp ogt double %.0103.lcssa, %i.bl
  br i1 %i.bm, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.bn, align 4, !tbaa !406
  %i.bo = load ptr, ptr %0, align 8, !tbaa !273
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 416
  %i.bs = load double, ptr %i.br, align 8, !tbaa !377 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 424
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !401 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 408
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !378 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 720
  %i.by = load double, ptr %i.bx, align 8, !tbaa !375 ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %.0119.lcssa)
  %i.ca = fsub double %i.bz, %i.bs                ; 2 uses
  %i.cb = fcmp ogt double %i.ca, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.cb, double %i.ca, double 0.000000e+00
  %i.cc = fcmp ogt double %.0119.lcssa, 0.000000e+00
  %i.cd = zext i1 %i.cc to i32
  %i.ce = fcmp olt double %.0119.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.ce to i32
  %i.cf = add nsw i32 %.neg.i.i.i.i, %i.cd
  %i.cg = sitofp i32 %i.cf to double
  %i.ch = fneg double %i.cg
  %i.ci = fmul double %.sroa.speculated.i.i.i, %i.ch
  %i.cj = fadd double %.0111.lcssa, %i.bu
  %i.ck = fdiv double %i.ci, %i.cj                ; 4 uses
  %i.cl = fcmp ogt double %i.bw, 0.000000e+00     ; 2 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cn = fcmp ogt double %i.cm, %i.bw
  %or.cond.i.i = and i1 %i.cl, %i.cn
  br i1 %or.cond.i.i, label %bb.m, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.m:                                             ; preds = %bb.l
  %i.co = fcmp ogt double %i.ck, 0.000000e+00
  %i.cp = zext i1 %i.co to i32
  %i.cq = fcmp olt double %i.ck, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.cq to i32
  %i.cr = add nsw i32 %.neg.i.i.i, %i.cp
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fmul double %i.bw, %i.cs
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.l, %bb.m
  %.0.i.i = phi double [ %i.ct, %bb.m ], [ %i.ck, %bb.l ]
  %i.cu = sitofp i32 %.095.lcssa to double
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.cw, align 8, !tbaa !334
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.cx, align 8, !tbaa !407
  %i.cy = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.cy, ptr %i.cz, align 8, !tbaa !408
  %i.da = fsub double %1, %.0119.lcssa            ; 4 uses
  %i.db = sub nsw i32 %3, %.095.lcssa             ; 2 uses
  %i.dc = tail call double @llvm.fabs.f64(double %i.da)
  %i.dd = fsub double %i.dc, %i.bs                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %.sroa.speculated.i.i.i136 = select i1 %i.de, double %i.dd, double 0.000000e+00
  %i.df = fcmp ogt double %i.da, 0.000000e+00
  %i.dg = zext i1 %i.df to i32
  %i.dh = fcmp olt double %i.da, 0.000000e+00
  %.neg.i.i.i.i137 = sext i1 %i.dh to i32
  %i.di = add nsw i32 %.neg.i.i.i.i137, %i.dg
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fneg double %i.dj
  %i.dl = fmul double %.sroa.speculated.i.i.i136, %i.dk
  %i.dm = fdiv double %i.cu, %i.by                ; 2 uses
  %i.dn = fmul double %i.dm, %.0.i.i
  %i.do = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1
  %i.dr = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bu, i64 1
  %i.ds = fadd <2 x double> %i.dq, %i.dr          ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %i.du = fdiv double %i.dn, %i.dt
  %i.dv = insertelement <2 x double> poison, double %8, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dl, i64 1
  %i.dx = fdiv <2 x double> %i.dw, %i.ds          ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 0
  %i.dz = fadd double %i.dy, %i.du
  store double %i.dz, ptr %i.cv, align 8, !tbaa !410
  %i.ea = extractelement <2 x double> %i.dx, i64 1 ; 4 uses
  %i.eb = tail call double @llvm.fabs.f64(double %i.ea)
  %i.ec = fcmp ogt double %i.eb, %i.bw
  %or.cond.i.i138 = and i1 %i.cl, %i.ec
  br i1 %or.cond.i.i138, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit141

bb.n:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ed = fcmp ogt double %i.ea, 0.000000e+00
  %i.ee = zext i1 %i.ed to i32
  %i.ef = fcmp olt double %i.ea, 0.000000e+00
  %.neg.i.i.i140 = sext i1 %i.ef to i32
  %i.eg = add nsw i32 %.neg.i.i.i140, %i.ee
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = fmul double %i.bw, %i.eh
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit141

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit141: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.n
  %.0.i.i139 = phi double [ %i.ei, %bb.n ], [ %i.ea, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ej = sitofp i32 %i.db to double
  %i.ek = fdiv double %i.ej, %i.by                ; 2 uses
  %i.el = fmul double %i.ek, %.0.i.i139
  %i.em = fadd double %i.ek, 1.000000e+00         ; 2 uses
  %i.en = fdiv double %i.el, %i.em
  %i.eo = fdiv double %8, %i.em
  %i.ep = fadd double %i.eo, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %i.ep, ptr %i.eq, align 8, !tbaa !411
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.db, ptr %i.er, align 4, !tbaa !335
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.da, ptr %i.es, align 8, !tbaa !412
  %i.et = fadd double %i.do, f0xBCD203AFA0000000
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.et, ptr %i.eu, align 8, !tbaa !413
  %i.ev = fsub double %.0103.lcssa, %5
  store double %i.ev, ptr %i.bj, align 8, !tbaa !312
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.ew, align 8, !tbaa !313
  br label %bb.o

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit141, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115175 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115175, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !621

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115175.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod227 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115175.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not179 = icmp sgt i32 %.0113, %i.i
  br i1 %.not179, label %._crit_edge, label %.lr.ph189

.lr.ph189:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = sext i32 %.0113 to i64
  %i.bd = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph189, %.thread
  %indvars.iv210 = phi i64 [ %i.bc, %.lr.ph189 ], [ %indvars.iv.next211, %.thread ] ; 5 uses
  %.2117185 = phi i32 [ %.1116, %.lr.ph189 ], [ %.3118, %.thread ] ; 2 uses
  %.0127182 = phi i32 [ %i.d, %.lr.ph189 ], [ %.6133, %.thread ] ; 7 uses
  %.0135181 = phi i32 [ 0, %.lr.ph189 ], [ %.6141, %.thread ] ; 7 uses
  %.0143180 = phi double [ -inf, %.lr.ph189 ], [ %.6149, %.thread ] ; 8 uses
  %i.be = phi <2 x double> [ splat (double +qnan), %.lr.ph189 ], [ %i.da, %.thread ] ; 7 uses
  %i.bf = phi <2 x double> [ %i.az, %.lr.ph189 ], [ %i.bu, %.thread ] ; 2 uses
  %i.bg = icmp sgt i64 %indvars.iv210, -1
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bi = trunc nsw i64 %indvars.iv210 to i32
  %i.bj = shl nuw i32 %i.bi, 1
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !295
  %i.bo = load <2 x double>, ptr %i.bl, align 8, !tbaa !295
  %i.bp = fadd <2 x double> %i.bf, %i.bo
  %i.bq = fmul double %i.f, %i.bn
  %i.br = fadd double %i.bq, 5.000000e-01
  %i.bs = fptosi double %i.br to i32
  %i.bt = add nsw i32 %.2117185, %i.bs
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.bt, %bb.e ], [ %.2117185, %bb.d ] ; 5 uses
  %i.bu = phi <2 x double> [ %i.bp, %bb.e ], [ %i.bf, %bb.d ] ; 4 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !277 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 308
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !353 ; 2 uses
  %i.ca = icmp slt i32 %.3118, %i.bz
  br i1 %i.ca, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 312
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !405 ; 2 uses
  %i.cd = extractelement <2 x double> %i.bu, i64 1 ; 3 uses
  %i.ce = fcmp olt double %i.cd, %i.cc
  br i1 %i.ce, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = sub nsw i32 %3, %.3118                  ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.bz
  br i1 %i.cg, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = fsub double %2, %i.cd                   ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cc
  br i1 %i.ci, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = trunc i64 %indvars.iv210 to i32
  %i.ck = add i32 %i.cj, %i.h
  %.not158 = icmp eq i32 %i.ck, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cl = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.cm = fsub double %1, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 416
  %i.co = load double, ptr %i.cn, align 8, !tbaa !377
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 424
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !401
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 408
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !378
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !384
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 720
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !375
  %i.cx = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cl, double noundef %i.cd, double noundef %i.cm, double noundef %i.ch, double noundef %i.co, double noundef %i.cq, double noundef %i.cs, ptr noundef %4, i8 noundef signext %i.cu, double noundef %i.cw, i32 noundef %.3118, i32 noundef %i.cf, double noundef %8) ; 3 uses
  %i.cy = fcmp ugt double %i.cx, %5
  br i1 %i.cy, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bb, align 8, !tbaa !242
  %i.cz = fcmp ogt double %i.cx, %.0143180
  br i1 %i.cz, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %bb.f, %bb.g
  %.6149 = phi double [ %.0143180, %bb.f ], [ %.0143180, %bb.g ], [ %.0143180, %bb.l ], [ %i.cx, %bb.m ], [ %.0143180, %bb.k ], [ %.0143180, %bb.j ] ; 2 uses
  %.6141 = phi i32 [ %.0135181, %bb.f ], [ %.0135181, %bb.g ], [ %.0135181, %bb.l ], [ %.3118, %bb.m ], [ %.0135181, %bb.k ], [ %.0135181, %bb.j ] ; 2 uses
  %.6133 = phi i32 [ %.0127182, %bb.f ], [ %.0127182, %bb.g ], [ %.0127182, %bb.l ], [ %7, %bb.m ], [ %.0127182, %bb.k ], [ %.0127182, %bb.j ] ; 2 uses
  %i.da = phi <2 x double> [ %i.be, %bb.f ], [ %i.be, %bb.g ], [ %i.be, %bb.l ], [ %i.bu, %bb.m ], [ %i.be, %bb.k ], [ %i.be, %bb.j ] ; 2 uses
  %indvars.iv.next211 = add nsw i64 %indvars.iv210, 1
  %.not.not = icmp slt i64 %indvars.iv210, %i.bd
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !622

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0143.lcssa = phi double [ -inf, %.loopexit ], [ %.0143180, %bb.h ], [ %.0143180, %bb.i ], [ %.6149, %.thread ] ; 2 uses
  %.0135.lcssa = phi i32 [ 0, %.loopexit ], [ %.0135181, %bb.h ], [ %.0135181, %bb.i ], [ %.6141, %.thread ] ; 3 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127182, %bb.h ], [ %.0127182, %bb.i ], [ %.6133, %.thread ]
  %i.db = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.be, %bb.h ], [ %i.be, %bb.i ], [ %i.da, %.thread ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !242, !range !231, !noundef !232
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.n, label %bb.r

bb.n:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !312
  %i.dh = fadd double %5, %i.dg
  %i.di = fcmp ogt double %.0143.lcssa, %i.dh
  br i1 %i.di, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0127.lcssa, ptr %i.dj, align 4, !tbaa !406
  %i.dk = load ptr, ptr %0, align 8, !tbaa !273
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !277 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 416
  %i.do = load double, ptr %i.dn, align 8, !tbaa !377 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 424
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !401 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 408
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !378 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 720
  %i.du = load double, ptr %i.dt, align 8, !tbaa !375 ; 2 uses
  %i.dv = extractelement <2 x double> %i.db, i64 0 ; 3 uses
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fsub double %i.dw, %i.do                ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dy, double %i.dx, double 0.000000e+00
  %i.dz = fcmp ogt double %i.dv, 0.000000e+00
  %i.ea = zext i1 %i.dz to i32
  %i.eb = fcmp olt double %i.dv, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.eb to i32
  %i.ec = add nsw i32 %.neg.i.i.i.i, %i.ea
end_hunk_0
begin_hunk_1_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.co = insertelement <2 x double> %i.cn, double %.sroa.speculated.i.i.i15.i, i64 1
  %i.cp = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.ca, i64 1
  %i.cr = fmul <2 x double> %i.co, %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cd, i64 1
  %i.cu = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %.0.i.i18.i, i64 1 ; 3 uses
  %i.cw = fmul <2 x double> %i.ct, %i.cv
  %i.cx = fmul <2 x double> %i.cr, splat (double 2.000000e+00)
  %i.cy = fmul <2 x double> %i.cv, %i.cw
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cv, <2 x double> %i.cy) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 1
  %i.db = fneg double %i.da
  %i.dc = extractelement <2 x double> %i.cz, i64 0
  %i.dd = fsub double %i.db, %i.dc                ; 3 uses
  %i.de = fcmp ugt double %i.dd, %5
  br i1 %i.de, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.u, align 8, !tbaa !242
  %i.df = fcmp ogt double %i.dd, %.0103159
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.f, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.k, %bb.j
  %.6125.ph = phi double [ %.0119157, %bb.j ], [ %i.at, %bb.k ], [ %.0119157, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0119157, %bb.f ], [ %.0119157, %bb.c ], [ %.0119157, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111158, %bb.j ], [ %i.aq, %bb.k ], [ %.0111158, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0111158, %bb.f ], [ %.0111158, %bb.c ], [ %.0111158, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103159, %bb.j ], [ %i.dd, %bb.k ], [ %.0103159, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0103159, %bb.f ], [ %.0103159, %bb.c ], [ %.0103159, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095160, %bb.j ], [ %i.ao, %bb.k ], [ %.095160, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.095160, %bb.f ], [ %.095160, %bb.c ], [ %.095160, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090161, %bb.j ], [ %7, %bb.k ], [ %.090161, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.090161, %bb.f ], [ %.090161, %bb.c ], [ %.090161, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.w
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !663

._crit_edge:                                      ; preds = %bb.l, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119157, %bb.e ], [ %.0119157, %bb.d ], [ %.6125.ph, %bb.l ] ; 5 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111158, %bb.e ], [ %.0111158, %bb.d ], [ %.6117.ph, %bb.l ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103159, %bb.e ], [ %.0103159, %bb.d ], [ %.6109.ph, %bb.l ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095160, %bb.e ], [ %.095160, %bb.d ], [ %.6101.ph, %bb.l ] ; 2 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090161, %bb.e ], [ %.090161, %bb.d ], [ %.6.ph, %bb.l ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !242, !range !231, !noundef !232
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.m, label %bb.q

bb.m:                                             ; preds = %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !312
  %i.dl = fadd double %5, %i.dk
  %i.dm = fcmp ogt double %.0103.lcssa, %i.dl
  br i1 %i.dm, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.dn, align 4, !tbaa !406
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !277 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 416
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !377 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 424
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !401 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 408
  %i.dv = load double, ptr %i.du, align 8, !tbaa !378 ; 5 uses
  %i.dw = tail call double @llvm.fabs.f64(double %.0119.lcssa)
  %i.dx = fsub double %i.dw, %i.dr                ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dy, double %i.dx, double 0.000000e+00
  %i.dz = fcmp ogt double %.0119.lcssa, 0.000000e+00
  %i.ea = zext i1 %i.dz to i32
  %i.eb = fcmp olt double %.0119.lcssa, 0.000000e+00
  %.neg.i.i.i.i136 = sext i1 %i.eb to i32
  %i.ec = add nsw i32 %.neg.i.i.i.i136, %i.ea
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fneg double %i.ed
  %i.ef = fmul double %.sroa.speculated.i.i.i, %i.ee
  %i.eg = fadd double %.0111.lcssa, %i.dt
  %i.eh = fdiv double %i.ef, %i.eg                ; 4 uses
  %i.ei = fcmp ogt double %i.dv, 0.000000e+00     ; 2 uses
  %i.ej = tail call double @llvm.fabs.f64(double %i.eh)
  %i.ek = fcmp ogt double %i.ej, %i.dv
  %or.cond.i.i = and i1 %i.ei, %i.ek
  br i1 %or.cond.i.i, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.o:                                             ; preds = %bb.n
  %i.el = fcmp ogt double %i.eh, 0.000000e+00
  %i.em = zext i1 %i.el to i32
  %i.en = fcmp olt double %i.eh, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.en to i32
  %i.eo = add nsw i32 %.neg.i.i.i, %i.em
  %i.ep = sitofp i32 %i.eo to double
  %i.eq = fmul double %i.dv, %i.ep
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.n, %bb.o
  %.0.i.i = phi double [ %i.eq, %bb.o ], [ %i.eh, %bb.n ]
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i.i, ptr %i.er, align 8, !tbaa !410
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.es, align 8, !tbaa !334
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.et, align 8, !tbaa !407
  %i.eu = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.eu, ptr %i.ev, align 8, !tbaa !408
  %i.ew = fsub double %1, %.0119.lcssa            ; 4 uses
  %i.ex = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.ey = sub nsw i32 %3, %.095.lcssa
  %i.ez = tail call double @llvm.fabs.f64(double %i.ew)
  %i.fa = fsub double %i.ez, %i.dr                ; 2 uses
  %i.fb = fcmp ogt double %i.fa, 0.000000e+00
  %.sroa.speculated.i.i.i137 = select i1 %i.fb, double %i.fa, double 0.000000e+00
  %i.fc = fcmp ogt double %i.ew, 0.000000e+00
  %i.fd = zext i1 %i.fc to i32
  %i.fe = fcmp olt double %i.ew, 0.000000e+00
  %.neg.i.i.i.i138 = sext i1 %i.fe to i32
  %i.ff = add nsw i32 %.neg.i.i.i.i138, %i.fd
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = fneg double %i.fg
  %i.fi = fmul double %.sroa.speculated.i.i.i137, %i.fh
  %i.fj = fadd double %i.ex, %i.dt
  %i.fk = fdiv double %i.fi, %i.fj                ; 4 uses
  %i.fl = tail call double @llvm.fabs.f64(double %i.fk)
  %i.fm = fcmp ogt double %i.fl, %i.dv
  %or.cond.i.i139 = and i1 %i.ei, %i.fm
  br i1 %or.cond.i.i139, label %bb.p, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit142

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fn = fcmp ogt double %i.fk, 0.000000e+00
  %i.fo = zext i1 %i.fn to i32
  %i.fp = fcmp olt double %i.fk, 0.000000e+00
  %.neg.i.i.i141 = sext i1 %i.fp to i32
  %i.fq = add nsw i32 %.neg.i.i.i141, %i.fo
  %i.fr = sitofp i32 %i.fq to double
  %i.fs = fmul double %i.dv, %i.fr
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit142

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit142: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.p
  %.0.i.i140 = phi double [ %i.fs, %bb.p ], [ %i.fk, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i.i140, ptr %i.ft, align 8, !tbaa !411
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ey, ptr %i.fu, align 4, !tbaa !335
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ew, ptr %i.fv, align 8, !tbaa !412
  %i.fw = fadd double %i.ex, f0xBCD203AFA0000000
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fw, ptr %i.fx, align 8, !tbaa !413
  %i.fy = fsub double %.0103.lcssa, %5
  store double %i.fy, ptr %i.dj, align 8, !tbaa !312
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fz, align 8, !tbaa !313
  br label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit142, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115176 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115176, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !664

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115176.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod229 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115176.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not180 = icmp sgt i32 %.0113, %i.i
  br i1 %.not180, label %._crit_edge, label %.lr.ph190

.lr.ph190:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = sext i32 %.0113 to i64
  %i.bl = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph190, %.thread
  %indvars.iv211 = phi i64 [ %i.bk, %.lr.ph190 ], [ %indvars.iv.next212, %.thread ] ; 5 uses
  %.2117186 = phi i32 [ %.1116, %.lr.ph190 ], [ %.3118, %.thread ] ; 2 uses
  %.0127183 = phi i32 [ %i.d, %.lr.ph190 ], [ %.6133, %.thread ] ; 7 uses
  %.0135182 = phi i32 [ 0, %.lr.ph190 ], [ %.6141, %.thread ] ; 7 uses
  %.0143181 = phi double [ -inf, %.lr.ph190 ], [ %.6149, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ splat (double +qnan), %.lr.ph190 ], [ %i.fa, %.thread ] ; 7 uses
  %i.bn = phi <2 x double> [ %i.az, %.lr.ph190 ], [ %i.cc, %.thread ] ; 2 uses
  %i.bo = icmp sgt i64 %indvars.iv211, -1
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bq = trunc nsw i64 %indvars.iv211 to i32
  %i.br = shl nuw i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !295
  %i.bw = load <2 x double>, ptr %i.bt, align 8, !tbaa !295
  %i.bx = fadd <2 x double> %i.bn, %i.bw
  %i.by = fmul double %i.f, %i.bv
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = fptosi double %i.bz to i32
  %i.cb = add nsw i32 %.2117186, %i.ca
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.cb, %bb.e ], [ %.2117186, %bb.d ] ; 4 uses
  %i.cc = phi <2 x double> [ %i.bx, %bb.e ], [ %i.bn, %bb.d ] ; 4 uses
  %i.cd = icmp slt i32 %.3118, %i.be
  br i1 %i.cd, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cf = extractelement <2 x double> %i.cc, i64 1 ; 3 uses
  %i.cg = fcmp olt double %i.cf, %i.ce
  br i1 %i.cg, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = sub nsw i32 %3, %.3118
  %i.ci = icmp slt i32 %i.ch, %i.be
  br i1 %i.ci, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = fsub double %2, %i.cf                   ; 2 uses
  %i.ck = fcmp olt double %i.cj, %i.ce
  br i1 %i.ck, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = trunc i64 %indvars.iv211 to i32
  %i.cm = add i32 %i.cl, %i.h
  %.not158 = icmp eq i32 %i.cm, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cn = extractelement <2 x double> %i.cc, i64 0 ; 4 uses
  %i.co = fsub double %1, %i.cn                   ; 3 uses
  %i.cp = load double, ptr %i.bg, align 8, !tbaa !377 ; 2 uses
  %i.cq = load double, ptr %i.bh, align 8, !tbaa !401 ; 2 uses
  %i.cr = load double, ptr %i.bi, align 8, !tbaa !378 ; 5 uses
  %i.cs = tail call double @llvm.fabs.f64(double %i.cn)
  %i.ct = fsub double %i.cs, %i.cp                ; 2 uses
  %i.cu = fcmp ogt double %i.ct, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.cu, double %i.ct, double 0.000000e+00 ; 2 uses
  %i.cv = fcmp ogt double %i.cn, 0.000000e+00
  %i.cw = zext i1 %i.cv to i32
  %i.cx = fcmp olt double %i.cn, 0.000000e+00
  %.neg.i.i.i.i.i = sext i1 %i.cx to i32
  %i.cy = add nsw i32 %.neg.i.i.i.i.i, %i.cw
  %i.cz = sitofp i32 %i.cy to double              ; 2 uses
  %i.da = fneg double %i.cz
  %i.db = fmul double %.sroa.speculated.i.i.i.i, %i.da
  %i.dc = fadd double %i.cf, %i.cq                ; 2 uses
  %i.dd = fdiv double %i.db, %i.dc                ; 4 uses
  %i.de = fcmp ogt double %i.cr, 0.000000e+00     ; 2 uses
  %i.df = tail call double @llvm.fabs.f64(double %i.dd)
  %i.dg = fcmp ogt double %i.df, %i.cr
  %or.cond.i.i.i = and i1 %i.de, %i.dg
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i

bb.l:                                             ; preds = %bb.k
  %i.dh = fcmp ogt double %i.dd, 0.000000e+00
  %i.di = zext i1 %i.dh to i32
  %i.dj = fcmp olt double %i.dd, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.dj to i32
  %i.dk = add nsw i32 %.neg.i.i.i.i, %i.di
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = fmul double %i.cr, %i.dl
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi double [ %i.dm, %bb.l ], [ %i.dd, %bb.k ]
  %i.dn = tail call double @llvm.fabs.f64(double %i.co)
  %i.do = fsub double %i.dn, %i.cp                ; 2 uses
  %i.dp = fcmp ogt double %i.do, 0.000000e+00
  %.sroa.speculated.i.i.i15.i = select i1 %i.dp, double %i.do, double 0.000000e+00 ; 2 uses
  %i.dq = fcmp ogt double %i.co, 0.000000e+00
  %i.dr = zext i1 %i.dq to i32
  %i.ds = fcmp olt double %i.co, 0.000000e+00
  %.neg.i.i.i.i16.i = sext i1 %i.ds to i32
  %i.dt = add nsw i32 %.neg.i.i.i.i16.i, %i.dr
  %i.du = sitofp i32 %i.dt to double              ; 2 uses
  %i.dv = fneg double %i.du
  %i.dw = fmul double %.sroa.speculated.i.i.i15.i, %i.dv
  %i.dx = fadd double %i.cj, %i.cq                ; 2 uses
  %i.dy = fdiv double %i.dw, %i.dx                ; 4 uses
  %i.dz = tail call double @llvm.fabs.f64(double %i.dy)
  %i.ea = fcmp ogt double %i.dz, %i.cr
  %or.cond.i.i17.i = and i1 %i.de, %i.ea
  br i1 %or.cond.i.i17.i, label %bb.m, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i
  %i.eb = fcmp ogt double %i.dy, 0.000000e+00
  %i.ec = zext i1 %i.eb to i32
  %i.ed = fcmp olt double %i.dy, 0.000000e+00
  %.neg.i.i.i19.i = sext i1 %i.ed to i32
  %i.ee = add nsw i32 %.neg.i.i.i19.i, %i.ec
  %i.ef = sitofp i32 %i.ee to double
  %i.eg = fmul double %i.cr, %i.ef
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i, %bb.m
  %.0.i.i18.i = phi double [ %i.eg, %bb.m ], [ %i.dy, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i ]
  %i.eh = insertelement <2 x double> poison, double %.sroa.speculated.i.i.i.i, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %.sroa.speculated.i.i.i15.i, i64 1
  %i.ej = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.du, i64 1
end_hunk_1
begin_hunk_2_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
bb.g:                                             ; preds = %bb.f
  %i.av = load double, ptr %i.r, align 8, !tbaa !377
  %i.aw = load double, ptr %i.s, align 8, !tbaa !401
  %i.ax = load double, ptr %i.t, align 8, !tbaa !375
  %i.ay = insertelement <2 x double> poison, double %i.at, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.aj, i64 1 ; 3 uses
  %i.ba = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.az)
  %i.bb = fcmp ogt <2 x double> %i.az, zeroinitializer
  %i.bc = fcmp olt <2 x double> %i.az, zeroinitializer
  %i.bd = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %i.al, i64 1
  %i.bf = sitofp <2 x i32> %i.be to <2 x double>
  %i.bg = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fsub <2 x double> %i.ba, %i.bh          ; 2 uses
  %i.bj = fcmp ogt <2 x double> %i.bi, zeroinitializer
  %i.bk = select <2 x i1> %i.bj, <2 x double> %i.bi, <2 x double> zeroinitializer ; 2 uses
  %i.bl = zext <2 x i1> %i.bb to <2 x i8>
  %i.bm = sext <2 x i1> %i.bc to <2 x i8>
  %i.bn = add nsw <2 x i8> %i.bm, %i.bl
  %i.bo = sitofp <2 x i8> %i.bn to <2 x double>   ; 2 uses
  %i.bp = fneg <2 x double> %i.bo
  %i.bq = fmul <2 x double> %i.bk, %i.bp
  %i.br = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.ak, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fadd <2 x double> %i.bs, %i.bu          ; 2 uses
  %i.bw = fdiv <2 x double> %i.bq, %i.bv
  %i.bx = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x double> %i.bf, %i.by          ; 2 uses
  %i.ca = fmul <2 x double> %i.bz, %i.bw
  %i.cb = fadd <2 x double> %i.bz, splat (double 1.000000e+00) ; 2 uses
  %i.cc = fdiv <2 x double> %i.ca, %i.cb
  %i.cd = fdiv <2 x double> %i.y, %i.cb
  %i.ce = fadd <2 x double> %i.cd, %i.cc          ; 3 uses
  %i.cf = fmul <2 x double> %i.bk, %i.bo
  %i.cg = fmul <2 x double> %i.cf, splat (double 2.000000e+00)
  %i.ch = fmul <2 x double> %i.bv, %i.ce
  %i.ci = fmul <2 x double> %i.ce, %i.ch
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ce, <2 x double> %i.ci) ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  %i.cl = fneg double %i.ck
  %i.cm = extractelement <2 x double> %i.cj, i64 0
  %i.cn = fsub double %i.cl, %i.cm                ; 3 uses
  %i.co = fcmp ugt double %i.cn, %5
  br i1 %i.co, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.u, align 8, !tbaa !242
  %i.cp = fcmp ogt double %i.cn, %.0103154
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.i, %bb.h
  %.6125.ph = phi double [ %.0119152, %bb.h ], [ %i.at, %bb.i ], [ %.0119152, %bb.g ], [ %.0119152, %bb.f ], [ %.0119152, %bb.c ], [ %.0119152, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111153, %bb.h ], [ %i.ar, %bb.i ], [ %.0111153, %bb.g ], [ %.0111153, %bb.f ], [ %.0111153, %bb.c ], [ %.0111153, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103154, %bb.h ], [ %i.cn, %bb.i ], [ %.0103154, %bb.g ], [ %.0103154, %bb.f ], [ %.0103154, %bb.c ], [ %.0103154, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095155, %bb.h ], [ %i.ap, %bb.i ], [ %.095155, %bb.g ], [ %.095155, %bb.f ], [ %.095155, %bb.c ], [ %.095155, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090156, %bb.h ], [ %7, %bb.i ], [ %.090156, %bb.g ], [ %.090156, %bb.f ], [ %.090156, %bb.c ], [ %.090156, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.w
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !706

._crit_edge:                                      ; preds = %bb.j, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119152, %bb.e ], [ %.0119152, %bb.d ], [ %.6125.ph, %bb.j ] ; 3 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111153, %bb.e ], [ %.0111153, %bb.d ], [ %.6117.ph, %bb.j ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103154, %bb.e ], [ %.0103154, %bb.d ], [ %.6109.ph, %bb.j ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095155, %bb.e ], [ %.095155, %bb.d ], [ %.6101.ph, %bb.j ] ; 3 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090156, %bb.e ], [ %.090156, %bb.d ], [ %.6.ph, %bb.j ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !312
  %i.cv = fadd double %5, %i.cu
  %i.cw = fcmp ogt double %.0103.lcssa, %i.cv
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.cx, align 4, !tbaa !406
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !277 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 416
  %i.db = load double, ptr %i.da, align 8, !tbaa !377
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 424
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !401
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 720
  %i.df = load double, ptr %i.de, align 8, !tbaa !375
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.dh, align 8, !tbaa !334
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.di, align 8, !tbaa !407
  %i.dj = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dj, ptr %i.dk, align 8, !tbaa !408
  %i.dl = fsub double %1, %.0119.lcssa            ; 2 uses
  %i.dm = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.dn = sub nsw i32 %3, %.095.lcssa             ; 2 uses
  %i.do = insertelement <2 x double> poison, double %.0119.lcssa, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dl, i64 1 ; 3 uses
  %i.dq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dp)
  %i.dr = insertelement <2 x double> poison, double %i.db, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fsub <2 x double> %i.dq, %i.ds          ; 2 uses
  %i.du = fcmp ogt <2 x double> %i.dt, zeroinitializer
  %i.dv = select <2 x i1> %i.du, <2 x double> %i.dt, <2 x double> zeroinitializer
  %i.dw = fcmp ogt <2 x double> %i.dp, zeroinitializer
  %i.dx = zext <2 x i1> %i.dw to <2 x i8>
  %i.dy = fcmp olt <2 x double> %i.dp, zeroinitializer
  %i.dz = sext <2 x i1> %i.dy to <2 x i8>
  %i.ea = add nsw <2 x i8> %i.dz, %i.dx
  %i.eb = sitofp <2 x i8> %i.ea to <2 x double>
  %i.ec = fneg <2 x double> %i.eb
  %i.ed = fmul <2 x double> %i.dv, %i.ec
  %i.ee = insertelement <2 x double> poison, double %.0111.lcssa, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.dm, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fadd <2 x double> %i.ef, %i.eh
  %i.ej = fdiv <2 x double> %i.ed, %i.ei
  %i.ek = insertelement <2 x i32> poison, i32 %.095.lcssa, i64 0
  %i.el = insertelement <2 x i32> %i.ek, i32 %i.dn, i64 1
  %i.em = sitofp <2 x i32> %i.el to <2 x double>
  %i.en = insertelement <2 x double> poison, double %i.df, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.em, %i.eo          ; 2 uses
  %i.eq = fmul <2 x double> %i.ep, %i.ej
  %i.er = fadd <2 x double> %i.ep, splat (double 1.000000e+00) ; 2 uses
  %i.es = fdiv <2 x double> %i.eq, %i.er
  %i.et = insertelement <2 x double> poison, double %8, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fdiv <2 x double> %i.eu, %i.er
  %i.ew = fadd <2 x double> %i.ev, %i.es
  store <2 x double> %i.ew, ptr %i.dg, align 8, !tbaa !295
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.dn, ptr %i.ex, align 4, !tbaa !335
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.dl, ptr %i.ey, align 8, !tbaa !412
  %i.ez = fadd double %i.dm, f0xBCD203AFA0000000
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ez, ptr %i.fa, align 8, !tbaa !413
  %i.fb = fsub double %.0103.lcssa, %5
  store double %i.fb, ptr %i.ct, align 8, !tbaa !312
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fc, align 8, !tbaa !313
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115171 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115171, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !707

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115171.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod222 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115171.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not175 = icmp sgt i32 %.0113, %i.i
  br i1 %.not175, label %._crit_edge, label %.lr.ph185

.lr.ph185:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 720
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = sext i32 %.0113 to i64
  %i.bl = sext i32 %i.i to i64
  %i.bm = insertelement <2 x double> poison, double %8, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph185, %.thread
  %indvars.iv206 = phi i64 [ %i.bk, %.lr.ph185 ], [ %indvars.iv.next207, %.thread ] ; 5 uses
  %.2117181 = phi i32 [ %.1116, %.lr.ph185 ], [ %.3118, %.thread ] ; 2 uses
  %.0127178 = phi i32 [ %i.d, %.lr.ph185 ], [ %.6133, %.thread ] ; 7 uses
  %.0135177 = phi i32 [ 0, %.lr.ph185 ], [ %.6141, %.thread ] ; 7 uses
  %.0143176 = phi double [ -inf, %.lr.ph185 ], [ %.6149, %.thread ] ; 8 uses
  %i.bo = phi <2 x double> [ splat (double +qnan), %.lr.ph185 ], [ %i.el, %.thread ] ; 7 uses
  %i.bp = phi <2 x double> [ %i.az, %.lr.ph185 ], [ %i.ce, %.thread ] ; 2 uses
  %i.bq = icmp sgt i64 %indvars.iv206, -1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bs = trunc nsw i64 %indvars.iv206 to i32
  %i.bt = shl nuw i32 %i.bs, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !295
  %i.by = load <2 x double>, ptr %i.bv, align 8, !tbaa !295
  %i.bz = fadd <2 x double> %i.bp, %i.by
  %i.ca = fmul double %i.f, %i.bx
  %i.cb = fadd double %i.ca, 5.000000e-01
  %i.cc = fptosi double %i.cb to i32
  %i.cd = add nsw i32 %.2117181, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.cd, %bb.e ], [ %.2117181, %bb.d ] ; 5 uses
  %i.ce = phi <2 x double> [ %i.bz, %bb.e ], [ %i.bp, %bb.d ] ; 6 uses
  %i.cf = icmp slt i32 %.3118, %i.be
  br i1 %i.cf, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.ch = extractelement <2 x double> %i.ce, i64 1 ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cg
  br i1 %i.ci, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = sub nsw i32 %3, %.3118                  ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.be
  br i1 %i.ck, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = fsub double %2, %i.ch                   ; 2 uses
  %i.cm = fcmp olt double %i.cl, %i.cg
  br i1 %i.cm, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = trunc i64 %indvars.iv206 to i32
  %i.co = add i32 %i.cn, %i.h
  %.not158 = icmp eq i32 %i.co, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cp = extractelement <2 x double> %i.ce, i64 0
  %i.cq = fsub double %1, %i.cp
  %i.cr = load double, ptr %i.bg, align 8, !tbaa !377
  %i.cs = load double, ptr %i.bh, align 8, !tbaa !401
  %i.ct = load double, ptr %i.bi, align 8, !tbaa !375
  %i.cu = insertelement <2 x i32> poison, i32 %.3118, i64 0
  %i.cv = insertelement <2 x i32> %i.cu, i32 %i.cj, i64 1
  %i.cw = sitofp <2 x i32> %i.cv to <2 x double>
  %i.cx = insertelement <2 x double> %i.ce, double %i.cq, i64 1 ; 3 uses
  %i.cy = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cx)
  %i.cz = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fsub <2 x double> %i.cy, %i.da          ; 2 uses
  %i.dc = fcmp ogt <2 x double> %i.db, zeroinitializer
  %i.dd = select <2 x i1> %i.dc, <2 x double> %i.db, <2 x double> zeroinitializer ; 2 uses
  %i.de = fcmp ogt <2 x double> %i.cx, zeroinitializer
  %i.df = zext <2 x i1> %i.de to <2 x i8>
  %i.dg = fcmp olt <2 x double> %i.cx, zeroinitializer
  %i.dh = sext <2 x i1> %i.dg to <2 x i8>
  %i.di = add nsw <2 x i8> %i.dh, %i.df
  %i.dj = sitofp <2 x i8> %i.di to <2 x double>   ; 2 uses
  %i.dk = fneg <2 x double> %i.dj
  %i.dl = fmul <2 x double> %i.dd, %i.dk
  %i.dm = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dn = insertelement <2 x double> %i.dm, double %i.cl, i64 1
  %i.do = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fadd <2 x double> %i.dn, %i.dp          ; 2 uses
  %i.dr = fdiv <2 x double> %i.dl, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fdiv <2 x double> %i.cw, %i.dt          ; 2 uses
  %i.dv = fmul <2 x double> %i.du, %i.dr
  %i.dw = fadd <2 x double> %i.du, splat (double 1.000000e+00) ; 2 uses
  %i.dx = fdiv <2 x double> %i.dv, %i.dw
  %i.dy = fdiv <2 x double> %i.bn, %i.dw
  %i.dz = fadd <2 x double> %i.dy, %i.dx          ; 3 uses
  %i.ea = fmul <2 x double> %i.dd, %i.dj
  %i.eb = fmul <2 x double> %i.ea, splat (double 2.000000e+00)
  %i.ec = fmul <2 x double> %i.dq, %i.dz
  %i.ed = fmul <2 x double> %i.dz, %i.ec
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.dz, <2 x double> %i.ed) ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  %i.eg = fneg double %i.ef
  %i.eh = extractelement <2 x double> %i.ee, i64 0
  %i.ei = fsub double %i.eg, %i.eh                ; 3 uses
  %i.ej = fcmp ugt double %i.ei, %5
  br i1 %i.ej, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bj, align 8, !tbaa !242
  %i.ek = fcmp ogt double %i.ei, %.0143176
  br i1 %i.ek, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %bb.f, %bb.g
  %.6149 = phi double [ %.0143176, %bb.f ], [ %.0143176, %bb.g ], [ %.0143176, %bb.l ], [ %i.ei, %bb.m ], [ %.0143176, %bb.k ], [ %.0143176, %bb.j ] ; 2 uses
  %.6141 = phi i32 [ %.0135177, %bb.f ], [ %.0135177, %bb.g ], [ %.0135177, %bb.l ], [ %.3118, %bb.m ], [ %.0135177, %bb.k ], [ %.0135177, %bb.j ] ; 2 uses
  %.6133 = phi i32 [ %.0127178, %bb.f ], [ %.0127178, %bb.g ], [ %.0127178, %bb.l ], [ %7, %bb.m ], [ %.0127178, %bb.k ], [ %.0127178, %bb.j ] ; 2 uses
  %i.el = phi <2 x double> [ %i.bo, %bb.f ], [ %i.bo, %bb.g ], [ %i.bo, %bb.l ], [ %i.ce, %bb.m ], [ %i.bo, %bb.k ], [ %i.bo, %bb.j ] ; 2 uses
  %indvars.iv.next207 = add nsw i64 %indvars.iv206, 1
  %.not.not = icmp slt i64 %indvars.iv206, %i.bl
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !708

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0143.lcssa = phi double [ -inf, %.loopexit ], [ %.0143176, %bb.h ], [ %.0143176, %bb.i ], [ %.6149, %.thread ] ; 2 uses
  %.0135.lcssa = phi i32 [ 0, %.loopexit ], [ %.0135177, %bb.h ], [ %.0135177, %bb.i ], [ %.6141, %.thread ] ; 3 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127178, %bb.h ], [ %.0127178, %bb.i ], [ %.6133, %.thread ]
end_hunk_2
begin_hunk_3_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %.090158 = phi i32 [ %i.d, %.lr.ph ], [ %.6.ph, %bb.j ] ; 7 uses
  %.095157 = phi i32 [ 0, %.lr.ph ], [ %.6101.ph, %bb.j ] ; 7 uses
  %.0103156 = phi double [ -inf, %.lr.ph ], [ %.6109.ph, %bb.j ] ; 8 uses
  %.0111155 = phi double [ +qnan, %.lr.ph ], [ %.6117.ph, %bb.j ] ; 7 uses
  %.0119154 = phi double [ +qnan, %.lr.ph ], [ %.6125.ph, %bb.j ] ; 7 uses
  %i.v = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.w = shl i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !295
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !295 ; 2 uses
  %i.ac = fmul double %i.f, %i.ab
  %i.ad = fadd double %i.ac, 5.000000e-01
  %i.ae = fptosi double %i.ad to i32
  %i.af = fadd double %.089159, %i.z              ; 3 uses
  %i.ag = fadd double %.088160, %i.ab             ; 4 uses
  %i.ah = add nsw i32 %.087161, %i.ae             ; 3 uses
  %i.ai = icmp slt i32 %i.ah, %i.o
  br i1 %i.ai, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load double, ptr %i.p, align 8, !tbaa !405 ; 2 uses
  %i.ak = fcmp olt double %i.ag, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = sub nsw i32 %3, %i.ah                   ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.o
  br i1 %i.am, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = fsub double %2, %i.ag                   ; 3 uses
  %i.ao = fcmp olt double %i.an, %i.aj
  br i1 %i.ao, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fsub double %1, %i.af                   ; 2 uses
  %i.aq = add i32 %i.q, %i.v
  %.not135 = icmp eq i32 %i.aq, %7
  br i1 %.not135, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.af, i64 1 ; 3 uses
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.au = fcmp ogt <2 x double> %i.as, zeroinitializer
  %i.av = fcmp olt <2 x double> %i.as, zeroinitializer
  %i.aw = load <2 x double>, ptr %i.r, align 8, !tbaa !295 ; 2 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fsub <2 x double> %i.at, %i.ax          ; 2 uses
  %i.az = fcmp ogt <2 x double> %i.ay, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x double> %i.ay, <2 x double> zeroinitializer
  %i.bb = zext <2 x i1> %i.au to <2 x i8>
  %i.bc = sext <2 x i1> %i.av to <2 x i8>
  %i.bd = add nsw <2 x i8> %i.bc, %i.bb
  %i.be = sitofp <2 x i8> %i.bd to <2 x double>
  %i.bf = fmul <2 x double> %i.ba, %i.be          ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.bf
  %i.bh = insertelement <2 x double> poison, double %i.an, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.ag, i64 1
  %i.bj = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fadd <2 x double> %i.bi, %i.bj
  %i.bl = fdiv <2 x double> %i.bg, %i.bk
  %i.bm = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bl) ; 3 uses
  %i.bn = fcmp ugt double %i.bm, %5
  br i1 %i.bn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.s, align 8, !tbaa !242
  %i.bo = fcmp ogt double %i.bm, %.0103156
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.i, %bb.h
  %.6125.ph = phi double [ %.0119154, %bb.h ], [ %i.ap, %bb.i ], [ %.0119154, %bb.g ], [ %.0119154, %bb.f ], [ %.0119154, %bb.c ], [ %.0119154, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111155, %bb.h ], [ %i.an, %bb.i ], [ %.0111155, %bb.g ], [ %.0111155, %bb.f ], [ %.0111155, %bb.c ], [ %.0111155, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103156, %bb.h ], [ %i.bm, %bb.i ], [ %.0103156, %bb.g ], [ %.0103156, %bb.f ], [ %.0103156, %bb.c ], [ %.0103156, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095157, %bb.h ], [ %i.al, %bb.i ], [ %.095157, %bb.g ], [ %.095157, %bb.f ], [ %.095157, %bb.c ], [ %.095157, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090158, %bb.h ], [ %7, %bb.i ], [ %.090158, %bb.g ], [ %.090158, %bb.f ], [ %.090158, %bb.c ], [ %.090158, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !749

._crit_edge:                                      ; preds = %bb.j, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119154, %bb.e ], [ %.0119154, %bb.d ], [ %.6125.ph, %bb.j ] ; 3 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111155, %bb.e ], [ %.0111155, %bb.d ], [ %.6117.ph, %bb.j ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103156, %bb.e ], [ %.0103156, %bb.d ], [ %.6109.ph, %bb.j ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095157, %bb.e ], [ %.095157, %bb.d ], [ %.6101.ph, %bb.j ] ; 2 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090158, %bb.e ], [ %.090158, %bb.d ], [ %.6.ph, %bb.j ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !242, !range !231, !noundef !232
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !312
  %i.bu = fadd double %5, %i.bt
  %i.bv = fcmp ogt double %.0103.lcssa, %i.bu
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.bw, align 4, !tbaa !406
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !277
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 416
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.cb, align 8, !tbaa !334
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.cc, align 8, !tbaa !407
  %i.cd = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.cd, ptr %i.ce, align 8, !tbaa !408
  %i.cf = fsub double %1, %.0119.lcssa            ; 2 uses
  %i.cg = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.ch = sub nsw i32 %3, %.095.lcssa
  %i.ci = load <2 x double>, ptr %i.bz, align 8, !tbaa !295 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %.0119.lcssa, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.cf, i64 1 ; 3 uses
  %i.cl = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ck)
  %i.cm = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fsub <2 x double> %i.cl, %i.cm          ; 2 uses
  %i.co = fcmp ogt <2 x double> %i.cn, zeroinitializer
  %i.cp = select <2 x i1> %i.co, <2 x double> %i.cn, <2 x double> zeroinitializer
  %i.cq = fcmp ogt <2 x double> %i.ck, zeroinitializer
  %i.cr = zext <2 x i1> %i.cq to <2 x i8>
  %i.cs = fcmp olt <2 x double> %i.ck, zeroinitializer
  %i.ct = sext <2 x i1> %i.cs to <2 x i8>
  %i.cu = add nsw <2 x i8> %i.ct, %i.cr
  %i.cv = sitofp <2 x i8> %i.cu to <2 x double>
  %i.cw = fneg <2 x double> %i.cv
  %i.cx = fmul <2 x double> %i.cp, %i.cw
  %i.cy = insertelement <2 x double> poison, double %.0111.lcssa, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cg, i64 1
  %i.da = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fadd <2 x double> %i.cz, %i.da
  %i.dc = fdiv <2 x double> %i.cx, %i.db
  store <2 x double> %i.dc, ptr %i.ca, align 8, !tbaa !295
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ch, ptr %i.dd, align 4, !tbaa !335
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.cf, ptr %i.de, align 8, !tbaa !412
  %i.df = fadd double %i.cg, f0xBCD203AFA0000000
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.df, ptr %i.dg, align 8, !tbaa !413
  %i.dh = fsub double %.0103.lcssa, %5
  store double %i.dh, ptr %i.bs, align 8, !tbaa !312
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.di, align 8, !tbaa !313
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb1ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115173 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115173, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !750

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115173.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod223 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115173.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not177 = icmp sgt i32 %.0113, %i.i
  br i1 %.not177, label %._crit_edge, label %.lr.ph187

.lr.ph187:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = sext i32 %.0113 to i64
  %i.bj = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph187, %.thread
  %indvars.iv208 = phi i64 [ %i.bi, %.lr.ph187 ], [ %indvars.iv.next209, %.thread ] ; 5 uses
  %.2117183 = phi i32 [ %.1116, %.lr.ph187 ], [ %.3118, %.thread ] ; 2 uses
  %.0127180 = phi i32 [ %i.d, %.lr.ph187 ], [ %.6133, %.thread ] ; 7 uses
  %.0135179 = phi i32 [ 0, %.lr.ph187 ], [ %.6141, %.thread ] ; 7 uses
  %.0143178 = phi double [ -inf, %.lr.ph187 ], [ %.6149, %.thread ] ; 8 uses
  %i.bk = phi <2 x double> [ splat (double +qnan), %.lr.ph187 ], [ %i.dk, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ %i.az, %.lr.ph187 ], [ %i.ca, %.thread ] ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv208, -1
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bo = trunc nsw i64 %indvars.iv208 to i32
  %i.bp = shl nuw i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !295
  %i.bu = load <2 x double>, ptr %i.br, align 8, !tbaa !295
  %i.bv = fadd <2 x double> %i.bl, %i.bu
  %i.bw = fmul double %i.f, %i.bt
  %i.bx = fadd double %i.bw, 5.000000e-01
  %i.by = fptosi double %i.bx to i32
  %i.bz = add nsw i32 %.2117183, %i.by
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.bz, %bb.e ], [ %.2117183, %bb.d ] ; 4 uses
  %i.ca = phi <2 x double> [ %i.bv, %bb.e ], [ %i.bl, %bb.d ] ; 6 uses
  %i.cb = icmp slt i32 %.3118, %i.be
  br i1 %i.cb, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cd = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.ce = fcmp olt double %i.cd, %i.cc
  br i1 %i.ce, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = sub nsw i32 %3, %.3118
  %i.cg = icmp slt i32 %i.cf, %i.be
  br i1 %i.cg, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = fsub double %2, %i.cd                   ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cc
  br i1 %i.ci, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = trunc i64 %indvars.iv208 to i32
  %i.ck = add i32 %i.cj, %i.h
  %.not158 = icmp eq i32 %i.ck, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cl = extractelement <2 x double> %i.ca, i64 0
  %i.cm = fsub double %1, %i.cl
  %i.cn = load <2 x double>, ptr %i.bg, align 8, !tbaa !295 ; 2 uses
  %i.co = insertelement <2 x double> %i.ca, double %i.cm, i64 1 ; 3 uses
  %i.cp = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.co)
  %i.cq = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fsub <2 x double> %i.cp, %i.cq          ; 2 uses
  %i.cs = fcmp ogt <2 x double> %i.cr, zeroinitializer
  %i.ct = select <2 x i1> %i.cs, <2 x double> %i.cr, <2 x double> zeroinitializer
  %i.cu = fcmp ogt <2 x double> %i.co, zeroinitializer
  %i.cv = zext <2 x i1> %i.cu to <2 x i8>
  %i.cw = fcmp olt <2 x double> %i.co, zeroinitializer
  %i.cx = sext <2 x i1> %i.cw to <2 x i8>
  %i.cy = add nsw <2 x i8> %i.cx, %i.cv
  %i.cz = sitofp <2 x i8> %i.cy to <2 x double>
  %i.da = fmul <2 x double> %i.ct, %i.cz          ; 2 uses
  %i.db = fmul <2 x double> %i.da, %i.da
  %i.dc = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x double> %i.dc, double %i.ch, i64 1
  %i.de = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.df = fadd <2 x double> %i.dd, %i.de
  %i.dg = fdiv <2 x double> %i.db, %i.df
  %i.dh = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dg) ; 3 uses
  %i.di = fcmp ugt double %i.dh, %5
  br i1 %i.di, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bh, align 8, !tbaa !242
  %i.dj = fcmp ogt double %i.dh, %.0143178
  br i1 %i.dj, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %bb.f, %bb.g
  %.6149 = phi double [ %.0143178, %bb.f ], [ %.0143178, %bb.g ], [ %.0143178, %bb.l ], [ %i.dh, %bb.m ], [ %.0143178, %bb.k ], [ %.0143178, %bb.j ] ; 2 uses
  %.6141 = phi i32 [ %.0135179, %bb.f ], [ %.0135179, %bb.g ], [ %.0135179, %bb.l ], [ %.3118, %bb.m ], [ %.0135179, %bb.k ], [ %.0135179, %bb.j ] ; 2 uses
  %.6133 = phi i32 [ %.0127180, %bb.f ], [ %.0127180, %bb.g ], [ %.0127180, %bb.l ], [ %7, %bb.m ], [ %.0127180, %bb.k ], [ %.0127180, %bb.j ] ; 2 uses
  %i.dk = phi <2 x double> [ %i.bk, %bb.f ], [ %i.bk, %bb.g ], [ %i.bk, %bb.l ], [ %i.ca, %bb.m ], [ %i.bk, %bb.k ], [ %i.bk, %bb.j ] ; 2 uses
  %indvars.iv.next209 = add nsw i64 %indvars.iv208, 1
  %.not.not = icmp slt i64 %indvars.iv208, %i.bj
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !751

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0143.lcssa = phi double [ -inf, %.loopexit ], [ %.0143178, %bb.h ], [ %.0143178, %bb.i ], [ %.6149, %.thread ] ; 2 uses
  %.0135.lcssa = phi i32 [ 0, %.loopexit ], [ %.0135179, %bb.h ], [ %.0135179, %bb.i ], [ %.6141, %.thread ] ; 2 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127180, %bb.h ], [ %.0127180, %bb.i ], [ %.6133, %.thread ]
  %i.dl = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ %i.dk, %.thread ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !242, !range !231, !noundef !232
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !312
  %i.dr = fadd double %5, %i.dq
  %i.ds = fcmp ogt double %.0143.lcssa, %i.dr
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0127.lcssa, ptr %i.dt, align 4, !tbaa !406
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !277
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 416
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0135.lcssa, ptr %i.dy, align 8, !tbaa !334
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ea = extractelement <2 x double> %i.dl, i64 0
  store double %i.ea, ptr %i.dz, align 8, !tbaa !407
  %i.eb = extractelement <2 x double> %i.dl, i64 1
  %i.ec = fadd double %i.eb, f0xBCD203AFA0000000
end_hunk_3
begin_hunk_4_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x double> %i.cc, %i.ce          ; 2 uses
  %i.cg = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %.0.i.i16.i, i64 1
  %i.ci = fmul <2 x double> %i.cf, %i.ch
  %i.cj = fadd <2 x double> %i.cf, splat (double 1.000000e+00) ; 2 uses
  %i.ck = fdiv <2 x double> %i.ci, %i.cj
  %i.cl = fdiv <2 x double> %i.y, %i.cj
  %i.cm = fadd <2 x double> %i.cl, %i.ck          ; 3 uses
  %i.cn = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bn, i64 1
  %i.cp = fmul <2 x double> %i.co, %i.cm
  %i.cq = fmul <2 x double> %i.cm, %i.cp
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cm, <2 x double> %i.cq) ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 1
  %i.ct = fneg double %i.cs
  %i.cu = extractelement <2 x double> %i.cr, i64 0
  %i.cv = fsub double %i.ct, %i.cu                ; 3 uses
  %i.cw = fcmp ugt double %i.cv, %5
  br i1 %i.cw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.u, align 8, !tbaa !242
  %i.cx = fcmp ogt double %i.cv, %.0103156
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.f, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.k, %bb.j
  %.6125.ph = phi double [ %.0119154, %bb.j ], [ %i.av, %bb.k ], [ %.0119154, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0119154, %bb.f ], [ %.0119154, %bb.c ], [ %.0119154, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111155, %bb.j ], [ %i.as, %bb.k ], [ %.0111155, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0111155, %bb.f ], [ %.0111155, %bb.c ], [ %.0111155, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103156, %bb.j ], [ %i.cv, %bb.k ], [ %.0103156, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0103156, %bb.f ], [ %.0103156, %bb.c ], [ %.0103156, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095157, %bb.j ], [ %i.aq, %bb.k ], [ %.095157, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.095157, %bb.f ], [ %.095157, %bb.c ], [ %.095157, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090158, %bb.j ], [ %7, %bb.k ], [ %.090158, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.090158, %bb.f ], [ %.090158, %bb.c ], [ %.090158, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.w
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !792

._crit_edge:                                      ; preds = %bb.l, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119154, %bb.e ], [ %.0119154, %bb.d ], [ %.6125.ph, %bb.l ] ; 3 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111155, %bb.e ], [ %.0111155, %bb.d ], [ %.6117.ph, %bb.l ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103156, %bb.e ], [ %.0103156, %bb.d ], [ %.6109.ph, %bb.l ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095157, %bb.e ], [ %.095157, %bb.d ], [ %.6101.ph, %bb.l ] ; 3 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090158, %bb.e ], [ %.090158, %bb.d ], [ %.6.ph, %bb.l ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !242, !range !231, !noundef !232
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.m, label %bb.q

bb.m:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !312
  %i.dd = fadd double %5, %i.dc
  %i.de = fcmp ogt double %.0103.lcssa, %i.dd
  br i1 %i.de, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.df, align 4, !tbaa !406
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !277 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 424
  %i.dj = load double, ptr %i.di, align 8, !tbaa !401 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 408
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !378 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 720
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !375 ; 2 uses
  %i.do = fneg double %.0119.lcssa
  %i.dp = fadd double %.0111.lcssa, %i.dj
  %i.dq = fdiv double %i.do, %i.dp                ; 4 uses
  %i.dr = fcmp ogt double %i.dl, 0.000000e+00     ; 2 uses
  %i.ds = tail call double @llvm.fabs.f64(double %i.dq)
  %i.dt = fcmp ogt double %i.ds, %i.dl
  %or.cond.i.i = and i1 %i.dr, %i.dt
  br i1 %or.cond.i.i, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.o:                                             ; preds = %bb.n
  %i.du = fcmp ogt double %i.dq, 0.000000e+00
  %i.dv = zext i1 %i.du to i32
  %i.dw = fcmp olt double %i.dq, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.dw to i32
  %i.dx = add nsw i32 %.neg.i.i.i, %i.dv
  %i.dy = sitofp i32 %i.dx to double
  %i.dz = fmul double %i.dl, %i.dy
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.n, %bb.o
  %.0.i.i = phi double [ %i.dz, %bb.o ], [ %i.dq, %bb.n ]
  %i.ea = sitofp i32 %.095.lcssa to double
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.ec, align 8, !tbaa !334
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.ed, align 8, !tbaa !407
  %i.ee = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ee, ptr %i.ef, align 8, !tbaa !408
  %i.eg = fsub double %1, %.0119.lcssa            ; 2 uses
  %i.eh = sub nsw i32 %3, %.095.lcssa             ; 2 uses
  %i.ei = fneg double %i.eg
  %i.ej = fdiv double %i.ea, %i.dn                ; 2 uses
  %i.ek = fmul double %i.ej, %.0.i.i
  %i.el = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.em = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.el, i64 1
  %i.eo = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.dj, i64 1
  %i.ep = fadd <2 x double> %i.en, %i.eo          ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = fdiv double %i.ek, %i.eq
  %i.es = insertelement <2 x double> poison, double %8, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.ei, i64 1
  %i.eu = fdiv <2 x double> %i.et, %i.ep          ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 0
  %i.ew = fadd double %i.ev, %i.er
  store double %i.ew, ptr %i.eb, align 8, !tbaa !410
  %i.ex = extractelement <2 x double> %i.eu, i64 1 ; 4 uses
  %i.ey = tail call double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp ogt double %i.ey, %i.dl
  %or.cond.i.i136 = and i1 %i.dr, %i.ez
  br i1 %or.cond.i.i136, label %bb.p, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fa = fcmp ogt double %i.ex, 0.000000e+00
  %i.fb = zext i1 %i.fa to i32
  %i.fc = fcmp olt double %i.ex, 0.000000e+00
  %.neg.i.i.i138 = sext i1 %i.fc to i32
  %i.fd = add nsw i32 %.neg.i.i.i138, %i.fb
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fmul double %i.dl, %i.fe
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.p
  %.0.i.i137 = phi double [ %i.ff, %bb.p ], [ %i.ex, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.fg = sitofp i32 %i.eh to double
  %i.fh = fdiv double %i.fg, %i.dn                ; 2 uses
  %i.fi = fmul double %i.fh, %.0.i.i137
  %i.fj = fadd double %i.fh, 1.000000e+00         ; 2 uses
  %i.fk = fdiv double %i.fi, %i.fj
  %i.fl = fdiv double %8, %i.fj
  %i.fm = fadd double %i.fl, %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %i.fm, ptr %i.fn, align 8, !tbaa !411
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.eh, ptr %i.fo, align 4, !tbaa !335
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.eg, ptr %i.fp, align 8, !tbaa !412
  %i.fq = fadd double %i.el, f0xBCD203AFA0000000
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fq, ptr %i.fr, align 8, !tbaa !413
  %i.fs = fsub double %.0103.lcssa, %5
  store double %i.fs, ptr %i.db, align 8, !tbaa !312
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.ft, align 8, !tbaa !313
  br label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115173 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115173, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !793

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115173.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod227 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115173.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not177 = icmp sgt i32 %.0113, %i.i
  br i1 %.not177, label %._crit_edge, label %.lr.ph187

.lr.ph187:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 720
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = sext i32 %.0113 to i64
  %i.bl = sext i32 %i.i to i64
  %i.bm = insertelement <2 x double> poison, double %8, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph187, %.thread
  %indvars.iv208 = phi i64 [ %i.bk, %.lr.ph187 ], [ %indvars.iv.next209, %.thread ] ; 5 uses
  %.2117183 = phi i32 [ %.1116, %.lr.ph187 ], [ %.3118, %.thread ] ; 2 uses
  %.0127180 = phi i32 [ %i.d, %.lr.ph187 ], [ %.6133, %.thread ] ; 7 uses
  %.0135179 = phi i32 [ 0, %.lr.ph187 ], [ %.6141, %.thread ] ; 7 uses
  %.0143178 = phi double [ -inf, %.lr.ph187 ], [ %.6149, %.thread ] ; 8 uses
  %i.bo = phi <2 x double> [ splat (double +qnan), %.lr.ph187 ], [ %i.er, %.thread ] ; 7 uses
  %i.bp = phi <2 x double> [ %i.az, %.lr.ph187 ], [ %i.ce, %.thread ] ; 2 uses
  %i.bq = icmp sgt i64 %indvars.iv208, -1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bs = trunc nsw i64 %indvars.iv208 to i32
  %i.bt = shl nuw i32 %i.bs, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !295
  %i.by = load <2 x double>, ptr %i.bv, align 8, !tbaa !295
  %i.bz = fadd <2 x double> %i.bp, %i.by
  %i.ca = fmul double %i.f, %i.bx
  %i.cb = fadd double %i.ca, 5.000000e-01
  %i.cc = fptosi double %i.cb to i32
  %i.cd = add nsw i32 %.2117183, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.cd, %bb.e ], [ %.2117183, %bb.d ] ; 5 uses
  %i.ce = phi <2 x double> [ %i.bz, %bb.e ], [ %i.bp, %bb.d ] ; 5 uses
  %i.cf = icmp slt i32 %.3118, %i.be
  br i1 %i.cf, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.ch = extractelement <2 x double> %i.ce, i64 1 ; 3 uses
  %i.ci = fcmp olt double %i.ch, %i.cg
  br i1 %i.ci, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = sub nsw i32 %3, %.3118                  ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.be
  br i1 %i.ck, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = fsub double %2, %i.ch                   ; 2 uses
  %i.cm = fcmp olt double %i.cl, %i.cg
  br i1 %i.cm, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = trunc i64 %indvars.iv208 to i32
  %i.co = add i32 %i.cn, %i.h
  %.not158 = icmp eq i32 %i.co, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cp = extractelement <2 x double> %i.ce, i64 0 ; 2 uses
  %i.cq = fsub double %1, %i.cp                   ; 2 uses
  %i.cr = load double, ptr %i.bg, align 8, !tbaa !401 ; 2 uses
  %i.cs = load double, ptr %i.bh, align 8, !tbaa !378 ; 5 uses
  %i.ct = load double, ptr %i.bi, align 8, !tbaa !375
  %i.cu = fneg double %i.cp
  %i.cv = fadd double %i.ch, %i.cr                ; 2 uses
  %i.cw = fdiv double %i.cu, %i.cv                ; 4 uses
  %i.cx = fcmp ogt double %i.cs, 0.000000e+00     ; 2 uses
  %i.cy = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cz = fcmp ogt double %i.cy, %i.cs
  %or.cond.i.i.i = and i1 %i.cx, %i.cz
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i

bb.l:                                             ; preds = %bb.k
  %i.da = fcmp ogt double %i.cw, 0.000000e+00
  %i.db = zext i1 %i.da to i32
  %i.dc = fcmp olt double %i.cw, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.dc to i32
  %i.dd = add nsw i32 %.neg.i.i.i.i, %i.db
  %i.de = sitofp i32 %i.dd to double
  %i.df = fmul double %i.cs, %i.de
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi double [ %i.df, %bb.l ], [ %i.cw, %bb.k ]
  %i.dg = fneg double %i.cq
  %i.dh = fadd double %i.cl, %i.cr                ; 2 uses
  %i.di = fdiv double %i.dg, %i.dh                ; 4 uses
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ogt double %i.dj, %i.cs
  %or.cond.i.i15.i = and i1 %i.cx, %i.dk
  br i1 %or.cond.i.i15.i, label %bb.m, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i
  %i.dl = fcmp ogt double %i.di, 0.000000e+00
  %i.dm = zext i1 %i.dl to i32
  %i.dn = fcmp olt double %i.di, 0.000000e+00
  %.neg.i.i.i17.i = sext i1 %i.dn to i32
  %i.do = add nsw i32 %.neg.i.i.i17.i, %i.dm
  %i.dp = sitofp i32 %i.do to double
  %i.dq = fmul double %i.cs, %i.dp
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i, %bb.m
  %.0.i.i16.i = phi double [ %i.dq, %bb.m ], [ %i.di, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i ]
  %i.dr = insertelement <2 x i32> poison, i32 %.3118, i64 0
  %i.ds = insertelement <2 x i32> %i.dr, i32 %i.cj, i64 1
  %i.dt = sitofp <2 x i32> %i.ds to <2 x double>
  %i.du = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fdiv <2 x double> %i.dt, %i.dv          ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %.0.i.i16.i, i64 1
  %i.dz = fmul <2 x double> %i.dw, %i.dy
  %i.ea = fadd <2 x double> %i.dw, splat (double 1.000000e+00) ; 2 uses
  %i.eb = fdiv <2 x double> %i.dz, %i.ea
  %i.ec = fdiv <2 x double> %i.bn, %i.ea
  %i.ed = fadd <2 x double> %i.ec, %i.eb          ; 3 uses
  %i.ee = insertelement <2 x double> %i.ce, double %i.cq, i64 1
  %i.ef = fmul <2 x double> %i.ee, splat (double 2.000000e+00)
  %i.eg = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.dh, i64 1
  %i.ei = fmul <2 x double> %i.eh, %i.ed
  %i.ej = fmul <2 x double> %i.ed, %i.ei
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.ed, <2 x double> %i.ej) ; 2 uses
  %i.el = extractelement <2 x double> %i.ek, i64 1
  %i.em = fneg double %i.el
  %i.en = extractelement <2 x double> %i.ek, i64 0
  %i.eo = fsub double %i.em, %i.en                ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fmul double %i.av, %i.bg
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi double [ %i.bh, %bb.h ], [ %i.ay, %bb.g ]
  %i.bi = fneg double %i.ar
  %i.bj = fadd double %i.al, %i.au                ; 2 uses
  %i.bk = fdiv double %i.bi, %i.bj                ; 4 uses
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ogt double %i.bl, %i.av
  %or.cond.i.i15.i = and i1 %i.az, %i.bm
  br i1 %or.cond.i.i15.i, label %bb.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.i:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i
  %i.bn = fcmp ogt double %i.bk, 0.000000e+00
  %i.bo = zext i1 %i.bn to i32
  %i.bp = fcmp olt double %i.bk, 0.000000e+00
  %.neg.i.i.i17.i = sext i1 %i.bp to i32
  %i.bq = add nsw i32 %.neg.i.i.i17.i, %i.bo
  %i.br = sitofp i32 %i.bq to double
  %i.bs = fmul double %i.av, %i.br
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i, %bb.i
  %.0.i.i16.i = phi double [ %i.bs, %bb.i ], [ %i.bk, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i ]
  %i.bt = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.bv = fmul <2 x double> %i.bu, splat (double 2.000000e+00)
  %i.bw = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bj, i64 1
  %i.by = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %.0.i.i16.i, i64 1 ; 3 uses
  %i.ca = fmul <2 x double> %i.bx, %i.bz
  %i.cb = fmul <2 x double> %i.bz, %i.ca
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bz, <2 x double> %i.cb) ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 1
  %i.ce = fneg double %i.cd
  %i.cf = extractelement <2 x double> %i.cc, i64 0
  %i.cg = fsub double %i.ce, %i.cf                ; 3 uses
  %i.ch = fcmp ugt double %i.cg, %5
  br i1 %i.ch, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.t, align 8, !tbaa !242
  %i.ci = fcmp ogt double %i.cg, %.0103156
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.f, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.k, %bb.j
  %.6125.ph = phi double [ %.0119154, %bb.j ], [ %i.as, %bb.k ], [ %.0119154, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0119154, %bb.f ], [ %.0119154, %bb.c ], [ %.0119154, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111155, %bb.j ], [ %i.ap, %bb.k ], [ %.0111155, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0111155, %bb.f ], [ %.0111155, %bb.c ], [ %.0111155, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103156, %bb.j ], [ %i.cg, %bb.k ], [ %.0103156, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0103156, %bb.f ], [ %.0103156, %bb.c ], [ %.0103156, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095157, %bb.j ], [ %i.an, %bb.k ], [ %.095157, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.095157, %bb.f ], [ %.095157, %bb.c ], [ %.095157, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090158, %bb.j ], [ %7, %bb.k ], [ %.090158, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.090158, %bb.f ], [ %.090158, %bb.c ], [ %.090158, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !835

._crit_edge:                                      ; preds = %bb.l, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119154, %bb.e ], [ %.0119154, %bb.d ], [ %.6125.ph, %bb.l ] ; 3 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111155, %bb.e ], [ %.0111155, %bb.d ], [ %.6117.ph, %bb.l ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103156, %bb.e ], [ %.0103156, %bb.d ], [ %.6109.ph, %bb.l ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095157, %bb.e ], [ %.095157, %bb.d ], [ %.6101.ph, %bb.l ] ; 2 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090158, %bb.e ], [ %.090158, %bb.d ], [ %.6.ph, %bb.l ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.m, label %bb.q

bb.m:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0103.lcssa, %i.co
  br i1 %i.cp, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !277 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 424
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !401 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 408
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !378 ; 5 uses
  %i.cx = fneg double %.0119.lcssa
  %i.cy = fadd double %.0111.lcssa, %i.cu
  %i.cz = fdiv double %i.cx, %i.cy                ; 4 uses
  %i.da = fcmp ogt double %i.cw, 0.000000e+00     ; 2 uses
  %i.db = tail call double @llvm.fabs.f64(double %i.cz)
  %i.dc = fcmp ogt double %i.db, %i.cw
  %or.cond.i.i = and i1 %i.da, %i.dc
  br i1 %or.cond.i.i, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.o:                                             ; preds = %bb.n
  %i.dd = fcmp ogt double %i.cz, 0.000000e+00
  %i.de = zext i1 %i.dd to i32
  %i.df = fcmp olt double %i.cz, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.df to i32
  %i.dg = add nsw i32 %.neg.i.i.i, %i.de
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fmul double %i.cw, %i.dh
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.n, %bb.o
  %.0.i.i = phi double [ %i.di, %bb.o ], [ %i.cz, %bb.n ]
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i.i, ptr %i.dj, align 8, !tbaa !410
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.dk, align 8, !tbaa !334
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.dl, align 8, !tbaa !407
  %i.dm = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dm, ptr %i.dn, align 8, !tbaa !408
  %i.do = fsub double %1, %.0119.lcssa            ; 2 uses
  %i.dp = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.dq = sub nsw i32 %3, %.095.lcssa
  %i.dr = fneg double %i.do
  %i.ds = fadd double %i.dp, %i.cu
  %i.dt = fdiv double %i.dr, %i.ds                ; 4 uses
  %i.du = tail call double @llvm.fabs.f64(double %i.dt)
  %i.dv = fcmp ogt double %i.du, %i.cw
  %or.cond.i.i136 = and i1 %i.da, %i.dv
  br i1 %or.cond.i.i136, label %bb.p, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.dw = fcmp ogt double %i.dt, 0.000000e+00
  %i.dx = zext i1 %i.dw to i32
  %i.dy = fcmp olt double %i.dt, 0.000000e+00
  %.neg.i.i.i138 = sext i1 %i.dy to i32
  %i.dz = add nsw i32 %.neg.i.i.i138, %i.dx
  %i.ea = sitofp i32 %i.dz to double
  %i.eb = fmul double %i.cw, %i.ea
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.p
  %.0.i.i137 = phi double [ %i.eb, %bb.p ], [ %i.dt, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i.i137, ptr %i.ec, align 8, !tbaa !411
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.dq, ptr %i.ed, align 4, !tbaa !335
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.do, ptr %i.ee, align 8, !tbaa !412
  %i.ef = fadd double %i.dp, f0xBCD203AFA0000000
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ef, ptr %i.eg, align 8, !tbaa !413
  %i.eh = fsub double %.0103.lcssa, %5
  store double %i.eh, ptr %i.cm, align 8, !tbaa !312
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.ei, align 8, !tbaa !313
  br label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115173 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115173, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !836

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115173.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod226 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115173.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not177 = icmp sgt i32 %.0113, %i.i
  br i1 %.not177, label %._crit_edge, label %.lr.ph187

.lr.ph187:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0113 to i64
  %i.bk = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph187, %.thread
  %indvars.iv208 = phi i64 [ %i.bj, %.lr.ph187 ], [ %indvars.iv.next209, %.thread ] ; 5 uses
  %.2117183 = phi i32 [ %.1116, %.lr.ph187 ], [ %.3118, %.thread ] ; 2 uses
  %.0127180 = phi i32 [ %i.d, %.lr.ph187 ], [ %.6133, %.thread ] ; 7 uses
  %.0135179 = phi i32 [ 0, %.lr.ph187 ], [ %.6141, %.thread ] ; 7 uses
  %.0143178 = phi double [ -inf, %.lr.ph187 ], [ %.6149, %.thread ] ; 8 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph187 ], [ %i.ec, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.az, %.lr.ph187 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv208, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv208 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2117183, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.ca, %bb.e ], [ %.2117183, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = icmp slt i32 %.3118, %i.be
  br i1 %i.cc, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.ce = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cf = fcmp olt double %i.ce, %i.cd
  br i1 %i.cf, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = sub nsw i32 %3, %.3118
  %i.ch = icmp slt i32 %i.cg, %i.be
  br i1 %i.ch, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = fsub double %2, %i.ce                   ; 2 uses
  %i.cj = fcmp olt double %i.ci, %i.cd
  br i1 %i.cj, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = trunc i64 %indvars.iv208 to i32
  %i.cl = add i32 %i.ck, %i.h
  %.not158 = icmp eq i32 %i.cl, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cm = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cn = fsub double %1, %i.cm                   ; 2 uses
  %i.co = load double, ptr %i.bg, align 8, !tbaa !401 ; 2 uses
  %i.cp = load double, ptr %i.bh, align 8, !tbaa !378 ; 5 uses
  %i.cq = fneg double %i.cm
  %i.cr = fadd double %i.ce, %i.co                ; 2 uses
  %i.cs = fdiv double %i.cq, %i.cr                ; 4 uses
  %i.ct = fcmp ogt double %i.cp, 0.000000e+00     ; 2 uses
  %i.cu = tail call double @llvm.fabs.f64(double %i.cs)
  %i.cv = fcmp ogt double %i.cu, %i.cp
  %or.cond.i.i.i = and i1 %i.ct, %i.cv
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cw = fcmp ogt double %i.cs, 0.000000e+00
  %i.cx = zext i1 %i.cw to i32
  %i.cy = fcmp olt double %i.cs, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.cy to i32
  %i.cz = add nsw i32 %.neg.i.i.i.i, %i.cx
  %i.da = sitofp i32 %i.cz to double
  %i.db = fmul double %i.cp, %i.da
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi double [ %i.db, %bb.l ], [ %i.cs, %bb.k ]
  %i.dc = fneg double %i.cn
  %i.dd = fadd double %i.ci, %i.co                ; 2 uses
  %i.de = fdiv double %i.dc, %i.dd                ; 4 uses
  %i.df = tail call double @llvm.fabs.f64(double %i.de)
  %i.dg = fcmp ogt double %i.df, %i.cp
  %or.cond.i.i15.i = and i1 %i.ct, %i.dg
  br i1 %or.cond.i.i15.i, label %bb.m, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i
  %i.dh = fcmp ogt double %i.de, 0.000000e+00
  %i.di = zext i1 %i.dh to i32
  %i.dj = fcmp olt double %i.de, 0.000000e+00
  %.neg.i.i.i17.i = sext i1 %i.dj to i32
  %i.dk = add nsw i32 %.neg.i.i.i17.i, %i.di
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = fmul double %i.cp, %i.dl
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i, %bb.m
  %.0.i.i16.i = phi double [ %i.dm, %bb.m ], [ %i.de, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i ]
  %i.dn = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dd, i64 1
  %i.dp = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %.0.i.i16.i, i64 1 ; 3 uses
  %i.dr = fmul <2 x double> %i.do, %i.dq
  %i.ds = insertelement <2 x double> %i.cb, double %i.cn, i64 1
  %i.dt = fmul <2 x double> %i.ds, splat (double 2.000000e+00)
  %i.du = fmul <2 x double> %i.dq, %i.dr
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dq, <2 x double> %i.du) ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 1
  %i.dx = fneg double %i.dw
  %i.dy = extractelement <2 x double> %i.dv, i64 0
  %i.dz = fsub double %i.dx, %i.dy                ; 3 uses
  %i.ea = fcmp ugt double %i.dz, %5
  br i1 %i.ea, label %bb.n, label %.thread

bb.n:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.eb = fcmp ogt double %i.dz, %.0143178
  br i1 %i.eb, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.j, %bb.f, %bb.g
  %.6149 = phi double [ %.0143178, %bb.f ], [ %.0143178, %bb.g ], [ %.0143178, %bb.n ], [ %i.dz, %bb.o ], [ %.0143178, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0143178, %bb.j ] ; 2 uses
  %.6141 = phi i32 [ %.0135179, %bb.f ], [ %.0135179, %bb.g ], [ %.0135179, %bb.n ], [ %.3118, %bb.o ], [ %.0135179, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0135179, %bb.j ] ; 2 uses
  %.6133 = phi i32 [ %.0127180, %bb.f ], [ %.0127180, %bb.g ], [ %.0127180, %bb.n ], [ %7, %bb.o ], [ %.0127180, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0127180, %bb.j ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.af = fmul double %i.f, %i.ae
  %i.ag = fadd double %i.af, 5.000000e-01
  %i.ah = fptosi double %i.ag to i32
  %i.ai = fadd double %.089155, %i.ac             ; 3 uses
  %i.aj = fadd double %.088156, %i.ae             ; 4 uses
  %i.ak = add nsw i32 %.087157, %i.ah             ; 4 uses
  %i.al = icmp slt i32 %i.ak, %i.o
  br i1 %i.al, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load double, ptr %i.p, align 8, !tbaa !405 ; 2 uses
  %i.an = fcmp olt double %i.aj, %i.am
  br i1 %i.an, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = sub nsw i32 %3, %i.ak                   ; 3 uses
  %i.ap = icmp slt i32 %i.ao, %i.o
  br i1 %i.ap, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fsub double %2, %i.aj                   ; 3 uses
  %i.ar = fcmp olt double %i.aq, %i.am
  br i1 %i.ar, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = fsub double %1, %i.ai                   ; 2 uses
  %i.at = add i32 %i.q, %i.y
  %.not135 = icmp eq i32 %i.at, %7
  br i1 %.not135, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.au = load double, ptr %i.r, align 8, !tbaa !401
  %i.av = load double, ptr %i.s, align 8, !tbaa !375
  %i.aw = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.ai, i64 1 ; 2 uses
  %i.ay = fneg <2 x double> %i.ax
  %i.az = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.ak, i64 1
  %i.bb = sitofp <2 x i32> %i.ba to <2 x double>
  %i.bc = fmul <2 x double> %i.ax, splat (double 2.000000e+00)
  %i.bd = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.aj, i64 1
  %i.bf = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fadd <2 x double> %i.be, %i.bg          ; 2 uses
  %i.bi = fdiv <2 x double> %i.ay, %i.bh
  %i.bj = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fdiv <2 x double> %i.bb, %i.bk          ; 2 uses
  %i.bm = fmul <2 x double> %i.bi, %i.bl
  %i.bn = fadd <2 x double> %i.bl, splat (double 1.000000e+00) ; 2 uses
  %i.bo = fdiv <2 x double> %i.bm, %i.bn
  %i.bp = fdiv <2 x double> %i.x, %i.bn
  %i.bq = fadd <2 x double> %i.bo, %i.bp          ; 3 uses
  %i.br = fmul <2 x double> %i.bh, %i.bq
  %i.bs = fmul <2 x double> %i.bq, %i.br
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bq, <2 x double> %i.bs) ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 1
  %i.bv = fneg double %i.bu
  %i.bw = extractelement <2 x double> %i.bt, i64 0
  %i.bx = fsub double %i.bv, %i.bw                ; 3 uses
  %i.by = fcmp ugt double %i.bx, %5
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.t, align 8, !tbaa !242
  %i.bz = fcmp ogt double %i.bx, %.0103152
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.i, %bb.h
  %.6125.ph = phi double [ %.0119150, %bb.h ], [ %i.as, %bb.i ], [ %.0119150, %bb.g ], [ %.0119150, %bb.f ], [ %.0119150, %bb.c ], [ %.0119150, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111151, %bb.h ], [ %i.aq, %bb.i ], [ %.0111151, %bb.g ], [ %.0111151, %bb.f ], [ %.0111151, %bb.c ], [ %.0111151, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103152, %bb.h ], [ %i.bx, %bb.i ], [ %.0103152, %bb.g ], [ %.0103152, %bb.f ], [ %.0103152, %bb.c ], [ %.0103152, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095153, %bb.h ], [ %i.ao, %bb.i ], [ %.095153, %bb.g ], [ %.095153, %bb.f ], [ %.095153, %bb.c ], [ %.095153, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090154, %bb.h ], [ %7, %bb.i ], [ %.090154, %bb.g ], [ %.090154, %bb.f ], [ %.090154, %bb.c ], [ %.090154, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !878

._crit_edge:                                      ; preds = %bb.j, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119150, %bb.e ], [ %.0119150, %bb.d ], [ %.6125.ph, %bb.j ] ; 3 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111151, %bb.e ], [ %.0111151, %bb.d ], [ %.6117.ph, %bb.j ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103152, %bb.e ], [ %.0103152, %bb.d ], [ %.6109.ph, %bb.j ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095153, %bb.e ], [ %.095153, %bb.d ], [ %.6101.ph, %bb.j ] ; 3 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090154, %bb.e ], [ %.090154, %bb.d ], [ %.6.ph, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !312
  %i.cf = fadd double %5, %i.ce
  %i.cg = fcmp ogt double %.0103.lcssa, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.ch, align 4, !tbaa !406
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !277 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 424
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !401
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 720
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !375
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.cp, align 8, !tbaa !334
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.cq, align 8, !tbaa !407
  %i.cr = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.cr, ptr %i.cs, align 8, !tbaa !408
  %i.ct = fsub double %1, %.0119.lcssa            ; 2 uses
  %i.cu = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.cv = sub nsw i32 %3, %.095.lcssa             ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %.0119.lcssa, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ct, i64 1
  %i.cy = fneg <2 x double> %i.cx
  %i.cz = insertelement <2 x double> poison, double %.0111.lcssa, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cu, i64 1
  %i.db = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fadd <2 x double> %i.da, %i.dc
  %i.de = fdiv <2 x double> %i.cy, %i.dd
  %i.df = insertelement <2 x i32> poison, i32 %.095.lcssa, i64 0
  %i.dg = insertelement <2 x i32> %i.df, i32 %i.cv, i64 1
  %i.dh = sitofp <2 x i32> %i.dg to <2 x double>
  %i.di = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv <2 x double> %i.dh, %i.dj          ; 2 uses
  %i.dl = fmul <2 x double> %i.de, %i.dk
  %i.dm = fadd <2 x double> %i.dk, splat (double 1.000000e+00) ; 2 uses
  %i.dn = fdiv <2 x double> %i.dl, %i.dm
  %i.do = insertelement <2 x double> poison, double %8, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fdiv <2 x double> %i.dp, %i.dm
  %i.dr = fadd <2 x double> %i.dn, %i.dq
  store <2 x double> %i.dr, ptr %i.co, align 8, !tbaa !295
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.cv, ptr %i.ds, align 4, !tbaa !335
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ct, ptr %i.dt, align 8, !tbaa !412
  %i.du = fadd double %i.cu, f0xBCD203AFA0000000
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.du, ptr %i.dv, align 8, !tbaa !413
  %i.dw = fsub double %.0103.lcssa, %5
  store double %i.dw, ptr %i.cd, align 8, !tbaa !312
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.dx, align 8, !tbaa !313
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115169 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115169, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !879

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115169.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod220 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115169.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not173 = icmp sgt i32 %.0113, %i.i
  br i1 %.not173, label %._crit_edge, label %.lr.ph183

.lr.ph183:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 720
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0113 to i64
  %i.bk = sext i32 %i.i to i64
  %i.bl = insertelement <2 x double> poison, double %8, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph183, %.thread
  %indvars.iv204 = phi i64 [ %i.bj, %.lr.ph183 ], [ %indvars.iv.next205, %.thread ] ; 5 uses
  %.2117179 = phi i32 [ %.1116, %.lr.ph183 ], [ %.3118, %.thread ] ; 2 uses
  %.0127176 = phi i32 [ %i.d, %.lr.ph183 ], [ %.6133, %.thread ] ; 7 uses
  %.0135175 = phi i32 [ 0, %.lr.ph183 ], [ %.6141, %.thread ] ; 7 uses
  %.0143174 = phi double [ -inf, %.lr.ph183 ], [ %.6149, %.thread ] ; 8 uses
  %i.bn = phi <2 x double> [ splat (double +qnan), %.lr.ph183 ], [ %i.dv, %.thread ] ; 7 uses
  %i.bo = phi <2 x double> [ %i.az, %.lr.ph183 ], [ %i.cd, %.thread ] ; 2 uses
  %i.bp = icmp sgt i64 %indvars.iv204, -1
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.br = trunc nsw i64 %indvars.iv204 to i32
  %i.bs = shl nuw i32 %i.br, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !295
  %i.bx = load <2 x double>, ptr %i.bu, align 8, !tbaa !295
  %i.by = fadd <2 x double> %i.bo, %i.bx
  %i.bz = fmul double %i.f, %i.bw
  %i.ca = fadd double %i.bz, 5.000000e-01
  %i.cb = fptosi double %i.ca to i32
  %i.cc = add nsw i32 %.2117179, %i.cb
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.cc, %bb.e ], [ %.2117179, %bb.d ] ; 5 uses
  %i.cd = phi <2 x double> [ %i.by, %bb.e ], [ %i.bo, %bb.d ] ; 6 uses
  %i.ce = icmp slt i32 %.3118, %i.be
  br i1 %i.ce, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cg = extractelement <2 x double> %i.cd, i64 1 ; 2 uses
  %i.ch = fcmp olt double %i.cg, %i.cf
  br i1 %i.ch, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = sub nsw i32 %3, %.3118                  ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.be
  br i1 %i.cj, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = fsub double %2, %i.cg                   ; 2 uses
  %i.cl = fcmp olt double %i.ck, %i.cf
  br i1 %i.cl, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = trunc i64 %indvars.iv204 to i32
  %i.cn = add i32 %i.cm, %i.h
  %.not158 = icmp eq i32 %i.cn, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.co = extractelement <2 x double> %i.cd, i64 0
  %i.cp = fsub double %1, %i.co
  %i.cq = load double, ptr %i.bg, align 8, !tbaa !401
  %i.cr = load double, ptr %i.bh, align 8, !tbaa !375
  %i.cs = insertelement <2 x i32> poison, i32 %.3118, i64 0
  %i.ct = insertelement <2 x i32> %i.cs, i32 %i.ci, i64 1
  %i.cu = sitofp <2 x i32> %i.ct to <2 x double>
  %i.cv = insertelement <2 x double> %i.cd, double %i.cp, i64 1 ; 2 uses
  %i.cw = fneg <2 x double> %i.cv
  %i.cx = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x double> %i.cx, double %i.ck, i64 1
  %i.cz = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fadd <2 x double> %i.cy, %i.da          ; 2 uses
  %i.dc = fdiv <2 x double> %i.cw, %i.db
  %i.dd = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fdiv <2 x double> %i.cu, %i.de          ; 2 uses
  %i.dg = fmul <2 x double> %i.dc, %i.df
  %i.dh = fadd <2 x double> %i.df, splat (double 1.000000e+00) ; 2 uses
  %i.di = fdiv <2 x double> %i.dg, %i.dh
  %i.dj = fdiv <2 x double> %i.bm, %i.dh
  %i.dk = fadd <2 x double> %i.di, %i.dj          ; 3 uses
  %i.dl = fmul <2 x double> %i.cv, splat (double 2.000000e+00)
  %i.dm = fmul <2 x double> %i.db, %i.dk
  %i.dn = fmul <2 x double> %i.dk, %i.dm
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dk, <2 x double> %i.dn) ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 1
  %i.dq = fneg double %i.dp
  %i.dr = extractelement <2 x double> %i.do, i64 0
  %i.ds = fsub double %i.dq, %i.dr                ; 3 uses
  %i.dt = fcmp ugt double %i.ds, %5
  br i1 %i.dt, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.du = fcmp ogt double %i.ds, %.0143174
  br i1 %i.du, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %bb.f, %bb.g
  %.6149 = phi double [ %.0143174, %bb.f ], [ %.0143174, %bb.g ], [ %.0143174, %bb.l ], [ %i.ds, %bb.m ], [ %.0143174, %bb.k ], [ %.0143174, %bb.j ] ; 2 uses
  %.6141 = phi i32 [ %.0135175, %bb.f ], [ %.0135175, %bb.g ], [ %.0135175, %bb.l ], [ %.3118, %bb.m ], [ %.0135175, %bb.k ], [ %.0135175, %bb.j ] ; 2 uses
  %.6133 = phi i32 [ %.0127176, %bb.f ], [ %.0127176, %bb.g ], [ %.0127176, %bb.l ], [ %7, %bb.m ], [ %.0127176, %bb.k ], [ %.0127176, %bb.j ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bn, %bb.f ], [ %i.bn, %bb.g ], [ %i.bn, %bb.l ], [ %i.cd, %bb.m ], [ %i.bn, %bb.k ], [ %i.bn, %bb.j ] ; 2 uses
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, 1
  %.not.not = icmp slt i64 %indvars.iv204, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !880

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0143.lcssa = phi double [ -inf, %.loopexit ], [ %.0143174, %bb.h ], [ %.0143174, %bb.i ], [ %.6149, %.thread ] ; 2 uses
  %.0135.lcssa = phi i32 [ 0, %.loopexit ], [ %.0135175, %bb.h ], [ %.0135175, %bb.i ], [ %.6141, %.thread ] ; 3 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127176, %bb.h ], [ %.0127176, %bb.i ], [ %.6133, %.thread ]
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bn, %bb.h ], [ %i.bn, %bb.i ], [ %i.dv, %.thread ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !312
  %i.ec = fadd double %5, %i.eb
  %i.ed = fcmp ogt double %.0143.lcssa, %i.ec
  br i1 %i.ed, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0127.lcssa, ptr %i.ee, align 4, !tbaa !406
end_hunk_6
begin_hunk_7_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !243
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !277  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 308
  %i.o = load i32, ptr %i.n, align 4, !tbaa !353  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  %i.q = add nsw i32 %i.g, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = sext i32 %i.h to i64
  %i.u = sext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.087157 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.j ]
  %.088156 = phi double [ f0x3CD203AFA0000000, %.lr.ph ], [ %i.ag, %bb.j ]
  %.089155 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.af, %bb.j ]
  %.090154 = phi i32 [ %i.d, %.lr.ph ], [ %.6.ph, %bb.j ] ; 7 uses
  %.095153 = phi i32 [ 0, %.lr.ph ], [ %.6101.ph, %bb.j ] ; 7 uses
  %.0103152 = phi double [ -inf, %.lr.ph ], [ %.6109.ph, %bb.j ] ; 8 uses
  %.0111151 = phi double [ +qnan, %.lr.ph ], [ %.6117.ph, %bb.j ] ; 7 uses
  %.0119150 = phi double [ +qnan, %.lr.ph ], [ %.6125.ph, %bb.j ] ; 7 uses
  %i.v = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.w = shl i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !295
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !295 ; 2 uses
  %i.ac = fmul double %i.f, %i.ab
  %i.ad = fadd double %i.ac, 5.000000e-01
  %i.ae = fptosi double %i.ad to i32
  %i.af = fadd double %.089155, %i.z              ; 3 uses
  %i.ag = fadd double %.088156, %i.ab             ; 4 uses
  %i.ah = add nsw i32 %.087157, %i.ae             ; 3 uses
  %i.ai = icmp slt i32 %i.ah, %i.o
  br i1 %i.ai, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load double, ptr %i.p, align 8, !tbaa !405 ; 2 uses
  %i.ak = fcmp olt double %i.ag, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = sub nsw i32 %3, %i.ah                   ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.o
  br i1 %i.am, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = fsub double %2, %i.ag                   ; 3 uses
  %i.ao = fcmp olt double %i.an, %i.aj
  br i1 %i.ao, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fsub double %1, %i.af                   ; 2 uses
  %i.aq = add i32 %i.q, %i.v
  %.not135 = icmp eq i32 %i.aq, %7
  br i1 %.not135, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ar = load double, ptr %i.r, align 8, !tbaa !401
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.af, i64 1 ; 2 uses
  %i.au = fmul <2 x double> %i.at, %i.at
  %i.av = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.ag, i64 1
  %i.ax = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fadd <2 x double> %i.aw, %i.ay
  %i.ba = fdiv <2 x double> %i.au, %i.az
  %i.bb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ba) ; 3 uses
  %i.bc = fcmp ugt double %i.bb, %5
  br i1 %i.bc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.s, align 8, !tbaa !242
  %i.bd = fcmp ogt double %i.bb, %.0103152
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.i, %bb.h
  %.6125.ph = phi double [ %.0119150, %bb.h ], [ %i.ap, %bb.i ], [ %.0119150, %bb.g ], [ %.0119150, %bb.f ], [ %.0119150, %bb.c ], [ %.0119150, %bb.b ] ; 2 uses
  %.6117.ph = phi double [ %.0111151, %bb.h ], [ %i.an, %bb.i ], [ %.0111151, %bb.g ], [ %.0111151, %bb.f ], [ %.0111151, %bb.c ], [ %.0111151, %bb.b ] ; 2 uses
  %.6109.ph = phi double [ %.0103152, %bb.h ], [ %i.bb, %bb.i ], [ %.0103152, %bb.g ], [ %.0103152, %bb.f ], [ %.0103152, %bb.c ], [ %.0103152, %bb.b ] ; 2 uses
  %.6101.ph = phi i32 [ %.095153, %bb.h ], [ %i.al, %bb.i ], [ %.095153, %bb.g ], [ %.095153, %bb.f ], [ %.095153, %bb.c ], [ %.095153, %bb.b ] ; 2 uses
  %.6.ph = phi i32 [ %.090154, %bb.h ], [ %7, %bb.i ], [ %.090154, %bb.g ], [ %.090154, %bb.f ], [ %.090154, %bb.c ], [ %.090154, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !921

._crit_edge:                                      ; preds = %bb.j, %bb.d, %bb.e, %bb.a
  %.0119.lcssa = phi double [ +qnan, %bb.a ], [ %.0119150, %bb.e ], [ %.0119150, %bb.d ], [ %.6125.ph, %bb.j ] ; 3 uses
  %.0111.lcssa = phi double [ +qnan, %bb.a ], [ %.0111151, %bb.e ], [ %.0111151, %bb.d ], [ %.6117.ph, %bb.j ] ; 3 uses
  %.0103.lcssa = phi double [ -inf, %bb.a ], [ %.0103152, %bb.e ], [ %.0103152, %bb.d ], [ %.6109.ph, %bb.j ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.a ], [ %.095153, %bb.e ], [ %.095153, %bb.d ], [ %.6101.ph, %bb.j ] ; 2 uses
  %.090.lcssa = phi i32 [ %i.d, %bb.a ], [ %.090154, %bb.e ], [ %.090154, %bb.d ], [ %.6.ph, %bb.j ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !242, !range !231, !noundef !232
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !312
  %i.bj = fadd double %5, %i.bi
  %i.bk = fcmp ogt double %.0103.lcssa, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.090.lcssa, ptr %i.bl, align 4, !tbaa !406
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !277
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 424
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !401
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.095.lcssa, ptr %i.br, align 8, !tbaa !334
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0119.lcssa, ptr %i.bs, align 8, !tbaa !407
  %i.bt = fadd double %.0111.lcssa, f0xBCD203AFA0000000
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.bt, ptr %i.bu, align 8, !tbaa !408
  %i.bv = fsub double %1, %.0119.lcssa            ; 2 uses
  %i.bw = fsub double %2, %.0111.lcssa            ; 2 uses
  %i.bx = sub nsw i32 %3, %.095.lcssa
  %i.by = insertelement <2 x double> poison, double %.0119.lcssa, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bv, i64 1
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = insertelement <2 x double> poison, double %.0111.lcssa, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bw, i64 1
  %i.cd = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fadd <2 x double> %i.cc, %i.ce
  %i.cg = fdiv <2 x double> %i.ca, %i.cf
  store <2 x double> %i.cg, ptr %i.bq, align 8, !tbaa !295
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.bx, ptr %i.ch, align 4, !tbaa !335
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.bv, ptr %i.ci, align 8, !tbaa !412
  %i.cj = fadd double %i.bw, f0xBCD203AFA0000000
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.cj, ptr %i.ck, align 8, !tbaa !413
  %i.cl = fsub double %.0103.lcssa, %5
  store double %i.cl, ptr %i.bh, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.cm, align 8, !tbaa !313
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb0ELb0ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0115169 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0115169, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !922

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0115169.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod219 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0115169.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1116 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0113 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not173 = icmp sgt i32 %.0113, %i.i
  br i1 %.not173, label %._crit_edge, label %.lr.ph183

.lr.ph183:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = sext i32 %.0113 to i64
  %i.bj = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph183, %.thread
  %indvars.iv204 = phi i64 [ %i.bi, %.lr.ph183 ], [ %indvars.iv.next205, %.thread ] ; 5 uses
  %.2117179 = phi i32 [ %.1116, %.lr.ph183 ], [ %.3118, %.thread ] ; 2 uses
  %.0127176 = phi i32 [ %i.d, %.lr.ph183 ], [ %.6133, %.thread ] ; 7 uses
  %.0135175 = phi i32 [ 0, %.lr.ph183 ], [ %.6141, %.thread ] ; 7 uses
  %.0143174 = phi double [ -inf, %.lr.ph183 ], [ %.6149, %.thread ] ; 8 uses
  %i.bk = phi <2 x double> [ splat (double +qnan), %.lr.ph183 ], [ %i.cz, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ %i.az, %.lr.ph183 ], [ %i.ca, %.thread ] ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv204, -1
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bo = trunc nsw i64 %indvars.iv204 to i32
  %i.bp = shl nuw i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !295
  %i.bu = load <2 x double>, ptr %i.br, align 8, !tbaa !295
  %i.bv = fadd <2 x double> %i.bl, %i.bu
  %i.bw = fmul double %i.f, %i.bt
  %i.bx = fadd double %i.bw, 5.000000e-01
  %i.by = fptosi double %i.bx to i32
  %i.bz = add nsw i32 %.2117179, %i.by
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3118 = phi i32 [ %i.bz, %bb.e ], [ %.2117179, %bb.d ] ; 4 uses
  %i.ca = phi <2 x double> [ %i.bv, %bb.e ], [ %i.bl, %bb.d ] ; 6 uses
  %i.cb = icmp slt i32 %.3118, %i.be
  br i1 %i.cb, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cd = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.ce = fcmp olt double %i.cd, %i.cc
  br i1 %i.ce, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = sub nsw i32 %3, %.3118
  %i.cg = icmp slt i32 %i.cf, %i.be
  br i1 %i.cg, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = fsub double %2, %i.cd                   ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cc
  br i1 %i.ci, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = trunc i64 %indvars.iv204 to i32
  %i.ck = add i32 %i.cj, %i.h
  %.not158 = icmp eq i32 %i.ck, %7
  br i1 %.not158, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cl = extractelement <2 x double> %i.ca, i64 0
  %i.cm = fsub double %1, %i.cl
  %i.cn = load double, ptr %i.bg, align 8, !tbaa !401
  %i.co = insertelement <2 x double> %i.ca, double %i.cm, i64 1 ; 2 uses
  %i.cp = fmul <2 x double> %i.co, %i.co
  %i.cq = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cr = insertelement <2 x double> %i.cq, double %i.ch, i64 1
  %i.cs = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fadd <2 x double> %i.cr, %i.ct
  %i.cv = fdiv <2 x double> %i.cp, %i.cu
  %i.cw = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cv) ; 3 uses
  %i.cx = fcmp ugt double %i.cw, %5
  br i1 %i.cx, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bh, align 8, !tbaa !242
  %i.cy = fcmp ogt double %i.cw, %.0143174
  br i1 %i.cy, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %bb.f, %bb.g
  %.6149 = phi double [ %.0143174, %bb.f ], [ %.0143174, %bb.g ], [ %.0143174, %bb.l ], [ %i.cw, %bb.m ], [ %.0143174, %bb.k ], [ %.0143174, %bb.j ] ; 2 uses
  %.6141 = phi i32 [ %.0135175, %bb.f ], [ %.0135175, %bb.g ], [ %.0135175, %bb.l ], [ %.3118, %bb.m ], [ %.0135175, %bb.k ], [ %.0135175, %bb.j ] ; 2 uses
  %.6133 = phi i32 [ %.0127176, %bb.f ], [ %.0127176, %bb.g ], [ %.0127176, %bb.l ], [ %7, %bb.m ], [ %.0127176, %bb.k ], [ %.0127176, %bb.j ] ; 2 uses
  %i.cz = phi <2 x double> [ %i.bk, %bb.f ], [ %i.bk, %bb.g ], [ %i.bk, %bb.l ], [ %i.ca, %bb.m ], [ %i.bk, %bb.k ], [ %i.bk, %bb.j ] ; 2 uses
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, 1
  %.not.not = icmp slt i64 %indvars.iv204, %i.bj
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !923

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0143.lcssa = phi double [ -inf, %.loopexit ], [ %.0143174, %bb.h ], [ %.0143174, %bb.i ], [ %.6149, %.thread ] ; 2 uses
  %.0135.lcssa = phi i32 [ 0, %.loopexit ], [ %.0135175, %bb.h ], [ %.0135175, %bb.i ], [ %.6141, %.thread ] ; 2 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127176, %bb.h ], [ %.0127176, %bb.i ], [ %.6133, %.thread ]
  %i.da = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ %i.cz, %.thread ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !312
  %i.dg = fadd double %5, %i.df
  %i.dh = fcmp ogt double %.0143.lcssa, %i.dg
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0127.lcssa, ptr %i.di, align 4, !tbaa !406
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !277
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 424
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !401
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0135.lcssa, ptr %i.do, align 8, !tbaa !334
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dq = extractelement <2 x double> %i.da, i64 0
  store double %i.dq, ptr %i.dp, align 8, !tbaa !407
  %i.dr = extractelement <2 x double> %i.da, i64 1
  %i.ds = fadd double %i.dr, f0xBCD203AFA0000000
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ds, ptr %i.dt, align 8, !tbaa !408
  %i.du = insertelement <2 x double> poison, double %1, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %2, i64 1
  %i.dw = fsub <2 x double> %i.dv, %i.da          ; 3 uses
  %i.dx = sub nsw i32 %3, %.0135.lcssa
  %i.dy = shufflevector <2 x double> %i.dw, <2 x double> %i.da, <2 x i32> <i32 3, i32 1>
  %i.dz = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fadd <2 x double> %i.dy, %i.ea
end_hunk_7
begin_hunk_8_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0104.lcssa, %i.co
  br i1 %i.cp, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.db = load double, ptr %i.da, align 8, !tbaa !375 ; 2 uses
  %i.dc = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.dd = fsub double %i.dc, %i.cv                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.de, double %i.dd, double 0.000000e+00
  %i.df = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.dg = zext i1 %i.df to i32
  %i.dh = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.dh to i32
  %i.di = add nsw i32 %.neg.i.i.i.i, %i.dg
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fneg double %i.dj
  %i.dl = fmul double %.sroa.speculated.i.i.i, %i.dk
  %i.dm = fadd double %.096.lcssa, %i.cx
  %i.dn = fdiv double %i.dl, %i.dm                ; 4 uses
  %i.do = fcmp ogt double %i.cz, 0.000000e+00     ; 2 uses
  %i.dp = tail call double @llvm.fabs.f64(double %i.dn)
  %i.dq = fcmp ogt double %i.dp, %i.cz
  %or.cond.i.i = and i1 %i.do, %i.dq
  br i1 %or.cond.i.i, label %bb.p, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i

bb.p:                                             ; preds = %bb.o
  %i.dr = fcmp ogt double %i.dn, 0.000000e+00
  %i.ds = zext i1 %i.dr to i32
  %i.dt = fcmp olt double %i.dn, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.dt to i32
  %i.du = add nsw i32 %.neg.i.i.i, %i.ds
  %i.dv = sitofp i32 %i.du to double
  %i.dw = fmul double %i.cz, %i.dv
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i = phi double [ %i.dw, %bb.p ], [ %i.dn, %bb.o ]
  %i.dx = sitofp i32 %.0129.lcssa to double
  %i.dy = fdiv double %i.dx, %i.db                ; 2 uses
  %i.dz = fmul double %i.dy, %.0.i.i
  %i.ea = fadd double %i.dy, 1.000000e+00         ; 2 uses
  %i.eb = fdiv double %i.dz, %i.ea
  %i.ec = fdiv double %8, %i.ea
  %i.ed = fadd double %i.ec, %i.eb                ; 3 uses
  %i.ee = fcmp olt double %i.ed, %.sroa.0.0.lcssa
  br i1 %i.ee, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i
  %i.ef = fcmp ogt double %i.ed, %.sroa.6.0.lcssa
  br i1 %i.ef, label %bb.r, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.r:                                             ; preds = %bb.q
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i, %bb.q, %bb.r
  %.0.i = phi double [ %i.ed, %bb.q ], [ %.sroa.6.0.lcssa, %bb.r ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.eg, align 8, !tbaa !410
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.eh, align 8, !tbaa !334
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.ei, align 8, !tbaa !407
  %i.ej = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ej, ptr %i.ek, align 8, !tbaa !408
  %i.el = fsub double %1, %.0.lcssa               ; 4 uses
  %i.em = fsub double %2, %.096.lcssa             ; 2 uses
  %i.en = sub nsw i32 %3, %.0129.lcssa            ; 2 uses
  %i.eo = tail call double @llvm.fabs.f64(double %i.el)
  %i.ep = fsub double %i.eo, %i.cv                ; 2 uses
  %i.eq = fcmp ogt double %i.ep, 0.000000e+00
  %.sroa.speculated.i.i.i147 = select i1 %i.eq, double %i.ep, double 0.000000e+00
  %i.er = fcmp ogt double %i.el, 0.000000e+00
  %i.es = zext i1 %i.er to i32
  %i.et = fcmp olt double %i.el, 0.000000e+00
  %.neg.i.i.i.i148 = sext i1 %i.et to i32
  %i.eu = add nsw i32 %.neg.i.i.i.i148, %i.es
  %i.ev = sitofp i32 %i.eu to double
  %i.ew = fneg double %i.ev
  %i.ex = fmul double %.sroa.speculated.i.i.i147, %i.ew
  %i.ey = fadd double %i.em, %i.cx
  %i.ez = fdiv double %i.ex, %i.ey                ; 4 uses
  %i.fa = tail call double @llvm.fabs.f64(double %i.ez)
  %i.fb = fcmp ogt double %i.fa, %i.cz
  %or.cond.i.i149 = and i1 %i.do, %i.fb
  br i1 %or.cond.i.i149, label %bb.s, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i150

bb.s:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fc = fcmp ogt double %i.ez, 0.000000e+00
  %i.fd = zext i1 %i.fc to i32
  %i.fe = fcmp olt double %i.ez, 0.000000e+00
  %.neg.i.i.i153 = sext i1 %i.fe to i32
  %i.ff = add nsw i32 %.neg.i.i.i153, %i.fd
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = fmul double %i.cz, %i.fg
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i150

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i150: ; preds = %bb.s, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i151 = phi double [ %i.fh, %bb.s ], [ %i.ez, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.fi = sitofp i32 %i.en to double
  %i.fj = fdiv double %i.fi, %i.db                ; 2 uses
  %i.fk = fmul double %i.fj, %.0.i.i151
  %i.fl = fadd double %i.fj, 1.000000e+00         ; 2 uses
  %i.fm = fdiv double %i.fk, %i.fl
  %i.fn = fdiv double %8, %i.fl
  %i.fo = fadd double %i.fn, %i.fm                ; 3 uses
  %i.fp = fcmp olt double %i.fo, %.sroa.0156.0.lcssa
  br i1 %i.fp, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit154, label %bb.t

bb.t:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i150
  %i.fq = fcmp ogt double %i.fo, %.sroa.6158.0.lcssa
  br i1 %i.fq, label %bb.u, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit154

bb.u:                                             ; preds = %bb.t
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit154

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit154: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i150, %bb.t, %bb.u
  %.0.i152 = phi double [ %i.fo, %bb.t ], [ %.sroa.6158.0.lcssa, %bb.u ], [ %.sroa.0156.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i150 ]
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i152, ptr %i.fr, align 8, !tbaa !411
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.en, ptr %i.fs, align 4, !tbaa !335
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.el, ptr %i.ft, align 8, !tbaa !412
  %i.fu = fadd double %i.em, f0xBCD203AFA0000000
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fu, ptr %i.fv, align 8, !tbaa !413
  %i.fw = fsub double %.0104.lcssa, %5
  store double %i.fw, ptr %i.cm, align 8, !tbaa !312
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fx, align 8, !tbaa !313
  br label %bb.v

bb.v:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit154, %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145191 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145191, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !965

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145191.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod265 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod265)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145191.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not195 = icmp sgt i32 %.0143, %i.p
  br i1 %.not195, label %._crit_edge, label %.lr.ph209

.lr.ph209:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph209, %.thread
  %indvars.iv242 = phi i64 [ %i.bj, %.lr.ph209 ], [ %indvars.iv.next243, %.thread ] ; 5 uses
  %.0114206 = phi double [ -inf, %.lr.ph209 ], [ %.6120, %.thread ] ; 9 uses
  %.0126205 = phi i32 [ 0, %.lr.ph209 ], [ %.6132, %.thread ] ; 8 uses
  %.0134204 = phi i32 [ %i.d, %.lr.ph209 ], [ %.6140, %.thread ] ; 8 uses
  %.2147202 = phi i32 [ %.1146, %.lr.ph209 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0199 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0198 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0175.0197 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.0175.2, %.thread ] ; 7 uses
  %.sroa.6177.0196 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.6177.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph209 ], [ %i.dv, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph209 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv242, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv242 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147202, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147202, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv242 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ct = fsub double %1, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.db = load i8, ptr %i.da, align 8, !tbaa !384
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !375
  %i.de = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cs, double noundef %i.ck, double noundef %i.ct, double noundef %i.co, double noundef %i.cv, double noundef %i.cx, double noundef %i.cz, ptr noundef nonnull %4, i8 noundef signext %i.db, double noundef %i.dd, i32 noundef %.3148, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.df = fcmp ugt double %i.de, %5
  br i1 %i.df, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.dg = fcmp ogt double %i.de, %.0114206
  br i1 %i.dg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %4, align 8, !tbaa !282
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call { double, double } %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dl = extractvalue { double, double } %i.dk, 0 ; 3 uses
  %i.dm = extractvalue { double, double } %i.dk, 1 ; 3 uses
  %i.dn = load ptr, ptr %4, align 8, !tbaa !282
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call { double, double } %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dr = extractvalue { double, double } %i.dq, 0 ; 3 uses
  %i.ds = extractvalue { double, double } %i.dq, 1 ; 3 uses
  %i.dt = fcmp ogt double %i.dl, %i.dm
  %i.du = fcmp ogt double %i.dr, %i.ds
  %or.cond = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l, %bb.k, %bb.m, %bb.j, %bb.f, %bb.g
  %.sroa.6177.2 = phi double [ %.sroa.6177.0196, %bb.f ], [ %.sroa.6177.0196, %bb.g ], [ %.sroa.6177.0196, %bb.j ], [ %.sroa.6177.0196, %bb.k ], [ %.sroa.6177.0196, %bb.l ], [ %i.dm, %bb.n ], [ %i.dm, %bb.m ] ; 2 uses
  %.sroa.0175.2 = phi double [ %.sroa.0175.0197, %bb.f ], [ %.sroa.0175.0197, %bb.g ], [ %.sroa.0175.0197, %bb.j ], [ %.sroa.0175.0197, %bb.k ], [ %.sroa.0175.0197, %bb.l ], [ %i.dl, %bb.n ], [ %i.dl, %bb.m ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0198, %bb.f ], [ %.sroa.6.0198, %bb.g ], [ %.sroa.6.0198, %bb.j ], [ %.sroa.6.0198, %bb.k ], [ %.sroa.6.0198, %bb.l ], [ %i.ds, %bb.n ], [ %i.ds, %bb.m ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0199, %bb.f ], [ %.sroa.0.0199, %bb.g ], [ %.sroa.0.0199, %bb.j ], [ %.sroa.0.0199, %bb.k ], [ %.sroa.0.0199, %bb.l ], [ %i.dr, %bb.n ], [ %i.dr, %bb.m ] ; 2 uses
  %.6140 = phi i32 [ %.0134204, %bb.f ], [ %.0134204, %bb.g ], [ %.0134204, %bb.j ], [ %.0134204, %bb.k ], [ %.0134204, %bb.l ], [ %7, %bb.n ], [ %.0134204, %bb.m ] ; 2 uses
  %.6132 = phi i32 [ %.0126205, %bb.f ], [ %.0126205, %bb.g ], [ %.0126205, %bb.j ], [ %.0126205, %bb.k ], [ %.0126205, %bb.l ], [ %.3148, %bb.n ], [ %.0126205, %bb.m ] ; 2 uses
  %.6120 = phi double [ %.0114206, %bb.f ], [ %.0114206, %bb.g ], [ %.0114206, %bb.j ], [ %.0114206, %bb.k ], [ %.0114206, %bb.l ], [ %i.de, %bb.n ], [ %.0114206, %bb.m ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.bl, %bb.l ], [ %i.cb, %bb.n ], [ %i.bl, %bb.m ] ; 2 uses
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1
  %.not.not = icmp slt i64 %indvars.iv242, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !966

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6177.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6177.0196, %bb.h ], [ %.sroa.6177.0196, %bb.i ], [ %.sroa.6177.2, %.thread ] ; 2 uses
  %.sroa.0175.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0175.0197, %bb.h ], [ %.sroa.0175.0197, %bb.i ], [ %.sroa.0175.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0198, %bb.h ], [ %.sroa.6.0198, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0199, %bb.h ], [ %.sroa.0.0199, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0134.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0134204, %bb.h ], [ %.0134204, %bb.i ], [ %.6140, %.thread ]
  %.0126.lcssa = phi i32 [ 0, %.loopexit ], [ %.0126205, %bb.h ], [ %.0126205, %bb.i ], [ %.6132, %.thread ] ; 3 uses
  %.0114.lcssa = phi double [ -inf, %.loopexit ], [ %.0114206, %bb.h ], [ %.0114206, %bb.i ], [ %.6120, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.o, label %bb.w

bb.o:                                             ; preds = %._crit_edge
end_hunk_8
begin_hunk_9_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %.sroa.6158.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6158.0180, %bb.e ], [ %.sroa.6158.0180, %bb.d ], [ %.sroa.6158.1.ph, %bb.m ] ; 2 uses
  %.sroa.0156.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0156.0181, %bb.e ], [ %.sroa.0156.0181, %bb.d ], [ %.sroa.0156.1.ph, %bb.m ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0182, %bb.e ], [ %.sroa.6.0182, %bb.d ], [ %.sroa.6.1.ph, %bb.m ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0183, %bb.e ], [ %.sroa.0.0183, %bb.d ], [ %.sroa.0.1.ph, %bb.m ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.0129184, %bb.e ], [ %.0129184, %bb.d ], [ %.6135.ph, %bb.m ] ; 2 uses
  %.0121.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0121185, %bb.e ], [ %.0121185, %bb.d ], [ %.6127.ph, %bb.m ]
  %.0104.lcssa = phi double [ -inf, %bb.a ], [ %.0104190, %bb.e ], [ %.0104190, %bb.d ], [ %.6110.ph, %bb.m ] ; 2 uses
  %.096.lcssa = phi double [ +qnan, %bb.a ], [ %.096191, %bb.e ], [ %.096191, %bb.d ], [ %.6102.ph, %bb.m ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0192, %bb.e ], [ %.0192, %bb.d ], [ %.6.ph, %bb.m ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.n, label %bb.v

bb.n:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0104.lcssa, %i.co
  br i1 %i.cp, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378 ; 5 uses
  %i.da = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.db = fsub double %i.da, %i.cv                ; 2 uses
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dc, double %i.db, double 0.000000e+00
  %i.dd = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.de = zext i1 %i.dd to i32
  %i.df = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.df to i32
  %i.dg = add nsw i32 %.neg.i.i.i.i, %i.de
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fneg double %i.dh
  %i.dj = fmul double %.sroa.speculated.i.i.i, %i.di
  %i.dk = fadd double %.096.lcssa, %i.cx
  %i.dl = fdiv double %i.dj, %i.dk                ; 4 uses
  %i.dm = fcmp ogt double %i.cz, 0.000000e+00     ; 2 uses
  %i.dn = tail call double @llvm.fabs.f64(double %i.dl)
  %i.do = fcmp ogt double %i.dn, %i.cz
  %or.cond.i.i = and i1 %i.dm, %i.do
  br i1 %or.cond.i.i, label %bb.p, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i

bb.p:                                             ; preds = %bb.o
  %i.dp = fcmp ogt double %i.dl, 0.000000e+00
  %i.dq = zext i1 %i.dp to i32
  %i.dr = fcmp olt double %i.dl, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.dr to i32
  %i.ds = add nsw i32 %.neg.i.i.i, %i.dq
  %i.dt = sitofp i32 %i.ds to double
  %i.du = fmul double %i.cz, %i.dt
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i = phi double [ %i.du, %bb.p ], [ %i.dl, %bb.o ] ; 3 uses
  %i.dv = fcmp olt double %.0.i.i, %.sroa.0.0.lcssa
  br i1 %i.dv, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i
  %i.dw = fcmp ogt double %.0.i.i, %.sroa.6.0.lcssa
  br i1 %i.dw, label %bb.r, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.r:                                             ; preds = %bb.q
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i, %bb.q, %bb.r
  %.0.i = phi double [ %.0.i.i, %bb.q ], [ %.sroa.6.0.lcssa, %bb.r ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.dx, align 8, !tbaa !410
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.dy, align 8, !tbaa !334
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.dz, align 8, !tbaa !407
  %i.ea = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ea, ptr %i.eb, align 8, !tbaa !408
  %i.ec = fsub double %1, %.0.lcssa               ; 4 uses
  %i.ed = fsub double %2, %.096.lcssa             ; 2 uses
  %i.ee = sub nsw i32 %3, %.0129.lcssa
  %i.ef = tail call double @llvm.fabs.f64(double %i.ec)
  %i.eg = fsub double %i.ef, %i.cv                ; 2 uses
  %i.eh = fcmp ogt double %i.eg, 0.000000e+00
  %.sroa.speculated.i.i.i147 = select i1 %i.eh, double %i.eg, double 0.000000e+00
  %i.ei = fcmp ogt double %i.ec, 0.000000e+00
  %i.ej = zext i1 %i.ei to i32
  %i.ek = fcmp olt double %i.ec, 0.000000e+00
  %.neg.i.i.i.i148 = sext i1 %i.ek to i32
  %i.el = add nsw i32 %.neg.i.i.i.i148, %i.ej
  %i.em = sitofp i32 %i.el to double
  %i.en = fneg double %i.em
  %i.eo = fmul double %.sroa.speculated.i.i.i147, %i.en
  %i.ep = fadd double %i.ed, %i.cx
  %i.eq = fdiv double %i.eo, %i.ep                ; 4 uses
  %i.er = tail call double @llvm.fabs.f64(double %i.eq)
  %i.es = fcmp ogt double %i.er, %i.cz
  %or.cond.i.i149 = and i1 %i.dm, %i.es
  br i1 %or.cond.i.i149, label %bb.s, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i150

bb.s:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.et = fcmp ogt double %i.eq, 0.000000e+00
  %i.eu = zext i1 %i.et to i32
  %i.ev = fcmp olt double %i.eq, 0.000000e+00
  %.neg.i.i.i153 = sext i1 %i.ev to i32
  %i.ew = add nsw i32 %.neg.i.i.i153, %i.eu
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fmul double %i.cz, %i.ex
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i150

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i150: ; preds = %bb.s, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i151 = phi double [ %i.ey, %bb.s ], [ %i.eq, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ] ; 3 uses
  %i.ez = fcmp olt double %.0.i.i151, %.sroa.0156.0.lcssa
  br i1 %i.ez, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154, label %bb.t

bb.t:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i150
  %i.fa = fcmp ogt double %.0.i.i151, %.sroa.6158.0.lcssa
  br i1 %i.fa, label %bb.u, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154

bb.u:                                             ; preds = %bb.t
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i150, %bb.t, %bb.u
  %.0.i152 = phi double [ %.0.i.i151, %bb.t ], [ %.sroa.6158.0.lcssa, %bb.u ], [ %.sroa.0156.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i150 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i152, ptr %i.fb, align 8, !tbaa !411
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ee, ptr %i.fc, align 4, !tbaa !335
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ec, ptr %i.fd, align 8, !tbaa !412
  %i.fe = fadd double %i.ed, f0xBCD203AFA0000000
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fe, ptr %i.ff, align 8, !tbaa !413
  %i.fg = fsub double %.0104.lcssa, %5
  store double %i.fg, ptr %i.cm, align 8, !tbaa !312
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fh, align 8, !tbaa !313
  br label %bb.v

bb.v:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154, %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145191 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145191, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1008

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145191.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod263 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145191.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not195 = icmp sgt i32 %.0143, %i.p
  br i1 %.not195, label %._crit_edge, label %.lr.ph209

.lr.ph209:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph209, %.thread
  %indvars.iv242 = phi i64 [ %i.bj, %.lr.ph209 ], [ %indvars.iv.next243, %.thread ] ; 5 uses
  %.0114206 = phi double [ -inf, %.lr.ph209 ], [ %.6120, %.thread ] ; 9 uses
  %.0126205 = phi i32 [ 0, %.lr.ph209 ], [ %.6132, %.thread ] ; 8 uses
  %.0134204 = phi i32 [ %i.d, %.lr.ph209 ], [ %.6140, %.thread ] ; 8 uses
  %.2147202 = phi i32 [ %.1146, %.lr.ph209 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0199 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0198 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0175.0197 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.0175.2, %.thread ] ; 7 uses
  %.sroa.6177.0196 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.6177.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph209 ], [ %i.dv, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph209 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv242, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv242 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147202, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147202, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv242 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ct = fsub double %1, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.db = load i8, ptr %i.da, align 8, !tbaa !384
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !375
  %i.de = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cs, double noundef %i.ck, double noundef %i.ct, double noundef %i.co, double noundef %i.cv, double noundef %i.cx, double noundef %i.cz, ptr noundef nonnull %4, i8 noundef signext %i.db, double noundef %i.dd, i32 noundef %.3148, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.df = fcmp ugt double %i.de, %5
  br i1 %i.df, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.dg = fcmp ogt double %i.de, %.0114206
  br i1 %i.dg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %4, align 8, !tbaa !282
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call { double, double } %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dl = extractvalue { double, double } %i.dk, 0 ; 3 uses
  %i.dm = extractvalue { double, double } %i.dk, 1 ; 3 uses
  %i.dn = load ptr, ptr %4, align 8, !tbaa !282
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call { double, double } %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dr = extractvalue { double, double } %i.dq, 0 ; 3 uses
  %i.ds = extractvalue { double, double } %i.dq, 1 ; 3 uses
  %i.dt = fcmp ogt double %i.dl, %i.dm
  %i.du = fcmp ogt double %i.dr, %i.ds
  %or.cond = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l, %bb.k, %bb.m, %bb.j, %bb.f, %bb.g
  %.sroa.6177.2 = phi double [ %.sroa.6177.0196, %bb.f ], [ %.sroa.6177.0196, %bb.g ], [ %.sroa.6177.0196, %bb.j ], [ %.sroa.6177.0196, %bb.k ], [ %.sroa.6177.0196, %bb.l ], [ %i.dm, %bb.n ], [ %i.dm, %bb.m ] ; 2 uses
  %.sroa.0175.2 = phi double [ %.sroa.0175.0197, %bb.f ], [ %.sroa.0175.0197, %bb.g ], [ %.sroa.0175.0197, %bb.j ], [ %.sroa.0175.0197, %bb.k ], [ %.sroa.0175.0197, %bb.l ], [ %i.dl, %bb.n ], [ %i.dl, %bb.m ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0198, %bb.f ], [ %.sroa.6.0198, %bb.g ], [ %.sroa.6.0198, %bb.j ], [ %.sroa.6.0198, %bb.k ], [ %.sroa.6.0198, %bb.l ], [ %i.ds, %bb.n ], [ %i.ds, %bb.m ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0199, %bb.f ], [ %.sroa.0.0199, %bb.g ], [ %.sroa.0.0199, %bb.j ], [ %.sroa.0.0199, %bb.k ], [ %.sroa.0.0199, %bb.l ], [ %i.dr, %bb.n ], [ %i.dr, %bb.m ] ; 2 uses
  %.6140 = phi i32 [ %.0134204, %bb.f ], [ %.0134204, %bb.g ], [ %.0134204, %bb.j ], [ %.0134204, %bb.k ], [ %.0134204, %bb.l ], [ %7, %bb.n ], [ %.0134204, %bb.m ] ; 2 uses
  %.6132 = phi i32 [ %.0126205, %bb.f ], [ %.0126205, %bb.g ], [ %.0126205, %bb.j ], [ %.0126205, %bb.k ], [ %.0126205, %bb.l ], [ %.3148, %bb.n ], [ %.0126205, %bb.m ] ; 2 uses
  %.6120 = phi double [ %.0114206, %bb.f ], [ %.0114206, %bb.g ], [ %.0114206, %bb.j ], [ %.0114206, %bb.k ], [ %.0114206, %bb.l ], [ %i.de, %bb.n ], [ %.0114206, %bb.m ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.bl, %bb.l ], [ %i.cb, %bb.n ], [ %i.bl, %bb.m ] ; 2 uses
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1
  %.not.not = icmp slt i64 %indvars.iv242, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1009

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6177.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6177.0196, %bb.h ], [ %.sroa.6177.0196, %bb.i ], [ %.sroa.6177.2, %.thread ] ; 2 uses
  %.sroa.0175.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0175.0197, %bb.h ], [ %.sroa.0175.0197, %bb.i ], [ %.sroa.0175.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0198, %bb.h ], [ %.sroa.6.0198, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0199, %bb.h ], [ %.sroa.0.0199, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0134.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0134204, %bb.h ], [ %.0134204, %bb.i ], [ %.6140, %.thread ]
  %.0126.lcssa = phi i32 [ 0, %.loopexit ], [ %.0126205, %bb.h ], [ %.0126205, %bb.i ], [ %.6132, %.thread ] ; 2 uses
  %.0114.lcssa = phi double [ -inf, %.loopexit ], [ %.0114206, %bb.h ], [ %.0114206, %bb.i ], [ %.6120, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.o, label %bb.w

bb.o:                                             ; preds = %._crit_edge
end_hunk_9
begin_hunk_10_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %or.cond = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.k, %bb.i, %bb.j, %bb.l
  %.sroa.6154.1.ph = phi double [ %.sroa.6154.0176, %bb.f ], [ %.sroa.6154.0176, %bb.i ], [ %.sroa.6154.0176, %bb.j ], [ %i.ca, %bb.l ], [ %i.ca, %bb.k ], [ %.sroa.6154.0176, %bb.c ], [ %.sroa.6154.0176, %bb.b ] ; 2 uses
  %.sroa.0152.1.ph = phi double [ %.sroa.0152.0177, %bb.f ], [ %.sroa.0152.0177, %bb.i ], [ %.sroa.0152.0177, %bb.j ], [ %i.bz, %bb.l ], [ %i.bz, %bb.k ], [ %.sroa.0152.0177, %bb.c ], [ %.sroa.0152.0177, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0178, %bb.f ], [ %.sroa.6.0178, %bb.i ], [ %.sroa.6.0178, %bb.j ], [ %i.cg, %bb.l ], [ %i.cg, %bb.k ], [ %.sroa.6.0178, %bb.c ], [ %.sroa.6.0178, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0179, %bb.f ], [ %.sroa.0.0179, %bb.i ], [ %.sroa.0.0179, %bb.j ], [ %i.cf, %bb.l ], [ %i.cf, %bb.k ], [ %.sroa.0.0179, %bb.c ], [ %.sroa.0.0179, %bb.b ] ; 2 uses
  %.6135.ph = phi i32 [ %.0129180, %bb.f ], [ %.0129180, %bb.i ], [ %.0129180, %bb.j ], [ %i.au, %bb.l ], [ %.0129180, %bb.k ], [ %.0129180, %bb.c ], [ %.0129180, %bb.b ] ; 2 uses
  %.6127.ph = phi i32 [ %.0121181, %bb.f ], [ %.0121181, %bb.i ], [ %.0121181, %bb.j ], [ %7, %bb.l ], [ %.0121181, %bb.k ], [ %.0121181, %bb.c ], [ %.0121181, %bb.b ] ; 2 uses
  %.6110.ph = phi double [ %.0104186, %bb.f ], [ %.0104186, %bb.i ], [ %.0104186, %bb.j ], [ %i.bs, %bb.l ], [ %.0104186, %bb.k ], [ %.0104186, %bb.c ], [ %.0104186, %bb.b ] ; 2 uses
  %.6102.ph = phi double [ %.096187, %bb.f ], [ %.096187, %bb.i ], [ %.096187, %bb.j ], [ %i.aw, %bb.l ], [ %.096187, %bb.k ], [ %.096187, %bb.c ], [ %.096187, %bb.b ] ; 2 uses
  %.6.ph = phi double [ %.0188, %bb.f ], [ %.0188, %bb.i ], [ %.0188, %bb.j ], [ %i.az, %bb.l ], [ %.0188, %bb.k ], [ %.0188, %bb.c ], [ %.0188, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1050

._crit_edge:                                      ; preds = %bb.m, %bb.d, %bb.e, %bb.a
  %.sroa.6154.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6154.0176, %bb.e ], [ %.sroa.6154.0176, %bb.d ], [ %.sroa.6154.1.ph, %bb.m ] ; 2 uses
  %.sroa.0152.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0152.0177, %bb.e ], [ %.sroa.0152.0177, %bb.d ], [ %.sroa.0152.1.ph, %bb.m ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0178, %bb.e ], [ %.sroa.6.0178, %bb.d ], [ %.sroa.6.1.ph, %bb.m ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0179, %bb.e ], [ %.sroa.0.0179, %bb.d ], [ %.sroa.0.1.ph, %bb.m ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.0129180, %bb.e ], [ %.0129180, %bb.d ], [ %.6135.ph, %bb.m ] ; 3 uses
  %.0121.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0121181, %bb.e ], [ %.0121181, %bb.d ], [ %.6127.ph, %bb.m ]
  %.0104.lcssa = phi double [ -inf, %bb.a ], [ %.0104186, %bb.e ], [ %.0104186, %bb.d ], [ %.6110.ph, %bb.m ] ; 2 uses
  %.096.lcssa = phi double [ +qnan, %bb.a ], [ %.096187, %bb.e ], [ %.096187, %bb.d ], [ %.6102.ph, %bb.m ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0188, %bb.e ], [ %.0188, %bb.d ], [ %.6.ph, %bb.m ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.n, label %bb.t

bb.n:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0104.lcssa, %i.co
  br i1 %i.cp, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !375 ; 2 uses
  %i.da = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.db = fsub double %i.da, %i.cv                ; 2 uses
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dc, double %i.db, double 0.000000e+00
  %i.dd = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.de = zext i1 %i.dd to i32
  %i.df = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.df to i32
  %i.dg = add nsw i32 %.neg.i.i.i.i, %i.de
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fneg double %i.dh
  %i.dj = fmul double %.sroa.speculated.i.i.i, %i.di
  %i.dk = fadd double %.096.lcssa, %i.cx
  %i.dl = fdiv double %i.dj, %i.dk
  %i.dm = sitofp i32 %.0129.lcssa to double
  %i.dn = fdiv double %i.dm, %i.cz                ; 2 uses
  %i.do = fmul double %i.dn, %i.dl
  %i.dp = fadd double %i.dn, 1.000000e+00         ; 2 uses
  %i.dq = fdiv double %i.do, %i.dp
  %i.dr = fdiv double %8, %i.dp
  %i.ds = fadd double %i.dr, %i.dq                ; 3 uses
  %i.dt = fcmp olt double %i.ds, %.sroa.0.0.lcssa
  br i1 %i.dt, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = fcmp ogt double %i.ds, %.sroa.6.0.lcssa
  br i1 %i.du, label %bb.q, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.q:                                             ; preds = %bb.p
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.0.i = phi double [ %i.ds, %bb.p ], [ %.sroa.6.0.lcssa, %bb.q ], [ %.sroa.0.0.lcssa, %bb.o ]
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.dv, align 8, !tbaa !410
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.dw, align 8, !tbaa !334
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.dx, align 8, !tbaa !407
  %i.dy = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dy, ptr %i.dz, align 8, !tbaa !408
  %i.ea = fsub double %1, %.0.lcssa               ; 4 uses
  %i.eb = fsub double %2, %.096.lcssa             ; 2 uses
  %i.ec = sub nsw i32 %3, %.0129.lcssa            ; 2 uses
  %i.ed = tail call double @llvm.fabs.f64(double %i.ea)
  %i.ee = fsub double %i.ed, %i.cv                ; 2 uses
  %i.ef = fcmp ogt double %i.ee, 0.000000e+00
  %.sroa.speculated.i.i.i147 = select i1 %i.ef, double %i.ee, double 0.000000e+00
  %i.eg = fcmp ogt double %i.ea, 0.000000e+00
  %i.eh = zext i1 %i.eg to i32
  %i.ei = fcmp olt double %i.ea, 0.000000e+00
  %.neg.i.i.i.i148 = sext i1 %i.ei to i32
  %i.ej = add nsw i32 %.neg.i.i.i.i148, %i.eh
  %i.ek = sitofp i32 %i.ej to double
  %i.el = fneg double %i.ek
  %i.em = fmul double %.sroa.speculated.i.i.i147, %i.el
  %i.en = fadd double %i.eb, %i.cx
  %i.eo = fdiv double %i.em, %i.en
  %i.ep = sitofp i32 %i.ec to double
  %i.eq = fdiv double %i.ep, %i.cz                ; 2 uses
  %i.er = fmul double %i.eq, %i.eo
  %i.es = fadd double %i.eq, 1.000000e+00         ; 2 uses
  %i.et = fdiv double %i.er, %i.es
  %i.eu = fdiv double %8, %i.es
  %i.ev = fadd double %i.eu, %i.et                ; 3 uses
  %i.ew = fcmp olt double %i.ev, %.sroa.0152.0.lcssa
  br i1 %i.ew, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit150, label %bb.r

bb.r:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ex = fcmp ogt double %i.ev, %.sroa.6154.0.lcssa
  br i1 %i.ex, label %bb.s, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit150

bb.s:                                             ; preds = %bb.r
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit150

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit150: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.r, %bb.s
  %.0.i149 = phi double [ %i.ev, %bb.r ], [ %.sroa.6154.0.lcssa, %bb.s ], [ %.sroa.0152.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i149, ptr %i.ey, align 8, !tbaa !411
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ec, ptr %i.ez, align 4, !tbaa !335
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ea, ptr %i.fa, align 8, !tbaa !412
  %i.fb = fadd double %i.eb, f0xBCD203AFA0000000
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fb, ptr %i.fc, align 8, !tbaa !413
  %i.fd = fsub double %.0104.lcssa, %5
  store double %i.fd, ptr %i.cm, align 8, !tbaa !312
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fe, align 8, !tbaa !313
  br label %bb.t

bb.t:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit150, %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145187 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145187, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1051

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145187.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod260 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145187.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not191 = icmp sgt i32 %.0143, %i.p
  br i1 %.not191, label %._crit_edge, label %.lr.ph205

.lr.ph205:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph205, %.thread
  %indvars.iv238 = phi i64 [ %i.bj, %.lr.ph205 ], [ %indvars.iv.next239, %.thread ] ; 5 uses
  %.0114202 = phi double [ -inf, %.lr.ph205 ], [ %.6120, %.thread ] ; 9 uses
  %.0126201 = phi i32 [ 0, %.lr.ph205 ], [ %.6132, %.thread ] ; 8 uses
  %.0134200 = phi i32 [ %i.d, %.lr.ph205 ], [ %.6140, %.thread ] ; 8 uses
  %.2147198 = phi i32 [ %.1146, %.lr.ph205 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0195 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph205 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0194 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph205 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0171.0193 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph205 ], [ %.sroa.0171.2, %.thread ] ; 7 uses
  %.sroa.6173.0192 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph205 ], [ %.sroa.6173.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph205 ], [ %i.dv, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph205 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv238, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv238 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147198, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147198, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv238 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ct = fsub double %1, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.db = load i8, ptr %i.da, align 8, !tbaa !384
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !375
  %i.de = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cs, double noundef %i.ck, double noundef %i.ct, double noundef %i.co, double noundef %i.cv, double noundef %i.cx, double noundef %i.cz, ptr noundef nonnull %4, i8 noundef signext %i.db, double noundef %i.dd, i32 noundef %.3148, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.df = fcmp ugt double %i.de, %5
  br i1 %i.df, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.dg = fcmp ogt double %i.de, %.0114202
  br i1 %i.dg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %4, align 8, !tbaa !282
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call { double, double } %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dl = extractvalue { double, double } %i.dk, 0 ; 3 uses
  %i.dm = extractvalue { double, double } %i.dk, 1 ; 3 uses
  %i.dn = load ptr, ptr %4, align 8, !tbaa !282
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call { double, double } %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dr = extractvalue { double, double } %i.dq, 0 ; 3 uses
  %i.ds = extractvalue { double, double } %i.dq, 1 ; 3 uses
  %i.dt = fcmp ogt double %i.dl, %i.dm
  %i.du = fcmp ogt double %i.dr, %i.ds
  %or.cond = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l, %bb.k, %bb.m, %bb.j, %bb.f, %bb.g
  %.sroa.6173.2 = phi double [ %.sroa.6173.0192, %bb.f ], [ %.sroa.6173.0192, %bb.g ], [ %.sroa.6173.0192, %bb.j ], [ %.sroa.6173.0192, %bb.k ], [ %.sroa.6173.0192, %bb.l ], [ %i.dm, %bb.n ], [ %i.dm, %bb.m ] ; 2 uses
  %.sroa.0171.2 = phi double [ %.sroa.0171.0193, %bb.f ], [ %.sroa.0171.0193, %bb.g ], [ %.sroa.0171.0193, %bb.j ], [ %.sroa.0171.0193, %bb.k ], [ %.sroa.0171.0193, %bb.l ], [ %i.dl, %bb.n ], [ %i.dl, %bb.m ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0194, %bb.f ], [ %.sroa.6.0194, %bb.g ], [ %.sroa.6.0194, %bb.j ], [ %.sroa.6.0194, %bb.k ], [ %.sroa.6.0194, %bb.l ], [ %i.ds, %bb.n ], [ %i.ds, %bb.m ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0195, %bb.f ], [ %.sroa.0.0195, %bb.g ], [ %.sroa.0.0195, %bb.j ], [ %.sroa.0.0195, %bb.k ], [ %.sroa.0.0195, %bb.l ], [ %i.dr, %bb.n ], [ %i.dr, %bb.m ] ; 2 uses
  %.6140 = phi i32 [ %.0134200, %bb.f ], [ %.0134200, %bb.g ], [ %.0134200, %bb.j ], [ %.0134200, %bb.k ], [ %.0134200, %bb.l ], [ %7, %bb.n ], [ %.0134200, %bb.m ] ; 2 uses
  %.6132 = phi i32 [ %.0126201, %bb.f ], [ %.0126201, %bb.g ], [ %.0126201, %bb.j ], [ %.0126201, %bb.k ], [ %.0126201, %bb.l ], [ %.3148, %bb.n ], [ %.0126201, %bb.m ] ; 2 uses
  %.6120 = phi double [ %.0114202, %bb.f ], [ %.0114202, %bb.g ], [ %.0114202, %bb.j ], [ %.0114202, %bb.k ], [ %.0114202, %bb.l ], [ %i.de, %bb.n ], [ %.0114202, %bb.m ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.bl, %bb.l ], [ %i.cb, %bb.n ], [ %i.bl, %bb.m ] ; 2 uses
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, 1
  %.not.not = icmp slt i64 %indvars.iv238, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1052

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6173.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6173.0192, %bb.h ], [ %.sroa.6173.0192, %bb.i ], [ %.sroa.6173.2, %.thread ] ; 2 uses
  %.sroa.0171.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0171.0193, %bb.h ], [ %.sroa.0171.0193, %bb.i ], [ %.sroa.0171.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0194, %bb.h ], [ %.sroa.6.0194, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0195, %bb.h ], [ %.sroa.0.0195, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0134.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0134200, %bb.h ], [ %.0134200, %bb.i ], [ %.6140, %.thread ]
  %.0126.lcssa = phi i32 [ 0, %.loopexit ], [ %.0126201, %bb.h ], [ %.0126201, %bb.i ], [ %.6132, %.thread ] ; 3 uses
  %.0114.lcssa = phi double [ -inf, %.loopexit ], [ %.0114202, %bb.h ], [ %.0114202, %bb.i ], [ %.6120, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.o, label %bb.u

bb.o:                                             ; preds = %._crit_edge
end_hunk_10
begin_hunk_11_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a

bb.q:                                             ; preds = %bb.p
  %i.dz = load ptr, ptr %4, align 8, !tbaa !282
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call { double, double } %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.ed = extractvalue { double, double } %i.ec, 0 ; 3 uses
  %i.ee = extractvalue { double, double } %i.ec, 1 ; 3 uses
  %i.ef = load ptr, ptr %4, align 8, !tbaa !282
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call { double, double } %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.ej = extractvalue { double, double } %i.ei, 0 ; 3 uses
  %i.ek = extractvalue { double, double } %i.ei, 1 ; 3 uses
  %i.el = fcmp ogt double %i.ed, %i.ee
  %i.em = fcmp ogt double %i.ej, %i.ek
  %or.cond = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.q, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.p, %bb.r
  %.sroa.6155.1.ph = phi double [ %.sroa.6155.0177, %bb.f ], [ %.sroa.6155.0177, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6155.0177, %bb.p ], [ %i.ee, %bb.r ], [ %i.ee, %bb.q ], [ %.sroa.6155.0177, %bb.c ], [ %.sroa.6155.0177, %bb.b ] ; 2 uses
  %.sroa.0153.1.ph = phi double [ %.sroa.0153.0178, %bb.f ], [ %.sroa.0153.0178, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0153.0178, %bb.p ], [ %i.ed, %bb.r ], [ %i.ed, %bb.q ], [ %.sroa.0153.0178, %bb.c ], [ %.sroa.0153.0178, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0179, %bb.f ], [ %.sroa.6.0179, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0179, %bb.p ], [ %i.ek, %bb.r ], [ %i.ek, %bb.q ], [ %.sroa.6.0179, %bb.c ], [ %.sroa.6.0179, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0180, %bb.f ], [ %.sroa.0.0180, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0180, %bb.p ], [ %i.ej, %bb.r ], [ %i.ej, %bb.q ], [ %.sroa.0.0180, %bb.c ], [ %.sroa.0.0180, %bb.b ] ; 2 uses
  %.6135.ph = phi i32 [ %.0129181, %bb.f ], [ %.0129181, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0129181, %bb.p ], [ %i.au, %bb.r ], [ %.0129181, %bb.q ], [ %.0129181, %bb.c ], [ %.0129181, %bb.b ] ; 2 uses
  %.6127.ph = phi i32 [ %.0121182, %bb.f ], [ %.0121182, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0121182, %bb.p ], [ %7, %bb.r ], [ %.0121182, %bb.q ], [ %.0121182, %bb.c ], [ %.0121182, %bb.b ] ; 2 uses
  %.6110.ph = phi double [ %.0104187, %bb.f ], [ %.0104187, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0104187, %bb.p ], [ %.0.i, %bb.r ], [ %.0104187, %bb.q ], [ %.0104187, %bb.c ], [ %.0104187, %bb.b ] ; 2 uses
  %.6102.ph = phi double [ %.096188, %bb.f ], [ %.096188, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.096188, %bb.p ], [ %i.aw, %bb.r ], [ %.096188, %bb.q ], [ %.096188, %bb.c ], [ %.096188, %bb.b ] ; 2 uses
  %.6.ph = phi double [ %.0189, %bb.f ], [ %.0189, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0189, %bb.p ], [ %i.az, %bb.r ], [ %.0189, %bb.q ], [ %.0189, %bb.c ], [ %.0189, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1093

._crit_edge:                                      ; preds = %bb.s, %bb.d, %bb.e, %bb.a
  %.sroa.6155.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6155.0177, %bb.e ], [ %.sroa.6155.0177, %bb.d ], [ %.sroa.6155.1.ph, %bb.s ] ; 2 uses
  %.sroa.0153.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0153.0178, %bb.e ], [ %.sroa.0153.0178, %bb.d ], [ %.sroa.0153.1.ph, %bb.s ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0179, %bb.e ], [ %.sroa.6.0179, %bb.d ], [ %.sroa.6.1.ph, %bb.s ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0180, %bb.e ], [ %.sroa.0.0180, %bb.d ], [ %.sroa.0.1.ph, %bb.s ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.0129181, %bb.e ], [ %.0129181, %bb.d ], [ %.6135.ph, %bb.s ] ; 2 uses
  %.0121.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0121182, %bb.e ], [ %.0121182, %bb.d ], [ %.6127.ph, %bb.s ]
  %.0104.lcssa = phi double [ -inf, %bb.a ], [ %.0104187, %bb.e ], [ %.0104187, %bb.d ], [ %.6110.ph, %bb.s ] ; 2 uses
  %.096.lcssa = phi double [ +qnan, %bb.a ], [ %.096188, %bb.e ], [ %.096188, %bb.d ], [ %.6102.ph, %bb.s ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0189, %bb.e ], [ %.0189, %bb.d ], [ %.6.ph, %bb.s ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !242, !range !231, !noundef !232
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.t, label %bb.z

bb.t:                                             ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !312
  %i.es = fadd double %5, %i.er
  %i.et = fcmp ogt double %.0104.lcssa, %i.es
  br i1 %i.et, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.eu, align 4, !tbaa !406
  %i.ev = load ptr, ptr %0, align 8, !tbaa !273
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !277 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 416
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !377 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 424
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !401 ; 2 uses
  %i.fc = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.fd = fsub double %i.fc, %i.ez                ; 2 uses
  %i.fe = fcmp ogt double %i.fd, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.fe, double %i.fd, double 0.000000e+00
  %i.ff = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.fg = zext i1 %i.ff to i32
  %i.fh = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.fh to i32
  %i.fi = add nsw i32 %.neg.i.i.i.i, %i.fg
  %i.fj = sitofp i32 %i.fi to double
  %i.fk = fneg double %i.fj
  %i.fl = fmul double %.sroa.speculated.i.i.i, %i.fk
  %i.fm = fadd double %.096.lcssa, %i.fb
  %i.fn = fdiv double %i.fl, %i.fm                ; 3 uses
  %i.fo = fcmp olt double %i.fn, %.sroa.0.0.lcssa
  br i1 %i.fo, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = fcmp ogt double %i.fn, %.sroa.6.0.lcssa
  br i1 %i.fp, label %bb.w, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.w:                                             ; preds = %bb.v
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.u, %bb.v, %bb.w
  %.0.i147 = phi double [ %i.fn, %bb.v ], [ %.sroa.6.0.lcssa, %bb.w ], [ %.sroa.0.0.lcssa, %bb.u ]
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i147, ptr %i.fq, align 8, !tbaa !410
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.fr, align 8, !tbaa !334
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.fs, align 8, !tbaa !407
  %i.ft = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ft, ptr %i.fu, align 8, !tbaa !408
  %i.fv = fsub double %1, %.0.lcssa               ; 4 uses
  %i.fw = fsub double %2, %.096.lcssa             ; 2 uses
  %i.fx = sub nsw i32 %3, %.0129.lcssa
  %i.fy = tail call double @llvm.fabs.f64(double %i.fv)
  %i.fz = fsub double %i.fy, %i.ez                ; 2 uses
  %i.ga = fcmp ogt double %i.fz, 0.000000e+00
  %.sroa.speculated.i.i.i148 = select i1 %i.ga, double %i.fz, double 0.000000e+00
  %i.gb = fcmp ogt double %i.fv, 0.000000e+00
  %i.gc = zext i1 %i.gb to i32
  %i.gd = fcmp olt double %i.fv, 0.000000e+00
  %.neg.i.i.i.i149 = sext i1 %i.gd to i32
  %i.ge = add nsw i32 %.neg.i.i.i.i149, %i.gc
  %i.gf = sitofp i32 %i.ge to double
  %i.gg = fneg double %i.gf
  %i.gh = fmul double %.sroa.speculated.i.i.i148, %i.gg
  %i.gi = fadd double %i.fw, %i.fb
  %i.gj = fdiv double %i.gh, %i.gi                ; 3 uses
  %i.gk = fcmp olt double %i.gj, %.sroa.0153.0.lcssa
  br i1 %i.gk, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit151, label %bb.x

bb.x:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.gl = fcmp ogt double %i.gj, %.sroa.6155.0.lcssa
  br i1 %i.gl, label %bb.y, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit151

bb.y:                                             ; preds = %bb.x
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit151

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit151: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.x, %bb.y
  %.0.i150 = phi double [ %i.gj, %bb.x ], [ %.sroa.6155.0.lcssa, %bb.y ], [ %.sroa.0153.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i150, ptr %i.gm, align 8, !tbaa !411
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.fx, ptr %i.gn, align 4, !tbaa !335
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.fv, ptr %i.go, align 8, !tbaa !412
  %i.gp = fadd double %i.fw, f0xBCD203AFA0000000
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.gp, ptr %i.gq, align 8, !tbaa !413
  %i.gr = fsub double %.0104.lcssa, %5
  store double %i.gr, ptr %i.eq, align 8, !tbaa !312
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.gs, align 8, !tbaa !313
  br label %bb.z

bb.z:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit151, %bb.t, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb1ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145188 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145188, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1094

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145188.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod265 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod265)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145188.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not192 = icmp sgt i32 %.0143, %i.p
  br i1 %.not192, label %._crit_edge, label %.lr.ph206

.lr.ph206:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph206, %.thread
  %indvars.iv239 = phi i64 [ %i.bj, %.lr.ph206 ], [ %indvars.iv.next240, %.thread ] ; 5 uses
  %.0114203 = phi double [ -inf, %.lr.ph206 ], [ %.6120, %.thread ] ; 9 uses
  %.0126202 = phi i32 [ 0, %.lr.ph206 ], [ %.6132, %.thread ] ; 8 uses
  %.0134201 = phi i32 [ %i.d, %.lr.ph206 ], [ %.6140, %.thread ] ; 8 uses
  %.2147199 = phi i32 [ %.1146, %.lr.ph206 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0196 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph206 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0195 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph206 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0172.0194 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph206 ], [ %.sroa.0172.2, %.thread ] ; 7 uses
  %.sroa.6174.0193 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph206 ], [ %.sroa.6174.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph206 ], [ %i.fz, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph206 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv239, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv239 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147199, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147199, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv239 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 4 uses
  %i.ct = fsub double %1, %i.cs                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !384 ; 2 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !282
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call { double, double } %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !8 ; 2 uses
  %i.de = extractvalue { double, double } %i.dd, 0 ; 2 uses
  %i.df = extractvalue { double, double } %i.dd, 1 ; 2 uses
  %i.dg = tail call double @llvm.fabs.f64(double %i.cs)
  %i.dh = fsub double %i.dg, %i.cv                ; 2 uses
  %i.di = fcmp ogt double %i.dh, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.di, double %i.dh, double 0.000000e+00 ; 2 uses
  %i.dj = fcmp ogt double %i.cs, 0.000000e+00
  %i.dk = zext i1 %i.dj to i32
  %i.dl = fcmp olt double %i.cs, 0.000000e+00
  %.neg.i.i.i.i.i = sext i1 %i.dl to i32
  %i.dm = add nsw i32 %.neg.i.i.i.i.i, %i.dk
  %i.dn = sitofp i32 %i.dm to double              ; 2 uses
  %i.do = fneg double %i.dn
  %i.dp = fmul double %.sroa.speculated.i.i.i.i, %i.do
  %i.dq = fadd double %i.ck, %i.cx                ; 2 uses
  %i.dr = fdiv double %i.dp, %i.dq                ; 3 uses
  %i.ds = fcmp olt double %i.dr, %i.de
  br i1 %i.ds, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = fcmp ogt double %i.dr, %i.df
  br i1 %i.dt, label %bb.m, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.m:                                             ; preds = %bb.l
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.i = phi double [ %i.dr, %bb.l ], [ %i.df, %bb.m ], [ %i.de, %bb.k ] ; 3 uses
  %i.du = load ptr, ptr %4, align 8, !tbaa !282
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call { double, double } %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !8 ; 2 uses
  %i.dy = extractvalue { double, double } %i.dx, 0 ; 2 uses
  %i.dz = extractvalue { double, double } %i.dx, 1 ; 2 uses
  %i.ea = tail call double @llvm.fabs.f64(double %i.ct)
  %i.eb = fsub double %i.ea, %i.cv                ; 2 uses
  %i.ec = fcmp ogt double %i.eb, 0.000000e+00
  %.sroa.speculated.i.i.i35.i = select i1 %i.ec, double %i.eb, double 0.000000e+00 ; 2 uses
  %i.ed = fcmp ogt double %i.ct, 0.000000e+00
  %i.ee = zext i1 %i.ed to i32
  %i.ef = fcmp olt double %i.ct, 0.000000e+00
  %.neg.i.i.i.i36.i = sext i1 %i.ef to i32
  %i.eg = add nsw i32 %.neg.i.i.i.i36.i, %i.ee
  %i.eh = sitofp i32 %i.eg to double              ; 2 uses
  %i.ei = fneg double %i.eh
  %i.ej = fmul double %.sroa.speculated.i.i.i35.i, %i.ei
  %i.ek = fadd double %i.co, %i.cx                ; 2 uses
  %i.el = fdiv double %i.ej, %i.ek                ; 3 uses
  %i.em = fcmp olt double %i.el, %i.dy
  br i1 %i.em, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit38.i, label %bb.n

bb.n:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.en = fcmp ogt double %i.el, %i.dz
  br i1 %i.en, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit38.i

bb.o:                                             ; preds = %bb.n
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit38.i

end_hunk_11
begin_hunk_12_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %.6110.ph = phi double [ %.0104188, %bb.f ], [ %.0104188, %bb.i ], [ %.0104188, %bb.j ], [ %i.bs, %bb.l ], [ %.0104188, %bb.k ], [ %.0104188, %bb.c ], [ %.0104188, %bb.b ] ; 2 uses
  %.6102.ph = phi double [ %.096189, %bb.f ], [ %.096189, %bb.i ], [ %.096189, %bb.j ], [ %i.aw, %bb.l ], [ %.096189, %bb.k ], [ %.096189, %bb.c ], [ %.096189, %bb.b ] ; 2 uses
  %.6.ph = phi double [ %.0190, %bb.f ], [ %.0190, %bb.i ], [ %.0190, %bb.j ], [ %i.az, %bb.l ], [ %.0190, %bb.k ], [ %.0190, %bb.c ], [ %.0190, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1136

._crit_edge:                                      ; preds = %bb.m, %bb.d, %bb.e, %bb.a
  %.sroa.6156.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6156.0178, %bb.e ], [ %.sroa.6156.0178, %bb.d ], [ %.sroa.6156.1.ph, %bb.m ] ; 2 uses
  %.sroa.0154.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0154.0179, %bb.e ], [ %.sroa.0154.0179, %bb.d ], [ %.sroa.0154.1.ph, %bb.m ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0180, %bb.e ], [ %.sroa.6.0180, %bb.d ], [ %.sroa.6.1.ph, %bb.m ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0181, %bb.e ], [ %.sroa.0.0181, %bb.d ], [ %.sroa.0.1.ph, %bb.m ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.0129182, %bb.e ], [ %.0129182, %bb.d ], [ %.6135.ph, %bb.m ] ; 3 uses
  %.0121.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0121183, %bb.e ], [ %.0121183, %bb.d ], [ %.6127.ph, %bb.m ]
  %.0104.lcssa = phi double [ -inf, %bb.a ], [ %.0104188, %bb.e ], [ %.0104188, %bb.d ], [ %.6110.ph, %bb.m ] ; 2 uses
  %.096.lcssa = phi double [ +qnan, %bb.a ], [ %.096189, %bb.e ], [ %.096189, %bb.d ], [ %.6102.ph, %bb.m ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0190, %bb.e ], [ %.0190, %bb.d ], [ %.6.ph, %bb.m ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.n, label %bb.v

bb.n:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0104.lcssa, %i.co
  br i1 %i.cp, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 408
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !378 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !375 ; 2 uses
  %i.da = fneg double %.0.lcssa
  %i.db = fadd double %.096.lcssa, %i.cv
  %i.dc = fdiv double %i.da, %i.db                ; 4 uses
  %i.dd = fcmp ogt double %i.cx, 0.000000e+00     ; 2 uses
  %i.de = tail call double @llvm.fabs.f64(double %i.dc)
  %i.df = fcmp ogt double %i.de, %i.cx
  %or.cond.i.i = and i1 %i.dd, %i.df
  br i1 %or.cond.i.i, label %bb.p, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i

bb.p:                                             ; preds = %bb.o
  %i.dg = fcmp ogt double %i.dc, 0.000000e+00
  %i.dh = zext i1 %i.dg to i32
  %i.di = fcmp olt double %i.dc, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.di to i32
  %i.dj = add nsw i32 %.neg.i.i.i, %i.dh
  %i.dk = sitofp i32 %i.dj to double
  %i.dl = fmul double %i.cx, %i.dk
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i = phi double [ %i.dl, %bb.p ], [ %i.dc, %bb.o ]
  %i.dm = sitofp i32 %.0129.lcssa to double
  %i.dn = fdiv double %i.dm, %i.cz                ; 2 uses
  %i.do = fmul double %i.dn, %.0.i.i
  %i.dp = fadd double %i.dn, 1.000000e+00         ; 2 uses
  %i.dq = fdiv double %i.do, %i.dp
  %i.dr = fdiv double %8, %i.dp
  %i.ds = fadd double %i.dr, %i.dq                ; 3 uses
  %i.dt = fcmp olt double %i.ds, %.sroa.0.0.lcssa
  br i1 %i.dt, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i
  %i.du = fcmp ogt double %i.ds, %.sroa.6.0.lcssa
  br i1 %i.du, label %bb.r, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.r:                                             ; preds = %bb.q
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i, %bb.q, %bb.r
  %.0.i = phi double [ %i.ds, %bb.q ], [ %.sroa.6.0.lcssa, %bb.r ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.dv, align 8, !tbaa !410
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.dw, align 8, !tbaa !334
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.dx, align 8, !tbaa !407
  %i.dy = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dy, ptr %i.dz, align 8, !tbaa !408
  %i.ea = fsub double %1, %.0.lcssa               ; 2 uses
  %i.eb = fsub double %2, %.096.lcssa             ; 2 uses
  %i.ec = sub nsw i32 %3, %.0129.lcssa            ; 2 uses
  %i.ed = fneg double %i.ea
  %i.ee = fadd double %i.eb, %i.cv
  %i.ef = fdiv double %i.ed, %i.ee                ; 4 uses
  %i.eg = tail call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp ogt double %i.eg, %i.cx
  %or.cond.i.i147 = and i1 %i.dd, %i.eh
  br i1 %or.cond.i.i147, label %bb.s, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i148

bb.s:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ei = fcmp ogt double %i.ef, 0.000000e+00
  %i.ej = zext i1 %i.ei to i32
  %i.ek = fcmp olt double %i.ef, 0.000000e+00
  %.neg.i.i.i151 = sext i1 %i.ek to i32
  %i.el = add nsw i32 %.neg.i.i.i151, %i.ej
  %i.em = sitofp i32 %i.el to double
  %i.en = fmul double %i.cx, %i.em
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i148

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i148: ; preds = %bb.s, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i149 = phi double [ %i.en, %bb.s ], [ %i.ef, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.eo = sitofp i32 %i.ec to double
  %i.ep = fdiv double %i.eo, %i.cz                ; 2 uses
  %i.eq = fmul double %i.ep, %.0.i.i149
  %i.er = fadd double %i.ep, 1.000000e+00         ; 2 uses
  %i.es = fdiv double %i.eq, %i.er
  %i.et = fdiv double %8, %i.er
  %i.eu = fadd double %i.et, %i.es                ; 3 uses
  %i.ev = fcmp olt double %i.eu, %.sroa.0154.0.lcssa
  br i1 %i.ev, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit152, label %bb.t

bb.t:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i148
  %i.ew = fcmp ogt double %i.eu, %.sroa.6156.0.lcssa
  br i1 %i.ew, label %bb.u, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit152

bb.u:                                             ; preds = %bb.t
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit152

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit152: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i148, %bb.t, %bb.u
  %.0.i150 = phi double [ %i.eu, %bb.t ], [ %.sroa.6156.0.lcssa, %bb.u ], [ %.sroa.0154.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i148 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i150, ptr %i.ex, align 8, !tbaa !411
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ec, ptr %i.ey, align 4, !tbaa !335
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ea, ptr %i.ez, align 8, !tbaa !412
  %i.fa = fadd double %i.eb, f0xBCD203AFA0000000
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fa, ptr %i.fb, align 8, !tbaa !413
  %i.fc = fsub double %.0104.lcssa, %5
  store double %i.fc, ptr %i.cm, align 8, !tbaa !312
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fd, align 8, !tbaa !313
  br label %bb.v

bb.v:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit152, %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145189 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145189, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1137

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145189.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod263 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145189.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not193 = icmp sgt i32 %.0143, %i.p
  br i1 %.not193, label %._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph207, %.thread
  %indvars.iv240 = phi i64 [ %i.bj, %.lr.ph207 ], [ %indvars.iv.next241, %.thread ] ; 5 uses
  %.0114204 = phi double [ -inf, %.lr.ph207 ], [ %.6120, %.thread ] ; 9 uses
  %.0126203 = phi i32 [ 0, %.lr.ph207 ], [ %.6132, %.thread ] ; 8 uses
  %.0134202 = phi i32 [ %i.d, %.lr.ph207 ], [ %.6140, %.thread ] ; 8 uses
  %.2147200 = phi i32 [ %.1146, %.lr.ph207 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0197 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph207 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0196 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph207 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0173.0195 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph207 ], [ %.sroa.0173.2, %.thread ] ; 7 uses
  %.sroa.6175.0194 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph207 ], [ %.sroa.6175.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph207 ], [ %i.dv, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph207 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv240, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv240 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147200, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147200, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv240 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ct = fsub double %1, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.db = load i8, ptr %i.da, align 8, !tbaa !384
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !375
  %i.de = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cs, double noundef %i.ck, double noundef %i.ct, double noundef %i.co, double noundef %i.cv, double noundef %i.cx, double noundef %i.cz, ptr noundef nonnull %4, i8 noundef signext %i.db, double noundef %i.dd, i32 noundef %.3148, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.df = fcmp ugt double %i.de, %5
  br i1 %i.df, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.dg = fcmp ogt double %i.de, %.0114204
  br i1 %i.dg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %4, align 8, !tbaa !282
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call { double, double } %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dl = extractvalue { double, double } %i.dk, 0 ; 3 uses
  %i.dm = extractvalue { double, double } %i.dk, 1 ; 3 uses
  %i.dn = load ptr, ptr %4, align 8, !tbaa !282
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call { double, double } %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dr = extractvalue { double, double } %i.dq, 0 ; 3 uses
  %i.ds = extractvalue { double, double } %i.dq, 1 ; 3 uses
  %i.dt = fcmp ogt double %i.dl, %i.dm
  %i.du = fcmp ogt double %i.dr, %i.ds
  %or.cond = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l, %bb.k, %bb.m, %bb.j, %bb.f, %bb.g
  %.sroa.6175.2 = phi double [ %.sroa.6175.0194, %bb.f ], [ %.sroa.6175.0194, %bb.g ], [ %.sroa.6175.0194, %bb.j ], [ %.sroa.6175.0194, %bb.k ], [ %.sroa.6175.0194, %bb.l ], [ %i.dm, %bb.n ], [ %i.dm, %bb.m ] ; 2 uses
  %.sroa.0173.2 = phi double [ %.sroa.0173.0195, %bb.f ], [ %.sroa.0173.0195, %bb.g ], [ %.sroa.0173.0195, %bb.j ], [ %.sroa.0173.0195, %bb.k ], [ %.sroa.0173.0195, %bb.l ], [ %i.dl, %bb.n ], [ %i.dl, %bb.m ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0196, %bb.f ], [ %.sroa.6.0196, %bb.g ], [ %.sroa.6.0196, %bb.j ], [ %.sroa.6.0196, %bb.k ], [ %.sroa.6.0196, %bb.l ], [ %i.ds, %bb.n ], [ %i.ds, %bb.m ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0197, %bb.f ], [ %.sroa.0.0197, %bb.g ], [ %.sroa.0.0197, %bb.j ], [ %.sroa.0.0197, %bb.k ], [ %.sroa.0.0197, %bb.l ], [ %i.dr, %bb.n ], [ %i.dr, %bb.m ] ; 2 uses
  %.6140 = phi i32 [ %.0134202, %bb.f ], [ %.0134202, %bb.g ], [ %.0134202, %bb.j ], [ %.0134202, %bb.k ], [ %.0134202, %bb.l ], [ %7, %bb.n ], [ %.0134202, %bb.m ] ; 2 uses
  %.6132 = phi i32 [ %.0126203, %bb.f ], [ %.0126203, %bb.g ], [ %.0126203, %bb.j ], [ %.0126203, %bb.k ], [ %.0126203, %bb.l ], [ %.3148, %bb.n ], [ %.0126203, %bb.m ] ; 2 uses
  %.6120 = phi double [ %.0114204, %bb.f ], [ %.0114204, %bb.g ], [ %.0114204, %bb.j ], [ %.0114204, %bb.k ], [ %.0114204, %bb.l ], [ %i.de, %bb.n ], [ %.0114204, %bb.m ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.bl, %bb.l ], [ %i.cb, %bb.n ], [ %i.bl, %bb.m ] ; 2 uses
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, 1
  %.not.not = icmp slt i64 %indvars.iv240, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1138

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6175.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6175.0194, %bb.h ], [ %.sroa.6175.0194, %bb.i ], [ %.sroa.6175.2, %.thread ] ; 2 uses
  %.sroa.0173.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0173.0195, %bb.h ], [ %.sroa.0173.0195, %bb.i ], [ %.sroa.0173.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0196, %bb.h ], [ %.sroa.6.0196, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0197, %bb.h ], [ %.sroa.0.0197, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0134.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0134202, %bb.h ], [ %.0134202, %bb.i ], [ %.6140, %.thread ]
  %.0126.lcssa = phi i32 [ 0, %.loopexit ], [ %.0126203, %bb.h ], [ %.0126203, %bb.i ], [ %.6132, %.thread ] ; 3 uses
  %.0114.lcssa = phi double [ -inf, %.loopexit ], [ %.0114204, %bb.h ], [ %.0114204, %bb.i ], [ %.6120, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.o, label %bb.w

bb.o:                                             ; preds = %._crit_edge
end_hunk_12
begin_hunk_13_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.eg = extractvalue { double, double } %i.ee, 1 ; 3 uses
  %i.eh = fcmp ogt double %i.dz, %i.ea
  %i.ei = fcmp ogt double %i.ef, %i.eg
  %or.cond = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.s, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.r, %bb.t
  %.sroa.6158.1.ph = phi double [ %.sroa.6158.0180, %bb.f ], [ %.sroa.6158.0180, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6158.0180, %bb.r ], [ %i.ea, %bb.t ], [ %i.ea, %bb.s ], [ %.sroa.6158.0180, %bb.c ], [ %.sroa.6158.0180, %bb.b ] ; 2 uses
  %.sroa.0156.1.ph = phi double [ %.sroa.0156.0181, %bb.f ], [ %.sroa.0156.0181, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0156.0181, %bb.r ], [ %i.dz, %bb.t ], [ %i.dz, %bb.s ], [ %.sroa.0156.0181, %bb.c ], [ %.sroa.0156.0181, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0182, %bb.f ], [ %.sroa.6.0182, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0182, %bb.r ], [ %i.eg, %bb.t ], [ %i.eg, %bb.s ], [ %.sroa.6.0182, %bb.c ], [ %.sroa.6.0182, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0183, %bb.f ], [ %.sroa.0.0183, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0183, %bb.r ], [ %i.ef, %bb.t ], [ %i.ef, %bb.s ], [ %.sroa.0.0183, %bb.c ], [ %.sroa.0.0183, %bb.b ] ; 2 uses
  %.6135.ph = phi i32 [ %.0129184, %bb.f ], [ %.0129184, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0129184, %bb.r ], [ %i.au, %bb.t ], [ %.0129184, %bb.s ], [ %.0129184, %bb.c ], [ %.0129184, %bb.b ] ; 2 uses
  %.6127.ph = phi i32 [ %.0121185, %bb.f ], [ %.0121185, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0121185, %bb.r ], [ %7, %bb.t ], [ %.0121185, %bb.s ], [ %.0121185, %bb.c ], [ %.0121185, %bb.b ] ; 2 uses
  %.6110.ph = phi double [ %.0104190, %bb.f ], [ %.0104190, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0104190, %bb.r ], [ %.0.i, %bb.t ], [ %.0104190, %bb.s ], [ %.0104190, %bb.c ], [ %.0104190, %bb.b ] ; 2 uses
  %.6102.ph = phi double [ %.096191, %bb.f ], [ %.096191, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.096191, %bb.r ], [ %i.aw, %bb.t ], [ %.096191, %bb.s ], [ %.096191, %bb.c ], [ %.096191, %bb.b ] ; 2 uses
  %.6.ph = phi double [ %.0192, %bb.f ], [ %.0192, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0192, %bb.r ], [ %i.az, %bb.t ], [ %.0192, %bb.s ], [ %.0192, %bb.c ], [ %.0192, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1179

._crit_edge:                                      ; preds = %bb.u, %bb.d, %bb.e, %bb.a
  %.sroa.6158.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6158.0180, %bb.e ], [ %.sroa.6158.0180, %bb.d ], [ %.sroa.6158.1.ph, %bb.u ] ; 2 uses
  %.sroa.0156.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0156.0181, %bb.e ], [ %.sroa.0156.0181, %bb.d ], [ %.sroa.0156.1.ph, %bb.u ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0182, %bb.e ], [ %.sroa.6.0182, %bb.d ], [ %.sroa.6.1.ph, %bb.u ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0183, %bb.e ], [ %.sroa.0.0183, %bb.d ], [ %.sroa.0.1.ph, %bb.u ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.0129184, %bb.e ], [ %.0129184, %bb.d ], [ %.6135.ph, %bb.u ] ; 2 uses
  %.0121.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0121185, %bb.e ], [ %.0121185, %bb.d ], [ %.6127.ph, %bb.u ]
  %.0104.lcssa = phi double [ -inf, %bb.a ], [ %.0104190, %bb.e ], [ %.0104190, %bb.d ], [ %.6110.ph, %bb.u ] ; 2 uses
  %.096.lcssa = phi double [ +qnan, %bb.a ], [ %.096191, %bb.e ], [ %.096191, %bb.d ], [ %.6102.ph, %bb.u ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0192, %bb.e ], [ %.0192, %bb.d ], [ %.6.ph, %bb.u ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !242, !range !231, !noundef !232
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %._crit_edge
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !312
  %i.eo = fadd double %5, %i.en
  %i.ep = fcmp ogt double %.0104.lcssa, %i.eo
  br i1 %i.ep, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.eq, align 4, !tbaa !406
  %i.er = load ptr, ptr %0, align 8, !tbaa !273
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !277 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 424
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !401 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 408
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !378 ; 5 uses
  %i.ey = fneg double %.0.lcssa
  %i.ez = fadd double %.096.lcssa, %i.ev
  %i.fa = fdiv double %i.ey, %i.ez                ; 4 uses
  %i.fb = fcmp ogt double %i.ex, 0.000000e+00     ; 2 uses
  %i.fc = tail call double @llvm.fabs.f64(double %i.fa)
  %i.fd = fcmp ogt double %i.fc, %i.ex
  %or.cond.i.i = and i1 %i.fb, %i.fd
  br i1 %or.cond.i.i, label %bb.x, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i

bb.x:                                             ; preds = %bb.w
  %i.fe = fcmp ogt double %i.fa, 0.000000e+00
  %i.ff = zext i1 %i.fe to i32
  %i.fg = fcmp olt double %i.fa, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.fg to i32
  %i.fh = add nsw i32 %.neg.i.i.i, %i.ff
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = fmul double %i.ex, %i.fi
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.x, %bb.w
  %.0.i.i147 = phi double [ %i.fj, %bb.x ], [ %i.fa, %bb.w ] ; 3 uses
  %i.fk = fcmp olt double %.0.i.i147, %.sroa.0.0.lcssa
  br i1 %i.fk, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.y

bb.y:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i
  %i.fl = fcmp ogt double %.0.i.i147, %.sroa.6.0.lcssa
  br i1 %i.fl, label %bb.z, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.z:                                             ; preds = %bb.y
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i, %bb.y, %bb.z
  %.0.i148 = phi double [ %.0.i.i147, %bb.y ], [ %.sroa.6.0.lcssa, %bb.z ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i148, ptr %i.fm, align 8, !tbaa !410
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.fn, align 8, !tbaa !334
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.fo, align 8, !tbaa !407
  %i.fp = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.fp, ptr %i.fq, align 8, !tbaa !408
  %i.fr = fsub double %1, %.0.lcssa               ; 2 uses
  %i.fs = fsub double %2, %.096.lcssa             ; 2 uses
  %i.ft = sub nsw i32 %3, %.0129.lcssa
  %i.fu = fneg double %i.fr
  %i.fv = fadd double %i.fs, %i.ev
  %i.fw = fdiv double %i.fu, %i.fv                ; 4 uses
  %i.fx = tail call double @llvm.fabs.f64(double %i.fw)
  %i.fy = fcmp ogt double %i.fx, %i.ex
  %or.cond.i.i149 = and i1 %i.fb, %i.fy
  br i1 %or.cond.i.i149, label %bb.aa, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i150

bb.aa:                                            ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fz = fcmp ogt double %i.fw, 0.000000e+00
  %i.ga = zext i1 %i.fz to i32
  %i.gb = fcmp olt double %i.fw, 0.000000e+00
  %.neg.i.i.i153 = sext i1 %i.gb to i32
  %i.gc = add nsw i32 %.neg.i.i.i153, %i.ga
  %i.gd = sitofp i32 %i.gc to double
  %i.ge = fmul double %i.ex, %i.gd
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i150

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i150: ; preds = %bb.aa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i151 = phi double [ %i.ge, %bb.aa ], [ %i.fw, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ] ; 3 uses
  %i.gf = fcmp olt double %.0.i.i151, %.sroa.0156.0.lcssa
  br i1 %i.gf, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154, label %bb.ab

bb.ab:                                            ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i150
  %i.gg = fcmp ogt double %.0.i.i151, %.sroa.6158.0.lcssa
  br i1 %i.gg, label %bb.ac, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154

bb.ac:                                            ; preds = %bb.ab
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i150, %bb.ab, %bb.ac
  %.0.i152 = phi double [ %.0.i.i151, %bb.ab ], [ %.sroa.6158.0.lcssa, %bb.ac ], [ %.sroa.0156.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i150 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i152, ptr %i.gh, align 8, !tbaa !411
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ft, ptr %i.gi, align 4, !tbaa !335
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.fr, ptr %i.gj, align 8, !tbaa !412
  %i.gk = fadd double %i.fs, f0xBCD203AFA0000000
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.gk, ptr %i.gl, align 8, !tbaa !413
  %i.gm = fsub double %.0104.lcssa, %5
  store double %i.gm, ptr %i.em, align 8, !tbaa !312
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.gn, align 8, !tbaa !313
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit154, %bb.v, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145191 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145191, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1180

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145191.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod267)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145191.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not195 = icmp sgt i32 %.0143, %i.p
  br i1 %.not195, label %._crit_edge, label %.lr.ph209

.lr.ph209:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph209, %.thread
  %indvars.iv242 = phi i64 [ %i.bj, %.lr.ph209 ], [ %indvars.iv.next243, %.thread ] ; 5 uses
  %.0114206 = phi double [ -inf, %.lr.ph209 ], [ %.6120, %.thread ] ; 9 uses
  %.0126205 = phi i32 [ 0, %.lr.ph209 ], [ %.6132, %.thread ] ; 8 uses
  %.0134204 = phi i32 [ %i.d, %.lr.ph209 ], [ %.6140, %.thread ] ; 8 uses
  %.2147202 = phi i32 [ %.1146, %.lr.ph209 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0199 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0198 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0175.0197 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.0175.2, %.thread ] ; 7 uses
  %.sroa.6177.0196 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph209 ], [ %.sroa.6177.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph209 ], [ %i.fu, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph209 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv242, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv242 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147202, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147202, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv242 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ct = fsub double %1, %i.cs                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !378 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !384 ; 2 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !282
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call { double, double } %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !9 ; 2 uses
  %i.de = extractvalue { double, double } %i.dd, 0 ; 2 uses
  %i.df = extractvalue { double, double } %i.dd, 1 ; 2 uses
  %i.dg = fneg double %i.cs
  %i.dh = fadd double %i.ck, %i.cv                ; 2 uses
  %i.di = fdiv double %i.dg, %i.dh                ; 4 uses
  %i.dj = fcmp ogt double %i.cx, 0.000000e+00     ; 2 uses
  %i.dk = tail call double @llvm.fabs.f64(double %i.di)
  %i.dl = fcmp ogt double %i.dk, %i.cx
  %or.cond.i.i.i = and i1 %i.dj, %i.dl
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dm = fcmp ogt double %i.di, 0.000000e+00
  %i.dn = zext i1 %i.dm to i32
  %i.do = fcmp olt double %i.di, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.do to i32
  %i.dp = add nsw i32 %.neg.i.i.i.i, %i.dn
  %i.dq = sitofp i32 %i.dp to double
  %i.dr = fmul double %i.cx, %i.dq
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi double [ %i.dr, %bb.l ], [ %i.di, %bb.k ] ; 3 uses
  %i.ds = fcmp olt double %.0.i.i.i, %i.de
  br i1 %i.ds, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i
  %i.dt = fcmp ogt double %.0.i.i.i, %i.df
  br i1 %i.dt, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.n:                                             ; preds = %bb.m
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.n, %bb.m, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i
  %.0.i.i = phi double [ %.0.i.i.i, %bb.m ], [ %i.df, %bb.n ], [ %i.de, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i ] ; 3 uses
  %i.du = load ptr, ptr %4, align 8, !tbaa !282
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call { double, double } %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !9 ; 2 uses
  %i.dy = extractvalue { double, double } %i.dx, 0 ; 2 uses
  %i.dz = extractvalue { double, double } %i.dx, 1 ; 2 uses
  %i.ea = fneg double %i.ct
  %i.eb = fadd double %i.co, %i.cv                ; 2 uses
  %i.ec = fdiv double %i.ea, %i.eb                ; 4 uses
  %i.ed = tail call double @llvm.fabs.f64(double %i.ec)
  %i.ee = fcmp ogt double %i.ed, %i.cx
  %or.cond.i.i35.i = and i1 %i.dj, %i.ee
  br i1 %or.cond.i.i35.i, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i36.i

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.ef = fcmp ogt double %i.ec, 0.000000e+00
  %i.eg = zext i1 %i.ef to i32
  %i.eh = fcmp olt double %i.ec, 0.000000e+00
  %.neg.i.i.i39.i = sext i1 %i.eh to i32
  %i.ei = add nsw i32 %.neg.i.i.i39.i, %i.eg
  %i.ej = sitofp i32 %i.ei to double
  %i.ek = fmul double %i.cx, %i.ej
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i36.i
end_hunk_13
begin_hunk_14_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %.0.i = phi double [ %i.dp, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i ] ; 3 uses
  %i.dq = fcmp ugt double %.0.i, %5
  br i1 %i.dq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.t, align 8, !tbaa !242
  %i.dr = fcmp ogt double %.0.i, %.0104185
  br i1 %i.dr, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ds = load ptr, ptr %4, align 8, !tbaa !282
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call { double, double } %i.du(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dw = extractvalue { double, double } %i.dv, 0 ; 3 uses
  %i.dx = extractvalue { double, double } %i.dv, 1 ; 3 uses
  %i.dy = load ptr, ptr %4, align 8, !tbaa !282
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call { double, double } %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.ec = extractvalue { double, double } %i.eb, 0 ; 3 uses
  %i.ed = extractvalue { double, double } %i.eb, 1 ; 3 uses
  %i.ee = fcmp ogt double %i.dw, %i.dx
  %i.ef = fcmp ogt double %i.ec, %i.ed
  %or.cond = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.q, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.p, %bb.r
  %.sroa.6153.1.ph = phi double [ %.sroa.6153.0175, %bb.f ], [ %.sroa.6153.0175, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6153.0175, %bb.p ], [ %i.dx, %bb.r ], [ %i.dx, %bb.q ], [ %.sroa.6153.0175, %bb.c ], [ %.sroa.6153.0175, %bb.b ] ; 2 uses
  %.sroa.0151.1.ph = phi double [ %.sroa.0151.0176, %bb.f ], [ %.sroa.0151.0176, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0151.0176, %bb.p ], [ %i.dw, %bb.r ], [ %i.dw, %bb.q ], [ %.sroa.0151.0176, %bb.c ], [ %.sroa.0151.0176, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0177, %bb.f ], [ %.sroa.6.0177, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0177, %bb.p ], [ %i.ed, %bb.r ], [ %i.ed, %bb.q ], [ %.sroa.6.0177, %bb.c ], [ %.sroa.6.0177, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0178, %bb.f ], [ %.sroa.0.0178, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0178, %bb.p ], [ %i.ec, %bb.r ], [ %i.ec, %bb.q ], [ %.sroa.0.0178, %bb.c ], [ %.sroa.0.0178, %bb.b ] ; 2 uses
  %.6135.ph = phi i32 [ %.0129179, %bb.f ], [ %.0129179, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0129179, %bb.p ], [ %i.au, %bb.r ], [ %.0129179, %bb.q ], [ %.0129179, %bb.c ], [ %.0129179, %bb.b ] ; 2 uses
  %.6127.ph = phi i32 [ %.0121180, %bb.f ], [ %.0121180, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0121180, %bb.p ], [ %7, %bb.r ], [ %.0121180, %bb.q ], [ %.0121180, %bb.c ], [ %.0121180, %bb.b ] ; 2 uses
  %.6110.ph = phi double [ %.0104185, %bb.f ], [ %.0104185, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0104185, %bb.p ], [ %.0.i, %bb.r ], [ %.0104185, %bb.q ], [ %.0104185, %bb.c ], [ %.0104185, %bb.b ] ; 2 uses
  %.6102.ph = phi double [ %.096186, %bb.f ], [ %.096186, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.096186, %bb.p ], [ %i.aw, %bb.r ], [ %.096186, %bb.q ], [ %.096186, %bb.c ], [ %.096186, %bb.b ] ; 2 uses
  %.6.ph = phi double [ %.0187, %bb.f ], [ %.0187, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0187, %bb.p ], [ %i.az, %bb.r ], [ %.0187, %bb.q ], [ %.0187, %bb.c ], [ %.0187, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1222

._crit_edge:                                      ; preds = %bb.s, %bb.d, %bb.e, %bb.a
  %.sroa.6153.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6153.0175, %bb.e ], [ %.sroa.6153.0175, %bb.d ], [ %.sroa.6153.1.ph, %bb.s ] ; 2 uses
  %.sroa.0151.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0151.0176, %bb.e ], [ %.sroa.0151.0176, %bb.d ], [ %.sroa.0151.1.ph, %bb.s ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0177, %bb.e ], [ %.sroa.6.0177, %bb.d ], [ %.sroa.6.1.ph, %bb.s ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0178, %bb.e ], [ %.sroa.0.0178, %bb.d ], [ %.sroa.0.1.ph, %bb.s ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.0129179, %bb.e ], [ %.0129179, %bb.d ], [ %.6135.ph, %bb.s ] ; 3 uses
  %.0121.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0121180, %bb.e ], [ %.0121180, %bb.d ], [ %.6127.ph, %bb.s ]
  %.0104.lcssa = phi double [ -inf, %bb.a ], [ %.0104185, %bb.e ], [ %.0104185, %bb.d ], [ %.6110.ph, %bb.s ] ; 2 uses
  %.096.lcssa = phi double [ +qnan, %bb.a ], [ %.096186, %bb.e ], [ %.096186, %bb.d ], [ %.6102.ph, %bb.s ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0187, %bb.e ], [ %.0187, %bb.d ], [ %.6.ph, %bb.s ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !242, !range !231, !noundef !232
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.t, label %bb.z

bb.t:                                             ; preds = %._crit_edge
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !312
  %i.el = fadd double %5, %i.ek
  %i.em = fcmp ogt double %.0104.lcssa, %i.el
  br i1 %i.em, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.en, align 4, !tbaa !406
  %i.eo = load ptr, ptr %0, align 8, !tbaa !273
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !277 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 424
  %i.es = load double, ptr %i.er, align 8, !tbaa !401 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 720
  %i.eu = load double, ptr %i.et, align 8, !tbaa !375 ; 2 uses
  %i.ev = fneg double %.0.lcssa
  %i.ew = fadd double %.096.lcssa, %i.es
  %i.ex = fdiv double %i.ev, %i.ew
  %i.ey = sitofp i32 %.0129.lcssa to double
  %i.ez = fdiv double %i.ey, %i.eu                ; 2 uses
  %i.fa = fmul double %i.ex, %i.ez
  %i.fb = fadd double %i.ez, 1.000000e+00         ; 2 uses
  %i.fc = fdiv double %i.fa, %i.fb
  %i.fd = fdiv double %8, %i.fb
  %i.fe = fadd double %i.fc, %i.fd                ; 3 uses
  %i.ff = fcmp olt double %i.fe, %.sroa.0.0.lcssa
  br i1 %i.ff, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fg = fcmp ogt double %i.fe, %.sroa.6.0.lcssa
  br i1 %i.fg, label %bb.w, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.w:                                             ; preds = %bb.v
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.u, %bb.v, %bb.w
  %.0.i147 = phi double [ %i.fe, %bb.v ], [ %.sroa.6.0.lcssa, %bb.w ], [ %.sroa.0.0.lcssa, %bb.u ]
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i147, ptr %i.fh, align 8, !tbaa !410
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.fi, align 8, !tbaa !334
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.fj, align 8, !tbaa !407
  %i.fk = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.fk, ptr %i.fl, align 8, !tbaa !408
  %i.fm = fsub double %1, %.0.lcssa               ; 2 uses
  %i.fn = fsub double %2, %.096.lcssa             ; 2 uses
  %i.fo = sub nsw i32 %3, %.0129.lcssa            ; 2 uses
  %i.fp = fneg double %i.fm
  %i.fq = fadd double %i.fn, %i.es
  %i.fr = fdiv double %i.fp, %i.fq
  %i.fs = sitofp i32 %i.fo to double
  %i.ft = fdiv double %i.fs, %i.eu                ; 2 uses
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.ft, 1.000000e+00         ; 2 uses
  %i.fw = fdiv double %i.fu, %i.fv
  %i.fx = fdiv double %8, %i.fv
  %i.fy = fadd double %i.fw, %i.fx                ; 3 uses
  %i.fz = fcmp olt double %i.fy, %.sroa.0151.0.lcssa
  br i1 %i.fz, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit149, label %bb.x

bb.x:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ga = fcmp ogt double %i.fy, %.sroa.6153.0.lcssa
  br i1 %i.ga, label %bb.y, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit149

bb.y:                                             ; preds = %bb.x
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit149

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit149: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.x, %bb.y
  %.0.i148 = phi double [ %i.fy, %bb.x ], [ %.sroa.6153.0.lcssa, %bb.y ], [ %.sroa.0151.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i148, ptr %i.gb, align 8, !tbaa !411
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.fo, ptr %i.gc, align 4, !tbaa !335
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.fm, ptr %i.gd, align 8, !tbaa !412
  %i.ge = fadd double %i.fn, f0xBCD203AFA0000000
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ge, ptr %i.gf, align 8, !tbaa !413
  %i.gg = fsub double %.0104.lcssa, %5
  store double %i.gg, ptr %i.ej, align 8, !tbaa !312
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.gh, align 8, !tbaa !313
  br label %bb.z

bb.z:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit149, %bb.t, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145186 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145186, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1223

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145186.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod264 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod264)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145186.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not190 = icmp sgt i32 %.0143, %i.p
  br i1 %.not190, label %._crit_edge, label %.lr.ph204

.lr.ph204:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph204, %.thread
  %indvars.iv237 = phi i64 [ %i.bj, %.lr.ph204 ], [ %indvars.iv.next238, %.thread ] ; 5 uses
  %.0114201 = phi double [ -inf, %.lr.ph204 ], [ %.6120, %.thread ] ; 9 uses
  %.0126200 = phi i32 [ 0, %.lr.ph204 ], [ %.6132, %.thread ] ; 8 uses
  %.0134199 = phi i32 [ %i.d, %.lr.ph204 ], [ %.6140, %.thread ] ; 8 uses
  %.2147197 = phi i32 [ %.1146, %.lr.ph204 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0194 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0193 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0170.0192 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.0170.2, %.thread ] ; 7 uses
  %.sroa.6172.0191 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.6172.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph204 ], [ %i.fr, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph204 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv237, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv237 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147197, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147197, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv237 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ct = fsub double %1, %i.cs                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !384 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !375 ; 2 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !282
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call { double, double } %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !10 ; 2 uses
  %i.de = extractvalue { double, double } %i.dd, 0 ; 2 uses
  %i.df = extractvalue { double, double } %i.dd, 1 ; 2 uses
  %i.dg = fneg double %i.cs
  %i.dh = fadd double %i.ck, %i.cv                ; 2 uses
  %i.di = fdiv double %i.dg, %i.dh
  %i.dj = sitofp i32 %.3148 to double
  %i.dk = fdiv double %i.dj, %i.cz                ; 2 uses
  %i.dl = fmul double %i.di, %i.dk
  %i.dm = fadd double %i.dk, 1.000000e+00         ; 2 uses
  %i.dn = fdiv double %i.dl, %i.dm
  %i.do = fdiv double %8, %i.dm
  %i.dp = fadd double %i.dn, %i.do                ; 3 uses
  %i.dq = fcmp olt double %i.dp, %i.de
  br i1 %i.dq, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dr = fcmp ogt double %i.dp, %i.df
  br i1 %i.dr, label %bb.m, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.m:                                             ; preds = %bb.l
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.i = phi double [ %i.dp, %bb.l ], [ %i.df, %bb.m ], [ %i.de, %bb.k ] ; 3 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !282
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call { double, double } %i.du(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !10 ; 2 uses
  %i.dw = extractvalue { double, double } %i.dv, 0 ; 2 uses
  %i.dx = extractvalue { double, double } %i.dv, 1 ; 2 uses
  %i.dy = fneg double %i.ct
  %i.dz = fadd double %i.co, %i.cv                ; 2 uses
  %i.ea = fdiv double %i.dy, %i.dz
  %i.eb = sitofp i32 %i.cm to double
  %i.ec = fdiv double %i.eb, %i.cz                ; 2 uses
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = fadd double %i.ec, 1.000000e+00         ; 2 uses
  %i.ef = fdiv double %i.ed, %i.ee
  %i.eg = fdiv double %8, %i.ee
  %i.eh = fadd double %i.ef, %i.eg                ; 3 uses
  %i.ei = fcmp olt double %i.eh, %i.dw
  br i1 %i.ei, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i, label %bb.n

bb.n:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.ej = fcmp ogt double %i.eh, %i.dx
  br i1 %i.ej, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i

bb.o:                                             ; preds = %bb.n
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i: ; preds = %bb.o, %bb.n, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %.0.i35.i = phi double [ %i.eh, %bb.n ], [ %i.dx, %bb.o ], [ %i.dw, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i ] ; 3 uses
  %i.ek = icmp sgt i8 %i.cx, 0
  %i.el = fcmp ogt double %.0.i.i, %.0.i35.i
  %or.cond.i = and i1 %i.ek, %i.el
  br i1 %or.cond.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i
end_hunk_14
begin_hunk_15_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.co = fmul <2 x double> %i.cn, splat (double 2.000000e+00)
  %i.cp = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.ce, i64 1
  %i.cr = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %.0.i35.i, i64 1 ; 3 uses
  %i.ct = fmul <2 x double> %i.cq, %i.cs
  %i.cu = fmul <2 x double> %i.cs, %i.ct
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cs, <2 x double> %i.cu) ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 1
  %i.cx = fneg double %i.cw
  %i.cy = extractelement <2 x double> %i.cv, i64 0
  %i.cz = fsub double %i.cx, %i.cy
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i, %bb.n, %bb.o
  %.0.i = phi double [ %i.cz, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i ] ; 3 uses
  %i.da = fcmp ugt double %.0.i, %5
  br i1 %i.da, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.t, align 8, !tbaa !242
  %i.db = fcmp ogt double %.0.i, %.0104185
  br i1 %i.db, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dc = load ptr, ptr %4, align 8, !tbaa !282
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call { double, double } %i.de(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dg = extractvalue { double, double } %i.df, 0 ; 3 uses
  %i.dh = extractvalue { double, double } %i.df, 1 ; 3 uses
  %i.di = load ptr, ptr %4, align 8, !tbaa !282
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call { double, double } %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dm = extractvalue { double, double } %i.dl, 0 ; 3 uses
  %i.dn = extractvalue { double, double } %i.dl, 1 ; 3 uses
  %i.do = fcmp ogt double %i.dg, %i.dh
  %i.dp = fcmp ogt double %i.dm, %i.dn
  %or.cond = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.q, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.p, %bb.r
  %.sroa.6153.1.ph = phi double [ %.sroa.6153.0175, %bb.f ], [ %.sroa.6153.0175, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6153.0175, %bb.p ], [ %i.dh, %bb.r ], [ %i.dh, %bb.q ], [ %.sroa.6153.0175, %bb.c ], [ %.sroa.6153.0175, %bb.b ] ; 2 uses
  %.sroa.0151.1.ph = phi double [ %.sroa.0151.0176, %bb.f ], [ %.sroa.0151.0176, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0151.0176, %bb.p ], [ %i.dg, %bb.r ], [ %i.dg, %bb.q ], [ %.sroa.0151.0176, %bb.c ], [ %.sroa.0151.0176, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0177, %bb.f ], [ %.sroa.6.0177, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0177, %bb.p ], [ %i.dn, %bb.r ], [ %i.dn, %bb.q ], [ %.sroa.6.0177, %bb.c ], [ %.sroa.6.0177, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0178, %bb.f ], [ %.sroa.0.0178, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0178, %bb.p ], [ %i.dm, %bb.r ], [ %i.dm, %bb.q ], [ %.sroa.0.0178, %bb.c ], [ %.sroa.0.0178, %bb.b ] ; 2 uses
  %.6135.ph = phi i32 [ %.0129179, %bb.f ], [ %.0129179, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0129179, %bb.p ], [ %i.au, %bb.r ], [ %.0129179, %bb.q ], [ %.0129179, %bb.c ], [ %.0129179, %bb.b ] ; 2 uses
  %.6127.ph = phi i32 [ %.0121180, %bb.f ], [ %.0121180, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0121180, %bb.p ], [ %7, %bb.r ], [ %.0121180, %bb.q ], [ %.0121180, %bb.c ], [ %.0121180, %bb.b ] ; 2 uses
  %.6110.ph = phi double [ %.0104185, %bb.f ], [ %.0104185, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0104185, %bb.p ], [ %.0.i, %bb.r ], [ %.0104185, %bb.q ], [ %.0104185, %bb.c ], [ %.0104185, %bb.b ] ; 2 uses
  %.6102.ph = phi double [ %.096186, %bb.f ], [ %.096186, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.096186, %bb.p ], [ %i.aw, %bb.r ], [ %.096186, %bb.q ], [ %.096186, %bb.c ], [ %.096186, %bb.b ] ; 2 uses
  %.6.ph = phi double [ %.0187, %bb.f ], [ %.0187, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0187, %bb.p ], [ %i.az, %bb.r ], [ %.0187, %bb.q ], [ %.0187, %bb.c ], [ %.0187, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1265

._crit_edge:                                      ; preds = %bb.s, %bb.d, %bb.e, %bb.a
  %.sroa.6153.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6153.0175, %bb.e ], [ %.sroa.6153.0175, %bb.d ], [ %.sroa.6153.1.ph, %bb.s ] ; 2 uses
  %.sroa.0151.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0151.0176, %bb.e ], [ %.sroa.0151.0176, %bb.d ], [ %.sroa.0151.1.ph, %bb.s ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0177, %bb.e ], [ %.sroa.6.0177, %bb.d ], [ %.sroa.6.1.ph, %bb.s ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0178, %bb.e ], [ %.sroa.0.0178, %bb.d ], [ %.sroa.0.1.ph, %bb.s ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.0129179, %bb.e ], [ %.0129179, %bb.d ], [ %.6135.ph, %bb.s ] ; 2 uses
  %.0121.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0121180, %bb.e ], [ %.0121180, %bb.d ], [ %.6127.ph, %bb.s ]
  %.0104.lcssa = phi double [ -inf, %bb.a ], [ %.0104185, %bb.e ], [ %.0104185, %bb.d ], [ %.6110.ph, %bb.s ] ; 2 uses
  %.096.lcssa = phi double [ +qnan, %bb.a ], [ %.096186, %bb.e ], [ %.096186, %bb.d ], [ %.6102.ph, %bb.s ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0187, %bb.e ], [ %.0187, %bb.d ], [ %.6.ph, %bb.s ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !242, !range !231, !noundef !232
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.t, label %bb.z

bb.t:                                             ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !312
  %i.dv = fadd double %5, %i.du
  %i.dw = fcmp ogt double %.0104.lcssa, %i.dv
  br i1 %i.dw, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0121.lcssa, ptr %i.dx, align 4, !tbaa !406
  %i.dy = load ptr, ptr %0, align 8, !tbaa !273
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !277
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 424
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !401 ; 2 uses
  %i.ed = fneg double %.0.lcssa
  %i.ee = fadd double %.096.lcssa, %i.ec
  %i.ef = fdiv double %i.ed, %i.ee                ; 3 uses
  %i.eg = fcmp olt double %i.ef, %.sroa.0.0.lcssa
  br i1 %i.eg, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = fcmp ogt double %i.ef, %.sroa.6.0.lcssa
  br i1 %i.eh, label %bb.w, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.w:                                             ; preds = %bb.v
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.u, %bb.v, %bb.w
  %.0.i147 = phi double [ %i.ef, %bb.v ], [ %.sroa.6.0.lcssa, %bb.w ], [ %.sroa.0.0.lcssa, %bb.u ]
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i147, ptr %i.ei, align 8, !tbaa !410
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.ej, align 8, !tbaa !334
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.ek, align 8, !tbaa !407
  %i.el = fadd double %.096.lcssa, f0xBCD203AFA0000000
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.el, ptr %i.em, align 8, !tbaa !408
  %i.en = fsub double %1, %.0.lcssa               ; 2 uses
  %i.eo = fsub double %2, %.096.lcssa             ; 2 uses
  %i.ep = sub nsw i32 %3, %.0129.lcssa
  %i.eq = fneg double %i.en
  %i.er = fadd double %i.eo, %i.ec
  %i.es = fdiv double %i.eq, %i.er                ; 3 uses
  %i.et = fcmp olt double %i.es, %.sroa.0151.0.lcssa
  br i1 %i.et, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit149, label %bb.x

bb.x:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.eu = fcmp ogt double %i.es, %.sroa.6153.0.lcssa
  br i1 %i.eu, label %bb.y, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit149

bb.y:                                             ; preds = %bb.x
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit149

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit149: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.x, %bb.y
  %.0.i148 = phi double [ %i.es, %bb.x ], [ %.sroa.6153.0.lcssa, %bb.y ], [ %.sroa.0151.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i148, ptr %i.ev, align 8, !tbaa !411
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ep, ptr %i.ew, align 4, !tbaa !335
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.en, ptr %i.ex, align 8, !tbaa !412
  %i.ey = fadd double %i.eo, f0xBCD203AFA0000000
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ey, ptr %i.ez, align 8, !tbaa !413
  %i.fa = fsub double %.0104.lcssa, %5
  store double %i.fa, ptr %i.dt, align 8, !tbaa !312
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fb, align 8, !tbaa !313
  br label %bb.z

bb.z:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit149, %bb.t, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb1ELb1ELb0ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0145186 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0145186, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1266

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0145186.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod263 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0145186.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1146 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0143 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not190 = icmp sgt i32 %.0143, %i.p
  br i1 %.not190, label %._crit_edge, label %.lr.ph204

.lr.ph204:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0143 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph204, %.thread
  %indvars.iv237 = phi i64 [ %i.bj, %.lr.ph204 ], [ %indvars.iv.next238, %.thread ] ; 5 uses
  %.0114201 = phi double [ -inf, %.lr.ph204 ], [ %.6120, %.thread ] ; 9 uses
  %.0126200 = phi i32 [ 0, %.lr.ph204 ], [ %.6132, %.thread ] ; 8 uses
  %.0134199 = phi i32 [ %i.d, %.lr.ph204 ], [ %.6140, %.thread ] ; 8 uses
  %.2147197 = phi i32 [ %.1146, %.lr.ph204 ], [ %.3148, %.thread ] ; 2 uses
  %.sroa.0.0194 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.0.2, %.thread ] ; 7 uses
  %.sroa.6.0193 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.6.2, %.thread ] ; 7 uses
  %.sroa.0170.0192 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.0170.2, %.thread ] ; 7 uses
  %.sroa.6172.0191 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph204 ], [ %.sroa.6172.2, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph204 ], [ %i.fb, %.thread ] ; 8 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph204 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv237, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv237 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2147197, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3148 = phi i32 [ %i.ca, %bb.e ], [ %.2147197, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3148, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3148
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = trunc i64 %indvars.iv237 to i32
  %i.cr = add i32 %i.cq, %i.o
  %.not164 = icmp eq i32 %i.cr, %7
  br i1 %.not164, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cs = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ct = fsub double %1, %i.cs                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !384 ; 2 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !282
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call { double, double } %i.da(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !11 ; 2 uses
  %i.dc = extractvalue { double, double } %i.db, 0 ; 2 uses
  %i.dd = extractvalue { double, double } %i.db, 1 ; 2 uses
  %i.de = fneg double %i.cs
  %i.df = fadd double %i.ck, %i.cv                ; 2 uses
  %i.dg = fdiv double %i.de, %i.df                ; 3 uses
  %i.dh = fcmp olt double %i.dg, %i.dc
  br i1 %i.dh, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = fcmp ogt double %i.dg, %i.dd
  br i1 %i.di, label %bb.m, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.m:                                             ; preds = %bb.l
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.i = phi double [ %i.dg, %bb.l ], [ %i.dd, %bb.m ], [ %i.dc, %bb.k ] ; 3 uses
  %i.dj = load ptr, ptr %4, align 8, !tbaa !282
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call { double, double } %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !11 ; 2 uses
  %i.dn = extractvalue { double, double } %i.dm, 0 ; 2 uses
  %i.do = extractvalue { double, double } %i.dm, 1 ; 2 uses
  %i.dp = fneg double %i.ct
  %i.dq = fadd double %i.co, %i.cv                ; 2 uses
  %i.dr = fdiv double %i.dp, %i.dq                ; 3 uses
  %i.ds = fcmp olt double %i.dr, %i.dn
  br i1 %i.ds, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i, label %bb.n

bb.n:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.dt = fcmp ogt double %i.dr, %i.do
  br i1 %i.dt, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i

bb.o:                                             ; preds = %bb.n
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i: ; preds = %bb.o, %bb.n, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %.0.i35.i = phi double [ %i.dr, %bb.n ], [ %i.do, %bb.o ], [ %i.dn, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i ] ; 3 uses
  %i.du = icmp sgt i8 %i.cx, 0
  %i.dv = fcmp ogt double %.0.i.i, %.0.i35.i
  %or.cond.i = and i1 %i.du, %i.dv
  br i1 %or.cond.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i
  %i.dw = icmp slt i8 %i.cx, 0
  %i.dx = fcmp olt double %.0.i.i, %.0.i35.i
  %or.cond34.i = and i1 %i.dw, %i.dx
  br i1 %or.cond34.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dq, i64 1
  %i.ea = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %.0.i35.i, i64 1 ; 3 uses
  %i.ec = fmul <2 x double> %i.dz, %i.eb
  %i.ed = insertelement <2 x double> %i.cb, double %i.ct, i64 1
  %i.ee = fmul <2 x double> %i.ed, splat (double 2.000000e+00)
  %i.ef = fmul <2 x double> %i.eb, %i.ec
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.eb, <2 x double> %i.ef) ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1
end_hunk_15
begin_hunk_16_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
bb.h:                                             ; preds = %bb.g
  %i.bf = add i32 %i.l, %i.q
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.h, %bb.g
  %.5117.ph = phi double [ %.0112146, %bb.g ], [ %i.ar, %bb.h ], [ %.0112146, %bb.f ], [ %.0112146, %bb.c ], [ %.0112146, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105147, %bb.g ], [ %i.ao, %bb.h ], [ %.0105147, %bb.f ], [ %.0105147, %bb.c ], [ %.0105147, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098148, %bb.g ], [ %i.bc, %bb.h ], [ %.098148, %bb.f ], [ %.098148, %bb.c ], [ %.098148, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091149, %bb.g ], [ %i.am, %bb.h ], [ %.091149, %bb.f ], [ %.091149, %bb.c ], [ %.091149, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087150, %bb.g ], [ %i.bf, %bb.h ], [ %.087150, %bb.f ], [ %.087150, %bb.c ], [ %.087150, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1308

._crit_edge:                                      ; preds = %bb.i, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112146, %bb.e ], [ %.0112146, %bb.d ], [ %.5117.ph, %bb.i ] ; 5 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105147, %bb.e ], [ %.0105147, %bb.d ], [ %.5110.ph, %bb.i ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098148, %bb.e ], [ %.098148, %bb.d ], [ %.5103.ph, %bb.i ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091149, %bb.e ], [ %.091149, %bb.d ], [ %.596.ph, %bb.i ] ; 3 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087150, %bb.e ], [ %.087150, %bb.d ], [ %.5.ph, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !242, !range !231, !noundef !232
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.j, label %bb.n

bb.j:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !312
  %i.bl = fadd double %5, %i.bk
  %i.bm = fcmp ogt double %.098.lcssa, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.bn, align 4, !tbaa !406
  %i.bo = load ptr, ptr %0, align 8, !tbaa !273
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 416
  %i.bs = load double, ptr %i.br, align 8, !tbaa !377 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 424
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !401 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 408
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !378 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 720
  %i.by = load double, ptr %i.bx, align 8, !tbaa !375 ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %.0112.lcssa)
  %i.ca = fsub double %i.bz, %i.bs                ; 2 uses
  %i.cb = fcmp ogt double %i.ca, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.cb, double %i.ca, double 0.000000e+00
  %i.cc = fcmp ogt double %.0112.lcssa, 0.000000e+00
  %i.cd = zext i1 %i.cc to i32
  %i.ce = fcmp olt double %.0112.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.ce to i32
  %i.cf = add nsw i32 %.neg.i.i.i.i, %i.cd
  %i.cg = sitofp i32 %i.cf to double
  %i.ch = fneg double %i.cg
  %i.ci = fmul double %.sroa.speculated.i.i.i, %i.ch
  %i.cj = fadd double %.0105.lcssa, %i.bu
  %i.ck = fdiv double %i.ci, %i.cj                ; 4 uses
  %i.cl = fcmp ogt double %i.bw, 0.000000e+00     ; 2 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cn = fcmp ogt double %i.cm, %i.bw
  %or.cond.i.i = and i1 %i.cl, %i.cn
  br i1 %or.cond.i.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.l:                                             ; preds = %bb.k
  %i.co = fcmp ogt double %i.ck, 0.000000e+00
  %i.cp = zext i1 %i.co to i32
  %i.cq = fcmp olt double %i.ck, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.cq to i32
  %i.cr = add nsw i32 %.neg.i.i.i, %i.cp
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fmul double %i.bw, %i.cs
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.k, %bb.l
  %.0.i.i = phi double [ %i.ct, %bb.l ], [ %i.ck, %bb.k ]
  %i.cu = sitofp i32 %.091.lcssa to double
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.cw, align 8, !tbaa !334
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.cx, align 8, !tbaa !407
  %i.cy = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.cy, ptr %i.cz, align 8, !tbaa !408
  %i.da = fsub double %1, %.0112.lcssa            ; 4 uses
  %i.db = sub nsw i32 %3, %.091.lcssa             ; 2 uses
  %i.dc = tail call double @llvm.fabs.f64(double %i.da)
  %i.dd = fsub double %i.dc, %i.bs                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %.sroa.speculated.i.i.i126 = select i1 %i.de, double %i.dd, double 0.000000e+00
  %i.df = fcmp ogt double %i.da, 0.000000e+00
  %i.dg = zext i1 %i.df to i32
  %i.dh = fcmp olt double %i.da, 0.000000e+00
  %.neg.i.i.i.i127 = sext i1 %i.dh to i32
  %i.di = add nsw i32 %.neg.i.i.i.i127, %i.dg
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fneg double %i.dj
  %i.dl = fmul double %.sroa.speculated.i.i.i126, %i.dk
  %i.dm = fdiv double %i.cu, %i.by                ; 2 uses
  %i.dn = fmul double %i.dm, %.0.i.i
  %i.do = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1
  %i.dr = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bu, i64 1
  %i.ds = fadd <2 x double> %i.dq, %i.dr          ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %i.du = fdiv double %i.dn, %i.dt
  %i.dv = insertelement <2 x double> poison, double %8, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dl, i64 1
  %i.dx = fdiv <2 x double> %i.dw, %i.ds          ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 0
  %i.dz = fadd double %i.dy, %i.du
  store double %i.dz, ptr %i.cv, align 8, !tbaa !410
  %i.ea = extractelement <2 x double> %i.dx, i64 1 ; 4 uses
  %i.eb = tail call double @llvm.fabs.f64(double %i.ea)
  %i.ec = fcmp ogt double %i.eb, %i.bw
  %or.cond.i.i128 = and i1 %i.cl, %i.ec
  br i1 %or.cond.i.i128, label %bb.m, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit131

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ed = fcmp ogt double %i.ea, 0.000000e+00
  %i.ee = zext i1 %i.ed to i32
  %i.ef = fcmp olt double %i.ea, 0.000000e+00
  %.neg.i.i.i130 = sext i1 %i.ef to i32
  %i.eg = add nsw i32 %.neg.i.i.i130, %i.ee
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = fmul double %i.bw, %i.eh
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit131

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit131: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.m
  %.0.i.i129 = phi double [ %i.ei, %bb.m ], [ %i.ea, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ej = sitofp i32 %i.db to double
  %i.ek = fdiv double %i.ej, %i.by                ; 2 uses
  %i.el = fmul double %i.ek, %.0.i.i129
  %i.em = fadd double %i.ek, 1.000000e+00         ; 2 uses
  %i.en = fdiv double %i.el, %i.em
  %i.eo = fdiv double %8, %i.em
  %i.ep = fadd double %i.eo, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %i.ep, ptr %i.eq, align 8, !tbaa !411
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.db, ptr %i.er, align 4, !tbaa !335
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.da, ptr %i.es, align 8, !tbaa !412
  %i.et = fadd double %i.do, f0xBCD203AFA0000000
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.et, ptr %i.eu, align 8, !tbaa !413
  %i.ev = fsub double %.098.lcssa, %5
  store double %i.ev, ptr %i.bj, align 8, !tbaa !312
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.ew, align 8, !tbaa !313
  br label %bb.n

bb.n:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit131, %bb.j, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110165 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110165, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1309

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110165.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod216 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110165.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not169 = icmp sgt i32 %.0108, %i.i
  br i1 %.not169, label %._crit_edge, label %.lr.ph179

.lr.ph179:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = sext i32 %.0108 to i64
  %i.bd = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph179, %.thread
  %indvars.iv200 = phi i64 [ %i.bc, %.lr.ph179 ], [ %indvars.iv.next201, %.thread ] ; 5 uses
  %.2112175 = phi i32 [ %.1111, %.lr.ph179 ], [ %.3113, %.thread ] ; 2 uses
  %.0122172 = phi i32 [ %i.d, %.lr.ph179 ], [ %.5127, %.thread ] ; 6 uses
  %.0129171 = phi i32 [ 0, %.lr.ph179 ], [ %.5134, %.thread ] ; 6 uses
  %.0136170 = phi double [ -inf, %.lr.ph179 ], [ %.5141, %.thread ] ; 7 uses
  %i.be = phi <2 x double> [ splat (double +qnan), %.lr.ph179 ], [ %i.da, %.thread ] ; 6 uses
  %i.bf = phi <2 x double> [ %i.az, %.lr.ph179 ], [ %i.bu, %.thread ] ; 2 uses
  %i.bg = icmp sgt i64 %indvars.iv200, -1
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bi = trunc nsw i64 %indvars.iv200 to i32
  %i.bj = shl nuw i32 %i.bi, 1
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !295
  %i.bo = load <2 x double>, ptr %i.bl, align 8, !tbaa !295
  %i.bp = fadd <2 x double> %i.bf, %i.bo
  %i.bq = fmul double %i.f, %i.bn
  %i.br = fadd double %i.bq, 5.000000e-01
  %i.bs = fptosi double %i.br to i32
  %i.bt = add nsw i32 %.2112175, %i.bs
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.bt, %bb.e ], [ %.2112175, %bb.d ] ; 5 uses
  %i.bu = phi <2 x double> [ %i.bp, %bb.e ], [ %i.bf, %bb.d ] ; 4 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !277 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 308
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !353 ; 2 uses
  %i.ca = icmp slt i32 %.3113, %i.bz
  br i1 %i.ca, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 312
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !405 ; 2 uses
  %i.cd = extractelement <2 x double> %i.bu, i64 1 ; 3 uses
  %i.ce = fcmp olt double %i.cd, %i.cc
  br i1 %i.ce, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = sub nsw i32 %3, %.3113                  ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.bz
  br i1 %i.cg, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = fsub double %2, %i.cd                   ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cc
  br i1 %i.ci, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.ck = fsub double %1, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 416
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !377
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 424
  %i.co = load double, ptr %i.cn, align 8, !tbaa !401
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 408
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !378
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !384
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 720
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !375
  %i.cv = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cj, double noundef %i.cd, double noundef %i.ck, double noundef %i.ch, double noundef %i.cm, double noundef %i.co, double noundef %i.cq, ptr noundef %4, i8 noundef signext %i.cs, double noundef %i.cu, i32 noundef %.3113, i32 noundef %i.cf, double noundef %8) ; 3 uses
  %i.cw = fcmp ugt double %i.cv, %5
  br i1 %i.cw, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bb, align 8, !tbaa !242
  %i.cx = fcmp ogt double %i.cv, %.0136170
  br i1 %i.cx, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cy = trunc i64 %indvars.iv200 to i32
  %i.cz = add i32 %i.cy, %i.h
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.j, %bb.f, %bb.g
  %.5141 = phi double [ %.0136170, %bb.f ], [ %.0136170, %bb.g ], [ %.0136170, %bb.k ], [ %i.cv, %bb.l ], [ %.0136170, %bb.j ] ; 2 uses
  %.5134 = phi i32 [ %.0129171, %bb.f ], [ %.0129171, %bb.g ], [ %.0129171, %bb.k ], [ %.3113, %bb.l ], [ %.0129171, %bb.j ] ; 2 uses
  %.5127 = phi i32 [ %.0122172, %bb.f ], [ %.0122172, %bb.g ], [ %.0122172, %bb.k ], [ %i.cz, %bb.l ], [ %.0122172, %bb.j ] ; 2 uses
  %i.da = phi <2 x double> [ %i.be, %bb.f ], [ %i.be, %bb.g ], [ %i.be, %bb.k ], [ %i.bu, %bb.l ], [ %i.be, %bb.j ] ; 2 uses
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1
  %.not.not = icmp slt i64 %indvars.iv200, %i.bd
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1310

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0136.lcssa = phi double [ -inf, %.loopexit ], [ %.0136170, %bb.h ], [ %.0136170, %bb.i ], [ %.5141, %.thread ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %.loopexit ], [ %.0129171, %bb.h ], [ %.0129171, %bb.i ], [ %.5134, %.thread ] ; 3 uses
  %.0122.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0122172, %bb.h ], [ %.0122172, %bb.i ], [ %.5127, %.thread ]
  %i.db = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.be, %bb.h ], [ %i.be, %bb.i ], [ %i.da, %.thread ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !242, !range !231, !noundef !232
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.m, label %bb.q

bb.m:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !312
  %i.dh = fadd double %5, %i.dg
  %i.di = fcmp ogt double %.0136.lcssa, %i.dh
  br i1 %i.di, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0122.lcssa, ptr %i.dj, align 4, !tbaa !406
  %i.dk = load ptr, ptr %0, align 8, !tbaa !273
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !277 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 416
  %i.do = load double, ptr %i.dn, align 8, !tbaa !377 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 424
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !401 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 408
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !378 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 720
  %i.du = load double, ptr %i.dt, align 8, !tbaa !375 ; 2 uses
  %i.dv = extractelement <2 x double> %i.db, i64 0 ; 3 uses
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fsub double %i.dw, %i.do                ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dy, double %i.dx, double 0.000000e+00
  %i.dz = fcmp ogt double %i.dv, 0.000000e+00
  %i.ea = zext i1 %i.dz to i32
  %i.eb = fcmp olt double %i.dv, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.eb to i32
  %i.ec = add nsw i32 %.neg.i.i.i.i, %i.ea
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fneg double %i.ed
  %i.ef = fmul double %.sroa.speculated.i.i.i, %i.ee
  %i.eg = extractelement <2 x double> %i.db, i64 1
end_hunk_16
begin_hunk_17_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.co = insertelement <2 x double> poison, double %i.be, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.bz, i64 1
  %i.cq = fmul <2 x double> %i.cn, %i.cp
  %i.cr = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cc, i64 1
  %i.ct = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %.0.i.i18.i, i64 1 ; 3 uses
  %i.cv = fmul <2 x double> %i.cs, %i.cu
  %i.cw = fmul <2 x double> %i.cq, splat (double 2.000000e+00)
  %i.cx = fmul <2 x double> %i.cu, %i.cv
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cu, <2 x double> %i.cx) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 1
  %i.da = fneg double %i.cz
  %i.db = extractelement <2 x double> %i.cy, i64 0
  %i.dc = fsub double %i.da, %i.db                ; 3 uses
  %i.dd = fcmp ugt double %i.dc, %5
  br i1 %i.dd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.t, align 8, !tbaa !242
  %i.de = fcmp ogt double %i.dc, %.098149
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.df = add i32 %i.u, %i.y
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.j, %bb.i
  %.5117.ph = phi double [ %.0112147, %bb.i ], [ %i.at, %bb.j ], [ %.0112147, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0112147, %bb.c ], [ %.0112147, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105148, %bb.i ], [ %i.aq, %bb.j ], [ %.0105148, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0105148, %bb.c ], [ %.0105148, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098149, %bb.i ], [ %i.dc, %bb.j ], [ %.098149, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.098149, %bb.c ], [ %.098149, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091150, %bb.i ], [ %i.ao, %bb.j ], [ %.091150, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.091150, %bb.c ], [ %.091150, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087151, %bb.i ], [ %i.df, %bb.j ], [ %.087151, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.087151, %bb.c ], [ %.087151, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.w
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1351

._crit_edge:                                      ; preds = %bb.k, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112147, %bb.e ], [ %.0112147, %bb.d ], [ %.5117.ph, %bb.k ] ; 5 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105148, %bb.e ], [ %.0105148, %bb.d ], [ %.5110.ph, %bb.k ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098149, %bb.e ], [ %.098149, %bb.d ], [ %.5103.ph, %bb.k ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091150, %bb.e ], [ %.091150, %bb.d ], [ %.596.ph, %bb.k ] ; 2 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087151, %bb.e ], [ %.087151, %bb.d ], [ %.5.ph, %bb.k ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !242, !range !231, !noundef !232
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.l, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !312
  %i.dl = fadd double %5, %i.dk
  %i.dm = fcmp ogt double %.098.lcssa, %i.dl
  br i1 %i.dm, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.dn, align 4, !tbaa !406
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !277 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 416
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !377 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 424
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !401 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 408
  %i.dv = load double, ptr %i.du, align 8, !tbaa !378 ; 5 uses
  %i.dw = tail call double @llvm.fabs.f64(double %.0112.lcssa)
  %i.dx = fsub double %i.dw, %i.dr                ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dy, double %i.dx, double 0.000000e+00
  %i.dz = fcmp ogt double %.0112.lcssa, 0.000000e+00
  %i.ea = zext i1 %i.dz to i32
  %i.eb = fcmp olt double %.0112.lcssa, 0.000000e+00
  %.neg.i.i.i.i126 = sext i1 %i.eb to i32
  %i.ec = add nsw i32 %.neg.i.i.i.i126, %i.ea
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fneg double %i.ed
  %i.ef = fmul double %.sroa.speculated.i.i.i, %i.ee
  %i.eg = fadd double %.0105.lcssa, %i.dt
  %i.eh = fdiv double %i.ef, %i.eg                ; 4 uses
  %i.ei = fcmp ogt double %i.dv, 0.000000e+00     ; 2 uses
  %i.ej = tail call double @llvm.fabs.f64(double %i.eh)
  %i.ek = fcmp ogt double %i.ej, %i.dv
  %or.cond.i.i = and i1 %i.ei, %i.ek
  br i1 %or.cond.i.i, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.n:                                             ; preds = %bb.m
  %i.el = fcmp ogt double %i.eh, 0.000000e+00
  %i.em = zext i1 %i.el to i32
  %i.en = fcmp olt double %i.eh, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.en to i32
  %i.eo = add nsw i32 %.neg.i.i.i, %i.em
  %i.ep = sitofp i32 %i.eo to double
  %i.eq = fmul double %i.dv, %i.ep
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.m, %bb.n
  %.0.i.i = phi double [ %i.eq, %bb.n ], [ %i.eh, %bb.m ]
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i.i, ptr %i.er, align 8, !tbaa !410
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.es, align 8, !tbaa !334
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.et, align 8, !tbaa !407
  %i.eu = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.eu, ptr %i.ev, align 8, !tbaa !408
  %i.ew = fsub double %1, %.0112.lcssa            ; 4 uses
  %i.ex = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.ey = sub nsw i32 %3, %.091.lcssa
  %i.ez = tail call double @llvm.fabs.f64(double %i.ew)
  %i.fa = fsub double %i.ez, %i.dr                ; 2 uses
  %i.fb = fcmp ogt double %i.fa, 0.000000e+00
  %.sroa.speculated.i.i.i127 = select i1 %i.fb, double %i.fa, double 0.000000e+00
  %i.fc = fcmp ogt double %i.ew, 0.000000e+00
  %i.fd = zext i1 %i.fc to i32
  %i.fe = fcmp olt double %i.ew, 0.000000e+00
  %.neg.i.i.i.i128 = sext i1 %i.fe to i32
  %i.ff = add nsw i32 %.neg.i.i.i.i128, %i.fd
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = fneg double %i.fg
  %i.fi = fmul double %.sroa.speculated.i.i.i127, %i.fh
  %i.fj = fadd double %i.ex, %i.dt
  %i.fk = fdiv double %i.fi, %i.fj                ; 4 uses
  %i.fl = tail call double @llvm.fabs.f64(double %i.fk)
  %i.fm = fcmp ogt double %i.fl, %i.dv
  %or.cond.i.i129 = and i1 %i.ei, %i.fm
  br i1 %or.cond.i.i129, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit132

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fn = fcmp ogt double %i.fk, 0.000000e+00
  %i.fo = zext i1 %i.fn to i32
  %i.fp = fcmp olt double %i.fk, 0.000000e+00
  %.neg.i.i.i131 = sext i1 %i.fp to i32
  %i.fq = add nsw i32 %.neg.i.i.i131, %i.fo
  %i.fr = sitofp i32 %i.fq to double
  %i.fs = fmul double %i.dv, %i.fr
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit132

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit132: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.o
  %.0.i.i130 = phi double [ %i.fs, %bb.o ], [ %i.fk, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i.i130, ptr %i.ft, align 8, !tbaa !411
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ey, ptr %i.fu, align 4, !tbaa !335
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ew, ptr %i.fv, align 8, !tbaa !412
  %i.fw = fadd double %i.ex, f0xBCD203AFA0000000
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fw, ptr %i.fx, align 8, !tbaa !413
  %i.fy = fsub double %.098.lcssa, %5
  store double %i.fy, ptr %i.dj, align 8, !tbaa !312
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fz, align 8, !tbaa !313
  br label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit132, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110166 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110166, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1352

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110166.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110166.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not170 = icmp sgt i32 %.0108, %i.i
  br i1 %.not170, label %._crit_edge, label %.lr.ph180

.lr.ph180:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = sext i32 %.0108 to i64
  %i.bl = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph180, %.thread
  %indvars.iv201 = phi i64 [ %i.bk, %.lr.ph180 ], [ %indvars.iv.next202, %.thread ] ; 5 uses
  %.2112176 = phi i32 [ %.1111, %.lr.ph180 ], [ %.3113, %.thread ] ; 2 uses
  %.0122173 = phi i32 [ %i.d, %.lr.ph180 ], [ %.5127, %.thread ] ; 6 uses
  %.0129172 = phi i32 [ 0, %.lr.ph180 ], [ %.5134, %.thread ] ; 6 uses
  %.0136171 = phi double [ -inf, %.lr.ph180 ], [ %.5141, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ splat (double +qnan), %.lr.ph180 ], [ %i.fa, %.thread ] ; 6 uses
  %i.bn = phi <2 x double> [ %i.az, %.lr.ph180 ], [ %i.cc, %.thread ] ; 2 uses
  %i.bo = icmp sgt i64 %indvars.iv201, -1
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bq = trunc nsw i64 %indvars.iv201 to i32
  %i.br = shl nuw i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !295
  %i.bw = load <2 x double>, ptr %i.bt, align 8, !tbaa !295
  %i.bx = fadd <2 x double> %i.bn, %i.bw
  %i.by = fmul double %i.f, %i.bv
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = fptosi double %i.bz to i32
  %i.cb = add nsw i32 %.2112176, %i.ca
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.cb, %bb.e ], [ %.2112176, %bb.d ] ; 4 uses
  %i.cc = phi <2 x double> [ %i.bx, %bb.e ], [ %i.bn, %bb.d ] ; 4 uses
  %i.cd = icmp slt i32 %.3113, %i.be
  br i1 %i.cd, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cf = extractelement <2 x double> %i.cc, i64 1 ; 3 uses
  %i.cg = fcmp olt double %i.cf, %i.ce
  br i1 %i.cg, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = sub nsw i32 %3, %.3113
  %i.ci = icmp slt i32 %i.ch, %i.be
  br i1 %i.ci, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = fsub double %2, %i.cf                   ; 2 uses
  %i.ck = fcmp olt double %i.cj, %i.ce
  br i1 %i.ck, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = extractelement <2 x double> %i.cc, i64 0 ; 4 uses
  %i.cm = fsub double %1, %i.cl                   ; 3 uses
  %i.cn = load double, ptr %i.bg, align 8, !tbaa !377 ; 2 uses
  %i.co = load double, ptr %i.bh, align 8, !tbaa !401 ; 2 uses
  %i.cp = load double, ptr %i.bi, align 8, !tbaa !378 ; 5 uses
  %i.cq = tail call double @llvm.fabs.f64(double %i.cl)
  %i.cr = fsub double %i.cq, %i.cn                ; 2 uses
  %i.cs = fcmp ogt double %i.cr, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.cs, double %i.cr, double 0.000000e+00 ; 2 uses
  %i.ct = fcmp ogt double %i.cl, 0.000000e+00
  %i.cu = zext i1 %i.ct to i32
  %i.cv = fcmp olt double %i.cl, 0.000000e+00
  %.neg.i.i.i.i.i = sext i1 %i.cv to i32
  %i.cw = add nsw i32 %.neg.i.i.i.i.i, %i.cu
  %i.cx = sitofp i32 %i.cw to double              ; 2 uses
  %i.cy = fneg double %i.cx
  %i.cz = fmul double %.sroa.speculated.i.i.i.i, %i.cy
  %i.da = fadd double %i.cf, %i.co                ; 2 uses
  %i.db = fdiv double %i.cz, %i.da                ; 4 uses
  %i.dc = fcmp ogt double %i.cp, 0.000000e+00     ; 2 uses
  %i.dd = tail call double @llvm.fabs.f64(double %i.db)
  %i.de = fcmp ogt double %i.dd, %i.cp
  %or.cond.i.i.i = and i1 %i.dc, %i.de
  br i1 %or.cond.i.i.i, label %bb.k, label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i

bb.k:                                             ; preds = %bb.j
  %i.df = fcmp ogt double %i.db, 0.000000e+00
  %i.dg = zext i1 %i.df to i32
  %i.dh = fcmp olt double %i.db, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.dh to i32
  %i.di = add nsw i32 %.neg.i.i.i.i, %i.dg
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fmul double %i.cp, %i.dj
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi double [ %i.dk, %bb.k ], [ %i.db, %bb.j ]
  %i.dl = tail call double @llvm.fabs.f64(double %i.cm)
  %i.dm = fsub double %i.dl, %i.cn                ; 2 uses
  %i.dn = fcmp ogt double %i.dm, 0.000000e+00
  %.sroa.speculated.i.i.i15.i = select i1 %i.dn, double %i.dm, double 0.000000e+00 ; 2 uses
  %i.do = fcmp ogt double %i.cm, 0.000000e+00
  %i.dp = zext i1 %i.do to i32
  %i.dq = fcmp olt double %i.cm, 0.000000e+00
  %.neg.i.i.i.i16.i = sext i1 %i.dq to i32
  %i.dr = add nsw i32 %.neg.i.i.i.i16.i, %i.dp
  %i.ds = sitofp i32 %i.dr to double              ; 2 uses
  %i.dt = fneg double %i.ds
  %i.du = fmul double %.sroa.speculated.i.i.i15.i, %i.dt
  %i.dv = fadd double %i.cj, %i.co                ; 2 uses
  %i.dw = fdiv double %i.du, %i.dv                ; 4 uses
  %i.dx = tail call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp ogt double %i.dx, %i.cp
  %or.cond.i.i17.i = and i1 %i.dc, %i.dy
  br i1 %or.cond.i.i17.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.l:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i
  %i.dz = fcmp ogt double %i.dw, 0.000000e+00
  %i.ea = zext i1 %i.dz to i32
  %i.eb = fcmp olt double %i.dw, 0.000000e+00
  %.neg.i.i.i19.i = sext i1 %i.eb to i32
  %i.ec = add nsw i32 %.neg.i.i.i19.i, %i.ea
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fmul double %i.cp, %i.ed
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i, %bb.l
  %.0.i.i18.i = phi double [ %i.ee, %bb.l ], [ %i.dw, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb1ELb1ELb0EEEdddddddid.exit.i ]
  %i.ef = insertelement <2 x double> poison, double %.sroa.speculated.i.i.i.i, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %.sroa.speculated.i.i.i15.i, i64 1
  %i.eh = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ds, i64 1
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.da, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.dv, i64 1
  %i.em = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.en = insertelement <2 x double> %i.em, double %.0.i.i18.i, i64 1 ; 3 uses
  %i.eo = fmul <2 x double> %i.el, %i.en
end_hunk_17
begin_hunk_18_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.au = load double, ptr %i.q, align 8, !tbaa !377
  %i.av = load double, ptr %i.r, align 8, !tbaa !401
  %i.aw = load double, ptr %i.s, align 8, !tbaa !375
  %i.ax = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.ay = insertelement <2 x i32> %i.ax, i32 %i.al, i64 1
  %i.az = sitofp <2 x i32> %i.ay to <2 x double>
  %i.ba = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.aj, i64 1 ; 3 uses
  %i.bc = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bb)
  %i.bd = insertelement <2 x double> poison, double %i.au, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fsub <2 x double> %i.bc, %i.be          ; 2 uses
  %i.bg = fcmp ogt <2 x double> %i.bf, zeroinitializer
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.bf, <2 x double> zeroinitializer ; 2 uses
  %i.bi = fcmp ogt <2 x double> %i.bb, zeroinitializer
  %i.bj = zext <2 x i1> %i.bi to <2 x i8>
  %i.bk = fcmp olt <2 x double> %i.bb, zeroinitializer
  %i.bl = sext <2 x i1> %i.bk to <2 x i8>
  %i.bm = add nsw <2 x i8> %i.bl, %i.bj
  %i.bn = sitofp <2 x i8> %i.bm to <2 x double>   ; 2 uses
  %i.bo = fneg <2 x double> %i.bn
  %i.bp = fmul <2 x double> %i.bh, %i.bo
  %i.bq = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.ak, i64 1
  %i.bs = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fadd <2 x double> %i.br, %i.bt          ; 2 uses
  %i.bv = fdiv <2 x double> %i.bp, %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x double> %i.az, %i.bx          ; 2 uses
  %i.bz = fmul <2 x double> %i.by, %i.bv
  %i.ca = fadd <2 x double> %i.by, splat (double 1.000000e+00) ; 2 uses
  %i.cb = fdiv <2 x double> %i.bz, %i.ca
  %i.cc = fdiv <2 x double> %i.y, %i.ca
  %i.cd = fadd <2 x double> %i.cc, %i.cb          ; 3 uses
  %i.ce = fmul <2 x double> %i.bh, %i.bn
  %i.cf = fmul <2 x double> %i.ce, splat (double 2.000000e+00)
  %i.cg = fmul <2 x double> %i.bu, %i.cd
  %i.ch = fmul <2 x double> %i.cd, %i.cg
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cd, <2 x double> %i.ch) ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 1
  %i.ck = fneg double %i.cj
  %i.cl = extractelement <2 x double> %i.ci, i64 0
  %i.cm = fsub double %i.ck, %i.cl                ; 3 uses
  %i.cn = fcmp ugt double %i.cm, %5
  br i1 %i.cn, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.t, align 8, !tbaa !242
  %i.co = fcmp ogt double %i.cm, %.098144
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cp = add i32 %i.u, %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.h, %bb.g
  %.5117.ph = phi double [ %.0112142, %bb.g ], [ %i.at, %bb.h ], [ %.0112142, %bb.f ], [ %.0112142, %bb.c ], [ %.0112142, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105143, %bb.g ], [ %i.ar, %bb.h ], [ %.0105143, %bb.f ], [ %.0105143, %bb.c ], [ %.0105143, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098144, %bb.g ], [ %i.cm, %bb.h ], [ %.098144, %bb.f ], [ %.098144, %bb.c ], [ %.098144, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091145, %bb.g ], [ %i.ap, %bb.h ], [ %.091145, %bb.f ], [ %.091145, %bb.c ], [ %.091145, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087146, %bb.g ], [ %i.cp, %bb.h ], [ %.087146, %bb.f ], [ %.087146, %bb.c ], [ %.087146, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.w
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1394

._crit_edge:                                      ; preds = %bb.i, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112142, %bb.e ], [ %.0112142, %bb.d ], [ %.5117.ph, %bb.i ] ; 3 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105143, %bb.e ], [ %.0105143, %bb.d ], [ %.5110.ph, %bb.i ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098144, %bb.e ], [ %.098144, %bb.d ], [ %.5103.ph, %bb.i ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091145, %bb.e ], [ %.091145, %bb.d ], [ %.596.ph, %bb.i ] ; 3 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087146, %bb.e ], [ %.087146, %bb.d ], [ %.5.ph, %bb.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !312
  %i.cv = fadd double %5, %i.cu
  %i.cw = fcmp ogt double %.098.lcssa, %i.cv
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.cx, align 4, !tbaa !406
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !277 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 416
  %i.db = load double, ptr %i.da, align 8, !tbaa !377
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 424
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !401
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 720
  %i.df = load double, ptr %i.de, align 8, !tbaa !375
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.dh, align 8, !tbaa !334
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.di, align 8, !tbaa !407
  %i.dj = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dj, ptr %i.dk, align 8, !tbaa !408
  %i.dl = fsub double %1, %.0112.lcssa            ; 2 uses
  %i.dm = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.dn = sub nsw i32 %3, %.091.lcssa             ; 2 uses
  %i.do = insertelement <2 x double> poison, double %.0112.lcssa, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dl, i64 1 ; 3 uses
  %i.dq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dp)
  %i.dr = insertelement <2 x double> poison, double %i.db, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fsub <2 x double> %i.dq, %i.ds          ; 2 uses
  %i.du = fcmp ogt <2 x double> %i.dt, zeroinitializer
  %i.dv = select <2 x i1> %i.du, <2 x double> %i.dt, <2 x double> zeroinitializer
  %i.dw = fcmp ogt <2 x double> %i.dp, zeroinitializer
  %i.dx = zext <2 x i1> %i.dw to <2 x i8>
  %i.dy = fcmp olt <2 x double> %i.dp, zeroinitializer
  %i.dz = sext <2 x i1> %i.dy to <2 x i8>
  %i.ea = add nsw <2 x i8> %i.dz, %i.dx
  %i.eb = sitofp <2 x i8> %i.ea to <2 x double>
  %i.ec = fneg <2 x double> %i.eb
  %i.ed = fmul <2 x double> %i.dv, %i.ec
  %i.ee = insertelement <2 x double> poison, double %.0105.lcssa, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.dm, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fadd <2 x double> %i.ef, %i.eh
  %i.ej = fdiv <2 x double> %i.ed, %i.ei
  %i.ek = insertelement <2 x i32> poison, i32 %.091.lcssa, i64 0
  %i.el = insertelement <2 x i32> %i.ek, i32 %i.dn, i64 1
  %i.em = sitofp <2 x i32> %i.el to <2 x double>
  %i.en = insertelement <2 x double> poison, double %i.df, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.em, %i.eo          ; 2 uses
  %i.eq = fmul <2 x double> %i.ep, %i.ej
  %i.er = fadd <2 x double> %i.ep, splat (double 1.000000e+00) ; 2 uses
  %i.es = fdiv <2 x double> %i.eq, %i.er
  %i.et = insertelement <2 x double> poison, double %8, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fdiv <2 x double> %i.eu, %i.er
  %i.ew = fadd <2 x double> %i.ev, %i.es
  store <2 x double> %i.ew, ptr %i.dg, align 8, !tbaa !295
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.dn, ptr %i.ex, align 4, !tbaa !335
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.dl, ptr %i.ey, align 8, !tbaa !412
  %i.ez = fadd double %i.dm, f0xBCD203AFA0000000
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ez, ptr %i.fa, align 8, !tbaa !413
  %i.fb = fsub double %.098.lcssa, %5
  store double %i.fb, ptr %i.ct, align 8, !tbaa !312
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fc, align 8, !tbaa !313
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110161 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110161, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1395

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110161.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod211 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod211)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110161.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not165 = icmp sgt i32 %.0108, %i.i
  br i1 %.not165, label %._crit_edge, label %.lr.ph175

.lr.ph175:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 720
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = sext i32 %.0108 to i64
  %i.bl = sext i32 %i.i to i64
  %i.bm = insertelement <2 x double> poison, double %8, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph175, %.thread
  %indvars.iv196 = phi i64 [ %i.bk, %.lr.ph175 ], [ %indvars.iv.next197, %.thread ] ; 5 uses
  %.2112171 = phi i32 [ %.1111, %.lr.ph175 ], [ %.3113, %.thread ] ; 2 uses
  %.0122168 = phi i32 [ %i.d, %.lr.ph175 ], [ %.5127, %.thread ] ; 6 uses
  %.0129167 = phi i32 [ 0, %.lr.ph175 ], [ %.5134, %.thread ] ; 6 uses
  %.0136166 = phi double [ -inf, %.lr.ph175 ], [ %.5141, %.thread ] ; 7 uses
  %i.bo = phi <2 x double> [ splat (double +qnan), %.lr.ph175 ], [ %i.el, %.thread ] ; 6 uses
  %i.bp = phi <2 x double> [ %i.az, %.lr.ph175 ], [ %i.ce, %.thread ] ; 2 uses
  %i.bq = icmp sgt i64 %indvars.iv196, -1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bs = trunc nsw i64 %indvars.iv196 to i32
  %i.bt = shl nuw i32 %i.bs, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !295
  %i.by = load <2 x double>, ptr %i.bv, align 8, !tbaa !295
  %i.bz = fadd <2 x double> %i.bp, %i.by
  %i.ca = fmul double %i.f, %i.bx
  %i.cb = fadd double %i.ca, 5.000000e-01
  %i.cc = fptosi double %i.cb to i32
  %i.cd = add nsw i32 %.2112171, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.cd, %bb.e ], [ %.2112171, %bb.d ] ; 5 uses
  %i.ce = phi <2 x double> [ %i.bz, %bb.e ], [ %i.bp, %bb.d ] ; 6 uses
  %i.cf = icmp slt i32 %.3113, %i.be
  br i1 %i.cf, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.ch = extractelement <2 x double> %i.ce, i64 1 ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cg
  br i1 %i.ci, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = sub nsw i32 %3, %.3113                  ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.be
  br i1 %i.ck, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = fsub double %2, %i.ch                   ; 2 uses
  %i.cm = fcmp olt double %i.cl, %i.cg
  br i1 %i.cm, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = extractelement <2 x double> %i.ce, i64 0
  %i.co = fsub double %1, %i.cn
  %i.cp = load double, ptr %i.bg, align 8, !tbaa !377
  %i.cq = load double, ptr %i.bh, align 8, !tbaa !401
  %i.cr = load double, ptr %i.bi, align 8, !tbaa !375
  %i.cs = insertelement <2 x i32> poison, i32 %.3113, i64 0
  %i.ct = insertelement <2 x i32> %i.cs, i32 %i.cj, i64 1
  %i.cu = sitofp <2 x i32> %i.ct to <2 x double>
  %i.cv = insertelement <2 x double> %i.ce, double %i.co, i64 1 ; 3 uses
  %i.cw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cv)
  %i.cx = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fsub <2 x double> %i.cw, %i.cy          ; 2 uses
  %i.da = fcmp ogt <2 x double> %i.cz, zeroinitializer
  %i.db = select <2 x i1> %i.da, <2 x double> %i.cz, <2 x double> zeroinitializer ; 2 uses
  %i.dc = fcmp ogt <2 x double> %i.cv, zeroinitializer
  %i.dd = zext <2 x i1> %i.dc to <2 x i8>
  %i.de = fcmp olt <2 x double> %i.cv, zeroinitializer
  %i.df = sext <2 x i1> %i.de to <2 x i8>
  %i.dg = add nsw <2 x i8> %i.df, %i.dd
  %i.dh = sitofp <2 x i8> %i.dg to <2 x double>   ; 2 uses
  %i.di = fneg <2 x double> %i.dh
  %i.dj = fmul <2 x double> %i.db, %i.di
  %i.dk = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dl = insertelement <2 x double> %i.dk, double %i.cl, i64 1
  %i.dm = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x double> %i.dl, %i.dn          ; 2 uses
  %i.dp = fdiv <2 x double> %i.dj, %i.do
  %i.dq = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fdiv <2 x double> %i.cu, %i.dr          ; 2 uses
  %i.dt = fmul <2 x double> %i.ds, %i.dp
  %i.du = fadd <2 x double> %i.ds, splat (double 1.000000e+00) ; 2 uses
  %i.dv = fdiv <2 x double> %i.dt, %i.du
  %i.dw = fdiv <2 x double> %i.bn, %i.du
  %i.dx = fadd <2 x double> %i.dw, %i.dv          ; 3 uses
  %i.dy = fmul <2 x double> %i.db, %i.dh
  %i.dz = fmul <2 x double> %i.dy, splat (double 2.000000e+00)
  %i.ea = fmul <2 x double> %i.do, %i.dx
  %i.eb = fmul <2 x double> %i.dx, %i.ea
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dx, <2 x double> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 1
  %i.ee = fneg double %i.ed
  %i.ef = extractelement <2 x double> %i.ec, i64 0
  %i.eg = fsub double %i.ee, %i.ef                ; 3 uses
  %i.eh = fcmp ugt double %i.eg, %5
  br i1 %i.eh, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bj, align 8, !tbaa !242
  %i.ei = fcmp ogt double %i.eg, %.0136166
  br i1 %i.ei, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ej = trunc i64 %indvars.iv196 to i32
  %i.ek = add i32 %i.ej, %i.h
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.j, %bb.f, %bb.g
  %.5141 = phi double [ %.0136166, %bb.f ], [ %.0136166, %bb.g ], [ %.0136166, %bb.k ], [ %i.eg, %bb.l ], [ %.0136166, %bb.j ] ; 2 uses
  %.5134 = phi i32 [ %.0129167, %bb.f ], [ %.0129167, %bb.g ], [ %.0129167, %bb.k ], [ %.3113, %bb.l ], [ %.0129167, %bb.j ] ; 2 uses
  %.5127 = phi i32 [ %.0122168, %bb.f ], [ %.0122168, %bb.g ], [ %.0122168, %bb.k ], [ %i.ek, %bb.l ], [ %.0122168, %bb.j ] ; 2 uses
  %i.el = phi <2 x double> [ %i.bo, %bb.f ], [ %i.bo, %bb.g ], [ %i.bo, %bb.k ], [ %i.ce, %bb.l ], [ %i.bo, %bb.j ] ; 2 uses
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, 1
  %.not.not = icmp slt i64 %indvars.iv196, %i.bl
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1396

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0136.lcssa = phi double [ -inf, %.loopexit ], [ %.0136166, %bb.h ], [ %.0136166, %bb.i ], [ %.5141, %.thread ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %.loopexit ], [ %.0129167, %bb.h ], [ %.0129167, %bb.i ], [ %.5134, %.thread ] ; 3 uses
  %.0122.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0122168, %bb.h ], [ %.0122168, %bb.i ], [ %.5127, %.thread ]
  %i.em = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bo, %bb.h ], [ %i.bo, %bb.i ], [ %i.el, %.thread ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !242, !range !231, !noundef !232
  %i.ep = trunc nuw i8 %i.eo to i1
end_hunk_18
begin_hunk_19_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.084151 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.i ]
  %.085150 = phi double [ f0x3CD203AFA0000000, %.lr.ph ], [ %i.ag, %bb.i ]
  %.086149 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.af, %bb.i ]
  %.087148 = phi i32 [ %i.d, %.lr.ph ], [ %.5.ph, %bb.i ] ; 6 uses
  %.091147 = phi i32 [ 0, %.lr.ph ], [ %.596.ph, %bb.i ] ; 6 uses
  %.098146 = phi double [ -inf, %.lr.ph ], [ %.5103.ph, %bb.i ] ; 7 uses
  %.0105145 = phi double [ +qnan, %.lr.ph ], [ %.5110.ph, %bb.i ] ; 6 uses
  %.0112144 = phi double [ +qnan, %.lr.ph ], [ %.5117.ph, %bb.i ] ; 6 uses
  %i.v = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.w = shl i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !295
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !295 ; 2 uses
  %i.ac = fmul double %i.f, %i.ab
  %i.ad = fadd double %i.ac, 5.000000e-01
  %i.ae = fptosi double %i.ad to i32
  %i.af = fadd double %.086149, %i.z              ; 3 uses
  %i.ag = fadd double %.085150, %i.ab             ; 4 uses
  %i.ah = add nsw i32 %.084151, %i.ae             ; 3 uses
  %i.ai = icmp slt i32 %i.ah, %i.o
  br i1 %i.ai, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load double, ptr %i.p, align 8, !tbaa !405 ; 2 uses
  %i.ak = fcmp olt double %i.ag, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = sub nsw i32 %3, %i.ah                   ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.o
  br i1 %i.am, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = fsub double %2, %i.ag                   ; 3 uses
  %i.ao = fcmp olt double %i.an, %i.aj
  br i1 %i.ao, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fsub double %1, %i.af                   ; 2 uses
  %i.aq = load <2 x double>, ptr %i.q, align 8, !tbaa !295 ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.af, i64 1 ; 3 uses
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x double> %i.at, %i.au          ; 2 uses
  %i.aw = fcmp ogt <2 x double> %i.av, zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x double> %i.av, <2 x double> zeroinitializer
  %i.ay = fcmp ogt <2 x double> %i.as, zeroinitializer
  %i.az = zext <2 x i1> %i.ay to <2 x i8>
  %i.ba = fcmp olt <2 x double> %i.as, zeroinitializer
  %i.bb = sext <2 x i1> %i.ba to <2 x i8>
  %i.bc = add nsw <2 x i8> %i.bb, %i.az
  %i.bd = sitofp <2 x i8> %i.bc to <2 x double>
  %i.be = fmul <2 x double> %i.ax, %i.bd          ; 2 uses
  %i.bf = fmul <2 x double> %i.be, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.an, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.ag, i64 1
  %i.bi = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fadd <2 x double> %i.bh, %i.bi
  %i.bk = fdiv <2 x double> %i.bf, %i.bj
  %i.bl = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bk) ; 3 uses
  %i.bm = fcmp ugt double %i.bl, %5
  br i1 %i.bm, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.r, align 8, !tbaa !242
  %i.bn = fcmp ogt double %i.bl, %.098146
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = add i32 %i.s, %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.h, %bb.g
  %.5117.ph = phi double [ %.0112144, %bb.g ], [ %i.ap, %bb.h ], [ %.0112144, %bb.f ], [ %.0112144, %bb.c ], [ %.0112144, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105145, %bb.g ], [ %i.an, %bb.h ], [ %.0105145, %bb.f ], [ %.0105145, %bb.c ], [ %.0105145, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098146, %bb.g ], [ %i.bl, %bb.h ], [ %.098146, %bb.f ], [ %.098146, %bb.c ], [ %.098146, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091147, %bb.g ], [ %i.al, %bb.h ], [ %.091147, %bb.f ], [ %.091147, %bb.c ], [ %.091147, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087148, %bb.g ], [ %i.bo, %bb.h ], [ %.087148, %bb.f ], [ %.087148, %bb.c ], [ %.087148, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1437

._crit_edge:                                      ; preds = %bb.i, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112144, %bb.e ], [ %.0112144, %bb.d ], [ %.5117.ph, %bb.i ] ; 3 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105145, %bb.e ], [ %.0105145, %bb.d ], [ %.5110.ph, %bb.i ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098146, %bb.e ], [ %.098146, %bb.d ], [ %.5103.ph, %bb.i ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091147, %bb.e ], [ %.091147, %bb.d ], [ %.596.ph, %bb.i ] ; 2 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087148, %bb.e ], [ %.087148, %bb.d ], [ %.5.ph, %bb.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !242, !range !231, !noundef !232
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !312
  %i.bu = fadd double %5, %i.bt
  %i.bv = fcmp ogt double %.098.lcssa, %i.bu
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.bw, align 4, !tbaa !406
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !277
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 416
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.cb, align 8, !tbaa !334
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.cc, align 8, !tbaa !407
  %i.cd = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.cd, ptr %i.ce, align 8, !tbaa !408
  %i.cf = fsub double %1, %.0112.lcssa            ; 2 uses
  %i.cg = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.ch = sub nsw i32 %3, %.091.lcssa
  %i.ci = load <2 x double>, ptr %i.bz, align 8, !tbaa !295 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %.0112.lcssa, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.cf, i64 1 ; 3 uses
  %i.cl = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ck)
  %i.cm = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fsub <2 x double> %i.cl, %i.cm          ; 2 uses
  %i.co = fcmp ogt <2 x double> %i.cn, zeroinitializer
  %i.cp = select <2 x i1> %i.co, <2 x double> %i.cn, <2 x double> zeroinitializer
  %i.cq = fcmp ogt <2 x double> %i.ck, zeroinitializer
  %i.cr = zext <2 x i1> %i.cq to <2 x i8>
  %i.cs = fcmp olt <2 x double> %i.ck, zeroinitializer
  %i.ct = sext <2 x i1> %i.cs to <2 x i8>
  %i.cu = add nsw <2 x i8> %i.ct, %i.cr
  %i.cv = sitofp <2 x i8> %i.cu to <2 x double>
  %i.cw = fneg <2 x double> %i.cv
  %i.cx = fmul <2 x double> %i.cp, %i.cw
  %i.cy = insertelement <2 x double> poison, double %.0105.lcssa, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cg, i64 1
  %i.da = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fadd <2 x double> %i.cz, %i.da
  %i.dc = fdiv <2 x double> %i.cx, %i.db
  store <2 x double> %i.dc, ptr %i.ca, align 8, !tbaa !295
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ch, ptr %i.dd, align 4, !tbaa !335
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.cf, ptr %i.de, align 8, !tbaa !412
  %i.df = fadd double %i.cg, f0xBCD203AFA0000000
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.df, ptr %i.dg, align 8, !tbaa !413
  %i.dh = fsub double %.098.lcssa, %5
  store double %i.dh, ptr %i.bs, align 8, !tbaa !312
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.di, align 8, !tbaa !313
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb1ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110163 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110163, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1438

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110163.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod212 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110163.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not167 = icmp sgt i32 %.0108, %i.i
  br i1 %.not167, label %._crit_edge, label %.lr.ph177

.lr.ph177:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = sext i32 %.0108 to i64
  %i.bj = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph177, %.thread
  %indvars.iv198 = phi i64 [ %i.bi, %.lr.ph177 ], [ %indvars.iv.next199, %.thread ] ; 5 uses
  %.2112173 = phi i32 [ %.1111, %.lr.ph177 ], [ %.3113, %.thread ] ; 2 uses
  %.0122170 = phi i32 [ %i.d, %.lr.ph177 ], [ %.5127, %.thread ] ; 6 uses
  %.0129169 = phi i32 [ 0, %.lr.ph177 ], [ %.5134, %.thread ] ; 6 uses
  %.0136168 = phi double [ -inf, %.lr.ph177 ], [ %.5141, %.thread ] ; 7 uses
  %i.bk = phi <2 x double> [ splat (double +qnan), %.lr.ph177 ], [ %i.dk, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ %i.az, %.lr.ph177 ], [ %i.ca, %.thread ] ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv198, -1
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bo = trunc nsw i64 %indvars.iv198 to i32
  %i.bp = shl nuw i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !295
  %i.bu = load <2 x double>, ptr %i.br, align 8, !tbaa !295
  %i.bv = fadd <2 x double> %i.bl, %i.bu
  %i.bw = fmul double %i.f, %i.bt
  %i.bx = fadd double %i.bw, 5.000000e-01
  %i.by = fptosi double %i.bx to i32
  %i.bz = add nsw i32 %.2112173, %i.by
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.bz, %bb.e ], [ %.2112173, %bb.d ] ; 4 uses
  %i.ca = phi <2 x double> [ %i.bv, %bb.e ], [ %i.bl, %bb.d ] ; 6 uses
  %i.cb = icmp slt i32 %.3113, %i.be
  br i1 %i.cb, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cd = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.ce = fcmp olt double %i.cd, %i.cc
  br i1 %i.ce, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = sub nsw i32 %3, %.3113
  %i.cg = icmp slt i32 %i.cf, %i.be
  br i1 %i.cg, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = fsub double %2, %i.cd                   ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cc
  br i1 %i.ci, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = extractelement <2 x double> %i.ca, i64 0
  %i.ck = fsub double %1, %i.cj
  %i.cl = load <2 x double>, ptr %i.bg, align 8, !tbaa !295 ; 2 uses
  %i.cm = insertelement <2 x double> %i.ca, double %i.ck, i64 1 ; 3 uses
  %i.cn = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cm)
  %i.co = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fsub <2 x double> %i.cn, %i.co          ; 2 uses
  %i.cq = fcmp ogt <2 x double> %i.cp, zeroinitializer
  %i.cr = select <2 x i1> %i.cq, <2 x double> %i.cp, <2 x double> zeroinitializer
  %i.cs = fcmp ogt <2 x double> %i.cm, zeroinitializer
  %i.ct = zext <2 x i1> %i.cs to <2 x i8>
  %i.cu = fcmp olt <2 x double> %i.cm, zeroinitializer
  %i.cv = sext <2 x i1> %i.cu to <2 x i8>
  %i.cw = add nsw <2 x i8> %i.cv, %i.ct
  %i.cx = sitofp <2 x i8> %i.cw to <2 x double>
  %i.cy = fmul <2 x double> %i.cr, %i.cx          ; 2 uses
  %i.cz = fmul <2 x double> %i.cy, %i.cy
  %i.da = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x double> %i.da, double %i.ch, i64 1
  %i.dc = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fadd <2 x double> %i.db, %i.dc
  %i.de = fdiv <2 x double> %i.cz, %i.dd
  %i.df = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.de) ; 3 uses
  %i.dg = fcmp ugt double %i.df, %5
  br i1 %i.dg, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bh, align 8, !tbaa !242
  %i.dh = fcmp ogt double %i.df, %.0136168
  br i1 %i.dh, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.di = trunc i64 %indvars.iv198 to i32
  %i.dj = add i32 %i.di, %i.h
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.j, %bb.f, %bb.g
  %.5141 = phi double [ %.0136168, %bb.f ], [ %.0136168, %bb.g ], [ %.0136168, %bb.k ], [ %i.df, %bb.l ], [ %.0136168, %bb.j ] ; 2 uses
  %.5134 = phi i32 [ %.0129169, %bb.f ], [ %.0129169, %bb.g ], [ %.0129169, %bb.k ], [ %.3113, %bb.l ], [ %.0129169, %bb.j ] ; 2 uses
  %.5127 = phi i32 [ %.0122170, %bb.f ], [ %.0122170, %bb.g ], [ %.0122170, %bb.k ], [ %i.dj, %bb.l ], [ %.0122170, %bb.j ] ; 2 uses
  %i.dk = phi <2 x double> [ %i.bk, %bb.f ], [ %i.bk, %bb.g ], [ %i.bk, %bb.k ], [ %i.ca, %bb.l ], [ %i.bk, %bb.j ] ; 2 uses
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, 1
  %.not.not = icmp slt i64 %indvars.iv198, %i.bj
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1439

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0136.lcssa = phi double [ -inf, %.loopexit ], [ %.0136168, %bb.h ], [ %.0136168, %bb.i ], [ %.5141, %.thread ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %.loopexit ], [ %.0129169, %bb.h ], [ %.0129169, %bb.i ], [ %.5134, %.thread ] ; 2 uses
  %.0122.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0122170, %bb.h ], [ %.0122170, %bb.i ], [ %.5127, %.thread ]
  %i.dl = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ %i.dk, %.thread ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !242, !range !231, !noundef !232
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !312
  %i.dr = fadd double %5, %i.dq
  %i.ds = fcmp ogt double %.0136.lcssa, %i.dr
  br i1 %i.ds, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0122.lcssa, ptr %i.dt, align 4, !tbaa !406
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !277
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 416
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.dy, align 8, !tbaa !334
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ea = extractelement <2 x double> %i.dl, i64 0
  store double %i.ea, ptr %i.dz, align 8, !tbaa !407
  %i.eb = extractelement <2 x double> %i.dl, i64 1
  %i.ec = fadd double %i.eb, f0xBCD203AFA0000000
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ec, ptr %i.ed, align 8, !tbaa !408
  %i.ee = insertelement <2 x double> poison, double %1, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %2, i64 1
end_hunk_19
begin_hunk_20_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.ce = fdiv <2 x double> %i.cb, %i.cd          ; 2 uses
  %i.cf = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %.0.i.i16.i, i64 1
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = fadd <2 x double> %i.ce, splat (double 1.000000e+00) ; 2 uses
  %i.cj = fdiv <2 x double> %i.ch, %i.ci
  %i.ck = fdiv <2 x double> %i.y, %i.ci
  %i.cl = fadd <2 x double> %i.ck, %i.cj          ; 3 uses
  %i.cm = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.bm, i64 1
  %i.co = fmul <2 x double> %i.cn, %i.cl
  %i.cp = fmul <2 x double> %i.cl, %i.co
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.cl, <2 x double> %i.cp) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1
  %i.cs = fneg double %i.cr
  %i.ct = extractelement <2 x double> %i.cq, i64 0
  %i.cu = fsub double %i.cs, %i.ct                ; 3 uses
  %i.cv = fcmp ugt double %i.cu, %5
  br i1 %i.cv, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.t, align 8, !tbaa !242
  %i.cw = fcmp ogt double %i.cu, %.098146
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cx = add i32 %i.u, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.j, %bb.i
  %.5117.ph = phi double [ %.0112144, %bb.i ], [ %i.av, %bb.j ], [ %.0112144, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0112144, %bb.c ], [ %.0112144, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105145, %bb.i ], [ %i.as, %bb.j ], [ %.0105145, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0105145, %bb.c ], [ %.0105145, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098146, %bb.i ], [ %i.cu, %bb.j ], [ %.098146, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.098146, %bb.c ], [ %.098146, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091147, %bb.i ], [ %i.aq, %bb.j ], [ %.091147, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.091147, %bb.c ], [ %.091147, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087148, %bb.i ], [ %i.cx, %bb.j ], [ %.087148, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.087148, %bb.c ], [ %.087148, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.w
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1480

._crit_edge:                                      ; preds = %bb.k, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112144, %bb.e ], [ %.0112144, %bb.d ], [ %.5117.ph, %bb.k ] ; 3 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105145, %bb.e ], [ %.0105145, %bb.d ], [ %.5110.ph, %bb.k ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098146, %bb.e ], [ %.098146, %bb.d ], [ %.5103.ph, %bb.k ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091147, %bb.e ], [ %.091147, %bb.d ], [ %.596.ph, %bb.k ] ; 3 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087148, %bb.e ], [ %.087148, %bb.d ], [ %.5.ph, %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !242, !range !231, !noundef !232
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.l, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !312
  %i.dd = fadd double %5, %i.dc
  %i.de = fcmp ogt double %.098.lcssa, %i.dd
  br i1 %i.de, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.df, align 4, !tbaa !406
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !277 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 424
  %i.dj = load double, ptr %i.di, align 8, !tbaa !401 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 408
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !378 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 720
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !375 ; 2 uses
  %i.do = fneg double %.0112.lcssa
  %i.dp = fadd double %.0105.lcssa, %i.dj
  %i.dq = fdiv double %i.do, %i.dp                ; 4 uses
  %i.dr = fcmp ogt double %i.dl, 0.000000e+00     ; 2 uses
  %i.ds = tail call double @llvm.fabs.f64(double %i.dq)
  %i.dt = fcmp ogt double %i.ds, %i.dl
  %or.cond.i.i = and i1 %i.dr, %i.dt
  br i1 %or.cond.i.i, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.n:                                             ; preds = %bb.m
  %i.du = fcmp ogt double %i.dq, 0.000000e+00
  %i.dv = zext i1 %i.du to i32
  %i.dw = fcmp olt double %i.dq, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.dw to i32
  %i.dx = add nsw i32 %.neg.i.i.i, %i.dv
  %i.dy = sitofp i32 %i.dx to double
  %i.dz = fmul double %i.dl, %i.dy
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.m, %bb.n
  %.0.i.i = phi double [ %i.dz, %bb.n ], [ %i.dq, %bb.m ]
  %i.ea = sitofp i32 %.091.lcssa to double
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.ec, align 8, !tbaa !334
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.ed, align 8, !tbaa !407
  %i.ee = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ee, ptr %i.ef, align 8, !tbaa !408
  %i.eg = fsub double %1, %.0112.lcssa            ; 2 uses
  %i.eh = sub nsw i32 %3, %.091.lcssa             ; 2 uses
  %i.ei = fneg double %i.eg
  %i.ej = fdiv double %i.ea, %i.dn                ; 2 uses
  %i.ek = fmul double %i.ej, %.0.i.i
  %i.el = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.em = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.el, i64 1
  %i.eo = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.dj, i64 1
  %i.ep = fadd <2 x double> %i.en, %i.eo          ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = fdiv double %i.ek, %i.eq
  %i.es = insertelement <2 x double> poison, double %8, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.ei, i64 1
  %i.eu = fdiv <2 x double> %i.et, %i.ep          ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 0
  %i.ew = fadd double %i.ev, %i.er
  store double %i.ew, ptr %i.eb, align 8, !tbaa !410
  %i.ex = extractelement <2 x double> %i.eu, i64 1 ; 4 uses
  %i.ey = tail call double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp ogt double %i.ey, %i.dl
  %or.cond.i.i126 = and i1 %i.dr, %i.ez
  br i1 %or.cond.i.i126, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit129

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fa = fcmp ogt double %i.ex, 0.000000e+00
  %i.fb = zext i1 %i.fa to i32
  %i.fc = fcmp olt double %i.ex, 0.000000e+00
  %.neg.i.i.i128 = sext i1 %i.fc to i32
  %i.fd = add nsw i32 %.neg.i.i.i128, %i.fb
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fmul double %i.dl, %i.fe
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit129

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit129: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.o
  %.0.i.i127 = phi double [ %i.ff, %bb.o ], [ %i.ex, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.fg = sitofp i32 %i.eh to double
  %i.fh = fdiv double %i.fg, %i.dn                ; 2 uses
  %i.fi = fmul double %i.fh, %.0.i.i127
  %i.fj = fadd double %i.fh, 1.000000e+00         ; 2 uses
  %i.fk = fdiv double %i.fi, %i.fj
  %i.fl = fdiv double %8, %i.fj
  %i.fm = fadd double %i.fl, %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %i.fm, ptr %i.fn, align 8, !tbaa !411
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.eh, ptr %i.fo, align 4, !tbaa !335
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.eg, ptr %i.fp, align 8, !tbaa !412
  %i.fq = fadd double %i.el, f0xBCD203AFA0000000
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fq, ptr %i.fr, align 8, !tbaa !413
  %i.fs = fsub double %.098.lcssa, %5
  store double %i.fs, ptr %i.db, align 8, !tbaa !312
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.ft, align 8, !tbaa !313
  br label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit129, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110163 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110163, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1481

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110163.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod216 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110163.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not167 = icmp sgt i32 %.0108, %i.i
  br i1 %.not167, label %._crit_edge, label %.lr.ph177

.lr.ph177:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 720
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = sext i32 %.0108 to i64
  %i.bl = sext i32 %i.i to i64
  %i.bm = insertelement <2 x double> poison, double %8, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph177, %.thread
  %indvars.iv198 = phi i64 [ %i.bk, %.lr.ph177 ], [ %indvars.iv.next199, %.thread ] ; 5 uses
  %.2112173 = phi i32 [ %.1111, %.lr.ph177 ], [ %.3113, %.thread ] ; 2 uses
  %.0122170 = phi i32 [ %i.d, %.lr.ph177 ], [ %.5127, %.thread ] ; 6 uses
  %.0129169 = phi i32 [ 0, %.lr.ph177 ], [ %.5134, %.thread ] ; 6 uses
  %.0136168 = phi double [ -inf, %.lr.ph177 ], [ %.5141, %.thread ] ; 7 uses
  %i.bo = phi <2 x double> [ splat (double +qnan), %.lr.ph177 ], [ %i.er, %.thread ] ; 6 uses
  %i.bp = phi <2 x double> [ %i.az, %.lr.ph177 ], [ %i.ce, %.thread ] ; 2 uses
  %i.bq = icmp sgt i64 %indvars.iv198, -1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bs = trunc nsw i64 %indvars.iv198 to i32
  %i.bt = shl nuw i32 %i.bs, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !295
  %i.by = load <2 x double>, ptr %i.bv, align 8, !tbaa !295
  %i.bz = fadd <2 x double> %i.bp, %i.by
  %i.ca = fmul double %i.f, %i.bx
  %i.cb = fadd double %i.ca, 5.000000e-01
  %i.cc = fptosi double %i.cb to i32
  %i.cd = add nsw i32 %.2112173, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.cd, %bb.e ], [ %.2112173, %bb.d ] ; 5 uses
  %i.ce = phi <2 x double> [ %i.bz, %bb.e ], [ %i.bp, %bb.d ] ; 5 uses
  %i.cf = icmp slt i32 %.3113, %i.be
  br i1 %i.cf, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.ch = extractelement <2 x double> %i.ce, i64 1 ; 3 uses
  %i.ci = fcmp olt double %i.ch, %i.cg
  br i1 %i.ci, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = sub nsw i32 %3, %.3113                  ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.be
  br i1 %i.ck, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = fsub double %2, %i.ch                   ; 2 uses
  %i.cm = fcmp olt double %i.cl, %i.cg
  br i1 %i.cm, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = extractelement <2 x double> %i.ce, i64 0 ; 2 uses
  %i.co = fsub double %1, %i.cn                   ; 2 uses
  %i.cp = load double, ptr %i.bg, align 8, !tbaa !401 ; 2 uses
  %i.cq = load double, ptr %i.bh, align 8, !tbaa !378 ; 5 uses
  %i.cr = load double, ptr %i.bi, align 8, !tbaa !375
  %i.cs = fneg double %i.cn
  %i.ct = fadd double %i.ch, %i.cp                ; 2 uses
  %i.cu = fdiv double %i.cs, %i.ct                ; 4 uses
  %i.cv = fcmp ogt double %i.cq, 0.000000e+00     ; 2 uses
  %i.cw = tail call double @llvm.fabs.f64(double %i.cu)
  %i.cx = fcmp ogt double %i.cw, %i.cq
  %or.cond.i.i.i = and i1 %i.cv, %i.cx
  br i1 %or.cond.i.i.i, label %bb.k, label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cy = fcmp ogt double %i.cu, 0.000000e+00
  %i.cz = zext i1 %i.cy to i32
  %i.da = fcmp olt double %i.cu, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.da to i32
  %i.db = add nsw i32 %.neg.i.i.i.i, %i.cz
  %i.dc = sitofp i32 %i.db to double
  %i.dd = fmul double %i.cq, %i.dc
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi double [ %i.dd, %bb.k ], [ %i.cu, %bb.j ]
  %i.de = fneg double %i.co
  %i.df = fadd double %i.cl, %i.cp                ; 2 uses
  %i.dg = fdiv double %i.de, %i.df                ; 4 uses
  %i.dh = tail call double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp ogt double %i.dh, %i.cq
  %or.cond.i.i15.i = and i1 %i.cv, %i.di
  br i1 %or.cond.i.i15.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.l:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i
  %i.dj = fcmp ogt double %i.dg, 0.000000e+00
  %i.dk = zext i1 %i.dj to i32
  %i.dl = fcmp olt double %i.dg, 0.000000e+00
  %.neg.i.i.i17.i = sext i1 %i.dl to i32
  %i.dm = add nsw i32 %.neg.i.i.i17.i, %i.dk
  %i.dn = sitofp i32 %i.dm to double
  %i.do = fmul double %i.cq, %i.dn
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i, %bb.l
  %.0.i.i16.i = phi double [ %i.do, %bb.l ], [ %i.dg, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb1EEEdddddddid.exit.i ]
  %i.dp = insertelement <2 x i32> poison, i32 %.3113, i64 0
  %i.dq = insertelement <2 x i32> %i.dp, i32 %i.cj, i64 1
  %i.dr = sitofp <2 x i32> %i.dq to <2 x double>
  %i.ds = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fdiv <2 x double> %i.dr, %i.dt          ; 2 uses
  %i.dv = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %.0.i.i16.i, i64 1
  %i.dx = fmul <2 x double> %i.du, %i.dw
  %i.dy = fadd <2 x double> %i.du, splat (double 1.000000e+00) ; 2 uses
  %i.dz = fdiv <2 x double> %i.dx, %i.dy
  %i.ea = fdiv <2 x double> %i.bn, %i.dy
  %i.eb = fadd <2 x double> %i.ea, %i.dz          ; 3 uses
  %i.ec = insertelement <2 x double> %i.ce, double %i.co, i64 1
  %i.ed = fmul <2 x double> %i.ec, splat (double 2.000000e+00)
  %i.ee = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.df, i64 1
  %i.eg = fmul <2 x double> %i.ef, %i.eb
  %i.eh = fmul <2 x double> %i.eb, %i.eg
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.eb, <2 x double> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 1
  %i.ek = fneg double %i.ej
  %i.el = extractelement <2 x double> %i.ei, i64 0
  %i.em = fsub double %i.ek, %i.el                ; 3 uses
  %i.en = fcmp ugt double %i.em, %5
  br i1 %i.en, label %bb.m, label %.thread

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.bj, align 8, !tbaa !242
  %i.eo = fcmp ogt double %i.em, %.0136168
end_hunk_20
begin_hunk_21_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.bg = fmul double %i.au, %i.bf
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi double [ %i.bg, %bb.g ], [ %i.ax, %bb.f ]
  %i.bh = fneg double %i.ar
  %i.bi = fadd double %i.al, %i.at                ; 2 uses
  %i.bj = fdiv double %i.bh, %i.bi                ; 4 uses
  %i.bk = tail call double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ogt double %i.bk, %i.au
  %or.cond.i.i15.i = and i1 %i.ay, %i.bl
  br i1 %or.cond.i.i15.i, label %bb.h, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.h:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i
  %i.bm = fcmp ogt double %i.bj, 0.000000e+00
  %i.bn = zext i1 %i.bm to i32
  %i.bo = fcmp olt double %i.bj, 0.000000e+00
  %.neg.i.i.i17.i = sext i1 %i.bo to i32
  %i.bp = add nsw i32 %.neg.i.i.i17.i, %i.bn
  %i.bq = sitofp i32 %i.bp to double
  %i.br = fmul double %i.au, %i.bq
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i, %bb.h
  %.0.i.i16.i = phi double [ %i.br, %bb.h ], [ %i.bj, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i ]
  %i.bs = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.bu = fmul <2 x double> %i.bt, splat (double 2.000000e+00)
  %i.bv = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bi, i64 1
  %i.bx = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %.0.i.i16.i, i64 1 ; 3 uses
  %i.bz = fmul <2 x double> %i.bw, %i.by
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.by, <2 x double> %i.ca) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 1
  %i.cd = fneg double %i.cc
  %i.ce = extractelement <2 x double> %i.cb, i64 0
  %i.cf = fsub double %i.cd, %i.ce                ; 3 uses
  %i.cg = fcmp ugt double %i.cf, %5
  br i1 %i.cg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.s, align 8, !tbaa !242
  %i.ch = fcmp ogt double %i.cf, %.098146
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = add i32 %i.t, %i.x
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.j, %bb.i
  %.5117.ph = phi double [ %.0112144, %bb.i ], [ %i.as, %bb.j ], [ %.0112144, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0112144, %bb.c ], [ %.0112144, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105145, %bb.i ], [ %i.ap, %bb.j ], [ %.0105145, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0105145, %bb.c ], [ %.0105145, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098146, %bb.i ], [ %i.cf, %bb.j ], [ %.098146, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.098146, %bb.c ], [ %.098146, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091147, %bb.i ], [ %i.an, %bb.j ], [ %.091147, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.091147, %bb.c ], [ %.091147, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087148, %bb.i ], [ %i.ci, %bb.j ], [ %.087148, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.087148, %bb.c ], [ %.087148, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1523

._crit_edge:                                      ; preds = %bb.k, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112144, %bb.e ], [ %.0112144, %bb.d ], [ %.5117.ph, %bb.k ] ; 3 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105145, %bb.e ], [ %.0105145, %bb.d ], [ %.5110.ph, %bb.k ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098146, %bb.e ], [ %.098146, %bb.d ], [ %.5103.ph, %bb.k ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091147, %bb.e ], [ %.091147, %bb.d ], [ %.596.ph, %bb.k ] ; 2 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087148, %bb.e ], [ %.087148, %bb.d ], [ %.5.ph, %bb.k ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.l, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.098.lcssa, %i.co
  br i1 %i.cp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !277 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 424
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !401 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 408
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !378 ; 5 uses
  %i.cx = fneg double %.0112.lcssa
  %i.cy = fadd double %.0105.lcssa, %i.cu
  %i.cz = fdiv double %i.cx, %i.cy                ; 4 uses
  %i.da = fcmp ogt double %i.cw, 0.000000e+00     ; 2 uses
  %i.db = tail call double @llvm.fabs.f64(double %i.cz)
  %i.dc = fcmp ogt double %i.db, %i.cw
  %or.cond.i.i = and i1 %i.da, %i.dc
  br i1 %or.cond.i.i, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.n:                                             ; preds = %bb.m
  %i.dd = fcmp ogt double %i.cz, 0.000000e+00
  %i.de = zext i1 %i.dd to i32
  %i.df = fcmp olt double %i.cz, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.df to i32
  %i.dg = add nsw i32 %.neg.i.i.i, %i.de
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fmul double %i.cw, %i.dh
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.m, %bb.n
  %.0.i.i = phi double [ %i.di, %bb.n ], [ %i.cz, %bb.m ]
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i.i, ptr %i.dj, align 8, !tbaa !410
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.dk, align 8, !tbaa !334
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.dl, align 8, !tbaa !407
  %i.dm = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dm, ptr %i.dn, align 8, !tbaa !408
  %i.do = fsub double %1, %.0112.lcssa            ; 2 uses
  %i.dp = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.dq = sub nsw i32 %3, %.091.lcssa
  %i.dr = fneg double %i.do
  %i.ds = fadd double %i.dp, %i.cu
  %i.dt = fdiv double %i.dr, %i.ds                ; 4 uses
  %i.du = tail call double @llvm.fabs.f64(double %i.dt)
  %i.dv = fcmp ogt double %i.du, %i.cw
  %or.cond.i.i126 = and i1 %i.da, %i.dv
  br i1 %or.cond.i.i126, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit129

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.dw = fcmp ogt double %i.dt, 0.000000e+00
  %i.dx = zext i1 %i.dw to i32
  %i.dy = fcmp olt double %i.dt, 0.000000e+00
  %.neg.i.i.i128 = sext i1 %i.dy to i32
  %i.dz = add nsw i32 %.neg.i.i.i128, %i.dx
  %i.ea = sitofp i32 %i.dz to double
  %i.eb = fmul double %i.cw, %i.ea
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit129

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit129: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.o
  %.0.i.i127 = phi double [ %i.eb, %bb.o ], [ %i.dt, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i.i127, ptr %i.ec, align 8, !tbaa !411
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.dq, ptr %i.ed, align 4, !tbaa !335
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.do, ptr %i.ee, align 8, !tbaa !412
  %i.ef = fadd double %i.dp, f0xBCD203AFA0000000
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ef, ptr %i.eg, align 8, !tbaa !413
  %i.eh = fsub double %.098.lcssa, %5
  store double %i.eh, ptr %i.cm, align 8, !tbaa !312
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.ei, align 8, !tbaa !313
  br label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit129, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110163 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110163, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1524

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110163.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod215 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110163.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not167 = icmp sgt i32 %.0108, %i.i
  br i1 %.not167, label %._crit_edge, label %.lr.ph177

.lr.ph177:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0108 to i64
  %i.bk = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph177, %.thread
  %indvars.iv198 = phi i64 [ %i.bj, %.lr.ph177 ], [ %indvars.iv.next199, %.thread ] ; 5 uses
  %.2112173 = phi i32 [ %.1111, %.lr.ph177 ], [ %.3113, %.thread ] ; 2 uses
  %.0122170 = phi i32 [ %i.d, %.lr.ph177 ], [ %.5127, %.thread ] ; 6 uses
  %.0129169 = phi i32 [ 0, %.lr.ph177 ], [ %.5134, %.thread ] ; 6 uses
  %.0136168 = phi double [ -inf, %.lr.ph177 ], [ %.5141, %.thread ] ; 7 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph177 ], [ %i.ec, %.thread ] ; 6 uses
  %i.bm = phi <2 x double> [ %i.az, %.lr.ph177 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv198, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv198 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2112173, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.ca, %bb.e ], [ %.2112173, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = icmp slt i32 %.3113, %i.be
  br i1 %i.cc, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.ce = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cf = fcmp olt double %i.ce, %i.cd
  br i1 %i.cf, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = sub nsw i32 %3, %.3113
  %i.ch = icmp slt i32 %i.cg, %i.be
  br i1 %i.ch, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = fsub double %2, %i.ce                   ; 2 uses
  %i.cj = fcmp olt double %i.ci, %i.cd
  br i1 %i.cj, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cl = fsub double %1, %i.ck                   ; 2 uses
  %i.cm = load double, ptr %i.bg, align 8, !tbaa !401 ; 2 uses
  %i.cn = load double, ptr %i.bh, align 8, !tbaa !378 ; 5 uses
  %i.co = fneg double %i.ck
  %i.cp = fadd double %i.ce, %i.cm                ; 2 uses
  %i.cq = fdiv double %i.co, %i.cp                ; 4 uses
  %i.cr = fcmp ogt double %i.cn, 0.000000e+00     ; 2 uses
  %i.cs = tail call double @llvm.fabs.f64(double %i.cq)
  %i.ct = fcmp ogt double %i.cs, %i.cn
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.k, label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cu = fcmp ogt double %i.cq, 0.000000e+00
  %i.cv = zext i1 %i.cu to i32
  %i.cw = fcmp olt double %i.cq, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.cw to i32
  %i.cx = add nsw i32 %.neg.i.i.i.i, %i.cv
  %i.cy = sitofp i32 %i.cx to double
  %i.cz = fmul double %i.cn, %i.cy
  br label %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi double [ %i.cz, %bb.k ], [ %i.cq, %bb.j ]
  %i.da = fneg double %i.cl
  %i.db = fadd double %i.ci, %i.cm                ; 2 uses
  %i.dc = fdiv double %i.da, %i.db                ; 4 uses
  %i.dd = tail call double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ogt double %i.dd, %i.cn
  %or.cond.i.i15.i = and i1 %i.cr, %i.de
  br i1 %or.cond.i.i15.i, label %bb.l, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

bb.l:                                             ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i
  %i.df = fcmp ogt double %i.dc, 0.000000e+00
  %i.dg = zext i1 %i.df to i32
  %i.dh = fcmp olt double %i.dc, 0.000000e+00
  %.neg.i.i.i17.i = sext i1 %i.dh to i32
  %i.di = add nsw i32 %.neg.i.i.i17.i, %i.dg
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fmul double %i.cn, %i.dj
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i, %bb.l
  %.0.i.i16.i = phi double [ %i.dk, %bb.l ], [ %i.dc, %_ZN8LightGBM16FeatureHistogram11GetLeafGainILb0ELb1ELb0EEEdddddddid.exit.i ]
  %i.dl = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.db, i64 1
  %i.dn = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %.0.i.i16.i, i64 1 ; 3 uses
  %i.dp = fmul <2 x double> %i.dm, %i.do
  %i.dq = insertelement <2 x double> %i.cb, double %i.cl, i64 1
  %i.dr = fmul <2 x double> %i.dq, splat (double 2.000000e+00)
  %i.ds = fmul <2 x double> %i.do, %i.dp
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.do, <2 x double> %i.ds) ; 2 uses
  %i.du = extractelement <2 x double> %i.dt, i64 1
  %i.dv = fneg double %i.du
  %i.dw = extractelement <2 x double> %i.dt, i64 0
  %i.dx = fsub double %i.dv, %i.dw                ; 3 uses
  %i.dy = fcmp ugt double %i.dx, %5
  br i1 %i.dy, label %bb.m, label %.thread

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.dz = fcmp ogt double %i.dx, %.0136168
  br i1 %i.dz, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ea = trunc i64 %indvars.iv198 to i32
  %i.eb = add i32 %i.ea, %i.h
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.f, %bb.g
  %.5141 = phi double [ %.0136168, %bb.f ], [ %.0136168, %bb.g ], [ %.0136168, %bb.m ], [ %i.dx, %bb.n ], [ %.0136168, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ] ; 2 uses
  %.5134 = phi i32 [ %.0129169, %bb.f ], [ %.0129169, %bb.g ], [ %.0129169, %bb.m ], [ %.3113, %bb.n ], [ %.0129169, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ] ; 2 uses
  %.5127 = phi i32 [ %.0122170, %bb.f ], [ %.0122170, %bb.g ], [ %.0122170, %bb.m ], [ %i.eb, %bb.n ], [ %.0122170, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ] ; 2 uses
  %i.ec = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.m ], [ %i.cb, %bb.n ], [ %i.bl, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb0ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ] ; 2 uses
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, 1
  %.not.not = icmp slt i64 %indvars.iv198, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1525
end_hunk_21
begin_hunk_22_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aa ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !295 ; 2 uses
  %i.af = fmul double %i.f, %i.ae
  %i.ag = fadd double %i.af, 5.000000e-01
  %i.ah = fptosi double %i.ag to i32
  %i.ai = fadd double %.086145, %i.ac             ; 3 uses
  %i.aj = fadd double %.085146, %i.ae             ; 4 uses
  %i.ak = add nsw i32 %.084147, %i.ah             ; 4 uses
  %i.al = icmp slt i32 %i.ak, %i.o
  br i1 %i.al, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load double, ptr %i.p, align 8, !tbaa !405 ; 2 uses
  %i.an = fcmp olt double %i.aj, %i.am
  br i1 %i.an, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = sub nsw i32 %3, %i.ak                   ; 3 uses
  %i.ap = icmp slt i32 %i.ao, %i.o
  br i1 %i.ap, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fsub double %2, %i.aj                   ; 3 uses
  %i.ar = fcmp olt double %i.aq, %i.am
  br i1 %i.ar, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = fsub double %1, %i.ai                   ; 2 uses
  %i.at = load double, ptr %i.q, align 8, !tbaa !401
  %i.au = load double, ptr %i.r, align 8, !tbaa !375
  %i.av = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.aw = insertelement <2 x i32> %i.av, i32 %i.ak, i64 1
  %i.ax = sitofp <2 x i32> %i.aw to <2 x double>
  %i.ay = insertelement <2 x double> poison, double %i.as, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ai, i64 1 ; 2 uses
  %i.ba = fneg <2 x double> %i.az
  %i.bb = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.aj, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.at, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fadd <2 x double> %i.bc, %i.be          ; 2 uses
  %i.bg = fdiv <2 x double> %i.ba, %i.bf
  %i.bh = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fdiv <2 x double> %i.ax, %i.bi          ; 2 uses
  %i.bk = fmul <2 x double> %i.bg, %i.bj
  %i.bl = fadd <2 x double> %i.bj, splat (double 1.000000e+00) ; 2 uses
  %i.bm = fdiv <2 x double> %i.bk, %i.bl
  %i.bn = fdiv <2 x double> %i.x, %i.bl
  %i.bo = fadd <2 x double> %i.bm, %i.bn          ; 3 uses
  %i.bp = fmul <2 x double> %i.az, splat (double 2.000000e+00)
  %i.bq = fmul <2 x double> %i.bf, %i.bo
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bo, <2 x double> %i.br) ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 1
  %i.bu = fneg double %i.bt
  %i.bv = extractelement <2 x double> %i.bs, i64 0
  %i.bw = fsub double %i.bu, %i.bv                ; 3 uses
  %i.bx = fcmp ugt double %i.bw, %5
  br i1 %i.bx, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.s, align 8, !tbaa !242
  %i.by = fcmp ogt double %i.bw, %.098142
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bz = add i32 %i.t, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.h, %bb.g
  %.5117.ph = phi double [ %.0112140, %bb.g ], [ %i.as, %bb.h ], [ %.0112140, %bb.f ], [ %.0112140, %bb.c ], [ %.0112140, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105141, %bb.g ], [ %i.aq, %bb.h ], [ %.0105141, %bb.f ], [ %.0105141, %bb.c ], [ %.0105141, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098142, %bb.g ], [ %i.bw, %bb.h ], [ %.098142, %bb.f ], [ %.098142, %bb.c ], [ %.098142, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091143, %bb.g ], [ %i.ao, %bb.h ], [ %.091143, %bb.f ], [ %.091143, %bb.c ], [ %.091143, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087144, %bb.g ], [ %i.bz, %bb.h ], [ %.087144, %bb.f ], [ %.087144, %bb.c ], [ %.087144, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1566

._crit_edge:                                      ; preds = %bb.i, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112140, %bb.e ], [ %.0112140, %bb.d ], [ %.5117.ph, %bb.i ] ; 3 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105141, %bb.e ], [ %.0105141, %bb.d ], [ %.5110.ph, %bb.i ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098142, %bb.e ], [ %.098142, %bb.d ], [ %.5103.ph, %bb.i ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091143, %bb.e ], [ %.091143, %bb.d ], [ %.596.ph, %bb.i ] ; 3 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087144, %bb.e ], [ %.087144, %bb.d ], [ %.5.ph, %bb.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !312
  %i.cf = fadd double %5, %i.ce
  %i.cg = fcmp ogt double %.098.lcssa, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.ch, align 4, !tbaa !406
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !277 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 424
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !401
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 720
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !375
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.cp, align 8, !tbaa !334
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.cq, align 8, !tbaa !407
  %i.cr = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.cr, ptr %i.cs, align 8, !tbaa !408
  %i.ct = fsub double %1, %.0112.lcssa            ; 2 uses
  %i.cu = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.cv = sub nsw i32 %3, %.091.lcssa             ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %.0112.lcssa, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ct, i64 1
  %i.cy = fneg <2 x double> %i.cx
  %i.cz = insertelement <2 x double> poison, double %.0105.lcssa, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cu, i64 1
  %i.db = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fadd <2 x double> %i.da, %i.dc
  %i.de = fdiv <2 x double> %i.cy, %i.dd
  %i.df = insertelement <2 x i32> poison, i32 %.091.lcssa, i64 0
  %i.dg = insertelement <2 x i32> %i.df, i32 %i.cv, i64 1
  %i.dh = sitofp <2 x i32> %i.dg to <2 x double>
  %i.di = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv <2 x double> %i.dh, %i.dj          ; 2 uses
  %i.dl = fmul <2 x double> %i.de, %i.dk
  %i.dm = fadd <2 x double> %i.dk, splat (double 1.000000e+00) ; 2 uses
  %i.dn = fdiv <2 x double> %i.dl, %i.dm
  %i.do = insertelement <2 x double> poison, double %8, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fdiv <2 x double> %i.dp, %i.dm
  %i.dr = fadd <2 x double> %i.dn, %i.dq
  store <2 x double> %i.dr, ptr %i.co, align 8, !tbaa !295
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.cv, ptr %i.ds, align 4, !tbaa !335
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ct, ptr %i.dt, align 8, !tbaa !412
  %i.du = fadd double %i.cu, f0xBCD203AFA0000000
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.du, ptr %i.dv, align 8, !tbaa !413
  %i.dw = fsub double %.098.lcssa, %5
  store double %i.dw, ptr %i.cd, align 8, !tbaa !312
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.dx, align 8, !tbaa !313
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110159 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110159, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1567

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110159.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod209 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110159.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not163 = icmp sgt i32 %.0108, %i.i
  br i1 %.not163, label %._crit_edge, label %.lr.ph173

.lr.ph173:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 720
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0108 to i64
  %i.bk = sext i32 %i.i to i64
  %i.bl = insertelement <2 x double> poison, double %8, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph173, %.thread
  %indvars.iv194 = phi i64 [ %i.bj, %.lr.ph173 ], [ %indvars.iv.next195, %.thread ] ; 5 uses
  %.2112169 = phi i32 [ %.1111, %.lr.ph173 ], [ %.3113, %.thread ] ; 2 uses
  %.0122166 = phi i32 [ %i.d, %.lr.ph173 ], [ %.5127, %.thread ] ; 6 uses
  %.0129165 = phi i32 [ 0, %.lr.ph173 ], [ %.5134, %.thread ] ; 6 uses
  %.0136164 = phi double [ -inf, %.lr.ph173 ], [ %.5141, %.thread ] ; 7 uses
  %i.bn = phi <2 x double> [ splat (double +qnan), %.lr.ph173 ], [ %i.dv, %.thread ] ; 6 uses
  %i.bo = phi <2 x double> [ %i.az, %.lr.ph173 ], [ %i.cd, %.thread ] ; 2 uses
  %i.bp = icmp sgt i64 %indvars.iv194, -1
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.br = trunc nsw i64 %indvars.iv194 to i32
  %i.bs = shl nuw i32 %i.br, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !295
  %i.bx = load <2 x double>, ptr %i.bu, align 8, !tbaa !295
  %i.by = fadd <2 x double> %i.bo, %i.bx
  %i.bz = fmul double %i.f, %i.bw
  %i.ca = fadd double %i.bz, 5.000000e-01
  %i.cb = fptosi double %i.ca to i32
  %i.cc = add nsw i32 %.2112169, %i.cb
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.cc, %bb.e ], [ %.2112169, %bb.d ] ; 5 uses
  %i.cd = phi <2 x double> [ %i.by, %bb.e ], [ %i.bo, %bb.d ] ; 6 uses
  %i.ce = icmp slt i32 %.3113, %i.be
  br i1 %i.ce, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cg = extractelement <2 x double> %i.cd, i64 1 ; 2 uses
  %i.ch = fcmp olt double %i.cg, %i.cf
  br i1 %i.ch, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = sub nsw i32 %3, %.3113                  ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.be
  br i1 %i.cj, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = fsub double %2, %i.cg                   ; 2 uses
  %i.cl = fcmp olt double %i.ck, %i.cf
  br i1 %i.cl, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = extractelement <2 x double> %i.cd, i64 0
  %i.cn = fsub double %1, %i.cm
  %i.co = load double, ptr %i.bg, align 8, !tbaa !401
  %i.cp = load double, ptr %i.bh, align 8, !tbaa !375
  %i.cq = insertelement <2 x i32> poison, i32 %.3113, i64 0
  %i.cr = insertelement <2 x i32> %i.cq, i32 %i.ci, i64 1
  %i.cs = sitofp <2 x i32> %i.cr to <2 x double>
  %i.ct = insertelement <2 x double> %i.cd, double %i.cn, i64 1 ; 2 uses
  %i.cu = fneg <2 x double> %i.ct
  %i.cv = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x double> %i.cv, double %i.ck, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fadd <2 x double> %i.cw, %i.cy          ; 2 uses
  %i.da = fdiv <2 x double> %i.cu, %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv <2 x double> %i.cs, %i.dc          ; 2 uses
  %i.de = fmul <2 x double> %i.da, %i.dd
  %i.df = fadd <2 x double> %i.dd, splat (double 1.000000e+00) ; 2 uses
  %i.dg = fdiv <2 x double> %i.de, %i.df
  %i.dh = fdiv <2 x double> %i.bm, %i.df
  %i.di = fadd <2 x double> %i.dg, %i.dh          ; 3 uses
  %i.dj = fmul <2 x double> %i.ct, splat (double 2.000000e+00)
  %i.dk = fmul <2 x double> %i.cz, %i.di
  %i.dl = fmul <2 x double> %i.di, %i.dk
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.di, <2 x double> %i.dl) ; 2 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 1
  %i.do = fneg double %i.dn
  %i.dp = extractelement <2 x double> %i.dm, i64 0
  %i.dq = fsub double %i.do, %i.dp                ; 3 uses
  %i.dr = fcmp ugt double %i.dq, %5
  br i1 %i.dr, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.ds = fcmp ogt double %i.dq, %.0136164
  br i1 %i.ds, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.dt = trunc i64 %indvars.iv194 to i32
  %i.du = add i32 %i.dt, %i.h
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.j, %bb.f, %bb.g
  %.5141 = phi double [ %.0136164, %bb.f ], [ %.0136164, %bb.g ], [ %.0136164, %bb.k ], [ %i.dq, %bb.l ], [ %.0136164, %bb.j ] ; 2 uses
  %.5134 = phi i32 [ %.0129165, %bb.f ], [ %.0129165, %bb.g ], [ %.0129165, %bb.k ], [ %.3113, %bb.l ], [ %.0129165, %bb.j ] ; 2 uses
  %.5127 = phi i32 [ %.0122166, %bb.f ], [ %.0122166, %bb.g ], [ %.0122166, %bb.k ], [ %i.du, %bb.l ], [ %.0122166, %bb.j ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bn, %bb.f ], [ %i.bn, %bb.g ], [ %i.bn, %bb.k ], [ %i.cd, %bb.l ], [ %i.bn, %bb.j ] ; 2 uses
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, 1
  %.not.not = icmp slt i64 %indvars.iv194, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1568

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0136.lcssa = phi double [ -inf, %.loopexit ], [ %.0136164, %bb.h ], [ %.0136164, %bb.i ], [ %.5141, %.thread ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %.loopexit ], [ %.0129165, %bb.h ], [ %.0129165, %bb.i ], [ %.5134, %.thread ] ; 3 uses
  %.0122.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0122166, %bb.h ], [ %.0122166, %bb.i ], [ %.5127, %.thread ]
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bn, %bb.h ], [ %i.bn, %bb.i ], [ %i.dv, %.thread ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !312
  %i.ec = fadd double %5, %i.eb
  %i.ed = fcmp ogt double %.0136.lcssa, %i.ec
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0122.lcssa, ptr %i.ee, align 4, !tbaa !406
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !277 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 424
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !401
end_hunk_22
begin_hunk_23_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %reass.sub = sub i32 %i.d, %i.g
  %i.h = add i32 %reass.sub, -2                   ; 2 uses
  %i.i = sub nsw i32 1, %i.g                      ; 2 uses
  %.not139 = icmp slt i32 %i.h, %i.i
  br i1 %.not139, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !243
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !277  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 308
  %i.o = load i32, ptr %i.n, align 4, !tbaa !353  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = add nsw i32 %i.g, -1
  %i.t = sext i32 %i.h to i64
  %i.u = sext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.084147 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.i ]
  %.085146 = phi double [ f0x3CD203AFA0000000, %.lr.ph ], [ %i.ag, %bb.i ]
  %.086145 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.af, %bb.i ]
  %.087144 = phi i32 [ %i.d, %.lr.ph ], [ %.5.ph, %bb.i ] ; 6 uses
  %.091143 = phi i32 [ 0, %.lr.ph ], [ %.596.ph, %bb.i ] ; 6 uses
  %.098142 = phi double [ -inf, %.lr.ph ], [ %.5103.ph, %bb.i ] ; 7 uses
  %.0105141 = phi double [ +qnan, %.lr.ph ], [ %.5110.ph, %bb.i ] ; 6 uses
  %.0112140 = phi double [ +qnan, %.lr.ph ], [ %.5117.ph, %bb.i ] ; 6 uses
  %i.v = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.w = shl i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !295
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !295 ; 2 uses
  %i.ac = fmul double %i.f, %i.ab
  %i.ad = fadd double %i.ac, 5.000000e-01
  %i.ae = fptosi double %i.ad to i32
  %i.af = fadd double %.086145, %i.z              ; 3 uses
  %i.ag = fadd double %.085146, %i.ab             ; 4 uses
  %i.ah = add nsw i32 %.084147, %i.ae             ; 3 uses
  %i.ai = icmp slt i32 %i.ah, %i.o
  br i1 %i.ai, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load double, ptr %i.p, align 8, !tbaa !405 ; 2 uses
  %i.ak = fcmp olt double %i.ag, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = sub nsw i32 %3, %i.ah                   ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.o
  br i1 %i.am, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = fsub double %2, %i.ag                   ; 3 uses
  %i.ao = fcmp olt double %i.an, %i.aj
  br i1 %i.ao, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fsub double %1, %i.af                   ; 2 uses
  %i.aq = load double, ptr %i.q, align 8, !tbaa !401
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.af, i64 1 ; 2 uses
  %i.at = fmul <2 x double> %i.as, %i.as
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ag, i64 1
  %i.aw = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fadd <2 x double> %i.av, %i.ax
  %i.az = fdiv <2 x double> %i.at, %i.ay
  %i.ba = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.az) ; 3 uses
  %i.bb = fcmp ugt double %i.ba, %5
  br i1 %i.bb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.r, align 8, !tbaa !242
  %i.bc = fcmp ogt double %i.ba, %.098142
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %i.s, %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.h, %bb.g
  %.5117.ph = phi double [ %.0112140, %bb.g ], [ %i.ap, %bb.h ], [ %.0112140, %bb.f ], [ %.0112140, %bb.c ], [ %.0112140, %bb.b ] ; 2 uses
  %.5110.ph = phi double [ %.0105141, %bb.g ], [ %i.an, %bb.h ], [ %.0105141, %bb.f ], [ %.0105141, %bb.c ], [ %.0105141, %bb.b ] ; 2 uses
  %.5103.ph = phi double [ %.098142, %bb.g ], [ %i.ba, %bb.h ], [ %.098142, %bb.f ], [ %.098142, %bb.c ], [ %.098142, %bb.b ] ; 2 uses
  %.596.ph = phi i32 [ %.091143, %bb.g ], [ %i.al, %bb.h ], [ %.091143, %bb.f ], [ %.091143, %bb.c ], [ %.091143, %bb.b ] ; 2 uses
  %.5.ph = phi i32 [ %.087144, %bb.g ], [ %i.bd, %bb.h ], [ %.087144, %bb.f ], [ %.087144, %bb.c ], [ %.087144, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1609

._crit_edge:                                      ; preds = %bb.i, %bb.d, %bb.e, %bb.a
  %.0112.lcssa = phi double [ +qnan, %bb.a ], [ %.0112140, %bb.e ], [ %.0112140, %bb.d ], [ %.5117.ph, %bb.i ] ; 3 uses
  %.0105.lcssa = phi double [ +qnan, %bb.a ], [ %.0105141, %bb.e ], [ %.0105141, %bb.d ], [ %.5110.ph, %bb.i ] ; 3 uses
  %.098.lcssa = phi double [ -inf, %bb.a ], [ %.098142, %bb.e ], [ %.098142, %bb.d ], [ %.5103.ph, %bb.i ] ; 2 uses
  %.091.lcssa = phi i32 [ 0, %bb.a ], [ %.091143, %bb.e ], [ %.091143, %bb.d ], [ %.596.ph, %bb.i ] ; 2 uses
  %.087.lcssa = phi i32 [ %i.d, %bb.a ], [ %.087144, %bb.e ], [ %.087144, %bb.d ], [ %.5.ph, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !242, !range !231, !noundef !232
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !312
  %i.bj = fadd double %5, %i.bi
  %i.bk = fcmp ogt double %.098.lcssa, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.087.lcssa, ptr %i.bl, align 4, !tbaa !406
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !277
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 424
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !401
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.091.lcssa, ptr %i.br, align 8, !tbaa !334
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0112.lcssa, ptr %i.bs, align 8, !tbaa !407
  %i.bt = fadd double %.0105.lcssa, f0xBCD203AFA0000000
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.bt, ptr %i.bu, align 8, !tbaa !408
  %i.bv = fsub double %1, %.0112.lcssa            ; 2 uses
  %i.bw = fsub double %2, %.0105.lcssa            ; 2 uses
  %i.bx = sub nsw i32 %3, %.091.lcssa
  %i.by = insertelement <2 x double> poison, double %.0112.lcssa, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bv, i64 1
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = insertelement <2 x double> poison, double %.0105.lcssa, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bw, i64 1
  %i.cd = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fadd <2 x double> %i.cc, %i.ce
  %i.cg = fdiv <2 x double> %i.ca, %i.cf
  store <2 x double> %i.cg, ptr %i.bq, align 8, !tbaa !295
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.bx, ptr %i.ch, align 4, !tbaa !335
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.bv, ptr %i.ci, align 8, !tbaa !412
  %i.cj = fadd double %i.bw, f0xBCD203AFA0000000
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.cj, ptr %i.ck, align 8, !tbaa !413
  %i.cl = fsub double %.098.lcssa, %5
  store double %i.cl, ptr %i.bh, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.cm, align 8, !tbaa !313
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb0ELb0ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = add nsw i32 %i.d, -2
  %i.h = sext i8 %i.c to i32                      ; 2 uses
  %i.i = sub i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i8 %i.c, 1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = fadd <2 x double> %i.l, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.n = icmp sgt i32 %i.d, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = add nsw i32 %i.d, -1                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0110159 = phi i32 [ %3, %.lr.ph.new ], [ %i.an, %bb.c ]
  %i.s = phi <2 x double> [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %10 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !295
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !295
  %i.x = fmul double %i.f, %i.v
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = fptosi double %i.y to i32
  %i.aa = fsub <2 x double> %i.s, %i.w
  %i.ab = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ab, 1
  %i.ac = sext i32 %indvars.iv.tr.1 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !295
  %i.ah = load <2 x double>, ptr %i.ae, align 8, !tbaa !295
  %i.ai = fmul double %i.f, %i.ag
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  %i.al = fsub <2 x double> %i.aa, %i.ah          ; 3 uses
  %i.am = add i32 %i.z, %i.ak
  %i.an = sub i32 %.0110159, %i.am                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1610

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0110159.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.al, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod208 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !295
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !295
  %i.au = fmul double %i.f, %i.as
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  %i.ax = fsub <2 x double> %.epil.init, %i.at
  %i.ay = sub nsw i32 %.0110159.epil.init, %i.aw
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.an, %.loopexit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.0108 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.az = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.m, %bb.b ], [ %i.al, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %.not163 = icmp sgt i32 %.0108, %i.i
  br i1 %.not163, label %._crit_edge, label %.lr.ph173

.lr.ph173:                                        ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !353 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = sext i32 %.0108 to i64
  %i.bj = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph173, %.thread
  %indvars.iv194 = phi i64 [ %i.bi, %.lr.ph173 ], [ %indvars.iv.next195, %.thread ] ; 5 uses
  %.2112169 = phi i32 [ %.1111, %.lr.ph173 ], [ %.3113, %.thread ] ; 2 uses
  %.0122166 = phi i32 [ %i.d, %.lr.ph173 ], [ %.5127, %.thread ] ; 6 uses
  %.0129165 = phi i32 [ 0, %.lr.ph173 ], [ %.5134, %.thread ] ; 6 uses
  %.0136164 = phi double [ -inf, %.lr.ph173 ], [ %.5141, %.thread ] ; 7 uses
  %i.bk = phi <2 x double> [ splat (double +qnan), %.lr.ph173 ], [ %i.cz, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ %i.az, %.lr.ph173 ], [ %i.ca, %.thread ] ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv194, -1
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bo = trunc nsw i64 %indvars.iv194 to i32
  %i.bp = shl nuw i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !295
  %i.bu = load <2 x double>, ptr %i.br, align 8, !tbaa !295
  %i.bv = fadd <2 x double> %i.bl, %i.bu
  %i.bw = fmul double %i.f, %i.bt
  %i.bx = fadd double %i.bw, 5.000000e-01
  %i.by = fptosi double %i.bx to i32
  %i.bz = add nsw i32 %.2112169, %i.by
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3113 = phi i32 [ %i.bz, %bb.e ], [ %.2112169, %bb.d ] ; 4 uses
  %i.ca = phi <2 x double> [ %i.bv, %bb.e ], [ %i.bl, %bb.d ] ; 6 uses
  %i.cb = icmp slt i32 %.3113, %i.be
  br i1 %i.cb, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load double, ptr %i.bf, align 8, !tbaa !405 ; 2 uses
  %i.cd = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.ce = fcmp olt double %i.cd, %i.cc
  br i1 %i.ce, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = sub nsw i32 %3, %.3113
  %i.cg = icmp slt i32 %i.cf, %i.be
  br i1 %i.cg, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = fsub double %2, %i.cd                   ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.cc
  br i1 %i.ci, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = extractelement <2 x double> %i.ca, i64 0
  %i.ck = fsub double %1, %i.cj
  %i.cl = load double, ptr %i.bg, align 8, !tbaa !401
  %i.cm = insertelement <2 x double> %i.ca, double %i.ck, i64 1 ; 2 uses
  %i.cn = fmul <2 x double> %i.cm, %i.cm
  %i.co = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = insertelement <2 x double> %i.co, double %i.ch, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fadd <2 x double> %i.cp, %i.cr
  %i.ct = fdiv <2 x double> %i.cn, %i.cs
  %i.cu = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ct) ; 3 uses
  %i.cv = fcmp ugt double %i.cu, %5
  br i1 %i.cv, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bh, align 8, !tbaa !242
  %i.cw = fcmp ogt double %i.cu, %.0136164
  br i1 %i.cw, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cx = trunc i64 %indvars.iv194 to i32
  %i.cy = add i32 %i.cx, %i.h
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.j, %bb.f, %bb.g
  %.5141 = phi double [ %.0136164, %bb.f ], [ %.0136164, %bb.g ], [ %.0136164, %bb.k ], [ %i.cu, %bb.l ], [ %.0136164, %bb.j ] ; 2 uses
  %.5134 = phi i32 [ %.0129165, %bb.f ], [ %.0129165, %bb.g ], [ %.0129165, %bb.k ], [ %.3113, %bb.l ], [ %.0129165, %bb.j ] ; 2 uses
  %.5127 = phi i32 [ %.0122166, %bb.f ], [ %.0122166, %bb.g ], [ %.0122166, %bb.k ], [ %i.cy, %bb.l ], [ %.0122166, %bb.j ] ; 2 uses
  %i.cz = phi <2 x double> [ %i.bk, %bb.f ], [ %i.bk, %bb.g ], [ %i.bk, %bb.k ], [ %i.ca, %bb.l ], [ %i.bk, %bb.j ] ; 2 uses
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, 1
  %.not.not = icmp slt i64 %indvars.iv194, %i.bj
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1611

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.0136.lcssa = phi double [ -inf, %.loopexit ], [ %.0136164, %bb.h ], [ %.0136164, %bb.i ], [ %.5141, %.thread ] ; 2 uses
  %.0129.lcssa = phi i32 [ 0, %.loopexit ], [ %.0129165, %bb.h ], [ %.0129165, %bb.i ], [ %.5134, %.thread ] ; 2 uses
  %.0122.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0122166, %bb.h ], [ %.0122166, %bb.i ], [ %.5127, %.thread ]
  %i.da = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ %i.cz, %.thread ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !312
  %i.dg = fadd double %5, %i.df
  %i.dh = fcmp ogt double %.0136.lcssa, %i.dg
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0122.lcssa, ptr %i.di, align 4, !tbaa !406
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !277
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 424
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !401
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0129.lcssa, ptr %i.do, align 8, !tbaa !334
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dq = extractelement <2 x double> %i.da, i64 0
  store double %i.dq, ptr %i.dp, align 8, !tbaa !407
  %i.dr = extractelement <2 x double> %i.da, i64 1
  %i.ds = fadd double %i.dr, f0xBCD203AFA0000000
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ds, ptr %i.dt, align 8, !tbaa !408
  %i.du = insertelement <2 x double> poison, double %1, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %2, i64 1
  %i.dw = fsub <2 x double> %i.dv, %i.da          ; 3 uses
  %i.dx = sub nsw i32 %3, %.0129.lcssa
  %i.dy = shufflevector <2 x double> %i.dw, <2 x double> %i.da, <2 x i32> <i32 3, i32 1>
  %i.dz = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fadd <2 x double> %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.dx, ptr %i.ec, align 4, !tbaa !335
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ee = shufflevector <2 x double> %i.dw, <2 x double> %i.da, <2 x i32> <i32 2, i32 0>
end_hunk_23
begin_hunk_24_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0100.lcssa, %i.co
  br i1 %i.cp, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.db = load double, ptr %i.da, align 8, !tbaa !375 ; 2 uses
  %i.dc = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.dd = fsub double %i.dc, %i.cv                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.de, double %i.dd, double 0.000000e+00
  %i.df = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.dg = zext i1 %i.df to i32
  %i.dh = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.dh to i32
  %i.di = add nsw i32 %.neg.i.i.i.i, %i.dg
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fneg double %i.dj
  %i.dl = fmul double %.sroa.speculated.i.i.i, %i.dk
  %i.dm = fadd double %.093.lcssa, %i.cx
  %i.dn = fdiv double %i.dl, %i.dm                ; 4 uses
  %i.do = fcmp ogt double %i.cz, 0.000000e+00     ; 2 uses
  %i.dp = tail call double @llvm.fabs.f64(double %i.dn)
  %i.dq = fcmp ogt double %i.dp, %i.cz
  %or.cond.i.i = and i1 %i.do, %i.dq
  br i1 %or.cond.i.i, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dr = fcmp ogt double %i.dn, 0.000000e+00
  %i.ds = zext i1 %i.dr to i32
  %i.dt = fcmp olt double %i.dn, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.dt to i32
  %i.du = add nsw i32 %.neg.i.i.i, %i.ds
  %i.dv = sitofp i32 %i.du to double
  %i.dw = fmul double %i.cz, %i.dv
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i = phi double [ %i.dw, %bb.o ], [ %i.dn, %bb.n ]
  %i.dx = sitofp i32 %.0122.lcssa to double
  %i.dy = fdiv double %i.dx, %i.db                ; 2 uses
  %i.dz = fmul double %i.dy, %.0.i.i
  %i.ea = fadd double %i.dy, 1.000000e+00         ; 2 uses
  %i.eb = fdiv double %i.dz, %i.ea
  %i.ec = fdiv double %8, %i.ea
  %i.ed = fadd double %i.ec, %i.eb                ; 3 uses
  %i.ee = fcmp olt double %i.ed, %.sroa.0.0.lcssa
  br i1 %i.ee, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i
  %i.ef = fcmp ogt double %i.ed, %.sroa.6.0.lcssa
  br i1 %i.ef, label %bb.q, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.q:                                             ; preds = %bb.p
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i, %bb.p, %bb.q
  %.0.i = phi double [ %i.ed, %bb.p ], [ %.sroa.6.0.lcssa, %bb.q ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.eg, align 8, !tbaa !410
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.eh, align 8, !tbaa !334
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.ei, align 8, !tbaa !407
  %i.ej = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ej, ptr %i.ek, align 8, !tbaa !408
  %i.el = fsub double %1, %.0.lcssa               ; 4 uses
  %i.em = fsub double %2, %.093.lcssa             ; 2 uses
  %i.en = sub nsw i32 %3, %.0122.lcssa            ; 2 uses
  %i.eo = tail call double @llvm.fabs.f64(double %i.el)
  %i.ep = fsub double %i.eo, %i.cv                ; 2 uses
  %i.eq = fcmp ogt double %i.ep, 0.000000e+00
  %.sroa.speculated.i.i.i137 = select i1 %i.eq, double %i.ep, double 0.000000e+00
  %i.er = fcmp ogt double %i.el, 0.000000e+00
  %i.es = zext i1 %i.er to i32
  %i.et = fcmp olt double %i.el, 0.000000e+00
  %.neg.i.i.i.i138 = sext i1 %i.et to i32
  %i.eu = add nsw i32 %.neg.i.i.i.i138, %i.es
  %i.ev = sitofp i32 %i.eu to double
  %i.ew = fneg double %i.ev
  %i.ex = fmul double %.sroa.speculated.i.i.i137, %i.ew
  %i.ey = fadd double %i.em, %i.cx
  %i.ez = fdiv double %i.ex, %i.ey                ; 4 uses
  %i.fa = tail call double @llvm.fabs.f64(double %i.ez)
  %i.fb = fcmp ogt double %i.fa, %i.cz
  %or.cond.i.i139 = and i1 %i.do, %i.fb
  br i1 %or.cond.i.i139, label %bb.r, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i140

bb.r:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fc = fcmp ogt double %i.ez, 0.000000e+00
  %i.fd = zext i1 %i.fc to i32
  %i.fe = fcmp olt double %i.ez, 0.000000e+00
  %.neg.i.i.i143 = sext i1 %i.fe to i32
  %i.ff = add nsw i32 %.neg.i.i.i143, %i.fd
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = fmul double %i.cz, %i.fg
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i140

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i140: ; preds = %bb.r, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i141 = phi double [ %i.fh, %bb.r ], [ %i.ez, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.fi = sitofp i32 %i.en to double
  %i.fj = fdiv double %i.fi, %i.db                ; 2 uses
  %i.fk = fmul double %i.fj, %.0.i.i141
  %i.fl = fadd double %i.fj, 1.000000e+00         ; 2 uses
  %i.fm = fdiv double %i.fk, %i.fl
  %i.fn = fdiv double %8, %i.fl
  %i.fo = fadd double %i.fn, %i.fm                ; 3 uses
  %i.fp = fcmp olt double %i.fo, %.sroa.0146.0.lcssa
  br i1 %i.fp, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit144, label %bb.s

bb.s:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i140
  %i.fq = fcmp ogt double %i.fo, %.sroa.6148.0.lcssa
  br i1 %i.fq, label %bb.t, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit144

bb.t:                                             ; preds = %bb.s
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit144

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit144: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i140, %bb.s, %bb.t
  %.0.i142 = phi double [ %i.fo, %bb.s ], [ %.sroa.6148.0.lcssa, %bb.t ], [ %.sroa.0146.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1EEEdddddddid.exit.i140 ]
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i142, ptr %i.fr, align 8, !tbaa !411
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.en, ptr %i.fs, align 4, !tbaa !335
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.el, ptr %i.ft, align 8, !tbaa !412
  %i.fu = fadd double %i.em, f0xBCD203AFA0000000
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fu, ptr %i.fv, align 8, !tbaa !413
  %i.fw = fsub double %.0100.lcssa, %5
  store double %i.fw, ptr %i.cm, align 8, !tbaa !312
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fx, align 8, !tbaa !313
  br label %bb.u

bb.u:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit144, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137181 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137181, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1653

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137181.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod254 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137181.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not185 = icmp sgt i32 %.0135, %i.p
  br i1 %.not185, label %._crit_edge, label %.lr.ph199

.lr.ph199:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph199, %.thread
  %indvars.iv232 = phi i64 [ %i.bj, %.lr.ph199 ], [ %indvars.iv.next233, %.thread ] ; 5 uses
  %.0110196 = phi double [ -inf, %.lr.ph199 ], [ %.5115, %.thread ] ; 8 uses
  %.0120195 = phi i32 [ 0, %.lr.ph199 ], [ %.5125, %.thread ] ; 7 uses
  %.0127194 = phi i32 [ %i.d, %.lr.ph199 ], [ %.5132, %.thread ] ; 7 uses
  %.2139192 = phi i32 [ %.1138, %.lr.ph199 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0189 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0188 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0165.0187 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.0165.2, %.thread ] ; 6 uses
  %.sroa.6167.0186 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.6167.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph199 ], [ %i.dv, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph199 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv232, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv232 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139192, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139192, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cr = fsub double %1, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !377
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !378
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !384
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.db = load double, ptr %i.da, align 8, !tbaa !375
  %i.dc = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cq, double noundef %i.ck, double noundef %i.cr, double noundef %i.co, double noundef %i.ct, double noundef %i.cv, double noundef %i.cx, ptr noundef nonnull %4, i8 noundef signext %i.cz, double noundef %i.db, i32 noundef %.3140, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.dd = fcmp ugt double %i.dc, %5
  br i1 %i.dd, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.de = fcmp ogt double %i.dc, %.0110196
  br i1 %i.de, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr %4, align 8, !tbaa !282
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call { double, double } %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dj = extractvalue { double, double } %i.di, 0 ; 3 uses
  %i.dk = extractvalue { double, double } %i.di, 1 ; 3 uses
  %i.dl = load ptr, ptr %4, align 8, !tbaa !282
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = tail call { double, double } %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dp = extractvalue { double, double } %i.do, 0 ; 3 uses
  %i.dq = extractvalue { double, double } %i.do, 1 ; 3 uses
  %i.dr = fcmp ogt double %i.dj, %i.dk
  %i.ds = fcmp ogt double %i.dp, %i.dq
  %or.cond = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = trunc i64 %indvars.iv232 to i32
  %i.du = add i32 %i.dt, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.j, %bb.l, %bb.f, %bb.g
  %.sroa.6167.2 = phi double [ %.sroa.6167.0186, %bb.f ], [ %.sroa.6167.0186, %bb.g ], [ %.sroa.6167.0186, %bb.j ], [ %.sroa.6167.0186, %bb.k ], [ %i.dk, %bb.m ], [ %i.dk, %bb.l ] ; 2 uses
  %.sroa.0165.2 = phi double [ %.sroa.0165.0187, %bb.f ], [ %.sroa.0165.0187, %bb.g ], [ %.sroa.0165.0187, %bb.j ], [ %.sroa.0165.0187, %bb.k ], [ %i.dj, %bb.m ], [ %i.dj, %bb.l ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0188, %bb.f ], [ %.sroa.6.0188, %bb.g ], [ %.sroa.6.0188, %bb.j ], [ %.sroa.6.0188, %bb.k ], [ %i.dq, %bb.m ], [ %i.dq, %bb.l ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0189, %bb.f ], [ %.sroa.0.0189, %bb.g ], [ %.sroa.0.0189, %bb.j ], [ %.sroa.0.0189, %bb.k ], [ %i.dp, %bb.m ], [ %i.dp, %bb.l ] ; 2 uses
  %.5132 = phi i32 [ %.0127194, %bb.f ], [ %.0127194, %bb.g ], [ %.0127194, %bb.j ], [ %.0127194, %bb.k ], [ %i.du, %bb.m ], [ %.0127194, %bb.l ] ; 2 uses
  %.5125 = phi i32 [ %.0120195, %bb.f ], [ %.0120195, %bb.g ], [ %.0120195, %bb.j ], [ %.0120195, %bb.k ], [ %.3140, %bb.m ], [ %.0120195, %bb.l ] ; 2 uses
  %.5115 = phi double [ %.0110196, %bb.f ], [ %.0110196, %bb.g ], [ %.0110196, %bb.j ], [ %.0110196, %bb.k ], [ %i.dc, %bb.m ], [ %.0110196, %bb.l ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.cb, %bb.m ], [ %i.bl, %bb.l ] ; 2 uses
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 1
  %.not.not = icmp slt i64 %indvars.iv232, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1654

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6167.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6167.0186, %bb.h ], [ %.sroa.6167.0186, %bb.i ], [ %.sroa.6167.2, %.thread ] ; 2 uses
  %.sroa.0165.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0165.0187, %bb.h ], [ %.sroa.0165.0187, %bb.i ], [ %.sroa.0165.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0188, %bb.h ], [ %.sroa.6.0188, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0189, %bb.h ], [ %.sroa.0.0189, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127194, %bb.h ], [ %.0127194, %bb.i ], [ %.5132, %.thread ]
  %.0120.lcssa = phi i32 [ 0, %.loopexit ], [ %.0120195, %bb.h ], [ %.0120195, %bb.i ], [ %.5125, %.thread ] ; 3 uses
  %.0110.lcssa = phi double [ -inf, %.loopexit ], [ %.0110196, %bb.h ], [ %.0110196, %bb.i ], [ %.5115, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.n, label %bb.v

bb.n:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !312
  %i.ec = fadd double %5, %i.eb
  %i.ed = fcmp ogt double %.0110.lcssa, %i.ec
end_hunk_24
begin_hunk_25_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %.sroa.6148.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6148.0170, %bb.e ], [ %.sroa.6148.0170, %bb.d ], [ %.sroa.6148.1.ph, %bb.l ] ; 2 uses
  %.sroa.0146.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0146.0171, %bb.e ], [ %.sroa.0146.0171, %bb.d ], [ %.sroa.0146.1.ph, %bb.l ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0172, %bb.e ], [ %.sroa.6.0172, %bb.d ], [ %.sroa.6.1.ph, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0173, %bb.e ], [ %.sroa.0.0173, %bb.d ], [ %.sroa.0.1.ph, %bb.l ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %bb.a ], [ %.0122174, %bb.e ], [ %.0122174, %bb.d ], [ %.5127.ph, %bb.l ] ; 2 uses
  %.0115.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0115175, %bb.e ], [ %.0115175, %bb.d ], [ %.5120.ph, %bb.l ]
  %.0100.lcssa = phi double [ -inf, %bb.a ], [ %.0100180, %bb.e ], [ %.0100180, %bb.d ], [ %.5105.ph, %bb.l ] ; 2 uses
  %.093.lcssa = phi double [ +qnan, %bb.a ], [ %.093181, %bb.e ], [ %.093181, %bb.d ], [ %.598.ph, %bb.l ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0182, %bb.e ], [ %.0182, %bb.d ], [ %.5.ph, %bb.l ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.m, label %bb.u

bb.m:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0100.lcssa, %i.co
  br i1 %i.cp, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 408
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !378 ; 5 uses
  %i.da = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.db = fsub double %i.da, %i.cv                ; 2 uses
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dc, double %i.db, double 0.000000e+00
  %i.dd = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.de = zext i1 %i.dd to i32
  %i.df = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.df to i32
  %i.dg = add nsw i32 %.neg.i.i.i.i, %i.de
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fneg double %i.dh
  %i.dj = fmul double %.sroa.speculated.i.i.i, %i.di
  %i.dk = fadd double %.093.lcssa, %i.cx
  %i.dl = fdiv double %i.dj, %i.dk                ; 4 uses
  %i.dm = fcmp ogt double %i.cz, 0.000000e+00     ; 2 uses
  %i.dn = tail call double @llvm.fabs.f64(double %i.dl)
  %i.do = fcmp ogt double %i.dn, %i.cz
  %or.cond.i.i = and i1 %i.dm, %i.do
  br i1 %or.cond.i.i, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dp = fcmp ogt double %i.dl, 0.000000e+00
  %i.dq = zext i1 %i.dp to i32
  %i.dr = fcmp olt double %i.dl, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.dr to i32
  %i.ds = add nsw i32 %.neg.i.i.i, %i.dq
  %i.dt = sitofp i32 %i.ds to double
  %i.du = fmul double %i.cz, %i.dt
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i = phi double [ %i.du, %bb.o ], [ %i.dl, %bb.n ] ; 3 uses
  %i.dv = fcmp olt double %.0.i.i, %.sroa.0.0.lcssa
  br i1 %i.dv, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i
  %i.dw = fcmp ogt double %.0.i.i, %.sroa.6.0.lcssa
  br i1 %i.dw, label %bb.q, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.q:                                             ; preds = %bb.p
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i, %bb.p, %bb.q
  %.0.i = phi double [ %.0.i.i, %bb.p ], [ %.sroa.6.0.lcssa, %bb.q ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.dx, align 8, !tbaa !410
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.dy, align 8, !tbaa !334
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.dz, align 8, !tbaa !407
  %i.ea = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ea, ptr %i.eb, align 8, !tbaa !408
  %i.ec = fsub double %1, %.0.lcssa               ; 4 uses
  %i.ed = fsub double %2, %.093.lcssa             ; 2 uses
  %i.ee = sub nsw i32 %3, %.0122.lcssa
  %i.ef = tail call double @llvm.fabs.f64(double %i.ec)
  %i.eg = fsub double %i.ef, %i.cv                ; 2 uses
  %i.eh = fcmp ogt double %i.eg, 0.000000e+00
  %.sroa.speculated.i.i.i137 = select i1 %i.eh, double %i.eg, double 0.000000e+00
  %i.ei = fcmp ogt double %i.ec, 0.000000e+00
  %i.ej = zext i1 %i.ei to i32
  %i.ek = fcmp olt double %i.ec, 0.000000e+00
  %.neg.i.i.i.i138 = sext i1 %i.ek to i32
  %i.el = add nsw i32 %.neg.i.i.i.i138, %i.ej
  %i.em = sitofp i32 %i.el to double
  %i.en = fneg double %i.em
  %i.eo = fmul double %.sroa.speculated.i.i.i137, %i.en
  %i.ep = fadd double %i.ed, %i.cx
  %i.eq = fdiv double %i.eo, %i.ep                ; 4 uses
  %i.er = tail call double @llvm.fabs.f64(double %i.eq)
  %i.es = fcmp ogt double %i.er, %i.cz
  %or.cond.i.i139 = and i1 %i.dm, %i.es
  br i1 %or.cond.i.i139, label %bb.r, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i140

bb.r:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.et = fcmp ogt double %i.eq, 0.000000e+00
  %i.eu = zext i1 %i.et to i32
  %i.ev = fcmp olt double %i.eq, 0.000000e+00
  %.neg.i.i.i143 = sext i1 %i.ev to i32
  %i.ew = add nsw i32 %.neg.i.i.i143, %i.eu
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fmul double %i.cz, %i.ex
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i140

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i140: ; preds = %bb.r, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i141 = phi double [ %i.ey, %bb.r ], [ %i.eq, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ] ; 3 uses
  %i.ez = fcmp olt double %.0.i.i141, %.sroa.0146.0.lcssa
  br i1 %i.ez, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144, label %bb.s

bb.s:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i140
  %i.fa = fcmp ogt double %.0.i.i141, %.sroa.6148.0.lcssa
  br i1 %i.fa, label %bb.t, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144

bb.t:                                             ; preds = %bb.s
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i140, %bb.s, %bb.t
  %.0.i142 = phi double [ %.0.i.i141, %bb.s ], [ %.sroa.6148.0.lcssa, %bb.t ], [ %.sroa.0146.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit.i140 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i142, ptr %i.fb, align 8, !tbaa !411
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ee, ptr %i.fc, align 4, !tbaa !335
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ec, ptr %i.fd, align 8, !tbaa !412
  %i.fe = fadd double %i.ed, f0xBCD203AFA0000000
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fe, ptr %i.ff, align 8, !tbaa !413
  %i.fg = fsub double %.0100.lcssa, %5
  store double %i.fg, ptr %i.cm, align 8, !tbaa !312
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fh, align 8, !tbaa !313
  br label %bb.u

bb.u:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137181 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137181, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1696

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137181.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod252 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137181.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not185 = icmp sgt i32 %.0135, %i.p
  br i1 %.not185, label %._crit_edge, label %.lr.ph199

.lr.ph199:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph199, %.thread
  %indvars.iv232 = phi i64 [ %i.bj, %.lr.ph199 ], [ %indvars.iv.next233, %.thread ] ; 5 uses
  %.0110196 = phi double [ -inf, %.lr.ph199 ], [ %.5115, %.thread ] ; 8 uses
  %.0120195 = phi i32 [ 0, %.lr.ph199 ], [ %.5125, %.thread ] ; 7 uses
  %.0127194 = phi i32 [ %i.d, %.lr.ph199 ], [ %.5132, %.thread ] ; 7 uses
  %.2139192 = phi i32 [ %.1138, %.lr.ph199 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0189 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0188 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0165.0187 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.0165.2, %.thread ] ; 6 uses
  %.sroa.6167.0186 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.6167.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph199 ], [ %i.dv, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph199 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv232, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv232 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139192, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139192, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cr = fsub double %1, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !377
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !378
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !384
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.db = load double, ptr %i.da, align 8, !tbaa !375
  %i.dc = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cq, double noundef %i.ck, double noundef %i.cr, double noundef %i.co, double noundef %i.ct, double noundef %i.cv, double noundef %i.cx, ptr noundef nonnull %4, i8 noundef signext %i.cz, double noundef %i.db, i32 noundef %.3140, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.dd = fcmp ugt double %i.dc, %5
  br i1 %i.dd, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.de = fcmp ogt double %i.dc, %.0110196
  br i1 %i.de, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr %4, align 8, !tbaa !282
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call { double, double } %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dj = extractvalue { double, double } %i.di, 0 ; 3 uses
  %i.dk = extractvalue { double, double } %i.di, 1 ; 3 uses
  %i.dl = load ptr, ptr %4, align 8, !tbaa !282
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = tail call { double, double } %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dp = extractvalue { double, double } %i.do, 0 ; 3 uses
  %i.dq = extractvalue { double, double } %i.do, 1 ; 3 uses
  %i.dr = fcmp ogt double %i.dj, %i.dk
  %i.ds = fcmp ogt double %i.dp, %i.dq
  %or.cond = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = trunc i64 %indvars.iv232 to i32
  %i.du = add i32 %i.dt, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.j, %bb.l, %bb.f, %bb.g
  %.sroa.6167.2 = phi double [ %.sroa.6167.0186, %bb.f ], [ %.sroa.6167.0186, %bb.g ], [ %.sroa.6167.0186, %bb.j ], [ %.sroa.6167.0186, %bb.k ], [ %i.dk, %bb.m ], [ %i.dk, %bb.l ] ; 2 uses
  %.sroa.0165.2 = phi double [ %.sroa.0165.0187, %bb.f ], [ %.sroa.0165.0187, %bb.g ], [ %.sroa.0165.0187, %bb.j ], [ %.sroa.0165.0187, %bb.k ], [ %i.dj, %bb.m ], [ %i.dj, %bb.l ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0188, %bb.f ], [ %.sroa.6.0188, %bb.g ], [ %.sroa.6.0188, %bb.j ], [ %.sroa.6.0188, %bb.k ], [ %i.dq, %bb.m ], [ %i.dq, %bb.l ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0189, %bb.f ], [ %.sroa.0.0189, %bb.g ], [ %.sroa.0.0189, %bb.j ], [ %.sroa.0.0189, %bb.k ], [ %i.dp, %bb.m ], [ %i.dp, %bb.l ] ; 2 uses
  %.5132 = phi i32 [ %.0127194, %bb.f ], [ %.0127194, %bb.g ], [ %.0127194, %bb.j ], [ %.0127194, %bb.k ], [ %i.du, %bb.m ], [ %.0127194, %bb.l ] ; 2 uses
  %.5125 = phi i32 [ %.0120195, %bb.f ], [ %.0120195, %bb.g ], [ %.0120195, %bb.j ], [ %.0120195, %bb.k ], [ %.3140, %bb.m ], [ %.0120195, %bb.l ] ; 2 uses
  %.5115 = phi double [ %.0110196, %bb.f ], [ %.0110196, %bb.g ], [ %.0110196, %bb.j ], [ %.0110196, %bb.k ], [ %i.dc, %bb.m ], [ %.0110196, %bb.l ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.cb, %bb.m ], [ %i.bl, %bb.l ] ; 2 uses
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 1
  %.not.not = icmp slt i64 %indvars.iv232, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1697

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6167.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6167.0186, %bb.h ], [ %.sroa.6167.0186, %bb.i ], [ %.sroa.6167.2, %.thread ] ; 2 uses
  %.sroa.0165.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0165.0187, %bb.h ], [ %.sroa.0165.0187, %bb.i ], [ %.sroa.0165.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0188, %bb.h ], [ %.sroa.6.0188, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0189, %bb.h ], [ %.sroa.0.0189, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127194, %bb.h ], [ %.0127194, %bb.i ], [ %.5132, %.thread ]
  %.0120.lcssa = phi i32 [ 0, %.loopexit ], [ %.0120195, %bb.h ], [ %.0120195, %bb.i ], [ %.5125, %.thread ] ; 2 uses
  %.0110.lcssa = phi double [ -inf, %.loopexit ], [ %.0110196, %bb.h ], [ %.0110196, %bb.i ], [ %.5115, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.n, label %bb.v

bb.n:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !312
  %i.ec = fadd double %5, %i.eb
  %i.ed = fcmp ogt double %.0110.lcssa, %i.ec
end_hunk_25
begin_hunk_26_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = add i32 %i.t, %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.j, %bb.h, %bb.k, %bb.i
  %.sroa.6144.1.ph = phi double [ %.sroa.6144.0166, %bb.h ], [ %.sroa.6144.0166, %bb.i ], [ %i.bz, %bb.k ], [ %i.bz, %bb.j ], [ %.sroa.6144.0166, %bb.c ], [ %.sroa.6144.0166, %bb.b ] ; 2 uses
  %.sroa.0142.1.ph = phi double [ %.sroa.0142.0167, %bb.h ], [ %.sroa.0142.0167, %bb.i ], [ %i.by, %bb.k ], [ %i.by, %bb.j ], [ %.sroa.0142.0167, %bb.c ], [ %.sroa.0142.0167, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0168, %bb.h ], [ %.sroa.6.0168, %bb.i ], [ %i.cf, %bb.k ], [ %i.cf, %bb.j ], [ %.sroa.6.0168, %bb.c ], [ %.sroa.6.0168, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0169, %bb.h ], [ %.sroa.0.0169, %bb.i ], [ %i.ce, %bb.k ], [ %i.ce, %bb.j ], [ %.sroa.0.0169, %bb.c ], [ %.sroa.0.0169, %bb.b ] ; 2 uses
  %.5127.ph = phi i32 [ %.0122170, %bb.h ], [ %.0122170, %bb.i ], [ %i.au, %bb.k ], [ %.0122170, %bb.j ], [ %.0122170, %bb.c ], [ %.0122170, %bb.b ] ; 2 uses
  %.5120.ph = phi i32 [ %.0115171, %bb.h ], [ %.0115171, %bb.i ], [ %i.ci, %bb.k ], [ %.0115171, %bb.j ], [ %.0115171, %bb.c ], [ %.0115171, %bb.b ] ; 2 uses
  %.5105.ph = phi double [ %.0100176, %bb.h ], [ %.0100176, %bb.i ], [ %i.br, %bb.k ], [ %.0100176, %bb.j ], [ %.0100176, %bb.c ], [ %.0100176, %bb.b ] ; 2 uses
  %.598.ph = phi double [ %.093177, %bb.h ], [ %.093177, %bb.i ], [ %i.aw, %bb.k ], [ %.093177, %bb.j ], [ %.093177, %bb.c ], [ %.093177, %bb.b ] ; 2 uses
  %.5.ph = phi double [ %.0178, %bb.h ], [ %.0178, %bb.i ], [ %i.az, %bb.k ], [ %.0178, %bb.j ], [ %.0178, %bb.c ], [ %.0178, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1738

._crit_edge:                                      ; preds = %bb.l, %bb.d, %bb.e, %bb.a
  %.sroa.6144.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6144.0166, %bb.e ], [ %.sroa.6144.0166, %bb.d ], [ %.sroa.6144.1.ph, %bb.l ] ; 2 uses
  %.sroa.0142.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0142.0167, %bb.e ], [ %.sroa.0142.0167, %bb.d ], [ %.sroa.0142.1.ph, %bb.l ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0168, %bb.e ], [ %.sroa.6.0168, %bb.d ], [ %.sroa.6.1.ph, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0169, %bb.e ], [ %.sroa.0.0169, %bb.d ], [ %.sroa.0.1.ph, %bb.l ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %bb.a ], [ %.0122170, %bb.e ], [ %.0122170, %bb.d ], [ %.5127.ph, %bb.l ] ; 3 uses
  %.0115.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0115171, %bb.e ], [ %.0115171, %bb.d ], [ %.5120.ph, %bb.l ]
  %.0100.lcssa = phi double [ -inf, %bb.a ], [ %.0100176, %bb.e ], [ %.0100176, %bb.d ], [ %.5105.ph, %bb.l ] ; 2 uses
  %.093.lcssa = phi double [ +qnan, %bb.a ], [ %.093177, %bb.e ], [ %.093177, %bb.d ], [ %.598.ph, %bb.l ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0178, %bb.e ], [ %.0178, %bb.d ], [ %.5.ph, %bb.l ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.m, label %bb.s

bb.m:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0100.lcssa, %i.co
  br i1 %i.cp, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !377 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !375 ; 2 uses
  %i.da = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.db = fsub double %i.da, %i.cv                ; 2 uses
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.dc, double %i.db, double 0.000000e+00
  %i.dd = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.de = zext i1 %i.dd to i32
  %i.df = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.df to i32
  %i.dg = add nsw i32 %.neg.i.i.i.i, %i.de
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fneg double %i.dh
  %i.dj = fmul double %.sroa.speculated.i.i.i, %i.di
  %i.dk = fadd double %.093.lcssa, %i.cx
  %i.dl = fdiv double %i.dj, %i.dk
  %i.dm = sitofp i32 %.0122.lcssa to double
  %i.dn = fdiv double %i.dm, %i.cz                ; 2 uses
  %i.do = fmul double %i.dn, %i.dl
  %i.dp = fadd double %i.dn, 1.000000e+00         ; 2 uses
  %i.dq = fdiv double %i.do, %i.dp
  %i.dr = fdiv double %8, %i.dp
  %i.ds = fadd double %i.dr, %i.dq                ; 3 uses
  %i.dt = fcmp olt double %i.ds, %.sroa.0.0.lcssa
  br i1 %i.dt, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = fcmp ogt double %i.ds, %.sroa.6.0.lcssa
  br i1 %i.du, label %bb.p, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.p:                                             ; preds = %bb.o
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.0.i = phi double [ %i.ds, %bb.o ], [ %.sroa.6.0.lcssa, %bb.p ], [ %.sroa.0.0.lcssa, %bb.n ]
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.dv, align 8, !tbaa !410
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.dw, align 8, !tbaa !334
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.dx, align 8, !tbaa !407
  %i.dy = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dy, ptr %i.dz, align 8, !tbaa !408
  %i.ea = fsub double %1, %.0.lcssa               ; 4 uses
  %i.eb = fsub double %2, %.093.lcssa             ; 2 uses
  %i.ec = sub nsw i32 %3, %.0122.lcssa            ; 2 uses
  %i.ed = tail call double @llvm.fabs.f64(double %i.ea)
  %i.ee = fsub double %i.ed, %i.cv                ; 2 uses
  %i.ef = fcmp ogt double %i.ee, 0.000000e+00
  %.sroa.speculated.i.i.i137 = select i1 %i.ef, double %i.ee, double 0.000000e+00
  %i.eg = fcmp ogt double %i.ea, 0.000000e+00
  %i.eh = zext i1 %i.eg to i32
  %i.ei = fcmp olt double %i.ea, 0.000000e+00
  %.neg.i.i.i.i138 = sext i1 %i.ei to i32
  %i.ej = add nsw i32 %.neg.i.i.i.i138, %i.eh
  %i.ek = sitofp i32 %i.ej to double
  %i.el = fneg double %i.ek
  %i.em = fmul double %.sroa.speculated.i.i.i137, %i.el
  %i.en = fadd double %i.eb, %i.cx
  %i.eo = fdiv double %i.em, %i.en
  %i.ep = sitofp i32 %i.ec to double
  %i.eq = fdiv double %i.ep, %i.cz                ; 2 uses
  %i.er = fmul double %i.eq, %i.eo
  %i.es = fadd double %i.eq, 1.000000e+00         ; 2 uses
  %i.et = fdiv double %i.er, %i.es
  %i.eu = fdiv double %8, %i.es
  %i.ev = fadd double %i.eu, %i.et                ; 3 uses
  %i.ew = fcmp olt double %i.ev, %.sroa.0142.0.lcssa
  br i1 %i.ew, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit140, label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ex = fcmp ogt double %i.ev, %.sroa.6144.0.lcssa
  br i1 %i.ex, label %bb.r, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit140

bb.r:                                             ; preds = %bb.q
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit140

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit140: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.q, %bb.r
  %.0.i139 = phi double [ %i.ev, %bb.q ], [ %.sroa.6144.0.lcssa, %bb.r ], [ %.sroa.0142.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i139, ptr %i.ey, align 8, !tbaa !411
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ec, ptr %i.ez, align 4, !tbaa !335
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ea, ptr %i.fa, align 8, !tbaa !412
  %i.fb = fadd double %i.eb, f0xBCD203AFA0000000
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fb, ptr %i.fc, align 8, !tbaa !413
  %i.fd = fsub double %.0100.lcssa, %5
  store double %i.fd, ptr %i.cm, align 8, !tbaa !312
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fe, align 8, !tbaa !313
  br label %bb.s

bb.s:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit140, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137177 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137177, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1739

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137177.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod249 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137177.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not181 = icmp sgt i32 %.0135, %i.p
  br i1 %.not181, label %._crit_edge, label %.lr.ph195

.lr.ph195:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph195, %.thread
  %indvars.iv228 = phi i64 [ %i.bj, %.lr.ph195 ], [ %indvars.iv.next229, %.thread ] ; 5 uses
  %.0110192 = phi double [ -inf, %.lr.ph195 ], [ %.5115, %.thread ] ; 8 uses
  %.0120191 = phi i32 [ 0, %.lr.ph195 ], [ %.5125, %.thread ] ; 7 uses
  %.0127190 = phi i32 [ %i.d, %.lr.ph195 ], [ %.5132, %.thread ] ; 7 uses
  %.2139188 = phi i32 [ %.1138, %.lr.ph195 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0185 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph195 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0184 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph195 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0161.0183 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph195 ], [ %.sroa.0161.2, %.thread ] ; 6 uses
  %.sroa.6163.0182 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph195 ], [ %.sroa.6163.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph195 ], [ %i.dv, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph195 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv228, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv228 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139188, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139188, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cr = fsub double %1, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !377
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !378
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !384
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.db = load double, ptr %i.da, align 8, !tbaa !375
  %i.dc = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cq, double noundef %i.ck, double noundef %i.cr, double noundef %i.co, double noundef %i.ct, double noundef %i.cv, double noundef %i.cx, ptr noundef nonnull %4, i8 noundef signext %i.cz, double noundef %i.db, i32 noundef %.3140, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.dd = fcmp ugt double %i.dc, %5
  br i1 %i.dd, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.de = fcmp ogt double %i.dc, %.0110192
  br i1 %i.de, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr %4, align 8, !tbaa !282
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call { double, double } %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dj = extractvalue { double, double } %i.di, 0 ; 3 uses
  %i.dk = extractvalue { double, double } %i.di, 1 ; 3 uses
  %i.dl = load ptr, ptr %4, align 8, !tbaa !282
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = tail call { double, double } %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dp = extractvalue { double, double } %i.do, 0 ; 3 uses
  %i.dq = extractvalue { double, double } %i.do, 1 ; 3 uses
  %i.dr = fcmp ogt double %i.dj, %i.dk
  %i.ds = fcmp ogt double %i.dp, %i.dq
  %or.cond = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = trunc i64 %indvars.iv228 to i32
  %i.du = add i32 %i.dt, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.j, %bb.l, %bb.f, %bb.g
  %.sroa.6163.2 = phi double [ %.sroa.6163.0182, %bb.f ], [ %.sroa.6163.0182, %bb.g ], [ %.sroa.6163.0182, %bb.j ], [ %.sroa.6163.0182, %bb.k ], [ %i.dk, %bb.m ], [ %i.dk, %bb.l ] ; 2 uses
  %.sroa.0161.2 = phi double [ %.sroa.0161.0183, %bb.f ], [ %.sroa.0161.0183, %bb.g ], [ %.sroa.0161.0183, %bb.j ], [ %.sroa.0161.0183, %bb.k ], [ %i.dj, %bb.m ], [ %i.dj, %bb.l ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0184, %bb.f ], [ %.sroa.6.0184, %bb.g ], [ %.sroa.6.0184, %bb.j ], [ %.sroa.6.0184, %bb.k ], [ %i.dq, %bb.m ], [ %i.dq, %bb.l ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0185, %bb.f ], [ %.sroa.0.0185, %bb.g ], [ %.sroa.0.0185, %bb.j ], [ %.sroa.0.0185, %bb.k ], [ %i.dp, %bb.m ], [ %i.dp, %bb.l ] ; 2 uses
  %.5132 = phi i32 [ %.0127190, %bb.f ], [ %.0127190, %bb.g ], [ %.0127190, %bb.j ], [ %.0127190, %bb.k ], [ %i.du, %bb.m ], [ %.0127190, %bb.l ] ; 2 uses
  %.5125 = phi i32 [ %.0120191, %bb.f ], [ %.0120191, %bb.g ], [ %.0120191, %bb.j ], [ %.0120191, %bb.k ], [ %.3140, %bb.m ], [ %.0120191, %bb.l ] ; 2 uses
  %.5115 = phi double [ %.0110192, %bb.f ], [ %.0110192, %bb.g ], [ %.0110192, %bb.j ], [ %.0110192, %bb.k ], [ %i.dc, %bb.m ], [ %.0110192, %bb.l ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.cb, %bb.m ], [ %i.bl, %bb.l ] ; 2 uses
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, 1
  %.not.not = icmp slt i64 %indvars.iv228, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1740

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6163.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6163.0182, %bb.h ], [ %.sroa.6163.0182, %bb.i ], [ %.sroa.6163.2, %.thread ] ; 2 uses
  %.sroa.0161.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0161.0183, %bb.h ], [ %.sroa.0161.0183, %bb.i ], [ %.sroa.0161.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0184, %bb.h ], [ %.sroa.6.0184, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0185, %bb.h ], [ %.sroa.0.0185, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127190, %bb.h ], [ %.0127190, %bb.i ], [ %.5132, %.thread ]
  %.0120.lcssa = phi i32 [ 0, %.loopexit ], [ %.0120191, %bb.h ], [ %.0120191, %bb.i ], [ %.5125, %.thread ] ; 3 uses
  %.0110.lcssa = phi double [ -inf, %.loopexit ], [ %.0110192, %bb.h ], [ %.0110192, %bb.i ], [ %.5115, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.n, label %bb.t

bb.n:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !312
  %i.ec = fadd double %5, %i.eb
  %i.ed = fcmp ogt double %.0110.lcssa, %i.ec
end_hunk_26
begin_hunk_27_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
bb.p:                                             ; preds = %bb.o
  %i.dy = load ptr, ptr %4, align 8, !tbaa !282
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call { double, double } %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.ec = extractvalue { double, double } %i.eb, 0 ; 3 uses
  %i.ed = extractvalue { double, double } %i.eb, 1 ; 3 uses
  %i.ee = load ptr, ptr %4, align 8, !tbaa !282
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call { double, double } %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.ei = extractvalue { double, double } %i.eh, 0 ; 3 uses
  %i.ej = extractvalue { double, double } %i.eh, 1 ; 3 uses
  %i.ek = fcmp ogt double %i.ec, %i.ed
  %i.el = fcmp ogt double %i.ei, %i.ej
  %or.cond = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.em = add i32 %i.t, %i.y
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.c, %bb.p, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.q, %bb.o
  %.sroa.6145.1.ph = phi double [ %.sroa.6145.0167, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6145.0167, %bb.o ], [ %i.ed, %bb.q ], [ %i.ed, %bb.p ], [ %.sroa.6145.0167, %bb.c ], [ %.sroa.6145.0167, %bb.b ] ; 2 uses
  %.sroa.0143.1.ph = phi double [ %.sroa.0143.0168, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0143.0168, %bb.o ], [ %i.ec, %bb.q ], [ %i.ec, %bb.p ], [ %.sroa.0143.0168, %bb.c ], [ %.sroa.0143.0168, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0169, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0169, %bb.o ], [ %i.ej, %bb.q ], [ %i.ej, %bb.p ], [ %.sroa.6.0169, %bb.c ], [ %.sroa.6.0169, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0170, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0170, %bb.o ], [ %i.ei, %bb.q ], [ %i.ei, %bb.p ], [ %.sroa.0.0170, %bb.c ], [ %.sroa.0.0170, %bb.b ] ; 2 uses
  %.5127.ph = phi i32 [ %.0122171, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0122171, %bb.o ], [ %i.au, %bb.q ], [ %.0122171, %bb.p ], [ %.0122171, %bb.c ], [ %.0122171, %bb.b ] ; 2 uses
  %.5120.ph = phi i32 [ %.0115172, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0115172, %bb.o ], [ %i.em, %bb.q ], [ %.0115172, %bb.p ], [ %.0115172, %bb.c ], [ %.0115172, %bb.b ] ; 2 uses
  %.5105.ph = phi double [ %.0100177, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0100177, %bb.o ], [ %.0.i, %bb.q ], [ %.0100177, %bb.p ], [ %.0100177, %bb.c ], [ %.0100177, %bb.b ] ; 2 uses
  %.598.ph = phi double [ %.093178, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.093178, %bb.o ], [ %i.aw, %bb.q ], [ %.093178, %bb.p ], [ %.093178, %bb.c ], [ %.093178, %bb.b ] ; 2 uses
  %.5.ph = phi double [ %.0179, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0179, %bb.o ], [ %i.az, %bb.q ], [ %.0179, %bb.p ], [ %.0179, %bb.c ], [ %.0179, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1781

._crit_edge:                                      ; preds = %bb.r, %bb.d, %bb.e, %bb.a
  %.sroa.6145.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6145.0167, %bb.e ], [ %.sroa.6145.0167, %bb.d ], [ %.sroa.6145.1.ph, %bb.r ] ; 2 uses
  %.sroa.0143.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0143.0168, %bb.e ], [ %.sroa.0143.0168, %bb.d ], [ %.sroa.0143.1.ph, %bb.r ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0169, %bb.e ], [ %.sroa.6.0169, %bb.d ], [ %.sroa.6.1.ph, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0170, %bb.e ], [ %.sroa.0.0170, %bb.d ], [ %.sroa.0.1.ph, %bb.r ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %bb.a ], [ %.0122171, %bb.e ], [ %.0122171, %bb.d ], [ %.5127.ph, %bb.r ] ; 2 uses
  %.0115.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0115172, %bb.e ], [ %.0115172, %bb.d ], [ %.5120.ph, %bb.r ]
  %.0100.lcssa = phi double [ -inf, %bb.a ], [ %.0100177, %bb.e ], [ %.0100177, %bb.d ], [ %.5105.ph, %bb.r ] ; 2 uses
  %.093.lcssa = phi double [ +qnan, %bb.a ], [ %.093178, %bb.e ], [ %.093178, %bb.d ], [ %.598.ph, %bb.r ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0179, %bb.e ], [ %.0179, %bb.d ], [ %.5.ph, %bb.r ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !242, !range !231, !noundef !232
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.s, label %bb.y

bb.s:                                             ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !312
  %i.es = fadd double %5, %i.er
  %i.et = fcmp ogt double %.0100.lcssa, %i.es
  br i1 %i.et, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.eu, align 4, !tbaa !406
  %i.ev = load ptr, ptr %0, align 8, !tbaa !273
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !277 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 416
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !377 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 424
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !401 ; 2 uses
  %i.fc = tail call double @llvm.fabs.f64(double %.0.lcssa)
  %i.fd = fsub double %i.fc, %i.ez                ; 2 uses
  %i.fe = fcmp ogt double %i.fd, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.fe, double %i.fd, double 0.000000e+00
  %i.ff = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.fg = zext i1 %i.ff to i32
  %i.fh = fcmp olt double %.0.lcssa, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.fh to i32
  %i.fi = add nsw i32 %.neg.i.i.i.i, %i.fg
  %i.fj = sitofp i32 %i.fi to double
  %i.fk = fneg double %i.fj
  %i.fl = fmul double %.sroa.speculated.i.i.i, %i.fk
  %i.fm = fadd double %.093.lcssa, %i.fb
  %i.fn = fdiv double %i.fl, %i.fm                ; 3 uses
  %i.fo = fcmp olt double %i.fn, %.sroa.0.0.lcssa
  br i1 %i.fo, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fp = fcmp ogt double %i.fn, %.sroa.6.0.lcssa
  br i1 %i.fp, label %bb.v, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.v:                                             ; preds = %bb.u
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.0.i137 = phi double [ %i.fn, %bb.u ], [ %.sroa.6.0.lcssa, %bb.v ], [ %.sroa.0.0.lcssa, %bb.t ]
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i137, ptr %i.fq, align 8, !tbaa !410
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.fr, align 8, !tbaa !334
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.fs, align 8, !tbaa !407
  %i.ft = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.ft, ptr %i.fu, align 8, !tbaa !408
  %i.fv = fsub double %1, %.0.lcssa               ; 4 uses
  %i.fw = fsub double %2, %.093.lcssa             ; 2 uses
  %i.fx = sub nsw i32 %3, %.0122.lcssa
  %i.fy = tail call double @llvm.fabs.f64(double %i.fv)
  %i.fz = fsub double %i.fy, %i.ez                ; 2 uses
  %i.ga = fcmp ogt double %i.fz, 0.000000e+00
  %.sroa.speculated.i.i.i138 = select i1 %i.ga, double %i.fz, double 0.000000e+00
  %i.gb = fcmp ogt double %i.fv, 0.000000e+00
  %i.gc = zext i1 %i.gb to i32
  %i.gd = fcmp olt double %i.fv, 0.000000e+00
  %.neg.i.i.i.i139 = sext i1 %i.gd to i32
  %i.ge = add nsw i32 %.neg.i.i.i.i139, %i.gc
  %i.gf = sitofp i32 %i.ge to double
  %i.gg = fneg double %i.gf
  %i.gh = fmul double %.sroa.speculated.i.i.i138, %i.gg
  %i.gi = fadd double %i.fw, %i.fb
  %i.gj = fdiv double %i.gh, %i.gi                ; 3 uses
  %i.gk = fcmp olt double %i.gj, %.sroa.0143.0.lcssa
  br i1 %i.gk, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit141, label %bb.w

bb.w:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.gl = fcmp ogt double %i.gj, %.sroa.6145.0.lcssa
  br i1 %i.gl, label %bb.x, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit141

bb.x:                                             ; preds = %bb.w
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit141

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit141: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.w, %bb.x
  %.0.i140 = phi double [ %i.gj, %bb.w ], [ %.sroa.6145.0.lcssa, %bb.x ], [ %.sroa.0143.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i140, ptr %i.gm, align 8, !tbaa !411
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.fx, ptr %i.gn, align 4, !tbaa !335
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.fv, ptr %i.go, align 8, !tbaa !412
  %i.gp = fadd double %i.fw, f0xBCD203AFA0000000
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.gp, ptr %i.gq, align 8, !tbaa !413
  %i.gr = fsub double %.0100.lcssa, %5
  store double %i.gr, ptr %i.eq, align 8, !tbaa !312
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.gs, align 8, !tbaa !313
  br label %bb.y

bb.y:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit141, %bb.s, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb1ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137178 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137178, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1782

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137178.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod254 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137178.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not182 = icmp sgt i32 %.0135, %i.p
  br i1 %.not182, label %._crit_edge, label %.lr.ph196

.lr.ph196:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph196, %.thread
  %indvars.iv229 = phi i64 [ %i.bj, %.lr.ph196 ], [ %indvars.iv.next230, %.thread ] ; 5 uses
  %.0110193 = phi double [ -inf, %.lr.ph196 ], [ %.5115, %.thread ] ; 8 uses
  %.0120192 = phi i32 [ 0, %.lr.ph196 ], [ %.5125, %.thread ] ; 7 uses
  %.0127191 = phi i32 [ %i.d, %.lr.ph196 ], [ %.5132, %.thread ] ; 7 uses
  %.2139189 = phi i32 [ %.1138, %.lr.ph196 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0186 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph196 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0185 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph196 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0162.0184 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph196 ], [ %.sroa.0162.2, %.thread ] ; 6 uses
  %.sroa.6164.0183 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph196 ], [ %.sroa.6164.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph196 ], [ %i.fz, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph196 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv229, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv229 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139189, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139189, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 4 uses
  %i.cr = fsub double %1, %i.cq                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !377 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !384 ; 2 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !282
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call { double, double } %i.da(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !8 ; 2 uses
  %i.dc = extractvalue { double, double } %i.db, 0 ; 2 uses
  %i.dd = extractvalue { double, double } %i.db, 1 ; 2 uses
  %i.de = tail call double @llvm.fabs.f64(double %i.cq)
  %i.df = fsub double %i.de, %i.ct                ; 2 uses
  %i.dg = fcmp ogt double %i.df, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.dg, double %i.df, double 0.000000e+00 ; 2 uses
  %i.dh = fcmp ogt double %i.cq, 0.000000e+00
  %i.di = zext i1 %i.dh to i32
  %i.dj = fcmp olt double %i.cq, 0.000000e+00
  %.neg.i.i.i.i.i = sext i1 %i.dj to i32
  %i.dk = add nsw i32 %.neg.i.i.i.i.i, %i.di
  %i.dl = sitofp i32 %i.dk to double              ; 2 uses
  %i.dm = fneg double %i.dl
  %i.dn = fmul double %.sroa.speculated.i.i.i.i, %i.dm
  %i.do = fadd double %i.ck, %i.cv                ; 2 uses
  %i.dp = fdiv double %i.dn, %i.do                ; 3 uses
  %i.dq = fcmp olt double %i.dp, %i.dc
  br i1 %i.dq, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = fcmp ogt double %i.dp, %i.dd
  br i1 %i.dr, label %bb.l, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.l:                                             ; preds = %bb.k
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i = phi double [ %i.dp, %bb.k ], [ %i.dd, %bb.l ], [ %i.dc, %bb.j ] ; 3 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !282
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call { double, double } %i.du(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !8 ; 2 uses
  %i.dw = extractvalue { double, double } %i.dv, 0 ; 2 uses
  %i.dx = extractvalue { double, double } %i.dv, 1 ; 2 uses
  %i.dy = tail call double @llvm.fabs.f64(double %i.cr)
  %i.dz = fsub double %i.dy, %i.ct                ; 2 uses
  %i.ea = fcmp ogt double %i.dz, 0.000000e+00
  %.sroa.speculated.i.i.i35.i = select i1 %i.ea, double %i.dz, double 0.000000e+00 ; 2 uses
  %i.eb = fcmp ogt double %i.cr, 0.000000e+00
  %i.ec = zext i1 %i.eb to i32
  %i.ed = fcmp olt double %i.cr, 0.000000e+00
  %.neg.i.i.i.i36.i = sext i1 %i.ed to i32
  %i.ee = add nsw i32 %.neg.i.i.i.i36.i, %i.ec
  %i.ef = sitofp i32 %i.ee to double              ; 2 uses
  %i.eg = fneg double %i.ef
  %i.eh = fmul double %.sroa.speculated.i.i.i35.i, %i.eg
  %i.ei = fadd double %i.co, %i.cv                ; 2 uses
  %i.ej = fdiv double %i.eh, %i.ei                ; 3 uses
  %i.ek = fcmp olt double %i.ej, %i.dw
  br i1 %i.ek, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit38.i, label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.el = fcmp ogt double %i.ej, %i.dx
  br i1 %i.el, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit38.i

bb.n:                                             ; preds = %bb.m
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit38.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit38.i: ; preds = %bb.n, %bb.m, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %.0.i37.i = phi double [ %i.ej, %bb.m ], [ %i.dx, %bb.n ], [ %i.dw, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i ] ; 3 uses
  %i.em = icmp sgt i8 %i.cx, 0
  %i.en = fcmp ogt double %.0.i.i, %.0.i37.i
  %or.cond.i = and i1 %i.em, %i.en
  br i1 %or.cond.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb1ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.o
end_hunk_27
begin_hunk_28_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb1ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %.5105.ph = phi double [ %.0100178, %bb.h ], [ %.0100178, %bb.i ], [ %i.br, %bb.k ], [ %.0100178, %bb.j ], [ %.0100178, %bb.c ], [ %.0100178, %bb.b ] ; 2 uses
  %.598.ph = phi double [ %.093179, %bb.h ], [ %.093179, %bb.i ], [ %i.aw, %bb.k ], [ %.093179, %bb.j ], [ %.093179, %bb.c ], [ %.093179, %bb.b ] ; 2 uses
  %.5.ph = phi double [ %.0180, %bb.h ], [ %.0180, %bb.i ], [ %i.az, %bb.k ], [ %.0180, %bb.j ], [ %.0180, %bb.c ], [ %.0180, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1824

._crit_edge:                                      ; preds = %bb.l, %bb.d, %bb.e, %bb.a
  %.sroa.6146.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6146.0168, %bb.e ], [ %.sroa.6146.0168, %bb.d ], [ %.sroa.6146.1.ph, %bb.l ] ; 2 uses
  %.sroa.0144.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0144.0169, %bb.e ], [ %.sroa.0144.0169, %bb.d ], [ %.sroa.0144.1.ph, %bb.l ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0170, %bb.e ], [ %.sroa.6.0170, %bb.d ], [ %.sroa.6.1.ph, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0171, %bb.e ], [ %.sroa.0.0171, %bb.d ], [ %.sroa.0.1.ph, %bb.l ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %bb.a ], [ %.0122172, %bb.e ], [ %.0122172, %bb.d ], [ %.5127.ph, %bb.l ] ; 3 uses
  %.0115.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0115173, %bb.e ], [ %.0115173, %bb.d ], [ %.5120.ph, %bb.l ]
  %.0100.lcssa = phi double [ -inf, %bb.a ], [ %.0100178, %bb.e ], [ %.0100178, %bb.d ], [ %.5105.ph, %bb.l ] ; 2 uses
  %.093.lcssa = phi double [ +qnan, %bb.a ], [ %.093179, %bb.e ], [ %.093179, %bb.d ], [ %.598.ph, %bb.l ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0180, %bb.e ], [ %.0180, %bb.d ], [ %.5.ph, %bb.l ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !242, !range !231, !noundef !232
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.m, label %bb.u

bb.m:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !312
  %i.co = fadd double %5, %i.cn
  %i.cp = fcmp ogt double %.0100.lcssa, %i.co
  br i1 %i.cp, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.cq, align 4, !tbaa !406
  %i.cr = load ptr, ptr %0, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 408
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !378 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !375 ; 2 uses
  %i.da = fneg double %.0.lcssa
  %i.db = fadd double %.093.lcssa, %i.cv
  %i.dc = fdiv double %i.da, %i.db                ; 4 uses
  %i.dd = fcmp ogt double %i.cx, 0.000000e+00     ; 2 uses
  %i.de = tail call double @llvm.fabs.f64(double %i.dc)
  %i.df = fcmp ogt double %i.de, %i.cx
  %or.cond.i.i = and i1 %i.dd, %i.df
  br i1 %or.cond.i.i, label %bb.o, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dg = fcmp ogt double %i.dc, 0.000000e+00
  %i.dh = zext i1 %i.dg to i32
  %i.di = fcmp olt double %i.dc, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.di to i32
  %i.dj = add nsw i32 %.neg.i.i.i, %i.dh
  %i.dk = sitofp i32 %i.dj to double
  %i.dl = fmul double %i.cx, %i.dk
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i = phi double [ %i.dl, %bb.o ], [ %i.dc, %bb.n ]
  %i.dm = sitofp i32 %.0122.lcssa to double
  %i.dn = fdiv double %i.dm, %i.cz                ; 2 uses
  %i.do = fmul double %i.dn, %.0.i.i
  %i.dp = fadd double %i.dn, 1.000000e+00         ; 2 uses
  %i.dq = fdiv double %i.do, %i.dp
  %i.dr = fdiv double %8, %i.dp
  %i.ds = fadd double %i.dr, %i.dq                ; 3 uses
  %i.dt = fcmp olt double %i.ds, %.sroa.0.0.lcssa
  br i1 %i.dt, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i
  %i.du = fcmp ogt double %i.ds, %.sroa.6.0.lcssa
  br i1 %i.du, label %bb.q, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.q:                                             ; preds = %bb.p
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i, %bb.p, %bb.q
  %.0.i = phi double [ %i.ds, %bb.p ], [ %.sroa.6.0.lcssa, %bb.q ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i, ptr %i.dv, align 8, !tbaa !410
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.dw, align 8, !tbaa !334
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.dx, align 8, !tbaa !407
  %i.dy = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.dy, ptr %i.dz, align 8, !tbaa !408
  %i.ea = fsub double %1, %.0.lcssa               ; 2 uses
  %i.eb = fsub double %2, %.093.lcssa             ; 2 uses
  %i.ec = sub nsw i32 %3, %.0122.lcssa            ; 2 uses
  %i.ed = fneg double %i.ea
  %i.ee = fadd double %i.eb, %i.cv
  %i.ef = fdiv double %i.ed, %i.ee                ; 4 uses
  %i.eg = tail call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp ogt double %i.eg, %i.cx
  %or.cond.i.i137 = and i1 %i.dd, %i.eh
  br i1 %or.cond.i.i137, label %bb.r, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i138

bb.r:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ei = fcmp ogt double %i.ef, 0.000000e+00
  %i.ej = zext i1 %i.ei to i32
  %i.ek = fcmp olt double %i.ef, 0.000000e+00
  %.neg.i.i.i141 = sext i1 %i.ek to i32
  %i.el = add nsw i32 %.neg.i.i.i141, %i.ej
  %i.em = sitofp i32 %i.el to double
  %i.en = fmul double %i.cx, %i.em
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i138

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i138: ; preds = %bb.r, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i139 = phi double [ %i.en, %bb.r ], [ %i.ef, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.eo = sitofp i32 %i.ec to double
  %i.ep = fdiv double %i.eo, %i.cz                ; 2 uses
  %i.eq = fmul double %i.ep, %.0.i.i139
  %i.er = fadd double %i.ep, 1.000000e+00         ; 2 uses
  %i.es = fdiv double %i.eq, %i.er
  %i.et = fdiv double %8, %i.er
  %i.eu = fadd double %i.et, %i.es                ; 3 uses
  %i.ev = fcmp olt double %i.eu, %.sroa.0144.0.lcssa
  br i1 %i.ev, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit142, label %bb.s

bb.s:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i138
  %i.ew = fcmp ogt double %i.eu, %.sroa.6146.0.lcssa
  br i1 %i.ew, label %bb.t, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit142

bb.t:                                             ; preds = %bb.s
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit142

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit142: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i138, %bb.s, %bb.t
  %.0.i140 = phi double [ %i.eu, %bb.s ], [ %.sroa.6146.0.lcssa, %bb.t ], [ %.sroa.0144.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb1EEEdddddddid.exit.i138 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i140, ptr %i.ex, align 8, !tbaa !411
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ec, ptr %i.ey, align 4, !tbaa !335
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.ea, ptr %i.ez, align 8, !tbaa !412
  %i.fa = fadd double %i.eb, f0xBCD203AFA0000000
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.fa, ptr %i.fb, align 8, !tbaa !413
  %i.fc = fsub double %.0100.lcssa, %5
  store double %i.fc, ptr %i.cm, align 8, !tbaa !312
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fd, align 8, !tbaa !313
  br label %bb.u

bb.u:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb1EEEddddddRKNS_15BasicConstraintEdid.exit142, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb1ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137179 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137179, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1825

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137179.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod252 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137179.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not183 = icmp sgt i32 %.0135, %i.p
  br i1 %.not183, label %._crit_edge, label %.lr.ph197

.lr.ph197:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph197, %.thread
  %indvars.iv230 = phi i64 [ %i.bj, %.lr.ph197 ], [ %indvars.iv.next231, %.thread ] ; 5 uses
  %.0110194 = phi double [ -inf, %.lr.ph197 ], [ %.5115, %.thread ] ; 8 uses
  %.0120193 = phi i32 [ 0, %.lr.ph197 ], [ %.5125, %.thread ] ; 7 uses
  %.0127192 = phi i32 [ %i.d, %.lr.ph197 ], [ %.5132, %.thread ] ; 7 uses
  %.2139190 = phi i32 [ %.1138, %.lr.ph197 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0187 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph197 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0186 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph197 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0163.0185 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph197 ], [ %.sroa.0163.2, %.thread ] ; 6 uses
  %.sroa.6165.0184 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph197 ], [ %.sroa.6165.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph197 ], [ %i.dv, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph197 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv230, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv230 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139190, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139190, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cr = fsub double %1, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !377
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !401
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !378
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !384
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.db = load double, ptr %i.da, align 8, !tbaa !375
  %i.dc = tail call noundef double @_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb1EEEddddddddPKNS_17FeatureConstraintEadiid(double noundef %i.cq, double noundef %i.ck, double noundef %i.cr, double noundef %i.co, double noundef %i.ct, double noundef %i.cv, double noundef %i.cx, ptr noundef nonnull %4, i8 noundef signext %i.cz, double noundef %i.db, i32 noundef %.3140, i32 noundef %i.cm, double noundef %8) ; 3 uses
  %i.dd = fcmp ugt double %i.dc, %5
  br i1 %i.dd, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bi, align 8, !tbaa !242
  %i.de = fcmp ogt double %i.dc, %.0110194
  br i1 %i.de, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr %4, align 8, !tbaa !282
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call { double, double } %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dj = extractvalue { double, double } %i.di, 0 ; 3 uses
  %i.dk = extractvalue { double, double } %i.di, 1 ; 3 uses
  %i.dl = load ptr, ptr %4, align 8, !tbaa !282
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = tail call { double, double } %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dp = extractvalue { double, double } %i.do, 0 ; 3 uses
  %i.dq = extractvalue { double, double } %i.do, 1 ; 3 uses
  %i.dr = fcmp ogt double %i.dj, %i.dk
  %i.ds = fcmp ogt double %i.dp, %i.dq
  %or.cond = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = trunc i64 %indvars.iv230 to i32
  %i.du = add i32 %i.dt, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.j, %bb.l, %bb.f, %bb.g
  %.sroa.6165.2 = phi double [ %.sroa.6165.0184, %bb.f ], [ %.sroa.6165.0184, %bb.g ], [ %.sroa.6165.0184, %bb.j ], [ %.sroa.6165.0184, %bb.k ], [ %i.dk, %bb.m ], [ %i.dk, %bb.l ] ; 2 uses
  %.sroa.0163.2 = phi double [ %.sroa.0163.0185, %bb.f ], [ %.sroa.0163.0185, %bb.g ], [ %.sroa.0163.0185, %bb.j ], [ %.sroa.0163.0185, %bb.k ], [ %i.dj, %bb.m ], [ %i.dj, %bb.l ] ; 2 uses
  %.sroa.6.2 = phi double [ %.sroa.6.0186, %bb.f ], [ %.sroa.6.0186, %bb.g ], [ %.sroa.6.0186, %bb.j ], [ %.sroa.6.0186, %bb.k ], [ %i.dq, %bb.m ], [ %i.dq, %bb.l ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.0187, %bb.f ], [ %.sroa.0.0187, %bb.g ], [ %.sroa.0.0187, %bb.j ], [ %.sroa.0.0187, %bb.k ], [ %i.dp, %bb.m ], [ %i.dp, %bb.l ] ; 2 uses
  %.5132 = phi i32 [ %.0127192, %bb.f ], [ %.0127192, %bb.g ], [ %.0127192, %bb.j ], [ %.0127192, %bb.k ], [ %i.du, %bb.m ], [ %.0127192, %bb.l ] ; 2 uses
  %.5125 = phi i32 [ %.0120193, %bb.f ], [ %.0120193, %bb.g ], [ %.0120193, %bb.j ], [ %.0120193, %bb.k ], [ %.3140, %bb.m ], [ %.0120193, %bb.l ] ; 2 uses
  %.5115 = phi double [ %.0110194, %bb.f ], [ %.0110194, %bb.g ], [ %.0110194, %bb.j ], [ %.0110194, %bb.k ], [ %i.dc, %bb.m ], [ %.0110194, %bb.l ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.cb, %bb.m ], [ %i.bl, %bb.l ] ; 2 uses
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, 1
  %.not.not = icmp slt i64 %indvars.iv230, %i.bk
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !1826

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.h, %.loopexit
  %.sroa.6165.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6165.0184, %bb.h ], [ %.sroa.6165.0184, %bb.i ], [ %.sroa.6165.2, %.thread ] ; 2 uses
  %.sroa.0163.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0163.0185, %bb.h ], [ %.sroa.0163.0185, %bb.i ], [ %.sroa.0163.2, %.thread ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.6.0186, %bb.h ], [ %.sroa.6.0186, %bb.i ], [ %.sroa.6.2, %.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %.loopexit ], [ %.sroa.0.0187, %bb.h ], [ %.sroa.0.0187, %bb.i ], [ %.sroa.0.2, %.thread ] ; 2 uses
  %.0127.lcssa = phi i32 [ %i.d, %.loopexit ], [ %.0127192, %bb.h ], [ %.0127192, %bb.i ], [ %.5132, %.thread ]
  %.0120.lcssa = phi i32 [ 0, %.loopexit ], [ %.0120193, %bb.h ], [ %.0120193, %bb.i ], [ %.5125, %.thread ] ; 3 uses
  %.0110.lcssa = phi double [ -inf, %.loopexit ], [ %.0110194, %bb.h ], [ %.0110194, %bb.i ], [ %.5115, %.thread ] ; 2 uses
  %i.dw = phi <2 x double> [ splat (double +qnan), %.loopexit ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.dv, %.thread ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !242, !range !231, !noundef !232
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.n, label %bb.v

bb.n:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !312
  %i.ec = fadd double %5, %i.eb
  %i.ed = fcmp ogt double %.0110.lcssa, %i.ec
end_hunk_28
begin_hunk_29_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb1ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.eg = fcmp ogt double %i.dy, %i.dz
  %i.eh = fcmp ogt double %i.ee, %i.ef
  %or.cond = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = add i32 %i.t, %i.y
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.c, %bb.r, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.s, %bb.q
  %.sroa.6148.1.ph = phi double [ %.sroa.6148.0170, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6148.0170, %bb.q ], [ %i.dz, %bb.s ], [ %i.dz, %bb.r ], [ %.sroa.6148.0170, %bb.c ], [ %.sroa.6148.0170, %bb.b ] ; 2 uses
  %.sroa.0146.1.ph = phi double [ %.sroa.0146.0171, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0146.0171, %bb.q ], [ %i.dy, %bb.s ], [ %i.dy, %bb.r ], [ %.sroa.0146.0171, %bb.c ], [ %.sroa.0146.0171, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0172, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0172, %bb.q ], [ %i.ef, %bb.s ], [ %i.ef, %bb.r ], [ %.sroa.6.0172, %bb.c ], [ %.sroa.6.0172, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0173, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0173, %bb.q ], [ %i.ee, %bb.s ], [ %i.ee, %bb.r ], [ %.sroa.0.0173, %bb.c ], [ %.sroa.0.0173, %bb.b ] ; 2 uses
  %.5127.ph = phi i32 [ %.0122174, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0122174, %bb.q ], [ %i.au, %bb.s ], [ %.0122174, %bb.r ], [ %.0122174, %bb.c ], [ %.0122174, %bb.b ] ; 2 uses
  %.5120.ph = phi i32 [ %.0115175, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0115175, %bb.q ], [ %i.ei, %bb.s ], [ %.0115175, %bb.r ], [ %.0115175, %bb.c ], [ %.0115175, %bb.b ] ; 2 uses
  %.5105.ph = phi double [ %.0100180, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0100180, %bb.q ], [ %.0.i, %bb.s ], [ %.0100180, %bb.r ], [ %.0100180, %bb.c ], [ %.0100180, %bb.b ] ; 2 uses
  %.598.ph = phi double [ %.093181, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.093181, %bb.q ], [ %i.aw, %bb.s ], [ %.093181, %bb.r ], [ %.093181, %bb.c ], [ %.093181, %bb.b ] ; 2 uses
  %.5.ph = phi double [ %.0182, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb1ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0182, %bb.q ], [ %i.az, %bb.s ], [ %.0182, %bb.r ], [ %.0182, %bb.c ], [ %.0182, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1867

._crit_edge:                                      ; preds = %bb.t, %bb.d, %bb.e, %bb.a
  %.sroa.6148.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6148.0170, %bb.e ], [ %.sroa.6148.0170, %bb.d ], [ %.sroa.6148.1.ph, %bb.t ] ; 2 uses
  %.sroa.0146.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0146.0171, %bb.e ], [ %.sroa.0146.0171, %bb.d ], [ %.sroa.0146.1.ph, %bb.t ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0172, %bb.e ], [ %.sroa.6.0172, %bb.d ], [ %.sroa.6.1.ph, %bb.t ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0173, %bb.e ], [ %.sroa.0.0173, %bb.d ], [ %.sroa.0.1.ph, %bb.t ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %bb.a ], [ %.0122174, %bb.e ], [ %.0122174, %bb.d ], [ %.5127.ph, %bb.t ] ; 2 uses
  %.0115.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0115175, %bb.e ], [ %.0115175, %bb.d ], [ %.5120.ph, %bb.t ]
  %.0100.lcssa = phi double [ -inf, %bb.a ], [ %.0100180, %bb.e ], [ %.0100180, %bb.d ], [ %.5105.ph, %bb.t ] ; 2 uses
  %.093.lcssa = phi double [ +qnan, %bb.a ], [ %.093181, %bb.e ], [ %.093181, %bb.d ], [ %.598.ph, %bb.t ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0182, %bb.e ], [ %.0182, %bb.d ], [ %.5.ph, %bb.t ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !242, !range !231, !noundef !232
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %._crit_edge
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !312
  %i.eo = fadd double %5, %i.en
  %i.ep = fcmp ogt double %.0100.lcssa, %i.eo
  br i1 %i.ep, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.eq, align 4, !tbaa !406
  %i.er = load ptr, ptr %0, align 8, !tbaa !273
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !277 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 424
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !401 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 408
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !378 ; 5 uses
  %i.ey = fneg double %.0.lcssa
  %i.ez = fadd double %.093.lcssa, %i.ev
  %i.fa = fdiv double %i.ey, %i.ez                ; 4 uses
  %i.fb = fcmp ogt double %i.ex, 0.000000e+00     ; 2 uses
  %i.fc = tail call double @llvm.fabs.f64(double %i.fa)
  %i.fd = fcmp ogt double %i.fc, %i.ex
  %or.cond.i.i = and i1 %i.fb, %i.fd
  br i1 %or.cond.i.i, label %bb.w, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fe = fcmp ogt double %i.fa, 0.000000e+00
  %i.ff = zext i1 %i.fe to i32
  %i.fg = fcmp olt double %i.fa, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.fg to i32
  %i.fh = add nsw i32 %.neg.i.i.i, %i.ff
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = fmul double %i.ex, %i.fi
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i137 = phi double [ %i.fj, %bb.w ], [ %i.fa, %bb.v ] ; 3 uses
  %i.fk = fcmp olt double %.0.i.i137, %.sroa.0.0.lcssa
  br i1 %i.fk, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.x

bb.x:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i
  %i.fl = fcmp ogt double %.0.i.i137, %.sroa.6.0.lcssa
  br i1 %i.fl, label %bb.y, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.y:                                             ; preds = %bb.x
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i, %bb.x, %bb.y
  %.0.i138 = phi double [ %.0.i.i137, %bb.x ], [ %.sroa.6.0.lcssa, %bb.y ], [ %.sroa.0.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i138, ptr %i.fm, align 8, !tbaa !410
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.fn, align 8, !tbaa !334
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.fo, align 8, !tbaa !407
  %i.fp = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.fp, ptr %i.fq, align 8, !tbaa !408
  %i.fr = fsub double %1, %.0.lcssa               ; 2 uses
  %i.fs = fsub double %2, %.093.lcssa             ; 2 uses
  %i.ft = sub nsw i32 %3, %.0122.lcssa
  %i.fu = fneg double %i.fr
  %i.fv = fadd double %i.fs, %i.ev
  %i.fw = fdiv double %i.fu, %i.fv                ; 4 uses
  %i.fx = tail call double @llvm.fabs.f64(double %i.fw)
  %i.fy = fcmp ogt double %i.fx, %i.ex
  %or.cond.i.i139 = and i1 %i.fb, %i.fy
  br i1 %or.cond.i.i139, label %bb.z, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i140

bb.z:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.fz = fcmp ogt double %i.fw, 0.000000e+00
  %i.ga = zext i1 %i.fz to i32
  %i.gb = fcmp olt double %i.fw, 0.000000e+00
  %.neg.i.i.i143 = sext i1 %i.gb to i32
  %i.gc = add nsw i32 %.neg.i.i.i143, %i.ga
  %i.gd = sitofp i32 %i.gc to double
  %i.ge = fmul double %i.ex, %i.gd
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i140

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i140: ; preds = %bb.z, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %.0.i.i141 = phi double [ %i.ge, %bb.z ], [ %i.fw, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ] ; 3 uses
  %i.gf = fcmp olt double %.0.i.i141, %.sroa.0146.0.lcssa
  br i1 %i.gf, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144, label %bb.aa

bb.aa:                                            ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i140
  %i.gg = fcmp ogt double %.0.i.i141, %.sroa.6148.0.lcssa
  br i1 %i.gg, label %bb.ab, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144

bb.ab:                                            ; preds = %bb.aa
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i140, %bb.aa, %bb.ab
  %.0.i142 = phi double [ %.0.i.i141, %bb.aa ], [ %.sroa.6148.0.lcssa, %bb.ab ], [ %.sroa.0146.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i140 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i142, ptr %i.gh, align 8, !tbaa !411
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ft, ptr %i.gi, align 4, !tbaa !335
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.fr, ptr %i.gj, align 8, !tbaa !412
  %i.gk = fadd double %i.fs, f0xBCD203AFA0000000
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.gk, ptr %i.gl, align 8, !tbaa !413
  %i.gm = fsub double %.0100.lcssa, %5
  store double %i.gm, ptr %i.em, align 8, !tbaa !312
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.gn, align 8, !tbaa !313
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit144, %bb.u, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb1ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137181 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137181, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1868

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137181.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod256 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod256)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137181.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not185 = icmp sgt i32 %.0135, %i.p
  br i1 %.not185, label %._crit_edge, label %.lr.ph199

.lr.ph199:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph199, %.thread
  %indvars.iv232 = phi i64 [ %i.bj, %.lr.ph199 ], [ %indvars.iv.next233, %.thread ] ; 5 uses
  %.0110196 = phi double [ -inf, %.lr.ph199 ], [ %.5115, %.thread ] ; 8 uses
  %.0120195 = phi i32 [ 0, %.lr.ph199 ], [ %.5125, %.thread ] ; 7 uses
  %.0127194 = phi i32 [ %i.d, %.lr.ph199 ], [ %.5132, %.thread ] ; 7 uses
  %.2139192 = phi i32 [ %.1138, %.lr.ph199 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0189 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0188 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0165.0187 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.0165.2, %.thread ] ; 6 uses
  %.sroa.6167.0186 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph199 ], [ %.sroa.6167.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph199 ], [ %i.fu, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph199 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv232, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv232 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139192, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139192, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cr = fsub double %1, %i.cq                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !401 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 408
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !378 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !384 ; 2 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !282
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call { double, double } %i.da(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !9 ; 2 uses
  %i.dc = extractvalue { double, double } %i.db, 0 ; 2 uses
  %i.dd = extractvalue { double, double } %i.db, 1 ; 2 uses
  %i.de = fneg double %i.cq
  %i.df = fadd double %i.ck, %i.ct                ; 2 uses
  %i.dg = fdiv double %i.de, %i.df                ; 4 uses
  %i.dh = fcmp ogt double %i.cv, 0.000000e+00     ; 2 uses
  %i.di = tail call double @llvm.fabs.f64(double %i.dg)
  %i.dj = fcmp ogt double %i.di, %i.cv
  %or.cond.i.i.i = and i1 %i.dh, %i.dj
  br i1 %or.cond.i.i.i, label %bb.k, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.dk = fcmp ogt double %i.dg, 0.000000e+00
  %i.dl = zext i1 %i.dk to i32
  %i.dm = fcmp olt double %i.dg, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.dm to i32
  %i.dn = add nsw i32 %.neg.i.i.i.i, %i.dl
  %i.do = sitofp i32 %i.dn to double
  %i.dp = fmul double %i.cv, %i.do
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi double [ %i.dp, %bb.k ], [ %i.dg, %bb.j ] ; 3 uses
  %i.dq = fcmp olt double %.0.i.i.i, %i.dc
  br i1 %i.dq, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i
  %i.dr = fcmp ogt double %.0.i.i.i, %i.dd
  br i1 %i.dr, label %bb.m, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.m:                                             ; preds = %bb.l
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.m, %bb.l, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i
  %.0.i.i = phi double [ %.0.i.i.i, %bb.l ], [ %i.dd, %bb.m ], [ %i.dc, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i.i ] ; 3 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !282
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call { double, double } %i.du(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !9 ; 2 uses
  %i.dw = extractvalue { double, double } %i.dv, 0 ; 2 uses
  %i.dx = extractvalue { double, double } %i.dv, 1 ; 2 uses
  %i.dy = fneg double %i.cr
  %i.dz = fadd double %i.co, %i.ct                ; 2 uses
  %i.ea = fdiv double %i.dy, %i.dz                ; 4 uses
  %i.eb = tail call double @llvm.fabs.f64(double %i.ea)
  %i.ec = fcmp ogt double %i.eb, %i.cv
  %or.cond.i.i35.i = and i1 %i.dh, %i.ec
  br i1 %or.cond.i.i35.i, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i36.i

bb.n:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.ed = fcmp ogt double %i.ea, 0.000000e+00
  %i.ee = zext i1 %i.ed to i32
  %i.ef = fcmp olt double %i.ea, 0.000000e+00
  %.neg.i.i.i39.i = sext i1 %i.ef to i32
  %i.eg = add nsw i32 %.neg.i.i.i39.i, %i.ee
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = fmul double %i.cv, %i.eh
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i36.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb0ELb1ELb0EEEdddddddid.exit.i36.i: ; preds = %bb.n, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %.0.i.i37.i = phi double [ %i.ei, %bb.n ], [ %i.ea, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i ] ; 3 uses
  %i.ej = fcmp olt double %.0.i.i37.i, %i.dw
  br i1 %i.ej, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb1ELb0EEEddddddRKNS_15BasicConstraintEdid.exit40.i, label %bb.o

end_hunk_29
begin_hunk_30_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb0ELb1ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.dp = fcmp ugt double %.0.i, %5
  br i1 %i.dp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.s, align 8, !tbaa !242
  %i.dq = fcmp ogt double %.0.i, %.0100175
  br i1 %i.dq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %4, align 8, !tbaa !282
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = tail call { double, double } %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dv = extractvalue { double, double } %i.du, 0 ; 3 uses
  %i.dw = extractvalue { double, double } %i.du, 1 ; 3 uses
  %i.dx = load ptr, ptr %4, align 8, !tbaa !282
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call { double, double } %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.eb = extractvalue { double, double } %i.ea, 0 ; 3 uses
  %i.ec = extractvalue { double, double } %i.ea, 1 ; 3 uses
  %i.ed = fcmp ogt double %i.dv, %i.dw
  %i.ee = fcmp ogt double %i.eb, %i.ec
  %or.cond = select i1 %i.ed, i1 true, i1 %i.ee
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ef = add i32 %i.t, %i.y
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.c, %bb.p, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.q, %bb.o
  %.sroa.6143.1.ph = phi double [ %.sroa.6143.0165, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6143.0165, %bb.o ], [ %i.dw, %bb.q ], [ %i.dw, %bb.p ], [ %.sroa.6143.0165, %bb.c ], [ %.sroa.6143.0165, %bb.b ] ; 2 uses
  %.sroa.0141.1.ph = phi double [ %.sroa.0141.0166, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0141.0166, %bb.o ], [ %i.dv, %bb.q ], [ %i.dv, %bb.p ], [ %.sroa.0141.0166, %bb.c ], [ %.sroa.0141.0166, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0167, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0167, %bb.o ], [ %i.ec, %bb.q ], [ %i.ec, %bb.p ], [ %.sroa.6.0167, %bb.c ], [ %.sroa.6.0167, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0168, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0168, %bb.o ], [ %i.eb, %bb.q ], [ %i.eb, %bb.p ], [ %.sroa.0.0168, %bb.c ], [ %.sroa.0.0168, %bb.b ] ; 2 uses
  %.5127.ph = phi i32 [ %.0122169, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0122169, %bb.o ], [ %i.au, %bb.q ], [ %.0122169, %bb.p ], [ %.0122169, %bb.c ], [ %.0122169, %bb.b ] ; 2 uses
  %.5120.ph = phi i32 [ %.0115170, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0115170, %bb.o ], [ %i.ef, %bb.q ], [ %.0115170, %bb.p ], [ %.0115170, %bb.c ], [ %.0115170, %bb.b ] ; 2 uses
  %.5105.ph = phi double [ %.0100175, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0100175, %bb.o ], [ %.0.i, %bb.q ], [ %.0100175, %bb.p ], [ %.0100175, %bb.c ], [ %.0100175, %bb.b ] ; 2 uses
  %.598.ph = phi double [ %.093176, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.093176, %bb.o ], [ %i.aw, %bb.q ], [ %.093176, %bb.p ], [ %.093176, %bb.c ], [ %.093176, %bb.b ] ; 2 uses
  %.5.ph = phi double [ %.0177, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0177, %bb.o ], [ %i.az, %bb.q ], [ %.0177, %bb.p ], [ %.0177, %bb.c ], [ %.0177, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1910

._crit_edge:                                      ; preds = %bb.r, %bb.d, %bb.e, %bb.a
  %.sroa.6143.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6143.0165, %bb.e ], [ %.sroa.6143.0165, %bb.d ], [ %.sroa.6143.1.ph, %bb.r ] ; 2 uses
  %.sroa.0141.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0141.0166, %bb.e ], [ %.sroa.0141.0166, %bb.d ], [ %.sroa.0141.1.ph, %bb.r ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0167, %bb.e ], [ %.sroa.6.0167, %bb.d ], [ %.sroa.6.1.ph, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0168, %bb.e ], [ %.sroa.0.0168, %bb.d ], [ %.sroa.0.1.ph, %bb.r ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %bb.a ], [ %.0122169, %bb.e ], [ %.0122169, %bb.d ], [ %.5127.ph, %bb.r ] ; 3 uses
  %.0115.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0115170, %bb.e ], [ %.0115170, %bb.d ], [ %.5120.ph, %bb.r ]
  %.0100.lcssa = phi double [ -inf, %bb.a ], [ %.0100175, %bb.e ], [ %.0100175, %bb.d ], [ %.5105.ph, %bb.r ] ; 2 uses
  %.093.lcssa = phi double [ +qnan, %bb.a ], [ %.093176, %bb.e ], [ %.093176, %bb.d ], [ %.598.ph, %bb.r ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0177, %bb.e ], [ %.0177, %bb.d ], [ %.5.ph, %bb.r ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !242, !range !231, !noundef !232
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.s, label %bb.y

bb.s:                                             ; preds = %._crit_edge
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !312
  %i.el = fadd double %5, %i.ek
  %i.em = fcmp ogt double %.0100.lcssa, %i.el
  br i1 %i.em, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.en, align 4, !tbaa !406
  %i.eo = load ptr, ptr %0, align 8, !tbaa !273
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !277 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 424
  %i.es = load double, ptr %i.er, align 8, !tbaa !401 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 720
  %i.eu = load double, ptr %i.et, align 8, !tbaa !375 ; 2 uses
  %i.ev = fneg double %.0.lcssa
  %i.ew = fadd double %.093.lcssa, %i.es
  %i.ex = fdiv double %i.ev, %i.ew
  %i.ey = sitofp i32 %.0122.lcssa to double
  %i.ez = fdiv double %i.ey, %i.eu                ; 2 uses
  %i.fa = fmul double %i.ex, %i.ez
  %i.fb = fadd double %i.ez, 1.000000e+00         ; 2 uses
  %i.fc = fdiv double %i.fa, %i.fb
  %i.fd = fdiv double %8, %i.fb
  %i.fe = fadd double %i.fc, %i.fd                ; 3 uses
  %i.ff = fcmp olt double %i.fe, %.sroa.0.0.lcssa
  br i1 %i.ff, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fg = fcmp ogt double %i.fe, %.sroa.6.0.lcssa
  br i1 %i.fg, label %bb.v, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

bb.v:                                             ; preds = %bb.u
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.0.i137 = phi double [ %i.fe, %bb.u ], [ %.sroa.6.0.lcssa, %bb.v ], [ %.sroa.0.0.lcssa, %bb.t ]
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i137, ptr %i.fh, align 8, !tbaa !410
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.fi, align 8, !tbaa !334
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.fj, align 8, !tbaa !407
  %i.fk = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.fk, ptr %i.fl, align 8, !tbaa !408
  %i.fm = fsub double %1, %.0.lcssa               ; 2 uses
  %i.fn = fsub double %2, %.093.lcssa             ; 2 uses
  %i.fo = sub nsw i32 %3, %.0122.lcssa            ; 2 uses
  %i.fp = fneg double %i.fm
  %i.fq = fadd double %i.fn, %i.es
  %i.fr = fdiv double %i.fp, %i.fq
  %i.fs = sitofp i32 %i.fo to double
  %i.ft = fdiv double %i.fs, %i.eu                ; 2 uses
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.ft, 1.000000e+00         ; 2 uses
  %i.fw = fdiv double %i.fu, %i.fv
  %i.fx = fdiv double %8, %i.fv
  %i.fy = fadd double %i.fw, %i.fx                ; 3 uses
  %i.fz = fcmp olt double %i.fy, %.sroa.0141.0.lcssa
  br i1 %i.fz, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139, label %bb.w

bb.w:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.ga = fcmp ogt double %i.fy, %.sroa.6143.0.lcssa
  br i1 %i.ga, label %bb.x, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139

bb.x:                                             ; preds = %bb.w
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.w, %bb.x
  %.0.i138 = phi double [ %i.fy, %bb.w ], [ %.sroa.6143.0.lcssa, %bb.x ], [ %.sroa.0141.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i138, ptr %i.gb, align 8, !tbaa !411
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.fo, ptr %i.gc, align 4, !tbaa !335
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.fm, ptr %i.gd, align 8, !tbaa !412
  %i.ge = fadd double %i.fn, f0xBCD203AFA0000000
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ge, ptr %i.gf, align 8, !tbaa !413
  %i.gg = fsub double %.0100.lcssa, %5
  store double %i.gg, ptr %i.ej, align 8, !tbaa !312
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.gh, align 8, !tbaa !313
  br label %bb.y

bb.y:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit139, %bb.s, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb0ELb1ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137176 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137176, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1911

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137176.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod253 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137176.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not180 = icmp sgt i32 %.0135, %i.p
  br i1 %.not180, label %._crit_edge, label %.lr.ph194

.lr.ph194:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph194, %.thread
  %indvars.iv227 = phi i64 [ %i.bj, %.lr.ph194 ], [ %indvars.iv.next228, %.thread ] ; 5 uses
  %.0110191 = phi double [ -inf, %.lr.ph194 ], [ %.5115, %.thread ] ; 8 uses
  %.0120190 = phi i32 [ 0, %.lr.ph194 ], [ %.5125, %.thread ] ; 7 uses
  %.0127189 = phi i32 [ %i.d, %.lr.ph194 ], [ %.5132, %.thread ] ; 7 uses
  %.2139187 = phi i32 [ %.1138, %.lr.ph194 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0184 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0183 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0160.0182 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.0160.2, %.thread ] ; 6 uses
  %.sroa.6162.0181 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.6162.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph194 ], [ %i.fr, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph194 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv227, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv227 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139187, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139187, %bb.d ] ; 5 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140                  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cr = fsub double %1, %i.cq                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !401 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !384 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 720
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !375 ; 2 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !282
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call { double, double } %i.da(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !10 ; 2 uses
  %i.dc = extractvalue { double, double } %i.db, 0 ; 2 uses
  %i.dd = extractvalue { double, double } %i.db, 1 ; 2 uses
  %i.de = fneg double %i.cq
  %i.df = fadd double %i.ck, %i.ct                ; 2 uses
  %i.dg = fdiv double %i.de, %i.df
  %i.dh = sitofp i32 %.3140 to double
  %i.di = fdiv double %i.dh, %i.cx                ; 2 uses
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %i.di, 1.000000e+00         ; 2 uses
  %i.dl = fdiv double %i.dj, %i.dk
  %i.dm = fdiv double %8, %i.dk
  %i.dn = fadd double %i.dl, %i.dm                ; 3 uses
  %i.do = fcmp olt double %i.dn, %i.dc
  br i1 %i.do, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = fcmp ogt double %i.dn, %i.dd
  br i1 %i.dp, label %bb.l, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.l:                                             ; preds = %bb.k
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i = phi double [ %i.dn, %bb.k ], [ %i.dd, %bb.l ], [ %i.dc, %bb.j ] ; 3 uses
  %i.dq = load ptr, ptr %4, align 8, !tbaa !282
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call { double, double } %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !10 ; 2 uses
  %i.du = extractvalue { double, double } %i.dt, 0 ; 2 uses
  %i.dv = extractvalue { double, double } %i.dt, 1 ; 2 uses
  %i.dw = fneg double %i.cr
  %i.dx = fadd double %i.co, %i.ct                ; 2 uses
  %i.dy = fdiv double %i.dw, %i.dx
  %i.dz = sitofp i32 %i.cm to double
  %i.ea = fdiv double %i.dz, %i.cx                ; 2 uses
  %i.eb = fmul double %i.dy, %i.ea
  %i.ec = fadd double %i.ea, 1.000000e+00         ; 2 uses
  %i.ed = fdiv double %i.eb, %i.ec
  %i.ee = fdiv double %8, %i.ec
  %i.ef = fadd double %i.ed, %i.ee                ; 3 uses
  %i.eg = fcmp olt double %i.ef, %i.du
  br i1 %i.eg, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i, label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.eh = fcmp ogt double %i.ef, %i.dv
  br i1 %i.eh, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i

bb.n:                                             ; preds = %bb.m
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i: ; preds = %bb.n, %bb.m, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %.0.i35.i = phi double [ %i.ef, %bb.m ], [ %i.dv, %bb.n ], [ %i.du, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit.i ] ; 3 uses
  %i.ei = icmp sgt i8 %i.cv, 0
  %i.ej = fcmp ogt double %.0.i.i, %.0.i35.i
  %or.cond.i = and i1 %i.ei, %i.ej
  br i1 %or.cond.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb1EEEddddddRKNS_15BasicConstraintEdid.exit36.i
  %i.ek = icmp slt i8 %i.cv, 0
  %i.el = fcmp olt double %.0.i.i, %.0.i35.i
  %or.cond34.i = and i1 %i.ek, %i.el
  br i1 %or.cond34.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb1EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_30
begin_hunk_31_@_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb0ELb0ELb1ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid:bb.a
  %i.cn = fmul <2 x double> %i.cm, splat (double 2.000000e+00)
  %i.co = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cd, i64 1
  %i.cq = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %.0.i35.i, i64 1 ; 3 uses
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = fmul <2 x double> %i.cr, %i.cs
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cr, <2 x double> %i.ct) ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 1
  %i.cw = fneg double %i.cv
  %i.cx = extractelement <2 x double> %i.cu, i64 0
  %i.cy = fsub double %i.cw, %i.cx
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i, %bb.m, %bb.n
  %.0.i = phi double [ %i.cy, %bb.n ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i ] ; 3 uses
  %i.cz = fcmp ugt double %.0.i, %5
  br i1 %i.cz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit
  store i8 1, ptr %i.s, align 8, !tbaa !242
  %i.da = fcmp ogt double %.0.i, %.0100175
  br i1 %i.da, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %4, align 8, !tbaa !282
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call { double, double } %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.df = extractvalue { double, double } %i.de, 0 ; 3 uses
  %i.dg = extractvalue { double, double } %i.de, 1 ; 3 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !282
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call { double, double } %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.dl = extractvalue { double, double } %i.dk, 0 ; 3 uses
  %i.dm = extractvalue { double, double } %i.dk, 1 ; 3 uses
  %i.dn = fcmp ogt double %i.df, %i.dg
  %i.do = fcmp ogt double %i.dl, %i.dm
  %or.cond = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = add i32 %i.t, %i.y
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.c, %bb.p, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, %bb.q, %bb.o
  %.sroa.6143.1.ph = phi double [ %.sroa.6143.0165, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6143.0165, %bb.o ], [ %i.dg, %bb.q ], [ %i.dg, %bb.p ], [ %.sroa.6143.0165, %bb.c ], [ %.sroa.6143.0165, %bb.b ] ; 2 uses
  %.sroa.0141.1.ph = phi double [ %.sroa.0141.0166, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0141.0166, %bb.o ], [ %i.df, %bb.q ], [ %i.df, %bb.p ], [ %.sroa.0141.0166, %bb.c ], [ %.sroa.0141.0166, %bb.b ] ; 2 uses
  %.sroa.6.1.ph = phi double [ %.sroa.6.0167, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.6.0167, %bb.o ], [ %i.dm, %bb.q ], [ %i.dm, %bb.p ], [ %.sroa.6.0167, %bb.c ], [ %.sroa.6.0167, %bb.b ] ; 2 uses
  %.sroa.0.1.ph = phi double [ %.sroa.0.0168, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.sroa.0.0168, %bb.o ], [ %i.dl, %bb.q ], [ %i.dl, %bb.p ], [ %.sroa.0.0168, %bb.c ], [ %.sroa.0.0168, %bb.b ] ; 2 uses
  %.5127.ph = phi i32 [ %.0122169, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0122169, %bb.o ], [ %i.au, %bb.q ], [ %.0122169, %bb.p ], [ %.0122169, %bb.c ], [ %.0122169, %bb.b ] ; 2 uses
  %.5120.ph = phi i32 [ %.0115170, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0115170, %bb.o ], [ %i.dp, %bb.q ], [ %.0115170, %bb.p ], [ %.0115170, %bb.c ], [ %.0115170, %bb.b ] ; 2 uses
  %.5105.ph = phi double [ %.0100175, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0100175, %bb.o ], [ %.0.i, %bb.q ], [ %.0100175, %bb.p ], [ %.0100175, %bb.c ], [ %.0100175, %bb.b ] ; 2 uses
  %.598.ph = phi double [ %.093176, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.093176, %bb.o ], [ %i.aw, %bb.q ], [ %.093176, %bb.p ], [ %.093176, %bb.c ], [ %.093176, %bb.b ] ; 2 uses
  %.5.ph = phi double [ %.0177, %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit ], [ %.0177, %bb.o ], [ %i.az, %bb.q ], [ %.0177, %bb.p ], [ %.0177, %bb.c ], [ %.0177, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !1953

._crit_edge:                                      ; preds = %bb.r, %bb.d, %bb.e, %bb.a
  %.sroa.6143.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6143.0165, %bb.e ], [ %.sroa.6143.0165, %bb.d ], [ %.sroa.6143.1.ph, %bb.r ] ; 2 uses
  %.sroa.0141.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0141.0166, %bb.e ], [ %.sroa.0141.0166, %bb.d ], [ %.sroa.0141.1.ph, %bb.r ] ; 2 uses
  %.sroa.6.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.6.0167, %bb.e ], [ %.sroa.6.0167, %bb.d ], [ %.sroa.6.1.ph, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.a ], [ %.sroa.0.0168, %bb.e ], [ %.sroa.0.0168, %bb.d ], [ %.sroa.0.1.ph, %bb.r ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %bb.a ], [ %.0122169, %bb.e ], [ %.0122169, %bb.d ], [ %.5127.ph, %bb.r ] ; 2 uses
  %.0115.lcssa = phi i32 [ %i.d, %bb.a ], [ %.0115170, %bb.e ], [ %.0115170, %bb.d ], [ %.5120.ph, %bb.r ]
  %.0100.lcssa = phi double [ -inf, %bb.a ], [ %.0100175, %bb.e ], [ %.0100175, %bb.d ], [ %.5105.ph, %bb.r ] ; 2 uses
  %.093.lcssa = phi double [ +qnan, %bb.a ], [ %.093176, %bb.e ], [ %.093176, %bb.d ], [ %.598.ph, %bb.r ] ; 3 uses
  %.0.lcssa = phi double [ +qnan, %bb.a ], [ %.0177, %bb.e ], [ %.0177, %bb.d ], [ %.5.ph, %bb.r ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !242, !range !231, !noundef !232
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.s, label %bb.y

bb.s:                                             ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !312
  %i.dv = fadd double %5, %i.du
  %i.dw = fcmp ogt double %.0100.lcssa, %i.dv
  br i1 %i.dw, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.0115.lcssa, ptr %i.dx, align 4, !tbaa !406
  %i.dy = load ptr, ptr %0, align 8, !tbaa !273
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !277
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 424
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !401 ; 2 uses
  %i.ed = fneg double %.0.lcssa
  %i.ee = fadd double %.093.lcssa, %i.ec
  %i.ef = fdiv double %i.ed, %i.ee                ; 3 uses
  %i.eg = fcmp olt double %i.ef, %.sroa.0.0.lcssa
  br i1 %i.eg, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = fcmp ogt double %i.ef, %.sroa.6.0.lcssa
  br i1 %i.eh, label %bb.v, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

bb.v:                                             ; preds = %bb.u
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.0.i137 = phi double [ %i.ef, %bb.u ], [ %.sroa.6.0.lcssa, %bb.v ], [ %.sroa.0.0.lcssa, %bb.t ]
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.0.i137, ptr %i.ei, align 8, !tbaa !410
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0122.lcssa, ptr %i.ej, align 8, !tbaa !334
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %.0.lcssa, ptr %i.ek, align 8, !tbaa !407
  %i.el = fadd double %.093.lcssa, f0xBCD203AFA0000000
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 56
  store double %i.el, ptr %i.em, align 8, !tbaa !408
  %i.en = fsub double %1, %.0.lcssa               ; 2 uses
  %i.eo = fsub double %2, %.093.lcssa             ; 2 uses
  %i.ep = sub nsw i32 %3, %.0122.lcssa
  %i.eq = fneg double %i.en
  %i.er = fadd double %i.eo, %i.ec
  %i.es = fdiv double %i.eq, %i.er                ; 3 uses
  %i.et = fcmp olt double %i.es, %.sroa.0141.0.lcssa
  br i1 %i.et, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139, label %bb.w

bb.w:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit
  %i.eu = fcmp ogt double %i.es, %.sroa.6143.0.lcssa
  br i1 %i.eu, label %bb.x, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139

bb.x:                                             ; preds = %bb.w
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit, %bb.w, %bb.x
  %.0.i138 = phi double [ %i.es, %bb.w ], [ %.sroa.6143.0.lcssa, %bb.x ], [ %.sroa.0141.0.lcssa, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit ]
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %.0.i138, ptr %i.ev, align 8, !tbaa !411
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ep, ptr %i.ew, align 4, !tbaa !335
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double %i.en, ptr %i.ex, align 8, !tbaa !412
  %i.ey = fadd double %i.eo, f0xBCD203AFA0000000
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 80
  store double %i.ey, ptr %i.ez, align 8, !tbaa !413
  %i.fa = fsub double %.0100.lcssa, %5
  store double %i.fa, ptr %i.dt, align 8, !tbaa !312
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.fb, align 8, !tbaa !313
  br label %bb.y

bb.y:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit139, %bb.s, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16FeatureHistogram29FindBestThresholdSequentiallyILb0ELb1ELb0ELb0ELb0ELb0ELb0ELb1EEEvddiPKNS_17FeatureConstraintEdPNS_9SplitInfoEid(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !403   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.e = sitofp i32 %3 to double
  %i.f = fdiv double %i.e, %2                     ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !282
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !273
  %i.n = load i32, ptr %i.m, align 8, !tbaa !394  ; 3 uses
  %i.o = sext i8 %i.c to i32                      ; 2 uses
  %reass.sub = sub i32 %i.n, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp eq i8 %i.c, 1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = insertelement <2 x double> %i.r, double %2, i64 1
  %i.t = fadd <2 x double> %i.s, <double -0.000000e+00, double f0xBCD203AFA0000000> ; 3 uses
  %i.u = icmp sgt i32 %i.n, 1
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = add nsw i32 %i.n, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0137176 = phi i32 [ %3, %.lr.ph.new ], [ %i.au, %bb.c ]
  %i.z = phi <2 x double> [ %i.t, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %9 = shl nuw i32 %indvars.iv.tr, 1
  %10 = sext i32 %9 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !295
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !295
  %i.ae = fmul double %i.f, %i.ac
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = fsub <2 x double> %i.z, %i.ad
  %i.ai = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ai, 1
  %i.aj = sext i32 %indvars.iv.tr.1 to i64
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !295
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !295
  %i.ap = fmul double %i.f, %i.an
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = fsub <2 x double> %i.ah, %i.ao          ; 3 uses
  %i.at = add i32 %i.ag, %i.ar
  %i.au = sub i32 %.0137176, %i.at                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1954

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.0137176.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.t, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod252 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !295
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !295
  %i.bb = fmul double %i.f, %i.az
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = fsub <2 x double> %.epil.init, %i.ba
  %i.bf = sub nsw i32 %.0137176.epil.init, %i.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.1138 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.0135 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %.loopexit.loopexit.unr-lcssa ], [ -1, %.epil.preheader ] ; 2 uses
  %i.bg = phi <2 x double> [ <double 0.000000e+00, double f0x3CD203AFA0000000>, %bb.a ], [ %i.t, %bb.b ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.not180 = icmp sgt i32 %.0135, %i.p
  br i1 %.not180, label %._crit_edge, label %.lr.ph194

.lr.ph194:                                        ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = sext i32 %.0135 to i64
  %i.bk = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph194, %.thread
  %indvars.iv227 = phi i64 [ %i.bj, %.lr.ph194 ], [ %indvars.iv.next228, %.thread ] ; 5 uses
  %.0110191 = phi double [ -inf, %.lr.ph194 ], [ %.5115, %.thread ] ; 8 uses
  %.0120190 = phi i32 [ 0, %.lr.ph194 ], [ %.5125, %.thread ] ; 7 uses
  %.0127189 = phi i32 [ %i.d, %.lr.ph194 ], [ %.5132, %.thread ] ; 7 uses
  %.2139187 = phi i32 [ %.1138, %.lr.ph194 ], [ %.3140, %.thread ] ; 2 uses
  %.sroa.0.0184 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.0.2, %.thread ] ; 6 uses
  %.sroa.6.0183 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.6.2, %.thread ] ; 6 uses
  %.sroa.0160.0182 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.0160.2, %.thread ] ; 6 uses
  %.sroa.6162.0181 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph194 ], [ %.sroa.6162.2, %.thread ] ; 6 uses
  %i.bl = phi <2 x double> [ splat (double +qnan), %.lr.ph194 ], [ %i.fb, %.thread ] ; 7 uses
  %i.bm = phi <2 x double> [ %i.bg, %.lr.ph194 ], [ %i.cb, %.thread ] ; 2 uses
  %i.bn = icmp sgt i64 %indvars.iv227, -1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.bp = trunc nsw i64 %indvars.iv227 to i32
  %i.bq = shl nuw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !295
  %i.bv = load <2 x double>, ptr %i.bs, align 8, !tbaa !295
  %i.bw = fadd <2 x double> %i.bm, %i.bv
  %i.bx = fmul double %i.f, %i.bu
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32
  %i.ca = add nsw i32 %.2139187, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3140 = phi i32 [ %i.ca, %bb.e ], [ %.2139187, %bb.d ] ; 4 uses
  %i.cb = phi <2 x double> [ %i.bw, %bb.e ], [ %i.bm, %bb.d ] ; 5 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 308
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !353 ; 2 uses
  %i.ch = icmp slt i32 %.3140, %i.cg
  br i1 %i.ch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !405 ; 2 uses
  %i.ck = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cl = fcmp olt double %i.ck, %i.cj
  br i1 %i.cl, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = sub nsw i32 %3, %.3140
  %i.cn = icmp slt i32 %i.cm, %i.cg
  br i1 %i.cn, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = fsub double %2, %i.ck                   ; 2 uses
  %i.cp = fcmp olt double %i.co, %i.cj
  br i1 %i.cp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cr = fsub double %1, %i.cq                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 424
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !401 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !384 ; 2 uses
  %i.cw = load ptr, ptr %4, align 8, !tbaa !282
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call { double, double } %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !11 ; 2 uses
  %i.da = extractvalue { double, double } %i.cz, 0 ; 2 uses
  %i.db = extractvalue { double, double } %i.cz, 1 ; 2 uses
  %i.dc = fneg double %i.cq
  %i.dd = fadd double %i.ck, %i.ct                ; 2 uses
  %i.de = fdiv double %i.dc, %i.dd                ; 3 uses
  %i.df = fcmp olt double %i.de, %i.da
  br i1 %i.df, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = fcmp ogt double %i.de, %i.db
  br i1 %i.dg, label %bb.l, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

bb.l:                                             ; preds = %bb.k
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i = phi double [ %i.de, %bb.k ], [ %i.db, %bb.l ], [ %i.da, %bb.j ] ; 3 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !282
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call { double, double } %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !11 ; 2 uses
  %i.dl = extractvalue { double, double } %i.dk, 0 ; 2 uses
  %i.dm = extractvalue { double, double } %i.dk, 1 ; 2 uses
  %i.dn = fneg double %i.cr
  %i.do = fadd double %i.co, %i.ct                ; 2 uses
  %i.dp = fdiv double %i.dn, %i.do                ; 3 uses
  %i.dq = fcmp olt double %i.dp, %i.dl
  br i1 %i.dq, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i, label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %i.dr = fcmp ogt double %i.dp, %i.dm
  br i1 %i.dr, label %bb.n, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i

bb.n:                                             ; preds = %bb.m
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i: ; preds = %bb.n, %bb.m, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i
  %.0.i35.i = phi double [ %i.dp, %bb.m ], [ %i.dm, %bb.n ], [ %i.dl, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit.i ] ; 3 uses
  %i.ds = icmp sgt i8 %i.cv, 0
  %i.dt = fcmp ogt double %.0.i.i, %.0.i35.i
  %or.cond.i = and i1 %i.ds, %i.dt
  br i1 %or.cond.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i
  %i.du = icmp slt i8 %i.cv, 0
  %i.dv = fcmp olt double %.0.i.i, %.0.i35.i
  %or.cond34.i = and i1 %i.du, %i.dv
  br i1 %or.cond34.i, label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.do, i64 1
  %i.dy = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %.0.i35.i, i64 1 ; 3 uses
  %i.ea = fmul <2 x double> %i.dx, %i.dz
  %i.eb = insertelement <2 x double> %i.cb, double %i.cr, i64 1
  %i.ec = fmul <2 x double> %i.eb, splat (double 2.000000e+00)
  %i.ed = fmul <2 x double> %i.dz, %i.ea
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.dz, <2 x double> %i.ed) ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  %i.eg = fneg double %i.ef
  %i.eh = extractelement <2 x double> %i.ee, i64 0
  %i.ei = fsub double %i.eg, %i.eh
  br label %_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit

_ZN8LightGBM16FeatureHistogram13GetSplitGainsILb1ELb0ELb0ELb0EEEddddddddPKNS_17FeatureConstraintEadiid.exit: ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb0ELb0ELb0EEEddddddRKNS_15BasicConstraintEdid.exit36.i, %bb.o, %bb.p
end_hunk_31
