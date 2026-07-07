inline.NumInlined: 605
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
%"struct.std::_Head_base.4" = type { i32 }
%"class.llvh::format_object.5" = type { %"class.llvh::format_object_base", %"class.std::tuple.6" }
%"class.std::tuple.6" = type { %"struct.std::_Tuple_impl.7" }
%"struct.std::_Tuple_impl.7" = type { %"struct.std::_Tuple_impl.8", %"struct.std::_Head_base.4" }
%"struct.std::_Tuple_impl.8" = type { %"struct.std::_Tuple_impl.9", %"struct.std::_Head_base.3" }
%"struct.std::_Tuple_impl.9" = type { %"struct.std::_Tuple_impl.10", %"struct.std::_Head_base" }
%"struct.std::_Tuple_impl.10" = type { %"struct.std::_Head_base.11" }
%"struct.std::_Head_base.11" = type { i32 }
%"class.llvh::format_object.12" = type <{ %"class.llvh::format_object_base", %"class.std::tuple.13", [4 x i8] }>
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Tuple_impl.15", %"struct.std::_Head_base.4" }
%"struct.std::_Tuple_impl.15" = type { %"struct.std::_Tuple_impl.16", %"struct.std::_Head_base.3" }
%"struct.std::_Tuple_impl.16" = type { %"struct.std::_Tuple_impl.17", %"struct.std::_Head_base" }
%"struct.std::_Tuple_impl.17" = type { %"struct.std::_Tuple_impl.base", %"struct.std::_Head_base.11" }
%"struct.std::_Tuple_impl.base" = type <{ %"struct.std::_Tuple_impl.19", %"struct.std::_Head_base.23" }>
%"struct.std::_Tuple_impl.19" = type { %"struct.std::_Tuple_impl.20", %"struct.std::_Head_base.22" }
%"struct.std::_Tuple_impl.20" = type { %"struct.std::_Head_base.21" }
%"struct.std::_Head_base.21" = type { i32 }
%"struct.std::_Head_base.22" = type { i32 }
%"struct.std::_Head_base.23" = type { i8 }
%"class.llvh::format_object.26" = type { %"class.llvh::format_object_base", %"class.std::tuple.27" }
%"class.std::tuple.27" = type { %"struct.std::_Tuple_impl.28" }
%"struct.std::_Tuple_impl.28" = type { %"struct.std::_Tuple_impl.29", %"struct.std::_Head_base.31" }
%"struct.std::_Tuple_impl.29" = type { %"struct.std::_Tuple_impl.9", %"struct.std::_Head_base.30" }
%"struct.std::_Head_base.30" = type { ptr }
%"struct.std::_Head_base.31" = type { ptr }
%"class.llvh::format_object.32" = type <{ %"class.llvh::format_object_base", %"class.std::tuple.33", [4 x i8] }>
%"class.std::tuple.33" = type { %"struct.std::_Tuple_impl.base.36", [3 x i8] }
%"struct.std::_Tuple_impl.base.36" = type <{ %"struct.std::_Tuple_impl.1", %"struct.std::_Head_base.35" }>
%"struct.std::_Head_base.35" = type { i8 }
%"class.llvh::format_object.38" = type { %"class.llvh::format_object_base", %"class.std::tuple.39" }
%"class.std::tuple.39" = type { %"struct.std::_Tuple_impl.40" }
%"struct.std::_Tuple_impl.40" = type { %"struct.std::_Tuple_impl.base.44", %"struct.std::_Head_base.31" }
%"struct.std::_Tuple_impl.base.44" = type <{ %"struct.std::_Tuple_impl.42", %"struct.std::_Head_base.3" }>
%"struct.std::_Tuple_impl.42" = type { %"struct.std::_Tuple_impl.10", %"struct.std::_Head_base.43" }
%"struct.std::_Head_base.43" = type { ptr }
%"class.hermes::vm::StringView" = type { %union.anon, i32, i32 }
%union.anon = type { ptr }
%"class.hermes::vm::StringView::const_iterator" = type { ptr, ptr }
%class.anon.75 = type { ptr, ptr, ptr }
%class.anon.76 = type { ptr, ptr, ptr }
%"class.llvh::ArrayRef" = type { ptr, i64 }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector" }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [16 x %"struct.llvh::AlignedCharArrayUnion.73"] }
%"struct.llvh::AlignedCharArrayUnion.73" = type { %"struct.llvh::AlignedCharArray.74" }
%"struct.llvh::AlignedCharArray.74" = type { [1 x i8] }

$_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE = comdat any

$_ZNK4llvh13format_objectIJiiiEE7snprintEPcj = comdat any

$_ZNK4llvh13format_objectIJiiiiEE7snprintEPcj = comdat any

$_ZNK4llvh13format_objectIJiiiiciiEE7snprintEPcj = comdat any

$_ZNK4llvh13format_objectIJPKcS2_iiEE7snprintEPcj = comdat any

$_ZNK4llvh13format_objectIJciiEE7snprintEPcj = comdat any

$_ZNK4llvh13format_objectIJPKciS2_iEE7snprintEPcj = comdat any

$_ZTVN4llvh13format_objectIJiiiEEE = comdat any

$_ZTVN4llvh13format_objectIJiiiiEEE = comdat any

$_ZTVN4llvh13format_objectIJiiiiciiEEE = comdat any

$_ZTVN4llvh13format_objectIJPKcS2_iiEEE = comdat any

$_ZTVN4llvh13format_objectIJciiEEE = comdat any

$_ZTVN4llvh13format_objectIJPKciS2_iEEE = comdat any

