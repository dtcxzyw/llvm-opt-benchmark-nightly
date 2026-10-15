Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cart?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PJ_XYZ = type { double, double, double }
%struct.PJ_LPZ = type { double, double, double }

@_ZL8des_cart = internal constant [31 x i8] c"Geodetic/cartesian conversions\00", align 16
@pj_s_cart = hidden local_unnamed_addr constant ptr @_ZL8des_cart, align 8
@.str = private unnamed_addr constant [5 x i8] c"cart\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_cart(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZL9cartesian6PJ_LPZP8PJconsts, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZL8geodetic6PJ_XYZP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL12cart_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL12cart_reverse5PJ_XYP8PJconsts, ptr %i.d, align 8, !tbaa !40
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_Z6pj_newv()      ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_ZL8des_cart, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  store i32 1, ptr %i.i, align 8, !tbaa !55
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink17 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ] ; 3 uses
  %.sink = phi i32 [ 1, %bb.d ], [ 3, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sink17, i64 380
  store i32 4, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.sink17, i64 384
  store i32 %.sink, ptr %i.k, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %.sink17, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z33pj_projection_specific_setup_cartP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 136), (380, 388)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZL9cartesian6PJ_LPZP8PJconsts, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZL8geodetic6PJ_XYZP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL12cart_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL12cart_reverse5PJ_XYP8PJconsts, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 4, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 3, ptr %i.f, align 8, !tbaa !42
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal void @_ZL9cartesian6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_XYZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.c = tail call double @cos(double noundef %i.b) #8
  %i.d = tail call double @sin(double noundef %i.b) #8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.f = load double, ptr %i.e, align 8, !tbaa !45 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.h = load double, ptr %i.g, align 8, !tbaa !46 ; 3 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  br i1 %i.i, label %_ZL26normal_radius_of_curvatureddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fneg double %i.d
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.d, double 1.000000e+00)
  %i.m = tail call double @sqrt(double noundef %i.l) #8
  %i.n = fdiv double %i.f, %i.m
  br label %_ZL26normal_radius_of_curvatureddd.exit

