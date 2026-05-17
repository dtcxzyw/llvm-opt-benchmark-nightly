inline.NumInlined: 4
begin_hunk_0_@find_scalefac:bb.a
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = tail call double @llvm.fabs.f64(double %i.o) ; 2 uses
  %i.q = sext i32 %i.l to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !8
  %i.t = fneg double %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %exp272.us, double %i.p) ; 3 uses
  %.not.i.us = icmp eq i32 %i.l, 8206
  br i1 %.not.i.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.r, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !8
  %i.x = fneg double %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %exp272.us, double %i.p) ; 2 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = tail call double @llvm.fabs.f64(double %i.u)
  %i.ab = fcmp olt double %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.029.i.us = phi double [ %i.y, %bb.d ], [ %i.u, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %i.ac = tail call double @llvm.fmuladd.f64(double %.029.i.us, double %.029.i.us, double %.03137.i.us) ; 2 uses
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, %i.c ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv.next.i.us, %i.d
  br i1 %i.ad, label %.lr.ph.i.us, label %calc_sfb_ave_noise.exit.loopexit.us, !llvm.loop !10

bb.f:                                             ; preds = %calc_sfb_ave_noise.exit.loopexit.us
  %i.ae = fcmp ogt double %i.ak, %4
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = fadd double %.06588.us, %i.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = fcmp oeq double %.06289.us, 1.000000e+04
  %.163.us = select i1 %i.ag, double %.06588.us, double %.06289.us
  %i.ah = fsub double %.06588.us, %i.f
  br label %bb.i

calc_sfb_ave_noise.exit.thread.us:                ; preds = %.lr.ph.i.us, %calc_sfb_ave_noise.exit.loopexit.us
  %i.ai = fadd double %.06588.us, %i.f
  br label %bb.i

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
  %.03137.i79.us = phi double [ 0.000000e+00, %.lr.ph.preheader.i76.us ], [ %i.bs, %bb.m ]
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
  %i.bs = tail call double @llvm.fmuladd.f64(double %.029.i81.us, double %.029.i81.us, double %.03137.i79.us) ; 2 uses
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
define dso_local double @compute_scalefacs_short(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [12 x [3 x double]], align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = icmp eq i32 %i.c, 0
  %i.e = select i1 %i.d, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(288) %0, i64 288, i1 false)
  %i.f = uitofp nneg i32 %i.e to double           ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %.02428 = phi double [ 0.000000e+00, %bb.a ], [ %.2.2, %.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.i = icmp samesign ult i64 %indvars.iv, 6
  %. = select i1 %i.i, double 1.500000e+01, double 7.000000e+00
  %.0 = fdiv double %., %i.f                      ; 3 uses
  %i.j = load double, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.k = fneg double %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.f, double 7.500000e-01)
  %i.m = fadd double %i.l, 1.000000e-04
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fadd double %.0, %i.j                    ; 2 uses
  %i.p = fcmp ogt double %i.o, %.02428
  %.2 = select i1 %i.p, double %i.o, double %.02428 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !8 ; 2 uses
  %i.s = fneg double %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.f, double 7.500000e-01)
  %i.u = fadd double %i.t, 1.000000e-04
  %i.v = tail call double @llvm.floor.f64(double %i.u)
  %3 = insertelement <2 x double> poison, double %i.n, i64 0
  %4 = insertelement <2 x double> %3, double %i.v, i64 1
  %5 = fptosi <2 x double> %4 to <2 x i32>
  store <2 x i32> %5, ptr %i.h, align 4, !tbaa !4
  %i.w = fadd double %.0, %i.r                    ; 2 uses
  %i.x = fcmp ogt double %i.w, %.2
  %.2.1 = select i1 %i.x, double %i.w, double %.2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.f, double 7.500000e-01)
  %i.ac = fadd double %i.ab, 1.000000e-04
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %6 = fptosi double %i.ad to i32
  %7 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %6, ptr %7, align 4, !tbaa !4
  %i.ae = fadd double %.0, %i.z                   ; 2 uses
  %i.af = fcmp ogt double %i.ae, %.2.1
  %.2.2 = select i1 %i.af, double %i.ae, double %.2.1 ; 2 uses
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
define dso_local double @compute_scalefacs_long(ptr noundef readonly captures(none) %0, ptr noundef captures(none) initializes((64, 68)) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #6 {
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
  %i.j = sdiv i32 %i.i, %i.e
  %i.k = sitofp i32 %i.j to double
  %i.l = fadd double %i.h, %i.k                   ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  br i1 %i.m, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.o = load double, ptr %i.n, align 16, !tbaa !8
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 48), align 16, !tbaa !4
  %i.q = sdiv i32 %i.p, %i.e
  %i.r = sitofp i32 %i.q to double
  %i.s = fadd double %i.o, %i.r                   ; 2 uses
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  br i1 %i.t, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 52), align 4, !tbaa !4
  %i.x = sdiv i32 %i.w, %i.e
  %i.y = sitofp i32 %i.x to double
  %i.z = fadd double %i.v, %i.y                   ; 2 uses
  %i.aa = fcmp ogt double %i.z, 0.000000e+00
  br i1 %i.aa, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 16, !tbaa !8
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 56), align 8, !tbaa !4
  %i.ae = sdiv i32 %i.ad, %i.e
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fadd double %i.ac, %i.af                ; 2 uses
  %i.ah = fcmp ogt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !8
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 60), align 4, !tbaa !4
  %i.al = sdiv i32 %i.ak, %i.e
  %i.am = sitofp i32 %i.al to double
  %i.an = fadd double %i.aj, %i.am                ; 2 uses
  %i.ao = fcmp ogt double %i.an, 0.000000e+00
  br i1 %i.ao, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 16, !tbaa !8 ; 2 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 64), align 16, !tbaa !4
  %i.as = sdiv i32 %i.ar, %i.e
  %i.at = sitofp i32 %i.as to double
  %i.au = fadd double %i.aq, %i.at
  %i.av = fcmp ogt double %i.au, 0.000000e+00
  br i1 %i.av, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !8 ; 2 uses
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 68), align 4, !tbaa !4
  %i.az = sdiv i32 %i.ay, %i.e
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fadd double %i.ax, %i.ba
  %i.bc = fcmp ogt double %i.bb, 0.000000e+00
  br i1 %i.bc, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.be = load double, ptr %i.bd, align 16, !tbaa !8 ; 2 uses
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %i.bg = sdiv i32 %i.bf, %i.e
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fadd double %i.be, %i.bh
  %i.bj = fcmp ogt double %i.bi, 0.000000e+00
  br i1 %i.bj, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !8 ; 2 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 76), align 4, !tbaa !4
  %i.bn = sdiv i32 %i.bm, %i.e
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = fadd double %i.bl, %i.bo
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.bs = load double, ptr %i.br, align 16, !tbaa !8 ; 2 uses
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 80), align 16, !tbaa !4
  %i.bu = sdiv i32 %i.bt, %i.e
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = fcmp ogt double %i.bw, 0.000000e+00
  br i1 %i.bx, label %.thread, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.j
  store i32 1, ptr %i.f, align 8, !tbaa !19
  store double %i.l, ptr %i.g, align 8, !tbaa !8
  store double %i.s, ptr %i.n, align 16, !tbaa !8
  store double %i.z, ptr %i.u, align 8, !tbaa !8
  store double %i.ag, ptr %i.ab, align 16, !tbaa !8
  store double %i.an, ptr %i.ai, align 8, !tbaa !8
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 76), align 4, !tbaa !4
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 68), align 4, !tbaa !4
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 64), align 16, !tbaa !4
  %i.cc = sdiv i32 %i.by, %i.e
  %i.cd = sdiv i32 %i.bz, %i.e
  %i.ce = sdiv i32 %i.ca, %i.e
  %i.cf = sdiv i32 %i.cb, %i.e
  %i.cg = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.ce, i64 1
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.cd, i64 2
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cc, i64 3
  %i.ck = sitofp <4 x i32> %i.cj to <4 x double>
  %i.cl = insertelement <4 x double> poison, double %i.aq, i64 0
  %i.cm = insertelement <4 x double> %i.cl, double %i.ax, i64 1
  %i.cn = insertelement <4 x double> %i.cm, double %i.be, i64 2
  %i.co = insertelement <4 x double> %i.cn, double %i.bl, i64 3
  %i.cp = fadd <4 x double> %i.co, %i.ck
  store <4 x double> %i.cp, ptr %i.ap, align 16, !tbaa !8
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 80), align 16, !tbaa !4
  %i.cr = sdiv i32 %i.cq, %i.e
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fadd double %i.bs, %i.cs
  store double %i.ct, ptr %i.br, align 16, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %.thread.loopexit
  %i.cu = uitofp nneg i32 %i.e to double          ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.k
  %indvars.iv = phi i64 [ 0, %.thread ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.02937 = phi double [ 0.000000e+00, %.thread ], [ %.130, %bb.k ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !8 ; 2 uses
  %i.cx = fneg double %i.cw
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cu, double 7.500000e-01)
  %i.cz = fadd double %i.cy, 1.000000e-04
  %i.da = tail call double @llvm.floor.f64(double %i.cz)
  %i.db = fptosi double %i.da to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !4
  %i.dd = icmp samesign ult i64 %indvars.iv, 11
  %. = select i1 %i.dd, double 1.500000e+01, double 7.000000e+00
  %.031 = fdiv double %., %i.cu
  %i.de = fadd double %.031, %i.cw                ; 2 uses
  %i.df = fcmp ogt double %i.de, %.02937
  %.130 = select i1 %i.df, double %i.de, double %.02937 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond.not, label %bb.l, label %bb.k, !llvm.loop !20

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.130
}