@.str = private unnamed_addr constant [16 x i8] c"%+07d-%02d-%02d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%04d-%02d-%02d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%02d:%02d:%02d.%03dZ\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%02d:%02d:%02d.%03d%c%02d:%02d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s %s %02d %0.4d\00", align 1
@_ZN6hermes2vmL12weekdayNamesE = internal unnamed_addr constant [7 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 16
@_ZN6hermes2vmL10monthNamesE = internal unnamed_addr constant [12 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 16
@.str.5 = private unnamed_addr constant [19 x i8] c"%02d:%02d:%02d GMT\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%c%02d%02d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s, %02d %s %0.4d \00", align 1
@_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable = internal unnamed_addr constant [13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], align 16
@_ZZN6hermes2vmL12dayFromMonthEjbE13leapYearTable = internal unnamed_addr constant [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366], align 16
@_ZN6hermes2vmL26epochDaysForYear2006To2033E = internal unnamed_addr constant [28 x i32] [i32 13149, i32 13514, i32 13879, i32 14245, i32 14610, i32 14975, i32 15340, i32 15706, i32 16071, i32 16436, i32 16801, i32 17167, i32 17532, i32 17897, i32 18262, i32 18628, i32 18993, i32 19358, i32 19723, i32 20089, i32 20454, i32 20819, i32 21184, i32 21550, i32 21915, i32 22280, i32 22645, i32 23011], align 16
@_ZTVN4llvh19raw_svector_ostreamE = external unnamed_addr constant { [14 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEE8knownTZs = internal unnamed_addr constant [9 x %struct.KnownTZ] [%struct.KnownTZ { ptr @.str.28, i32 0 }, %struct.KnownTZ { ptr @.str.29, i32 -4 }, %struct.KnownTZ { ptr @.str.30, i32 -5 }, %struct.KnownTZ { ptr @.str.31, i32 -5 }, %struct.KnownTZ { ptr @.str.32, i32 -6 }, %struct.KnownTZ { ptr @.str.33, i32 -6 }, %struct.KnownTZ { ptr @.str.34, i32 -7 }, %struct.KnownTZ { ptr @.str.35, i32 -7 }, %struct.KnownTZ { ptr @.str.36, i32 -8 }], align 16
@.str.28 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"EDT\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"CDT\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"CST\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"MDT\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"MST\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"PDT\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"PST\00", align 1
@_ZTVN4llvh13format_objectIJiiiEEE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvh18format_object_base4homeEv, ptr @_ZNK4llvh13format_objectIJiiiEE7snprintEPcj] }, comdat, align 8
@_ZTVN4llvh13format_objectIJiiiiEEE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvh18format_object_base4homeEv, ptr @_ZNK4llvh13format_objectIJiiiiEE7snprintEPcj] }, comdat, align 8
@_ZTVN4llvh13format_objectIJiiiiciiEEE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvh18format_object_base4homeEv, ptr @_ZNK4llvh13format_objectIJiiiiciiEE7snprintEPcj] }, comdat, align 8
@_ZTVN4llvh13format_objectIJPKcS2_iiEEE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvh18format_object_base4homeEv, ptr @_ZNK4llvh13format_objectIJPKcS2_iiEE7snprintEPcj] }, comdat, align 8
@_ZTVN4llvh13format_objectIJciiEEE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvh18format_object_base4homeEv, ptr @_ZNK4llvh13format_objectIJciiEE7snprintEPcj] }, comdat, align 8
@_ZTVN4llvh13format_objectIJPKciS2_iEEE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvh18format_object_base4homeEv, ptr @_ZNK4llvh13format_objectIJPKciS2_iEE7snprintEPcj] }, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -9223372036854, 9223372036855) i64 @_ZN6hermes2vm7curTimeEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #19
  %i.b = sdiv i64 %i.a, 1000000
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm3dayEd(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = fdiv double %0, 8.640000e+07
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  ret double %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm13timeWithinDayEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call double @fmod(double noundef %0, double noundef 8.640000e+07) #19, !tbaa !3 ; 3 uses
  %i.b = fcmp olt double %i.a, 0.000000e+00
  %i.c = fadd double %i.a, 8.640000e+07
  %i.d = select i1 %i.b, double %i.c, double %i.a
  ret double %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef range(i32 365, 367) i32 @_ZN6hermes2vm10daysInYearEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef double @fmod(double noundef %0, double noundef 4.000000e+00) #19, !tbaa !3
  %i.b = fcmp une double %i.a, 0.000000e+00
  br i1 %i.b, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double @fmod(double noundef %0, double noundef 1.000000e+02) #19, !tbaa !3
  %i.d = fcmp une double %i.c, 0.000000e+00
  br i1 %i.d, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread, label %_ZN6hermes2vmL10isLeapYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit:                ; preds = %bb.b
  %i.e = tail call noundef double @fmod(double noundef %0, double noundef 4.000000e+02) #19, !tbaa !3
  %i.f = fcmp oeq double %i.e, 0.000000e+00
  br i1 %i.f, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread2

_ZN6hermes2vmL10isLeapYearEd.exit.thread:         ; preds = %bb.b, %_ZN6hermes2vmL10isLeapYearEd.exit
  br label %_ZN6hermes2vmL10isLeapYearEd.exit.thread2

_ZN6hermes2vmL10isLeapYearEd.exit.thread2:        ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEd.exit, %_ZN6hermes2vmL10isLeapYearEd.exit.thread
  %i.g = phi i32 [ 366, %_ZN6hermes2vmL10isLeapYearEd.exit.thread ], [ 365, %_ZN6hermes2vmL10isLeapYearEd.exit ], [ 365, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm11dayFromYearEd(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = fadd double %0, -1.970000e+03
  %i.b = fadd double %0, -1.969000e+03
  %i.c = fmul double %i.b, 2.500000e-01
  %i.d = tail call double @llvm.floor.f64(double %i.c)
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double 3.650000e+02, double %i.d)
  %1 = fadd double %0, -1.901000e+03
  %2 = fdiv double %1, 1.000000e+02
  %3 = tail call double @llvm.floor.f64(double %2)
  %4 = fsub double %i.e, %3
  %5 = fadd double %0, -1.601000e+03
  %6 = fdiv double %5, 4.000000e+02
  %i.f = tail call double @llvm.floor.f64(double %6)
  %i.g = fadd double %i.f, %4
  ret double %i.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm12timeFromYearEd(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = fadd double %0, -1.970000e+03
  %i.b = fadd double %0, -1.969000e+03
  %i.c = fmul double %i.b, 2.500000e-01
  %i.d = tail call double @llvm.floor.f64(double %i.c)
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double 3.650000e+02, double %i.d)
  %1 = fadd double %0, -1.901000e+03
  %2 = fdiv double %1, 1.000000e+02
  %3 = tail call double @llvm.floor.f64(double %2)
  %4 = fsub double %i.e, %3
  %5 = fadd double %0, -1.601000e+03
  %6 = fdiv double %5, 4.000000e+02
  %i.f = tail call double @llvm.floor.f64(double %6)
  %i.g = fadd double %i.f, %4
  %i.h = fmul double %i.g, 8.640000e+07
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv double %0, f0x421D63C37F000000
  %i.d = tail call double @llvm.floor.f64(double %i.c)
  %i.e = fadd double %i.d, 1.970000e+03           ; 6 uses
  %i.f = fadd double %i.e, -1.970000e+03
  %i.g = fadd nnan double %i.e, -1.969000e+03
  %i.h = fmul nnan double %i.g, 2.500000e-01
  %i.i = tail call nnan double @llvm.floor.f64(double %i.h)
  %i.j = tail call double @llvm.fmuladd.f64(double %i.f, double 3.650000e+02, double %i.i)
  %1 = fadd double %i.e, -1.901000e+03
  %2 = fdiv double %1, 1.000000e+02
  %3 = tail call double @llvm.floor.f64(double %2)
  %4 = fsub double %i.j, %3
  %5 = fadd double %i.e, -1.601000e+03
  %6 = fdiv double %5, 4.000000e+02
  %i.k = tail call double @llvm.floor.f64(double %6)
  %i.l = fadd double %i.k, %4
  %.018 = fmul double %i.l, 8.640000e+07          ; 2 uses
  %i.m = fcmp ogt double %.018, %0
  br i1 %i.m, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01519 = phi double [ %i.n, %.lr.ph ], [ %i.e, %bb.b ]
  %i.n = fadd double %.01519, -1.000000e+00       ; 6 uses
  %i.o = fadd double %i.n, -1.970000e+03
  %i.p = fadd double %i.n, -1.969000e+03
  %i.q = fmul double %i.p, 2.500000e-01
  %i.r = tail call double @llvm.floor.f64(double %i.q)
  %i.s = tail call double @llvm.fmuladd.f64(double %i.o, double 3.650000e+02, double %i.r)
  %7 = fadd double %i.n, -1.901000e+03
  %8 = fdiv double %7, 1.000000e+02
  %9 = tail call double @llvm.floor.f64(double %8)
  %10 = fsub double %i.s, %9
  %11 = fadd double %i.n, -1.601000e+03
  %12 = fdiv double %11, 4.000000e+02
  %i.t = tail call double @llvm.floor.f64(double %12)
  %i.u = fadd double %i.t, %10
  %.0 = fmul double %i.u, 8.640000e+07            ; 2 uses
  %i.v = fcmp ogt double %.0, %0
  br i1 %i.v, label %.lr.ph, label %.preheader.preheader, !llvm.loop !7

.preheader.preheader:                             ; preds = %.lr.ph, %bb.b
  %.116.ph = phi double [ %i.e, %bb.b ], [ %i.n, %.lr.ph ]
  %.1.ph = phi double [ %.018, %bb.b ], [ %.0, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.d
  %.116 = phi double [ %i.af, %bb.d ], [ %.116.ph, %.preheader.preheader ] ; 5 uses
  %.1 = phi double [ %i.an, %bb.d ], [ %.1.ph, %.preheader.preheader ]
  %i.w = tail call noundef double @fmod(double noundef %.116, double noundef 4.000000e+00) #19, !tbaa !3
  %i.x = fcmp une double %i.w, 0.000000e+00
  br i1 %i.x, label %_ZN6hermes2vm10daysInYearEd.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.y = tail call noundef double @fmod(double noundef %.116, double noundef 1.000000e+02) #19, !tbaa !3
  %i.z = fcmp une double %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vmL10isLeapYearEd.exit.i

_ZN6hermes2vmL10isLeapYearEd.exit.i:              ; preds = %bb.c
  %i.aa = tail call noundef double @fmod(double noundef %.116, double noundef 4.000000e+02) #19, !tbaa !3
  %i.ab = fcmp oeq double %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit.thread.i:       ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i, %bb.c
  br label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vm10daysInYearEd.exit:                 ; preds = %.preheader, %_ZN6hermes2vmL10isLeapYearEd.exit.i, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i
  %i.ac = phi double [ 3.660000e+02, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i ], [ 3.650000e+02, %_ZN6hermes2vmL10isLeapYearEd.exit.i ], [ 3.650000e+02, %.preheader ]
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double 8.640000e+07, double %.1)
  %i.ae = fcmp ugt double %i.ad, %0
  br i1 %i.ae, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm10daysInYearEd.exit
  %i.af = fadd double %.116, 1.000000e+00         ; 5 uses
  %i.ag = fadd double %i.af, -1.970000e+03
  %i.ah = fadd double %i.af, -1.969000e+03
  %i.ai = fmul double %i.ah, 2.500000e-01
  %i.aj = tail call double @llvm.floor.f64(double %i.ai)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ag, double 3.650000e+02, double %i.aj)
  %13 = fadd double %i.af, -1.901000e+03
  %14 = fdiv double %13, 1.000000e+02
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = fsub double %i.ak, %15
  %17 = fadd double %i.af, -1.601000e+03
  %18 = fdiv double %17, 4.000000e+02
  %i.al = tail call double @llvm.floor.f64(double %18)
  %i.am = fadd double %i.al, %16
  %i.an = fmul double %i.am, 8.640000e+07
  br label %.preheader, !llvm.loop !9

.loopexit:                                        ; preds = %_ZN6hermes2vm10daysInYearEd.exit, %bb.a
  %.017 = phi double [ %0, %bb.a ], [ %.116, %_ZN6hermes2vm10daysInYearEd.exit ]
  ret double %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm10inLeapYearEd(double noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 3 uses
  %i.b = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+00) #19, !tbaa !3
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %_ZN6hermes2vm10daysInYearEd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef double @fmod(double noundef %i.a, double noundef 1.000000e+02) #19, !tbaa !3
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vmL10isLeapYearEd.exit.i

_ZN6hermes2vmL10isLeapYearEd.exit.i:              ; preds = %bb.b
  %i.f = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+02) #19, !tbaa !3
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit.thread.i:       ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i, %bb.b
  br label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vm10daysInYearEd.exit:                 ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEd.exit.i, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i
  %i.h = phi i1 [ true, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i ], [ false, %_ZN6hermes2vmL10isLeapYearEd.exit.i ], [ false, %bb.a ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define hidden noundef range(i32 0, 12) i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0) local_unnamed_addr #6 {
