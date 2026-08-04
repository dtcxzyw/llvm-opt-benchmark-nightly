inline.NumInlined: 605
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0

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
  %i.f = insertelement <2 x double> poison, double %0, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fadd <2 x double> %i.g, <double -1.901000e+03, double -1.601000e+03>
  %i.i = fdiv <2 x double> %i.h, <double 1.000000e+02, double 4.000000e+02> ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fsub double %i.e, %i.k
  %i.m = extractelement <2 x double> %i.i, i64 1
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fadd double %i.n, %i.l
  ret double %i.o
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
  %i.f = insertelement <2 x double> poison, double %0, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fadd <2 x double> %i.g, <double -1.901000e+03, double -1.601000e+03>
  %i.i = fdiv <2 x double> %i.h, <double 1.000000e+02, double 4.000000e+02> ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fsub double %i.e, %i.k
  %i.m = extractelement <2 x double> %i.i, i64 1
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fadd double %i.n, %i.l
  %i.p = fmul double %i.o, 8.640000e+07
  ret double %i.p
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
  %i.e = fadd double %i.d, 1.970000e+03           ; 5 uses
  %i.f = fadd double %i.e, -1.970000e+03
  %i.g = fadd nnan double %i.e, -1.969000e+03
  %i.h = fmul nnan double %i.g, 2.500000e-01
  %i.i = tail call nnan double @llvm.floor.f64(double %i.h)
  %i.j = tail call double @llvm.fmuladd.f64(double %i.f, double 3.650000e+02, double %i.i)
  %i.k = insertelement <2 x double> poison, double %i.e, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fadd <2 x double> %i.l, <double -1.901000e+03, double -1.601000e+03>
  %i.n = fdiv <2 x double> %i.m, <double 1.000000e+02, double 4.000000e+02>
  %1 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.n) ; 2 uses
  %2 = extractelement <2 x double> %1, i64 0
  %i.o = fsub double %i.j, %2
  %i.p = extractelement <2 x double> %1, i64 1
  %i.q = fadd double %i.p, %i.o
  %.018 = fmul double %i.q, 8.640000e+07          ; 2 uses
  %i.r = fcmp ogt double %.018, %0
  br i1 %i.r, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01519 = phi double [ %i.s, %.lr.ph ], [ %i.e, %bb.b ]
  %i.s = fadd double %.01519, -1.000000e+00       ; 5 uses
  %i.t = fadd double %i.s, -1.970000e+03
  %i.u = fadd double %i.s, -1.969000e+03
  %i.v = fmul double %i.u, 2.500000e-01
  %i.w = tail call double @llvm.floor.f64(double %i.v)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double 3.650000e+02, double %i.w)
  %i.y = insertelement <2 x double> poison, double %i.s, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fadd <2 x double> %i.z, <double -1.901000e+03, double -1.601000e+03>
  %i.ab = fdiv <2 x double> %i.aa, <double 1.000000e+02, double 4.000000e+02> ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %i.ae = fsub double %i.x, %i.ad
  %i.af = extractelement <2 x double> %i.ab, i64 1
  %i.ag = tail call double @llvm.floor.f64(double %i.af)
  %i.ah = fadd double %i.ag, %i.ae
  %.0 = fmul double %i.ah, 8.640000e+07           ; 2 uses
  %i.ai = fcmp ogt double %.0, %0
  br i1 %i.ai, label %.lr.ph, label %.preheader.preheader, !llvm.loop !7

