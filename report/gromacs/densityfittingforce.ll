Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/densityfittingforce?download=true
inline.NumInlined: 383
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::basic_mdspan.6" = type { [8 x i8], %"class.gmx::layout_right::mapping.7", ptr }
%"class.gmx::layout_right::mapping.7" = type { %"class.gmx::extents.8" }
%"class.gmx::extents.8" = type { %"struct.gmx::detail::extents_analyse.9" }
%"struct.gmx::detail::extents_analyse.9" = type { %"struct.gmx::detail::extents_analyse", i64 }
%"struct.gmx::detail::extents_analyse" = type { %"struct.gmx::detail::extents_analyse.3", i64 }
%"struct.gmx::detail::extents_analyse.3" = type { [8 x i8], i64 }
%"class.gmx::BasicVector.0" = type { [3 x i32] }
%"class.gmx::IntegerBox" = type { %"class.gmx::BasicVector.0", %"class.gmx::BasicVector.0" }
%"class.gmx::basic_mdspan.10" = type { [8 x i8], %"class.gmx::layout_right::mapping", ptr }
%"class.gmx::layout_right::mapping" = type { %"class.gmx::extents" }
%"class.gmx::extents" = type { %"struct.gmx::detail::extents_analyse" }

$_ZNSt5arrayIN3gmx19GaussianOn1DLatticeELm3EED2Ev = comdat any

$_ZN3gmx19DensityFittingForce4ImplC2ERKS1_ = comdat any

$_ZNSt6vectorIfSaIfEEaSERKS1_ = comdat any

@_ZN3gmx19DensityFittingForce4ImplC1ERKNS_30GaussianSpreadKernelParameters5ShapeE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx19DensityFittingForce4ImplC2ERKNS_30GaussianSpreadKernelParameters5ShapeE
@_ZN3gmx19DensityFittingForceC1ERKNS_30GaussianSpreadKernelParameters5ShapeE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx19DensityFittingForceC2ERKNS_30GaussianSpreadKernelParameters5ShapeE
@_ZN3gmx19DensityFittingForceD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx19DensityFittingForceD2Ev
@_ZN3gmx19DensityFittingForceC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx19DensityFittingForceC2ERKS0_
@_ZN3gmx19DensityFittingForceC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx19DensityFittingForceC2EOS0_

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DensityFittingForce4ImplC2ERKNS_30GaussianSpreadKernelParameters5ShapeE(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 36)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call { i64, i32 } @_ZNK3gmx30GaussianSpreadKernelParameters5Shape18latticeSpreadRangeEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.fca.0.extract6 = extractvalue { i64, i32 } %i.b, 0
  %.sroa.023.0.extract.trunc = trunc i64 %.fca.0.extract6 to i32 ; 2 uses
  %i.c = tail call { i64, i32 } @_ZNK3gmx30GaussianSpreadKernelParameters5Shape18latticeSpreadRangeEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.fca.0.extract2 = extractvalue { i64, i32 } %i.c, 0
  %.sroa.022.4.extract.shift = lshr i64 %.fca.0.extract2, 32
  %.sroa.022.4.extract.trunc = trunc nuw i64 %.sroa.022.4.extract.shift to i32
  %i.d = tail call { i64, i32 } @_ZNK3gmx30GaussianSpreadKernelParameters5Shape18latticeSpreadRangeEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.fca.1.extract = extractvalue { i64, i32 } %i.d, 1
  store i32 %.sroa.023.0.extract.trunc, ptr %i.a, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %.sroa.022.4.extract.trunc, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %.fca.1.extract, ptr %i.f, align 8, !tbaa !10
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %0, align 8, !tbaa !12
  %i.h = fptrunc double %i.g to float
  tail call void @_ZN3gmx19GaussianOn1DLatticeC1Eif(ptr noundef nonnull align 8 dereferenceable(8) %.ptr, i32 noundef %.sroa.023.0.extract.trunc, float noundef %i.h)
  %.ptr17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.e, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !12
  %i.l = fptrunc double %i.k to float
  invoke void @_ZN3gmx19GaussianOn1DLatticeC1Eif(ptr noundef nonnull align 8 dereferenceable(8) %.ptr17, i32 noundef %i.i, float noundef %i.l)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.ptr18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i32, ptr %i.f, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !12
  %i.p = fptrunc double %i.o to float
  invoke void @_ZN3gmx19GaussianOn1DLatticeC1Eif(ptr noundef nonnull align 8 dereferenceable(8) %.ptr18, i32 noundef %i.m, float noundef %i.p)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %.016.idx = phi i64 [ 56, %bb.b ], [ 48, %bb.a ]
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %.idx = phi i64 [ %.016.idx, %bb.d ], [ %.add, %bb.e ]
  %.add = add nsw i64 %.idx, -8                   ; 3 uses
  %.ptr20 = getelementptr inbounds i8, ptr %0, i64 %.add
  tail call void @_ZN3gmx19GaussianOn1DLatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.ptr20) #14
  %i.t = icmp eq i64 %.add, 40
  br i1 %i.t, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare { i64, i32 } @_ZNK3gmx30GaussianSpreadKernelParameters5Shape18latticeSpreadRangeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3gmx19GaussianOn1DLatticeC1Eif(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, float noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN3gmx19GaussianOn1DLatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayIN3gmx19GaussianOn1DLatticeELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN3gmx19GaussianOn1DLatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN3gmx19GaussianOn1DLatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #14
  tail call void @_ZN3gmx19GaussianOn1DLatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define { <2 x float>, float } @_ZN3gmx19DensityFittingForce4Impl13evaluateForceERKNS_30GaussianSpreadKernelParameters20PositionAndAmplitudeENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan.6") align 8 captures(none) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::BasicVector.0", align 8 ; 8 uses
  %4 = alloca %"class.gmx::IntegerBox", align 4   ; 14 uses
  %5 = alloca %"class.gmx::basic_mdspan.10", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = load ptr, ptr %1, align 8, !tbaa !44, !nonnull !45, !align !46 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !15
  %i.d = tail call float @llvm.rint.f32(float %i.c)
  %i.e = fptosi float %i.d to i32
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !15
  %i.g = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.f)
  %i.h = fptosi <2 x float> %i.g to <2 x i32>
  store <2 x i32> %i.h, ptr %3, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.e, ptr %i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.027.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.228.0.copyload = load i32, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !9
  call void @_ZN3gmx24spreadRangeWithinLatticeERKNS_11BasicVectorIiEENS_7extentsIJLln1ELln1ELln1EEEES1_(ptr dead_on_unwind nonnull writable sret(%"class.gmx::IntegerBox") align 4 %4, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull byval(%"class.gmx::extents.8") align 8 %i.j, i64 %.sroa.027.0.copyload, i32 %.sroa.228.0.copyload)
  %i.l = call noundef zeroext i1 @_ZNK3gmx10IntegerBox5emptyEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  br i1 %i.l, label %bb.e, label %bb.b

