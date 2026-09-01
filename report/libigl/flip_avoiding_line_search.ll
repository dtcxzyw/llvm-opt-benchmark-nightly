Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/flip_avoiding_line_search?download=true
inline.NumInlined: 420
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { ptr, i64, i64 }
%"class.Eigen::CwiseBinaryOp" = type <{ ptr, ptr, [8 x i8] }>
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$__clang_call_terminate = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_S9_EEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 1, 4) i32 @_ZN3igl13flip_avoiding7SolveP3ERSt6vectorIdSaIdEEddd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul double %3, 2.700000e+01
  %i.b = fmul double %1, %1                       ; 2 uses
  %i.c = fmul double %2, -9.000000e+00
  %i.d = tail call double @llvm.fmuladd.f64(double %i.b, double 2.000000e+00, double %i.c)
  %i.e = insertelement <2 x double> poison, double %1, i64 0
  %i.f = insertelement <2 x double> %i.e, double %2, i64 1
  %i.g = insertelement <2 x double> <double poison, double -3.000000e+00>, double %i.d, i64 0
  %i.h = insertelement <2 x double> poison, double %i.a, i64 0
  %i.i = insertelement <2 x double> %i.h, double %i.b, i64 1
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.g, <2 x double> %i.i)
  %i.k = fdiv <2 x double> %i.j, <double 5.400000e+01, double 9.000000e+00> ; 5 uses
  %i.l = extractelement <2 x double> %i.k, i64 1  ; 4 uses
  %i.m = fmul double %i.l, %i.l
  %i.n = insertelement <2 x double> %i.k, double %i.m, i64 1
  %i.o = fmul <2 x double> %i.k, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.q = extractelement <2 x double> %i.o, i64 1  ; 3 uses
  %i.r = fcmp olt double %i.p, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = tail call double @sqrt(double noundef %i.q) #18
  %i.t = extractelement <2 x double> %i.k, i64 0
  %i.u = fdiv double %i.t, %i.s                   ; 2 uses
  %i.v = fcmp olt double %i.u, -1.000000e+00
  %spec.store.select = select i1 %i.v, double -1.000000e+00, double %i.u ; 2 uses
  %i.w = fcmp ogt double %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.w, double 1.000000e+00, double %spec.store.select
  %4 = fdiv double %1, -3.000000e+00              ; 2 uses
  %i.x = tail call double @acos(double noundef %spec.store.select1) #18 ; 2 uses
  %i.y = tail call double @sqrt(double noundef %i.l) #18
  %5 = fmul double %i.y, -2.000000e+00            ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.x, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fadd <2 x double> %i.aa, <double -0.000000e+00, double f0x401921FB54442D18>
  %i.ac = fdiv <2 x double> %i.ab, splat (double 3.000000e+00) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = tail call double @cos(double noundef %i.ad) #18
  %i.af = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ag = extractelement <2 x double> %i.ac, i64 1
  %i.ah = tail call double @cos(double noundef %i.ag) #18
  %i.ai = insertelement <2 x double> poison, double %5, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ah, i64 1
  %i.am = insertelement <2 x double> poison, double %4, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.an)
  store <2 x double> %i.ao, ptr %i.af, align 8, !tbaa !13
  %i.ap = fadd double %i.x, f0xC01921FB54442D18
  %i.aq = fdiv double %i.ap, 3.000000e+00
  %i.ar = tail call double @cos(double noundef %i.aq) #18
  %i.as = tail call double @llvm.fmuladd.f64(double %5, double %i.ar, double %4)
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store double %i.as, ptr %i.at, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.au = extractelement <2 x double> %i.k, i64 0 ; 2 uses
  %i.av = tail call double @llvm.fabs.f64(double %i.au)
  %i.aw = fsub double %i.p, %i.q
  %i.ax = tail call double @sqrt(double noundef %i.aw) #18
  %i.ay = fadd double %i.av, %i.ax
  %i.az = tail call double @pow(double noundef %i.ay, double noundef f0x3FD5555555555555) #18 ; 3 uses
  %i.ba = fneg double %i.az
  %i.bb = fcmp olt double %i.au, 0.000000e+00
  %.058 = select i1 %i.bb, double %i.az, double %i.ba ; 3 uses
  %i.bc = fcmp oeq double %i.az, 0.000000e+00
  %i.bd = fdiv double %i.l, %.058
  %i.be = select i1 %i.bc, double 0.000000e+00, double %i.bd ; 2 uses
  %i.bf = fdiv double %1, 3.000000e+00            ; 2 uses
  %i.bg = fadd double %.058, %i.be                ; 2 uses
  %i.bh = fsub double %i.bg, %i.bf
  %i.bi = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  store double %i.bh, ptr %i.bi, align 8, !tbaa !13
  %i.bj = fneg double %i.bf
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bg, double -5.000000e-01, double %i.bj) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store double %i.bk, ptr %i.bl, align 8, !tbaa !13
  %i.bm = fsub double %.058, %i.be
  %i.bn = fmul double %i.bm, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bp = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bq = fcmp olt double %i.bp, f0x3D06849B86A12B9B ; 2 uses
  %spec.store.select61 = select i1 %i.bq, double %i.bk, double %i.bn
  store double %spec.store.select61, ptr %i.bo, align 8
  %spec.select = select i1 %i.bq, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 3, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef double @llvm.fabs.f64(double %0)
  %i.b = fcmp ogt double %i.a, 1.000000e-10
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double @pow(double noundef %1, double noundef 2.000000e+00) #18
  %i.d = fmul nnan double %0, -4.000000e+00
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double %2, double %i.c) ; 2 uses
  %i.f = fcmp ugt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @sqrt(double noundef %i.e) #18 ; 2 uses
  %i.h = fcmp ult double %1, 0.000000e+00
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = fneg double %1
  %i.j = fsub double %i.i, %i.g                   ; 2 uses
  %i.k = fmul double %2, 2.000000e+00
  %i.l = fmul nnan double %0, 2.000000e+00
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  %i.o = insertelement <2 x double> poison, double %i.k, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.j, i64 1
  %i.q = fdiv <2 x double> %i.p, %i.n
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = fsub double %i.g, %1                     ; 2 uses
  %i.s = fmul nnan double %0, 2.000000e+00
  %i.t = fmul double %2, 2.000000e+00
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.r, i64 1
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.t, i64 1
  %i.y = fdiv <2 x double> %i.x, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi <2 x double> [ %i.y, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.aa = fcmp olt double %0, 0.000000e+00        ; 2 uses
  %i.ab = extractelement <2 x double> %i.z, i64 0 ; 2 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %.1 = select i1 %i.aa, double %i.ac, double %i.ab ; 2 uses
  %i.ad = fcmp ogt double %.1, 0.000000e+00
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.0 = select i1 %i.aa, double %i.ab, double %i.ac ; 2 uses
  %i.ae = fcmp ogt double %.0, 0.000000e+00
  %i.af = select i1 %i.ae, double %.0, double %.1
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.ag = fcmp oeq double %1, 0.000000e+00
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = fneg double %2
  %i.ai = fdiv double %i.ah, %1                   ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  %i.ak = select i1 %i.aj, double %i.ai, double +inf
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.b, %bb.f, %bb.g, %bb.i
  %.2 = phi double [ %i.ak, %bb.i ], [ +inf, %bb.f ], [ +inf, %bb.b ], [ %i.af, %bb.g ], [ +inf, %bb.h ]
  ret double %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_2DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr [4 x i8], ptr %i.b, i64 %i.a ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %.idx = shl i64 %i.f, 3
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %i.k = sext i32 %i.e to i64                     ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  %i.q = sext i32 %i.h to i64                     ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.l, i64 %i.q ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.o
  %i.t = sext i32 %i.j to i64                     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %i.t ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.o
  %i.w = load ptr, ptr %2, align 8, !tbaa !21     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.k ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !tbaa !23   ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.z
  %i.ad = getelementptr [8 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load double, ptr %i.y, align 8, !tbaa !13 ; 4 uses
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !13 ; 4 uses
  %i.ah = load double, ptr %i.aa, align 8, !tbaa !13 ; 4 uses
  %i.ai = load double, ptr %i.ab, align 8, !tbaa !13 ; 3 uses
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fmul double %i.ah, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ag, double %i.ak)
  %i.am = load double, ptr %i.ae, align 8, !tbaa !13 ; 4 uses
  %i.an = fneg double %i.af
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.am, double %i.al)
  %i.ap = load double, ptr %i.ad, align 8, !tbaa !13 ; 4 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ap, double %i.ao)
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.am, double %i.aq)
  %i.as = fneg double %i.ag
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ap, double %i.ar) ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN3igl13flip_avoiding19get_min_pos_root_2DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i:bb.a
  %i.bl = fmul double %i.av, %i.az
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.ah, double %i.bk)
  %i.bn = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.au, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bb, i64 1
  %i.br = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bl, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bq, <2 x double> %i.bs)
  %i.bu = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bc, i64 1
  %i.bw = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.be, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bx, <2 x double> %i.bt)
  %i.bz = insertelement <2 x double> poison, double %i.bg, i64 0 ; 2 uses
  %i.ca = insertelement <2 x double> %i.bz, double %i.av, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bd, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> %i.by)
  %i.ce = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.ay, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.be, i64 1 ; 2 uses
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.ch, <2 x double> %i.cd)
  %i.cj = shufflevector <2 x double> %i.ch, <2 x double> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.ck = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.bd, i64 1
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cl, <2 x double> %i.ci) ; 6 uses
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.at)
  %i.co = fcmp ogt double %i.cn, 1.000000e-10
  br i1 %i.co, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.cp = extractelement <2 x double> %i.cm, i64 0 ; 3 uses
  %i.cq = tail call noundef double @pow(double noundef %i.cp, double noundef 2.000000e+00) #18
  %i.cr = fmul nnan double %i.at, -4.000000e+00
  %i.cs = extractelement <2 x double> %i.cm, i64 1 ; 2 uses
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cq) ; 2 uses
  %i.cu = fcmp ugt double %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.c, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.c:                                             ; preds = %bb.b
  %i.cv = tail call double @sqrt(double noundef %i.ct) #18 ; 2 uses
  %i.cw = fcmp ult double %i.cp, 0.000000e+00
  br i1 %i.cw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cx = fneg double %i.cp
  %i.cy = fsub double %i.cx, %i.cv                ; 2 uses
  %i.cz = fmul double %i.cs, 2.000000e+00
  %i.da = fmul nnan double %i.at, 2.000000e+00
  %i.db = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cy, i64 1
  %i.df = fdiv <2 x double> %i.de, %i.dc
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dg = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.cv, i64 0 ; 2 uses
  %i.dh = fsub <2 x double> %i.dg, %i.cm          ; 2 uses
  %i.di = fmul <2 x double> %i.dg, %i.cm
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = fmul nnan double %i.at, 2.000000e+00
  %i.dl = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 0
  %i.dn = fdiv <2 x double> %i.dj, %i.dm
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.do = phi <2 x double> [ %i.dn, %bb.e ], [ %i.df, %bb.d ] ; 2 uses
  %i.dp = fcmp olt double %i.at, 0.000000e+00     ; 2 uses
  %i.dq = extractelement <2 x double> %i.do, i64 0 ; 2 uses
  %i.dr = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %.1.i = select i1 %i.dp, double %i.dr, double %i.dq ; 2 uses
  %i.ds = fcmp ogt double %.1.i, 0.000000e+00
  br i1 %i.ds, label %bb.g, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.g:                                             ; preds = %bb.f
  %.0.i = select i1 %i.dp, double %i.dq, double %i.dr ; 2 uses
  %i.dt = fcmp ogt double %.0.i, 0.000000e+00
  %i.du = select i1 %i.dt, double %.0.i, double %.1.i
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.h:                                             ; preds = %bb.a
  %i.dv = extractelement <2 x double> %i.cm, i64 0 ; 2 uses
  %i.dw = fcmp oeq double %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = extractelement <2 x double> %i.cm, i64 1
  %i.dy = fneg double %i.dx
  %i.dz = fdiv double %i.dy, %i.dv                ; 2 uses
  %i.ea = fcmp ogt double %i.dz, 0.000000e+00
  %i.eb = select i1 %i.ea, double %i.dz, double +inf
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit: ; preds = %bb.b, %bb.f, %bb.g, %bb.h, %bb.i
  %.2.i = phi double [ %i.eb, %bb.i ], [ +inf, %bb.f ], [ +inf, %bb.b ], [ %i.du, %bb.g ], [ +inf, %bb.h ]
  ret double %.2.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_3DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = sext i32 %3 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr [4 x i8], ptr %i.b, i64 %i.a ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = load i64, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.g = getelementptr [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %.idx = shl i64 %i.f, 3
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %.idx662 = mul i64 %i.f, 12
  %i.k = getelementptr i8, ptr %i.d, i64 %.idx662
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = sext i32 %i.e to i64                     ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.m ; 3 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23   ; 5 uses
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = shl nsw i64 %i.q, 1                      ; 4 uses
  %i.t = getelementptr [8 x i8], ptr %i.p, i64 %i.s
  %i.u = sext i32 %i.h to i64                     ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.n, i64 %i.u ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.q
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.s
  %i.y = sext i32 %i.j to i64                     ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.n, i64 %i.y ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.q
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.s
  %i.ac = sext i32 %i.l to i64                    ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.n, i64 %i.ac ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.q
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.s
  %i.ag = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.m ; 3 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23 ; 5 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = shl nsw i64 %i.aj, 1                    ; 4 uses
  %i.am = getelementptr [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr [8 x i8], ptr %i.ag, i64 %i.u ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.aj
  %i.ap = getelementptr [8 x i8], ptr %i.an, i64 %i.al
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %i.y ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.aj
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.al
  %i.at = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aj
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.al
  %i.aw = load double, ptr %i.ai, align 8, !tbaa !13 ; 7 uses
  %i.ax = load double, ptr %i.ao, align 8, !tbaa !13 ; 8 uses
  %i.ay = fmul double %i.aw, %i.ax                ; 3 uses
  %i.az = load double, ptr %i.as, align 8, !tbaa !13 ; 12 uses
  %i.ba = load double, ptr %i.ap, align 8, !tbaa !13 ; 8 uses
  %i.bb = fmul double %i.aw, %i.ba                ; 4 uses
  %i.bc = load double, ptr %i.ar, align 8, !tbaa !13 ; 11 uses
  %i.bd = fneg double %i.bc                       ; 5 uses
  %i.be = fmul double %i.bb, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %i.be)
  %i.bg = load double, ptr %i.ak, align 8, !tbaa !13 ; 7 uses
  %i.bh = load double, ptr %i.an, align 8, !tbaa !13 ; 7 uses
  %i.bi = fmul double %i.bg, %i.bh                ; 2 uses
  %i.bj = fneg double %i.bi                       ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.az, double %i.bf)
  %i.bl = fmul double %i.ba, %i.bg                ; 3 uses
  %i.bm = load double, ptr %i.aq, align 8, !tbaa !13 ; 11 uses
  %i.bn = load double, ptr %i.am, align 8, !tbaa !13 ; 8 uses
  %i.bo = fmul double %i.bh, %i.bn                ; 3 uses
  %i.bp = fmul double %i.ax, %i.bn                ; 3 uses
  %i.bq = fneg double %i.bp                       ; 2 uses
  %i.br = load double, ptr %i.av, align 8, !tbaa !13 ; 19 uses
  %i.bs = fneg double %i.ay                       ; 2 uses
  %i.bt = load double, ptr %i.au, align 8, !tbaa !13 ; 19 uses
  %i.bu = load double, ptr %i.at, align 8, !tbaa !13 ; 17 uses
  %i.bv = fneg double %i.bl                       ; 2 uses
  %i.bw = fneg double %i.bo
  %i.bx = fneg double %i.az                       ; 5 uses
  %i.by = fmul double %i.bm, %i.bn                ; 2 uses
  %i.bz = fmul double %i.bn, %i.bd                ; 2 uses
  %i.ca = fmul double %i.bh, %i.bd                ; 2 uses
  %i.cb = fmul double %i.az, %i.bh                ; 2 uses
  %i.cc = fmul double %i.ax, %i.bm                ; 2 uses
  %i.cd = fmul double %i.ax, %i.bx                ; 2 uses
  %i.ce = load double, ptr %i.z, align 8, !tbaa !13 ; 8 uses
  %i.cf = load double, ptr %i.v, align 8, !tbaa !13 ; 4 uses
  %i.cg = fmul double %i.bg, %i.cf                ; 4 uses
  %i.ch = fmul double %i.cg, %i.bx
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.ce, double %i.ch)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.ce, double %i.ci)
  %i.ck = load double, ptr %i.p, align 8, !tbaa !13 ; 6 uses
  %i.cl = fmul double %i.ax, %i.ck                ; 3 uses
  %i.cm = fmul double %i.ba, %i.ck                ; 3 uses
  %i.cn = fneg double %i.cm                       ; 2 uses
  %i.co = load double, ptr %i.aa, align 8, !tbaa !13 ; 10 uses
  %i.cp = fneg double %i.bb
  %i.cq = load double, ptr %i.w, align 8, !tbaa !13 ; 6 uses
  %i.cr = fmul double %i.aw, %i.cq                ; 3 uses
  %i.cs = load double, ptr %i.r, align 8, !tbaa !13 ; 6 uses
  %i.ct = fmul double %i.bh, %i.cs                ; 3 uses
  %i.cu = fneg double %i.ct                       ; 2 uses
  %i.cv = load double, ptr %i.ab, align 8, !tbaa !13 ; 9 uses
  %i.cw = load double, ptr %i.x, align 8, !tbaa !13 ; 6 uses
  %i.cx = fmul double %i.aw, %i.cw                ; 3 uses
  %i.cy = fneg double %i.cx                       ; 2 uses
  %i.cz = fmul double %i.bg, %i.cw                ; 3 uses
  %i.da = load double, ptr %i.t, align 8, !tbaa !13 ; 5 uses
  %i.db = fmul double %i.bh, %i.da                ; 3 uses
  %i.dc = load double, ptr %i.ad, align 8, !tbaa !13 ; 16 uses
  %i.dd = fneg double %i.cl                       ; 2 uses
  %i.de = load double, ptr %i.ae, align 8, !tbaa !13 ; 16 uses
  %i.df = fneg double %i.cr                       ; 2 uses
  %i.dg = load double, ptr %i.af, align 8, !tbaa !13 ; 13 uses
  %i.dh = fneg double %i.cz                       ; 2 uses
  %i.di = fneg double %i.db                       ; 2 uses
  %i.dj = fmul double %i.bn, %i.ce                ; 2 uses
  %i.dk = fmul double %i.bc, %i.ck                ; 2 uses
  %i.dl = fmul double %i.ck, %i.bx                ; 2 uses
  %i.dm = fmul double %i.aw, %i.co                ; 2 uses
  %i.dn = fneg double %i.cv                       ; 4 uses
  %i.do = fmul double %i.bg, %i.cv                ; 2 uses
  %i.dp = fmul double %i.da, %i.bd                ; 2 uses
  %i.dq = fmul double %i.cq, %i.bx                ; 2 uses
  %i.dr = fneg double %i.cg
  %5 = fmul double %i.ck, %i.dn                   ; 2 uses
  %6 = fmul double %i.cq, %i.dn
  %i.ds = fmul double %i.co, %i.cw
  %i.dt = insertelement <2 x double> poison, double %i.ce, i64 0 ; 3 uses
  %i.du = insertelement <2 x double> %i.dt, double %i.bm, i64 1 ; 2 uses
  %i.dv = fneg <2 x double> %i.du                 ; 5 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 1 ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %i.aw, i64 0 ; 2 uses
  %i.dy = insertelement <2 x double> %i.dx, double %i.ax, i64 1
  %i.dz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.da, i64 1
  %i.eb = fmul <2 x double> %i.dy, %i.ea          ; 3 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.ed = fneg double %i.ec                       ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.df, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.bm, i64 0 ; 2 uses
  %i.eh = insertelement <2 x double> %i.eg, double %i.br, i64 1 ; 2 uses
  %i.ei = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.ej = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.bw, i64 1 ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.bc, i64 0 ; 2 uses
  %i.em = insertelement <2 x double> %i.el, double %i.de, i64 1
  %i.en = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.eo = insertelement <2 x double> %i.eg, double %i.bu, i64 1
  %i.ep = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ct, i64 1
  %i.er = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.et = insertelement <2 x double> poison, double %i.bt, i64 0 ; 4 uses
  %i.eu = insertelement <2 x double> %i.et, double %i.bu, i64 1 ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %i.bi, i64 0 ; 2 uses
  %i.ew = insertelement <2 x double> %i.ev, double %i.bs, i64 1
  %i.ex = insertelement <2 x double> poison, double %i.br, i64 0 ; 3 uses
  %i.ey = insertelement <2 x double> %i.ex, double %i.dg, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.cx, i64 1
  %i.fb = insertelement <2 x double> poison, double %i.bu, i64 0 ; 4 uses
  %i.fc = insertelement <2 x double> %i.fb, double %i.bt, i64 1
  %i.fd = shufflevector <2 x double> %i.ek, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2>
  %i.fe = insertelement <2 x double> %i.et, double %i.dg, i64 1
  %i.ff = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.dh, i64 1
  %i.fh = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x double> %i.ex, double %i.bt, i64 1
  %i.fj = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fm = insertelement <2 x double> %i.fl, double %i.az, i64 1
  %i.fn = fmul <2 x double> %i.fk, %i.fm          ; 3 uses
  %i.fo = insertelement <2 x double> %i.ex, double %i.dc, i64 1
  %i.fp = extractelement <2 x double> %i.fn, i64 1
  %i.fq = fmul double %i.ba, %i.dw                ; 2 uses
  %i.fr = insertelement <2 x double> poison, double %i.co, i64 0 ; 2 uses
  %i.fs = insertelement <2 x double> %i.fr, double %i.ce, i64 1 ; 2 uses
  %i.ft = fneg <2 x double> %i.fs                 ; 4 uses
  %i.fu = extractelement <2 x double> %i.dv, i64 0 ; 2 uses
  %i.fv = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.bg, i64 1
  %i.fx = insertelement <2 x double> %i.fl, double %i.bc, i64 0
  %i.fy = fmul <2 x double> %i.fw, %i.fx          ; 3 uses
  %i.fz = insertelement <2 x double> %i.fb, double %i.br, i64 1
  %i.ga = extractelement <2 x double> %i.eb, i64 0
  %i.gb = extractelement <2 x double> %i.ft, i64 0
  %i.gc = fmul double %i.bn, %i.gb                ; 2 uses
  %i.gd = fmul double %i.cs, %i.dw                ; 2 uses
  %i.ge = fmul double %i.ba, %i.fu                ; 2 uses
  %i.gf = insertelement <2 x double> poison, double %i.cs, i64 0 ; 2 uses
  %i.gg = insertelement <2 x double> %i.gf, double %i.cf, i64 1 ; 2 uses
  %i.gh = insertelement <2 x double> %i.dv, double %i.bd, i64 1
  %i.gi = fmul <2 x double> %i.gg, %i.gh          ; 3 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 1
  %i.gk = insertelement <2 x double> poison, double %i.cf, i64 0 ; 3 uses
  %i.gl = insertelement <2 x double> %i.gk, double %i.bh, i64 1 ; 2 uses
  %i.gm = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.gl, %i.gm          ; 3 uses
  %i.go = extractelement <2 x double> %i.gn, i64 1
  %i.gp = insertelement <2 x double> poison, double %i.cq, i64 0 ; 2 uses
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x double> %i.du, %i.gq          ; 3 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 1
  %i.gt = insertelement <2 x double> poison, double %i.cv, i64 0 ; 3 uses
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <2 x double> %i.gl, %i.gu          ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 1
  %i.gx = insertelement <2 x double> poison, double %i.cw, i64 0 ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x double> %i.gy, %i.dv          ; 2 uses
  %i.ha = insertelement <2 x double> %i.dt, double %i.bc, i64 1
  %i.hb = insertelement <2 x double> poison, double %i.da, i64 0 ; 2 uses
  %i.hc = insertelement <2 x double> %i.hb, double %i.cw, i64 1 ; 2 uses
  %i.hd = fmul <2 x double> %i.ha, %i.hc          ; 3 uses
  %i.he = extractelement <2 x double> %i.hd, i64 1
  %i.hf = insertelement <2 x double> %i.dx, double %i.bn, i64 1
  %i.hg = insertelement <2 x double> %i.el, double %i.cf, i64 1
  %i.hh = fmul <2 x double> %i.hf, %i.hg          ; 3 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 1 ; 2 uses
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.bc, double %i.cj)
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.az, double %i.hj)
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.bc, double %i.hk)
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.co, double %i.hl)
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.az, double %i.hm)
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.co, double %i.hn)
  %i.hp = fmul double %i.bn, %i.cq                ; 4 uses
  %i.hq = fmul double %i.az, %i.cs                ; 2 uses
  %i.hr = fneg double %i.hp
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.bm, double %i.ho)
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.az, double %i.hs)
  %i.hu = fneg double %i.hi                       ; 2 uses
  %i.hv = insertelement <2 x double> %i.en, double %i.hp, i64 1
  %i.hw = insertelement <2 x double> %i.hh, double %i.di, i64 1
  %i.hx = fmul double %i.hp, %i.fu
  %i.hy = insertelement <2 x double> poison, double %i.dg, i64 0 ; 5 uses
  %i.hz = insertelement <2 x double> %i.hy, double %i.co, i64 1
  %i.ia = extractelement <2 x double> %i.gi, i64 0
  %i.ib = extractelement <2 x double> %i.hd, i64 0
  %i.ic = fmul <2 x double> %i.gg, %i.gu          ; 2 uses
  %i.id = fmul <2 x double> %i.hc, %i.ft          ; 2 uses
  %i.ie = insertelement <2 x double> %i.gf, double %i.az, i64 1
  %i.if = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.ie, %i.if          ; 3 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0 ; 2 uses
  %i.ii = insertelement <2 x double> poison, double %i.ck, i64 0 ; 3 uses
  %i.ij = insertelement <2 x double> %i.ii, double %i.ba, i64 1
  %i.ik = insertelement <2 x double> %i.gx, double %i.co, i64 1
  %i.il = fmul <2 x double> %i.ij, %i.ik          ; 4 uses
  %i.im = extractelement <2 x double> %i.il, i64 0 ; 2 uses
  %i.in = fneg double %i.im
  %i.io = insertelement <2 x double> %i.gk, double %i.bm, i64 1
  %i.ip = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = fmul <2 x double> %i.io, %i.ip          ; 3 uses
  %i.ir = fmul double %i.cs, %i.cw                ; 3 uses
  %i.is = fmul double %i.cq, %i.da                ; 3 uses
  %i.it = fneg double %i.is                       ; 2 uses
  %i.iu = extractelement <2 x double> %i.iq, i64 0 ; 2 uses
  %i.iv = fneg double %i.iu                       ; 2 uses
  %i.iw = fneg double %i.ir                       ; 2 uses
  %i.ix = insertelement <2 x double> %i.ii, double %i.ax, i64 1
  %i.iy = fmul <2 x double> %i.ix, %i.fs          ; 3 uses
  %i.iz = extractelement <2 x double> %i.iq, i64 1
  %i.ja = extractelement <2 x double> %i.iy, i64 1
  %i.jb = extractelement <2 x double> %i.ig, i64 1
  %i.jc = extractelement <2 x double> %i.il, i64 1
  %i.jd = extractelement <2 x double> %i.iy, i64 0
  %i.je = insertelement <2 x double> %i.ii, double %i.aw, i64 1
  %i.jf = insertelement <2 x double> %i.gp, double %i.dn, i64 1
  %i.jg = fmul <2 x double> %i.je, %i.jf          ; 4 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = fneg double %i.jh                       ; 2 uses
  %i.jj = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jk = insertelement <2 x double> %i.jj, double %i.cn, i64 1
  %i.jl = insertelement <2 x double> %i.et, double %i.co, i64 1
  %i.jm = shufflevector <2 x double> %i.fn, <2 x double> %i.jg, <2 x i32> <i32 0, i32 2>
  %i.jn = insertelement <2 x double> %i.hy, double %i.az, i64 1
  %i.jo = extractelement <2 x double> %i.fy, i64 0
  %i.jp = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %i.ba, i64 1
  %i.jr = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.js = insertelement <2 x double> %i.jr, double %i.cs, i64 1
  %i.jt = fmul <2 x double> %i.jq, %i.js          ; 3 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 1 ; 2 uses
  %i.jv = fneg double %i.ju                       ; 2 uses
  %i.jw = insertelement <2 x double> %i.es, double %i.jv, i64 1
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.bm, double %i.ht)
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.cv, double %i.jx)
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.bc, double %i.jy)
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.cv, double %i.jz)
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.bm, double %i.ka)
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.db, double %i.bc, double %i.kb)
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.bm, double %i.kc)
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.dc, double %i.kd)
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.br, double %i.ke)
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.dc, double %i.kf)
  %i.kh = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.bt, double %i.kg)
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.br, double %i.kh)
  %i.kj = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.bt, double %i.ki)
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.de, double %i.kj)
  %i.kl = insertelement <2 x double> %i.ei, double %i.kk, i64 1
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eh, <2 x double> %i.kl)
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.em, <2 x double> %i.km)
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.eo, <2 x double> %i.kn)
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.er, <2 x double> %i.ko)
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.eu, <2 x double> %i.kp)
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> %i.kq)
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fc, <2 x double> %i.kr)
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fe, <2 x double> %i.ks)
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fh, <2 x double> %i.kt)
  %i.kv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.fi, <2 x double> %i.ku)
  %i.kw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eu, <2 x double> %i.kv)
  %i.kx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fo, <2 x double> %i.kw) ; 2 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 0
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.bu, double %i.ky)
  %i.la = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bt, double %i.kz)
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bu, double %i.la)
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.br, double %i.lb)
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.bt, double %i.lc)
  %i.le = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.br, double %i.ld)
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.bu, double %i.le)
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.bt, double %i.lf)
  %i.lh = insertelement <2 x double> %i.kx, double %i.lg, i64 0
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.fz, <2 x double> %i.lh) ; 3 uses
  %i.lj = extractelement <2 x double> %i.li, i64 1
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.dc, double %i.lj)
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.bt, double %i.lk)
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.br, double %i.ll)
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.bt, double %i.lm)
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.de, double %i.ln)
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.br, double %i.lo)
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.by, double %i.de, double %i.lp)
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.bu, double %i.lq)
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.br, double %i.lr)
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.bu, double %i.ls)
  %i.lu = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.hx, i64 1
  %i.lw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hz, <2 x double> %i.lv)
  %i.lx = fneg double %i.ih                       ; 2 uses
  %i.ly = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jl, <2 x double> %i.lw)
  %i.lz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jn, <2 x double> %i.ly) ; 2 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.do, double %i.bu, double %i.ma)
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.iz, double %i.bt, double %i.mb)
  %i.md = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.bu, double %i.mc)
  %i.me = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.dc, double %i.md)
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.br, double %i.me)
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.dc, double %i.mf)
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.bt, double %i.mg)
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.br, double %i.mh)
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.bt, double %i.mi)
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.de, double %i.mj)
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.go, double %i.br, double %i.mk)
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.de, double %i.ml)
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.bu, double %i.mm)
  %i.mo = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.br, double %i.mn)
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.bu, double %i.mo)
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.dg, double %i.mp)
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.bt, double %i.mq)
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.dg, double %i.mr)
  %i.mt = insertelement <2 x double> %i.fb, double %i.ce, i64 1
  %i.mu = insertelement <2 x double> %i.lz, double %i.ms, i64 0
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.mt, <2 x double> %i.mu)
  %i.mw = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mx = insertelement <2 x double> %i.mw, double %i.lx, i64 1
  %i.my = insertelement <2 x double> %i.et, double %i.az, i64 1
  %i.mz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.my, <2 x double> %i.mv) ; 2 uses
  %i.na = extractelement <2 x double> %i.mz, i64 0
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.he, double %i.bu, double %i.na) ; 6 uses
  %i.nc = extractelement <2 x double> %i.mz, i64 1
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.cv, double %i.nc)
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.ce, double %i.nd)
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cv, double %i.ne)
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.in, double %i.bc, double %i.nf)
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ce, double %i.ng)
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.bc, double %i.nh)
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cv, double %i.ni)
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.co, double %i.nj)
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cv, double %i.nk)
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.bm, double %i.nl)
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.db, double %i.co, double %i.nm)
  %i.no = tail call double @llvm.fmuladd.f64(double %i.it, double %i.bm, double %i.nn)
  %i.np = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.de, double %i.no)
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.dc, double %i.np)
  %i.nr = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.de, double %i.nq)
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.ji, double %i.br, double %i.nr)
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.dc, double %i.ns)
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.br, double %i.nt)
  %i.nv = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.dg, double %i.nu)
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dc, double %i.nv)
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dg, double %i.nw)
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.im, double %i.bt, double %i.nx)
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.dc, double %i.ny)
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.bt, double %i.nz)
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double %i.oa)
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.de, double %i.ob)
  %i.od = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dg, double %i.oc)
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.iw, double %i.bu, double %i.od)
  %i.of = tail call double @llvm.fmuladd.f64(double %i.di, double %i.de, double %i.oe)
  %i.og = tail call double @llvm.fmuladd.f64(double %i.is, double %i.bu, double %i.of)
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.de, double %i.og)
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.dc, double %i.oh)
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.de, double %i.oi)
  %i.ok = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.br, double %i.oj)
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.dc, double %i.ok)
  %i.om = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.br, double %i.ol)
  %i.on = extractelement <2 x double> %i.fy, i64 1
  %i.oo = tail call double @llvm.fmuladd.f64(double %i.on, double %i.dg, double %i.om)
  %i.op = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dc, double %i.oo)
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dg, double %i.op)
  %i.or = tail call double @llvm.fmuladd.f64(double %5, double %i.bt, double %i.oq)
  %i.os = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dc, double %i.or)
  %i.ot = tail call double @llvm.fmuladd.f64(double %i.ib, double %i.bt, double %i.os)
  %foldExtExtBinop = fmul <2 x double> %i.il, %i.ft
  %i.ou = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dg, double %i.ot)
  %i.ov = insertelement <2 x double> %i.gt, double %i.de, i64 1
  %i.ow = insertelement <2 x double> %foldExtExtBinop, double %i.ou, i64 1
  %i.ox = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.ov, <2 x double> %i.ow)
  %i.oy = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.gd, i64 1
  %i.pa = insertelement <2 x double> %i.gt, double %i.dg, i64 1
  %i.pb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oz, <2 x double> %i.pa, <2 x double> %i.ox)
  %i.pc = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pd = insertelement <2 x double> %i.pc, double %i.ir, i64 0
  %i.pe = insertelement <2 x double> %i.dt, double %i.bu, i64 1 ; 2 uses
  %i.pf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.pe, <2 x double> %i.pb)
  %i.pg = insertelement <2 x double> %i.fr, double %i.de, i64 1
  %i.ph = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.pg, <2 x double> %i.pf)
  %i.pi = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pj = insertelement <2 x double> %i.pi, double %i.it, i64 0
  %i.pk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.pe, <2 x double> %i.ph)
  %i.pl = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.pm = insertelement <2 x double> %i.pl, double %i.ge, i64 1
  %i.pn = insertelement <2 x double> %i.hy, double %i.de, i64 1 ; 2 uses
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pm, <2 x double> %i.pn, <2 x double> %i.pk)
  %i.pp = insertelement <2 x double> poison, double %i.de, i64 0 ; 2 uses
  %i.pq = insertelement <2 x double> %i.pp, double %i.dc, i64 1 ; 4 uses
  %i.pr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.pq, <2 x double> %i.po)
  %i.ps = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.pn, <2 x double> %i.pr)
  %i.pt = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pu = insertelement <2 x double> %i.pt, double %i.iw, i64 0
  %i.pv = insertelement <2 x double> poison, double %i.dc, i64 0 ; 3 uses
  %i.pw = insertelement <2 x double> %i.pv, double %i.br, i64 1 ; 2 uses
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.pw, <2 x double> %i.ps)
  %i.py = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.pz = insertelement <2 x double> %i.py, double %i.dq, i64 1
  %i.qa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.pq, <2 x double> %i.px)
  %i.qb = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qc = insertelement <2 x double> %i.qb, double %i.is, i64 0
  %i.qd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.pw, <2 x double> %i.qa)
  %i.qe = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.qe, <2 x double> %i.qd)
  %i.qg = insertelement <2 x double> poison, double %5, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> %i.jt, <2 x i32> <i32 0, i32 2>
  %i.qi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.pq, <2 x double> %i.qf)
  %i.qj = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.qj, <2 x double> %i.qi)
  %i.ql = insertelement <2 x double> %i.pv, double %i.bt, i64 1 ; 2 uses
  %i.qm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.ql, <2 x double> %i.qk)
  %i.qn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.pq, <2 x double> %i.qm)
  %i.qo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.ql, <2 x double> %i.qn)
  %i.qp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.qj, <2 x double> %i.qo)
  %i.qq = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.qq, <2 x double> %i.qp)
  %i.qs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.qj, <2 x double> %i.qr)
  %7 = insertelement <2 x double> poison, double %6, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qt = insertelement <2 x double> %i.pv, double %i.bu, i64 1 ; 2 uses
  %i.qu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.qt, <2 x double> %i.qs)
  %i.qv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.qq, <2 x double> %i.qu)
  %9 = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.qw = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> %i.qt, <2 x double> %i.qv) ; 7 uses
  %i.qy = extractelement <2 x double> %i.li, i64 0 ; 2 uses
  %i.qz = tail call noundef double @llvm.fabs.f64(double %i.qy)
  %i.ra = fcmp ugt double %i.qz, 1.000000e-10
  br i1 %i.ra, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.rb = tail call noundef double @llvm.fabs.f64(double %i.nb)
  %i.rc = fcmp ogt double %i.rb, 1.000000e-10
  br i1 %i.rc, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.rd = extractelement <2 x double> %i.qx, i64 1 ; 3 uses
  %i.re = tail call noundef double @pow(double noundef %i.rd, double noundef 2.000000e+00) #18
  %i.rf = fmul nnan double %i.nb, -4.000000e+00
  %i.rg = extractelement <2 x double> %i.qx, i64 0 ; 2 uses
  %i.rh = tail call double @llvm.fmuladd.f64(double %i.rf, double %i.rg, double %i.re) ; 2 uses
  %i.ri = fcmp ugt double %i.rh, 0.000000e+00
  br i1 %i.ri, label %bb.d, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.d:                                             ; preds = %bb.c
  %i.rj = tail call double @sqrt(double noundef %i.rh) #18 ; 2 uses
  %i.rk = fcmp ult double %i.rd, 0.000000e+00
  br i1 %i.rk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.rl = fneg double %i.rd
  %i.rm = fsub double %i.rl, %i.rj                ; 2 uses
  %i.rn = fmul double %i.rg, 2.000000e+00
  %i.ro = fmul nnan double %i.nb, 2.000000e+00
  %i.rp = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.rq = insertelement <2 x double> %i.rp, double %i.ro, i64 1
  %i.rr = insertelement <2 x double> poison, double %i.rn, i64 0
  %i.rs = insertelement <2 x double> %i.rr, double %i.rm, i64 1
  %i.rt = fdiv <2 x double> %i.rs, %i.rq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ru = fmul nnan double %i.nb, 2.000000e+00
  %i.rv = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.rj, i64 1 ; 2 uses
  %i.rw = fsub <2 x double> %i.rv, %i.qx          ; 2 uses
  %i.rx = fmul <2 x double> %i.rv, %i.qx
  %i.ry = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rz = insertelement <2 x double> %i.ry, double %i.ru, i64 1
  %i.sa = shufflevector <2 x double> %i.rw, <2 x double> %i.rx, <2 x i32> <i32 1, i32 2>
  %i.sb = shufflevector <2 x double> %i.rz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sc = fdiv <2 x double> %i.sa, %i.sb
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.sd = phi <2 x double> [ %i.sc, %bb.f ], [ %i.rt, %bb.e ] ; 2 uses
  %i.se = fcmp olt double %i.nb, 0.000000e+00     ; 2 uses
  %i.sf = extractelement <2 x double> %i.sd, i64 0 ; 2 uses
  %i.sg = extractelement <2 x double> %i.sd, i64 1 ; 2 uses
  %.1.i = select i1 %i.se, double %i.sg, double %i.sf ; 2 uses
  %i.sh = fcmp ogt double %.1.i, 0.000000e+00
  br i1 %i.sh, label %bb.h, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.h:                                             ; preds = %bb.g
  %.0.i = select i1 %i.se, double %i.sf, double %i.sg ; 2 uses
  %i.si = fcmp ogt double %.0.i, 0.000000e+00
  %i.sj = select i1 %i.si, double %.0.i, double %.1.i
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.i:                                             ; preds = %bb.b
  %i.sk = extractelement <2 x double> %i.qx, i64 1 ; 2 uses
  %i.sl = fcmp oeq double %i.sk, 0.000000e+00
  br i1 %i.sl, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.sm = extractelement <2 x double> %i.qx, i64 0
  %i.sn = fneg double %i.sm
  %i.so = fdiv double %i.sn, %i.sk                ; 2 uses
  %i.sp = fcmp ogt double %i.so, 0.000000e+00
  %i.sq = select i1 %i.sp, double %i.so, double +inf
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.sr = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 12 uses
  store ptr %i.sr, ptr %4, align 8, !tbaa !9
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 24 ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ss, ptr %i.st, align 8, !tbaa !24
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, i8 0, i64 24, i1 false)
  store ptr %i.ss, ptr %i.sv, align 8, !tbaa !25
  %i.sw = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sx = fdiv <2 x double> %i.qx, %i.sw          ; 2 uses
  %i.sy = fdiv double %i.nb, %i.qy
  %i.sz = extractelement <2 x double> %i.sx, i64 0
  %i.ta = extractelement <2 x double> %i.sx, i64 1
  %i.tb = call noundef i32 @_ZN3igl13flip_avoiding7SolveP3ERSt6vectorIdSaIdEEddd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.sy, double noundef %i.ta, double noundef %i.sz)
  switch i32 %i.tb, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.tc = load double, ptr %i.sr, align 8, !tbaa !13 ; 2 uses
  %i.td = fcmp ult double %i.tc, 0.000000e+00
  br i1 %i.td, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.n:                                             ; preds = %bb.k
  %i.te = load double, ptr %i.sr, align 8, !tbaa !13 ; 4 uses
  %i.tf = load double, ptr %i.su, align 8, !tbaa !13 ; 4 uses
  %i.tg = fcmp olt double %i.te, %i.tf
  %i.th = select i1 %i.tg, double %i.tf, double %i.te ; 2 uses
  %i.ti = fcmp olt double %i.tf, %i.te
  %i.tj = select i1 %i.ti, double %i.tf, double %i.te ; 2 uses
  %i.tk = fcmp ogt double %i.tj, 0.000000e+00
  %i.tl = fcmp ogt double %i.th, 0.000000e+00
  %. = select i1 %i.tl, double %i.th, double +inf
  %.0 = select i1 %i.tk, double %i.tj, double %.
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.o:                                             ; preds = %bb.k
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.sr, ptr nonnull %i.ss, i64 noundef 2)
          to label %.noexc unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

