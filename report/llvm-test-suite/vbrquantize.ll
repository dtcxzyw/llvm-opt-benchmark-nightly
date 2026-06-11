inline.NumInlined: 4
begin_hunk_0_@find_scalefac:bb.a
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fptosi double %i.k to i32                ; 3 uses
  %i.m = icmp slt i32 %i.l, 8207
  br i1 %i.m, label %bb.b, label %calc_sfb_ave_noise.exit.thread.us

bb.b:                                             ; preds = %.lr.ph.i.us
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.i.us
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
  %i.ac = tail call double @llvm.fmuladd.f64(double %.029.i.us, double %.029.i.us, double %.03135.i.us) ; 2 uses
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
  %3 = load double, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %4 = fneg double %3
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %i.f, double 7.500000e-01)
  %6 = fadd double %5, 1.000000e-04
  %7 = tail call double @llvm.floor.f64(double %6)
  %i.j = fadd double %.0, %3                      ; 2 uses
  %i.k = fcmp ogt double %i.j, %.02428
  %.2 = select i1 %i.k, double %i.j, double %.02428 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %9 = load double, ptr %8, align 8, !tbaa !8     ; 2 uses
  %10 = fneg double %9
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %i.f, double 7.500000e-01)
  %12 = fadd double %11, 1.000000e-04
  %13 = tail call double @llvm.floor.f64(double %12)
  %14 = insertelement <2 x double> poison, double %7, i64 0
  %15 = insertelement <2 x double> %14, double %13, i64 1
  %16 = fptosi <2 x double> %15 to <2 x i32>
  store <2 x i32> %16, ptr %i.h, align 4, !tbaa !4
  %i.l = fadd double %.0, %9                      ; 2 uses
  %i.m = fcmp ogt double %i.l, %.2
  %.2.1 = select i1 %i.m, double %i.l, double %.2 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.p = fneg double %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.f, double 7.500000e-01)
  %i.r = fadd double %i.q, 1.000000e-04
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fptosi double %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %i.v = fadd double %.0, %i.o                    ; 2 uses
  %i.w = fcmp ogt double %i.v, %.2.1
  %.2.2 = select i1 %i.w, double %i.v, double %.2.1 ; 2 uses
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
define dso_local void @VBR_iteration_loop_new(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [12 x [3 x double]], align 16     ; 22 uses
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
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 288 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 304 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 384 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 400 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 416 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 432 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 448 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
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
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %10, i64 %indvars.iv172 ; 3 uses
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
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dd
  %i.dg = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.dh = fpext float %i.dg to double
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dj = load double, ptr %i.di, align 8, !tbaa !8
  %i.dk = fmul double %i.dj, %i.dh
  %i.dl = call double @find_scalefac(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, i32 noundef 3, i32 poison, double noundef %i.dk, i32 noundef %i.da) ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store double %i.dl, ptr %i.dm, align 8, !tbaa !8
  %i.dn = fcmp ogt double %i.dl, %.2
  %.2.1 = select i1 %i.dn, double %i.dl, double %.2 ; 2 uses
  %i.do = load i32, ptr %i.ch, align 4, !tbaa !4  ; 2 uses
  %i.dp = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.dq = sub nsw i32 %i.dp, %i.do
  %i.dr = mul nsw i32 %i.do, 3
  %i.ds = add nsw i32 %i.dr, 2
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dt
  %i.dw = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.dx = fpext float %i.dw to double
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !8
  %i.ea = fmul double %i.dz, %i.dx
  %i.eb = call double @find_scalefac(ptr noundef nonnull %i.du, ptr noundef nonnull %i.dv, i32 noundef 3, i32 poison, double noundef %i.ea, i32 noundef %i.dq) ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store double %i.eb, ptr %i.ec, align 8, !tbaa !8
  %i.ed = fcmp ogt double %i.eb, %.2.1
  %.2.2 = select i1 %i.ed, double %i.eb, double %.2.1 ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next173, 12
  br i1 %exitcond175.not, label %.loopexit, label %.preheader142, !llvm.loop !32

.preheader146:                                    ; preds = %bb.g, %.preheader146
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.preheader146 ], [ 0, %bb.g ] ; 4 uses
  %.3150 = phi double [ %.4, %.preheader146 ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv164
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next165
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = sub nsw i32 %i.eh, %i.ef
  %i.ej = sext i32 %i.ef to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ej
  %i.el = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ej
  %i.em = load float, ptr @masking_lower, align 4, !tbaa !27
  %i.en = fpext float %i.em to double
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv164
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !8
  %i.eq = fmul double %i.ep, %i.en
  %i.er = call double @find_scalefac(ptr noundef nonnull %i.ek, ptr noundef nonnull %i.el, i32 noundef 1, i32 poison, double noundef %i.eq, i32 noundef %i.ei) ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv164
  store double %i.er, ptr %i.es, align 8, !tbaa !8
  %i.et = fcmp ogt double %i.er, %.3150
  %.4 = select i1 %i.et, double %i.er, double %.3150 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next165, 21
  br i1 %exitcond167.not, label %.loopexit, label %.preheader146, !llvm.loop !33

.loopexit:                                        ; preds = %.preheader146, %.preheader142
  %.5 = phi double [ %.2.2, %.preheader142 ], [ %.4, %.preheader146 ] ; 4 uses
  %i.eu = call double @llvm.fmuladd.f64(double %.5, double 4.000000e+00, double 2.100000e+02)
  %i.ev = fadd double %i.eu, 5.000000e-01
  %i.ew = call double @llvm.floor.f64(double %i.ev)
  %i.ex = fptoui double %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !34
  br i1 %i.cc, label %.preheader.preheader, label %.preheader144.preheader

.preheader144.preheader:                          ; preds = %.loopexit
  %i.ez = load <2 x double>, ptr %9, align 16, !tbaa !8
  %i.fa = insertelement <2 x double> poison, double %.5, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.fc = fsub <2 x double> %i.ez, %i.fb
  store <2 x double> %i.fc, ptr %9, align 16, !tbaa !8
  %i.fd = load <2 x double>, ptr %i.q, align 16, !tbaa !8
  %i.fe = fsub <2 x double> %i.fd, %i.fb
  store <2 x double> %i.fe, ptr %i.q, align 16, !tbaa !8
  %i.ff = load <2 x double>, ptr %i.r, align 16, !tbaa !8
  %i.fg = fsub <2 x double> %i.ff, %i.fb
  store <2 x double> %i.fg, ptr %i.r, align 16, !tbaa !8
  %i.fh = load <2 x double>, ptr %i.s, align 16, !tbaa !8
  %i.fi = fsub <2 x double> %i.fh, %i.fb
  store <2 x double> %i.fi, ptr %i.s, align 16, !tbaa !8
  %i.fj = load <2 x double>, ptr %i.t, align 16, !tbaa !8
  %i.fk = fsub <2 x double> %i.fj, %i.fb
  store <2 x double> %i.fk, ptr %i.t, align 16, !tbaa !8
  %i.fl = load <2 x double>, ptr %i.u, align 16, !tbaa !8
  %i.fm = fsub <2 x double> %i.fl, %i.fb
  store <2 x double> %i.fm, ptr %i.u, align 16, !tbaa !8
  %i.fn = load <2 x double>, ptr %i.v, align 16, !tbaa !8
  %i.fo = fsub <2 x double> %i.fn, %i.fb
  store <2 x double> %i.fo, ptr %i.v, align 16, !tbaa !8
  %i.fp = load <2 x double>, ptr %i.w, align 16, !tbaa !8
  %i.fq = fsub <2 x double> %i.fp, %i.fb
  store <2 x double> %i.fq, ptr %i.w, align 16, !tbaa !8
  %i.fr = load <2 x double>, ptr %i.x, align 16, !tbaa !8
  %i.fs = fsub <2 x double> %i.fr, %i.fb
  store <2 x double> %i.fs, ptr %i.x, align 16, !tbaa !8
  %i.ft = load <2 x double>, ptr %i.y, align 16, !tbaa !8
  %i.fu = fsub <2 x double> %i.ft, %i.fb
  store <2 x double> %i.fu, ptr %i.y, align 16, !tbaa !8
  %i.fv = load double, ptr %i.z, align 16, !tbaa !8
  %i.fw = fsub double %i.fv, %.5
  store double %i.fw, ptr %i.z, align 16, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bm, i64 68 ; 2 uses
  store i32 0, ptr %i.fx, align 4, !tbaa !14
  %i.fy = getelementptr inbounds nuw [244 x i8], ptr %i.bl, i64 %indvars.iv188 ; 2 uses
  %i.fz = call double @compute_scalefacs_long(ptr noundef nonnull %9, ptr noundef nonnull %i.bm, ptr noundef %i.fy)
  %i.ga = fcmp ogt double %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.i, label %bb.k

.preheader.preheader:                             ; preds = %.loopexit
  %i.gb = load <2 x double>, ptr %10, align 16, !tbaa !8
  %i.gc = insertelement <2 x double> poison, double %.5, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %16 = fsub <2 x double> %i.gb, %i.gd
  store <2 x double> %16, ptr %10, align 16, !tbaa !8
  %17 = load <2 x double>, ptr %i.aa, align 16, !tbaa !8
  %i.ge = fsub <2 x double> %17, %i.gd
  store <2 x double> %i.ge, ptr %i.aa, align 16, !tbaa !8
  %i.gf = load <2 x double>, ptr %i.ab, align 16, !tbaa !8
  %i.gg = fsub <2 x double> %i.gf, %i.gd
  store <2 x double> %i.gg, ptr %i.ab, align 16, !tbaa !8
  %i.gh = load <2 x double>, ptr %i.ac, align 16, !tbaa !8
  %i.gi = fsub <2 x double> %i.gh, %i.gd
  store <2 x double> %i.gi, ptr %i.ac, align 16, !tbaa !8
  %i.gj = load <2 x double>, ptr %i.ad, align 16, !tbaa !8
  %i.gk = fsub <2 x double> %i.gj, %i.gd
  store <2 x double> %i.gk, ptr %i.ad, align 16, !tbaa !8
  %i.gl = load <2 x double>, ptr %i.ae, align 16, !tbaa !8
  %i.gm = fsub <2 x double> %i.gl, %i.gd
  store <2 x double> %i.gm, ptr %i.ae, align 16, !tbaa !8
  %i.gn = load <2 x double>, ptr %i.af, align 16, !tbaa !8
  %i.go = fsub <2 x double> %i.gn, %i.gd
  store <2 x double> %i.go, ptr %i.af, align 16, !tbaa !8
  %i.gp = load <2 x double>, ptr %i.ag, align 16, !tbaa !8
  %i.gq = fsub <2 x double> %i.gp, %i.gd
  store <2 x double> %i.gq, ptr %i.ag, align 16, !tbaa !8
  %i.gr = load <2 x double>, ptr %i.ah, align 16, !tbaa !8
  %i.gs = fsub <2 x double> %i.gr, %i.gd
  store <2 x double> %i.gs, ptr %i.ah, align 16, !tbaa !8
  %i.gt = load <2 x double>, ptr %i.ai, align 16, !tbaa !8
  %i.gu = fsub <2 x double> %i.gt, %i.gd
  store <2 x double> %i.gu, ptr %i.ai, align 16, !tbaa !8
  %i.gv = load <2 x double>, ptr %i.aj, align 16, !tbaa !8
  %i.gw = fsub <2 x double> %i.gv, %i.gd
  store <2 x double> %i.gw, ptr %i.aj, align 16, !tbaa !8
  %i.gx = load <2 x double>, ptr %i.ak, align 16, !tbaa !8
  %i.gy = fsub <2 x double> %i.gx, %i.gd
  store <2 x double> %i.gy, ptr %i.ak, align 16, !tbaa !8
  %i.gz = load <2 x double>, ptr %i.al, align 16, !tbaa !8
  %i.ha = fsub <2 x double> %i.gz, %i.gd
  store <2 x double> %i.ha, ptr %i.al, align 16, !tbaa !8
  %i.hb = load <2 x double>, ptr %i.am, align 16, !tbaa !8
  %i.hc = fsub <2 x double> %i.hb, %i.gd
  store <2 x double> %i.hc, ptr %i.am, align 16, !tbaa !8
  %i.hd = load <2 x double>, ptr %i.an, align 16, !tbaa !8
  %i.he = fsub <2 x double> %i.hd, %i.gd
  store <2 x double> %i.he, ptr %i.an, align 16, !tbaa !8
  %i.hf = load <2 x double>, ptr %i.ao, align 16, !tbaa !8
  %i.hg = fsub <2 x double> %i.hf, %i.gd
  store <2 x double> %i.hg, ptr %i.ao, align 16, !tbaa !8
  %i.hh = load <2 x double>, ptr %i.ap, align 16, !tbaa !8
  %i.hi = fsub <2 x double> %i.hh, %i.gd
  store <2 x double> %i.hi, ptr %i.ap, align 16, !tbaa !8
  %i.hj = load <2 x double>, ptr %i.aq, align 16, !tbaa !8
  %i.hk = fsub <2 x double> %i.hj, %i.gd
  store <2 x double> %i.hk, ptr %i.aq, align 16, !tbaa !8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bm, i64 68 ; 2 uses
  store i32 0, ptr %i.hl, align 4, !tbaa !14
  %i.hm = getelementptr inbounds nuw [244 x i8], ptr %i.bl, i64 %indvars.iv188 ; 12 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(288) %10, i64 288, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.i, %.preheader.i ] ; 4 uses
  %.02428.i = phi double [ 0.000000e+00, %.preheader.preheader ], [ %.2.2.i, %.preheader.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %i.hn, i64 %indvars.iv.i ; 2 uses
  %i.hq = icmp samesign ult i64 %indvars.iv.i, 6
  %.0.i = select i1 %i.hq, double 7.500000e+00, double 3.500000e+00 ; 3 uses
  %18 = load double, ptr %i.ho, align 8, !tbaa !8 ; 2 uses
  %19 = fneg double %18
  %20 = call double @llvm.fmuladd.f64(double %19, double 2.000000e+00, double 7.500000e-01)
  %21 = fadd double %20, 1.000000e-04
  %22 = call double @llvm.floor.f64(double %21)
  %i.hr = fadd double %.0.i, %18                  ; 2 uses
  %i.hs = fcmp ogt double %i.hr, %.02428.i
  %.2.i = select i1 %i.hs, double %i.hr, double %.02428.i ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %24 = load double, ptr %23, align 8, !tbaa !8   ; 2 uses
  %25 = fneg double %24
  %26 = call double @llvm.fmuladd.f64(double %25, double 2.000000e+00, double 7.500000e-01)
  %27 = fadd double %26, 1.000000e-04
  %28 = call double @llvm.floor.f64(double %27)
  %29 = insertelement <2 x double> poison, double %22, i64 0
  %30 = insertelement <2 x double> %29, double %28, i64 1
  %31 = fptosi <2 x double> %30 to <2 x i32>
  store <2 x i32> %31, ptr %i.hp, align 4, !tbaa !4
  %i.ht = fadd double %.0.i, %24                  ; 2 uses
  %i.hu = fcmp ogt double %i.ht, %.2.i
  %.2.1.i = select i1 %i.hu, double %i.ht, double %.2.i ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !8 ; 2 uses
  %i.hx = fneg double %i.hw
  %i.hy = call double @llvm.fmuladd.f64(double %i.hx, double 2.000000e+00, double 7.500000e-01)
  %i.hz = fadd double %i.hy, 1.000000e-04
  %i.ia = call double @llvm.floor.f64(double %i.hz)
  %i.ib = fptosi double %i.ia to i32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !4
  %i.id = fadd double %.0.i, %i.hw                ; 2 uses
  %i.ie = fcmp ogt double %i.id, %.2.1.i
  %.2.2.i = select i1 %i.ie, double %i.id, double %.2.1.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 12
  br i1 %exitcond.not.i, label %compute_scalefacs_short.exit, label %.preheader.i, !llvm.loop !18

compute_scalefacs_short.exit:                     ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.if = fcmp ogt double %.2.2.i, 0.000000e+00
  br i1 %i.if, label %.preheader.i131.peel.begin, label %bb.k

.preheader.i131.peel.begin:                       ; preds = %compute_scalefacs_short.exit
  store i32 1, ptr %i.hl, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(288) %10, i64 288, i1 false)
  %32 = load double, ptr %i.a, align 16, !tbaa !8 ; 2 uses
  %33 = fsub double 7.500000e-01, %32
  %34 = fadd double %33, 1.000000e-04
  %35 = call double @llvm.floor.f64(double %34)
  %i.ig = fadd double %32, 1.500000e+01           ; 2 uses
  %i.ih = fcmp ogt double %i.ig, 0.000000e+00
  %.2.i136.peel = select i1 %i.ih, double %i.ig, double 0.000000e+00 ; 2 uses
  %36 = load double, ptr %i.ar, align 8, !tbaa !8 ; 2 uses
  %37 = fsub double 7.500000e-01, %36
  %38 = fadd double %37, 1.000000e-04
  %39 = call double @llvm.floor.f64(double %38)
  %40 = insertelement <2 x double> poison, double %35, i64 0
  %41 = insertelement <2 x double> %40, double %39, i64 1
  %42 = fptosi <2 x double> %41 to <2 x i32>
  store <2 x i32> %42, ptr %i.hn, align 4, !tbaa !4
  %i.ii = fadd double %36, 1.500000e+01           ; 2 uses
  %i.ij = fcmp ogt double %i.ii, %.2.i136.peel
  %.2.1.i137.peel = select i1 %i.ij, double %i.ii, double %.2.i136.peel ; 2 uses
  %i.ik = load double, ptr %i.as, align 16, !tbaa !8 ; 2 uses
  %i.il = fsub double 7.500000e-01, %i.ik
  %i.im = fadd double %i.il, 1.000000e-04
  %i.in = call double @llvm.floor.f64(double %i.im)
  %i.io = fptosi double %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !4
  %i.iq = fadd double %i.ik, 1.500000e+01         ; 2 uses
  %i.ir = fcmp ogt double %i.iq, %.2.1.i137.peel
  %.2.2.i138.peel = select i1 %i.ir, double %i.iq, double %.2.1.i137.peel ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hm, i64 100
  %43 = load double, ptr %i.at, align 8, !tbaa !8 ; 2 uses
  %44 = fsub double 7.500000e-01, %43
  %45 = fadd double %44, 1.000000e-04
  %46 = call double @llvm.floor.f64(double %45)
  %i.it = fadd double %43, 1.500000e+01           ; 2 uses
  %i.iu = fcmp ogt double %i.it, %.2.2.i138.peel
  %.2.i136.peel200 = select i1 %i.iu, double %i.it, double %.2.2.i138.peel ; 2 uses
  %47 = load double, ptr %11, align 16, !tbaa !8  ; 2 uses
  %48 = fsub double 7.500000e-01, %47
  %49 = fadd double %48, 1.000000e-04
  %50 = call double @llvm.floor.f64(double %49)
  %51 = insertelement <2 x double> poison, double %46, i64 0
  %52 = insertelement <2 x double> %51, double %50, i64 1
  %53 = fptosi <2 x double> %52 to <2 x i32>
  store <2 x i32> %53, ptr %i.is, align 4, !tbaa !4
  %i.iv = fadd double %47, 1.500000e+01           ; 2 uses
  %i.iw = fcmp ogt double %i.iv, %.2.i136.peel200
  %.2.1.i137.peel201 = select i1 %i.iw, double %i.iv, double %.2.i136.peel200 ; 2 uses
  %i.ix = load double, ptr %i.au, align 8, !tbaa !8 ; 2 uses
  %i.iy = fsub double 7.500000e-01, %i.ix
  %i.iz = fadd double %i.iy, 1.000000e-04
  %i.ja = call double @llvm.floor.f64(double %i.iz)
  %i.jb = fptosi double %i.ja to i32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hm, i64 108
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !4
  %i.jd = fadd double %i.ix, 1.500000e+01         ; 2 uses
  %i.je = fcmp ogt double %i.jd, %.2.1.i137.peel201
  %.2.2.i138.peel202 = select i1 %i.je, double %i.jd, double %.2.1.i137.peel201 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hm, i64 112
  %54 = load double, ptr %i.av, align 16, !tbaa !8 ; 2 uses
  %55 = fsub double 7.500000e-01, %54
  %56 = fadd double %55, 1.000000e-04
  %57 = call double @llvm.floor.f64(double %56)
  %i.jg = fadd double %54, 1.500000e+01           ; 2 uses
  %i.jh = fcmp ogt double %i.jg, %.2.2.i138.peel202
  %.2.i136.peel208 = select i1 %i.jh, double %i.jg, double %.2.2.i138.peel202 ; 2 uses
  %58 = load double, ptr %12, align 8, !tbaa !8   ; 2 uses
  %59 = fsub double 7.500000e-01, %58
  %60 = fadd double %59, 1.000000e-04
  %61 = call double @llvm.floor.f64(double %60)
  %62 = insertelement <2 x double> poison, double %57, i64 0
  %63 = insertelement <2 x double> %62, double %61, i64 1
  %64 = fptosi <2 x double> %63 to <2 x i32>
  store <2 x i32> %64, ptr %i.jf, align 4, !tbaa !4
  %i.ji = fadd double %58, 1.500000e+01           ; 2 uses
  %i.jj = fcmp ogt double %i.ji, %.2.i136.peel208
  %.2.1.i137.peel209 = select i1 %i.jj, double %i.ji, double %.2.i136.peel208 ; 2 uses
  %i.jk = load double, ptr %i.aw, align 16, !tbaa !8 ; 2 uses
  %i.jl = fsub double 7.500000e-01, %i.jk
  %i.jm = fadd double %i.jl, 1.000000e-04
  %i.jn = call double @llvm.floor.f64(double %i.jm)
  %i.jo = fptosi double %i.jn to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !4
  %i.jq = fadd double %i.jk, 1.500000e+01         ; 2 uses
  %i.jr = fcmp ogt double %i.jq, %.2.1.i137.peel209
  %.2.2.i138.peel210 = select i1 %i.jr, double %i.jq, double %.2.1.i137.peel209 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.hm, i64 124
  %65 = load double, ptr %i.ax, align 8, !tbaa !8 ; 2 uses
  %66 = fsub double 7.500000e-01, %65
  %67 = fadd double %66, 1.000000e-04
  %68 = call double @llvm.floor.f64(double %67)
  %i.jt = fadd double %65, 1.500000e+01           ; 2 uses
  %i.ju = fcmp ogt double %i.jt, %.2.2.i138.peel210
  %.2.i136.peel216 = select i1 %i.ju, double %i.jt, double %.2.2.i138.peel210 ; 2 uses
  %69 = load double, ptr %13, align 16, !tbaa !8  ; 2 uses
  %70 = fsub double 7.500000e-01, %69
  %71 = fadd double %70, 1.000000e-04
  %72 = call double @llvm.floor.f64(double %71)
  %73 = insertelement <2 x double> poison, double %68, i64 0
  %74 = insertelement <2 x double> %73, double %72, i64 1
  %75 = fptosi <2 x double> %74 to <2 x i32>
  store <2 x i32> %75, ptr %i.js, align 4, !tbaa !4
  %i.jv = fadd double %69, 1.500000e+01           ; 2 uses
  %i.jw = fcmp ogt double %i.jv, %.2.i136.peel216
  %.2.1.i137.peel217 = select i1 %i.jw, double %i.jv, double %.2.i136.peel216 ; 2 uses
  %i.jx = load double, ptr %i.ay, align 8, !tbaa !8 ; 2 uses
  %i.jy = fsub double 7.500000e-01, %i.jx
  %i.jz = fadd double %i.jy, 1.000000e-04
  %i.ka = call double @llvm.floor.f64(double %i.jz)
  %i.kb = fptosi double %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hm, i64 132
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !4
  %i.kd = fadd double %i.jx, 1.500000e+01         ; 2 uses
  %i.ke = fcmp ogt double %i.kd, %.2.1.i137.peel217
  %.2.2.i138.peel218 = select i1 %i.ke, double %i.kd, double %.2.1.i137.peel217 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hm, i64 136
  %76 = load double, ptr %i.az, align 16, !tbaa !8 ; 2 uses
  %77 = fsub double 7.500000e-01, %76
  %78 = fadd double %77, 1.000000e-04
  %79 = call double @llvm.floor.f64(double %78)
  %i.kg = fadd double %76, 1.500000e+01           ; 2 uses
  %i.kh = fcmp ogt double %i.kg, %.2.2.i138.peel218
  %.2.i136.peel224 = select i1 %i.kh, double %i.kg, double %.2.2.i138.peel218 ; 2 uses
  %80 = load double, ptr %14, align 8, !tbaa !8   ; 2 uses
  %81 = fsub double 7.500000e-01, %80
  %82 = fadd double %81, 1.000000e-04
  %83 = call double @llvm.floor.f64(double %82)
  %84 = insertelement <2 x double> poison, double %79, i64 0
  %85 = insertelement <2 x double> %84, double %83, i64 1
  %86 = fptosi <2 x double> %85 to <2 x i32>
  store <2 x i32> %86, ptr %i.kf, align 4, !tbaa !4
  %i.ki = fadd double %80, 1.500000e+01           ; 2 uses
  %i.kj = fcmp ogt double %i.ki, %.2.i136.peel224
  %.2.1.i137.peel225 = select i1 %i.kj, double %i.ki, double %.2.i136.peel224 ; 2 uses
  %i.kk = load double, ptr %i.ba, align 16, !tbaa !8 ; 2 uses
  %i.kl = fsub double 7.500000e-01, %i.kk
  %i.km = fadd double %i.kl, 1.000000e-04
  %i.kn = call double @llvm.floor.f64(double %i.km)
  %i.ko = fptosi double %i.kn to i32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hm, i64 144
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !4
  %i.kq = fadd double %i.kk, 1.500000e+01         ; 2 uses
  %i.kr = fcmp ogt double %i.kq, %.2.1.i137.peel225
  %.2.2.i138.peel226 = select i1 %i.kr, double %i.kq, double %.2.1.i137.peel225 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hm, i64 148
  %87 = load double, ptr %i.bb, align 8, !tbaa !8 ; 2 uses
  %88 = fsub double 7.500000e-01, %87
  %89 = fadd double %88, 1.000000e-04
  %90 = call double @llvm.floor.f64(double %89)
  %i.kt = fadd double %87, 1.500000e+01           ; 2 uses
  %i.ku = fcmp ogt double %i.kt, %.2.2.i138.peel226
  %.2.i136.peel232 = select i1 %i.ku, double %i.kt, double %.2.2.i138.peel226 ; 2 uses
  %91 = load double, ptr %15, align 8, !tbaa !8   ; 2 uses
  %92 = fsub double 7.500000e-01, %91
  %93 = fadd double %92, 1.000000e-04
  %94 = call double @llvm.floor.f64(double %93)
  %95 = insertelement <2 x double> poison, double %90, i64 0
  %96 = insertelement <2 x double> %95, double %94, i64 1
  %97 = fptosi <2 x double> %96 to <2 x i32>
  store <2 x i32> %97, ptr %i.ks, align 4, !tbaa !4
  %i.kv = fadd double %91, 1.500000e+01           ; 2 uses
  %i.kw = fcmp ogt double %i.kv, %.2.i136.peel232
  %.2.1.i137.peel233 = select i1 %i.kw, double %i.kv, double %.2.i136.peel232 ; 2 uses
  %i.kx = load double, ptr %i.bc, align 8, !tbaa !8 ; 2 uses
  %i.ky = fsub double 7.500000e-01, %i.kx
  %i.kz = fadd double %i.ky, 1.000000e-04
  %i.la = call double @llvm.floor.f64(double %i.kz)
  %i.lb = fptosi double %i.la to i32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hm, i64 156
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !4
  %i.ld = fadd double %i.kx, 1.500000e+01         ; 2 uses
  %i.le = fcmp ogt double %i.ld, %.2.1.i137.peel233
  %.2.2.i138.peel234 = select i1 %i.le, double %i.ld, double %.2.1.i137.peel233
  br label %.preheader.i131

