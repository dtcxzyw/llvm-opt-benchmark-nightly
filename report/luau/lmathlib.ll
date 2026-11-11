Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lmathlib?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Luau::FValue" = type <{ i8, i8, [6 x i8], ptr, ptr, i32, [4 x i8] }>
%struct.luaL_Reg = type { ptr, ptr }

$_ZN4Luau6FValueIbE4listE = comdat any

@_ZN5FFlag21FixMathNoisePrecisionE = dso_local global %"struct.Luau::FValue" zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"FixMathNoisePrecision\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@_ZL7mathlib = internal constant [38 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.9, ptr @_ZL8math_absP9lua_State }, %struct.luaL_Reg { ptr @.str.10, ptr @_ZL9math_acosP9lua_State }, %struct.luaL_Reg { ptr @.str.11, ptr @_ZL9math_asinP9lua_State }, %struct.luaL_Reg { ptr @.str.12, ptr @_ZL10math_atan2P9lua_State }, %struct.luaL_Reg { ptr @.str.13, ptr @_ZL9math_atanP9lua_State }, %struct.luaL_Reg { ptr @.str.14, ptr @_ZL9math_ceilP9lua_State }, %struct.luaL_Reg { ptr @.str.15, ptr @_ZL9math_coshP9lua_State }, %struct.luaL_Reg { ptr @.str.16, ptr @_ZL8math_cosP9lua_State }, %struct.luaL_Reg { ptr @.str.17, ptr @_ZL8math_degP9lua_State }, %struct.luaL_Reg { ptr @.str.18, ptr @_ZL8math_expP9lua_State }, %struct.luaL_Reg { ptr @.str.19, ptr @_ZL10math_floorP9lua_State }, %struct.luaL_Reg { ptr @.str.20, ptr @_ZL9math_fmodP9lua_State }, %struct.luaL_Reg { ptr @.str.21, ptr @_ZL10math_frexpP9lua_State }, %struct.luaL_Reg { ptr @.str.22, ptr @_ZL10math_ldexpP9lua_State }, %struct.luaL_Reg { ptr @.str.23, ptr @_ZL10math_log10P9lua_State }, %struct.luaL_Reg { ptr @.str.24, ptr @_ZL8math_logP9lua_State }, %struct.luaL_Reg { ptr @.str.25, ptr @_ZL8math_maxP9lua_State }, %struct.luaL_Reg { ptr @.str.26, ptr @_ZL8math_minP9lua_State }, %struct.luaL_Reg { ptr @.str.27, ptr @_ZL9math_modfP9lua_State }, %struct.luaL_Reg { ptr @.str.28, ptr @_ZL8math_powP9lua_State }, %struct.luaL_Reg { ptr @.str.29, ptr @_ZL8math_radP9lua_State }, %struct.luaL_Reg { ptr @.str.30, ptr @_ZL11math_randomP9lua_State }, %struct.luaL_Reg { ptr @.str.31, ptr @_ZL15math_randomseedP9lua_State }, %struct.luaL_Reg { ptr @.str.32, ptr @_ZL9math_sinhP9lua_State }, %struct.luaL_Reg { ptr @.str.33, ptr @_ZL8math_sinP9lua_State }, %struct.luaL_Reg { ptr @.str.34, ptr @_ZL9math_sqrtP9lua_State }, %struct.luaL_Reg { ptr @.str.35, ptr @_ZL9math_tanhP9lua_State }, %struct.luaL_Reg { ptr @.str.36, ptr @_ZL8math_tanP9lua_State }, %struct.luaL_Reg { ptr @.str.37, ptr @_ZL10math_noiseP9lua_State }, %struct.luaL_Reg { ptr @.str.38, ptr @_ZL10math_clampP9lua_State }, %struct.luaL_Reg { ptr @.str.39, ptr @_ZL9math_signP9lua_State }, %struct.luaL_Reg { ptr @.str.40, ptr @_ZL10math_roundP9lua_State }, %struct.luaL_Reg { ptr @.str.41, ptr @_ZL8math_mapP9lua_State }, %struct.luaL_Reg { ptr @.str.42, ptr @_ZL9math_lerpP9lua_State }, %struct.luaL_Reg { ptr @.str.43, ptr @_ZL10math_isnanP9lua_State }, %struct.luaL_Reg { ptr @.str.44, ptr @_ZL10math_isinfP9lua_State }, %struct.luaL_Reg { ptr @.str.45, ptr @_ZL13math_isfiniteP9lua_State }, %struct.luaL_Reg zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"sqrt2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tau\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"deg\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"clamp\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"lerp\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"isnan\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"isinf\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"isfinite\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"interval is too large\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@_ZL11kPerlinHash = internal unnamed_addr constant [257 x i8] c"\97\A0\89[Z\0F\83\0D\C9_`5\C2\E9\07\E1\8C$g\1EE\8E\08c%\F0\15\0A\17\BE\06\94\F7x\EAK\00\1A\C5>^\FC\DB\CBu#\0B 9\B1!X\ED\958W\AE\14}\88\AB\A8D\AFJ\A5G\86\8B0\1B\A6M\92\9E\E7So\E5z<\D3\85\E6\DCi\\)7.\F5(\F4f\8F6A\19?\A1\01\D8PI\D1L\84\BB\D0Y\12\A9\C8\C4\87\82t\BC\9FV\A4dm\C6\AD\BA\03@4\D9\E2\FA|{\05\CA&\93v~\FFRU\D4\CF\CE;\E3/\10:\11\B6\BD\1C*\DF\B7\AA\D5w\F8\98\02,\9A\A3F\DD\99e\9B\A7+\AC\09\81\16'\FD\13blnOq\E0\E8\B2\B9ph\DA\F6a\E4\FB\22\F2\C1\EE\D2\90\0C\BF\B3\A2\F1Q3\91\EB\F9\0E\EFk1\C0\D6\1F\B5\C7j\9D\B8T\CC\B0sy2-\7F\04\96\FE\8A\EC\CD]\DErC\1D\18H\F3\8D\80\C3NB\D7=\9C\B4\97", align 16
@_ZL11kPerlinGrad = internal unnamed_addr constant [16 x [3 x float]] [[3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float -1.000000e+00]], align 16
@.str.50 = private unnamed_addr constant [41 x i8] c"max must be greater than or equal to min\00", align 1
@_ZN4Luau6FValueIbE4listE = linkonce_odr dso_local local_unnamed_addr global ptr null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_lmathlib.cpp, ptr null }]

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z12luaopen_mathP9lua_State(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = tail call noundef i64 @_Z17lua_encodepointerP9lua_Statem(ptr noundef %0, i64 noundef %i.a)
  %i.c = tail call i64 @time(ptr noundef null) #9
  %i.d = xor i64 %i.c, %i.b
  %i.e = tail call i64 @clock() #9
  %i.f = xor i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1248
  %i.j = mul i64 %i.f, 6364136223846793005
  %i.k = add i64 %i.j, 4151516850369407454
  store i64 %i.k, ptr %i.i, align 8, !tbaa !22
  tail call void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZL7mathlib)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef f0x400921FB54442D18)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.2)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef +inf)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef +qnan)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.4)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef f0x4005BF0A8B145769)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.5)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef f0x3FF9E3779B97F4A8)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.6)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef f0x3FF6A09E667F3BCD)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.7)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef f0x401921FB54442D18)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.8)
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i64 @_Z17lua_encodepointerP9lua_Statem(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #3

declare void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z14lua_pushnumberP9lua_Stated(ptr noundef, double noundef) local_unnamed_addr #2

declare void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_absP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_acosP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.acos.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_asinP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.asin.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_atan2P9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = tail call double @llvm.atan2.f64(double %i.a, double %i.b)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_atanP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.atan.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_ceilP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.ceil.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_coshP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.cosh.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_cosP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.cos.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_degP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = fdiv double %i.a, f0x3F91DF46A2529D39
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_expP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.exp.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_floorP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_fmodP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = frem double %i.a, %i.b
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_frexpP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.c = call double @frexp(double noundef %i.b, ptr noundef nonnull %i.a) #9
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !23
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_ldexpP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = tail call double @llvm.ldexp.f64.i32(double %i.a, i32 %i.b)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_log10P9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.log10.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_logP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.b = tail call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.log.f64(double %i.a)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.f = fcmp oeq double %i.e, 2.000000e+00
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call double @llvm.log2.f64(double %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = fcmp oeq double %i.e, 1.000000e+01
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call double @llvm.log10.f64(double %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = tail call double @llvm.log.f64(double %i.a)
  %i.k = tail call double @llvm.log.f64(double %i.e)
  %i.l = fdiv double %i.j, %i.k
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.1 = phi double [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ %i.l, %bb.g ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.1)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_maxP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not13 = icmp slt i32 %i.a, 2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.e, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %.01114 = phi double [ %.1, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %.015) ; 2 uses
  %i.d = fcmp ogt double %i.c, %.01114
  %.1 = select i1 %i.d, double %i.c, double %.01114 ; 2 uses
  %i.e = add nuw i32 %.015, 1
  %exitcond.not = icmp eq i32 %.015, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.011.lcssa = phi double [ %i.b, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.011.lcssa)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_minP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not13 = icmp slt i32 %i.a, 2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.e, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %.01114 = phi double [ %.1, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %.015) ; 2 uses
  %i.d = fcmp olt double %i.c, %.01114
  %.1 = select i1 %i.d, double %i.c, double %.01114 ; 2 uses
  %i.e = add nuw i32 %.015, 1
  %exitcond.not = icmp eq i32 %.015, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.011.lcssa = phi double [ %i.b, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.011.lcssa)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_modfP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call { double, double } @llvm.modf.f64(double %i.a) ; 2 uses
  %i.c = extractvalue { double, double } %i.b, 0
  %i.d = extractvalue { double, double } %i.b, 1
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.d)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_powP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = tail call double @llvm.pow.f64(double %i.a, double %i.b)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_radP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = fmul double %i.a, f0x3F91DF46A2529D39
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11math_randomP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0)
  switch i32 %i.c, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 4 uses
  %i.f = mul i64 %i.e, 6364136223846793005
  %i.g = add i64 %i.f, 105                        ; 4 uses
  %i.h = lshr i64 %i.e, 45
  %i.i = lshr i64 %i.e, 27
  %i.j = xor i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i64 %i.e, 59
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = tail call noundef i32 @llvm.fshr.i32(i32 %i.k, i32 %i.k, i32 %i.m)
  %i.o = mul i64 %i.g, 6364136223846793005
  %i.p = add i64 %i.o, 105
  store i64 %i.p, ptr %i.d, align 8, !tbaa !22
  %i.q = lshr i64 %i.g, 45
  %i.r = lshr i64 %i.g, 27
  %i.s = xor i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i64 %i.g, 59
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = tail call noundef i32 @llvm.fshr.i32(i32 %i.t, i32 %i.t, i32 %i.v)
  %i.x = zext i32 %i.n to i64
  %i.y = zext i32 %i.w to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = or disjoint i64 %i.z, %i.x
  %i.ab = uitofp i64 %i.aa to double
  %1 = fmul nnan double %i.ab, f0x3BF0000000000000
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef nonnull %0, double noundef %1)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.ac = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.46) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22 ; 4 uses
  %i.ag = mul i64 %i.af, 6364136223846793005
  %i.ah = add i64 %i.ag, 105
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !22
  %i.ai = lshr i64 %i.af, 45
  %i.aj = lshr i64 %i.af, 27
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = lshr i64 %i.af, 59
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = tail call noundef i32 @llvm.fshr.i32(i32 %i.al, i32 %i.al, i32 %i.an)
  %i.ap = tail call i32 @llvm.umulh.i32(i32 %i.ac, i32 %i.ao)
  %narrow = add nuw i32 %i.ap, 1
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %narrow)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.aq = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.ar = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not = icmp sgt i32 %i.aq, %i.ar
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.46) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.as = sub i32 %i.ar, %i.aq                    ; 2 uses
  %.not34 = icmp eq i32 %i.as, -1
  br i1 %.not34, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.47) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.at = add nuw i32 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !22 ; 4 uses
  %i.aw = mul i64 %i.av, 6364136223846793005
  %i.ax = add i64 %i.aw, 105
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !22
  %i.ay = lshr i64 %i.av, 45
  %i.az = lshr i64 %i.av, 27
  %i.ba = xor i64 %i.ay, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = lshr i64 %i.av, 59
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = tail call noundef i32 @llvm.fshr.i32(i32 %i.bb, i32 %i.bb, i32 %i.bd)
  %i.bf = tail call i32 @llvm.umulh.i32(i32 %i.at, i32 %i.be)
  %i.bg = add i32 %i.bf, %i.aq
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.bg)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #10
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.e, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL15math_randomseedP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  %i.e = sext i32 %i.a to i64
  %i.f = mul i64 %i.e, 6364136223846793005
  %i.g = add i64 %i.f, 4151516850369407454
  store i64 %i.g, ptr %i.d, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_sinhP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.sinh.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_sinP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.sin.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_sqrtP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.sqrt.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_tanhP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.tanh.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_tanP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.tan.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_noiseP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.e = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b)
  %i.f = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c) ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.49) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 4, !tbaa !23
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.49) #10
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.k = load i32, ptr %i.c, align 4, !tbaa !23
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.49) #10
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.n = load i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, align 8, !tbaa !28, !range !31, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = insertelement <2 x double> poison, double %i.d, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.e, i64 1 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = frem <2 x double> %i.q, splat (double 2.560000e+02)
  %i.s = frem double %i.f, 2.560000e+02
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.016 = phi double [ %i.s, %bb.j ], [ %i.f, %bb.i ]
  %i.t = phi <2 x double> [ %i.r, %bb.j ], [ %i.q, %bb.i ]
  %i.u = fptrunc <2 x double> %i.t to <2 x float> ; 2 uses
  %i.v = fptrunc double %.016 to float            ; 2 uses
  %i.w = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.u) ; 3 uses
  %i.x = call float @llvm.floor.f32(float %i.v)   ; 2 uses
  %i.y = extractelement <2 x float> %i.w, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = and i32 %i.z, 255
  %i.ab = extractelement <2 x float> %i.w, i64 1
  %i.ac = fptosi float %i.ab to i32
  %i.ad = fptosi float %i.x to i32
  %i.ae = fsub <2 x float> %i.u, %i.w             ; 9 uses
  %i.af = fsub float %i.v, %i.x                   ; 6 uses
  %i.ag = fmul <2 x float> %i.ae, %i.ae
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ai, <2 x float> splat (float 1.000000e+01))
  %i.ak = fmul <2 x float> %i.ah, %i.aj           ; 2 uses
  %i.al = fmul float %i.af, %i.af
  %i.am = fmul float %i.af, %i.al
  %i.an = call float @llvm.fmuladd.f32(float %i.af, float 6.000000e+00, float -1.500000e+01)
  %i.ao = call float @llvm.fmuladd.f32(float %i.af, float %i.an, float 1.000000e+01)
  %i.ap = fmul float %i.am, %i.ao
  %i.aq = zext nneg i32 %i.aa to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !33
  %.tr.i = trunc i32 %i.ac to i8                  ; 2 uses
  %.narrow.i = add i8 %i.as, %.tr.i
  %i.at = zext i8 %.narrow.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !33
  %.tr83.i = trunc i32 %i.ad to i8                ; 4 uses
  %.narrow84.i = add i8 %i.av, %.tr83.i
  %i.aw = zext i8 %.narrow84.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !33
  %.narrow86.i = add i8 %i.ay, %.tr83.i
  %i.az = zext i8 %.narrow86.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !33
  %.narrow88.i = add i8 %i.bb, %.tr.i
  %i.bc = zext i8 %.narrow88.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !33
  %.narrow90.i = add i8 %i.be, %.tr83.i
  %i.bf = zext i8 %.narrow90.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !33
  %.narrow92.i = add i8 %i.bh, %.tr83.i
  %i.bi = zext i8 %.narrow92.i to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.aw ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !33
  %i.bl = and i8 %i.bk, 15
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bm ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bn, align 4, !tbaa !35 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bf ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %i.bt = extractelement <2 x float> %i.ae, i64 0
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = and i8 %i.bs, 15
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bw ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !35 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.az ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !33
  %i.cd = extractelement <2 x float> %i.ae, i64 1
  %i.ce = fadd float %i.cd, -1.000000e+00
  %i.cf = and i8 %i.cc, 15
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.cg ; 2 uses
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !tbaa !35 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bi ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !33
  %i.cn = and i8 %i.cm, 15
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.co ; 2 uses
  %i.cq = load <2 x float>, ptr %i.cp, align 4, !tbaa !35 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !33
  %i.cv = insertelement <2 x float> poison, float %i.af, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fadd <2 x float> %i.cw, <float -0.000000e+00, float -1.000000e+00> ; 4 uses
  %i.cy = and i8 %i.cu, 15
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.cz ; 2 uses
  %i.db = load <2 x float>, ptr %i.da, align 4, !tbaa !35 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = shufflevector <2 x float> %i.bo, <2 x float> %i.db, <2 x i32> <i32 1, i32 3>
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %i.bo, <2 x float> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dg = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dg, <2 x float> %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !35
  %i.dk = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dj, i64 1
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cx, <2 x float> %i.dh) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !33
  %i.dp = and i8 %i.do, 15
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.dq ; 2 uses
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !35 ; 2 uses
  %i.dt = shufflevector <2 x float> %i.by, <2 x float> %i.ds, <2 x i32> <i32 1, i32 3>
  %i.du = fmul <2 x float> %i.dc, %i.dt
  %i.dv = shufflevector <2 x float> %i.by, <2 x float> %i.ds, <2 x i32> <i32 0, i32 2>
  %i.dw = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dx, <2 x float> %i.du)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !35
  %i.eb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.cx, <2 x float> %i.dy)
  %i.ee = fsub <2 x float> %i.ed, %i.dm
  %i.ef = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ee, <2 x float> %i.dm) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !33
  %i.ej = and i8 %i.ei, 15
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ek ; 2 uses
  %i.em = load <2 x float>, ptr %i.el, align 4, !tbaa !35 ; 2 uses
  %i.en = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = shufflevector <2 x float> %i.ci, <2 x float> %i.em, <2 x i32> <i32 1, i32 3>
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = shufflevector <2 x float> %i.ci, <2 x float> %i.em, <2 x i32> <i32 0, i32 2>
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.dg, <2 x float> %i.eq)
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !35
  %i.ev = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.eu, i64 1
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.cx, <2 x float> %i.es) ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !33
  %i.fa = and i8 %i.ez, 15
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.fb ; 2 uses
  %i.fd = load <2 x float>, ptr %i.fc, align 4, !tbaa !35 ; 2 uses
  %i.fe = shufflevector <2 x float> %i.cq, <2 x float> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.ff = fmul <2 x float> %i.eo, %i.fe
  %i.fg = shufflevector <2 x float> %i.cq, <2 x float> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.dx, <2 x float> %i.ff)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !35
  %i.fk = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fj, i64 1
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.cx, <2 x float> %i.fh)
  %i.fn = fsub <2 x float> %i.fm, %i.ex
  %i.fo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fn, <2 x float> %i.ex)
  %i.fp = fsub <2 x float> %i.fo, %i.eg
  %i.fq = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fp, <2 x float> %i.eg) ; 3 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %shift = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.fr
  %i.ft = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fu = call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ft, float %i.fs)
  %i.fv = fpext float %i.fu to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_clampP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3) ; 3 uses
  %i.d = fcmp ugt double %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.50) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp olt double %i.a, %i.b
  %i.f = select i1 %i.e, double %i.b, double %i.a ; 2 uses
  %i.g = fcmp ogt double %i.f, %i.c
  %i.h = select i1 %i.g, double %i.c, double %i.f
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.h)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_signP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = fcmp ogt double %i.a, 0.000000e+00
  %i.c = fcmp olt double %i.a, 0.000000e+00
  %i.d = select i1 %i.c, double -1.000000e+00, double 0.000000e+00
  %i.e = select i1 %i.b, double 1.000000e+00, double %i.d
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.e)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_roundP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.round.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_mapP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.d = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.e = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 5)
  %i.f = fsub double %i.a, %i.b
  %i.g = fsub double %i.e, %i.d
  %i.h = fmul double %i.f, %i.g
  %i.i = fsub double %i.c, %i.b
  %i.j = fdiv double %i.h, %i.i
  %i.k = fadd double %i.d, %i.j
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.k)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_lerpP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.d = fcmp oeq double %i.c, 1.000000e+00
  %i.e = fsub double %i.b, %i.a
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.c, double %i.a)
  %i.g = select i1 %i.d, double %i.b, double %i.f
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.g)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_isnanP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = fcmp uno double %i.a, 0.000000e+00
  %i.c = zext i1 %i.b to i32
  tail call void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_isinfP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp oeq double %i.b, +inf
  %i.d = zext i1 %i.c to i32
  tail call void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef %i.d)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL13math_isfiniteP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp one double %i.b, +inf
  %i.d = zext i1 %i.c to i32
  tail call void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef %i.d)
  ret i32 1
}

declare noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.acos.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cosh.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare void @_Z15lua_pushintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

declare noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #4

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sinh.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tanh.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #5

declare noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_lmathlib.cpp() #8 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag21FixMathNoisePrecisionE, align 8, !tbaa !28
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 1), align 1, !tbaa !36
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 8), align 8, !tbaa !37
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !38
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 16), align 8, !tbaa !39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 24), align 8, !tbaa !40
  store ptr @_ZN5FFlag21FixMathNoisePrecisionE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS10lua_TValue", !10, i64 0}
!12 = !{!"p1 _ZTS12global_State", !10, i64 0}
!13 = !{!"p1 _ZTS8CallInfo", !10, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 _ZTS8LuaTable", !10, i64 0}
!16 = !{!"p1 _ZTS5UpVal", !10, i64 0}
!17 = !{!"p1 _ZTS8GCObject", !10, i64 0}
!18 = !{!"p1 _ZTS7TString", !10, i64 0}
!19 = !{!"_ZTS9lua_State", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !9, i64 5, !9, i64 6, !11, i64 8, !11, i64 16, !12, i64 24, !13, i64 32, !11, i64 40, !11, i64 48, !13, i64 56, !13, i64 64, !6, i64 72, !6, i64 76, !14, i64 80, !14, i64 82, !6, i64 84, !15, i64 88, !16, i64 96, !17, i64 104, !18, i64 112, !10, i64 120}
!20 = !{!19, !12, i64 24}
!21 = !{!"long", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 omnipotent char", !10, i64 0}
!26 = !{!"p1 _ZTSN4Luau6FValueIbEE", !10, i64 0}
!27 = !{!"_ZTSN4Luau6FValueIbEE", !9, i64 0, !9, i64 1, !25, i64 8, !26, i64 16, !6, i64 24}
!28 = !{!27, !9, i64 0}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!5, !5, i64 0}
!34 = !{!"float", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!27, !9, i64 1}
!37 = !{!27, !25, i64 8}
!38 = !{!26, !26, i64 0}
!39 = !{!27, !26, i64 16}
!40 = !{!27, !6, i64 24}
end_hunk_0
