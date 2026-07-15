inline.NumInlined: 203
inline.NumDeleted: 78
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

@_ZN6icu_785units14UnitsConverterC1ERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6icu_785units14UnitsConverterC2ERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode
@_ZN6icu_785units14UnitsConverterC1ENS_11StringPieceES2_R10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i32, ptr), ptr @_ZN6icu_785units14UnitsConverterC2ENS_11StringPieceES2_R10UErrorCode

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_785units6Factor10multiplyByERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8
  %i.b = load double, ptr %0, align 8
  %i.c = fmul double %i.a, %i.b
  store double %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8
  %i.h = fmul double %i.e, %i.g
  store double %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4
  %i.l = load i32, ptr %i.j, align 4
  %i.m = add nsw i32 %i.l, %i.k
  store i32 %i.m, ptr %i.j, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = add nsw i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add nsw i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add nsw i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add nsw i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = add nsw i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = add nsw i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = add nsw i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = add nsw i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add nsw i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load double, ptr %i.cf, align 8         ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8         ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  %i.ck = select i1 %i.cj, double %i.ci, double %i.ch
  store double %i.ck, ptr %i.cg, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_785units6Factor8divideByERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8
  %i.c = load double, ptr %0, align 8
  %i.d = fmul double %i.b, %i.c
  store double %i.d, ptr %0, align 8
  %i.e = load double, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8
  %i.h = fmul double %i.e, %i.g
  store double %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4
  %i.l = load i32, ptr %i.j, align 4
  %i.m = sub nsw i32 %i.l, %i.k
  store i32 %i.m, ptr %i.j, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sub nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sub nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sub nsw i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sub nsw i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sub nsw i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sub nsw i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sub nsw i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sub nsw i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = sub nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = sub nsw i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = sub nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = sub nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = sub nsw i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = sub nsw i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load double, ptr %i.cf, align 8         ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8         ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  %i.ck = select i1 %i.cj, double %i.ci, double %i.ch
  store double %i.ck, ptr %i.cg, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_785units6Factor8divideByEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8
  %i.d = fmul double %i.c, %i.a
  store double %i.d, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN6icu_785units6Factor5powerEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load <4 x i32>, ptr %i.a, align 4
  %i.c = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.e = mul nsw <4 x i32> %i.b, %i.d
  store <4 x i32> %i.e, ptr %i.a, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = load <4 x i32>, ptr %i.f, align 4
  %i.h = mul nsw <4 x i32> %i.g, %i.d
  store <4 x i32> %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = load <4 x i32>, ptr %i.i, align 4
  %i.k = mul nsw <4 x i32> %i.j, %i.d
  store <4 x i32> %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = mul nsw i32 %i.m, %1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = mul nsw i32 %i.p, %1
  store i32 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = mul nsw i32 %i.s, %1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = icmp slt i32 %1, 0
  %i.v = load double, ptr %0, align 8
  %i.w = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.x = uitofp nneg i32 %i.w to double           ; 2 uses
  %i.y = tail call noundef double @pow(double noundef %i.v, double noundef %i.x) #15 ; 2 uses
  store double %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = tail call noundef double @pow(double noundef %i.aa, double noundef %i.x) #15 ; 2 uses
  store double %i.ab, ptr %i.z, align 8
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %i.ab, ptr %0, align 8
  store double %i.y, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 30
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @umeas_getPrefixPower_78(i32 noundef %1) #15 ; 2 uses
  %i.c = tail call i32 @umeas_getPrefixBase_78(i32 noundef %1) #15
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.f = uitofp nneg i32 %i.e to double
  %i.g = tail call double @pow(double noundef %i.d, double noundef %i.f) #15 ; 2 uses
  %i.h = icmp sgt i32 %i.b, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %0, align 8
  %i.j = fmul double %i.g, %i.i
  store double %i.j, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load double, ptr %i.k, align 8
  %i.m = fmul double %i.g, %i.l
  store double %i.m, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

declare i32 @umeas_getPrefixPower_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

declare i32 @umeas_getPrefixBase_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #7 align 2 {
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
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.i = icmp slt i32 %i.f, 0
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL15constantsValuesE, i64 %indvars.iv
  %i.k = load double, ptr %i.j, align 8
  %i.l = uitofp nneg i32 %i.h to double
  %i.m = tail call noundef double @pow(double noundef %i.k, double noundef %i.l) #15 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = fmul double %i.m, %i.c                   ; 2 uses
  store double %i.n, ptr %i.b, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = fmul double %i.m, %i.d                   ; 2 uses
  store double %i.o, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi double [ %i.c, %bb.f ], [ %i.n, %bb.e ]
  %i.q = phi double [ %i.o, %bb.f ], [ %i.d, %bb.e ]
  store i32 0, ptr %i.e, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.r = phi double [ %i.c, %bb.c ], [ %i.p, %bb.g ]
  %i.s = phi double [ %i.d, %bb.c ], [ %i.q, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_785units23addSingleFactorConstantENS_11StringPieceEiNS0_6SignumERNS0_6FactorER10UErrorCode(ptr %0, i32 %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #4 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull @.str) #15
  %i.b = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7) #15
  %.not = icmp eq i8 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i32 %3, %2
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add nsw i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 4
end_hunk_0