.noexc:                                           ; preds = %bb.o
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.sr, ptr nonnull %i.ss)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %.noexc
  %i.tm = load double, ptr %i.sr, align 8, !tbaa !13 ; 2 uses
  %i.tn = fcmp ogt double %i.tm, 0.000000e+00
  br i1 %i.tn, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.p

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.noexc, %bb.o
  %i.to = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef 24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.to

bb.p:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.tp = load double, ptr %i.su, align 8, !tbaa !13 ; 2 uses
  %i.tq = fcmp ogt double %i.tp, 0.000000e+00
  br i1 %i.tq, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !13 ; 2 uses
  %i.tt = fcmp ogt double %i.ts, 0.000000e+00
  br i1 %i.tt, label %bb.r, label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.r:                                             ; preds = %bb.q
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

_ZNSt6vectorIdSaIdEED2Ev.exit661:                 ; preds = %bb.p, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, %bb.q, %bb.m, %bb.l, %bb.r, %bb.n
  %.1 = phi double [ +inf, %bb.q ], [ %i.tm, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ], [ %i.ts, %bb.r ], [ +inf, %bb.l ], [ %.0, %bb.n ], [ %i.tc, %bb.m ], [ %i.tp, %bb.p ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef 24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c, %_ZNSt6vectorIdSaIdEED2Ev.exit661
  %.2 = phi double [ %.1, %_ZNSt6vectorIdSaIdEED2Ev.exit661 ], [ %i.sq, %bb.j ], [ +inf, %bb.g ], [ +inf, %bb.c ], [ %i.sj, %bb.h ], [ +inf, %bb.i ]
  ret double %.2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader23

.preheader23:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.a
  br i1 %i.f, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %.preheader, %.lr.ph29
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %.lr.ph29 ], [ 0, %.preheader ] ; 2 uses
  %.02227 = phi double [ %.sroa.speculated17, %.lr.ph29 ], [ +inf, %.preheader ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.h = tail call noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_2DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.g) ; 2 uses
  %i.i = fcmp olt double %i.h, %.02227
  %.sroa.speculated17 = select i1 %i.i, double %i.h, double %.02227 ; 2 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph29, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader23, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader23 ] ; 2 uses
  %.125 = phi double [ %.sroa.speculated, %.lr.ph ], [ +inf, %.preheader23 ] ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = tail call noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_3DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.j) ; 2 uses
end_hunk_1
