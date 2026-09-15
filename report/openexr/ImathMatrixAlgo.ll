Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImathMatrixAlgo?download=true
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
  store double 1.000000e+00, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !9
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
  %.084244.epil.init = phi i64 [ 0, %.preheader227.preheader ], [ %i.bb, %.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.ax, %.unr-lcssa ]
  %.epil.init440 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.at, %.unr-lcssa ]
  %.epil.init442 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.ba, %.unr-lcssa ]
  %lcmp.mod446 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod446)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244.epil.init ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244.epil.init ; 2 uses
  %i.m = load <2 x double>, ptr %i.j, align 8, !tbaa !9
  %i.n = load double, ptr %i.k, align 8, !tbaa !11
  %i.o = fadd <2 x double> %.epil.init440, %i.m
  %i.p = load <2 x double>, ptr %i.l, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !11
  %i.s = fadd <2 x double> %.epil.init, %i.p
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.n, i64 1
  %i.v = fadd <2 x double> %.epil.init442, %i.u
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.preheader227.epil.preheader
  %.lcssa434 = phi <2 x double> [ %i.at, %.unr-lcssa ], [ %i.o, %.preheader227.epil.preheader ]
  %.lcssa433 = phi <2 x double> [ %i.ax, %.unr-lcssa ], [ %i.s, %.preheader227.epil.preheader ]
  %.lcssa432 = phi <2 x double> [ %i.ba, %.unr-lcssa ], [ %i.v, %.preheader227.epil.preheader ]
  %i.w = uitofp i64 %4 to double
  br label %.loopexit229