.preheader.preheader:                             ; preds = %.lr.ph, %bb.b
  %.116.ph = phi double [ %i.e, %bb.b ], [ %i.s, %.lr.ph ]
  %.1.ph = phi double [ %.018, %bb.b ], [ %.0, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.d
  %.116 = phi double [ %i.as, %bb.d ], [ %.116.ph, %.preheader.preheader ] ; 5 uses
  %.1 = phi double [ %i.bi, %bb.d ], [ %.1.ph, %.preheader.preheader ]
  %i.aj = tail call noundef double @fmod(double noundef %.116, double noundef 4.000000e+00) #19, !tbaa !3
  %i.ak = fcmp une double %i.aj, 0.000000e+00
  br i1 %i.ak, label %_ZN6hermes2vm10daysInYearEd.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.al = tail call noundef double @fmod(double noundef %.116, double noundef 1.000000e+02) #19, !tbaa !3
  %i.am = fcmp une double %i.al, 0.000000e+00
  br i1 %i.am, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vmL10isLeapYearEd.exit.i

_ZN6hermes2vmL10isLeapYearEd.exit.i:              ; preds = %bb.c
  %i.an = tail call noundef double @fmod(double noundef %.116, double noundef 4.000000e+02) #19, !tbaa !3
  %i.ao = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.ao, label %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i, label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit.thread.i:       ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i, %bb.c
  br label %_ZN6hermes2vm10daysInYearEd.exit

_ZN6hermes2vm10daysInYearEd.exit:                 ; preds = %.preheader, %_ZN6hermes2vmL10isLeapYearEd.exit.i, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i
  %i.ap = phi double [ 3.660000e+02, %_ZN6hermes2vmL10isLeapYearEd.exit.thread.i ], [ 3.650000e+02, %_ZN6hermes2vmL10isLeapYearEd.exit.i ], [ 3.650000e+02, %.preheader ]
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double 8.640000e+07, double %.1)
  %i.ar = fcmp ugt double %i.aq, %0
  br i1 %i.ar, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm10daysInYearEd.exit
  %i.as = fadd double %.116, 1.000000e+00         ; 4 uses
  %i.at = fadd double %i.as, -1.970000e+03
  %i.au = fadd double %i.as, -1.969000e+03
  %i.av = fmul double %i.au, 2.500000e-01
  %i.aw = tail call double @llvm.floor.f64(double %i.av)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double 3.650000e+02, double %i.aw)
  %i.ay = insertelement <2 x double> poison, double %i.as, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fadd <2 x double> %i.az, <double -1.901000e+03, double -1.601000e+03>
  %i.bb = fdiv <2 x double> %i.ba, <double 1.000000e+02, double 4.000000e+02> ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = tail call double @llvm.floor.f64(double %i.bc)
  %i.be = fsub double %i.ax, %i.bd
  %i.bf = extractelement <2 x double> %i.bb, i64 1
  %i.bg = tail call double @llvm.floor.f64(double %i.bf)
  %i.bh = fadd double %i.bg, %i.be
  %i.bi = fmul double %i.bh, 8.640000e+07
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
  %i.a = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 4 uses
  %i.b = fadd double %i.a, -1.970000e+03
  %i.c = fadd double %i.a, -1.969000e+03
  %i.d = fmul double %i.c, 2.500000e-01
  %i.e = tail call double @llvm.floor.f64(double %i.d)
  %i.f = tail call double @llvm.fmuladd.f64(double %i.b, double 3.650000e+02, double %i.e)
  %i.g = fadd double %i.a, -1.901000e+03
  %i.h = insertelement <2 x double> poison, double %0, i64 0
  %i.i = insertelement <2 x double> %i.h, double %i.g, i64 1
  %i.j = fdiv <2 x double> %i.i, <double 8.640000e+07, double 1.000000e+02> ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = tail call noundef double @llvm.floor.f64(double %i.k)
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fsub double %i.f, %i.n
  %i.p = fadd double %i.a, -1.601000e+03
  %i.q = fdiv double %i.p, 4.000000e+02
  %i.r = tail call double @llvm.floor.f64(double %i.q)
  %i.s = fadd double %i.r, %i.o
  %i.t = fsub double %i.l, %i.s                   ; 11 uses
  %i.u = fcmp olt double %i.t, 3.100000e+01
  br i1 %i.u, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZN6hermes2vm10inLeapYearEd.exit
  %i.v = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0) ; 3 uses
  %i.w = tail call noundef double @fmod(double noundef %i.v, double noundef 4.000000e+00) #19, !tbaa !3
  %i.x = fcmp une double %i.w, 0.000000e+00
  br i1 %i.x, label %_ZN6hermes2vm10inLeapYearEd.exit.thread.1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef double @fmod(double noundef %i.v, double noundef 1.000000e+02) #19, !tbaa !3
  %i.z = fcmp une double %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN6hermes2vm10inLeapYearEd.exit.1, label %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1

_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1:          ; preds = %bb.b
  %i.aa = tail call noundef double @fmod(double noundef %i.v, double noundef 4.000000e+02) #19, !tbaa !3
  %i.ab = fcmp oeq double %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZN6hermes2vm10inLeapYearEd.exit.1, label %_ZN6hermes2vm10inLeapYearEd.exit.thread.1

_ZN6hermes2vm10inLeapYearEd.exit.thread.1:        ; preds = %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1, %bb.a
  br label %_ZN6hermes2vm10inLeapYearEd.exit.1

_ZN6hermes2vm10inLeapYearEd.exit.1:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.thread.1, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1, %bb.b
  %i.ac = phi double [ 5.900000e+01, %_ZN6hermes2vm10inLeapYearEd.exit.thread.1 ], [ 6.000000e+01, %bb.b ], [ 6.000000e+01, %_ZN6hermes2vmL10isLeapYearEd.exit.i.i.1 ] ; 2 uses
  %i.ad = fcmp olt double %i.t, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.2

_ZN6hermes2vm10inLeapYearEd.exit.2:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.1
  %i.ae = fadd double %i.ac, 3.100000e+01         ; 2 uses
  %i.af = fcmp olt double %i.t, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.3

_ZN6hermes2vm10inLeapYearEd.exit.3:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.2
  %i.ag = fadd double %i.ae, 3.000000e+01         ; 2 uses
  %i.ah = fcmp olt double %i.t, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.4

_ZN6hermes2vm10inLeapYearEd.exit.4:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.3
  %i.ai = fadd double %i.ag, 3.100000e+01         ; 2 uses
  %i.aj = fcmp olt double %i.t, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.5

_ZN6hermes2vm10inLeapYearEd.exit.5:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.4
  %i.ak = fadd double %i.ai, 3.000000e+01         ; 2 uses
  %i.al = fcmp olt double %i.t, %i.ak
  br i1 %i.al, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.6

_ZN6hermes2vm10inLeapYearEd.exit.6:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.5
  %i.am = fadd double %i.ak, 3.100000e+01         ; 2 uses
  %i.an = fcmp olt double %i.t, %i.am
  br i1 %i.an, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.7

_ZN6hermes2vm10inLeapYearEd.exit.7:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.6
  %i.ao = fadd double %i.am, 3.100000e+01         ; 2 uses
  %i.ap = fcmp olt double %i.t, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.8

_ZN6hermes2vm10inLeapYearEd.exit.8:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.7
  %i.aq = fadd double %i.ao, 3.000000e+01         ; 2 uses
  %i.ar = fcmp olt double %i.t, %i.aq
  br i1 %i.ar, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.9

_ZN6hermes2vm10inLeapYearEd.exit.9:               ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.8
  %i.as = fadd double %i.aq, 3.100000e+01         ; 2 uses
  %i.at = fcmp olt double %i.t, %i.as
  br i1 %i.at, label %bb.d, label %_ZN6hermes2vm10inLeapYearEd.exit.10

_ZN6hermes2vm10inLeapYearEd.exit.10:              ; preds = %_ZN6hermes2vm10inLeapYearEd.exit.9
  %i.au = fadd double %i.as, 3.000000e+01
end_hunk_0