.preheader.i131:                                  ; preds = %.preheader.i131, %.preheader.i131.peel.begin
  %indvars.iv.i132 = phi i64 [ 6, %.preheader.i131.peel.begin ], [ %indvars.iv.next.i139, %.preheader.i131 ] ; 3 uses
  %.02428.i133 = phi double [ %.2.2.i138.peel234, %.preheader.i131.peel.begin ], [ %.2.2.i138, %.preheader.i131 ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i132 ; 3 uses
  %i.lg = getelementptr inbounds nuw [12 x i8], ptr %i.hn, i64 %indvars.iv.i132 ; 2 uses
  %98 = load double, ptr %i.lf, align 8, !tbaa !8 ; 2 uses
  %99 = fsub double 7.500000e-01, %98
  %100 = fadd double %99, 1.000000e-04
  %101 = call double @llvm.floor.f64(double %100)
  %i.lh = fadd double %98, 7.000000e+00           ; 2 uses
  %i.li = fcmp ogt double %i.lh, %.02428.i133
  %.2.i136 = select i1 %i.li, double %i.lh, double %.02428.i133 ; 2 uses
  %102 = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %103 = load double, ptr %102, align 8, !tbaa !8 ; 2 uses
  %104 = fsub double 7.500000e-01, %103
  %105 = fadd double %104, 1.000000e-04
  %106 = call double @llvm.floor.f64(double %105)
  %107 = insertelement <2 x double> poison, double %101, i64 0
  %108 = insertelement <2 x double> %107, double %106, i64 1
  %109 = fptosi <2 x double> %108 to <2 x i32>
  store <2 x i32> %109, ptr %i.lg, align 4, !tbaa !4
  %i.lj = fadd double %103, 7.000000e+00          ; 2 uses
  %i.lk = fcmp ogt double %i.lj, %.2.i136
  %.2.1.i137 = select i1 %i.lk, double %i.lj, double %.2.i136 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !8 ; 2 uses
  %i.ln = fsub double 7.500000e-01, %i.lm
  %i.lo = fadd double %i.ln, 1.000000e-04
  %i.lp = call double @llvm.floor.f64(double %i.lo)
  %i.lq = fptosi double %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !4
  %i.ls = fadd double %i.lm, 7.000000e+00         ; 2 uses
  %i.lt = fcmp ogt double %i.ls, %.2.1.i137
  %.2.2.i138 = select i1 %i.lt, double %i.ls, double %.2.1.i137 ; 2 uses
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i132, 1 ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %indvars.iv.next.i139, 12
  br i1 %exitcond.not.i140, label %compute_scalefacs_short.exit141.loopexit, label %.preheader.i131, !llvm.loop !35

compute_scalefacs_short.exit141.loopexit:         ; preds = %.preheader.i131
  %i.lu = fcmp ogt double %.2.2.i138, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %i.lu, label %bb.h, label %bb.k

bb.h:                                             ; preds = %compute_scalefacs_short.exit141.loopexit
  call void @exit(i32 noundef 32) #10
  unreachable

bb.i:                                             ; preds = %.preheader144.preheader
  store i32 1, ptr %i.fx, align 4, !tbaa !14
  %i.lv = call double @compute_scalefacs_long(ptr noundef nonnull %9, ptr noundef nonnull %i.bm, ptr noundef %i.fy)
  %i.lw = fcmp ogt double %i.lv, 0.000000e+00
  br i1 %i.lw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @exit(i32 noundef 32) #10
  unreachable

bb.k:                                             ; preds = %.preheader144.preheader, %bb.i, %compute_scalefacs_short.exit, %compute_scalefacs_short.exit141.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.lx = load i32, ptr %i.o, align 4, !tbaa !29
  %i.ly = sext i32 %i.lx to i64
  %i.lz = icmp slt i64 %indvars.iv.next189, %i.ly
  br i1 %i.lz, label %bb.e, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.k, %bb.d
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %i.ma = load i32, ptr %i.l, align 8, !tbaa !28
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next192, %i.mb
  br i1 %i.mc, label %bb.b, label %._crit_edge161, !llvm.loop !38

._crit_edge161:                                   ; preds = %._crit_edge, %cdce.end
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  ret void
}

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ms_convert(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
end_hunk_0