_ZL26normal_radius_of_curvatureddd.exit:          ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.n, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !47 ; 2 uses
  %i.q = fadd double %.0.i, %i.p
  %i.r = fmul double %i.c, %i.q                   ; 2 uses
  %i.s = load double, ptr %1, align 8, !tbaa !48  ; 2 uses
  %i.t = tail call double @cos(double noundef %i.s) #8
  %i.u = fmul double %i.r, %i.t
  store double %i.u, ptr %0, align 8, !tbaa !50
  %i.v = tail call double @sin(double noundef %i.s) #8
  %i.w = fmul double %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.w, ptr %i.x, align 8, !tbaa !51
  %i.y = fsub double 1.000000e+00, %i.h
  %i.z = tail call double @llvm.fmuladd.f64(double %.0.i, double %i.y, double %i.p)
  %i.aa = fmul double %i.d, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.aa, ptr %i.ab, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal void @_ZL8geodetic6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_LPZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.c = load double, ptr %i.b, align 8, !tbaa !56 ; 3 uses
  %i.d = fmul double %i.a, %i.c                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !51
  %i.g = fmul double %i.c, %i.f                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !52 ; 3 uses
  %i.j = fmul double %i.g, %i.g
  %i.k = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.j)
  %sqrt71 = tail call double @sqrt(double noundef %i.k) #8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.m = load double, ptr %i.l, align 8, !tbaa !57
  %i.n = fsub double 1.000000e+00, %i.m           ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 232
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 216
  %4 = insertelement <2 x double> poison, double %i.c, i64 0
  %5 = insertelement <2 x double> %4, double %sqrt71, i64 1
  %6 = insertelement <2 x double> poison, double %i.i, i64 0
  %7 = insertelement <2 x double> %6, double %i.n, i64 1
  %8 = fmul <2 x double> %5, %7                   ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %8, %8
  %9 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %10 = extractelement <2 x double> %8, i64 0     ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %10, double %10, double %9)
  %sqrt70 = tail call double @sqrt(double noundef %i.p) #8 ; 2 uses
  %i.q = fcmp une double %sqrt70, 0.000000e+00
  %i.r = fdiv double 1.000000e+00, %sqrt70
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %11 = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x double> %8, %11
  %13 = insertelement <2 x i1> poison, i1 %i.q, i64 0
  %14 = shufflevector <2 x i1> %13, <2 x i1> poison, <2 x i32> zeroinitializer
  %15 = select <2 x i1> %14, <2 x double> %12, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 4 uses
  %16 = load double, ptr %i.o, align 8, !tbaa !58
  %17 = fmul double %i.n, %16
  %18 = load double, ptr %3, align 8, !tbaa !46   ; 3 uses
  %i.t = insertelement <2 x double> poison, double %17, i64 0
  %i.u = insertelement <2 x double> %i.t, double %18, i64 1
  %i.v = fmul <2 x double> %i.u, %15
  %i.w = fneg <2 x double> %15
  %i.x = shufflevector <2 x double> %15, <2 x double> %i.w, <2 x i32> <i32 0, i32 3>
  %i.y = fmul <2 x double> %i.x, %i.v
  %i.z = insertelement <2 x double> %8, double %sqrt71, i64 1
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %15, <2 x double> %i.z) ; 3 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1 ; 4 uses
  %i.ac = fmul double %i.ab, %i.ab
  %i.ad = extractelement <2 x double> %i.aa, i64 0 ; 3 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.ac)
  %sqrt = tail call double @sqrt(double noundef %i.ae) #8 ; 2 uses
  %i.af = fcmp une double %sqrt, 0.000000e+00
  %i.ag = fdiv double 1.000000e+00, %sqrt
  %19 = insertelement <2 x double> poison, double %i.ag, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x double> %20, %i.aa
  %22 = insertelement <2 x i1> poison, i1 %i.af, i64 0
  %23 = shufflevector <2 x i1> %22, <2 x i1> poison, <2 x i32> zeroinitializer
  %24 = select <2 x i1> %23, <2 x double> %21, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.ah = fcmp ugt double %i.ab, 0.000000e+00
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ah, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.aj = fcmp oge double %i.i, 0.000000e+00      ; 2 uses
  %i.ak = select i1 %i.aj, double f0x3FF921FB54442D18, double f0xBFF921FB54442D18
  store double %i.ak, ptr %i.ai, align 8, !tbaa !44
  %i.al = select i1 %i.aj, double 1.000000e+00, double -1.000000e+00
  %i.am = tail call double @atan2(double noundef %i.g, double noundef %i.d) #8
  store double %i.am, ptr %0, align 8, !tbaa !48
  %25 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.al, i64 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.an = fdiv double %i.ad, %i.ab
  %i.ao = tail call double @atan(double noundef %i.an) #8
  store double %i.ao, ptr %i.ai, align 8, !tbaa !44
  %i.ap = tail call double @atan2(double noundef %i.g, double noundef %i.d) #8
  store double %i.ap, ptr %0, align 8, !tbaa !48
  %26 = extractelement <2 x double> %24, i64 1    ; 2 uses
  %i.aq = fcmp olt double %26, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %27 = phi <2 x double> [ %25, %.thread ], [ %24, %bb.b ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.as = load double, ptr %i.ar, align 8, !tbaa !45
  %foldExtExtBinop74 = fmul <2 x double> %27, %27
  %28 = extractelement <2 x double> %foldExtExtBinop74, i64 1 ; 2 uses
  %foldExtExtBinop76 = fmul <2 x double> %27, %27
  %29 = extractelement <2 x double> %foldExtExtBinop76, i64 0
  %i.at = fmul double %i.n, %i.n                  ; 2 uses
  %i.au = fmul double %i.at, %29                  ; 2 uses
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.au, double %28)
  %i.aw = fadd double %28, %i.au
  %i.ax = fdiv double %i.av, %i.aw
  %i.ay = tail call double @sqrt(double noundef %i.ax) #8
  %i.az = fmul double %i.as, %i.ay
  %i.ba = tail call double @llvm.fabs.f64(double %i.i)
  %i.bb = fsub double %i.ba, %i.az
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !45 ; 3 uses
  %i.be = fcmp oeq double %18, 0.000000e+00
  br i1 %i.be, label %_ZL26normal_radius_of_curvatureddd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %30 = extractelement <2 x double> %24, i64 0    ; 2 uses
  %i.bf = fneg double %30
  %i.bg = fmul double %18, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %30, double 1.000000e+00)
  %i.bi = tail call double @sqrt(double noundef %i.bh) #8
  %i.bj = fdiv double %i.bd, %i.bi
  br label %_ZL26normal_radius_of_curvatureddd.exit