_ZN6hermes2vm10inLeapYearEd.exit:
  %1 = fdiv double %0, 8.640000e+07
  %2 = tail call noundef double @llvm.floor.f64(double %1)
  %i.a = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 4 uses
  %i.b = fadd double %i.a, -1.970000e+03
  %i.c = fadd double %i.a, -1.969000e+03
  %i.d = fmul double %i.c, 2.500000e-01
  %i.e = tail call double @llvm.floor.f64(double %i.d)
  %i.f = tail call double @llvm.fmuladd.f64(double %i.b, double 3.650000e+02, double %i.e)
  %i.g = fadd double %i.a, -1.901000e+03
  %3 = fdiv double %i.g, 1.000000e+02
  %i.h = tail call double @llvm.floor.f64(double %3)
  %i.i = fsub double %i.f, %i.h
  %i.j = fadd double %i.a, -1.601000e+03
  %i.k = fdiv double %i.j, 4.000000e+02
  %i.l = tail call double @llvm.floor.f64(double %i.k)
  %i.m = fadd double %i.l, %i.i
  %i.n = fsub double %2, %i.m                     ; 11 uses
  %i.o = fcmp olt double %i.n, 3.100000e+01
  br i1 %i.o, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZN6hermes2vm10inLeapYearEd.exit
  %i.p = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 3 uses
  %i.q = tail call noundef double @fmod(double noundef %i.p, double noundef 4.000000e+00) #19, !tbaa !3
  %i.r = fcmp une double %i.q, 0.000000e+00
  br i1 %i.r, label %_ZN6hermes2vm10inLeapYearEd.exit.thread.1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef double @fmod(double noundef %i.p, double noundef 1.000000e+02) #19, !tbaa !3
  %i.t = fcmp une double %i.s, 0.000000e+00
  br i1 %i.t, label %_ZN6hermes2vm10inLeapYearEd.exit.1, label %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1

