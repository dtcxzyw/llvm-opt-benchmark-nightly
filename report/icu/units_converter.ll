inline.NumInlined: 208
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>
%"class.icu_78::double_conversion::StringToDoubleConverter" = type <{ i32, [4 x i8], double, double, ptr, ptr, i16, [6 x i8] }>
%"class.icu_78::MeasureUnitImpl" = type { i32, %"class.icu_78::MaybeStackVector", %"class.icu_78::FixedString", i64 }
%"class.icu_78::MaybeStackVector" = type { %"class.icu_78::MemoryPool" }
%"class.icu_78::MemoryPool" = type { i32, %"class.icu_78::MaybeStackArray" }
%"class.icu_78::MaybeStackArray" = type { ptr, i32, i8, [8 x ptr] }
%"class.icu_78::FixedString" = type { ptr }
%"class.icu_78::MaybeStackVector.3" = type { %"class.icu_78::MemoryPool.4" }
%"class.icu_78::MemoryPool.4" = type { i32, %"class.icu_78::MaybeStackArray.5" }
%"class.icu_78::MaybeStackArray.5" = type { ptr, i32, i8, [8 x ptr] }
%"class.icu_78::units::ConversionRates" = type { %"class.icu_78::MaybeStackVector.0" }
%"class.icu_78::MaybeStackVector.0" = type { %"class.icu_78::MemoryPool.1" }
%"class.icu_78::MemoryPool.1" = type { i32, %"class.icu_78::MaybeStackArray.2" }
%"class.icu_78::MaybeStackArray.2" = type { ptr, i32, i8, [8 x ptr] }
%"struct.icu_78::units::Factor" = type { double, double, double, i8, [15 x i32] }
%"struct.icu_78::SingleUnitImpl" = type { i32, i32, i32 }
%"struct.icu_78::units::ConversionInfo" = type { double, double, i8 }

$_ZN6icu_7815MeasureUnitImplD2Ev = comdat any

$_ZN6icu_7810MemoryPoolINS_14SingleUnitImplELi8EED2Ev = comdat any

$_ZN6icu_785units14ConversionRateD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev = comdat any

@_ZN6icu_785unitsL15constantsValuesE = internal unnamed_addr constant [15 x double] [double 3.048000e-01, double f0x400921FB54442D18, double f0x40239D013A92A305, double 6.674080e-11, double 4.546090e-03, double f0x3FDD07A84AB75E51, double f0x406684FB7E90FF97, double f0x44DFE185CA57C517, double f0x42416A5D2D360000, double 3.155760e+07, double f0x41B1DE784A000000, double f0x3F5D8E2237AAB50A, double f0x400A723F789854A1, double f0x3FA0ECF56BE69C90, double f0x3A6071F749C72D03], align 16
@.str = private unnamed_addr constant [8 x i8] c"ft_to_m\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ft2_to_m2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ft3_to_m3\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"in3_to_m3\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gal_to_m3\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"gal_imp_to_m3\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"lb_to_kg\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"glucose_molar_mass\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"item_per_mole\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"meters_per_AU\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"sec_per_julian_year\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"speed_of_light_meters_per_second\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"sho_to_m3\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"tsubo_to_m2\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"shaku_to_m\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"AMU\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"beaufort\00", align 1
@_ZN6icu_785unitsL26minMetersPerSecForBeaufortE = internal unnamed_addr constant [19 x double] [double 0.000000e+00, double 3.000000e-01, double 1.600000e+00, double 3.400000e+00, double 5.500000e+00, double 8.000000e+00, double 1.080000e+01, double 1.390000e+01, double 1.720000e+01, double 2.080000e+01, double 2.450000e+01, double 2.850000e+01, double 3.270000e+01, double 3.690000e+01, double 4.140000e+01, double 4.610000e+01, double 5.110000e+01, double 5.580000e+01, double f0x404EB33333333333], align 16
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN6icu_7811StringPiece4nposE = external local_unnamed_addr constant i32, align 4

@_ZN6icu_785units14UnitsConverterC1ERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6icu_785units14UnitsConverterC2ERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode
@_ZN6icu_785units14UnitsConverterC1ENS_11StringPieceES2_R10UErrorCode = unnamed_addr alias void (ptr, ptr, i32, ptr, i32, ptr), ptr @_ZN6icu_785units14UnitsConverterC2ENS_11StringPieceES2_R10UErrorCode

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_785units6Factor10multiplyByERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !8
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !8
  %i.c = fmul <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !10
  %i.g = load i32, ptr %i.e, align 4, !tbaa !10
  %i.h = add nsw i32 %i.g, %i.f
  store i32 %i.h, ptr %i.e, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !10
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10
  %i.r = add nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !10
  %i.w = add nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = add nsw i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !10
  %i.ag = add nsw i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = add nsw i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.aq = add nsw i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = add nsw i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !10
  %i.ba = add nsw i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !10
  %i.bk = add nsw i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !10
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !10
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !10
  %i.bz = add nsw i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !8 ; 2 uses
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !8 ; 2 uses
  %i.ce = fcmp olt double %i.cc, %i.cd
  %i.cf = select i1 %i.ce, double %i.cd, double %i.cc
  store double %i.cf, ptr %i.cb, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_785units6Factor8divideByERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 88
  %i.d = add nuw i64 %i.a, 88
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = load <2 x double>, ptr %1, align 8, !tbaa !8
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %4 = load <2 x double>, ptr %0, align 8, !tbaa !8
  %5 = fmul <2 x double> %3, %4                   ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  store double %6, ptr %0, align 8, !tbaa !14
  %7 = extractelement <2 x double> %5, i64 1
  store double %7, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load <4 x i32>, ptr %i.f, align 4, !tbaa !10
  %i.i = load <4 x i32>, ptr %i.g, align 4, !tbaa !10
  %i.j = sub nsw <4 x i32> %i.i, %i.h
  store <4 x i32> %i.j, ptr %i.g, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load <4 x i32>, ptr %i.k, align 4, !tbaa !10
  %i.n = load <4 x i32>, ptr %i.l, align 4, !tbaa !10
  %i.o = sub nsw <4 x i32> %i.n, %i.m
  store <4 x i32> %i.o, ptr %i.l, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = load <4 x i32>, ptr %i.p, align 4, !tbaa !10
  %i.s = load <4 x i32>, ptr %i.q, align 4, !tbaa !10
  %i.t = sub nsw <4 x i32> %i.s, %i.r
  store <4 x i32> %i.t, ptr %i.q, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.u, align 4, !tbaa !10
  %i.x = load <2 x i32>, ptr %i.v, align 4, !tbaa !10
  %i.y = sub nsw <2 x i32> %i.x, %i.w
  store <2 x i32> %i.y, ptr %i.v, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10
  %i.ad = sub nsw i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !8 ; 2 uses
  %i.ah = load double, ptr %i.af, align 8, !tbaa !8 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  %i.aj = select i1 %i.ai, double %i.ah, double %i.ag
  store double %i.aj, ptr %i.af, align 8, !tbaa !11
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !15
  %i.am = load double, ptr %0, align 8, !tbaa !14
  %i.an = fmul double %i.al, %i.am
  store double %i.an, ptr %0, align 8, !tbaa !14
  %i.ao = load double, ptr %1, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !15
  %i.ar = fmul double %i.ao, %i.aq
  store double %i.ar, ptr %i.ap, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !10
  %i.av = load i32, ptr %i.at, align 4, !tbaa !10
  %i.aw = sub nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !10
  %i.bb = sub nsw i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10
  %i.bg = sub nsw i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !10
  %i.bl = sub nsw i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10
  %i.bq = sub nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !10
  %i.bv = sub nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !10
  %i.ca = sub nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !10
  %i.cf = sub nsw i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !10
  %i.ck = sub nsw i32 %i.cj, %i.ch
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !10
  %i.cp = sub nsw i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  %i.cu = sub nsw i32 %i.ct, %i.cr
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !10
  %i.cz = sub nsw i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.db = load i32, ptr %i.da, align 4, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !10
  %i.de = sub nsw i32 %i.dd, %i.db
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !10
  %i.dj = sub nsw i32 %i.di, %i.dg
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !10
  %i.do = sub nsw i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !8 ; 2 uses
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !8 ; 2 uses
  %i.dt = fcmp olt double %i.dr, %i.ds
  %i.du = select i1 %i.dt, double %i.ds, double %i.dr
  store double %i.du, ptr %i.dq, align 8, !tbaa !11
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_785units6Factor8divideByEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !15
  %i.d = fmul double %i.c, %i.a
  store double %i.d, ptr %i.b, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN6icu_785units6Factor5powerEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load <4 x i32>, ptr %i.a, align 4, !tbaa !10
  %i.c = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.e = mul nsw <4 x i32> %i.b, %i.d
  store <4 x i32> %i.e, ptr %i.a, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = load <4 x i32>, ptr %i.f, align 4, !tbaa !10
  %i.h = mul nsw <4 x i32> %i.g, %i.d
  store <4 x i32> %i.h, ptr %i.f, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = load <4 x i32>, ptr %i.i, align 4, !tbaa !10
  %i.k = mul nsw <4 x i32> %i.j, %i.d
  store <4 x i32> %i.k, ptr %i.i, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  %i.n = mul nsw i32 %i.m, %1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !10
  %i.q = mul nsw i32 %i.p, %1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = mul nsw i32 %i.s, %1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !10
  %i.u = icmp slt i32 %1, 0
  %i.v = load double, ptr %0, align 8, !tbaa !14
  %i.w = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.x = uitofp nneg i32 %i.w to double           ; 2 uses
  %i.y = tail call noundef double @pow(double noundef %i.v, double noundef %i.x) #19 ; 2 uses
  store double %i.y, ptr %0, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !15
  %i.ab = tail call noundef double @pow(double noundef %i.aa, double noundef %i.x) #19 ; 2 uses
  store double %i.ab, ptr %i.z, align 8, !tbaa !15
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %i.ab, ptr %0, align 8, !tbaa !8
  store double %i.y, ptr %i.z, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 30
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @umeas_getPrefixPower_78(i32 noundef %1) ; 2 uses
  %i.c = tail call i32 @umeas_getPrefixBase_78(i32 noundef %1)
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.f = uitofp nneg i32 %i.e to double
  %i.g = tail call double @pow(double noundef %i.d, double noundef %i.f) #19 ; 2 uses
  %i.h = icmp sgt i32 %i.b, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %0, align 8, !tbaa !14
  %i.j = fmul double %i.g, %i.i
  store double %i.j, ptr %0, align 8, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !15
  %i.m = fmul double %i.g, %i.l
  store double %i.m, ptr %i.k, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

