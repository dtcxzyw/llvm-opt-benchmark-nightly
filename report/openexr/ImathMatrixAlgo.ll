inline.NumInlined: 1133
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_2::Matrix22" = type { [2 x [2 x float]] }
%"class.Imath_3_2::Matrix22.4" = type { [2 x [2 x double]] }
%"class.Imath_3_2::Matrix33.1" = type { [3 x [3 x float]] }
%"class.Imath_3_2::Matrix33" = type { [3 x [3 x double]] }
%"class.Imath_3_2::Matrix44.2" = type { [4 x [4 x float]] }
%"class.Imath_3_2::Matrix44" = type { [4 x [4 x double]] }
%"class.Imath_3_2::Vec3" = type { double, double, double }
%"class.Imath_3_2::Vec3.0" = type { float, float, float }
%"class.Imath_3_2::Vec4" = type { float, float, float, float }
%"class.Imath_3_2::Vec4.3" = type { double, double, double, double }

$_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_mb = comdat any

$_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb = comdat any

$_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_mb = comdat any

$_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb = comdat any

$_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b = comdat any

$_ZN9Imath_3_29jacobiSVDIfEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b = comdat any

$_ZN9Imath_3_29jacobiSVDIfEEvRKNS_8Matrix44IT_EERS3_RNS_4Vec4IS2_EES6_S2_b = comdat any

$_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix44IT_EERS3_RNS_4Vec4IS2_EES6_S2_b = comdat any

$_ZN9Imath_3_217jacobiEigenSolverIfEEvRNS_8Matrix33IT_EERNS_4Vec3IS2_EES4_S2_ = comdat any

$_ZN9Imath_3_217jacobiEigenSolverIdEEvRNS_8Matrix33IT_EERNS_4Vec3IS2_EES4_S2_ = comdat any

$_ZN9Imath_3_217jacobiEigenSolverIfEEvRNS_8Matrix44IT_EERNS_4Vec4IS2_EES4_S2_ = comdat any

$_ZN9Imath_3_217jacobiEigenSolverIdEEvRNS_8Matrix44IT_EERNS_4Vec4IS2_EES4_S2_ = comdat any

$_ZN9Imath_3_214maxEigenVectorINS_8Matrix33IfEENS_4Vec3IfEEEEvRT_RT0_ = comdat any

$_ZN9Imath_3_214maxEigenVectorINS_8Matrix44IfEENS_4Vec4IfEEEEvRT_RT0_ = comdat any

$_ZN9Imath_3_214maxEigenVectorINS_8Matrix33IdEENS_4Vec3IdEEEEvRT_RT0_ = comdat any

$_ZN9Imath_3_214maxEigenVectorINS_8Matrix44IdEENS_4Vec4IdEEEEvRT_RT0_ = comdat any

$_ZN9Imath_3_214minEigenVectorINS_8Matrix33IfEENS_4Vec3IfEEEEvRT_RT0_ = comdat any

$_ZN9Imath_3_214minEigenVectorINS_8Matrix44IfEENS_4Vec4IfEEEEvRT_RT0_ = comdat any

$_ZN9Imath_3_214minEigenVectorINS_8Matrix33IdEENS_4Vec3IdEEEEvRT_RT0_ = comdat any

$_ZN9Imath_3_214minEigenVectorINS_8Matrix44IdEENS_4Vec4IdEEEEvRT_RT0_ = comdat any

$_ZNK9Imath_3_28Matrix44IfE11determinantEv = comdat any

$_ZNK9Imath_3_28Matrix44IdE11determinantEv = comdat any