_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1:          ; preds = %bb.b
  %i.u = tail call noundef double @fmod(double noundef %i.p, double noundef 4.000000e+02) #19, !tbaa !3
  %i.v = fcmp oeq double %i.u, 0.000000e+00
  br i1 %i.v, label %_ZN6hermes2vm10inLeapYearEd.exit.1, label %_ZN6hermes2vm10inLeapYearEd.exit.thread.1

_ZN6hermes2vm10inLeapYearEd.exit.thread.1:        ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1, %bb.a
  br label %_ZN6hermes2vm10inLeapYearEd.exit.1

_ZN6hermes2vm10inLeapYearEd.exit.1:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.thread.1, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1, %bb.b
  %i.w = phi double [ 5.900000e+01, %_ZN6hermes2vm10inLeapYearEd.exit.thread.1 ], [ 6.000000e+01, %bb.b ], [ 6.000000e+01, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1 ] ; 2 uses
  %i.x = fcmp olt double %i.n, %i.w
  br i1 %i.x, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.2

_ZN6hermes2vm10inLeapYearEd.exit.2:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.1
  %i.y = fadd double %i.w, 3.100000e+01           ; 2 uses
  %i.z = fcmp olt double %i.n, %i.y
  br i1 %i.z, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.3

_ZN6hermes2vm10inLeapYearEd.exit.3:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.2
  %i.aa = fadd double %i.y, 3.000000e+01          ; 2 uses
  %i.ab = fcmp olt double %i.n, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.4

_ZN6hermes2vm10inLeapYearEd.exit.4:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.3
  %i.ac = fadd double %i.aa, 3.100000e+01         ; 2 uses
  %i.ad = fcmp olt double %i.n, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.5

_ZN6hermes2vm10inLeapYearEd.exit.5:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.4
  %i.ae = fadd double %i.ac, 3.000000e+01         ; 2 uses
  %i.af = fcmp olt double %i.n, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.6

_ZN6hermes2vm10inLeapYearEd.exit.6:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.5
  %i.ag = fadd double %i.ae, 3.100000e+01         ; 2 uses
  %i.ah = fcmp olt double %i.n, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.7

_ZN6hermes2vm10inLeapYearEd.exit.7:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.6
  %i.ai = fadd double %i.ag, 3.100000e+01         ; 2 uses
  %i.aj = fcmp olt double %i.n, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.8

_ZN6hermes2vm10inLeapYearEd.exit.8:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.7
  %i.ak = fadd double %i.ai, 3.000000e+01         ; 2 uses
  %i.al = fcmp olt double %i.n, %i.ak
  br i1 %i.al, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.9

_ZN6hermes2vm10inLeapYearEd.exit.9:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.8
  %i.am = fadd double %i.ak, 3.100000e+01         ; 2 uses
  %i.an = fcmp olt double %i.n, %i.am
  br i1 %i.an, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.10

_ZN6hermes2vm10inLeapYearEd.exit.10:              ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.9
  %i.ao = fadd double %i.am, 3.000000e+01
  %i.ap = fcmp olt double %i.n, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6hermes2vm10inLeapYearEd.exit.10, %_ZN6hermes2vm10inLeapYearEd.exit.9, %_ZN6hermes2vm10inLeapYearEd.exit.8, %_ZN6hermes2vm10inLeapYearEd.exit.7, %_ZN6hermes2vm10inLeapYearEd.exit.6, %_ZN6hermes2vm10inLeapYearEd.exit.5, %_ZN6hermes2vm10inLeapYearEd.exit.4, %_ZN6hermes2vm10inLeapYearEd.exit.3, %_ZN6hermes2vm10inLeapYearEd.exit.2, %_ZN6hermes2vm10inLeapYearEd.exit.1, %_ZN6hermes2vm10inLeapYearEd.exit
  %spec.select = phi i32 [ 0, %_ZN6hermes2vm10inLeapYearEd.exit ], [ 11, %bb.c ], [ 1, %_ZN6hermes2vm10inLeapYearEd.exit.1 ], [ 10, %_ZN6hermes2vm10inLeapYearEd.exit.10 ], [ 2, %_ZN6hermes2vm10inLeapYearEd.exit.2 ], [ 6, %_ZN6hermes2vm10inLeapYearEd.exit.6 ], [ 3, %_ZN6hermes2vm10inLeapYearEd.exit.3 ], [ 9, %_ZN6hermes2vm10inLeapYearEd.exit.9 ], [ 4, %_ZN6hermes2vm10inLeapYearEd.exit.4 ], [ 7, %_ZN6hermes2vm10inLeapYearEd.exit.7 ], [ 5, %_ZN6hermes2vm10inLeapYearEd.exit.5 ], [ 8, %_ZN6hermes2vm10inLeapYearEd.exit.8 ]
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 7 uses
  %i.b = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+00) #19, !tbaa !3
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %_ZN6hermes2vm10inLeapYearEd.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef double @fmod(double noundef %i.a, double noundef 1.000000e+02) #19, !tbaa !3
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %_ZN6hermes2vmL10isLeapYearEd.exit.i.i

_ZN6hermes2vmL10isLeapYearEd.exit.i.i:            ; preds = %bb.b
  %i.f = tail call noundef double @fmod(double noundef %i.a, double noundef 4.000000e+02) #19, !tbaa !3
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %_ZN6hermes2vm10inLeapYearEd.exit.thread

bb.c:                                             ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i.i, %bb.b
  br label %_ZN6hermes2vm10inLeapYearEd.exit.thread