declare i32 @umeas_getPrefixPower_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

declare i32 @umeas_getPrefixBase_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.promoted = load double, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load double, ptr %i.b, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  ret void

bb.c:                                             ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.c = phi double [ %.promoted13, %bb.a ], [ %i.r, %bb.h ] ; 3 uses
  %i.d = phi double [ %.promoted, %bb.a ], [ %i.s, %bb.h ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10   ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.i = icmp slt i32 %i.f, 0
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL15constantsValuesE, i64 %indvars.iv
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = uitofp nneg i32 %i.h to double
  %i.m = tail call noundef double @pow(double noundef %i.k, double noundef %i.l) #19 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = fmul double %i.m, %i.c                   ; 2 uses
  store double %i.n, ptr %i.b, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = fmul double %i.m, %i.d                   ; 2 uses
  store double %i.o, ptr %0, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi double [ %i.c, %bb.f ], [ %i.n, %bb.e ]
  %i.q = phi double [ %i.o, %bb.f ], [ %i.d, %bb.e ]
  store i32 0, ptr %i.e, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.r = phi double [ %i.c, %bb.c ], [ %i.p, %bb.g ]
  %i.s = phi double [ %i.d, %bb.c ], [ %i.q, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_785units23addSingleFactorConstantENS_11StringPieceEiNS0_6SignumERNS0_6FactorER10UErrorCode(ptr %0, i32 %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 22 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %15 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %16 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %18 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %19 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %20 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %21 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %22 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %23 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %24 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %25 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  store ptr %0, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull @.str)
  %i.b = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7)
  %.not = icmp eq i8 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i32 %3, %2
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %i.f = add nsw i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 4, !tbaa !10
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull @.str.1)
  %i.g = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %8)
  %.not75 = icmp eq i8 %i.g, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = mul i32 %3, %2
  %i.i = shl i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = add nsw i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 4, !tbaa !10
  br label %bb.ap

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull @.str.2)
  %i.m = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %9)
  %.not76 = icmp eq i8 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = mul i32 %3, %2
  %i.o = mul i32 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10
  %i.r = add nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4, !tbaa !10
  br label %bb.ap

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull @.str.3)
  %i.s = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %10)
  %.not77 = icmp eq i8 %i.s, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = mul i32 %3, %2                           ; 2 uses
  %i.u = mul i32 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !10
  %i.x = add nsw i32 %i.w, %i.u
  store i32 %i.x, ptr %i.v, align 4, !tbaa !10
  %i.y = sitofp i32 %i.t to double
  %i.z = call noundef double @pow(double noundef 1.728000e+03, double noundef %i.y) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !15
  %i.ac = fmul double %i.z, %i.ab
  store double %i.ac, ptr %i.aa, align 8, !tbaa !15
  br label %bb.ap

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull @.str.4)
  %i.ad = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %11)
  %.not78 = icmp eq i8 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br i1 %.not78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = mul i32 %3, %2                          ; 2 uses
  %i.af = mul i32 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  %i.ai = add nsw i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !10
  %i.aj = sitofp i32 %i.ae to double              ; 2 uses
  %i.ak = call noundef double @pow(double noundef 2.310000e+02, double noundef %i.aj) #19
  %i.al = call noundef double @pow(double noundef 1.728000e+03, double noundef %i.aj) #19
  %i.am = load <2 x double>, ptr %4, align 8, !tbaa !8
  %i.an = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.al, i64 1
  %i.ap = fmul <2 x double> %i.ao, %i.am
  store <2 x double> %i.ap, ptr %4, align 8, !tbaa !8
  br label %bb.ap

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull @.str.5)
  %i.aq = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %12)
  %.not79 = icmp eq i8 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %.not79, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = mul nsw i32 %3, %2
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10
  %i.au = add nsw i32 %i.at, %i.ar
  store i32 %i.au, ptr %i.as, align 4, !tbaa !10
  br label %bb.ap

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull @.str.6)
  %i.av = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %13)
  %.not80 = icmp eq i8 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br i1 %.not80, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = mul nsw i32 %3, %2
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !10
  %i.az = add nsw i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !10
  br label %bb.ap

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull @.str.7)
  %i.ba = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %14)
  %.not81 = icmp eq i8 %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %.not81, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = mul nsw i32 %3, %2
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10
  %i.be = add nsw i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !10
  br label %bb.ap

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull @.str.8)
  %i.bf = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %15)
  %.not82 = icmp eq i8 %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br i1 %.not82, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = mul nsw i32 %3, %2
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !10
  %i.bj = add nsw i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !10
  br label %bb.ap

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull @.str.9)
  %i.bk = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %16)
  %.not83 = icmp eq i8 %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br i1 %.not83, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = mul nsw i32 %3, %2
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10
  %i.bo = add nsw i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !10
  br label %bb.ap

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull @.str.10)
  %i.bp = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %17)
  %.not84 = icmp eq i8 %i.bp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br i1 %.not84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = mul nsw i32 %3, %2
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !10
  %i.bt = add nsw i32 %i.bs, %i.bq
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !10
  br label %bb.ap

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull @.str.11)
  %i.bu = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %18)
  %.not85 = icmp eq i8 %i.bu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br i1 %.not85, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = mul nsw i32 %3, %2
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.by = add nsw i32 %i.bx, %i.bv
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !10
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull @.str.12)
  %i.bz = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %19)
  %.not86 = icmp eq i8 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br i1 %.not86, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = mul nsw i32 %3, %2
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !10
  %i.cd = add nsw i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !10
  br label %bb.ap

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %20, ptr noundef nonnull @.str.13)
  %i.ce = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %20)
  %.not87 = icmp eq i8 %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br i1 %.not87, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = mul nsw i32 %3, %2
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !10
  %i.ci = add nsw i32 %i.ch, %i.cf
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !10
  br label %bb.ap

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull @.str.14)
  %i.cj = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %21)
  %.not88 = icmp eq i8 %i.cj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br i1 %.not88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = mul nsw i32 %3, %2
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !10
  %i.cn = add nsw i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !10
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull @.str.15)
  %i.co = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %22)
  %.not89 = icmp eq i8 %i.co, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br i1 %.not89, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = mul nsw i32 %3, %2
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !10
  %i.cs = add nsw i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !10
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull @.str.16)
  %i.ct = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %23)
  %.not90 = icmp eq i8 %i.ct, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br i1 %.not90, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cu = mul nsw i32 %3, %2
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 76 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %i.cx = add nsw i32 %i.cw, %i.cu
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !10
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull @.str.17)
  %i.cy = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %24)
  %.not91 = icmp eq i8 %i.cy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br i1 %.not91, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = mul nsw i32 %3, %2
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !10
  %i.dc = add nsw i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !10
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %25, ptr noundef nonnull @.str.18)
  %i.dd = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %25)
  %.not92 = icmp eq i8 %i.dd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br i1 %.not92, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = mul nsw i32 %3, %2
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !10
  %i.dh = add nsw i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !10
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.di = icmp eq i32 %3, -1
  %.sroa.01.0.copyload = load ptr, ptr %6, align 8
  %.sroa.22.0.copyload = load i32, ptr %i.a, align 8
  %i.dj = call fastcc noundef double @_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode(ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.dk = sitofp i32 %2 to double
  %i.dl = call noundef double @pow(double noundef %i.dj, double noundef %i.dk) #19 ; 2 uses
  br i1 %i.di, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !15
  %i.do = fmul double %i.dl, %i.dn
  store double %i.do, ptr %i.dm, align 8, !tbaa !15
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dp = load double, ptr %4, align 8, !tbaa !14
  %i.dq = fmul double %i.dl, %i.dp
  store double %i.dq, ptr %4, align 8, !tbaa !14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.d, %bb.h, %bb.l, %bb.p, %bb.t, %bb.x, %bb.ab, %bb.af, %bb.aj, %bb.an, %bb.ao, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j, %bb.f, %bb.b
  ret void
}

