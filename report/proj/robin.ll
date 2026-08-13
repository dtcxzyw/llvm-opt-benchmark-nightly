inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.(anonymous namespace)::COEFS" = type { float, float, float, float }
%union.PJ_COORD = type { [4 x double] }

@_ZL9des_robin = internal constant [20 x i8] c"Robinson\0A\09PCyl, Sph\00", align 16
@pj_s_robin = hidden local_unnamed_addr constant ptr @_ZL9des_robin, align 8
@.str = private unnamed_addr constant [6 x i8] c"robin\00", align 1
@_ZL1X = internal unnamed_addr constant [19 x %"struct.(anonymous namespace)::COEFS"] [%"struct.(anonymous namespace)::COEFS" { float 1.000000e+00, float 2.219900e-17, float f0xB8960DEB, float 3.110300e-06 }, %"struct.(anonymous namespace)::COEFS" { float 9.986000e-01, float -4.822430e-04, float -2.489700e-05, float -1.330900e-06 }, %"struct.(anonymous namespace)::COEFS" { float 9.954000e-01, float -8.310300e-04, float -4.486050e-05, float -9.867010e-07 }, %"struct.(anonymous namespace)::COEFS" { float 9.900000e-01, float -1.353640e-03, float -5.966100e-05, float 3.677700e-06 }, %"struct.(anonymous namespace)::COEFS" { float 9.822000e-01, float -1.674420e-03, float -4.495470e-06, float -5.724110e-06 }, %"struct.(anonymous namespace)::COEFS" { float f0x3F791687, float -2.148680e-03, float f0xB8BD7E19, float 1.873600e-08 }, %"struct.(anonymous namespace)::COEFS" { float f0x3F75C28F, float -3.050850e-03, float -9.007610e-05, float 1.649170e-06 }, %"struct.(anonymous namespace)::COEFS" { float 9.427000e-01, float -3.827920e-03, float -6.533860e-05, float -2.615400e-06 }, %"struct.(anonymous namespace)::COEFS" { float f0x3F6BEDFA, float -4.677460e-03, float -1.045700e-04, float 4.812430e-06 }, %"struct.(anonymous namespace)::COEFS" { float 8.962000e-01, float -5.362230e-03, float -3.238310e-05, float -5.434320e-06 }, %"struct.(anonymous namespace)::COEFS" { float 8.679000e-01, float -6.093630e-03, float -1.138980e-04, float 3.324840e-06 }, %"struct.(anonymous namespace)::COEFS" { float f0x3F55C28F, float -6.983250e-03, float -6.402530e-05, float 9.349590e-07 }, %"struct.(anonymous namespace)::COEFS" { float 7.986000e-01, float -7.553380e-03, float -5.000090e-05, float 9.353240e-07 }, %"struct.(anonymous namespace)::COEFS" { float 7.597000e-01, float -7.983240e-03, float -3.597100e-05, float -2.276260e-06 }, %"struct.(anonymous namespace)::COEFS" { float f0x3F37F62B, float -8.513670e-03, float -7.011490e-05, float f0xB710CADB }, %"struct.(anonymous namespace)::COEFS" { float 6.732000e-01, float -9.862090e-03, float -1.995690e-04, float 1.919740e-05 }, %"struct.(anonymous namespace)::COEFS" { float 6.213000e-01, float -1.041800e-02, float f0x38B95F41, float 6.240510e-06 }, %"struct.(anonymous namespace)::COEFS" { float 5.722000e-01, float f0xBC14899A, float 1.820000e-04, float 6.240510e-06 }, %"struct.(anonymous namespace)::COEFS" { float 5.322000e-01, float -6.777970e-03, float 2.756080e-04, float 6.240510e-06 }], align 16
@_ZL1Y = internal unnamed_addr constant [19 x %"struct.(anonymous namespace)::COEFS"] [%"struct.(anonymous namespace)::COEFS" { float -5.204170e-18, float 1.240000e-02, float 1.214310e-18, float f0xAEB9E142 }, %"struct.(anonymous namespace)::COEFS" { float 6.200000e-02, float 1.240000e-02, float -1.267930e-09, float 4.226420e-10 }, %"struct.(anonymous namespace)::COEFS" { float 1.240000e-01, float 1.240000e-02, float 5.071710e-09, float -1.606040e-09 }, %"struct.(anonymous namespace)::COEFS" { float 1.860000e-01, float 1.239990e-02, float -1.901890e-08, float 6.001520e-09 }, %"struct.(anonymous namespace)::COEFS" { float 2.480000e-01, float 1.240020e-02, float 7.100390e-08, float -2.240000e-08 }, %"struct.(anonymous namespace)::COEFS" { float 3.100000e-01, float 1.239920e-02, float -2.649970e-07, float 8.359860e-08 }, %"struct.(anonymous namespace)::COEFS" { float 3.720000e-01, float 1.240290e-02, float f0x3584BD32, float -3.119940e-07 }, %"struct.(anonymous namespace)::COEFS" { float 4.340000e-01, float 1.238930e-02, float -3.690930e-06, float -4.356210e-07 }, %"struct.(anonymous namespace)::COEFS" { float 4.958000e-01, float 1.231980e-02, float -1.022520e-05, float -3.455230e-07 }, %"struct.(anonymous namespace)::COEFS" { float 5.571000e-01, float 1.219160e-02, float -1.540810e-05, float -5.822880e-07 }, %"struct.(anonymous namespace)::COEFS" { float 6.176000e-01, float 1.199380e-02, float -2.414240e-05, float -5.253270e-07 }, %"struct.(anonymous namespace)::COEFS" { float 6.769000e-01, float 1.171300e-02, float -3.202230e-05, float -5.164050e-07 }, %"struct.(anonymous namespace)::COEFS" { float 7.346000e-01, float 1.135410e-02, float -3.976840e-05, float -6.090520e-07 }, %"struct.(anonymous namespace)::COEFS" { float 7.903000e-01, float 1.091070e-02, float -4.890420e-05, float -1.047390e-06 }, %"struct.(anonymous namespace)::COEFS" { float 8.435000e-01, float 1.034310e-02, float -6.461500e-05, float -1.403740e-09 }, %"struct.(anonymous namespace)::COEFS" { float f0x3F64C2F8, float f0x3C1EDF94, float -6.463600e-05, float -8.547000e-06 }, %"struct.(anonymous namespace)::COEFS" { float 9.394000e-01, float 8.409470e-03, float -1.928410e-04, float -4.210600e-06 }, %"struct.(anonymous namespace)::COEFS" { float 9.761000e-01, float 6.165270e-03, float -2.560000e-04, float -4.210600e-06 }, %"struct.(anonymous namespace)::COEFS" { float 1.000000e+00, float 3.289470e-03, float -3.191590e-04, float -4.210600e-06 }], align 16

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_robin(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15robin_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15robin_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZL9des_robin, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i32 1, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  store i32 4, ptr %i.i, align 4, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store i32 1, ptr %i.j, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z34pj_projection_specific_setup_robinP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 120), (216, 224)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15robin_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15robin_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15robin_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %i.a = insertelement <2 x double> poison, double %0, i64 0
  %i.b = insertelement <2 x double> %i.a, double %1, i64 1
  %i.c = fdiv <2 x double> %i.b, <double 8.487000e-01, double 1.352300e+00> ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 4 uses
  %i.e = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e) ; 9 uses
  %i.g = fcmp ult double %i.f, 1.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp ogt double %i.f, f0x3FF000010C6F7A0B
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = fcmp olt double %1, 0.000000e+00
  %i.k = select i1 %i.j, double f0xBFF921FB54442D18, double f0x3FF921FB54442D18
  %i.l = fdiv double %i.d, f0x3FE107C840000000
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.m = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = fmul nnan double %i.f, 1.800000e+01
  %i.o = tail call double @llvm.floor.f64(double %i.n)
  %i.p = tail call i64 @lround(double noundef %i.o) #6 ; 2 uses
  %or.cond = icmp ult i64 %i.p, 18
  br i1 %or.cond, label %.preheader, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.q = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.m

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %.0 = phi i64 [ %.0.be, %.preheader.backedge ], [ %i.p, %bb.f ] ; 5 uses
  %i.r = getelementptr inbounds [16 x i8], ptr @_ZL1Y, i64 %.0 ; 4 uses
  %i.s = load float, ptr %i.r, align 16, !tbaa !45 ; 2 uses
  %i.t = fpext float %i.s to double               ; 3 uses
  %i.u = fcmp olt double %i.f, %i.t
  br i1 %i.u, label %4, label %bb.g

