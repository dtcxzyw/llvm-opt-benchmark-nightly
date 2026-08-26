Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/vbrquantize?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@find_scalefac:bb.a
bb.i:                                             ; preds = %calc_sfb_ave_noise.exit.thread.us, %bb.h, %bb.g
  %.166.us = phi double [ %i.ai, %calc_sfb_ave_noise.exit.thread.us ], [ %i.ah, %bb.h ], [ %i.af, %bb.g ]
  %.264.us = phi double [ %.06289.us, %calc_sfb_ave_noise.exit.thread.us ], [ %.163.us, %bb.h ], [ %.06588.us, %bb.g ] ; 3 uses
  %i.aj = add nuw nsw i32 %.094.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, 7
  br i1 %exitcond.not, label %.split96.us.loopexit, label %.lr.ph.preheader.i.us, !llvm.loop !12

calc_sfb_ave_noise.exit.loopexit.us:              ; preds = %bb.e
  %i.ak = fdiv double %i.ac, %i.e                 ; 2 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %calc_sfb_ave_noise.exit.thread.us, label %bb.f

.split:                                           ; preds = %bb.a
  %i.am = fdiv double 0.000000e+00, %i.e
  %i.an = fcmp ogt double %i.am, %4
  %exp272.us108 = tail call double @exp2(double -2.050000e+01) #9 ; 0 uses
  br i1 %i.an, label %calc_sfb_ave_noise.exit.us100.preheader, label %calc_sfb_ave_noise.exit.preheader

calc_sfb_ave_noise.exit.preheader:                ; preds = %.split
  %exp272.1 = tail call double @exp2(double -4.500000e+00) #9 ; 0 uses
  %exp272.2 = tail call double @exp2(double 3.500000e+00) #9 ; 0 uses
  %exp272.3 = tail call double @exp2(double 7.500000e+00) #9 ; 0 uses
  %exp272.4 = tail call double @exp2(double 9.500000e+00) #9 ; 0 uses
  %exp272.5 = tail call double @exp2(double 1.050000e+01) #9 ; 0 uses
  %exp272.6 = tail call double @exp2(double 1.100000e+01) #9 ; 0 uses
  br label %.split96.us

calc_sfb_ave_noise.exit.us100.preheader:          ; preds = %.split
  %exp272.us108.1 = tail call double @exp2(double -3.650000e+01) #9 ; 0 uses
  %exp272.us108.2 = tail call double @exp2(double -4.450000e+01) #9 ; 0 uses
  %exp272.us108.3 = tail call double @exp2(double -4.850000e+01) #9 ; 0 uses
  %exp272.us108.4 = tail call double @exp2(double -5.050000e+01) #9 ; 0 uses
  %exp272.us108.5 = tail call double @exp2(double -5.150000e+01) #9 ; 0 uses
  %exp272.us108.6 = tail call double @exp2(double -5.200000e+01) #9 ; 0 uses
  br label %.split96.us

.split96.us.loopexit:                             ; preds = %bb.i
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.f, double 2.000000e+00, double %.264.us)
  br label %.split96.us

.split96.us:                                      ; preds = %calc_sfb_ave_noise.exit.preheader, %calc_sfb_ave_noise.exit.us100.preheader, %.split96.us.loopexit
  %.us-phi = phi double [ -2.050000e+01, %calc_sfb_ave_noise.exit.us100.preheader ], [ %.264.us, %.split96.us.loopexit ], [ 1.100000e+01, %calc_sfb_ave_noise.exit.preheader ] ; 5 uses
  %.us-phi97 = phi double [ -2.000000e+01, %calc_sfb_ave_noise.exit.us100.preheader ], [ %i.ao, %.split96.us.loopexit ], [ 1.150000e+01, %calc_sfb_ave_noise.exit.preheader ] ; 2 uses
  %i.ap = fadd double %.us-phi, 7.500000e-01      ; 3 uses
  %i.aq = fadd double %.us-phi, 1.000000e-02      ; 3 uses
  %i.ar = fcmp ogt double %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split96.us
  br i1 %i.b, label %.lr.ph.preheader.i76.us, label %calc_sfb_ave_noise.exit83

.lr.ph.preheader.i76.us:                          ; preds = %.lr.ph, %calc_sfb_ave_noise.exit83.thread.us
  %.267123.us = phi double [ %i.bu, %calc_sfb_ave_noise.exit83.thread.us ], [ %i.ap, %.lr.ph ] ; 3 uses
  %i.as = fsub double %.267123.us, %.us-phi97
  %i.at = tail call double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp olt double %i.at, 1.000000e-02
  %i.av = fadd double %.267123.us, -2.500000e-01
  %.368.us = select i1 %i.au, double %i.av, double %.267123.us ; 3 uses
  %exp2.us = tail call double @exp2(double %.368.us) #9 ; 3 uses
  %i.aw = tail call double @pow(double noundef %exp2.us, double noundef 7.500000e-01) #9, !tbaa !4
  br label %.lr.ph.i77.us