declare noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode(ptr %0, i32 %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 0, ptr %3, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr @.str.20, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.20, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i16 0, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.f = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %3, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr %i.a, align 4, !tbaa !10
  %.not = icmp eq i32 %i.g, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %2, align 4, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret double %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_785units23extractCompoundBaseUnitERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::MeasureUnitImpl") align 8 initializes((0, 4), (8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::MaybeStackVector", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 10 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  store i32 0, ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i8 0, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !26
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %.not4971 = icmp sgt i32 %i.j, 0
  br i1 %.not4971, label %.lr.ph75, label %.critedge

.lr.ph75:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96
  %wide.trip.count81 = zext nneg i32 %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.ac
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count81
  br i1 %exitcond82.not, label %.critedge, label %bb.d, !llvm.loop !42

bb.d:                                             ; preds = %.lr.ph75, %bb.c
  %indvars.iv79 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next80, %bb.c ] ; 2 uses
  %.073 = phi i1 [ false, %.lr.ph75 ], [ %.197, %bb.c ] ; 2 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv79
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 2 uses
  %i.aa = invoke noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %i.z)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %i.aa)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = load i32, ptr %i.l, align 8
  %i.ad = invoke noundef ptr @_ZNK6icu_785units15ConversionRates21extractConversionInfoENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %i.ab, i32 %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %3, align 4, !tbaa !26
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.i, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp eq ptr %i.ad, null
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 5, ptr %3, align 4, !tbaa !26
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %spec.select.i = select i1 %i.ak, ptr @.str.20, ptr %i.aj
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull %spec.select.i)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %7, align 8
  %i.am = load i32, ptr %i.m, align 8
  invoke void @_ZN6icu_7815MeasureUnitImpl13forIdentifierENS_11StringPieceER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnitImpl") align 8 %6, ptr %i.al, i32 %i.am, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr %i.n, align 8, !tbaa !38
  store i32 %i.an, ptr %5, align 8, !tbaa !38
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !39  ; 2 uses
  store ptr %i.ao, ptr %i.o, align 8, !tbaa !39
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !40  ; 2 uses
  store i32 %i.ap, ptr %i.q, align 8, !tbaa !40
  %i.aq = load i8, ptr %i.t, align 4, !tbaa !41
  store i8 %i.aq, ptr %i.s, align 4, !tbaa !41
  %i.ar = icmp eq ptr %i.ao, %i.u
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.v, ptr %i.o, align 8, !tbaa !39
  %i.as = sext i32 %i.ap to i64
  %i.at = shl nsw i64 %i.as, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.at, i1 false)
  br label %_ZN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEC2EOS2_.exit

bb.o:                                             ; preds = %bb.m
  store ptr %i.u, ptr %i.p, align 8, !tbaa !39
  store i32 8, ptr %i.r, align 8, !tbaa !40
  store i8 0, ptr %i.t, align 4, !tbaa !41
  br label %_ZN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEC2EOS2_.exit

_ZN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEC2EOS2_.exit: ; preds = %bb.n, %bb.o
  store i32 0, ptr %i.n, align 8, !tbaa !38
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !45
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.au) #19
  %i.av = load i32, ptr %i.n, align 8, !tbaa !38  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.s, %_ZN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEC2EOS2_.exit
  %i.ax = load i8, ptr %i.t, align 4, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !39
  invoke void @uprv_free_78(ptr noundef %i.ay)
          to label %_ZN6icu_7815MeasureUnitImplD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

.lr.ph.i.i:                                       ; preds = %_ZN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEC2EOS2_.exit, %bb.s
  %i.bb = phi i32 [ %i.bg, %bb.s ], [ %i.av, %_ZN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEC2EOS2_.exit ]
end_hunk_0
begin_hunk_1_@_ZN6icu_785units14UnitsConverterC2ENS_11StringPieceES2_R10UErrorCode:bb.a
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next.i.i24, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i21, label %._crit_edge.i.i19, !llvm.loop !46

_ZN6icu_7815MeasureUnitImplD2Ev.exit25:           ; preds = %._crit_edge.i.i19, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cf = load i32, ptr %5, align 4, !tbaa !26
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.p, label %bb.w

bb.o:                                             ; preds = %bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN6icu_7815MeasureUnitImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.y

bb.p:                                             ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 0, ptr %8, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !77
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 8, ptr %i.ck, align 8, !tbaa !78
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.cl, align 4, !tbaa !79
  invoke void @_ZN6icu_785units21getAllConversionRatesERNS_16MaybeStackVectorINS0_18ConversionRateInfoELi8EEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit: ; preds = %bb.p
  %i.cn = load i32, ptr %5, align 4, !tbaa !26
  %i.co = icmp slt i32 %i.cn, 1
  br i1 %i.co, label %bb.r, label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

bb.r:                                             ; preds = %_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit
  %i.cp = load i32, ptr %i.b, align 8, !tbaa !69
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i32, ptr %i.aa, align 8, !tbaa !72
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = invoke noundef i32 @_ZN6icu_785units21extractConvertibilityERKNS_15MeasureUnitImplES3_RKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %bb.t
  %i.cu = load i32, ptr %5, align 4, !tbaa !26
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %bb.u, label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

bb.u:                                             ; preds = %.noexc
  %i.cw = icmp eq i32 %i.ct, 2
  br i1 %i.cw, label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(281) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.aa, i32 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit unwind label %bb.x

_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit.sink.split: ; preds = %bb.u, %bb.r, %bb.s
  store i32 65804, ptr %5, align 4, !tbaa !26
  br label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit: ; preds = %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit.sink.split, %.noexc, %_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit, %bb.v
  call void @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.w

bb.w:                                             ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit25, %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit
  ret void

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %i.cm, %bb.q ]
  call void @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN6icu_785units14ConversionRateD2Ev(ptr noundef nonnull align 8 dead_on_return(281) dereferenceable(281) %i.a) #19
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ch, %bb.o ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2, i32 noundef range(i32 3, 2) %3, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"struct.icu_78::units::Factor", align 16 ; 11 uses
  %7 = alloca %"struct.icu_78::units::Factor", align 16 ; 12 uses
  %8 = alloca %"struct.icu_78::units::Factor", align 8 ; 19 uses
  %9 = alloca %"struct.icu_78::units::Factor", align 16 ; 19 uses
  %10 = alloca %"struct.icu_78::units::Factor", align 16 ; 19 uses
  %i.a = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.a, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.a, 1 ; 3 uses
  %i.b = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.b, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.b, 1 ; 3 uses
  %i.c = sext i32 %.fca.1.extract6 to i64         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.e = icmp eq i32 %.fca.1.extract6, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.f) #19
  store ptr null, ptr %i.d, align 8, !tbaa !45
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.c, 1
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.h) #19
  %i.i = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.g) #19 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %.fca.0.extract5, i64 %i.c, i1 false)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c
  store i8 0, ptr %i.k, align 1, !tbaa !80
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.l = sext i32 %.fca.1.extract to i64          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.n = icmp eq i32 %.fca.1.extract, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.o) #19
  store ptr null, ptr %i.m, align 8, !tbaa !45
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62

bb.f:                                             ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.p = add nsw i64 %i.l, 1
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.q) #19
  %i.r = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.p) #19 ; 3 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !45
  %.not.i61 = icmp eq ptr %i.r, null
  br i1 %.not.i61, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %.fca.0.extract, i64 %i.l, i1 false)
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store i8 0, ptr %i.t, align 1, !tbaa !80
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  %i.w = icmp ne i32 %.fca.1.extract6, 0
  %.not = xor i1 %i.w, %i.v
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.y = icmp eq ptr %i.x, null                   ; 3 uses
  %i.z = icmp ne i32 %.fca.1.extract, 0
  %.not54 = xor i1 %i.z, %i.y
  br i1 %.not54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62
  store i32 7, ptr %5, align 4, !tbaa !26
  br label %bb.ch