4:                                                ; preds = %.preheader
  %5 = add nsw i64 %.0, -1
  br label %.preheader.backedge

bb.g:                                             ; preds = %.preheader
  %6 = add nsw i64 %.0, 1                         ; 2 uses
  %7 = getelementptr inbounds [16 x i8], ptr @_ZL1Y, i64 %6
  %i.v = load float, ptr %7, align 16, !tbaa !45  ; 2 uses
  %i.w = fpext float %i.v to double
  %i.x = fcmp ult double %i.f, %i.w
  br i1 %i.x, label %bb.h, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.g, %4
  %.0.be = phi i64 [ %6, %bb.g ], [ %5, %4 ]
  br label %.preheader, !llvm.loop !48

bb.h:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !50
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !50
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !50
  %i.y = fsub double %i.f, %i.t
  %i.z = fmul double %i.y, 5.000000e+00
  %i.aa = fsub float %i.v, %i.s
  %i.ab = fpext float %i.aa to double
  %i.ac = fdiv double %i.z, %i.ab
  %i.ad = fpext float %.sroa.6.0.copyload to double ; 2 uses
  %i.ae = fpext float %.sroa.8.0.copyload to double ; 2 uses
  %i.af = fpext float %.sroa.10.0.copyload to double ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %.05673, -1                 ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.k, label %bb.j, !llvm.loop !51