.lr.ph.i77.us:                                    ; preds = %bb.m, %.lr.ph.preheader.i76.us
  %indvars.iv.i78.us = phi i64 [ 0, %.lr.ph.preheader.i76.us ], [ %indvars.iv.next.i82.us, %bb.m ] ; 3 uses
  %.03135.i79.us = phi double [ 0.000000e+00, %.lr.ph.preheader.i76.us ], [ %i.bs, %bb.m ]
  %i.ax = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.i78.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !8
  %i.az = fdiv double %i.ay, %i.aw
  %i.ba = tail call double @llvm.floor.f64(double %i.az)
  %i.bb = fptosi double %i.ba to i32              ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 8207
  br i1 %i.bc, label %bb.j, label %calc_sfb_ave_noise.exit83.thread.us

bb.j:                                             ; preds = %.lr.ph.i77.us
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.i78.us
  %i.be = load double, ptr %i.bd, align 8, !tbaa !8
  %i.bf = tail call double @llvm.fabs.f64(double %i.be) ; 2 uses
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !8
  %i.bj = fneg double %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %exp2.us, double %i.bf) ; 3 uses
  %.not.i80.us = icmp eq i32 %i.bb, 8206
  br i1 %.not.i80.us, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !8
  %i.bn = fneg double %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %exp2.us, double %i.bf) ; 2 uses
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = tail call double @llvm.fabs.f64(double %i.bk)
  %i.br = fcmp olt double %i.bp, %i.bq
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.029.i81.us = phi double [ %i.bo, %bb.l ], [ %i.bk, %bb.k ], [ %i.bk, %bb.j ] ; 2 uses
  %i.bs = tail call double @llvm.fmuladd.f64(double %.029.i81.us, double %.029.i81.us, double %.03135.i79.us) ; 2 uses
  %indvars.iv.next.i82.us = add nsw i64 %indvars.iv.i78.us, %i.c ; 2 uses
  %i.bt = icmp slt i64 %indvars.iv.next.i82.us, %i.d
  br i1 %i.bt, label %.lr.ph.i77.us, label %calc_sfb_ave_noise.exit83.loopexit.us, !llvm.loop !10

calc_sfb_ave_noise.exit83.thread.us:              ; preds = %.lr.ph.i77.us, %calc_sfb_ave_noise.exit83.loopexit.us
  %i.bu = fadd double %.368.us, -2.500000e-01     ; 2 uses
  %i.bv = fcmp ogt double %i.bu, %i.aq
  br i1 %i.bv, label %.lr.ph.preheader.i76.us, label %._crit_edge, !llvm.loop !13

calc_sfb_ave_noise.exit83.loopexit.us:            ; preds = %bb.m
  %i.bw = fdiv double %i.bs, %i.e                 ; 2 uses
  %i.bx = fcmp ule double %i.bw, 0.000000e+00
  %i.by = fcmp ugt double %i.bw, %4
  %or.cond.us = or i1 %i.bx, %i.by
  br i1 %or.cond.us, label %calc_sfb_ave_noise.exit83.thread.us, label %._crit_edge