; Function Attrs: nounwind uwtable
define dso_local void @VBR_iteration_loop_new(ptr noundef %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly captures(none) %7) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [12 x [3 x double]], align 16     ; 22 uses
  %i.b = alloca [12 x [3 x double]], align 16     ; 4 uses
  %8 = alloca [2 x [2 x %struct.III_psy_xmin]], align 16 ; 3 uses
  %9 = alloca %struct.III_psy_xmin, align 16      ; 35 uses
  %i.c = alloca [576 x double], align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
end_hunk_0
begin_hunk_1_@VBR_iteration_loop_new:bb.a

.preheader142:                                    ; preds = %.preheader145, %.preheader142
  %indvars.iv172 = phi i64 [ 0, %.preheader145 ], [ %indvars.iv.next173, %.preheader142 ] ; 4 uses
  %.0154 = phi double [ 0.000000e+00, %.preheader145 ], [ %.2.2, %.preheader142 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv172 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 3 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv172 ; 3 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv172 ; 3 uses
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !4  ; 2 uses
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !4
  %i.ct = sub nsw i32 %i.cs, %i.cr
  %i.cu = mul nsw i32 %i.cr, 3
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cv
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cv
  %i.cy = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.cz = fpext float %i.cy to double
  %i.da = load double, ptr %i.cp, align 8, !tbaa !8
  %i.db = fmul double %i.da, %i.cz
  %i.dc = call double @find_scalefac(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cx, i32 noundef 3, i32 poison, double noundef %i.db, i32 noundef %i.ct) ; 3 uses
  store double %i.dc, ptr %i.cq, align 8, !tbaa !8
  %i.dd = fcmp ogt double %i.dc, %.0154
  %.2 = select i1 %i.dd, double %i.dc, double %.0154 ; 2 uses
  %i.de = load i32, ptr %i.cn, align 4, !tbaa !4  ; 2 uses
  %i.df = load i32, ptr %i.co, align 4, !tbaa !4
  %i.dg = sub nsw i32 %i.df, %i.de
  %i.dh = mul nsw i32 %i.de, 3
  %i.di = add nsw i32 %i.dh, 1
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.dj
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dj
  %i.dm = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.dn = fpext float %i.dm to double
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !8
  %i.dq = fmul double %i.dp, %i.dn
  %i.dr = call double @find_scalefac(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, i32 noundef 3, i32 poison, double noundef %i.dq, i32 noundef %i.dg) ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store double %i.dr, ptr %i.ds, align 8, !tbaa !8
  %i.dt = fcmp ogt double %i.dr, %.2
  %.2.1 = select i1 %i.dt, double %i.dr, double %.2 ; 2 uses
  %i.du = load i32, ptr %i.cn, align 4, !tbaa !4  ; 2 uses
  %i.dv = load i32, ptr %i.co, align 4, !tbaa !4
  %i.dw = sub nsw i32 %i.dv, %i.du
  %i.dx = mul nsw i32 %i.du, 3
  %i.dy = add nsw i32 %i.dx, 2
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.dz
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dz
  %i.ec = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.ed = fpext float %i.ec to double
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !8
  %i.eg = fmul double %i.ef, %i.ed
  %i.eh = call double @find_scalefac(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb, i32 noundef 3, i32 poison, double noundef %i.eg, i32 noundef %i.dw) ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store double %i.eh, ptr %i.ei, align 8, !tbaa !8
  %i.ej = fcmp ogt double %i.eh, %.2.1
  %.2.2 = select i1 %i.ej, double %i.eh, double %.2.1 ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next173, 12
  br i1 %exitcond175.not, label %.loopexit, label %.preheader142, !llvm.loop !32

.preheader146:                                    ; preds = %bb.g, %.preheader146
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.preheader146 ], [ 0, %bb.g ] ; 4 uses
  %.3150 = phi double [ %.4, %.preheader146 ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv164
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next165
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %i.eo = sub nsw i32 %i.en, %i.el
  %i.ep = sext i32 %i.el to i64                   ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.ep
  %i.er = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ep
  %i.es = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.et = fpext float %i.es to double
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv164
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !8
  %i.ew = fmul double %i.ev, %i.et
  %i.ex = call double @find_scalefac(ptr noundef nonnull %i.eq, ptr noundef nonnull %i.er, i32 noundef 1, i32 poison, double noundef %i.ew, i32 noundef %i.eo) ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv164
  store double %i.ex, ptr %i.ey, align 8, !tbaa !8
  %i.ez = fcmp ogt double %i.ex, %.3150
  %.4 = select i1 %i.ez, double %i.ex, double %.3150 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next165, 21
  br i1 %exitcond167.not, label %.loopexit, label %.preheader146, !llvm.loop !33

.loopexit:                                        ; preds = %.preheader146, %.preheader142
  %.5 = phi double [ %.2.2, %.preheader142 ], [ %.4, %.preheader146 ] ; 4 uses
  %i.fa = call double @llvm.fmuladd.f64(double %.5, double 4.000000e+00, double 2.100000e+02)
  %i.fb = fadd double %i.fa, 5.000000e-01
  %i.fc = call double @llvm.floor.f64(double %i.fb)
  %i.fd = fptoui double %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !34
  br i1 %i.ci, label %.preheader.preheader, label %.preheader144.preheader

.preheader144.preheader:                          ; preds = %.loopexit
  %i.ff = load <2 x double>, ptr %9, align 16, !tbaa !8
  %i.fg = insertelement <2 x double> poison, double %.5, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.fi = fsub <2 x double> %i.ff, %i.fh
  store <2 x double> %i.fi, ptr %9, align 16, !tbaa !8
  %i.fj = load <2 x double>, ptr %i.r, align 16, !tbaa !8
  %i.fk = fsub <2 x double> %i.fj, %i.fh
  store <2 x double> %i.fk, ptr %i.r, align 16, !tbaa !8
  %i.fl = load <2 x double>, ptr %i.s, align 16, !tbaa !8
  %i.fm = fsub <2 x double> %i.fl, %i.fh
  store <2 x double> %i.fm, ptr %i.s, align 16, !tbaa !8
  %i.fn = load <2 x double>, ptr %i.t, align 16, !tbaa !8
  %i.fo = fsub <2 x double> %i.fn, %i.fh
  store <2 x double> %i.fo, ptr %i.t, align 16, !tbaa !8
  %i.fp = load <2 x double>, ptr %i.u, align 16, !tbaa !8
  %i.fq = fsub <2 x double> %i.fp, %i.fh
  store <2 x double> %i.fq, ptr %i.u, align 16, !tbaa !8
  %i.fr = load <2 x double>, ptr %i.v, align 16, !tbaa !8
  %i.fs = fsub <2 x double> %i.fr, %i.fh
  store <2 x double> %i.fs, ptr %i.v, align 16, !tbaa !8
  %i.ft = load <2 x double>, ptr %i.w, align 16, !tbaa !8
  %i.fu = fsub <2 x double> %i.ft, %i.fh
  store <2 x double> %i.fu, ptr %i.w, align 16, !tbaa !8
  %i.fv = load <2 x double>, ptr %i.x, align 16, !tbaa !8
  %i.fw = fsub <2 x double> %i.fv, %i.fh
  store <2 x double> %i.fw, ptr %i.x, align 16, !tbaa !8
  %i.fx = load <2 x double>, ptr %i.y, align 16, !tbaa !8
  %i.fy = fsub <2 x double> %i.fx, %i.fh
  store <2 x double> %i.fy, ptr %i.y, align 16, !tbaa !8
  %i.fz = load <2 x double>, ptr %i.z, align 16, !tbaa !8
  %i.ga = fsub <2 x double> %i.fz, %i.fh
  store <2 x double> %i.ga, ptr %i.z, align 16, !tbaa !8
  %i.gb = load double, ptr %i.aa, align 16, !tbaa !8
  %i.gc = fsub double %i.gb, %.5
  store double %i.gc, ptr %i.aa, align 16, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bs, i64 68 ; 2 uses
  store i32 0, ptr %i.gd, align 4, !tbaa !14
  %i.ge = getelementptr inbounds nuw [244 x i8], ptr %i.br, i64 %indvars.iv188 ; 2 uses
  %i.gf = call double @compute_scalefacs_long(ptr noundef nonnull %9, ptr noundef nonnull %i.bs, ptr noundef %i.ge)
  %i.gg = fcmp ogt double %i.gf, 0.000000e+00
  br i1 %i.gg, label %bb.i, label %bb.k

.preheader.preheader:                             ; preds = %.loopexit
  %i.gh = load <2 x double>, ptr %i.q, align 16, !tbaa !8
  %i.gi = insertelement <2 x double> poison, double %.5, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.gk = fsub <2 x double> %i.gh, %i.gj
  store <2 x double> %i.gk, ptr %i.q, align 16, !tbaa !8
  %i.gl = load <2 x double>, ptr %i.ab, align 16, !tbaa !8
  %i.gm = fsub <2 x double> %i.gl, %i.gj
  store <2 x double> %i.gm, ptr %i.ab, align 16, !tbaa !8
  %i.gn = load <2 x double>, ptr %i.ac, align 16, !tbaa !8
  %i.go = fsub <2 x double> %i.gn, %i.gj
  store <2 x double> %i.go, ptr %i.ac, align 16, !tbaa !8
  %i.gp = load <2 x double>, ptr %i.ad, align 16, !tbaa !8
  %i.gq = fsub <2 x double> %i.gp, %i.gj
  store <2 x double> %i.gq, ptr %i.ad, align 16, !tbaa !8
  %i.gr = load <2 x double>, ptr %i.ae, align 16, !tbaa !8
  %i.gs = fsub <2 x double> %i.gr, %i.gj
  store <2 x double> %i.gs, ptr %i.ae, align 16, !tbaa !8
  %i.gt = load <2 x double>, ptr %i.af, align 16, !tbaa !8
  %i.gu = fsub <2 x double> %i.gt, %i.gj
  store <2 x double> %i.gu, ptr %i.af, align 16, !tbaa !8
  %i.gv = load <2 x double>, ptr %i.ag, align 16, !tbaa !8
  %i.gw = fsub <2 x double> %i.gv, %i.gj
  store <2 x double> %i.gw, ptr %i.ag, align 16, !tbaa !8
  %i.gx = load <2 x double>, ptr %i.ah, align 16, !tbaa !8
  %i.gy = fsub <2 x double> %i.gx, %i.gj
  store <2 x double> %i.gy, ptr %i.ah, align 16, !tbaa !8
  %i.gz = load <2 x double>, ptr %i.ai, align 16, !tbaa !8
  %i.ha = fsub <2 x double> %i.gz, %i.gj
  store <2 x double> %i.ha, ptr %i.ai, align 16, !tbaa !8
  %i.hb = load <2 x double>, ptr %i.aj, align 16, !tbaa !8
  %i.hc = fsub <2 x double> %i.hb, %i.gj
  store <2 x double> %i.hc, ptr %i.aj, align 16, !tbaa !8
  %i.hd = load <2 x double>, ptr %i.ak, align 16, !tbaa !8
  %i.he = fsub <2 x double> %i.hd, %i.gj
  store <2 x double> %i.he, ptr %i.ak, align 16, !tbaa !8
  %i.hf = load <2 x double>, ptr %i.al, align 16, !tbaa !8
  %i.hg = fsub <2 x double> %i.hf, %i.gj
  store <2 x double> %i.hg, ptr %i.al, align 16, !tbaa !8
  %i.hh = load <2 x double>, ptr %i.am, align 16, !tbaa !8
  %i.hi = fsub <2 x double> %i.hh, %i.gj
  store <2 x double> %i.hi, ptr %i.am, align 16, !tbaa !8
  %i.hj = load <2 x double>, ptr %i.an, align 16, !tbaa !8
  %i.hk = fsub <2 x double> %i.hj, %i.gj
  store <2 x double> %i.hk, ptr %i.an, align 16, !tbaa !8
  %i.hl = load <2 x double>, ptr %i.ao, align 16, !tbaa !8
  %i.hm = fsub <2 x double> %i.hl, %i.gj
  store <2 x double> %i.hm, ptr %i.ao, align 16, !tbaa !8
  %i.hn = load <2 x double>, ptr %i.ap, align 16, !tbaa !8
  %i.ho = fsub <2 x double> %i.hn, %i.gj
  store <2 x double> %i.ho, ptr %i.ap, align 16, !tbaa !8
  %i.hp = load <2 x double>, ptr %i.aq, align 16, !tbaa !8
  %i.hq = fsub <2 x double> %i.hp, %i.gj
  store <2 x double> %i.hq, ptr %i.aq, align 16, !tbaa !8
  %i.hr = load <2 x double>, ptr %i.ar, align 16, !tbaa !8
  %i.hs = fsub <2 x double> %i.hr, %i.gj
  store <2 x double> %i.hs, ptr %i.ar, align 16, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bs, i64 68 ; 2 uses
  store i32 0, ptr %i.ht, align 4, !tbaa !14
  %i.hu = getelementptr inbounds nuw [244 x i8], ptr %i.br, i64 %indvars.iv188 ; 12 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(288) %i.q, i64 288, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.i, %.preheader.i ] ; 4 uses
  %.02428.i = phi double [ 0.000000e+00, %.preheader.preheader ], [ %.2.2.i, %.preheader.i ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %i.hx = getelementptr inbounds nuw [12 x i8], ptr %i.hv, i64 %indvars.iv.i ; 2 uses
  %i.hy = icmp samesign ult i64 %indvars.iv.i, 6
  %.0.i = select i1 %i.hy, double 7.500000e+00, double 3.500000e+00 ; 3 uses
  %i.hz = load double, ptr %i.hw, align 8, !tbaa !8 ; 2 uses
  %i.ia = fneg double %i.hz
  %i.ib = call double @llvm.fmuladd.f64(double %i.ia, double 2.000000e+00, double 7.500000e-01)
  %i.ic = fadd double %i.ib, 1.000000e-04
  %i.id = call double @llvm.floor.f64(double %i.ic)
  %i.ie = fadd double %.0.i, %i.hz                ; 2 uses
  %i.if = fcmp ogt double %i.ie, %.02428.i
  %.2.i = select i1 %i.if, double %i.ie, double %.02428.i ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !8 ; 2 uses
  %i.ii = fneg double %i.ih
  %i.ij = call double @llvm.fmuladd.f64(double %i.ii, double 2.000000e+00, double 7.500000e-01)
  %i.ik = fadd double %i.ij, 1.000000e-04
  %i.il = call double @llvm.floor.f64(double %i.ik)
  %10 = insertelement <2 x double> poison, double %i.id, i64 0
  %11 = insertelement <2 x double> %10, double %i.il, i64 1
  %12 = fptosi <2 x double> %11 to <2 x i32>
  store <2 x i32> %12, ptr %i.hx, align 4, !tbaa !4
  %i.im = fadd double %.0.i, %i.ih                ; 2 uses
  %i.in = fcmp ogt double %i.im, %.2.i
  %.2.1.i = select i1 %i.in, double %i.im, double %.2.i ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ip = load double, ptr %i.io, align 8, !tbaa !8 ; 2 uses
  %i.iq = fneg double %i.ip
  %i.ir = call double @llvm.fmuladd.f64(double %i.iq, double 2.000000e+00, double 7.500000e-01)
  %i.is = fadd double %i.ir, 1.000000e-04
  %i.it = call double @llvm.floor.f64(double %i.is)
  %13 = fptosi double %i.it to i32
  %14 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 %13, ptr %14, align 4, !tbaa !4
  %i.iu = fadd double %.0.i, %i.ip                ; 2 uses
  %i.iv = fcmp ogt double %i.iu, %.2.1.i
  %.2.2.i = select i1 %i.iv, double %i.iu, double %.2.1.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 12
  br i1 %exitcond.not.i, label %compute_scalefacs_short.exit, label %.preheader.i, !llvm.loop !18

compute_scalefacs_short.exit:                     ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.iw = fcmp ogt double %.2.2.i, 0.000000e+00
  br i1 %i.iw, label %.preheader.i131.peel.begin, label %bb.k

.preheader.i131.peel.begin:                       ; preds = %compute_scalefacs_short.exit
  store i32 1, ptr %i.ht, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(288) %i.q, i64 288, i1 false)
  %i.ix = load double, ptr %i.a, align 16, !tbaa !8 ; 2 uses
  %i.iy = fsub double 7.500000e-01, %i.ix
  %i.iz = fadd double %i.iy, 1.000000e-04
  %i.ja = call double @llvm.floor.f64(double %i.iz)
  %i.jb = fadd double %i.ix, 1.500000e+01         ; 2 uses
  %i.jc = fcmp ogt double %i.jb, 0.000000e+00
  %.2.i136.peel = select i1 %i.jc, double %i.jb, double 0.000000e+00 ; 2 uses
  %i.jd = load double, ptr %i.as, align 8, !tbaa !8 ; 2 uses
  %i.je = fsub double 7.500000e-01, %i.jd
  %i.jf = fadd double %i.je, 1.000000e-04
  %i.jg = call double @llvm.floor.f64(double %i.jf)
  %15 = insertelement <2 x double> poison, double %i.ja, i64 0
  %16 = insertelement <2 x double> %15, double %i.jg, i64 1
  %17 = fptosi <2 x double> %16 to <2 x i32>
  store <2 x i32> %17, ptr %i.hv, align 4, !tbaa !4
  %i.jh = fadd double %i.jd, 1.500000e+01         ; 2 uses
  %i.ji = fcmp ogt double %i.jh, %.2.i136.peel
  %.2.1.i137.peel = select i1 %i.ji, double %i.jh, double %.2.i136.peel ; 2 uses
  %i.jj = load double, ptr %i.at, align 16, !tbaa !8 ; 2 uses
  %i.jk = fsub double 7.500000e-01, %i.jj
  %i.jl = fadd double %i.jk, 1.000000e-04
  %i.jm = call double @llvm.floor.f64(double %i.jl)
  %18 = fptosi double %i.jm to i32
  %19 = getelementptr inbounds nuw i8, ptr %i.hu, i64 96
  store i32 %18, ptr %19, align 4, !tbaa !4
  %i.jn = fadd double %i.jj, 1.500000e+01         ; 2 uses
  %i.jo = fcmp ogt double %i.jn, %.2.1.i137.peel
  %.2.2.i138.peel = select i1 %i.jo, double %i.jn, double %.2.1.i137.peel ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hu, i64 100
  %i.jq = load double, ptr %i.au, align 8, !tbaa !8 ; 2 uses
  %i.jr = fsub double 7.500000e-01, %i.jq
  %i.js = fadd double %i.jr, 1.000000e-04
  %i.jt = call double @llvm.floor.f64(double %i.js)
  %i.ju = fadd double %i.jq, 1.500000e+01         ; 2 uses
  %i.jv = fcmp ogt double %i.ju, %.2.2.i138.peel
  %.2.i136.peel200 = select i1 %i.jv, double %i.ju, double %.2.2.i138.peel ; 2 uses
  %i.jw = load double, ptr %i.av, align 16, !tbaa !8 ; 2 uses
  %i.jx = fsub double 7.500000e-01, %i.jw
  %i.jy = fadd double %i.jx, 1.000000e-04
  %i.jz = call double @llvm.floor.f64(double %i.jy)
  %20 = insertelement <2 x double> poison, double %i.jt, i64 0
  %21 = insertelement <2 x double> %20, double %i.jz, i64 1
  %22 = fptosi <2 x double> %21 to <2 x i32>
  store <2 x i32> %22, ptr %i.jp, align 4, !tbaa !4
  %i.ka = fadd double %i.jw, 1.500000e+01         ; 2 uses
  %i.kb = fcmp ogt double %i.ka, %.2.i136.peel200
  %.2.1.i137.peel201 = select i1 %i.kb, double %i.ka, double %.2.i136.peel200 ; 2 uses
  %i.kc = load double, ptr %i.aw, align 8, !tbaa !8 ; 2 uses
  %i.kd = fsub double 7.500000e-01, %i.kc
  %i.ke = fadd double %i.kd, 1.000000e-04
  %i.kf = call double @llvm.floor.f64(double %i.ke)
  %23 = fptosi double %i.kf to i32
  %24 = getelementptr inbounds nuw i8, ptr %i.hu, i64 108
  store i32 %23, ptr %24, align 4, !tbaa !4
  %i.kg = fadd double %i.kc, 1.500000e+01         ; 2 uses
  %i.kh = fcmp ogt double %i.kg, %.2.1.i137.peel201
  %.2.2.i138.peel202 = select i1 %i.kh, double %i.kg, double %.2.1.i137.peel201 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hu, i64 112
  %i.kj = load double, ptr %i.ax, align 16, !tbaa !8 ; 2 uses
  %i.kk = fsub double 7.500000e-01, %i.kj
  %i.kl = fadd double %i.kk, 1.000000e-04
  %i.km = call double @llvm.floor.f64(double %i.kl)
  %i.kn = fadd double %i.kj, 1.500000e+01         ; 2 uses
  %i.ko = fcmp ogt double %i.kn, %.2.2.i138.peel202
  %.2.i136.peel208 = select i1 %i.ko, double %i.kn, double %.2.2.i138.peel202 ; 2 uses
  %i.kp = load double, ptr %i.ay, align 8, !tbaa !8 ; 2 uses
  %i.kq = fsub double 7.500000e-01, %i.kp
  %i.kr = fadd double %i.kq, 1.000000e-04
  %i.ks = call double @llvm.floor.f64(double %i.kr)
  %25 = insertelement <2 x double> poison, double %i.km, i64 0
  %26 = insertelement <2 x double> %25, double %i.ks, i64 1
  %27 = fptosi <2 x double> %26 to <2 x i32>
  store <2 x i32> %27, ptr %i.ki, align 4, !tbaa !4
  %i.kt = fadd double %i.kp, 1.500000e+01         ; 2 uses
  %i.ku = fcmp ogt double %i.kt, %.2.i136.peel208
  %.2.1.i137.peel209 = select i1 %i.ku, double %i.kt, double %.2.i136.peel208 ; 2 uses
  %i.kv = load double, ptr %i.az, align 16, !tbaa !8 ; 2 uses
  %i.kw = fsub double 7.500000e-01, %i.kv
  %i.kx = fadd double %i.kw, 1.000000e-04
  %i.ky = call double @llvm.floor.f64(double %i.kx)
  %28 = fptosi double %i.ky to i32
  %29 = getelementptr inbounds nuw i8, ptr %i.hu, i64 120
  store i32 %28, ptr %29, align 4, !tbaa !4
  %i.kz = fadd double %i.kv, 1.500000e+01         ; 2 uses
  %i.la = fcmp ogt double %i.kz, %.2.1.i137.peel209
  %.2.2.i138.peel210 = select i1 %i.la, double %i.kz, double %.2.1.i137.peel209 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hu, i64 124
  %i.lc = load double, ptr %i.ba, align 8, !tbaa !8 ; 2 uses
  %i.ld = fsub double 7.500000e-01, %i.lc
  %i.le = fadd double %i.ld, 1.000000e-04
  %i.lf = call double @llvm.floor.f64(double %i.le)
  %i.lg = fadd double %i.lc, 1.500000e+01         ; 2 uses
  %i.lh = fcmp ogt double %i.lg, %.2.2.i138.peel210
  %.2.i136.peel216 = select i1 %i.lh, double %i.lg, double %.2.2.i138.peel210 ; 2 uses
  %i.li = load double, ptr %i.bb, align 16, !tbaa !8 ; 2 uses
  %i.lj = fsub double 7.500000e-01, %i.li
  %i.lk = fadd double %i.lj, 1.000000e-04
  %i.ll = call double @llvm.floor.f64(double %i.lk)
  %30 = insertelement <2 x double> poison, double %i.lf, i64 0
  %31 = insertelement <2 x double> %30, double %i.ll, i64 1
  %32 = fptosi <2 x double> %31 to <2 x i32>
  store <2 x i32> %32, ptr %i.lb, align 4, !tbaa !4
  %i.lm = fadd double %i.li, 1.500000e+01         ; 2 uses
  %i.ln = fcmp ogt double %i.lm, %.2.i136.peel216
  %.2.1.i137.peel217 = select i1 %i.ln, double %i.lm, double %.2.i136.peel216 ; 2 uses
  %i.lo = load double, ptr %i.bc, align 8, !tbaa !8 ; 2 uses
  %i.lp = fsub double 7.500000e-01, %i.lo
  %i.lq = fadd double %i.lp, 1.000000e-04
  %i.lr = call double @llvm.floor.f64(double %i.lq)
  %33 = fptosi double %i.lr to i32
  %34 = getelementptr inbounds nuw i8, ptr %i.hu, i64 132
  store i32 %33, ptr %34, align 4, !tbaa !4
  %i.ls = fadd double %i.lo, 1.500000e+01         ; 2 uses
  %i.lt = fcmp ogt double %i.ls, %.2.1.i137.peel217
  %.2.2.i138.peel218 = select i1 %i.lt, double %i.ls, double %.2.1.i137.peel217 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hu, i64 136
  %i.lv = load double, ptr %i.bd, align 16, !tbaa !8 ; 2 uses
  %i.lw = fsub double 7.500000e-01, %i.lv
  %i.lx = fadd double %i.lw, 1.000000e-04
  %i.ly = call double @llvm.floor.f64(double %i.lx)
  %i.lz = fadd double %i.lv, 1.500000e+01         ; 2 uses
  %i.ma = fcmp ogt double %i.lz, %.2.2.i138.peel218
  %.2.i136.peel224 = select i1 %i.ma, double %i.lz, double %.2.2.i138.peel218 ; 2 uses
  %i.mb = load double, ptr %i.be, align 8, !tbaa !8 ; 2 uses
  %i.mc = fsub double 7.500000e-01, %i.mb
  %i.md = fadd double %i.mc, 1.000000e-04
  %i.me = call double @llvm.floor.f64(double %i.md)
  %35 = insertelement <2 x double> poison, double %i.ly, i64 0
  %36 = insertelement <2 x double> %35, double %i.me, i64 1
  %37 = fptosi <2 x double> %36 to <2 x i32>
  store <2 x i32> %37, ptr %i.lu, align 4, !tbaa !4
  %i.mf = fadd double %i.mb, 1.500000e+01         ; 2 uses
  %i.mg = fcmp ogt double %i.mf, %.2.i136.peel224
  %.2.1.i137.peel225 = select i1 %i.mg, double %i.mf, double %.2.i136.peel224 ; 2 uses
  %i.mh = load double, ptr %i.bf, align 16, !tbaa !8 ; 2 uses
  %i.mi = fsub double 7.500000e-01, %i.mh
  %i.mj = fadd double %i.mi, 1.000000e-04
  %i.mk = call double @llvm.floor.f64(double %i.mj)
  %38 = fptosi double %i.mk to i32
  %39 = getelementptr inbounds nuw i8, ptr %i.hu, i64 144
  store i32 %38, ptr %39, align 4, !tbaa !4
  %i.ml = fadd double %i.mh, 1.500000e+01         ; 2 uses
  %i.mm = fcmp ogt double %i.ml, %.2.1.i137.peel225
  %.2.2.i138.peel226 = select i1 %i.mm, double %i.ml, double %.2.1.i137.peel225 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.hu, i64 148
  %i.mo = load double, ptr %i.bg, align 8, !tbaa !8 ; 2 uses
  %i.mp = fsub double 7.500000e-01, %i.mo
  %i.mq = fadd double %i.mp, 1.000000e-04
  %i.mr = call double @llvm.floor.f64(double %i.mq)
  %i.ms = fadd double %i.mo, 1.500000e+01         ; 2 uses
  %i.mt = fcmp ogt double %i.ms, %.2.2.i138.peel226
  %.2.i136.peel232 = select i1 %i.mt, double %i.ms, double %.2.2.i138.peel226 ; 2 uses
  %i.mu = load double, ptr %i.bh, align 8, !tbaa !8 ; 2 uses
  %i.mv = fsub double 7.500000e-01, %i.mu
  %i.mw = fadd double %i.mv, 1.000000e-04
  %i.mx = call double @llvm.floor.f64(double %i.mw)
  %40 = insertelement <2 x double> poison, double %i.mr, i64 0
  %41 = insertelement <2 x double> %40, double %i.mx, i64 1
  %42 = fptosi <2 x double> %41 to <2 x i32>
  store <2 x i32> %42, ptr %i.mn, align 4, !tbaa !4
  %i.my = fadd double %i.mu, 1.500000e+01         ; 2 uses
  %i.mz = fcmp ogt double %i.my, %.2.i136.peel232
  %.2.1.i137.peel233 = select i1 %i.mz, double %i.my, double %.2.i136.peel232 ; 2 uses
  %i.na = load double, ptr %i.bi, align 8, !tbaa !8 ; 2 uses
  %i.nb = fsub double 7.500000e-01, %i.na
  %i.nc = fadd double %i.nb, 1.000000e-04
  %i.nd = call double @llvm.floor.f64(double %i.nc)
  %43 = fptosi double %i.nd to i32
  %44 = getelementptr inbounds nuw i8, ptr %i.hu, i64 156
  store i32 %43, ptr %44, align 4, !tbaa !4
  %i.ne = fadd double %i.na, 1.500000e+01         ; 2 uses
  %i.nf = fcmp ogt double %i.ne, %.2.1.i137.peel233
  %.2.2.i138.peel234 = select i1 %i.nf, double %i.ne, double %.2.1.i137.peel233
  br label %.preheader.i131