_ZN6hermes2vm10inLeapYearEd.exit.thread:          ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i, %bb.c
  %i.h = phi ptr [ @_ZZN6hermes2vmL12dayFromMonthEjbE13leapYearTable, %bb.c ], [ @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i ], [ @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable, %bb.a ]
  %i.i = tail call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.j = zext nneg i32 %i.i to i64
  %1 = fdiv double %0, 8.640000e+07
  %2 = tail call noundef double @llvm.floor.f64(double %1)
  %3 = fadd double %i.a, -1.601000e+03
  %4 = fdiv double %3, 4.000000e+02
  %i.k = tail call double @llvm.floor.f64(double %4)
  %i.l = fadd double %i.a, -1.970000e+03
  %i.m = fadd double %i.a, -1.969000e+03
  %i.n = fmul double %i.m, 2.500000e-01
  %i.o = tail call double @llvm.floor.f64(double %i.n)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.l, double 3.650000e+02, double %i.o)
  %i.q = fadd double %i.a, -1.901000e+03
  %i.r = fdiv double %i.q, 1.000000e+02
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fsub double %i.p, %i.s
  %i.u = fadd double %i.k, %i.t
  %i.v = fsub double %2, %i.u
  %.in.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.j
  %i.w = load i16, ptr %.in.i, align 2, !tbaa !10
  %i.x = uitofp i16 %i.w to double
  %i.y = fsub double %i.v, %i.x
  %i.z = fadd double %i.y, 1.000000e+00
  ret double %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef i32 @_ZN6hermes2vm7weekDayEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 8.640000e+07
  %i.b = tail call noundef double @llvm.floor.f64(double %i.a)
  %i.c = fadd double %i.b, 4.000000e+00
  %i.d = tail call double @fmod(double noundef %i.c, double noundef 7.000000e+00) #19, !tbaa !3 ; 3 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  %i.f = fadd double %i.d, 7.000000e+00
  %i.g = select i1 %i.e, double %i.f, double %i.d
  %i.h = fptosi double %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm8localTZAEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %0 = alloca %struct.tm, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call i64 @time(ptr noundef null) #19
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.c = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %0) #19 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  %.not5 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not5, double -0.000000e+00, double -3.600000e+06
  %i.j = call double @llvm.fmuladd.f64(double %i.f, double 1.000000e+03, double %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret double %.0
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN6hermes2vm6detail14equivalentTimeEl(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = sdiv i64 %0, 86400                       ; 2 uses
  %i.b = icmp slt i64 %0, 0
  %i.c = mul nsw i64 %i.a, 86400
  %.not.i = icmp ne i64 %i.c, %0
  %or.cond.not.i = select i1 %i.b, i1 %.not.i, i1 false
  %i.d = sext i1 %or.cond.not.i to i64
  %.0.i = add nsw i64 %i.a, %i.d                  ; 2 uses
  %i.e = trunc i64 %.0.i to i32
  %i.f = add nsw i32 %i.e, 100795972              ; 2 uses
  %i.g = sdiv i32 %i.f, 146097                    ; 2 uses
  %i.h = mul nsw i32 %i.g, 400
  %i.i = add nsw i32 %i.h, -274000
  %i.j = mul nsw i32 %i.g, 146097
  %i.k = add nsw i32 %i.j, -100795972
  %.recomposed = srem i32 %i.f, 146097            ; 2 uses
  %i.l = sdiv i32 %.recomposed, 36524             ; 2 uses
  %i.m = mul nsw i32 %i.l, 100
  %i.n = add nsw i32 %i.i, %i.m
  %i.o = mul nsw i32 %i.l, 36524
  %i.p = add nsw i32 %i.k, %i.o
  %.recomposed20 = srem i32 %.recomposed, 36524   ; 2 uses
  %i.q = sdiv i32 %.recomposed20, 1461            ; 2 uses
  %i.r = shl nsw i32 %i.q, 2
  %i.s = add nsw i32 %i.n, %i.r
  %i.t = mul nsw i32 %i.q, 1461
  %i.u = add nsw i32 %i.p, %i.t
  %.recomposed21 = srem i32 %.recomposed20, 1461  ; 2 uses
  %i.v = sdiv i32 %.recomposed21, 365             ; 3 uses
  %.recomposed22 = srem i32 %.recomposed21, 365
  %i.w = add nsw i32 %i.s, %i.v                   ; 3 uses
  %i.x = mul nsw i32 %i.v, 365
  %i.y = add nsw i32 %i.u, %i.x                   ; 3 uses
  %i.z = add nsw i32 %i.w, -1970
  %or.cond.i = icmp ult i32 %i.z, 68
  br i1 %or.cond.i, label %_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = add nsw i32 %i.y, 4                     ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sdiv i32 %i.aa, 7                       ; 2 uses
  %.sext.i.i.i = sext i32 %i.ac to i64
  %i.ad = icmp slt i32 %i.y, -4
  %i.ae = mul nsw i64 %.sext.i.i.i, 7
  %.not.i.i.i.i = icmp ne i64 %i.ae, %i.ab
  %or.cond.not.i.i.i.i = select i1 %i.ad, i1 %.not.i.i.i.i, i1 false
  %i.af = sext i1 %or.cond.not.i.i.i.i to i32
  %.0.i.i.i.i = add nsw i32 %i.ac, %i.af
  %.neg.i.i.i = mul nsw i32 %.0.i.i.i.i, -7
  %i.ag = add i32 %.neg.i.i.i, %i.aa
  %i.ah = and i32 %i.v, 3
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i

bb.c:                                             ; preds = %bb.b
  %i.ai = srem i32 %i.w, 100
  %.not3.i.i = icmp ne i32 %i.ai, 0
  %i.aj = srem i32 %i.w, 400
  %.not4.i.i = icmp eq i32 %i.aj, 0
  %or.cond13.i = or i1 %.not3.i.i, %.not4.i.i
  %spec.select.i = select i1 %or.cond13.i, i32 2012, i32 2006
  br label %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i

_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i:     ; preds = %bb.c, %bb.b
  %i.ak = phi i32 [ 2006, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.al = mul nsw i32 %i.ag, 12
  %i.am = srem i32 %i.al, 28
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = trunc i32 %i.an to i8
  %.lhs.trunc.i = add nsw i8 %i.ao, 42
  %i.ap = srem i8 %.lhs.trunc.i, 28
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr @_ZN6hermes2vmL26epochDaysForYear2006To2033E, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  br label %_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit

_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit: ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i
  %.0.i2 = phi i32 [ %i.as, %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i ], [ %i.y, %bb.a ]
  %.neg = mul i64 %.0.i, -86400
  %i.at = add i64 %.neg, %0
  %i.au = add nsw i32 %.recomposed22, %.0.i2
  %i.av = sitofp i32 %i.au to double
  %i.aw = sitofp i64 %i.at to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double 8.640000e+04, double %i.aw)
  %i.ay = fptosi double %i.ax to i32
  ret i32 %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(793) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793) %1, double noundef %0, i8 noundef signext 1) #19
  %i.d = fadd double %0, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.d, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