@_ZN9Imath_3_211identity22fE = local_unnamed_addr constant %"class.Imath_3_2::Matrix22" { [2 x [2 x float]] [[2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]] }, align 4
@_ZN9Imath_3_211identity22dE = local_unnamed_addr constant %"class.Imath_3_2::Matrix22.4" { [2 x [2 x double]] [[2 x double] [double 1.000000e+00, double 0.000000e+00], [2 x double] [double 0.000000e+00, double 1.000000e+00]] }, align 8
@_ZN9Imath_3_211identity33fE = local_unnamed_addr constant %"class.Imath_3_2::Matrix33.1" { [3 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]] }, align 4
@_ZN9Imath_3_211identity33dE = local_unnamed_addr constant %"class.Imath_3_2::Matrix33" { [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00]] }, align 8
@_ZN9Imath_3_211identity44fE = local_unnamed_addr constant %"class.Imath_3_2::Matrix44.2" { [4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]] }, align 4
@_ZN9Imath_3_211identity44dE = local_unnamed_addr constant %"class.Imath_3_2::Matrix44" { [4 x [4 x double]] [[4 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00]] }, align 8

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_mb(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i64 noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %7 = alloca %"class.Imath_3_2::Matrix33", align 8 ; 12 uses
  %8 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %9 = alloca %"class.Imath_3_2::Vec3", align 8   ; 3 uses
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %3, null                     ; 3 uses
  br i1 %i.h, label %.preheader227.preheader, label %.preheader228

.preheader227.preheader:                          ; preds = %bb.c
  %xtraiter = and i64 %4, 1
  %i.i = icmp eq i64 %4, 1
  br i1 %i.i, label %.preheader227.epil.preheader, label %.preheader227.preheader.new

.preheader227.preheader.new:                      ; preds = %.preheader227.preheader
  %unroll_iter = and i64 %4, -2
  br label %.preheader227

.unr-lcssa:                                       ; preds = %.preheader227
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.preheader227.epil.preheader

.preheader227.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader227.preheader
  %.084244.epil.init = phi i64 [ 0, %.preheader227.preheader ], [ %i.az, %.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.av, %.unr-lcssa ]
  %.epil.init440 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.aq, %.unr-lcssa ]
  %.epil.init442 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.ay, %.unr-lcssa ]
  %lcmp.mod446 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod446)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244.epil.init ; 2 uses
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !10
  %i.n = fadd <2 x double> %.epil.init440, %i.k
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244.epil.init ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !10
  %i.s = fadd <2 x double> %.epil.init, %i.p
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.m, i64 1
  %i.v = fadd <2 x double> %.epil.init442, %i.u
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.preheader227.epil.preheader
  %.lcssa434 = phi <2 x double> [ %i.aq, %.unr-lcssa ], [ %i.n, %.preheader227.epil.preheader ]
  %.lcssa433 = phi <2 x double> [ %i.av, %.unr-lcssa ], [ %i.s, %.preheader227.epil.preheader ]
  %.lcssa432 = phi <2 x double> [ %i.ay, %.unr-lcssa ], [ %i.v, %.preheader227.epil.preheader ]
  %i.w = uitofp i64 %4 to double
  br label %.loopexit229