_ZL26normal_radius_of_curvatureddd.exit:          ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.bj, %bb.e ], [ %i.bd, %bb.d ]
  %i.bk = fmul double %sqrt71, %i.bd
  %i.bl = fdiv double %i.bk, %26
  %i.bm = fsub double %i.bl, %.0.i
  br label %bb.f

bb.f:                                             ; preds = %_ZL26normal_radius_of_curvatureddd.exit, %bb.c
  %.sink = phi double [ %i.bm, %_ZL26normal_radius_of_curvatureddd.exit ], [ %i.bb, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink, ptr %i.bn, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal { double, double } @_ZL12cart_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call double @cos(double noundef %1) #8, !noalias !61
  %i.b = tail call double @sin(double noundef %1) #8, !noalias !61 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.d = load double, ptr %i.c, align 8, !tbaa !45, !noalias !61 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.f = load double, ptr %i.e, align 8, !tbaa !46, !noalias !61 ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %_ZL9cartesian6PJ_LPZP8PJconsts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fneg double %i.b
  %i.i = fmul double %i.f, %i.h
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.b, double 1.000000e+00)
  %i.k = tail call double @sqrt(double noundef %i.j) #8, !noalias !61
  %i.l = fdiv double %i.d, %i.k
  br label %_ZL9cartesian6PJ_LPZP8PJconsts.exit

_ZL9cartesian6PJ_LPZP8PJconsts.exit:              ; preds = %bb.a, %bb.b
  %.0.i.i = phi double [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %i.m = fadd double %.0.i.i, 0.000000e+00
  %i.n = fmul double %i.a, %i.m                   ; 2 uses
  %i.o = tail call double @cos(double noundef %0) #8, !noalias !61
  %i.p = fmul double %i.o, %i.n
  %i.q = tail call double @sin(double noundef %0) #8, !noalias !61
  %i.r = fmul double %i.n, %i.q
  %.fca.0.insert = insertvalue { double, double } poison, double %i.p, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.r, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal { double, double } @_ZL12cart_reverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct.PJ_LPZ, align 8             ; 5 uses
  %4 = alloca %struct.PJ_XYZ, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store double %0, ptr %4, align 8, !tbaa !62
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %1, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !tbaa !62
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !62
  call void @_ZL8geodetic6PJ_XYZP8PJconsts(ptr dead_on_unwind nonnull writable sret(%struct.PJ_LPZ) align 8 %3, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %4, ptr noundef %2)
  %.sroa.0.sroa.0.0.copyload4 = load double, ptr %3, align 8, !tbaa !62
  %.sroa.0.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.sroa.6.0.copyload7 = load double, ptr %.sroa.0.sroa.6.0..sroa_idx6, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.sroa.0.0.copyload4, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.0.sroa.6.0.copyload7, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 120}
!38 = !{!36, !8, i64 128}
!39 = !{!36, !8, i64 104}
!40 = !{!36, !8, i64 112}
!41 = !{!36, !15, i64 380}
!42 = !{!36, !15, i64 384}
!43 = !{!"_ZTS6PJ_LPZ", !14, i64 0, !14, i64 8, !14, i64 16}
!44 = !{!43, !14, i64 8}
!45 = !{!36, !14, i64 168}
!46 = !{!36, !14, i64 216}
!47 = !{!43, !14, i64 16}
!48 = !{!43, !14, i64 0}
!49 = !{!"_ZTS6PJ_XYZ", !14, i64 0, !14, i64 8, !14, i64 16}
!50 = !{!49, !14, i64 0}
!51 = !{!49, !14, i64 8}
!52 = !{!49, !14, i64 16}
!53 = !{!36, !10, i64 8}
!54 = !{!36, !10, i64 16}
!55 = !{!36, !5, i64 360}
!56 = !{!36, !14, i64 184}
!57 = !{!36, !14, i64 272}
!58 = !{!36, !14, i64 232}
!59 = distinct !{!59, i1 false, !"_ZL9cartesian6PJ_LPZP8PJconsts"}
!60 = distinct !{!60, !59, !"_ZL9cartesian6PJ_LPZP8PJconsts: argument 0"}
!61 = !{!60}
!62 = !{!14, !14, i64 0}
end_hunk_0