calc_sfb_ave_noise.exit83:                        ; preds = %.lr.ph, %calc_sfb_ave_noise.exit83
  %.267123 = phi double [ %i.ce, %calc_sfb_ave_noise.exit83 ], [ %i.ap, %.lr.ph ] ; 3 uses
  %i.bz = fsub double %.267123, %.us-phi97
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp olt double %i.ca, 1.000000e-02
  %i.cc = fadd double %.267123, -2.500000e-01
  %.368 = select i1 %i.cb, double %i.cc, double %.267123 ; 2 uses
  %exp2 = tail call double @exp2(double %.368) #9
  %i.cd = tail call double @pow(double noundef %exp2, double noundef 7.500000e-01) #9, !tbaa !4 ; 0 uses
  %i.ce = fadd double %.368, -2.500000e-01        ; 2 uses
  %i.cf = fcmp ogt double %i.ce, %i.aq
  br i1 %i.cf, label %calc_sfb_ave_noise.exit83, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %calc_sfb_ave_noise.exit83, %calc_sfb_ave_noise.exit83.loopexit.us, %calc_sfb_ave_noise.exit83.thread.us, %.split96.us
  %.069 = phi double [ %.us-phi, %calc_sfb_ave_noise.exit83.thread.us ], [ %.us-phi, %.split96.us ], [ %.368.us, %calc_sfb_ave_noise.exit83.loopexit.us ], [ %.us-phi, %calc_sfb_ave_noise.exit83 ]
  ret double %.069
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local double @compute_scalefacs_short(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [12 x [3 x double]], align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = icmp eq i32 %i.c, 0
  %i.e = select i1 %i.d, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(288) %0, i64 288, i1 false)
  %i.f = uitofp nneg i32 %i.e to double           ; 3 uses
  %i.g = insertelement <2 x double> poison, double %i.f, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %.02428 = phi double [ 0.000000e+00, %bb.a ], [ %.2.2, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.k = icmp samesign ult i64 %indvars.iv, 6
  %. = select i1 %i.k, double 1.500000e+01, double 7.000000e+00
  %.0 = fdiv double %., %i.f                      ; 3 uses
  %i.l = load <2 x double>, ptr %i.i, align 8, !tbaa !8 ; 3 uses
  %i.m = extractelement <2 x double> %i.l, i64 0
  %i.n = fadd double %.0, %i.m                    ; 2 uses
  %i.o = fcmp ogt double %i.n, %.02428
  %.2 = select i1 %i.o, double %i.n, double %.02428 ; 2 uses
  %i.p = fneg <2 x double> %i.l
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.h, <2 x double> splat (double 7.500000e-01))
  %i.r = fadd <2 x double> %i.q, splat (double 1.000000e-04)
  %i.s = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.r)
  %i.t = fptosi <2 x double> %i.s to <2 x i32>
  store <2 x i32> %i.t, ptr %i.j, align 4, !tbaa !4
  %i.u = extractelement <2 x double> %i.l, i64 1
  %i.v = fadd double %.0, %i.u                    ; 2 uses
  %i.w = fcmp ogt double %i.v, %.2
  %.2.1 = select i1 %i.w, double %i.v, double %.2 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !8 ; 2 uses
  %i.z = fneg double %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.f, double 7.500000e-01)
  %i.ab = fadd double %i.aa, 1.000000e-04
  %i.ac = tail call double @llvm.floor.f64(double %i.ab)
  %i.ad = fptosi double %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %i.af = fadd double %.0, %i.y                   ; 2 uses
  %i.ag = fcmp ogt double %i.af, %.2.1
  %.2.2 = select i1 %i.ag, double %i.af, double %.2.1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !18

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.2.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @compute_scalefacs_long(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((64, 68)) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [21 x double], align 16           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = icmp eq i32 %i.c, 0
  %i.e = select i1 %i.d, i32 2, i32 1             ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 44), align 4, !tbaa !4
  %3 = sdiv i32 %i.i, %i.e
  %4 = sitofp i32 %3 to double
  %5 = fadd double %i.h, %4                       ; 2 uses
  %6 = fcmp ogt double %5, 0.000000e+00
  br i1 %6, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.k = load double, ptr %i.j, align 16, !tbaa !8
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 48), align 16, !tbaa !4
  %i.m = sdiv i32 %i.l, %i.e
  %i.n = sitofp i32 %i.m to double
  %i.o = fadd double %i.k, %i.n                   ; 2 uses
  %i.p = fcmp ogt double %i.o, 0.000000e+00
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 52), align 4, !tbaa !4
  %i.t = sdiv i32 %i.s, %i.e
  %i.u = sitofp i32 %i.t to double
  %i.v = fadd double %i.r, %i.u                   ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.y = load double, ptr %i.x, align 16, !tbaa !8
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 56), align 8, !tbaa !4
  %i.aa = sdiv i32 %i.z, %i.e
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fadd double %i.y, %i.ab                 ; 2 uses
  %i.ad = fcmp ogt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !8
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 60), align 4, !tbaa !4
  %i.ah = sdiv i32 %i.ag, %i.e
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fadd double %i.af, %i.ai                ; 2 uses
  %i.ak = fcmp ogt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.am = load double, ptr %i.al, align 16, !tbaa !8 ; 2 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 64), align 16, !tbaa !4
  %i.ao = sdiv i32 %i.an, %i.e
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fadd double %i.am, %i.ap
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.at = load double, ptr %i.as, align 8, !tbaa !8 ; 2 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 68), align 4, !tbaa !4
  %i.av = sdiv i32 %i.au, %i.e
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fadd double %i.at, %i.aw
  %i.ay = fcmp ogt double %i.ax, 0.000000e+00
  br i1 %i.ay, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ba = load double, ptr %i.az, align 16, !tbaa !8 ; 2 uses
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %i.bc = sdiv i32 %i.bb, %i.e
  %i.bd = sitofp i32 %i.bc to double
  %i.be = fadd double %i.ba, %i.bd
  %i.bf = fcmp ogt double %i.be, 0.000000e+00
  br i1 %i.bf, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !8 ; 2 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 76), align 4, !tbaa !4
  %i.bj = sdiv i32 %i.bi, %i.e
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fadd double %i.bh, %i.bk
  %i.bm = fcmp ogt double %i.bl, 0.000000e+00
  br i1 %i.bm, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 16, !tbaa !8 ; 2 uses
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 80), align 16, !tbaa !4
  %i.bq = sdiv i32 %i.bp, %i.e
  %i.br = sitofp i32 %i.bq to double
  %i.bs = fadd double %i.bo, %i.br
  %i.bt = fcmp ogt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %.thread, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.j
  store i32 1, ptr %i.f, align 8, !tbaa !19
  store double %5, ptr %i.g, align 8, !tbaa !8
  store double %i.o, ptr %i.j, align 16, !tbaa !8
  store double %i.v, ptr %i.q, align 8, !tbaa !8
  store double %i.ac, ptr %i.x, align 16, !tbaa !8
  store double %i.aj, ptr %i.ae, align 8, !tbaa !8
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 76), align 4, !tbaa !4
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 68), align 4, !tbaa !4
  %9 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 64), align 16, !tbaa !4
  %10 = sdiv i32 %i.bu, %i.e
  %11 = sdiv i32 %7, %i.e
  %12 = sdiv i32 %8, %i.e
  %13 = sdiv i32 %9, %i.e
  %14 = insertelement <4 x i32> poison, i32 %13, i64 0
  %15 = insertelement <4 x i32> %14, i32 %12, i64 1
  %16 = insertelement <4 x i32> %15, i32 %11, i64 2
  %17 = insertelement <4 x i32> %16, i32 %10, i64 3
  %18 = sitofp <4 x i32> %17 to <4 x double>
  %19 = insertelement <4 x double> poison, double %i.am, i64 0
  %20 = insertelement <4 x double> %19, double %i.at, i64 1
  %21 = insertelement <4 x double> %20, double %i.ba, i64 2
  %22 = insertelement <4 x double> %21, double %i.bh, i64 3
  %23 = fadd <4 x double> %22, %18
  store <4 x double> %23, ptr %i.al, align 16, !tbaa !8
  %24 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 80), align 16, !tbaa !4
  %25 = sdiv i32 %24, %i.e
  %i.bv = sitofp i32 %25 to double
  %i.bw = fadd double %i.bo, %i.bv
  store double %i.bw, ptr %i.bn, align 16, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %.thread.loopexit
  %i.bx = uitofp nneg i32 %i.e to double          ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.k
  %indvars.iv = phi i64 [ 0, %.thread ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.02937 = phi double [ 0.000000e+00, %.thread ], [ %.130, %bb.k ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bz = load double, ptr %i.by, align 8, !tbaa !8 ; 2 uses
  %i.ca = fneg double %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bx, double 7.500000e-01)
  %i.cc = fadd double %i.cb, 1.000000e-04
  %i.cd = tail call double @llvm.floor.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %i.cg = icmp samesign ult i64 %indvars.iv, 11
  %. = select i1 %i.cg, double 1.500000e+01, double 7.000000e+00
  %.031 = fdiv double %., %i.bx
  %i.ch = fadd double %.031, %i.bz                ; 2 uses
  %i.ci = fcmp ogt double %i.ch, %.02937
  %.130 = select i1 %i.ci, double %i.ch, double %.02937 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond.not, label %bb.l, label %bb.k, !llvm.loop !20

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.130
}