.preheader227:                                    ; preds = %.preheader227, %.preheader227.preheader.new
  %.084244 = phi i64 [ 0, %.preheader227.preheader.new ], [ %i.bb, %.preheader227 ] ; 4 uses
  %i.x = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.ax, %.preheader227 ]
  %i.y = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.at, %.preheader227 ]
  %i.z = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.ba, %.preheader227 ]
  %niter = phi i64 [ 0, %.preheader227.preheader.new ], [ %niter.next.1, %.preheader227 ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !9
  %i.ae = load double, ptr %i.ab, align 8, !tbaa !11
  %i.af = fadd <2 x double> %i.y, %i.ad
  %i.ag = load <2 x double>, ptr %i.ac, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = fadd <2 x double> %i.x, %i.ag
  %i.ak = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ae, i64 1
  %i.am = fadd <2 x double> %i.z, %i.al
  %i.an = or disjoint i64 %.084244, 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.ar = load <2 x double>, ptr %i.ao, align 8, !tbaa !9
  %i.as = load double, ptr %i.ap, align 8, !tbaa !11
  %i.at = fadd <2 x double> %i.af, %i.ar          ; 3 uses
  %i.au = load <2 x double>, ptr %i.aq, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = fadd <2 x double> %i.aj, %i.au          ; 3 uses
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.as, i64 1
  %i.ba = fadd <2 x double> %i.am, %i.az          ; 3 uses
  %i.bb = add nuw i64 %.084244, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader227, !llvm.loop !19

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.081237 = phi double [ %i.bh, %.preheader228 ], [ 0.000000e+00, %bb.c ]
  %.085236 = phi i64 [ %i.ca, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
  %i.bc = phi <2 x double> [ %i.by, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bd = phi <2 x double> [ %i.bs, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.be = phi <2 x double> [ %i.bz, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.085236
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !9 ; 2 uses
  %i.bh = fadd double %.081237, %i.bg             ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = load double, ptr %i.bj, align 8, !tbaa !11
  %i.bo = load <2 x double>, ptr %i.bi, align 8, !tbaa !9
  %i.bp = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = fmul <2 x double> %i.bq, %i.bo
  %i.bs = fadd <2 x double> %i.bd, %i.br          ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bk, align 8, !tbaa !9
  %i.bu = fmul <2 x double> %i.bq, %i.bt
  %i.bv = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bn, i64 1
  %i.bx = fmul <2 x double> %i.bq, %i.bw
  %i.by = fadd <2 x double> %i.bc, %i.bu          ; 2 uses
  %i.bz = fadd <2 x double> %i.be, %i.bx          ; 2 uses
  %i.ca = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !20

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.w, %bb.d ], [ %i.bh, %.preheader228 ] ; 2 uses
  %i.cb = phi <2 x double> [ %.lcssa433, %bb.d ], [ %i.by, %.preheader228 ]
  %i.cc = phi <2 x double> [ %.lcssa434, %bb.d ], [ %i.bs, %.preheader228 ]
  %i.cd = phi <2 x double> [ %.lcssa432, %bb.d ], [ %i.bz, %.preheader228 ]
  %i.ce = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ci, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ck, align 8, !tbaa !9
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.cl = insertelement <2 x double> poison, double %.1, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cn = fdiv <2 x double> %i.cc, %i.cm          ; 8 uses
  %i.co = fdiv <2 x double> %i.cb, %i.cm          ; 3 uses
  %i.cp = fdiv <2 x double> %i.cd, %i.cm          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.cu = extractelement <2 x double> %i.cp, i64 0
  %i.cv = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.ed, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cw = phi double [ %i.ec, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cx = phi <2 x double> [ %i.dy, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cy = phi <2 x double> [ %i.dz, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cz = phi <2 x double> [ %i.ea, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.da = phi <2 x double> [ %i.eb, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !11
  %i.dh = load <2 x double>, ptr %i.de, align 8, !tbaa !9
  %i.di = fsub <2 x double> %i.dh, %i.cn          ; 4 uses
  %i.dj = load <2 x double>, ptr %i.db, align 8, !tbaa !9
  %i.dk = fsub <2 x double> %i.dj, %i.co          ; 3 uses
  %i.dl = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dg, i64 1
  %i.dn = fsub <2 x double> %i.dm, %i.cp          ; 5 uses
  %i.do = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.do, %i.di
  %i.dq = shufflevector <2 x double> %i.dn, <2 x double> %i.di, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x double> %i.dk, %i.dq
  %i.ds = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = shufflevector <2 x double> %i.di, <2 x double> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.du = fmul <2 x double> %i.ds, %i.dt
  %i.dv = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %i.dv, %i.di
  %shift = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dn, %shift
  %i.dx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dy = fadd <2 x double> %i.dp, %i.cx          ; 2 uses
  %i.dz = fadd <2 x double> %i.dr, %i.cy          ; 2 uses
  %i.ea = fadd <2 x double> %i.du, %i.cz          ; 2 uses
  %i.eb = fadd <2 x double> %i.dw, %i.da          ; 2 uses
  %i.ec = fadd double %i.dx, %i.cw                ; 2 uses
  %i.ed = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.ed, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !21

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.fs, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.ee = phi double [ %i.fr, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.ef = phi <2 x double> [ %i.fn, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eg = phi <2 x double> [ %i.fo, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eh = phi <2 x double> [ %i.fp, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ei = phi <2 x double> [ %i.fq, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.082261
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !9 ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = fsub double %i.en, %i.cu
  %i.ep = fmul double %i.ek, %i.eo                ; 2 uses
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load double, ptr %i.er, align 8, !tbaa !11
  %i.et = load <2 x double>, ptr %i.eq, align 8, !tbaa !9
  %i.eu = fsub <2 x double> %i.et, %i.cn          ; 3 uses
  %i.ev = load <2 x double>, ptr %i.el, align 8, !tbaa !9
  %i.ew = fsub <2 x double> %i.ev, %i.co
  %i.ex = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.ey, %i.ew          ; 3 uses
  %i.fa = fsub double %i.es, %i.cv                ; 3 uses
  %i.fb = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x double> %i.fb, %i.eu
  %i.fd = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fe = insertelement <2 x double> %i.fd, double %i.fa, i64 0
  %i.ff = fmul <2 x double> %i.ez, %i.fe
  %i.fg = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = insertelement <2 x double> %i.fd, double %i.fa, i64 1
  %i.fi = fmul <2 x double> %i.fg, %i.fh
  %i.fj = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.eu, %i.fk
  %i.fm = fmul double %i.ep, %i.fa
  %i.fn = fadd <2 x double> %i.fc, %i.ef          ; 2 uses
  %i.fo = fadd <2 x double> %i.ff, %i.eg          ; 2 uses
  %i.fp = fadd <2 x double> %i.fi, %i.eh          ; 2 uses
  %i.fq = fadd <2 x double> %i.fl, %i.ei          ; 2 uses
  %i.fr = fadd double %i.fm, %i.ee                ; 2 uses
  %i.fs = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.fs, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !22

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.ec, %.preheader223 ], [ %i.fr, %.preheader225 ]
  %i.ft = phi <2 x double> [ %i.dy, %.preheader223 ], [ %i.fn, %.preheader225 ]
  %i.fu = phi <2 x double> [ %i.dz, %.preheader223 ], [ %i.fo, %.preheader225 ]
  %i.fv = phi <2 x double> [ %i.ea, %.preheader223 ], [ %i.fp, %.preheader225 ]
  %i.fw = phi <2 x double> [ %i.eb, %.preheader223 ], [ %i.fq, %.preheader225 ]
  store <2 x double> %i.ft, ptr %6, align 16, !tbaa !9
  store <2 x double> %i.fu, ptr %i.cq, align 16, !tbaa !9
  store <2 x double> %i.fv, ptr %i.cr, align 16, !tbaa !9
  store <2 x double> %i.fw, ptr %i.cs, align 16, !tbaa !9
  store double %storemerge, ptr %i.ct, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fy, align 8, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ga, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 16, !tbaa !9
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.gc, align 16, !tbaa !9
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ge, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.gh = load double, ptr %i.ga, align 8, !tbaa !9, !noalias !29 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gj = load <4 x double>, ptr %7, align 8, !tbaa !9, !noalias !29 ; 4 uses
  %i.gk = load double, ptr %10, align 8, !tbaa !9, !noalias !29
  %i.gl = load double, ptr %i.fx, align 8, !tbaa !9, !noalias !29
  %i.gm = load <2 x double>, ptr %i.fy, align 8, !tbaa !9, !noalias !29 ; 2 uses
  %i.gn = load double, ptr %i.fz, align 8, !tbaa !9, !noalias !29
  %i.go = load double, ptr %i.gi, align 16, !tbaa !9, !noalias !30 ; 2 uses
  %i.gp = shufflevector <2 x double> %i.gm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gq = shufflevector <4 x double> %i.gj, <4 x double> %i.gp, <2 x i32> <i32 1, i32 4>
  %i.gr = shufflevector <4 x double> %i.gj, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gs = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = shufflevector <4 x double> %i.gj, <4 x double> %i.gp, <2 x i32> <i32 2, i32 5>
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gw = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gx = insertelement <2 x double> %i.gw, double %i.gl, i64 0 ; 2 uses
  %i.gy = insertelement <2 x double> %i.gr, double %i.gk, i64 1 ; 2 uses
  %i.gz = shufflevector <4 x double> %i.gj, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.ha = insertelement <2 x double> %i.gz, double %i.gn, i64 1 ; 2 uses
  %11 = load double, ptr %i.gg, align 8, !tbaa !9, !noalias !29 ; 2 uses
  %12 = load double, ptr %i.gf, align 8, !tbaa !9, !noalias !29 ; 2 uses
  %i.hb = load <2 x double>, ptr %8, align 16, !tbaa !9, !noalias !30 ; 4 uses
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = fmul <2 x double> %i.gq, %i.hc
  %i.he = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.gr, <2 x double> %i.hd)
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gu, <2 x double> %i.hf) ; 4 uses
  %i.hh = load <2 x double>, ptr %i.gv, align 8, !tbaa !9, !noalias !30 ; 4 uses
  %13 = insertelement <2 x double> poison, double %11, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = shufflevector <2 x double> %i.hb, <2 x double> %i.hh, <2 x i32> <i32 1, i32 3>
  %i.hj = fmul <2 x double> %14, %i.hi
  %i.hk = shufflevector <2 x double> %i.hb, <2 x double> %i.hh, <2 x i32> <i32 0, i32 2>
  %15 = insertelement <2 x double> poison, double %12, i64 0
  %i.hl = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hl, <2 x double> %i.hj) ; 2 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 0
  %i.ho = call double @llvm.fmuladd.f64(double %i.go, double %i.gh, double %i.hn) ; 3 uses
  %i.hp = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = fmul <2 x double> %i.gx, %i.hp
  %i.hr = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.gy, <2 x double> %i.hq)
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !9, !noalias !30 ; 2 uses
  %i.hv = load double, ptr %i.ge, align 16, !tbaa !9, !noalias !30 ; 2 uses
  %i.hw = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = fmul <2 x double> %i.gx, %i.hx
  %i.hz = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul double %11, %i.hu
  %i.ic = load <2 x double>, ptr %i.gd, align 8, !tbaa !9, !noalias !30 ; 3 uses
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.ha, <2 x double> %i.hs) ; 4 uses
  %i.if = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.gy, <2 x double> %i.hy)
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.ha, <2 x double> %i.ig) ; 4 uses
  %16 = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.ii = insertelement <2 x double> %16, double %12, i64 1
  %i.ij = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ik = insertelement <2 x double> %i.ij, double %i.ib, i64 1
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.ii, <2 x double> %i.ik) ; 3 uses
  %i.im = extractelement <2 x double> %i.il, i64 1
  %i.in = call double @llvm.fmuladd.f64(double %i.hv, double %i.gh, double %i.im) ; 3 uses
  %i.io = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.io
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.ip = extractelement <2 x double> %i.cn, i64 0
  %i.iq = extractelement <2 x double> %i.cn, i64 1
  %i.ir = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.is = extractelement <2 x double> %i.cn, i64 0
  %i.it = extractelement <2 x double> %i.cn, i64 1
  %i.iu = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.jl, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.ji, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.jk, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.079286 ; 3 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !13
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !31
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !11
  %i.jb = fsub double %i.iw, %i.is                ; 2 uses
  %i.jc = fsub double %i.iy, %i.it                ; 2 uses
  %i.jd = fsub double %i.ja, %i.iu                ; 2 uses
  %i.je = fmul double %i.jc, %i.jc
  %i.jf = call double @llvm.fmuladd.f64(double %i.jb, double %i.jb, double %i.je)
  %i.jg = call noundef double @llvm.fmuladd.f64(double %i.jd, double %i.jd, double %i.jf)
  %i.jh = fsub double %i.jg, %.sroa.8.0284        ; 2 uses
  %i.ji = fadd double %.sroa.0110.0285, %i.jh     ; 3 uses
  %i.jj = fsub double %i.ji, %.sroa.0110.0285
  %i.jk = fsub double %i.jj, %i.jh
  %i.jl = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.jl, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !27

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.kf, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.kc, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.ke, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078283
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !9
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jt = load double, ptr %i.js, align 8, !tbaa !11
  %i.ju = fsub double %i.jp, %i.ip                ; 2 uses
  %i.jv = fsub double %i.jr, %i.iq                ; 2 uses
  %i.jw = fsub double %i.jt, %i.ir                ; 2 uses
  %i.jx = fmul double %i.jv, %i.jv
  %i.jy = call double @llvm.fmuladd.f64(double %i.ju, double %i.ju, double %i.jx)
  %i.jz = call noundef double @llvm.fmuladd.f64(double %i.jw, double %i.jw, double %i.jy)
  %i.ka = fmul double %i.jn, %i.jz
  %i.kb = fsub double %i.ka, %.sroa.8.1281        ; 2 uses
  %i.kc = fadd double %.sroa.0110.1282, %i.kb     ; 3 uses
  %i.kd = fsub double %i.kc, %.sroa.0110.1282
  %i.ke = fsub double %i.kd, %i.kb
  %i.kf = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.kf, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !28

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.ji, %.preheader220 ], [ %i.kc, %.preheader221 ]
  %i.kg = load <2 x double>, ptr %6, align 16, !tbaa !9
  %i.kh = shufflevector <2 x double> %i.hg, <2 x double> %i.ie, <2 x i32> <i32 0, i32 2>
  %i.ki = fmul <2 x double> %i.kh, %i.kg          ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.kk = fadd double %i.kj, 0.000000e+00         ; 3 uses
  %i.kl = fsub double %i.kk, %i.kj
  %i.km = extractelement <2 x double> %i.ki, i64 1
  %i.kn = fsub double %i.km, %i.kl                ; 2 uses
  %i.ko = fadd double %i.kk, %i.kn                ; 3 uses
  %i.kp = fsub double %i.ko, %i.kk
  %i.kq = fsub double %i.kp, %i.kn
  %i.kr = load <2 x double>, ptr %i.cq, align 16, !tbaa !9
  %i.ks = shufflevector <2 x double> %i.ih, <2 x double> %i.hg, <2 x i32> <i32 0, i32 3>
  %i.kt = fmul <2 x double> %i.ks, %i.kr          ; 2 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0
  %i.kv = fsub double %i.ku, %i.kq                ; 2 uses
  %i.kw = fadd double %i.ko, %i.kv                ; 3 uses
  %i.kx = fsub double %i.kw, %i.ko
  %i.ky = fsub double %i.kx, %i.kv
  %i.kz = extractelement <2 x double> %i.kt, i64 1
  %i.la = fsub double %i.kz, %i.ky                ; 2 uses
  %i.lb = fadd double %i.kw, %i.la                ; 3 uses
  %i.lc = fsub double %i.lb, %i.kw
  %i.ld = fsub double %i.lc, %i.la
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.lf = load <2 x double>, ptr %i.le, align 16, !tbaa !9
  %i.lg = shufflevector <2 x double> %i.ie, <2 x double> %i.ih, <2 x i32> <i32 1, i32 3>
  %i.lh = fmul <2 x double> %i.lg, %i.lf          ; 2 uses
  %i.li = extractelement <2 x double> %i.lh, i64 0
  %i.lj = fsub double %i.li, %i.ld                ; 2 uses
  %i.lk = fadd double %i.lb, %i.lj                ; 3 uses
  %i.ll = fsub double %i.lk, %i.lb
  %i.lm = fsub double %i.ll, %i.lj
  %i.ln = extractelement <2 x double> %i.lh, i64 1
  %i.lo = fsub double %i.ln, %i.lm                ; 2 uses
  %i.lp = fadd double %i.lk, %i.lo                ; 3 uses
  %i.lq = fsub double %i.lp, %i.lk
  %i.lr = fsub double %i.lq, %i.lo
  %i.ls = load double, ptr %i.cs, align 16, !tbaa !9
  %i.lt = fmul double %i.ho, %i.ls
  %i.lu = fsub double %i.lt, %i.lr                ; 2 uses
  %i.lv = fadd double %i.lp, %i.lu                ; 3 uses
  %i.lw = fsub double %i.lv, %i.lp
  %i.lx = fsub double %i.lw, %i.lu
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !9
  %i.ma = extractelement <2 x double> %i.il, i64 0
  %i.mb = fmul double %i.ma, %i.lz
  %i.mc = fsub double %i.mb, %i.lx                ; 2 uses
  %i.md = fadd double %i.lv, %i.mc                ; 2 uses
  %i.me = fsub double %i.md, %i.lv
  %i.mf = fsub double %i.me, %i.mc
  %i.mg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.mh = load double, ptr %i.mg, align 16, !tbaa !9
  %i.mi = fmul double %i.in, %i.mh
  %i.mj = fsub double %i.mi, %i.mf
  %i.mk = fadd double %i.md, %i.mj
  %i.ml = fdiv double %i.mk, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.ml, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.mm = extractelement <2 x double> %i.cn, i64 0
  %i.mn = fmul double %i.mm, %.080                ; 2 uses
  %i.mo = extractelement <2 x double> %i.cn, i64 1
  %i.mp = fmul double %i.mo, %.080                ; 2 uses
  %i.mq = extractelement <2 x double> %i.cp, i64 1
  %i.mr = fmul double %i.mq, %.080                ; 2 uses
  %i.ms = extractelement <2 x double> %i.il, i64 0 ; 2 uses
  %i.mt = fmul double %i.ms, %i.mp
  %i.mu = call double @llvm.fmuladd.f64(double %i.mn, double %i.ho, double %i.mt)
  %i.mv = call double @llvm.fmuladd.f64(double %i.mr, double %i.in, double %i.mu)
  %i.mw = extractelement <2 x double> %i.cp, i64 0
  %i.mx = fsub double %i.mw, %i.mv
  %i.my = insertelement <2 x double> poison, double %.080, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.na = fmul <2 x double> %i.hg, %i.mz
  %i.nb = fmul double %i.ho, %.080
  %i.nc = fmul <2 x double> %i.ie, %i.mz
  %i.nd = fmul double %i.ms, %.080
  %i.ne = fmul <2 x double> %i.ih, %i.mz
  %i.nf = fmul double %i.in, %.080
  store <2 x double> %i.na, ptr %0, align 8, !tbaa !9
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.nb, ptr %i.ng, align 8, !tbaa !9
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.nh, align 8, !tbaa !9
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.nc, ptr %i.ni, align 8, !tbaa !9
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.nd, ptr %i.nj, align 8, !tbaa !9
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.nk, align 8, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.ne, ptr %i.nl, align 8, !tbaa !9
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.nf, ptr %i.nm, align 8, !tbaa !9
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.nn, align 8, !tbaa !9
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.np = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nr = fmul <2 x double> %i.ie, %i.nq
  %i.ns = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.hg, <2 x double> %i.nr)
  %i.nv = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.nw = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.ih, <2 x double> %i.nu)
  %i.ny = fsub <2 x double> %i.co, %i.nx
  store <2 x double> %i.ny, ptr %i.no, align 8, !tbaa !9
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.mx, ptr %i.nz, align 8, !tbaa !9
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.oa, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_mb(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i64 noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %7 = alloca %"class.Imath_3_2::Matrix33", align 8 ; 12 uses
  %8 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %9 = alloca %"class.Imath_3_2::Vec3", align 8   ; 3 uses
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %3, null                     ; 3 uses
  br i1 %i.h, label %.preheader227, label %.preheader228

bb.d:                                             ; preds = %.preheader227
  %i.i = uitofp i64 %4 to double
  br label %.loopexit229

.preheader227:                                    ; preds = %bb.c, %.preheader227
  %.084244 = phi i64 [ %i.ac, %.preheader227 ], [ 0, %bb.c ] ; 3 uses
  %i.j = phi <2 x double> [ %i.aa, %.preheader227 ], [ zeroinitializer, %bb.c ]
  %i.k = phi <2 x double> [ %i.s, %.preheader227 ], [ zeroinitializer, %bb.c ]
  %i.l = phi <2 x double> [ %i.ab, %.preheader227 ], [ zeroinitializer, %bb.c ]
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.084244 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.084244 ; 2 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !16
  %i.q = load <2 x float>, ptr %i.m, align 4, !tbaa !17
  %i.r = fpext <2 x float> %i.q to <2 x double>
  %i.s = fadd <2 x double> %i.k, %i.r             ; 2 uses
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !17
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !16
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.p, i64 1
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = fadd <2 x double> %i.j, %i.u            ; 2 uses
  %i.ab = fadd <2 x double> %i.l, %i.z            ; 2 uses
  %i.ac = add nuw i64 %.084244, 1                 ; 2 uses
  %exitcond336.not = icmp eq i64 %i.ac, %4
  br i1 %exitcond336.not, label %bb.d, label %.preheader227, !llvm.loop !32

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.081237 = phi double [ %i.aj, %.preheader228 ], [ 0.000000e+00, %bb.c ]
  %.085236 = phi i64 [ %i.bf, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
  %i.ad = phi <2 x double> [ %i.bd, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.ae = phi <2 x double> [ %i.av, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.af = phi <2 x double> [ %i.be, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.085236
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !17
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = fadd double %.081237, %i.ai             ; 2 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !16
  %i.ap = load float, ptr %i.al, align 4, !tbaa !16
  %i.aq = load <2 x float>, ptr %i.ak, align 4, !tbaa !17
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.au = fmul <2 x double> %i.at, %i.ar
  %i.av = fadd <2 x double> %i.ae, %i.au          ; 2 uses
  %i.aw = load <2 x float>, ptr %i.am, align 4, !tbaa !17
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x double> %i.at, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ap, i64 1
  %i.bb = fpext <2 x float> %i.ba to <2 x double>
  %i.bc = fmul <2 x double> %i.at, %i.bb
  %i.bd = fadd <2 x double> %i.ad, %i.ay          ; 2 uses
  %i.be = fadd <2 x double> %i.af, %i.bc          ; 2 uses
  %i.bf = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !33

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.i, %bb.d ], [ %i.aj, %.preheader228 ] ; 2 uses
  %i.bg = phi <2 x double> [ %i.aa, %bb.d ], [ %i.bd, %.preheader228 ]
  %i.bh = phi <2 x double> [ %i.s, %bb.d ], [ %i.av, %.preheader228 ]
  %i.bi = phi <2 x double> [ %i.ab, %bb.d ], [ %i.be, %.preheader228 ]
  %i.bj = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bl, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !9
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.bq = insertelement <2 x double> poison, double %.1, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bs = fdiv <2 x double> %i.bh, %i.br          ; 8 uses
  %i.bt = fdiv <2 x double> %i.bg, %i.br          ; 3 uses
  %i.bu = fdiv <2 x double> %i.bi, %i.br          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.bz = extractelement <2 x double> %i.bu, i64 0
  %i.ca = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.dl, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cb = phi double [ %i.dk, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cc = phi <2 x double> [ %i.dg, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cd = phi <2 x double> [ %i.dh, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.ce = phi <2 x double> [ %i.di, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cf = phi <2 x double> [ %i.dj, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !16
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !16
  %i.cm = load <2 x float>, ptr %i.cj, align 4, !tbaa !17
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fsub <2 x double> %i.cn, %i.bs          ; 4 uses
  %i.cp = load <2 x float>, ptr %i.cg, align 4, !tbaa !17
  %i.cq = fpext <2 x float> %i.cp to <2 x double>
  %i.cr = fsub <2 x double> %i.cq, %i.bt          ; 3 uses
  %i.cs = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cl, i64 1
  %i.cu = fpext <2 x float> %i.ct to <2 x double>
  %i.cv = fsub <2 x double> %i.cu, %i.bu          ; 5 uses
  %i.cw = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, %i.co
  %i.cy = shufflevector <2 x double> %i.cv, <2 x double> %i.co, <2 x i32> <i32 1, i32 2>
  %i.cz = fmul <2 x double> %i.cr, %i.cy
  %i.da = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.db = shufflevector <2 x double> %i.co, <2 x double> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.dc = fmul <2 x double> %i.da, %i.db
  %i.dd = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.dd, %i.co
  %shift = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.cv, %shift
  %i.df = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dg = fadd <2 x double> %i.cx, %i.cc          ; 2 uses
  %i.dh = fadd <2 x double> %i.cz, %i.cd          ; 2 uses
  %i.di = fadd <2 x double> %i.dc, %i.ce          ; 2 uses
  %i.dj = fadd <2 x double> %i.de, %i.cf          ; 2 uses
  %i.dk = fadd double %i.df, %i.cb                ; 2 uses
  %i.dl = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.dl, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !34

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.ff, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.dm = phi double [ %i.fe, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.dn = phi <2 x double> [ %i.fa, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.do = phi <2 x double> [ %i.fb, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dp = phi <2 x double> [ %i.fc, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dq = phi <2 x double> [ %i.fd, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.082261
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !17
  %i.dt = fpext float %i.ds to double             ; 2 uses
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !16
  %i.dx = fpext float %i.dw to double
  %i.dy = fsub double %i.dx, %i.bz
  %i.dz = fmul double %i.dy, %i.dt                ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !16
  %i.ed = fpext float %i.ec to double
  %i.ee = load <2 x float>, ptr %i.ea, align 4, !tbaa !17
  %i.ef = fpext <2 x float> %i.ee to <2 x double>
  %i.eg = fsub <2 x double> %i.ef, %i.bs          ; 3 uses
  %i.eh = load <2 x float>, ptr %i.du, align 4, !tbaa !17
  %i.ei = fpext <2 x float> %i.eh to <2 x double>
  %i.ej = fsub <2 x double> %i.ei, %i.bt
  %i.ek = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.ej, %i.el          ; 3 uses
  %i.en = fsub double %i.ed, %i.ca                ; 3 uses
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %i.eo, %i.eg
  %i.eq = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.er = insertelement <2 x double> %i.eq, double %i.en, i64 0
  %i.es = fmul <2 x double> %i.em, %i.er
  %i.et = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = insertelement <2 x double> %i.eq, double %i.en, i64 1
  %i.ev = fmul <2 x double> %i.et, %i.eu
  %i.ew = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.eg, %i.ex
  %i.ez = fmul double %i.dz, %i.en
  %i.fa = fadd <2 x double> %i.ep, %i.dn          ; 2 uses
  %i.fb = fadd <2 x double> %i.es, %i.do          ; 2 uses
  %i.fc = fadd <2 x double> %i.ev, %i.dp          ; 2 uses
  %i.fd = fadd <2 x double> %i.ey, %i.dq          ; 2 uses
  %i.fe = fadd double %i.ez, %i.dm                ; 2 uses
  %i.ff = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.ff, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !35

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.dk, %.preheader223 ], [ %i.fe, %.preheader225 ]
  %i.fg = phi <2 x double> [ %i.dg, %.preheader223 ], [ %i.fa, %.preheader225 ]
  %i.fh = phi <2 x double> [ %i.dh, %.preheader223 ], [ %i.fb, %.preheader225 ]
  %i.fi = phi <2 x double> [ %i.di, %.preheader223 ], [ %i.fc, %.preheader225 ]
  %i.fj = phi <2 x double> [ %i.dj, %.preheader223 ], [ %i.fd, %.preheader225 ]
  store <2 x double> %i.fg, ptr %6, align 16, !tbaa !9
  store <2 x double> %i.fh, ptr %i.bv, align 16, !tbaa !9
  store <2 x double> %i.fi, ptr %i.bw, align 16, !tbaa !9
  store <2 x double> %i.fj, ptr %i.bx, align 16, !tbaa !9
  store double %storemerge, ptr %i.by, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fl, align 8, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fn, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 16, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fp, align 16, !tbaa !9
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fr, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fu = load double, ptr %i.fn, align 8, !tbaa !9, !noalias !42 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fw = load <4 x double>, ptr %7, align 8, !tbaa !9, !noalias !42 ; 4 uses
  %i.fx = load double, ptr %10, align 8, !tbaa !9, !noalias !42
  %i.fy = load double, ptr %i.fk, align 8, !tbaa !9, !noalias !42
  %i.fz = load <2 x double>, ptr %i.fl, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %i.ga = load double, ptr %i.fm, align 8, !tbaa !9, !noalias !42
  %i.gb = load double, ptr %i.fv, align 16, !tbaa !9, !noalias !43 ; 2 uses
  %i.gc = shufflevector <2 x double> %i.fz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gd = shufflevector <4 x double> %i.fw, <4 x double> %i.gc, <2 x i32> <i32 1, i32 4>
  %i.ge = shufflevector <4 x double> %i.fw, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gf = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = shufflevector <4 x double> %i.fw, <4 x double> %i.gc, <2 x i32> <i32 2, i32 5>
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gj = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gk = insertelement <2 x double> %i.gj, double %i.fy, i64 0 ; 2 uses
  %i.gl = insertelement <2 x double> %i.ge, double %i.fx, i64 1 ; 2 uses
  %i.gm = shufflevector <4 x double> %i.fw, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.gn = insertelement <2 x double> %i.gm, double %i.ga, i64 1 ; 2 uses
  %11 = load double, ptr %i.ft, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %12 = load double, ptr %i.fs, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %i.go = load <2 x double>, ptr %8, align 16, !tbaa !9, !noalias !43 ; 4 uses
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gq = fmul <2 x double> %i.gd, %i.gp
  %i.gr = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.ge, <2 x double> %i.gq)
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.gh, <2 x double> %i.gs) ; 4 uses
  %i.gu = load <2 x double>, ptr %i.gi, align 8, !tbaa !9, !noalias !43 ; 4 uses
  %13 = insertelement <2 x double> poison, double %11, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = shufflevector <2 x double> %i.go, <2 x double> %i.gu, <2 x i32> <i32 1, i32 3>
  %i.gw = fmul <2 x double> %14, %i.gv
  %i.gx = shufflevector <2 x double> %i.go, <2 x double> %i.gu, <2 x i32> <i32 0, i32 2>
  %15 = insertelement <2 x double> poison, double %12, i64 0
  %i.gy = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gy, <2 x double> %i.gw) ; 2 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0
  %i.hb = call double @llvm.fmuladd.f64(double %i.gb, double %i.fu, double %i.ha) ; 3 uses
  %i.hc = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = fmul <2 x double> %i.gk, %i.hc
  %i.he = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.gl, <2 x double> %i.hd)
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !9, !noalias !43 ; 2 uses
  %i.hi = load double, ptr %i.fr, align 16, !tbaa !9, !noalias !43 ; 2 uses
  %i.hj = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x double> %i.gk, %i.hk
  %i.hm = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fmul double %11, %i.hh
  %i.hp = load <2 x double>, ptr %i.fq, align 8, !tbaa !9, !noalias !43 ; 3 uses
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.gn, <2 x double> %i.hf) ; 4 uses
  %i.hs = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.gl, <2 x double> %i.hl)
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.gn, <2 x double> %i.ht) ; 4 uses
  %16 = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.hv = insertelement <2 x double> %16, double %12, i64 1
  %i.hw = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hx = insertelement <2 x double> %i.hw, double %i.ho, i64 1
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.hv, <2 x double> %i.hx) ; 3 uses
  %i.hz = extractelement <2 x double> %i.hy, i64 1
  %i.ia = call double @llvm.fmuladd.f64(double %i.hi, double %i.fu, double %i.hz) ; 3 uses
  %i.ib = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.ib
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.ic = extractelement <2 x double> %i.bs, i64 0
  %i.id = extractelement <2 x double> %i.bs, i64 1
  %i.ie = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.if = extractelement <2 x double> %i.bs, i64 0
  %shift419 = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.iv, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.is, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.iu, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.079286 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !18
  %i.ii = fpext float %i.ih to double
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ik = load <2 x float>, ptr %i.ij, align 4, !tbaa !17
  %i.il = fpext <2 x float> %i.ik to <2 x double> ; 2 uses
  %i.im = fsub double %i.ii, %i.if                ; 2 uses
  %foldExtExtBinop420 = fsub <2 x double> %i.il, %shift419 ; 2 uses
  %foldExtExtBinop422 = fsub <2 x double> %i.il, %i.bu
  %i.in = extractelement <2 x double> %foldExtExtBinop422, i64 1 ; 2 uses
  %foldExtExtBinop424 = fmul <2 x double> %foldExtExtBinop420, %foldExtExtBinop420
  %i.io = extractelement <2 x double> %foldExtExtBinop424, i64 0
  %i.ip = call double @llvm.fmuladd.f64(double %i.im, double %i.im, double %i.io)
  %i.iq = call noundef double @llvm.fmuladd.f64(double %i.in, double %i.in, double %i.ip)
  %i.ir = fsub double %i.iq, %.sroa.8.0284        ; 2 uses
  %i.is = fadd double %.sroa.0110.0285, %i.ir     ; 3 uses
  %i.it = fsub double %i.is, %.sroa.0110.0285
  %i.iu = fsub double %i.it, %i.ir
  %i.iv = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.iv, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !40

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.jt, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.jq, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.js, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.078283
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !17
  %i.iy = fpext float %i.ix to double
  %i.iz = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !18
  %i.jb = fpext float %i.ja to double
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !44
  %i.je = fpext float %i.jd to double
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !16
  %i.jh = fpext float %i.jg to double
  %i.ji = fsub double %i.jb, %i.ic                ; 2 uses
  %i.jj = fsub double %i.je, %i.id                ; 2 uses
  %i.jk = fsub double %i.jh, %i.ie                ; 2 uses
  %i.jl = fmul double %i.jj, %i.jj
  %i.jm = call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double %i.jl)
  %i.jn = call noundef double @llvm.fmuladd.f64(double %i.jk, double %i.jk, double %i.jm)
  %i.jo = fmul double %i.jn, %i.iy
  %i.jp = fsub double %i.jo, %.sroa.8.1281        ; 2 uses
  %i.jq = fadd double %.sroa.0110.1282, %i.jp     ; 3 uses
  %i.jr = fsub double %i.jq, %.sroa.0110.1282
  %i.js = fsub double %i.jr, %i.jp
  %i.jt = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.jt, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !41

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.is, %.preheader220 ], [ %i.jq, %.preheader221 ]
  %i.ju = load <2 x double>, ptr %6, align 16, !tbaa !9
  %i.jv = shufflevector <2 x double> %i.gt, <2 x double> %i.hr, <2 x i32> <i32 0, i32 2>
  %i.jw = fmul <2 x double> %i.jv, %i.ju          ; 2 uses
  %i.jx = extractelement <2 x double> %i.jw, i64 0 ; 2 uses
  %i.jy = fadd double %i.jx, 0.000000e+00         ; 3 uses
  %i.jz = fsub double %i.jy, %i.jx
  %i.ka = extractelement <2 x double> %i.jw, i64 1
  %i.kb = fsub double %i.ka, %i.jz                ; 2 uses
  %i.kc = fadd double %i.jy, %i.kb                ; 3 uses
  %i.kd = fsub double %i.kc, %i.jy
  %i.ke = fsub double %i.kd, %i.kb
  %i.kf = load <2 x double>, ptr %i.bv, align 16, !tbaa !9
  %i.kg = shufflevector <2 x double> %i.hu, <2 x double> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.kh = fmul <2 x double> %i.kg, %i.kf          ; 2 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 0
  %i.kj = fsub double %i.ki, %i.ke                ; 2 uses
  %i.kk = fadd double %i.kc, %i.kj                ; 3 uses
  %i.kl = fsub double %i.kk, %i.kc
  %i.km = fsub double %i.kl, %i.kj
  %i.kn = extractelement <2 x double> %i.kh, i64 1
  %i.ko = fsub double %i.kn, %i.km                ; 2 uses
  %i.kp = fadd double %i.kk, %i.ko                ; 3 uses
  %i.kq = fsub double %i.kp, %i.kk
  %i.kr = fsub double %i.kq, %i.ko
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.kt = load <2 x double>, ptr %i.ks, align 16, !tbaa !9
  %i.ku = shufflevector <2 x double> %i.hr, <2 x double> %i.hu, <2 x i32> <i32 1, i32 3>
  %i.kv = fmul <2 x double> %i.ku, %i.kt          ; 2 uses
  %i.kw = extractelement <2 x double> %i.kv, i64 0
  %i.kx = fsub double %i.kw, %i.kr                ; 2 uses
  %i.ky = fadd double %i.kp, %i.kx                ; 3 uses
  %i.kz = fsub double %i.ky, %i.kp
  %i.la = fsub double %i.kz, %i.kx
  %i.lb = extractelement <2 x double> %i.kv, i64 1
  %i.lc = fsub double %i.lb, %i.la                ; 2 uses
  %i.ld = fadd double %i.ky, %i.lc                ; 3 uses
  %i.le = fsub double %i.ld, %i.ky
  %i.lf = fsub double %i.le, %i.lc
  %i.lg = load double, ptr %i.bx, align 16, !tbaa !9
  %i.lh = fmul double %i.hb, %i.lg
  %i.li = fsub double %i.lh, %i.lf                ; 2 uses
  %i.lj = fadd double %i.ld, %i.li                ; 3 uses
  %i.lk = fsub double %i.lj, %i.ld
  %i.ll = fsub double %i.lk, %i.li
  %i.lm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !9
  %i.lo = extractelement <2 x double> %i.hy, i64 0
  %i.lp = fmul double %i.lo, %i.ln
  %i.lq = fsub double %i.lp, %i.ll                ; 2 uses
  %i.lr = fadd double %i.lj, %i.lq                ; 2 uses
  %i.ls = fsub double %i.lr, %i.lj
  %i.lt = fsub double %i.ls, %i.lq
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.lv = load double, ptr %i.lu, align 16, !tbaa !9
  %i.lw = fmul double %i.ia, %i.lv
  %i.lx = fsub double %i.lw, %i.lt
  %i.ly = fadd double %i.lr, %i.lx
  %i.lz = fdiv double %i.ly, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.lz, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.ma = extractelement <2 x double> %i.bs, i64 0
  %i.mb = fmul double %i.ma, %.080                ; 2 uses
  %i.mc = extractelement <2 x double> %i.bs, i64 1
  %i.md = fmul double %i.mc, %.080                ; 2 uses
  %i.me = extractelement <2 x double> %i.bu, i64 1
  %i.mf = fmul double %i.me, %.080                ; 2 uses
  %i.mg = extractelement <2 x double> %i.hy, i64 0 ; 2 uses
  %i.mh = fmul double %i.mg, %i.md
  %i.mi = call double @llvm.fmuladd.f64(double %i.mb, double %i.hb, double %i.mh)
  %i.mj = call double @llvm.fmuladd.f64(double %i.mf, double %i.ia, double %i.mi)
  %i.mk = extractelement <2 x double> %i.bu, i64 0
  %i.ml = fsub double %i.mk, %i.mj
  %i.mm = insertelement <2 x double> poison, double %.080, i64 0
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mo = fmul <2 x double> %i.gt, %i.mn
  %i.mp = fmul double %i.hb, %.080
  %i.mq = fmul <2 x double> %i.hr, %i.mn
  %i.mr = fmul double %i.mg, %.080
  %i.ms = fmul <2 x double> %i.hu, %i.mn
  %i.mt = fmul double %i.ia, %.080
  store <2 x double> %i.mo, ptr %0, align 8, !tbaa !9
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.mp, ptr %i.mu, align 8, !tbaa !9
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.mv, align 8, !tbaa !9
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.mq, ptr %i.mw, align 8, !tbaa !9
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.mr, ptr %i.mx, align 8, !tbaa !9
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.my, align 8, !tbaa !9
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.ms, ptr %i.mz, align 8, !tbaa !9
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.mt, ptr %i.na, align 8, !tbaa !9
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.nb, align 8, !tbaa !9
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nd = insertelement <2 x double> poison, double %i.md, i64 0
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nf = fmul <2 x double> %i.hr, %i.ne
  %i.ng = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.gt, <2 x double> %i.nf)
  %i.nj = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.hu, <2 x double> %i.ni)
  %i.nm = fsub <2 x double> %i.bt, %i.nl
  store <2 x double> %i.nm, ptr %i.nc, align 8, !tbaa !9
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ml, ptr %i.nn, align 8, !tbaa !9
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.no, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
end_hunk_0