bb.j:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %6, align 16, !tbaa !8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i, i8 0, i64 60, i1 false), !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.ab = load double, ptr %6, align 16, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = load <2 x double>, ptr %7, align 16, !tbaa !8 ; 3 uses
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !15
  %i.af = extractelement <2 x double> %i.ad, i64 0
  %i.ag = fmul double %i.af, %i.ab
  %i.ah = load double, ptr %i.aa, align 8, !tbaa !15
  %i.ai = fmul double %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ak = load <4 x i32>, ptr %i.aj, align 4, !tbaa !10
  %i.al = load <4 x i32>, ptr %scevgep.i, align 4, !tbaa !10
  %i.am = add nsw <4 x i32> %i.al, %i.ak          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 3 uses
  %i.ap = load <4 x i32>, ptr %i.an, align 4, !tbaa !10
  %i.aq = load <4 x i32>, ptr %i.ao, align 4, !tbaa !10
  %i.ar = add nsw <4 x i32> %i.aq, %i.ap          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.au = load <4 x i32>, ptr %i.as, align 4, !tbaa !10
  %i.av = load <4 x i32>, ptr %i.at, align 4, !tbaa !10
  %i.aw = add nsw <4 x i32> %i.av, %i.au          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 3 uses
  %i.az = load <2 x i32>, ptr %i.ax, align 4, !tbaa !10
  %i.ba = load <2 x i32>, ptr %i.ay, align 4, !tbaa !10
  %i.bb = add nsw <2 x i32> %i.ba, %i.az          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10
  %i.bg = add nsw i32 %i.bf, %i.bd                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = load <2 x double>, ptr %i.bh, align 16
  switch i32 %3, label %bb.o [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %i.bl = load double, ptr %8, align 8, !tbaa !14 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bn = load <4 x i32>, ptr %i.bm, align 4, !tbaa !10
  %i.bo = sub nsw <4 x i32> %i.am, %i.bn
  store <4 x i32> %i.bo, ptr %scevgep.i, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.bq = load <4 x i32>, ptr %i.bp, align 4, !tbaa !10
  %i.br = sub nsw <4 x i32> %i.ar, %i.bq
  store <4 x i32> %i.br, ptr %i.ao, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.bt = load <4 x i32>, ptr %i.bs, align 4, !tbaa !10
  %i.bu = sub nsw <4 x i32> %i.aw, %i.bt
  store <4 x i32> %i.bu, ptr %i.at, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !10
  %i.bx = sub nsw <2 x i32> %i.bb, %i.bw
  store <2 x i32> %i.bx, ptr %i.ay, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !10
  %i.ca = sub nsw i32 %i.bg, %i.bz
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cb = load double, ptr %8, align 8, !tbaa !14 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.cf = load <4 x i32>, ptr %i.ce, align 4, !tbaa !10
  %i.cg = add nsw <4 x i32> %i.cf, %i.am
  store <4 x i32> %i.cg, ptr %scevgep.i, align 4, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.ci = load <4 x i32>, ptr %i.ch, align 4, !tbaa !10
  %i.cj = add nsw <4 x i32> %i.ci, %i.ar
  store <4 x i32> %i.cj, ptr %i.ao, align 4, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.cl = load <4 x i32>, ptr %i.ck, align 4, !tbaa !10
  %i.cm = add nsw <4 x i32> %i.cl, %i.aw
  store <4 x i32> %i.cm, ptr %i.at, align 4, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !10
  %i.cp = add nsw <2 x i32> %i.co, %i.bb
  store <2 x i32> %i.cp, ptr %i.ay, align 4, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !10
  %i.cs = add nsw i32 %i.cr, %i.bg
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  store i32 65804, ptr %5, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ch

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i32 [ %i.cs, %bb.n ], [ %i.ca, %bb.m ]
  %i.ct = phi double [ %i.cb, %bb.n ], [ %i.bl, %bb.m ]
  %i.cu = phi double [ %i.cd, %bb.n ], [ %i.bk, %bb.m ]
  %.pn = phi double [ %i.cd, %bb.n ], [ %i.bl, %bb.m ]
  %.pn148 = phi double [ %i.cb, %bb.n ], [ %i.bk, %bb.m ]
  %.promoted.i = fmul double %i.ag, %.pn148
  %.promoted13.i = fmul double %i.ai, %.pn
  store i32 %.sink, ptr %i.be, align 4, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %indvars.iv.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %i.cx = phi double [ %.promoted13.i, %bb.p ], [ %i.dm, %bb.s ] ; 3 uses
  %i.cy = phi double [ %.promoted.i, %bb.p ], [ %i.dn, %bb.s ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %scevgep.i, i64 %indvars.iv.i ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !10 ; 3 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.da, i1 true)
  %i.dd = icmp slt i32 %i.da, 0                   ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL15constantsValuesE, i64 %indvars.iv.i
  %i.df = load double, ptr %i.de, align 8, !tbaa !8
  %i.dg = uitofp nneg i32 %i.dc to double
  %i.dh = tail call noundef double @pow(double noundef %i.df, double noundef %i.dg) #19 ; 2 uses
  %i.di = fmul double %i.cy, %i.dh
  %i.dj = fmul double %i.cx, %i.dh
  %i.dk = select i1 %i.dd, double %i.dj, double %i.cx
  %i.dl = select i1 %i.dd, double %i.cy, double %i.di
  store i32 0, ptr %i.cz, align 4, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dm = phi double [ %i.cx, %bb.q ], [ %i.dk, %bb.r ] ; 2 uses
  %i.dn = phi double [ %i.cy, %bb.q ], [ %i.dl, %bb.r ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 15
  br i1 %exitcond.not.i, label %_ZN6icu_785units6Factor19substituteConstantsEv.exit, label %bb.q, !llvm.loop !16

_ZN6icu_785units6Factor19substituteConstantsEv.exit: ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.dn, ptr %i.do, align 8, !tbaa !81
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.dm, ptr %i.dp, align 8, !tbaa !82
  %.val58 = load i32, ptr %5, align 4, !tbaa !26
  %i.dq = icmp slt i32 %.val58, 1
  %i.dr = load i32, ptr %1, align 8
  %.not6.i = icmp eq i32 %i.dr, 0
  %or.cond1.i = select i1 %i.dq, i1 %.not6.i, i1 false
  br i1 %or.cond1.i, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN6icu_785units6Factor19substituteConstantsEv.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !38
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit: ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !39
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !43 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.dy = icmp ne i32 %.sroa.4.0.copyload.i, 1
  %i.dz = icmp ne i32 %.sroa.3.0.copyload.i, 30
  %or.cond.not.i.not = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond.not.i.not, label %.critedge, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87: ; preds = %bb.t, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit
  %i.ea = load i32, ptr %2, align 8
  %.not6.i63 = icmp eq i32 %i.ea, 0
  br i1 %.not6.i63, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !38
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72: ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !39
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43 ; 2 uses
  %.sroa.3.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %.sroa.3.0.copyload.i67 = load i32, ptr %.sroa.3.0..sroa_idx.i66, align 4
  %.sroa.4.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.4.0.copyload.i69 = load i32, ptr %.sroa.4.0..sroa_idx.i68, align 4
  %i.eh = icmp ne i32 %.sroa.4.0.copyload.i69, 1
  %i.ei = icmp ne i32 %.sroa.3.0.copyload.i67, 30
  %or.cond.not.i70.not = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond.not.i70.not, label %.critedge, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92: ; preds = %bb.u, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72
  %i.ej = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ek = insertelement <2 x double> %i.ej, double %i.cw, i64 1
  %i.el = insertelement <2 x double> %i.bi, double %i.cu, i64 1
  %i.em = fmul <2 x double> %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.eo = insertelement <2 x double> %i.ad, double %i.ct, i64 1
  %i.ep = fdiv <2 x double> %i.em, %i.eo
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87, %_ZN6icu_785units6Factor19substituteConstantsEv.exit, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit
  %i.eq = icmp eq i32 %3, 0
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.es = zext i1 %i.eq to i8
  store i8 %i.es, ptr %i.er, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ch

bb.v:                                             ; preds = %bb.j
  br i1 %i.y, label %.thread.thread, label %bb.ch

.thread:                                          ; preds = %bb.k
  %.not55 = icmp eq i32 %3, 1
  br i1 %.not55, label %bb.x, label %bb.w

.thread.thread:                                   ; preds = %bb.v
  %.not55145 = icmp eq i32 %3, 1
  br i1 %.not55145, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread.thread, %.thread
  store i32 65804, ptr %5, align 4, !tbaa !26
  br label %bb.ch

bb.x:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.et = load <2 x double>, ptr %9, align 16, !tbaa !8
  %.sroa.12110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 28
  %.sroa.12110.0.copyload = load i32, ptr %.sroa.12110.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 36
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 44
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 52
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 60
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.31.0.copyload = load i32, ptr %.sroa.31.0..sroa_idx, align 16
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 68
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 72
  %.sroa.35.0.copyload = load i32, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 76
  %.sroa.37.0.copyload = load i32, ptr %.sroa.37.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 16
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 84
  %.sroa.41.0.copyload = load i32, ptr %.sroa.41.0..sroa_idx, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.z

bb.y:                                             ; preds = %.thread.thread
end_hunk_1
begin_hunk_2_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.id = icmp slt i32 %.sroa.31.0, 0
  %i.ie = uitofp nneg i32 %i.ic to double
  %i.if = tail call noundef double @pow(double noundef 3.155760e+07, double noundef %i.ie) #19 ; 2 uses
  br i1 %i.id, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ig = fmul double %i.ia, %i.if
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ih = fmul double %i.hz, %i.if
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bj
  %i.ii = phi double [ %i.hz, %bb.bj ], [ %i.hz, %bb.bl ], [ %i.ih, %bb.bm ] ; 3 uses
  %i.ij = phi double [ %i.ia, %bb.bj ], [ %i.ig, %bb.bl ], [ %i.ia, %bb.bm ] ; 3 uses
  %i.ik = icmp eq i32 %.sroa.33.0, 0
  br i1 %i.ik, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.il = tail call i32 @llvm.abs.i32(i32 %.sroa.33.0, i1 true)
  %i.im = icmp slt i32 %.sroa.33.0, 0
  %i.in = uitofp nneg i32 %i.il to double
  %i.io = tail call noundef double @pow(double noundef f0x41B1DE784A000000, double noundef %i.in) #19 ; 2 uses
  br i1 %i.im, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ip = fmul double %i.ij, %i.io
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.iq = fmul double %i.ii, %i.io
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bn
  %i.ir = phi double [ %i.ii, %bb.bn ], [ %i.ii, %bb.bp ], [ %i.iq, %bb.bq ] ; 3 uses
  %i.is = phi double [ %i.ij, %bb.bn ], [ %i.ip, %bb.bp ], [ %i.ij, %bb.bq ] ; 3 uses
  %i.it = icmp eq i32 %.sroa.35.0, 0
  br i1 %i.it, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iu = tail call i32 @llvm.abs.i32(i32 %.sroa.35.0, i1 true)
  %i.iv = icmp slt i32 %.sroa.35.0, 0
  %i.iw = uitofp nneg i32 %i.iu to double
  %i.ix = tail call noundef double @pow(double noundef f0x3F5D8E2237AAB50A, double noundef %i.iw) #19 ; 2 uses
  br i1 %i.iv, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iy = fmul double %i.is, %i.ix
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.iz = fmul double %i.ir, %i.ix
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.br
  %i.ja = phi double [ %i.ir, %bb.br ], [ %i.ir, %bb.bt ], [ %i.iz, %bb.bu ] ; 3 uses
  %i.jb = phi double [ %i.is, %bb.br ], [ %i.iy, %bb.bt ], [ %i.is, %bb.bu ] ; 3 uses
  %i.jc = icmp eq i32 %.sroa.37.0, 0
  br i1 %i.jc, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jd = tail call i32 @llvm.abs.i32(i32 %.sroa.37.0, i1 true)
  %i.je = icmp slt i32 %.sroa.37.0, 0
  %i.jf = uitofp nneg i32 %i.jd to double
  %i.jg = tail call noundef double @pow(double noundef f0x400A723F789854A1, double noundef %i.jf) #19 ; 2 uses
  br i1 %i.je, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jh = fmul double %i.jb, %i.jg
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.ji = fmul double %i.ja, %i.jg
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by, %bb.bv
  %i.jj = phi double [ %i.ja, %bb.bv ], [ %i.ja, %bb.bx ], [ %i.ji, %bb.by ] ; 3 uses
  %i.jk = phi double [ %i.jb, %bb.bv ], [ %i.jh, %bb.bx ], [ %i.jb, %bb.by ] ; 3 uses
  %i.jl = icmp eq i32 %.sroa.39.0, 0
  br i1 %i.jl, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jm = tail call i32 @llvm.abs.i32(i32 %.sroa.39.0, i1 true)
  %i.jn = icmp slt i32 %.sroa.39.0, 0
  %i.jo = uitofp nneg i32 %i.jm to double
  %i.jp = tail call noundef double @pow(double noundef f0x3FA0ECF56BE69C90, double noundef %i.jo) #19 ; 2 uses
  br i1 %i.jn, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jq = fmul double %i.jk, %i.jp
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.jr = fmul double %i.jj, %i.jp
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bz
  %i.js = phi double [ %i.jj, %bb.bz ], [ %i.jj, %bb.cb ], [ %i.jr, %bb.cc ] ; 3 uses
  %i.jt = phi double [ %i.jk, %bb.bz ], [ %i.jq, %bb.cb ], [ %i.jk, %bb.cc ] ; 3 uses
  %i.ju = icmp eq i32 %.sroa.41.0, 0
  br i1 %i.ju, label %_ZN6icu_785units6Factor19substituteConstantsEv.exit79, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jv = tail call i32 @llvm.abs.i32(i32 %.sroa.41.0, i1 true)
  %i.jw = icmp slt i32 %.sroa.41.0, 0
  %i.jx = uitofp nneg i32 %i.jv to double
  %i.jy = tail call noundef double @pow(double noundef f0x3A6071F749C72D03, double noundef %i.jx) #19 ; 2 uses
  br i1 %i.jw, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jz = fmul double %i.jt, %i.jy
  br label %_ZN6icu_785units6Factor19substituteConstantsEv.exit79

bb.cg:                                            ; preds = %bb.ce
  %i.ka = fmul double %i.js, %i.jy
  br label %_ZN6icu_785units6Factor19substituteConstantsEv.exit79

_ZN6icu_785units6Factor19substituteConstantsEv.exit79: ; preds = %bb.cf, %bb.cg, %bb.cd
  %i.kb = phi double [ %i.js, %bb.cd ], [ %i.js, %bb.cf ], [ %i.ka, %bb.cg ]
  %i.kc = phi double [ %i.jt, %bb.cd ], [ %i.jz, %bb.cf ], [ %i.jt, %bb.cg ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.kc, ptr %i.kd, align 8, !tbaa !81
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.kb, ptr %i.ke, align 8, !tbaa !82
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN6icu_785units6Factor19substituteConstantsEv.exit79, %bb.v, %.critedge, %bb.o, %bb.w, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_785units14UnitsConverter15compareTwoUnitsERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %5 = alloca %"struct.icu_78::units::Factor", align 8 ; 6 uses
  %6 = alloca %"struct.icu_78::units::Factor", align 8 ; 6 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !26
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !28
  %i.d = icmp eq i32 %i.c, 2
  %i.e = load i32, ptr %1, align 8
  %i.f = icmp eq i32 %i.e, 2
  %or.cond44 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond44, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 65804, ptr %3, align 4, !tbaa !26
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZN6icu_785units21extractConvertibilityERKNS_15MeasureUnitImplES3_RKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.h = load i32, ptr %3, align 4, !tbaa !26
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.g, 1
  %or.cond = icmp eq i32 %i.j, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 65804, ptr %3, align 4, !tbaa !26
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.k = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.k, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.k, 1 ; 2 uses
  store ptr %.fca.0.extract7, ptr %4, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.210.0..sroa_idx, align 8
  %i.l = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.l, 1 ; 2 uses
  %.not = icmp eq i32 %.fca.1.extract8, 0
  %.not45 = icmp eq i32 %.fca.1.extract, 0        ; 2 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not45, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  br i1 %.not45, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.fca.0.extract, i32 %.fca.1.extract)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr noundef nonnull align 8 dereferenceable(88) %6)
  %i.n = load double, ptr %5, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !15
  %i.q = fdiv double %i.n, %i.p
  %i.r = load double, ptr %6, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  %i.u = fdiv double %i.r, %i.t
  %i.v = fsub double %i.q, %i.u                   ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  %i.x = fcmp olt double %i.v, 0.000000e+00
  %. = sext i1 %i.x to i32
  %.0 = select i1 %i.w, i32 1, i32 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.j
  %.1 = phi i32 [ %.0, %bb.k ], [ %i.m, %bb.j ], [ 1, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.d, %bb.a, %bb.c
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.1, %bb.l ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %4 = alloca %"struct.icu_78::SingleUnitImpl", align 4 ; 4 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %.val = load i32, ptr %2, align 4, !tbaa !26
  %i.a = icmp slt i32 %.val, 1
  %i.b = load i32, ptr %0, align 8
  %.not6.i = icmp eq i32 %i.b, 0
  %or.cond1.i = select i1 %i.a, i1 %.not6.i, i1 false
  br i1 %or.cond1.i, label %bb.b, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = icmp eq i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  %.pre17 = load ptr, ptr %.pre, align 8, !tbaa !43 ; 3 uses
  br i1 %i.e, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit: ; preds = %bb.b
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre17, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre17, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.f = icmp ne i32 %.sroa.4.0.copyload.i, 1
  %i.g = icmp ne i32 %.sroa.3.0.copyload.i, 30
  %or.cond.not.i.not = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.not.i.not, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12: ; preds = %bb.b, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %.pre17, i64 12, i1 false)
  %i.h = call noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %4)
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %i.h)
  %i.i = load ptr, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = call noundef ptr @_ZNK6icu_785units15ConversionRates21extractConversionInfoENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %i.i, i32 %i.k, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !26
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 5, ptr %2, align 4, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %spec.select.i = select i1 %i.r, ptr @.str.20, ptr %i.q
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %spec.select.i)
  %.fca.0.load.pre.pre = load ptr, ptr %3, align 8
  %.fca.1.gep.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.pre.pre = load i32, ptr %.fca.1.gep.phi.trans.insert.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12, %bb.e, %bb.d
  %.fca.1.load.pre = phi i32 [ %.fca.1.load.pre.pre, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12 ]
  %.fca.0.load.pre = phi ptr [ %.fca.0.load.pre.pre, %bb.e ], [ null, %bb.d ], [ null, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread: ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit, %bb.a, %bb.f
  %.fca.1.load = phi i32 [ %.fca.1.load.pre, %bb.f ], [ 0, %bb.a ], [ 0, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit ]
  %.fca.0.load = phi ptr [ %.fca.0.load.pre, %bb.f ], [ null, %bb.a ], [ null, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.fca.0.load, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.fca.1.load, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i32) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 25), (28, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 9 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 9 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 8 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %15 = alloca %"struct.icu_78::SingleUnitImpl", align 4 ; 7 uses
  %16 = alloca %"struct.icu_78::units::Factor", align 16 ; 30 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !84
  %scevgep.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i, i8 0, i64 60, i1 false), !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 24
  %scevgep.i15 = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.fca.1.gep.i36.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.fca.1.gep.i.i26.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.y = load i32, ptr @_ZN6icu_7811StringPiece4nposE, align 4
  %.fca.1.gep.i25.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 76 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 84 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit
  %i.bg = phi double [ 0.000000e+00, %.lr.ph ], [ %i.gt, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ] ; 2 uses
  %i.bh = phi i32 [ 0, %.lr.ph ], [ %i.gr, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bi = phi i32 [ 0, %.lr.ph ], [ %i.gq, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bj = phi i32 [ 0, %.lr.ph ], [ %i.gp, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bk = phi i32 [ 0, %.lr.ph ], [ %i.go, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bl = phi i32 [ 0, %.lr.ph ], [ %i.gn, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bm = phi i32 [ 0, %.lr.ph ], [ %i.gm, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bn = phi i32 [ 0, %.lr.ph ], [ %i.gl, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
end_hunk_2
begin_hunk_3_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.ct), !noalias !91
  %.fca.0.load.i.i.i = load ptr, ptr %11, align 8, !noalias !91
  %.fca.1.load.i.i.i = load i32, ptr %.fca.1.gep.i.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.i, i32 %.fca.1.load.i.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.cu = add nuw nsw i32 %i.cs, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.cv = icmp eq i64 %indvars.iv.i.i, %i.co
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.cl), !noalias !91
  %.fca.0.load.i34.i.i = load ptr, ptr %10, align 8, !noalias !91
  %.fca.1.load.i37.i.i = load i32, ptr %.fca.1.gep.i36.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i34.i.i, i32 %.fca.1.load.i37.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.131.i.i = phi i32 [ %i.cu, %bb.f ], [ %.03039.i.i, %bb.h ], [ %.03039.i.i, %bb.g ] ; 2 uses
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !80, !noalias !91
  %i.cx = icmp eq i8 %i.cw, 47
  %spec.select.i18.i = select i1 %i.cx, i32 -1, i32 %.041.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.cp
  br i1 %exitcond.not.i.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, label %bb.e, !llvm.loop !92

_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i: ; preds = %bb.i, %.lr.ph.i.i
  %i.cy = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %i.cz = phi i32 [ 1, %.lr.ph.i.i ], [ %spec.select.i18.i, %bb.i ] ; 2 uses
  %i.da = phi i32 [ 0, %.lr.ph.i.i ], [ %.131.i.i, %bb.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !80, !noalias !91
  switch i8 %i.dc, label %bb.k [
    i8 42, label %bb.j
    i8 47, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i
  %i.dd = trunc nuw nsw i64 %i.cy to i32
  %i.de = sub nsw i32 %i.dd, %i.da
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %i.da, i32 noundef %i.de), !noalias !91
  %.fca.0.load.i.i.peel.i = load ptr, ptr %11, align 8, !noalias !91
  %.fca.1.load.i.i.peel.i = load i32, ptr %.fca.1.gep.i.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.peel.i, i32 %.fca.1.load.i.i.peel.i, i32 noundef %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

bb.k:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i
  %i.df = icmp eq i64 %i.cy, %i.co
  br i1 %i.df, label %bb.l, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %i.da, i32 noundef %i.cl), !noalias !91
  %.fca.0.load.i34.i.peel.i = load ptr, ptr %10, align 8, !noalias !91
  %.fca.1.load.i37.i.peel.i = load i32, ptr %.fca.1.gep.i36.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i34.i.peel.i, i32 %.fca.1.load.i37.i.peel.i, i32 noundef %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !85
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !45, !noalias !85 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  %spec.select.i19.i = select i1 %i.di, ptr @.str.20, ptr %i.dh
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull %spec.select.i19.i), !noalias !85
  %i.dj = load ptr, ptr %14, align 8, !noalias !85 ; 3 uses
  %i.dk = load i32, ptr %i.q, align 8, !noalias !85 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !85
  store ptr %i.dj, ptr %9, align 8, !noalias !85
  store i32 %i.dk, ptr %i.r, align 8, !noalias !85
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  %wide.trip.count.i20.i = zext nneg i32 %i.dk to i64
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.m, %.lr.ph.preheader.i.i
  %indvars.iv.i22.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i23.i, %bb.m ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i22.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !80, !noalias !85
  %i.do = icmp eq i8 %i.dn, 47
  br i1 %i.do, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i21.i
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i24.i = icmp eq i64 %indvars.iv.next.i23.i, %wide.trip.count.i20.i
  br i1 %exitcond.not.i24.i, label %._crit_edge.i.i, label %.lr.ph.i21.i, !llvm.loop !94

bb.n:                                             ; preds = %.lr.ph.i21.i
  %i.dp = trunc nuw nsw i64 %indvars.iv.i22.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !85
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 0, i32 noundef %i.dp), !noalias !85
  %.fca.0.load.i.i25.i = load ptr, ptr %8, align 8, !noalias !85
  %.fca.1.load.i.i27.i = load i32, ptr %.fca.1.gep.i.i26.i, align 8, !noalias !85 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !85
  store i32 0, ptr %7, align 8, !tbaa !18, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !85
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.w, align 8, !tbaa !67, !noalias !85
  store i16 0, ptr %i.x, align 8, !tbaa !25, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !85
  %i.dq = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %7, ptr noundef %.fca.0.load.i.i25.i, i32 noundef %.fca.1.load.i.i27.i, ptr noundef nonnull %i.c), !noalias !85
  %i.dr = load i32, ptr %i.c, align 4, !tbaa !10, !noalias !85
  %.not.i.i.i = icmp eq i32 %i.dr, %.fca.1.load.i.i27.i
  br i1 %.not.i.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %3, align 4, !tbaa !26, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !85
  %i.ds = add nuw nsw i32 %i.dp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !85
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.ds, i32 noundef %i.y), !noalias !85
  %.fca.0.load.i23.i.i = load ptr, ptr %6, align 8, !noalias !85
  %.fca.1.load.i26.i.i = load i32, ptr %.fca.1.gep.i25.i.i, align 8, !noalias !85 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !85
  store i32 0, ptr %5, align 8, !tbaa !18, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !noalias !85
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.aa, align 8, !tbaa !67, !noalias !85
  store i16 0, ptr %i.ab, align 8, !tbaa !25, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !85
  %i.dt = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef %.fca.0.load.i23.i.i, i32 noundef %.fca.1.load.i26.i.i, ptr noundef nonnull %i.b), !noalias !85
  %i.du = load i32, ptr %i.b, align 4, !tbaa !10, !noalias !85
  %.not.i28.i.i = icmp eq i32 %i.du, %.fca.1.load.i26.i.i
  br i1 %.not.i28.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i
  store i32 3, ptr %3, align 4, !tbaa !26, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i: ; preds = %bb.p, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !85
  %i.dv = fdiv double %i.dq, %i.dt
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit

._crit_edge.i.i:                                  ; preds = %bb.m, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !85
  store i32 0, ptr %4, align 8, !tbaa !18, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !85
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.t, align 8, !tbaa !67, !noalias !85
  store i16 0, ptr %i.u, align 8, !tbaa !25, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !85
  %i.dw = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef %i.dj, i32 noundef %i.dk, ptr noundef nonnull %i.a), !noalias !85
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !10, !noalias !85
  %.not.i30.i.i = icmp eq i32 %i.dx, %i.dk
  br i1 %.not.i30.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i
  store i32 3, ptr %3, align 4, !tbaa !26, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i: ; preds = %bb.q, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread: ; preds = %bb.b, %.loopexit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.loopexit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit: ; preds = %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i
  %.0.i.i = phi double [ %i.dv, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i ], [ %i.dw, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !85
  %.pre = load i32, ptr %3, align 4, !tbaa !26
  %i.dy = icmp slt i32 %.pre, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %i.dy, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit
  %i.dz = load i32, ptr %i.ac, align 4, !tbaa !95 ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 30
  br i1 %i.ea, label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = call i32 @umeas_getPrefixPower_78(i32 noundef %i.dz) ; 2 uses
  %i.ec = call i32 @umeas_getPrefixBase_78(i32 noundef %i.dz)
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = call i32 @llvm.abs.i32(i32 %i.eb, i1 true)
  %i.ef = uitofp nneg i32 %i.ee to double
  %i.eg = call double @pow(double noundef %i.ed, double noundef %i.ef) #19 ; 2 uses
  %i.eh = icmp sgt i32 %i.eb, -1
  br i1 %i.eh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ei = load double, ptr %16, align 16, !tbaa !14
  %i.ej = fmul double %i.eg, %i.ei
  store double %i.ej, ptr %16, align 16, !tbaa !14
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

bb.u:                                             ; preds = %bb.s
  %i.ek = load double, ptr %i.l, align 8, !tbaa !15
  %i.el = fmul double %i.eg, %i.ek
  store double %i.el, ptr %i.l, align 8, !tbaa !15
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit: ; preds = %bb.r, %bb.t, %bb.u
  %i.em = load i32, ptr %i.ad, align 4, !tbaa !48 ; 17 uses
  %i.en = load i32, ptr %scevgep.i15, align 4, !tbaa !10
  %i.eo = mul nsw i32 %i.en, %i.em                ; 2 uses
  store i32 %i.eo, ptr %scevgep.i15, align 4, !tbaa !10
  %i.ep = load i32, ptr %i.ae, align 16, !tbaa !10
  %i.eq = mul nsw i32 %i.ep, %i.em                ; 2 uses
  store i32 %i.eq, ptr %i.ae, align 16, !tbaa !10
  %i.er = load i32, ptr %i.af, align 4, !tbaa !10
  %i.es = mul nsw i32 %i.er, %i.em                ; 2 uses
  store i32 %i.es, ptr %i.af, align 4, !tbaa !10
  %i.et = load i32, ptr %i.ag, align 8, !tbaa !10
  %i.eu = mul nsw i32 %i.et, %i.em                ; 2 uses
  store i32 %i.eu, ptr %i.ag, align 8, !tbaa !10
  %i.ev = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.ew = mul nsw i32 %i.ev, %i.em                ; 2 uses
  store i32 %i.ew, ptr %i.ah, align 4, !tbaa !10
  %i.ex = load i32, ptr %i.ai, align 16, !tbaa !10
  %i.ey = mul nsw i32 %i.ex, %i.em                ; 2 uses
  store i32 %i.ey, ptr %i.ai, align 16, !tbaa !10
  %i.ez = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.fa = mul nsw i32 %i.ez, %i.em                ; 2 uses
  store i32 %i.fa, ptr %i.aj, align 4, !tbaa !10
  %i.fb = load i32, ptr %i.ak, align 8, !tbaa !10
  %i.fc = mul nsw i32 %i.fb, %i.em                ; 2 uses
  store i32 %i.fc, ptr %i.ak, align 8, !tbaa !10
  %i.fd = load i32, ptr %i.al, align 4, !tbaa !10
  %i.fe = mul nsw i32 %i.fd, %i.em                ; 2 uses
  store i32 %i.fe, ptr %i.al, align 4, !tbaa !10
  %i.ff = load i32, ptr %i.am, align 16, !tbaa !10
  %i.fg = mul nsw i32 %i.ff, %i.em                ; 2 uses
  store i32 %i.fg, ptr %i.am, align 16, !tbaa !10
  %i.fh = load i32, ptr %i.an, align 4, !tbaa !10
  %i.fi = mul nsw i32 %i.fh, %i.em                ; 2 uses
  store i32 %i.fi, ptr %i.an, align 4, !tbaa !10
  %i.fj = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.fk = mul nsw i32 %i.fj, %i.em                ; 2 uses
  store i32 %i.fk, ptr %i.ao, align 8, !tbaa !10
  %i.fl = load i32, ptr %i.ap, align 4, !tbaa !10
  %i.fm = mul nsw i32 %i.fl, %i.em                ; 2 uses
  store i32 %i.fm, ptr %i.ap, align 4, !tbaa !10
  %i.fn = load i32, ptr %i.aq, align 16, !tbaa !10
  %i.fo = mul nsw i32 %i.fn, %i.em                ; 2 uses
  store i32 %i.fo, ptr %i.aq, align 16, !tbaa !10
  %i.fp = load i32, ptr %i.ar, align 4, !tbaa !10
  %i.fq = mul nsw i32 %i.fp, %i.em                ; 2 uses
  store i32 %i.fq, ptr %i.ar, align 4, !tbaa !10
  %i.fr = icmp slt i32 %i.em, 0                   ; 2 uses
  %i.fs = load double, ptr %16, align 16, !tbaa !14
  %i.ft = call i32 @llvm.abs.i32(i32 %i.em, i1 true)
  %i.fu = uitofp nneg i32 %i.ft to double         ; 2 uses
  %i.fv = call noundef double @pow(double noundef %i.fs, double noundef %i.fu) #19 ; 3 uses
  store double %i.fv, ptr %16, align 16, !tbaa !14
  %i.fw = load double, ptr %i.l, align 8, !tbaa !15
  %i.fx = call noundef double @pow(double noundef %i.fw, double noundef %i.fu) #19 ; 2 uses
  %i.fy = select i1 %i.fr, double %i.fv, double %i.fx
  %i.fz = select i1 %i.fr, double %i.fx, double %i.fv
  %i.ga = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fy, i64 1
  %i.gc = fmul <2 x double> %i.gb, %i.bw          ; 3 uses
  store <2 x double> %i.gc, ptr %0, align 8, !tbaa !8
  %i.gd = add nsw i32 %i.bv, %i.eo                ; 2 uses
  store i32 %i.gd, ptr %scevgep.i, align 4, !tbaa !10
  %i.ge = add nsw i32 %i.bu, %i.eq                ; 2 uses
  store i32 %i.ge, ptr %i.as, align 8, !tbaa !10
  %i.gf = add nsw i32 %i.bt, %i.es                ; 2 uses
  store i32 %i.gf, ptr %i.at, align 4, !tbaa !10
  %i.gg = add nsw i32 %i.bs, %i.eu                ; 2 uses
  store i32 %i.gg, ptr %i.au, align 8, !tbaa !10
  %i.gh = add nsw i32 %i.br, %i.ew                ; 2 uses
  store i32 %i.gh, ptr %i.av, align 4, !tbaa !10
  %i.gi = add nsw i32 %i.bq, %i.ey                ; 2 uses
  store i32 %i.gi, ptr %i.aw, align 8, !tbaa !10
  %i.gj = add nsw i32 %i.bp, %i.fa                ; 2 uses
  store i32 %i.gj, ptr %i.ax, align 4, !tbaa !10
  %i.gk = add nsw i32 %i.bo, %i.fc                ; 2 uses
  store i32 %i.gk, ptr %i.ay, align 8, !tbaa !10
  %i.gl = add nsw i32 %i.bn, %i.fe                ; 2 uses
  store i32 %i.gl, ptr %i.az, align 4, !tbaa !10
  %i.gm = add nsw i32 %i.bm, %i.fg                ; 2 uses
  store i32 %i.gm, ptr %i.ba, align 8, !tbaa !10
  %i.gn = add nsw i32 %i.bl, %i.fi                ; 2 uses
  store i32 %i.gn, ptr %i.bb, align 4, !tbaa !10
  %i.go = add nsw i32 %i.bk, %i.fk                ; 2 uses
  store i32 %i.go, ptr %i.bc, align 8, !tbaa !10
  %i.gp = add nsw i32 %i.bj, %i.fm                ; 2 uses
  store i32 %i.gp, ptr %i.bd, align 4, !tbaa !10
  %i.gq = add nsw i32 %i.bi, %i.fo                ; 2 uses
  store i32 %i.gq, ptr %i.be, align 8, !tbaa !10
  %i.gr = add nsw i32 %i.bh, %i.fq                ; 2 uses
  store i32 %i.gr, ptr %i.bf, align 4, !tbaa !10
  %i.gs = fcmp olt double %.0.i.i, %i.bg
  %i.gt = select i1 %i.gs, double %i.bg, double %.0.i.i ; 2 uses
  store double %i.gt, ptr %i.e, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !96

.loopexit:                                        ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit, %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.w

._crit_edge.loopexit:                             ; preds = %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit
  %i.gu = extractelement <2 x double> %i.gc, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.gv = phi double [ 1.000000e+00, %bb.a ], [ %i.gu, %._crit_edge.loopexit ]
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !68 ; 2 uses
  %.not14 = icmp eq i64 %i.gx, 0
  br i1 %.not14, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.gy = uitofp i64 %i.gx to double
  %i.gz = fmul double %i.gv, %i.gy
  store double %i.gz, ptr %i.d, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %._crit_edge, %bb.v
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK6icu_785units14UnitsConverter11scaleToBaseEdPdi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(296) %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %.0 = select i1 %i.a, double %i.b, double %1
  %i.c = fadd double %.0, 5.000000e-01            ; 2 uses
  %i.d = sitofp i32 %3 to double                  ; 2 uses
  %i.e = fcmp ogt double %i.c, %i.d
  %.1 = select i1 %i.e, double %i.d, double %i.c
  %i.f = fptosi double %.1 to i32
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = fadd double %i.i, %i.k
  %i.m = fmul double %i.l, 5.000000e-01
  ret double %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(296) %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %.0 = select i1 %i.a, double %i.b, double %1    ; 3 uses
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load double, ptr %i.d, align 8, !tbaa !8
  %i.f = fcmp ult double %.0, %i.e
  br i1 %i.f, label %bb.b, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %3, -1
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = add nuw nsw i32 %3, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %.1.i, %bb.d ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.02024.i = phi i32 [ %.121.i, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = add nuw nsw i32 %.02024.i, %.025.i
  %i.j = lshr i32 %i.i, 1                         ; 5 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = fcmp olt double %.0, %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = fcmp ogt double %.0, %i.r
  br i1 %i.s, label %bb.d, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.121.i = phi i32 [ %.02024.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.025.i, %bb.c ] ; 2 uses
  %i.t = icmp slt i32 %.121.i, %.1.i
  br i1 %i.t, label %.lr.ph.i, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit, !llvm.loop !97

_ZN6icu_785unitsL13bsearchRangesEPdid.exit:       ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.022.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %i.u = sitofp i32 %.022.i to double
  ret double %i.u
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6icu_785units14UnitsConverter7convertEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, double noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.l, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(9) @.str.19) #22
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp olt double %1, 0.000000e+00
  %i.j = fneg double %1
  %.0.i = select i1 %i.i, double %i.j, double %1
  %i.k = fadd double %.0.i, 5.000000e-01          ; 2 uses
  %i.l = fcmp ogt double %i.k, 1.700000e+01
  %.1.i = select i1 %i.l, double 1.700000e+01, double %i.k
  %i.m = fptosi double %.1.i to i32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.n ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = fadd double %i.p, %i.r
  %i.t = fmul double %i.s, 5.000000e-01
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = load double, ptr %i.u, align 8, !tbaa !98
  %i.w = fmul double %1, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load double, ptr %i.x, align 8, !tbaa !99
  %i.z = fdiv double %i.w, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi double [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %1, %bb.c ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(9) @.str.19) #22
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.h:                                             ; preds = %bb.g
  %i.af = fcmp olt double %.0, 0.000000e+00
  %i.ag = fneg double %.0
  %.0.i21 = select i1 %i.af, double %i.ag, double %.0 ; 3 uses
  %i.ah = fcmp ult double %.0.i21, 5.580000e+01
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.j
  %.025.i.i = phi i32 [ %.1.i.i, %bb.j ], [ 18, %bb.h ] ; 2 uses
  %.02024.i.i = phi i32 [ %.121.i.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ai = add nuw nsw i32 %.02024.i.i, %.025.i.i
  %i.aj = lshr i32 %i.ai, 1                       ; 4 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = fcmp olt double %.0.i21, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ao = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !8
  %i.as = fcmp ogt double %.0.i21, %i.ar
  br i1 %i.as, label %bb.j, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.121.i.i = phi i32 [ %.02024.i.i, %.lr.ph.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %.025.i.i, %bb.i ] ; 2 uses
  %i.at = icmp slt i32 %.121.i.i, %.1.i.i
  br i1 %i.at, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, !llvm.loop !97

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit: ; preds = %bb.j, %bb.i
  %i.au = uitofp nneg i32 %i.aj to double
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.k:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aw = load double, ptr %i.av, align 8, !tbaa !99
  %i.ax = fmul double %.0, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = load double, ptr %i.ay, align 8, !tbaa !98
  %i.ba = fdiv double %i.ax, %i.az
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.l:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !100
  %i.bd = fadd double %1, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bf = load double, ptr %i.be, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !99
  %i.bi = fdiv double %i.bf, %i.bh
  %i.bj = fmul double %i.bd, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !101
  %i.bm = fsub double %i.bj, %i.bl                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !102, !range !103, !noundef !104
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.m, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = fcmp oeq double %i.bm, 0.000000e+00
end_hunk_3
begin_hunk_4_@_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !79
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  invoke void @uprv_free_78(ptr noundef %i.g)
          to label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i32 [ %i.a, %.lr.ph ], [ %i.aa, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109  ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.r) #19
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.t) #19
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.v) #19
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.x) #19
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.z) #19
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.m) #19
  %.pre = load i32, ptr %0, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.j, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.d, label %._crit_edge, !llvm.loop !111
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr %1, i32 %2, i32 noundef range(i32 -1, 2) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  store ptr %1, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %i.b, align 8
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !80
  %i.f = icmp eq i8 %i.e, 94
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !112