; Function Attrs: nounwind uwtable
define dso_local void @VBR_iteration_loop_new(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [12 x [3 x double]], align 16     ; 16 uses
  %i.b = alloca [12 x [3 x double]], align 16     ; 4 uses
  %8 = alloca [2 x [2 x %struct.III_psy_xmin]], align 16 ; 3 uses
  %9 = alloca %struct.III_psy_xmin, align 16      ; 35 uses
  %i.c = alloca [576 x double], align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  tail call void @iteration_init(ptr noundef %0, ptr noundef %5, ptr noundef %6) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %i.f = shl nsw i32 %i.e, 1
  %i.g = add nsw i32 %i.f, -10
  %i.h = sitofp i32 %i.g to double
  %i.i = fdiv double %i.h, 1.000000e+01           ; 2 uses
  %i.j = fcmp ogt double %i.i, 1.270000e+02
  br i1 %i.j, label %cdce.call, label %cdce.end, !prof !26

cdce.call:                                        ; preds = %bb.a
  %i.k = tail call double @pow(double noundef 1.000000e+01, double noundef %i.i) #9, !tbaa !4 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  store float 1.000000e+00, ptr @masking_lower, align 4, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %cdce.end
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 288 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 304 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 352 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 384 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 416 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 432 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 448 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph160, %._crit_edge
  %indvars.iv191 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next192, %._crit_edge ] ; 7 uses
  %i.bd = load i32, ptr @convert_mdct, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv191 ; 2 uses
  call void @ms_convert(ptr noundef %i.be, ptr noundef %i.be) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !29
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw [240 x i8], ptr %i.p, i64 %indvars.iv191
  %i.bi = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv191
  %i.bj = getelementptr inbounds nuw [1952 x i8], ptr %4, i64 %indvars.iv191
  %i.bk = getelementptr inbounds nuw [976 x i8], ptr %8, i64 %indvars.iv191
  %i.bl = getelementptr inbounds nuw [488 x i8], ptr %7, i64 %indvars.iv191 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv188 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next189, %bb.k ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.bm = getelementptr inbounds nuw [120 x i8], ptr %i.bh, i64 %indvars.iv188 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw [4608 x i8], ptr %i.bi, i64 %indvars.iv188 ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load double, ptr %i.bq, align 8, !tbaa !8
  %i.bs = call double @llvm.fabs.f64(double %i.br) ; 2 uses
  %sqrt = call double @llvm.sqrt.f64(double %i.bs)
  %i.bt = fmul double %i.bs, %sqrt
  %i.bu = call double @sqrt(double noundef %i.bt) #9, !tbaa !4
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.bu, ptr %i.bv, align 16, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !8
  %i.by = call double @llvm.fabs.f64(double %i.bx) ; 2 uses
  %sqrt.1 = call double @llvm.sqrt.f64(double %i.by)
  %i.bz = fmul double %i.by, %sqrt.1
  %i.ca = call double @sqrt(double noundef %i.bz) #9, !tbaa !4
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store double %i.ca, ptr %i.cb, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 576
  br i1 %exitcond.not.1, label %bb.g, label %bb.f, !llvm.loop !31