bb.j:                                             ; preds = %bb.h, %bb.i
  %.05673 = phi i32 [ 100, %bb.h ], [ %i.ag, %bb.i ]
  %.05772 = phi double [ %i.ac, %bb.h ], [ %i.ar, %bb.i ] ; 7 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %.05772, double %i.af, double %i.ae)
  %i.ai = tail call double @llvm.fmuladd.f64(double %.05772, double %i.ah, double %i.ad)
  %i.aj = tail call double @llvm.fmuladd.f64(double %.05772, double %i.ai, double %i.t)
  %i.ak = fsub double %i.aj, %i.f
  %i.al = fmul double %.05772, 2.000000e+00
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ae, double %i.ad)
  %i.an = fmul double %.05772, %.05772
  %i.ao = fmul double %i.an, 3.000000e+00
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.af, double %i.am)
  %i.aq = fdiv double %i.ak, %i.ap                ; 2 uses
  %i.ar = fsub double %.05772, %i.aq              ; 5 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.aq)
  %i.at = fcmp olt double %i.as, 1.000000e-10
  br i1 %i.at, label %.loopexit, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.au, i32 noundef 2050)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k
  %i.av = mul nsw i64 %.0, 5
  %i.aw = sitofp i64 %i.av to double
  %i.ax = fadd double %i.ar, %i.aw
  %i.ay = fmul double %i.ax, f0x3F91DF46A2529D39  ; 2 uses
  %i.az = fcmp olt double %1, 0.000000e+00
  %i.ba = fneg double %i.ay
  %.sroa.9.0 = select i1 %i.az, double %i.ba, double %i.ay
  %i.bb = getelementptr inbounds [16 x i8], ptr @_ZL1X, i64 %.0
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !tbaa !50
  %i.bd = fpext <4 x float> %i.bc to <4 x double> ; 4 uses
  %i.be = extractelement <4 x double> %i.bd, i64 2
  %i.bf = extractelement <4 x double> %i.bd, i64 3
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bf, double %i.be)
  %i.bh = extractelement <4 x double> %i.bd, i64 1
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bg, double %i.bh)
  %i.bj = extractelement <4 x double> %i.bd, i64 0
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bi, double %i.bj)
  %i.bl = fdiv double %i.d, %i.bk                 ; 2 uses
  %i.bm = tail call double @llvm.fabs.f64(double %i.bl)
  %i.bn = fcmp ogt double %i.bm, f0x400921FB54442D18
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.bo = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %.sroa.043.0.copyload = load double, ptr %3, align 8, !tbaa !53
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %.loopexit, %bb.d, %bb.c
  %.sroa.9.4 = phi double [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.f, %.thread ], [ %.sroa.9.0.copyload, %bb.l ], [ %.sroa.9.0, %.loopexit ]
  %.sroa.043.3 = phi double [ %i.d, %bb.c ], [ %i.l, %bb.d ], [ %i.d, %.thread ], [ %.sroa.043.0.copyload, %bb.l ], [ %i.bl, %.loopexit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.043.3, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.9.4, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15robin_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.b = fcmp uno double %1, 0.000000e+00
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.fmuladd.f64(double %i.a, double f0x4026EB167B830193, double 1.000000e-15)
  %i.d = tail call double @llvm.floor.f64(double %i.c)
  %i.e = tail call i64 @lround(double noundef %i.d) #6 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.e, i64 18) ; 3 uses
  %i.i = uitofp nneg i64 %i.h to double
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double f0xBFB657184AE74487, double %i.a)
  %i.k = fmul double %i.j, f0x404CA5DC1A63C1F8    ; 6 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZL1X, i64 %i.h
  %i.m = load <4 x float>, ptr %i.l, align 16, !tbaa !50
  %i.n = fpext <4 x float> %i.m to <4 x double>   ; 4 uses
  %i.o = extractelement <4 x double> %i.n, i64 2
  %i.p = extractelement <4 x double> %i.n, i64 3
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.p, double %i.o)
  %i.r = extractelement <4 x double> %i.n, i64 1
  %i.s = tail call double @llvm.fmuladd.f64(double %i.k, double %i.q, double %i.r)
  %i.t = extractelement <4 x double> %i.n, i64 0
  %i.u = tail call double @llvm.fmuladd.f64(double %i.k, double %i.s, double %i.t)
  %i.v = fmul double %i.u, 8.487000e-01
  %i.w = fmul double %0, %i.v
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @_ZL1Y, i64 %i.h
  %i.y = load <4 x float>, ptr %i.x, align 16, !tbaa !50
  %i.z = fpext <4 x float> %i.y to <4 x double>   ; 4 uses
  %i.aa = extractelement <4 x double> %i.z, i64 2
  %i.ab = extractelement <4 x double> %i.z, i64 3
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ab, double %i.aa)
  %i.ad = extractelement <4 x double> %i.z, i64 1
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ac, double %i.ad)
  %i.af = extractelement <4 x double> %i.z, i64 0
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ae, double %i.af)
  %i.ah = fmul double %i.ag, 1.352300e+00         ; 2 uses
  %i.ai = fcmp olt double %1, 0.000000e+00
  %i.aj = fneg double %i.ah
  %.sroa.3.0 = select i1 %i.ai, double %i.aj, double %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.sroa.3.1 = phi double [ 0.000000e+00, %.thread ], [ %.sroa.3.0, %bb.c ]
  %.sroa.021.0 = phi double [ 0.000000e+00, %.thread ], [ %i.w, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.021.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !16, i64 216}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
end_hunk_0