declare noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793), double noundef, i8 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(793) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793) %1, double noundef %0, i8 noundef signext 0) #19
  %i.d = fsub double %0, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.d, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 3.600000e+06
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = tail call double @fmod(double noundef %i.b, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
  %i.e = fadd double %i.c, 2.400000e+01
  %i.f = select i1 %i.d, double %i.e, double %i.c
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 6.000000e+04
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = tail call double @fmod(double noundef %i.b, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
  %i.e = fadd double %i.c, 6.000000e+01
  %i.f = select i1 %i.d, double %i.e, double %i.c
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 1.000000e+03
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = tail call double @fmod(double noundef %i.b, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
  %i.e = fadd double %i.c, 6.000000e+01
  %i.f = select i1 %i.d, double %i.e, double %i.c
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call double @fmod(double noundef %0, double noundef 1.000000e+03) #19, !tbaa !3 ; 3 uses
  %i.b = fcmp olt double %i.a, 0.000000e+00
  %i.c = fadd double %i.a, 1.000000e+03
  %i.d = select i1 %i.b, double %i.c, double %i.a
  ret double %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp one double %i.c, +inf
  %or.cond = and i1 %i.b, %i.d
  %i.e = tail call double @llvm.fabs.f64(double %2)
  %i.f = fcmp one double %i.e, +inf
  %or.cond15 = and i1 %or.cond, %i.f
  %i.g = tail call double @llvm.fabs.f64(double %3)
  %i.h = fcmp one double %i.g, +inf
  %or.cond17 = and i1 %or.cond15, %i.h
  br i1 %or.cond17, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call double @llvm.trunc.f64(double %0)
  %i.j = tail call nnan ninf double @llvm.trunc.f64(double %1)
  %i.k = tail call double @llvm.trunc.f64(double %2)
  %i.l = tail call double @llvm.trunc.f64(double %3)
  %i.m = fmul nnan double %i.j, 6.000000e+04
  %i.n = tail call double @llvm.fmuladd.f64(double %i.i, double 3.600000e+06, double %i.m)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.k, double 1.000000e+03, double %i.n)
  %i.p = fadd double %i.l, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.p, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp one double %i.c, +inf
  %or.cond = and i1 %i.b, %i.d
  %i.e = tail call double @llvm.fabs.f64(double %2)
  %i.f = fcmp one double %i.e, +inf
  %or.cond18 = and i1 %or.cond, %i.f
  br i1 %or.cond18, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.trunc.f64(double %0)
  %i.h = tail call double @llvm.trunc.f64(double %1) ; 2 uses
  %i.i = tail call double @llvm.trunc.f64(double %2)
  %i.j = fdiv double %i.h, 1.200000e+01
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fadd double %i.g, %i.k                   ; 7 uses
  %i.m = frem double %i.h, 1.200000e+01           ; 3 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = fadd double %i.m, 1.200000e+01
  %i.p = select i1 %i.n, double %i.o, double %i.m
  %i.q = tail call noundef double @fmod(double noundef %i.l, double noundef 4.000000e+00) #19, !tbaa !3
  %i.r = fcmp une double %i.q, 0.000000e+00
  br i1 %i.r, label %_ZN6hermes2vmL10isLeapYearEd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef double @fmod(double noundef %i.l, double noundef 1.000000e+02) #19, !tbaa !3
  %i.t = fcmp une double %i.s, 0.000000e+00
  br i1 %i.t, label %_ZN6hermes2vmL10isLeapYearEd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef double @fmod(double noundef %i.l, double noundef 4.000000e+02) #19, !tbaa !3
  %i.v = fcmp oeq double %i.u, 0.000000e+00
  %i.w = select i1 %i.v, ptr @_ZZN6hermes2vmL12dayFromMonthEjbE13leapYearTable, ptr @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable
  br label %_ZN6hermes2vmL10isLeapYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit:                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ @_ZZN6hermes2vmL12dayFromMonthEjbE13leapYearTable, %bb.c ], [ @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable, %bb.b ], [ %i.w, %bb.d ]
  %i.x = fadd double %i.l, -1.970000e+03
  %i.y = fadd double %i.l, -1.969000e+03
  %i.z = fmul double %i.y, 2.500000e-01
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double 3.650000e+02, double %i.aa)
  %3 = fadd double %i.l, -1.901000e+03
  %4 = fdiv double %3, 1.000000e+02
  %5 = tail call double @llvm.floor.f64(double %4)
  %6 = fsub double %i.ab, %5
  %7 = fadd double %i.l, -1.601000e+03
  %8 = fdiv double %7, 4.000000e+02
  %i.ac = tail call double @llvm.floor.f64(double %8)
  %i.ad = fadd double %i.ac, %6
  %i.ae = fmul double %i.ad, 8.640000e+07
  %i.af = fdiv double %i.ae, 8.640000e+07
  %i.ag = tail call double @llvm.floor.f64(double %i.af)
  %i.ah = fptoui double %i.p to i32
  %i.ai = zext i32 %i.ah to i64
  %.in.i = getelementptr inbounds nuw [2 x i8], ptr %.0.i, i64 %i.ai
  %i.aj = load i16, ptr %.in.i, align 2, !tbaa !10
  %i.ak = uitofp i16 %i.aj to double
  %i.al = fadd double %i.ag, %i.ak
  %i.am = fadd double %i.i, %i.al
  %i.an = fadd double %i.am, -1.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEd.exit
  %.0 = phi double [ %i.an, %_ZN6hermes2vmL10isLeapYearEd.exit ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp one double %i.c, +inf
  %or.cond = and i1 %i.b, %i.d
  %i.e = fmul double %0, 8.640000e+07
  %i.f = fadd double %i.e, %1
  %.0 = select i1 %or.cond, double %i.f, double +qnan
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm8timeClipEd(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = fcmp ogt double %i.a, 8.640000e+15
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.trunc.f64(double %0)
  %i.e = fadd double %i.d, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.e, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15dateToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  %5 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0)
  %i.e = fptosi double %i.d to i32                ; 3 uses
  %i.f = call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.g = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.h = call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0)
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %or.cond = icmp ugt i32 %i.e, 9999
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %i.j, align 8, !tbaa !26, !alias.scope !28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !28
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.i, ptr %i.k, align 8, !tbaa !31, !alias.scope !28
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.g, ptr %i.l, align 4, !tbaa !33, !alias.scope !28
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.e, ptr %i.m, align 8, !tbaa !35, !alias.scope !28
  %i.n = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.1, ptr %i.o, align 8, !tbaa !26, !alias.scope !37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %5, align 8, !tbaa !22, !alias.scope !37
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.i, ptr %i.p, align 8, !tbaa !31, !alias.scope !37
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.g, ptr %i.q, align 4, !tbaa !33, !alias.scope !37
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.e, ptr %i.r, align 8, !tbaa !35, !alias.scope !37
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %5) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15timeToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::format_object.5", align 8 ; 6 uses
  %5 = alloca %"class.llvh::format_object.12", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = insertelement <2 x double> poison, double %0, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv <2 x double> %i.e, <double 3.600000e+06, double 6.000000e+04>
  %i.g = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.f) ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = call double @fmod(double noundef %i.h, double noundef 2.400000e+01) #19, !tbaa !3
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = call double @fmod(double noundef %i.j, double noundef 6.000000e+01) #19, !tbaa !3
  %i.l = fdiv double %0, 1.000000e+03
  %i.m = call double @llvm.floor.f64(double %i.l)
  %i.n = call double @fmod(double noundef %i.m, double noundef 6.000000e+01) #19, !tbaa !3
  %i.o = call double @fmod(double noundef %0, double noundef 1.000000e+03) #19, !tbaa !3
  %i.p = insertelement <4 x double> poison, double %i.o, i64 0
  %i.q = insertelement <4 x double> %i.p, double %i.n, i64 1
  %i.r = insertelement <4 x double> %i.q, double %i.k, i64 2
  %i.s = insertelement <4 x double> %i.r, double %i.i, i64 3 ; 3 uses
  %i.t = fcmp olt <4 x double> %i.s, zeroinitializer
  %i.u = fadd <4 x double> %i.s, <double 1.000000e+03, double 6.000000e+01, double 6.000000e+01, double 2.400000e+01>
  %i.v = select <4 x i1> %i.t, <4 x double> %i.u, <4 x double> %i.s
  %i.w = fptosi <4 x double> %i.v to <4 x i32>    ; 2 uses
  %i.x = fcmp oeq double %1, 0.000000e+00
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.2, ptr %i.y, align 8, !tbaa !26, !alias.scope !40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !40
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %i.w, ptr %i.z, align 8, !tbaa !3, !alias.scope !40
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = fcmp oge double %1, 0.000000e+00
  %i.ac = select i1 %i.ab, i8 43, i8 45
  %i.ad = call noundef double @llvm.fabs.f64(double %1)
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %i.af, <double 3.600000e+06, double 6.000000e+04>
  %i.ah = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ag) ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = call double @fmod(double noundef %i.ai, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  %i.al = fadd double %i.aj, 2.400000e+01
  %i.am = select i1 %i.ak, double %i.al, double %i.aj
  %i.an = fptosi double %i.am to i32
  %i.ao = extractelement <2 x double> %i.ah, i64 1
  %i.ap = call double @fmod(double noundef %i.ao, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.aq = fcmp olt double %i.ap, 0.000000e+00
  %i.ar = fadd double %i.ap, 6.000000e+01
  %i.as = select i1 %i.aq, double %i.ar, double %i.ap
  %i.at = fptosi double %i.as to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.3, ptr %i.au, align 8, !tbaa !26, !alias.scope !43
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiiciiEEE, i64 16), ptr %5, align 8, !tbaa !22, !alias.scope !43
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.at, ptr %i.av, align 8, !tbaa !46, !alias.scope !43
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.an, ptr %i.aw, align 4, !tbaa !48, !alias.scope !43
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.ac, ptr %i.ax, align 8, !tbaa !50, !alias.scope !43
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <4 x i32> %i.w, ptr %i.ay, align 4, !tbaa !3, !alias.scope !43
  %i.az = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %5) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm14timeZoneStringEddRN4llvh15SmallVectorImplIcEE:bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm14dateTimeStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object.32", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %6 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  %7 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %8 = alloca %"class.llvh::format_object.26", align 8 ; 8 uses
  %9 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %9, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %2, ptr %i.f, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.g = call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0)
  %i.h = call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.i = call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0)
  %i.j = fdiv double %0, 8.640000e+07
  %i.k = call noundef double @llvm.floor.f64(double %i.j)
  %i.l = fadd double %i.k, 4.000000e+00
  %i.m = call double @fmod(double noundef %i.l, double noundef 7.000000e+00) #19, !tbaa !3 ; 3 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = fadd double %i.m, 7.000000e+00
  %i.p = select i1 %i.n, double %i.o, double %i.m
  %i.q = fptosi double %i.p to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @_ZN6hermes2vmL12weekdayNamesE, i64 %i.r
  %i.t = zext nneg i32 %i.h to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vmL10monthNamesE, i64 %i.t
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.4, ptr %i.v, align 8, !tbaa !26, !alias.scope !73
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJPKcS2_iiEEE, i64 16), ptr %8, align 8, !tbaa !22, !alias.scope !73
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = insertelement <2 x double> poison, double %i.g, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.i, i64 1
  %i.z = fptosi <2 x double> %i.y to <2 x i32>
  store <2 x i32> %i.z, ptr %i.w, align 8, !tbaa !3, !alias.scope !73
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !60, !noalias !73
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !61, !alias.scope !73
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !60, !noalias !73
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !63, !alias.scope !73
  %i.ae = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull @.str.7, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 32, ptr %i.ai, align 1
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !77
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %2, ptr %i.ap, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ax = fcmp oge double %1, 0.000000e+00
  %i.ay = select i1 %i.ax, i8 43, i8 45
  %i.az = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ba = insertelement <4 x double> poison, double %0, i64 0
  %i.bb = insertelement <4 x double> %i.ba, double %i.az, i64 1
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bd = fdiv <4 x double> %i.bc, <double 3.600000e+06, double 6.000000e+04, double 1.000000e+03, double 6.000000e+04>
  %i.be = call <4 x double> @llvm.floor.v4f64(<4 x double> %i.bd) ; 4 uses
  %i.bf = extractelement <4 x double> %i.be, i64 0
  %i.bg = call double @fmod(double noundef %i.bf, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %i.bi = fadd double %i.bg, 2.400000e+01
  %i.bj = select i1 %i.bh, double %i.bi, double %i.bg
  %i.bk = fptosi double %i.bj to i32
  %i.bl = extractelement <4 x double> %i.be, i64 1
  %i.bm = call double @fmod(double noundef %i.bl, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.bn = fcmp olt double %i.bm, 0.000000e+00
  %i.bo = fadd double %i.bm, 6.000000e+01
  %i.bp = select i1 %i.bn, double %i.bo, double %i.bm
  %i.bq = fptosi double %i.bp to i32
  %i.br = extractelement <4 x double> %i.be, i64 2
  %i.bs = call double @fmod(double noundef %i.br, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  %i.bu = fadd double %i.bs, 6.000000e+01
  %i.bv = select i1 %i.bt, double %i.bu, double %i.bs
  %i.bw = fptosi double %i.bv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr @.str.5, ptr %i.aq, align 8, !tbaa !26, !alias.scope !78
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !78
  store i32 %i.bw, ptr %i.ar, align 8, !tbaa !31, !alias.scope !78
  store i32 %i.bq, ptr %i.as, align 4, !tbaa !33, !alias.scope !78
  store i32 %i.bk, ptr %i.at, align 8, !tbaa !35, !alias.scope !78
  %i.bx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 1, ptr %i.au, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  store ptr %2, ptr %i.aw, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.by = extractelement <4 x double> %i.be, i64 3
  %i.bz = call double @fmod(double noundef %i.by, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.ca = fcmp olt double %i.bz, 0.000000e+00
  %i.cb = fadd double %i.bz, 6.000000e+01
  %i.cc = select i1 %i.ca, double %i.cb, double %i.bz
  %i.cd = fptosi double %i.cc to i32
  %i.ce = fdiv double %i.az, 3.600000e+06
  %i.cf = call double @llvm.floor.f64(double %i.ce)
  %i.cg = call double @fmod(double noundef %i.cf, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.ch = fcmp olt double %i.cg, 0.000000e+00
  %i.ci = fadd double %i.cg, 2.400000e+01
  %i.cj = select i1 %i.ch, double %i.ci, double %i.cg
  %i.ck = fptosi double %i.cj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.cl, align 8, !tbaa !26, !alias.scope !81
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !81
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.cd, ptr %i.cm, align 8, !tbaa !31, !alias.scope !81
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !33, !alias.scope !81
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.ay, ptr %i.co, align 8, !tbaa !71, !alias.scope !81
  %i.cp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17dateTimeUTCStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %6 = alloca %"class.llvh::format_object.38", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0)
  %i.e = fptosi double %i.d to i32
  %i.f = call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.g = call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0)
  %i.h = fptosi double %i.g to i32
  %7 = fdiv double %0, 8.640000e+07
  %i.i = call noundef double @llvm.floor.f64(double %7)
  %i.j = fadd double %i.i, 4.000000e+00
  %i.k = call double @fmod(double noundef %i.j, double noundef 7.000000e+00) #19, !tbaa !3 ; 3 uses
  %i.l = fcmp olt double %i.k, 0.000000e+00
  %i.m = fadd double %i.k, 7.000000e+00
  %i.n = select i1 %i.l, double %i.m, double %i.k
  %i.o = fptosi double %i.n to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @_ZN6hermes2vmL12weekdayNamesE, i64 %i.p
  %i.r = zext nneg i32 %i.f to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vmL10monthNamesE, i64 %i.r
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.8, ptr %i.t, align 8, !tbaa !26, !alias.scope !84
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJPKciS2_iEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !84
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.e, ptr %i.u, align 8, !tbaa !87, !alias.scope !84
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !60, !noalias !84
  store ptr %i.w, ptr %i.v, align 8, !tbaa !89, !alias.scope !84
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.h, ptr %i.x, align 8, !tbaa !33, !alias.scope !84
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !60, !noalias !84
  store ptr %i.z, ptr %i.y, align 8, !tbaa !63, !alias.scope !84
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.ad, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %8 = insertelement <2 x double> poison, double %0, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x double> %9, <double 3.600000e+06, double 6.000000e+04>
  %i.af = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = call double @fmod(double noundef %i.ag, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  %i.aj = fadd double %i.ah, 2.400000e+01
  %i.ak = select i1 %i.ai, double %i.aj, double %i.ah
  %i.al = fptosi double %i.ak to i32
  %i.am = extractelement <2 x double> %i.af, i64 1
  %i.an = call double @fmod(double noundef %i.am, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.ao = fcmp olt double %i.an, 0.000000e+00
  %i.ap = fadd double %i.an, 6.000000e+01
  %i.aq = select i1 %i.ao, double %i.ap, double %i.an
  %i.ar = fptosi double %i.aq to i32
  %10 = fdiv double %0, 1.000000e+03
  %i.as = call double @llvm.floor.f64(double %10)
  %i.at = call double @fmod(double noundef %i.as, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.au = fcmp olt double %i.at, 0.000000e+00
  %i.av = fadd double %i.at, 6.000000e+01
  %i.aw = select i1 %i.au, double %i.av, double %i.at
  %i.ax = fptosi double %i.aw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.5, ptr %i.ay, align 8, !tbaa !26, !alias.scope !91
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !91
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.ax, ptr %i.az, align 8, !tbaa !31, !alias.scope !91
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ar, ptr %i.ba, align 4, !tbaa !33, !alias.scope !91
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.al, ptr %i.bb, align 8, !tbaa !35, !alias.scope !91
  %i.bc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm12timeTZStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object.32", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %6 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = fcmp oge double %1, 0.000000e+00
  %i.l = select i1 %i.k, i8 43, i8 45
  %i.m = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %i.n = insertelement <4 x double> poison, double %0, i64 0
  %i.o = insertelement <4 x double> %i.n, double %i.m, i64 1
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.q = fdiv <4 x double> %i.p, <double 3.600000e+06, double 6.000000e+04, double 1.000000e+03, double 6.000000e+04>
  %i.r = call <4 x double> @llvm.floor.v4f64(<4 x double> %i.q) ; 4 uses
  %i.s = extractelement <4 x double> %i.r, i64 0
  %i.t = call double @fmod(double noundef %i.s, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %i.v = fadd double %i.t, 2.400000e+01
  %i.w = select i1 %i.u, double %i.v, double %i.t
  %i.x = fptosi double %i.w to i32
  %i.y = extractelement <4 x double> %i.r, i64 1
  %i.z = call double @fmod(double noundef %i.y, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  %i.ab = fadd double %i.z, 6.000000e+01
  %i.ac = select i1 %i.aa, double %i.ab, double %i.z
  %i.ad = fptosi double %i.ac to i32
  %i.ae = extractelement <4 x double> %i.r, i64 2
  %i.af = call double @fmod(double noundef %i.ae, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.ag = fcmp olt double %i.af, 0.000000e+00
  %i.ah = fadd double %i.af, 6.000000e+01
  %i.ai = select i1 %i.ag, double %i.ah, double %i.af
  %i.aj = fptosi double %i.ai to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr @.str.5, ptr %i.d, align 8, !tbaa !26, !alias.scope !94
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !94
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !31, !alias.scope !94
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !33, !alias.scope !94
  store i32 %i.x, ptr %i.g, align 8, !tbaa !35, !alias.scope !94
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 1, ptr %i.h, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  store ptr %2, ptr %i.j, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.al = extractelement <4 x double> %i.r, i64 3
  %i.am = call double @fmod(double noundef %i.al, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.an = fcmp olt double %i.am, 0.000000e+00
  %i.ao = fadd double %i.am, 6.000000e+01
  %i.ap = select i1 %i.an, double %i.ao, double %i.am
  %i.aq = fptosi double %i.ap to i32
  %i.ar = fdiv double %i.m, 3.600000e+06
  %i.as = call double @llvm.floor.f64(double %i.ar)
  %i.at = call double @fmod(double noundef %i.as, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.au = fcmp olt double %i.at, 0.000000e+00
  %i.av = fadd double %i.at, 2.400000e+01
  %i.aw = select i1 %i.au, double %i.av, double %i.at
  %i.ax = fptosi double %i.aw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.ay, align 8, !tbaa !26, !alias.scope !97
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !97
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.aq, ptr %i.az, align 8, !tbaa !31, !alias.scope !97
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !33, !alias.scope !97
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.l, ptr %i.bb, align 8, !tbaa !71, !alias.scope !97
  %i.bc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(793) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::StringView", align 8 ; 23 uses
  %4 = alloca %"class.hermes::vm::StringView", align 8 ; 23 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.hermes::vm::StringView::const_iterator", align 8 ; 43 uses
  %6 = alloca %class.anon.75, align 8             ; 7 uses
  %7 = alloca %class.anon.76, align 8             ; 7 uses
  %8 = alloca %"class.llvh::ArrayRef", align 8    ; 29 uses
  %9 = alloca %"class.llvh::ArrayRef", align 8    ; 37 uses
  %10 = alloca %"class.hermes::vm::StringView::const_iterator", align 8 ; 51 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %.sroa.5.8.extract.trunc.i = trunc i64 %1 to i32 ; 5 uses
  %.sroa.8.8.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.q = icmp slt i32 %.sroa.5.8.extract.trunc.i, 0 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.r = and i32 %.sroa.5.8.extract.trunc.i, 1073741824
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %0, align 8, !tbaa !12
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr                 ; 10 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp ugt i32 %i.u, 150994943
  br i1 %i.v, label %bb.d, label %bb.e, !prof !100

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.u, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %.not.i1.i.i = icmp samesign ult i32 %.sroa.5.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i.i2.i.i = load i64, ptr %0, align 8, !tbaa !12
end_hunk_1