.preheader227:                                    ; preds = %.preheader227, %.preheader227.preheader.new
  %.084244 = phi i64 [ 0, %.preheader227.preheader.new ], [ %i.az, %.preheader227 ] ; 5 uses
  %i.x = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.av, %.preheader227 ]
  %i.y = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.aq, %.preheader227 ]
  %i.z = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.ay, %.preheader227 ]
  %niter = phi i64 [ 0, %.preheader227.preheader.new ], [ %niter.next.1, %.preheader227 ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !10
  %i.ae = fadd <2 x double> %i.y, %i.ab
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !10
  %i.aj = fadd <2 x double> %i.x, %i.ag
  %i.ak = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ad, i64 1
  %i.am = fadd <2 x double> %i.z, %i.al
  %10 = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.an = load <2 x double>, ptr %11, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !10
  %i.aq = fadd <2 x double> %i.ae, %i.an          ; 3 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.as = load <2 x double>, ptr %12, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !10
  %i.av = fadd <2 x double> %i.aj, %i.as          ; 3 uses
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.ap, i64 1
  %i.ay = fadd <2 x double> %i.am, %i.ax          ; 3 uses
  %i.az = add nuw i64 %.084244, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader227, !llvm.loop !12

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.081237 = phi double [ %i.bf, %.preheader228 ], [ 0.000000e+00, %bb.c ]
  %.085236 = phi i64 [ %i.by, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
  %i.ba = phi <2 x double> [ %i.bw, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bb = phi <2 x double> [ %i.bn, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bc = phi <2 x double> [ %i.bx, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.085236
  %i.be = load double, ptr %i.bd, align 8, !tbaa !8 ; 2 uses
  %i.bf = fadd double %.081237, %i.be             ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bj = load <2 x double>, ptr %i.bg, align 8, !tbaa !8
  %i.bk = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bj
  %i.bn = fadd <2 x double> %i.bb, %i.bm          ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10
  %i.br = load <2 x double>, ptr %i.bo, align 8, !tbaa !8
  %i.bs = fmul <2 x double> %i.bl, %i.br
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bi, i64 1
  %i.bv = fmul <2 x double> %i.bl, %i.bu
  %i.bw = fadd <2 x double> %i.ba, %i.bs          ; 2 uses
  %i.bx = fadd <2 x double> %i.bc, %i.bv          ; 2 uses
  %i.by = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !14

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.w, %bb.d ], [ %i.bf, %.preheader228 ] ; 2 uses
  %i.bz = phi <2 x double> [ %.lcssa433, %bb.d ], [ %i.bw, %.preheader228 ]
  %i.ca = phi <2 x double> [ %.lcssa434, %bb.d ], [ %i.bn, %.preheader228 ]
  %i.cb = phi <2 x double> [ %.lcssa432, %bb.d ], [ %i.bx, %.preheader228 ]
  %i.cc = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.cc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ce, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ci, align 8, !tbaa !8
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.cj = insertelement <2 x double> poison, double %.1, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cl = fdiv <2 x double> %i.ca, %i.ck          ; 8 uses
  %i.cm = fdiv <2 x double> %i.bz, %i.ck          ; 3 uses
  %i.cn = fdiv <2 x double> %i.cb, %i.ck          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.cs = extractelement <2 x double> %i.cn, i64 0
  %i.ct = extractelement <2 x double> %i.cn, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.eb, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cu = phi double [ %i.ea, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cv = phi <2 x double> [ %i.dw, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cw = phi <2 x double> [ %i.dx, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cx = phi <2 x double> [ %i.dy, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cy = phi <2 x double> [ %i.dz, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load double, ptr %i.da, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load double, ptr %i.dd, align 8, !tbaa !10
  %i.df = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.de, i64 1
  %i.dh = fsub <2 x double> %i.dg, %i.cn          ; 5 uses
  %i.di = load <2 x double>, ptr %i.dc, align 8, !tbaa !8
  %i.dj = fsub <2 x double> %i.di, %i.cl          ; 4 uses
  %i.dk = load <2 x double>, ptr %i.cz, align 8, !tbaa !8
  %i.dl = fsub <2 x double> %i.dk, %i.cm          ; 3 uses
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dm, %i.dj
  %i.do = shufflevector <2 x double> %i.dh, <2 x double> %i.dj, <2 x i32> <i32 1, i32 2>
  %i.dp = fmul <2 x double> %i.dl, %i.do
  %i.dq = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dr = shufflevector <2 x double> %i.dj, <2 x double> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.ds = fmul <2 x double> %i.dq, %i.dr
  %i.dt = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.dt, %i.dj
  %shift = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dh, %shift
  %i.dv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dw = fadd <2 x double> %i.dn, %i.cv          ; 2 uses
  %i.dx = fadd <2 x double> %i.dp, %i.cw          ; 2 uses
  %i.dy = fadd <2 x double> %i.ds, %i.cx          ; 2 uses
  %i.dz = fadd <2 x double> %i.du, %i.cy          ; 2 uses
  %i.ea = fadd double %i.dv, %i.cu                ; 2 uses
  %i.eb = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.eb, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !15

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.fq, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.ec = phi double [ %i.fp, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.ed = phi <2 x double> [ %i.fl, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ee = phi <2 x double> [ %i.fm, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ef = phi <2 x double> [ %i.fn, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eg = phi <2 x double> [ %i.fo, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.082261
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !8 ; 2 uses
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load double, ptr %i.ek, align 8, !tbaa !10
  %i.em = fsub double %i.el, %i.cs
  %i.en = fmul double %i.ei, %i.em                ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !10
  %i.er = fsub double %i.eq, %i.ct                ; 3 uses
  %i.es = load <2 x double>, ptr %i.eo, align 8, !tbaa !8
  %i.et = fsub <2 x double> %i.es, %i.cl          ; 3 uses
  %i.eu = load <2 x double>, ptr %i.ej, align 8, !tbaa !8
  %i.ev = fsub <2 x double> %i.eu, %i.cm
  %i.ew = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.ex, %i.ev          ; 3 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.ez, %i.et
  %i.fb = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fc = insertelement <2 x double> %i.fb, double %i.er, i64 0
  %i.fd = fmul <2 x double> %i.ey, %i.fc
  %i.fe = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = insertelement <2 x double> %i.fb, double %i.er, i64 1
  %i.fg = fmul <2 x double> %i.fe, %i.ff
  %i.fh = insertelement <2 x double> poison, double %i.en, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.et, %i.fi
  %i.fk = fmul double %i.en, %i.er
  %i.fl = fadd <2 x double> %i.fa, %i.ed          ; 2 uses
  %i.fm = fadd <2 x double> %i.fd, %i.ee          ; 2 uses
  %i.fn = fadd <2 x double> %i.fg, %i.ef          ; 2 uses
  %i.fo = fadd <2 x double> %i.fj, %i.eg          ; 2 uses
  %i.fp = fadd double %i.fk, %i.ec                ; 2 uses
  %i.fq = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.fq, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !16

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.ea, %.preheader223 ], [ %i.fp, %.preheader225 ]
  %i.fr = phi <2 x double> [ %i.dw, %.preheader223 ], [ %i.fl, %.preheader225 ]
  %i.fs = phi <2 x double> [ %i.dx, %.preheader223 ], [ %i.fm, %.preheader225 ]
  %i.ft = phi <2 x double> [ %i.dy, %.preheader223 ], [ %i.fn, %.preheader225 ]
  %i.fu = phi <2 x double> [ %i.dz, %.preheader223 ], [ %i.fo, %.preheader225 ]
  store <2 x double> %i.fr, ptr %6, align 16, !tbaa !8
  store <2 x double> %i.fs, ptr %i.co, align 16, !tbaa !8
  store <2 x double> %i.ft, ptr %i.cp, align 16, !tbaa !8
  store <2 x double> %i.fu, ptr %i.cq, align 16, !tbaa !8
  store double %storemerge, ptr %i.cr, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fw, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fy, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 16, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ga, align 16, !tbaa !8
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
end_hunk_0