bb.g:                                             ; preds = %bb.f
  %i.cc = icmp eq i32 %i.bo, 2                    ; 2 uses
  %i.cd = getelementptr inbounds nuw [976 x i8], ptr %i.bj, i64 %indvars.iv188
  %i.ce = getelementptr inbounds nuw [488 x i8], ptr %i.bk, i64 %indvars.iv188 ; 3 uses
  %i.cf = call i32 @calc_xmin(ptr noundef nonnull %0, ptr noundef nonnull %i.bp, ptr noundef %i.cd, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.ce) #9 ; 0 uses
  br i1 %i.cc, label %.preheader145, label %.preheader146

.preheader145:                                    ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 176
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader145, %.preheader142
  %indvars.iv172 = phi i64 [ 0, %.preheader145 ], [ %indvars.iv.next173, %.preheader142 ] ; 4 uses
  %.0154 = phi double [ 0.000000e+00, %.preheader145 ], [ %.2.2, %.preheader142 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv172 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 3 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %indvars.iv172 ; 3 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv172 ; 3 uses
  %i.cl = load i32, ptr %i.ch, align 4, !tbaa !4  ; 2 uses
  %i.cm = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.cn = sub nsw i32 %i.cm, %i.cl
  %i.co = mul nsw i32 %i.cl, 3
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cp
  %i.cs = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.ct = fpext float %i.cs to double
  %i.cu = load double, ptr %i.cj, align 8, !tbaa !8
  %i.cv = fmul double %i.cu, %i.ct
  %i.cw = call double @find_scalefac(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr, i32 noundef 3, i32 poison, double noundef %i.cv, i32 noundef %i.cn) ; 3 uses
  store double %i.cw, ptr %i.ck, align 8, !tbaa !8
  %i.cx = fcmp ogt double %i.cw, %.0154
  %.2 = select i1 %i.cx, double %i.cw, double %.0154 ; 2 uses
  %i.cy = load i32, ptr %i.ch, align 4, !tbaa !4  ; 2 uses
  %i.cz = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.da = sub nsw i32 %i.cz, %i.cy
  %i.db = mul nsw i32 %i.cy, 3
  %i.dc = add nsw i32 %i.db, 1
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
end_hunk_0
