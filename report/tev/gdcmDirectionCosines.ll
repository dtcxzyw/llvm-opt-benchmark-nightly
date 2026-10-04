Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmDirectionCosines?download=true
inline.NumInlined: 113
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.0, i64, ptr }
%struct.anon.0 = type { i64 }

$_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = comdat any

$_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%lf\\%lf\\%lf\\%lf\\%lf\\%lf\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

@_ZN4gdcm16DirectionCosinesC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4gdcm16DirectionCosinesC2Ev
@_ZN4gdcm16DirectionCosinesC1EPKd = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4gdcm16DirectionCosinesC2EPKd

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4gdcm16DirectionCosinesC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #0 align 2 {
bb.a:
  store double 1.000000e+00, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.b, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4gdcm16DirectionCosinesC2EPKd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10
  store double %i.a, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.c, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.f, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.i, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.l, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.o, ptr %i.p, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4gdcm16DirectionCosines5PrintERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !10
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !10
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !10
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !10
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.u) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4gdcm16DirectionCosines7IsValidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !10 ; 3 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = extractelement <2 x double> %i.b, i64 0  ; 2 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !10 ; 3 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.f)
  %i.j = fadd double %i.i, -1.000000e+00
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp olt double %i.k, 1.000000e-03
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !10 ; 4 uses
  %i.q = shufflevector <2 x double> %i.b, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %i.r = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = shufflevector <2 x double> %i.b, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.u, <2 x double> %i.s)
  %1 = insertelement <2 x double> poison, double %i.h, i64 0
  %2 = insertelement <2 x double> %1, double %i.n, i64 1 ; 2 uses
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> %3, <2 x double> %i.v) ; 2 uses
  %5 = extractelement <2 x double> %4, i64 1
  %i.w = fadd double %5, -1.000000e+00
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp olt double %i.x, 1.000000e-03
  %6 = extractelement <2 x double> %4, i64 0
  %i.z = tail call double @llvm.fabs.f64(double %6)
  %i.aa = fcmp olt double %i.z, 1.000000e-03
  %or.cond = and i1 %i.aa, %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK4gdcm16DirectionCosines3DotEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load double, ptr %0, align 8, !tbaa !10
  %i.c = load double, ptr %i.a, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !10
  %i.h = fmul double %i.e, %i.g
  %i.i = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !10
  %i.n = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.i)
  ret double %i.n
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4gdcm16DirectionCosines5CrossEPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load double, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  %i.e = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.f = fneg double %i.d
  %i.g = load <2 x double>, ptr %i.b, align 8, !tbaa !10 ; 3 uses
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !10 ; 3 uses
  %i.i = fneg <2 x double> %i.h
  %i.j = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.k = insertelement <2 x double> %i.j, double %i.e, i64 1
  %i.l = fmul <2 x double> %i.k, %i.i
  %i.m = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x double> %i.m, double %i.d, i64 1
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.n, <2 x double> %i.l)
  %i.p = extractelement <2 x double> %i.g, i64 0
  %i.q = fmul double %i.p, %i.f
  %i.r = extractelement <2 x double> %i.h, i64 0
  %i.s = tail call double @llvm.fmuladd.f64(double %i.e, double %i.r, double %i.q)
  store <2 x double> %i.o, ptr %1, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.s, ptr %i.t, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN4gdcm16DirectionCosines3DotEPKdS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = load double, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = fmul double %i.d, %i.f
  %i.h = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = tail call noundef double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.h)
  ret double %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN4gdcm16DirectionCosines8DistanceEPKdS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = load double, ptr %1, align 8, !tbaa !10
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !10
  %i.h = fsub double %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = fsub double %i.j, %i.l                   ; 2 uses
  %i.n = fmul double %i.h, %i.h
  %i.o = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.n)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.o)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.p)
  ret double %sqrt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN4gdcm16DirectionCosines4NormEPKd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.e)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.h)
  ret double %sqrt.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4gdcm16DirectionCosines9NormalizeEPd(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.a, %i.a
  %i.b = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x double> %i.a, i64 0  ; 2 uses
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !10 ; 3 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.d) ; 2 uses
  %i.h = fcmp une double %i.g, 0.000000e+00
  br i1 %i.h, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.g) ; 2 uses
  %i.i = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.a, %i.j
  store <2 x double> %i.k, ptr %0, align 8, !tbaa !10
  %i.l = fdiv double %i.f, %sqrt.i
  store double %i.l, ptr %i.e, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4gdcm16DirectionCosines9NormalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.a, %i.a
  %i.b = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x double> %i.a, i64 0  ; 2 uses
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !10 ; 3 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.d) ; 2 uses
  %i.h = fcmp une double %i.g, 0.000000e+00
  br i1 %i.h, label %.preheader16.preheader, label %.loopexit17

.preheader16.preheader:                           ; preds = %bb.a
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.g) ; 2 uses
  %i.i = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.a, %i.j
  store <2 x double> %i.k, ptr %0, align 8, !tbaa !10
  %i.l = fdiv double %i.f, %sqrt.i
  store double %i.l, ptr %i.e, align 8, !tbaa !10
  br label %.loopexit17

.loopexit17:                                      ; preds = %.preheader16.preheader, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !10 ; 4 uses
  %foldExtExtBinop23 = fmul <2 x double> %i.n, %i.n
  %i.o = extractelement <2 x double> %foldExtExtBinop23, i64 1
  %i.p = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.o)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load double, ptr %i.r, align 8, !tbaa !10 ; 3 uses
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %i.q) ; 2 uses
  %i.u = fcmp une double %i.t, 0.000000e+00
  br i1 %i.u, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit17
  %sqrt.i15 = tail call noundef double @llvm.sqrt.f64(double %i.t) ; 2 uses
  %i.v = insertelement <2 x double> poison, double %sqrt.i15, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.n, %i.w
  store <2 x double> %i.x, ptr %i.m, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = fdiv double %i.s, %sqrt.i15
  store double %i.z, ptr %i.y, align 8, !tbaa !10
end_hunk_0