.lr.ph114:                                        ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.bl, 0
  %i.n = sub i32 %i.bm, %i.bn
  %6 = sub <2 x i32> %9, %10                      ; 2 uses
  %i.o = sitofp i32 %i.bz to double
  %i.p = fpext float %i.ce to double
  %i.q = fsub double %i.o, %i.p
  %i.r = fmul double %i.bu, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52, !noalias !53
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noalias !53
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !53 ; 2 uses
  %factor.op.mul = mul i64 %i.v, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = extractelement <2 x i32> %6, i64 0
  %i.aa = sext i32 %7 to i64
  %8 = extractelement <2 x i32> %6, i64 1
  %i.ab = sext i32 %8 to i64
  %i.ac = sext i32 %i.cm to i64
  %i.ad = sext i32 %i.n to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.aa
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !54
  %i.ai = fpext float %i.ah to double
  %i.aj = load ptr, ptr %1, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !15
  %i.al = load i32, ptr %3, align 8, !tbaa !10
  %i.am = sitofp i32 %i.al to float
  %i.an = fsub float %i.ak, %i.am
  call void @_ZN3gmx19GaussianOn1DLattice6spreadEdf(ptr noundef nonnull align 8 dereferenceable(8) %i.af, double noundef %i.ai, float noundef %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %1, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !15
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.at = sitofp i32 %i.as to float
  %i.au = fsub float %i.ar, %i.at
  call void @_ZN3gmx19GaussianOn1DLattice6spreadEdf(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, double noundef 1.000000e+00, float noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %1, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !15
  %i.az = load i32, ptr %i.i, align 8, !tbaa !10
  %i.ba = sitofp i32 %i.az to float
  %i.bb = fsub float %i.ay, %i.ba
  call void @_ZN3gmx19GaussianOn1DLattice6spreadEdf(ptr noundef nonnull align 8 dereferenceable(8) %i.av, double noundef 1.000000e+00, float noundef %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = call { ptr, ptr } @_ZN3gmx19GaussianOn1DLattice4viewEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.be, 0
  %i.bg = extractvalue { ptr, ptr } %i.be, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = call { ptr, ptr } @_ZN3gmx19GaussianOn1DLattice4viewEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1
  call void @_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_(ptr dead_on_unwind nonnull writable sret(%"class.gmx::basic_mdspan.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr %i.bf, ptr %i.bg, ptr %i.bj, ptr %i.bk)
  %i.bl = call { ptr, ptr } @_ZN3gmx19GaussianOn1DLattice4viewEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %9 = load <2 x i32>, ptr %i.k, align 8, !tbaa !10
  %10 = load <2 x i32>, ptr %3, align 8, !tbaa !10
  %i.bm = load i32, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !10
  %i.bn = load i32, ptr %i.i, align 8, !tbaa !10
  %i.bo = load <2 x double>, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.bp = fmul <2 x double> %i.bo, %i.bo
  %i.bq = fdiv <2 x double> splat (double 1.000000e+00), %i.bp ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !12 ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = fdiv double 1.000000e+00, %i.bt         ; 2 uses
  %i.bv = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox5beginEv(ptr noundef nonnull align 4 dereferenceable(24) %4) ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !10, !noalias !55
  %i.bx = sitofp <2 x i32> %i.bw to <2 x double>
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !10, !noalias !55
  %i.ca = load ptr, ptr %1, align 8, !tbaa !44, !nonnull !45, !align !46 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !15, !noalias !56
  %i.cc = fpext <2 x float> %i.cb to <2 x double>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !15, !noalias !56
  %i.cf = fsub <2 x double> %i.bx, %i.cc          ; 2 uses
  %i.cg = extractelement <2 x double> %i.bq, i64 0
  %foldExtExtBinop = fmul <2 x double> %i.bq, %i.cf
  %i.ch = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ci = extractelement <2 x double> %i.bq, i64 1
  %foldExtExtBinop138 = fmul <2 x double> %i.bq, %i.cf
  %i.cj = extractelement <2 x double> %foldExtExtBinop138, i64 1
  %i.ck = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox5beginEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !10 ; 2 uses
  %i.cn = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox3endEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !10
  %i.cq = icmp slt i32 %i.cm, %i.cp
  br i1 %i.cq, label %.lr.ph114, label %._crit_edge115

._crit_edge115.loopexit:                          ; preds = %._crit_edge104
  %i.cr = fptrunc <2 x double> %i.dl to <2 x float>
  %i.cs = fptrunc double %.sroa.10.1.lcssa to float
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %bb.b
  %.sroa.10.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %i.cs, %._crit_edge115.loopexit ]
  %i.cu = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.ct, %._crit_edge115.loopexit ]
  %i.cv = load float, ptr %i.ag, align 8, !tbaa !15 ; 2 uses
  %i.cw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cx = fmul float %i.cv, %.sroa.10.0.lcssa
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.cy, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph114, %._crit_edge104
  %indvars.iv126 = phi i64 [ %i.ac, %.lr.ph114 ], [ %indvars.iv.next127, %._crit_edge104 ] ; 3 uses
  %.sroa.10.0109 = phi double [ 0.000000e+00, %.lr.ph114 ], [ %.sroa.10.1.lcssa, %._crit_edge104 ] ; 2 uses
  %.sroa.11.0108 = phi double [ %i.r, %.lr.ph114 ], [ %i.dm, %._crit_edge104 ] ; 2 uses
  %i.da = phi <2 x double> [ zeroinitializer, %.lr.ph114 ], [ %i.dl, %._crit_edge104 ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv126
  %i.db = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.reass
  %i.dc = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox5beginEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !10 ; 2 uses
  %i.df = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox3endEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !10
  %i.di = icmp slt i32 %i.de, %i.dh
  br i1 %i.di, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.c
  %i.dj = add nsw i64 %indvars.iv126, %i.ad
  %i.dk = sext i32 %i.de to i64
  br label %bb.d

._crit_edge104:                                   ; preds = %._crit_edge, %bb.c
  %.sroa.10.1.lcssa = phi double [ %.sroa.10.0109, %bb.c ], [ %.sroa.10.2.lcssa, %._crit_edge ] ; 2 uses
  %i.dl = phi <2 x double> [ %i.da, %bb.c ], [ %i.ej, %._crit_edge ] ; 2 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 2 uses
  %i.dm = fadd double %i.bu, %.sroa.11.0108
  %i.dn = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox3endEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !10
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next127, %i.dq
  br i1 %i.dr, label %bb.c, label %._crit_edge115.loopexit, !llvm.loop !39

bb.d:                                             ; preds = %.lr.ph103, %._crit_edge
  %indvars.iv123 = phi i64 [ %i.dk, %.lr.ph103 ], [ %indvars.iv.next124, %._crit_edge ] ; 3 uses
  %.sroa.10.198 = phi double [ %.sroa.10.0109, %.lr.ph103 ], [ %.sroa.10.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.7.097 = phi double [ %i.cj, %.lr.ph103 ], [ %i.ek, %._crit_edge ] ; 2 uses
  %i.ds = phi <2 x double> [ %i.da, %.lr.ph103 ], [ %i.ej, %._crit_edge ] ; 2 uses
  %i.dt = mul nsw i64 %i.x, %indvars.iv123
  %i.du = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dt
  %i.dv = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.dw = load i64, ptr %i.z, align 8
  %i.dx = mul nsw i64 %i.dw, %i.dj
  %i.dy = getelementptr [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv123
  %i.ea = getelementptr [4 x i8], ptr %i.dz, i64 %i.ab
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !15
  %i.ec = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox5beginEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.ee = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox3endEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !10
  %i.eg = icmp slt i32 %i.ed, %i.ef
  br i1 %i.eg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.eh = sext i32 %i.ed to i64
  %i.ei = insertelement <2 x double> poison, double %.sroa.7.097, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.sroa.10.2.lcssa = phi double [ %.sroa.10.198, %bb.d ], [ %i.fd, %.lr.ph ] ; 2 uses
  %i.ej = phi <2 x double> [ %i.ds, %bb.d ], [ %i.fc, %.lr.ph ] ; 2 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.ek = fadd double %i.ci, %.sroa.7.097
  %i.el = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox3endEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !10
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next124, %i.eo
  br i1 %i.ep, label %bb.d, label %._crit_edge104, !llvm.loop !40

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.eh, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.sroa.10.291 = phi double [ %.sroa.10.198, %.lr.ph.preheader ], [ %i.fd, %.lr.ph ]
  %.sroa.057.090 = phi double [ %i.ch, %.lr.ph.preheader ], [ %i.fe, %.lr.ph ] ; 2 uses
  %i.eq = phi <2 x double> [ %i.ds, %.lr.ph.preheader ], [ %i.fc, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.er = load float, ptr %gep, align 4, !tbaa !15
  %i.es = fmul float %i.eb, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.eu = load float, ptr %i.et, align 4, !tbaa !15
  %i.ev = fmul float %i.es, %i.eu
  %i.ew = fpext float %i.ev to double             ; 2 uses
  %i.ex = insertelement <2 x double> %i.ei, double %.sroa.057.090, i64 1
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.ex, %i.ez
  %i.fb = fmul double %.sroa.11.0108, %i.ew
  %i.fc = fadd <2 x double> %i.eq, %i.fa          ; 2 uses
  %i.fd = fadd double %.sroa.10.291, %i.fb        ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fe = fadd double %i.cg, %.sroa.057.090
  %i.ff = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox3endEv(ptr noundef nonnull align 4 dereferenceable(24) %4)
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !10
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !41

bb.e:                                             ; preds = %bb.a, %._crit_edge115
  %.sroa.083.0 = phi <2 x float> [ %i.cz, %._crit_edge115 ], [ zeroinitializer, %bb.a ]
  %.sroa.485.0 = phi float [ %i.cx, %._crit_edge115 ], [ 0.000000e+00, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.083.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.485.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

declare void @_ZN3gmx24spreadRangeWithinLatticeERKNS_11BasicVectorIiEENS_7extentsIJLln1ELln1ELln1EEEES1_(ptr dead_on_unwind writable sret(%"class.gmx::IntegerBox") align 4, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef byval(%"class.gmx::extents.8") align 8, i64, i32) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK3gmx10IntegerBox5emptyEv(ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3gmx19GaussianOn1DLattice6spreadEdf(ptr noundef nonnull align 8 dereferenceable(8), double noundef, float noundef) local_unnamed_addr #2

declare void @_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_(ptr dead_on_unwind writable sret(%"class.gmx::basic_mdspan.10") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr, ptr, ptr, ptr) local_unnamed_addr #2

declare { ptr, ptr } @_ZN3gmx19GaussianOn1DLattice4viewEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox5beginEv(ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(12) ptr @_ZNK3gmx10IntegerBox3endEv(ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #10

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DensityFittingForceC2ERKNS_30GaussianSpreadKernelParameters5ShapeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #15 ; 3 uses
  invoke void @_ZN3gmx19DensityFittingForce4ImplC1ERKNS_30GaussianSpreadKernelParameters5ShapeE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define { <2 x float>, float } @_ZN3gmx19DensityFittingForce13evaluateForceERKNS_30GaussianSpreadKernelParameters20PositionAndAmplitudeENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS6_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan.6") align 8 captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = tail call { <2 x float>, float } @_ZN3gmx19DensityFittingForce4Impl13evaluateForceERKNS_30GaussianSpreadKernelParameters20PositionAndAmplitudeENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull byval(%"class.gmx::basic_mdspan.6") align 8 %2)
end_hunk_0