.preheader.i131:                                  ; preds = %.preheader.i131, %.preheader.i131.peel.begin
  %indvars.iv.i132 = phi i64 [ 6, %.preheader.i131.peel.begin ], [ %indvars.iv.next.i139, %.preheader.i131 ] ; 3 uses
  %.02428.i133 = phi double [ %.2.2.i138.peel234, %.preheader.i131.peel.begin ], [ %.2.2.i138, %.preheader.i131 ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i132 ; 3 uses
  %i.nh = getelementptr inbounds nuw [12 x i8], ptr %i.hv, i64 %indvars.iv.i132 ; 2 uses
  %i.ni = load double, ptr %i.ng, align 8, !tbaa !8 ; 2 uses
  %i.nj = fsub double 7.500000e-01, %i.ni
  %i.nk = fadd double %i.nj, 1.000000e-04
  %i.nl = call double @llvm.floor.f64(double %i.nk)
  %i.nm = fadd double %i.ni, 7.000000e+00         ; 2 uses
  %i.nn = fcmp ogt double %i.nm, %.02428.i133
  %.2.i136 = select i1 %i.nn, double %i.nm, double %.02428.i133 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.np = load double, ptr %i.no, align 8, !tbaa !8 ; 2 uses
  %i.nq = fsub double 7.500000e-01, %i.np
  %i.nr = fadd double %i.nq, 1.000000e-04
  %i.ns = call double @llvm.floor.f64(double %i.nr)
  %45 = insertelement <2 x double> poison, double %i.nl, i64 0
  %46 = insertelement <2 x double> %45, double %i.ns, i64 1
  %47 = fptosi <2 x double> %46 to <2 x i32>
  store <2 x i32> %47, ptr %i.nh, align 4, !tbaa !4
  %i.nt = fadd double %i.np, 7.000000e+00         ; 2 uses
  %i.nu = fcmp ogt double %i.nt, %.2.i136
  %.2.1.i137 = select i1 %i.nu, double %i.nt, double %.2.i136 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !8 ; 2 uses
  %i.nx = fsub double 7.500000e-01, %i.nw
  %i.ny = fadd double %i.nx, 1.000000e-04
  %i.nz = call double @llvm.floor.f64(double %i.ny)
  %48 = fptosi double %i.nz to i32
  %49 = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i32 %48, ptr %49, align 4, !tbaa !4
  %i.oa = fadd double %i.nw, 7.000000e+00         ; 2 uses
  %i.ob = fcmp ogt double %i.oa, %.2.1.i137
  %.2.2.i138 = select i1 %i.ob, double %i.oa, double %.2.1.i137 ; 2 uses
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i132, 1 ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %indvars.iv.next.i139, 12
  br i1 %exitcond.not.i140, label %compute_scalefacs_short.exit141.loopexit, label %.preheader.i131, !llvm.loop !35

compute_scalefacs_short.exit141.loopexit:         ; preds = %.preheader.i131
  %i.oc = fcmp ogt double %.2.2.i138, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %i.oc, label %bb.h, label %bb.k

bb.h:                                             ; preds = %compute_scalefacs_short.exit141.loopexit
  call void @exit(i32 noundef 32) #10
  unreachable

bb.i:                                             ; preds = %.preheader144.preheader
  store i32 1, ptr %i.gd, align 4, !tbaa !14
  %i.od = call double @compute_scalefacs_long(ptr noundef nonnull %9, ptr noundef nonnull %i.bs, ptr noundef %i.ge)
  %i.oe = fcmp ogt double %i.od, 0.000000e+00
  br i1 %i.oe, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @exit(i32 noundef 32) #10
  unreachable

bb.k:                                             ; preds = %.preheader144.preheader, %bb.i, %compute_scalefacs_short.exit, %compute_scalefacs_short.exit141.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.of = load i32, ptr %i.o, align 4, !tbaa !29
  %i.og = sext i32 %i.of to i64
  %i.oh = icmp slt i64 %indvars.iv.next189, %i.og
  br i1 %i.oh, label %bb.e, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.k, %bb.d
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %i.oi = load i32, ptr %i.l, align 8, !tbaa !28
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp slt i64 %indvars.iv.next192, %i.oj
  br i1 %i.ok, label %bb.b, label %._crit_edge161, !llvm.loop !38

._crit_edge161:                                   ; preds = %._crit_edge, %cdce.end
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  ret void
}

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ms_convert(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { nofree norecurse nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!15, !5, i64 68}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 44, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !16, i64 96, !6, i64 104}
!16 = !{!"p1 int", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = distinct !{!18, !11}
!19 = !{!15, !5, i64 64}
!20 = distinct !{!20, !11}
!21 = !{!22, !5, i64 92}
!22 = !{!"", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !24, i64 128, !24, i64 136, !5, i64 144, !5, i64 148, !25, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !23, i64 168, !23, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !25, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !25, i64 232, !25, i64 236, !25, i64 240, !25, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!23 = !{!"long", !6, i64 0}
!24 = !{!"p1 omnipotent char", !17, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{!"branch_weights", i32 1, i32 1048575}
!27 = !{!25, !25, i64 0}
!28 = !{!22, !5, i64 200}
!29 = !{!22, !5, i64 204}
!30 = !{!15, !5, i64 24}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = !{!15, !5, i64 12}
!35 = distinct !{!35, !11, !36}
!36 = !{!"llvm.loop.peeled.count", i32 6}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
end_hunk_1