bb.c:                                             ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef 0, i32 noundef %i.g)
  %.fca.0.load.i = load ptr, ptr %7, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = load i32, ptr @_ZN6icu_7811StringPiece4nposE, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef %i.h, i32 noundef %i.i)
  %.fca.0.load.i27 = load ptr, ptr %6, align 8
  %.fca.1.gep.i29 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i30 = load i32, ptr %.fca.1.gep.i29, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr @.str.20, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @.str.20, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i16 0, ptr %i.m, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.n = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef %.fca.0.load.i27, i32 noundef %.fca.1.load.i30, ptr noundef nonnull %i.a)
  %i.o = load i32, ptr %i.a, align 4, !tbaa !10
  %.not.i = icmp eq i32 %i.o, %.fca.1.load.i30
  br i1 %.not.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %4, align 4, !tbaa !26
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.p = fptosi double %i.n to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit
  %.sroa.032.0 = phi ptr [ %.fca.0.load.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ %1, %bb.a ], [ %1, %bb.b ]
  %.sroa.633.0 = phi i32 [ %.fca.1.load.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ %2, %bb.a ], [ %2, %bb.b ]
  %.0 = phi i32 [ %i.p, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  call void @_ZN6icu_785units23addSingleFactorConstantENS_11StringPieceEiNS0_6SignumERNS0_6FactorER10UErrorCode(ptr %.sroa.032.0, i32 %.sroa.633.0, i32 noundef %.0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

declare void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !9, i64 16}
!12 = !{!"_ZTSN6icu_785units6FactorE", !9, i64 0, !9, i64 8, !9, i64 16, !13, i64 24, !6, i64 28}
!13 = !{!"bool", !6, i64 0}
!14 = !{!12, !9, i64 0}
!15 = !{!12, !9, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !5, i64 0}
!19 = !{!"_ZTSN6icu_7817double_conversion23StringToDoubleConverterE", !5, i64 0, !9, i64 8, !9, i64 16, !20, i64 24, !20, i64 32, !22, i64 40}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"short", !6, i64 0}
!23 = !{!19, !20, i64 24}
!24 = !{!19, !20, i64 32}
!25 = !{!19, !22, i64 40}
!26 = !{!27, !27, i64 0}
!27 = !{!"_ZTS10UErrorCode", !6, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSN6icu_7815MeasureUnitImplE", !30, i64 0, !31, i64 8, !36, i64 96, !37, i64 104}
!30 = !{!"_ZTSN6icu_7822UMeasureUnitComplexityE", !6, i64 0}
!31 = !{!"_ZTSN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEE", !32, i64 0}
!32 = !{!"_ZTSN6icu_7810MemoryPoolINS_14SingleUnitImplELi8EEE", !5, i64 0, !33, i64 8}
!33 = !{!"_ZTSN6icu_7815MaybeStackArrayIPNS_14SingleUnitImplELi8EEE", !34, i64 0, !5, i64 8, !6, i64 12, !6, i64 16}
!34 = !{!"p2 _ZTSN6icu_7814SingleUnitImplE", !35, i64 0}
!35 = !{!"any p2 pointer", !21, i64 0}
!36 = !{!"_ZTSN6icu_7811FixedStringE", !20, i64 0}
!37 = !{!"long", !6, i64 0}
!38 = !{!32, !5, i64 0}
!39 = !{!33, !34, i64 0}
!40 = !{!33, !5, i64 8}
!41 = !{!33, !6, i64 12}
!42 = distinct !{!42, !17}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTSN6icu_7814SingleUnitImplE", !21, i64 0}
!45 = !{!36, !20, i64 0}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = !{!49, !5, i64 8}
!49 = !{!"_ZTSN6icu_7814SingleUnitImplE", !5, i64 0, !50, i64 4, !5, i64 8}
!50 = !{!"_ZTSN6icu_7814UMeasurePrefixE", !6, i64 0}
!51 = !{!52, !5, i64 0}
!52 = !{!"_ZTSN6icu_7810MemoryPoolINS_5units12_GLOBAL__N_121UnitIndexAndDimensionELi8EEE", !5, i64 0, !53, i64 8}
!53 = !{!"_ZTSN6icu_7815MaybeStackArrayIPNS_5units12_GLOBAL__N_121UnitIndexAndDimensionELi8EEE", !54, i64 0, !5, i64 8, !6, i64 12, !6, i64 16}
!54 = !{!"p2 _ZTSN6icu_785units12_GLOBAL__N_121UnitIndexAndDimensionE", !35, i64 0}
!55 = !{!53, !54, i64 0}
!56 = !{!53, !5, i64 8}
!57 = !{!53, !6, i64 12}
!58 = distinct !{!58, !17}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSN6icu_785units12_GLOBAL__N_121UnitIndexAndDimensionE", !21, i64 0}
!61 = !{!62, !5, i64 4}
!62 = !{!"_ZTSN6icu_785units12_GLOBAL__N_121UnitIndexAndDimensionE", !5, i64 0, !5, i64 4}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = !{!62, !5, i64 0}
!66 = distinct !{!66, !17}
!67 = !{!20, !20, i64 0}
!68 = !{!29, !37, i64 104}
!69 = !{!70, !30, i64 16}
!70 = !{!"_ZTSN6icu_785units14UnitsConverterE", !71, i64 8}
!71 = !{!"_ZTSN6icu_785units14ConversionRateE", !29, i64 8, !29, i64 120, !36, i64 232, !36, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !13, i64 280}
!72 = !{!70, !30, i64 128}
!73 = !{!74, !5, i64 0}
!74 = !{!"_ZTSN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EEE", !5, i64 0, !75, i64 8}
!75 = !{!"_ZTSN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EEE", !76, i64 0, !5, i64 8, !6, i64 12, !6, i64 16}
!76 = !{!"p2 _ZTSN6icu_785units18ConversionRateInfoE", !35, i64 0}
!77 = !{!75, !76, i64 0}
!78 = !{!75, !5, i64 8}
!79 = !{!75, !6, i64 12}
!80 = !{!6, !6, i64 0}
!81 = !{!71, !9, i64 248}
!82 = !{!71, !9, i64 256}
!83 = !{!71, !13, i64 280}
!84 = !{!12, !13, i64 24}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode: argument 0"}
!87 = distinct !{!87, !"_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode: argument 0"}
!90 = distinct !{!90, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode"}
!91 = !{!89, !86}
!92 = distinct !{!92, !17, !93}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = distinct !{!94, !17}
!95 = !{!49, !50, i64 4}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = !{!70, !9, i64 256}
!99 = !{!70, !9, i64 264}
!100 = !{!70, !9, i64 272}
!101 = !{!70, !9, i64 280}
!102 = !{!70, !13, i64 288}
!103 = !{i8 0, i8 2}
!104 = !{}
!105 = !{!106, !9, i64 0}
!106 = !{!"_ZTSN6icu_785units14ConversionInfoE", !9, i64 0, !9, i64 8, !13, i64 16}
!107 = !{!106, !9, i64 8}
!108 = !{!106, !13, i64 16}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 _ZTSN6icu_785units18ConversionRateInfoE", !21, i64 0}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
end_hunk_4
