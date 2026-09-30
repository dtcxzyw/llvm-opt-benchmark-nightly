Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/halftest?download=true
inline.NumInlined: 78
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error: 0x%x -> %g -> 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"error: %g->0x%x->%g, expected ->0x%x->%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"error: 0x%x->%.7g, expected ->%.7g, \0A\00", align 1
@_ZZ12spotcheckallvE1t = internal unnamed_addr constant [144 x float] [float 1.000000e+00, float f0x337FFFFF, float 3.000000e+00, float f0x343FFFFE, float 8.000000e+00, float f0x35000001, float 1.600000e+01, float f0x35800000, float 3.300000e+01, float f0x3603FFFF, float 8.300000e+01, float f0x36A60001, float 1.670000e+02, float f0x37270000, float 3.350000e+02, float f0x37A78002, float 8.380000e+02, float f0x38517FFF, float 1.677000e+03, float f0x38D1A000, float 2.701000e+03, float 1.999140e-04, float 4.120000e+03, float f0x3A02FFFF, float 5.144000e+03, float f0x3A830000, float 6.168000e+03, float f0x3B02FFFE, float 7.454000e+03, float f0x3BA3BFFF, float 8.478000e+03, float f0x3C23C000, float 9.502000e+03, float f0x3CA3BFFE, float 1.085400e+04, float f0x3D4CBFFF, float 1.187800e+04, float f0x3DCCC001, float 1.290200e+04, float f0x3E4CC002, float 1.433600e+04, float 5.000000e-01, float 1.536000e+04, float 1.000000e+00, float 1.638400e+04, float 2.000000e+00, float 1.766400e+04, float 5.000000e+00, float 1.868800e+04, float 1.000000e+01, float 1.971200e+04, float 2.000000e+01, float 2.105600e+04, float 5.000000e+01, float 2.208000e+04, float 1.000000e+02, float 2.310400e+04, float 2.000000e+02, float 2.452800e+04, float 5.000000e+02, float 2.555200e+04, float 1.000000e+03, float 2.657600e+04, float 2.000000e+03, float 2.787400e+04, float 5.000000e+03, float 2.889800e+04, float 1.000000e+04, float 2.992200e+04, float 2.000000e+04, float 3.125800e+04, float 4.998400e+04, float 3.276900e+04, float f0xB37FFFFF, float 3.277100e+04, float f0xB43FFFFE, float 3.277600e+04, float f0xB5000001, float 3.278400e+04, float f0xB5800000, float 3.280100e+04, float f0xB603FFFF, float 3.285100e+04, float f0xB6A60001, float 3.293500e+04, float f0xB7270000, float 3.310300e+04, float f0xB7A78002, float 3.360600e+04, float f0xB8517FFF, float 3.444500e+04, float f0xB8D1A000, float 3.546900e+04, float -1.999140e-04, float 3.688800e+04, float f0xBA02FFFF, float 3.791200e+04, float f0xBA830000, float 3.893600e+04, float f0xBB02FFFE, float 4.022200e+04, float f0xBBA3BFFF, float 4.124600e+04, float f0xBC23C000, float 4.227000e+04, float f0xBCA3BFFE, float 4.362200e+04, float f0xBD4CBFFF, float 4.464600e+04, float f0xBDCCC001, float 4.567000e+04, float f0xBE4CC002, float 4.710400e+04, float -5.000000e-01, float 4.812800e+04, float -1.000000e+00, float 4.915200e+04, float -2.000000e+00, float 5.043200e+04, float -5.000000e+00, float 5.145600e+04, float -1.000000e+01, float 5.248000e+04, float -2.000000e+01, float 5.382400e+04, float -5.000000e+01, float 5.484800e+04, float -1.000000e+02, float 5.587200e+04, float -2.000000e+02, float 5.729600e+04, float -5.000000e+02, float 5.832000e+04, float -1.000000e+03, float 5.934400e+04, float -2.000000e+03, float 6.064200e+04, float -5.000000e+03, float 6.166600e+04, float -1.000000e+04, float 6.269000e+04, float -2.000000e+04, float 6.402600e+04, float -4.998400e+04], align 16
@.str.6 = private unnamed_addr constant [35 x i8] c"error: %g(0x%0x)->0x%x->%g(0x%0x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"error: %g->0x%x->%g, expected 0x%x->%sinf\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s...\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Float/double compatibility\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Spot checks\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Bidirectional conversion\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Infinity conversion\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Nan conversion\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Rounding\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"halftest: total errors: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"0x%x -> %g 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"%g -> 0x%x ->%g\0A\00", align 1
@_ZN4Ptex4v2_48PtexHalf8h2fTableE = external local_unnamed_addr global [65536 x i32], align 16
@_ZN4Ptex4v2_48PtexHalf8f2hTableE = external local_unnamed_addr global [512 x i16], align 16
@str = private unnamed_addr constant [28 x i8] c"halftest: all tests passed.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_Z3h2ft(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !tbaa !11
  ret float %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i16 @_Z3f2hf(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp oeq float %0, 0.000000e+00
  br i1 %i.a, label %_ZN4Ptex4v2_48PtexHalf9fromFloatEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast float %0 to i32                  ; 3 uses
  %i.c = lshr i32 %i.b, 23
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13   ; 2 uses
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.b, 8384512
  %i.h = add nuw nsw i32 %i.g, 4096
  %i.i = lshr i32 %i.h, 13
  %i.j = trunc nuw nsw i32 %i.i to i16
  %i.k = add i16 %i.f, %i.j
  br label %_ZN4Ptex4v2_48PtexHalf9fromFloatEf.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.b)
  br label %_ZN4Ptex4v2_48PtexHalf9fromFloatEf.exit

_ZN4Ptex4v2_48PtexHalf9fromFloatEf.exit:          ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi i16 [ 0, %bb.a ], [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  ret i16 %.1.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_Z9printbitsiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not8 = icmp slt i32 %1, %2
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = shl nuw i32 1, %.09
  %i.b = and i32 %i.a, %0
  %.not6 = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not6, i32 48, i32 49
  %putchar7 = tail call i32 @putchar(i32 %i.c)    ; 0 uses
  %i.d = add nsw i32 %.09, -1
  %.not.not = icmp sgt i32 %.09, %2
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_Z9printhalft(i16 noundef zeroext %0) local_unnamed_addr #2 {
.lr.ph.i:
  %i.a = zext i16 %0 to i32                       ; 4 uses
  %.not6.i = icmp sgt i16 %0, -1
  %i.b = select i1 %.not6.i, i32 48, i32 49
  %putchar7.i = tail call i32 @putchar(i32 %i.b)  ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 32)     ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  %1 = and i32 %i.a, 16384
  %.not6.i5 = icmp eq i32 %1, 0
  %2 = select i1 %.not6.i5, i32 48, i32 49
  %putchar7.i6 = tail call i32 @putchar(i32 %2)   ; 0 uses
  %3 = and i32 %i.a, 8192
  %.not6.i5.1 = icmp eq i32 %3, 0
  %4 = select i1 %.not6.i5.1, i32 48, i32 49
  %putchar7.i6.1 = tail call i32 @putchar(i32 %4) ; 0 uses
  %5 = insertelement <12 x i32> poison, i32 %i.a, i64 0
  %6 = shufflevector <12 x i32> %5, <12 x i32> poison, <12 x i32> zeroinitializer
  %7 = and <12 x i32> %6, <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096>
  %8 = icmp eq <12 x i32> %7, zeroinitializer     ; 12 uses
  %9 = extractelement <12 x i1> %8, i64 11
  %10 = select i1 %9, i32 48, i32 49
  %putchar7.i6.2 = tail call i32 @putchar(i32 %10) ; 0 uses
  %11 = extractelement <12 x i1> %8, i64 10
  %12 = select i1 %11, i32 48, i32 49
  %putchar7.i6.3 = tail call i32 @putchar(i32 %12) ; 0 uses
  %13 = extractelement <12 x i1> %8, i64 9
  %14 = select i1 %13, i32 48, i32 49
  %putchar7.i6.4.a = tail call i32 @putchar(i32 %14) ; 0 uses
  %putchar.i8 = tail call i32 @putchar(i32 32)    ; 0 uses
  %15 = extractelement <12 x i1> %8, i64 8
  %16 = select i1 %15, i32 48, i32 49
  %putchar7.i13 = tail call i32 @putchar(i32 %16) ; 0 uses
  %17 = extractelement <12 x i1> %8, i64 7
  %18 = select i1 %17, i32 48, i32 49
  %putchar7.i13.1 = tail call i32 @putchar(i32 %18) ; 0 uses
  %19 = extractelement <12 x i1> %8, i64 6
  %20 = select i1 %19, i32 48, i32 49
  %putchar7.i13.2 = tail call i32 @putchar(i32 %20) ; 0 uses
  %21 = extractelement <12 x i1> %8, i64 5
  %22 = select i1 %21, i32 48, i32 49
  %putchar7.i13.3 = tail call i32 @putchar(i32 %22) ; 0 uses
  %23 = extractelement <12 x i1> %8, i64 4
  %24 = select i1 %23, i32 48, i32 49
  %putchar7.i13.4 = tail call i32 @putchar(i32 %24) ; 0 uses
  %25 = extractelement <12 x i1> %8, i64 3
  %26 = select i1 %25, i32 48, i32 49
  %putchar7.i13.5 = tail call i32 @putchar(i32 %26) ; 0 uses
  %27 = extractelement <12 x i1> %8, i64 2
  %28 = select i1 %27, i32 48, i32 49
  %putchar7.i13.6 = tail call i32 @putchar(i32 %28) ; 0 uses
  %29 = extractelement <12 x i1> %8, i64 1
  %30 = select i1 %29, i32 48, i32 49
  %putchar7.i13.7 = tail call i32 @putchar(i32 %30) ; 0 uses
  %31 = extractelement <12 x i1> %8, i64 0
  %32 = select i1 %31, i32 48, i32 49
  %putchar7.i13.8 = tail call i32 @putchar(i32 %32) ; 0 uses
  %i.d = and i32 %i.a, 1
  %i.e = or disjoint i32 %i.d, 48
  %putchar7.i13.9 = tail call i32 @putchar(i32 %i.e) ; 0 uses
  %putchar.i15 = tail call i32 @putchar(i32 32)   ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_Z10printfloatf(float noundef %0) local_unnamed_addr #2 {
.lr.ph.i:
  %i.a = bitcast float %0 to i32                  ; 5 uses
  %.not6.i = icmp sgt i32 %i.a, -1
  %i.b = select i1 %.not6.i, i32 48, i32 49
  %putchar7.i = tail call i32 @putchar(i32 %i.b)  ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 32)     ; 0 uses
  %i.c = and i32 %i.a, 1073741824
  %.not6.i5 = icmp eq i32 %i.c, 0
  %1 = select i1 %.not6.i5, i32 48, i32 49
  %putchar7.i6 = tail call i32 @putchar(i32 %1)   ; 0 uses
  %i.d = and i32 %i.a, 536870912
  %.not6.i5.1 = icmp eq i32 %i.d, 0
  %2 = select i1 %.not6.i5.1, i32 48, i32 49
  %putchar7.i6.1 = tail call i32 @putchar(i32 %2) ; 0 uses
  %3 = insertelement <28 x i32> poison, i32 %i.a, i64 0
  %4 = shufflevector <28 x i32> %3, <28 x i32> poison, <28 x i32> zeroinitializer
  %5 = and <28 x i32> %4, <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456>
  %6 = icmp eq <28 x i32> %5, zeroinitializer     ; 28 uses
  %7 = extractelement <28 x i1> %6, i64 27
  %8 = select i1 %7, i32 48, i32 49
  %putchar7.i6.2.a = tail call i32 @putchar(i32 %8) ; 0 uses
  %9 = extractelement <28 x i1> %6, i64 26
  %10 = select i1 %9, i32 48, i32 49
  %putchar7.i6.3 = tail call i32 @putchar(i32 %10) ; 0 uses
  %11 = extractelement <28 x i1> %6, i64 25
  %12 = select i1 %11, i32 48, i32 49
  %putchar7.i6.4 = tail call i32 @putchar(i32 %12) ; 0 uses
  %13 = extractelement <28 x i1> %6, i64 24
  %14 = select i1 %13, i32 48, i32 49
  %putchar7.i6.5 = tail call i32 @putchar(i32 %14) ; 0 uses
  %15 = extractelement <28 x i1> %6, i64 23
  %16 = select i1 %15, i32 48, i32 49
  %putchar7.i6.6 = tail call i32 @putchar(i32 %16) ; 0 uses
  %17 = extractelement <28 x i1> %6, i64 22
  %18 = select i1 %17, i32 48, i32 49
  %putchar7.i6.7 = tail call i32 @putchar(i32 %18) ; 0 uses
  %putchar.i8 = tail call i32 @putchar(i32 32)    ; 0 uses
  %19 = extractelement <28 x i1> %6, i64 21
  %20 = select i1 %19, i32 48, i32 49
  %putchar7.i13 = tail call i32 @putchar(i32 %20) ; 0 uses
  %21 = extractelement <28 x i1> %6, i64 20
  %22 = select i1 %21, i32 48, i32 49
  %putchar7.i13.1 = tail call i32 @putchar(i32 %22) ; 0 uses
  %23 = extractelement <28 x i1> %6, i64 19
  %24 = select i1 %23, i32 48, i32 49
  %putchar7.i13.2 = tail call i32 @putchar(i32 %24) ; 0 uses
  %25 = extractelement <28 x i1> %6, i64 18
  %26 = select i1 %25, i32 48, i32 49
  %putchar7.i13.3 = tail call i32 @putchar(i32 %26) ; 0 uses
  %27 = extractelement <28 x i1> %6, i64 17
  %28 = select i1 %27, i32 48, i32 49
  %putchar7.i13.4 = tail call i32 @putchar(i32 %28) ; 0 uses
  %29 = extractelement <28 x i1> %6, i64 16
  %30 = select i1 %29, i32 48, i32 49
  %putchar7.i13.5 = tail call i32 @putchar(i32 %30) ; 0 uses
  %31 = extractelement <28 x i1> %6, i64 15
  %32 = select i1 %31, i32 48, i32 49
  %putchar7.i13.6 = tail call i32 @putchar(i32 %32) ; 0 uses
  %33 = extractelement <28 x i1> %6, i64 14
  %34 = select i1 %33, i32 48, i32 49
  %putchar7.i13.7 = tail call i32 @putchar(i32 %34) ; 0 uses
  %35 = extractelement <28 x i1> %6, i64 13
  %36 = select i1 %35, i32 48, i32 49
  %putchar7.i13.8 = tail call i32 @putchar(i32 %36) ; 0 uses
  %37 = extractelement <28 x i1> %6, i64 12
  %38 = select i1 %37, i32 48, i32 49
  %putchar7.i13.9 = tail call i32 @putchar(i32 %38) ; 0 uses
  %39 = extractelement <28 x i1> %6, i64 11
  %40 = select i1 %39, i32 48, i32 49
  %putchar7.i13.10 = tail call i32 @putchar(i32 %40) ; 0 uses
  %41 = extractelement <28 x i1> %6, i64 10
  %42 = select i1 %41, i32 48, i32 49
  %putchar7.i13.11 = tail call i32 @putchar(i32 %42) ; 0 uses
  %43 = extractelement <28 x i1> %6, i64 9
  %44 = select i1 %43, i32 48, i32 49
  %putchar7.i13.12 = tail call i32 @putchar(i32 %44) ; 0 uses
  %45 = extractelement <28 x i1> %6, i64 8
  %46 = select i1 %45, i32 48, i32 49
  %putchar7.i13.13 = tail call i32 @putchar(i32 %46) ; 0 uses
  %47 = extractelement <28 x i1> %6, i64 7
  %48 = select i1 %47, i32 48, i32 49
  %putchar7.i13.14 = tail call i32 @putchar(i32 %48) ; 0 uses
  %49 = extractelement <28 x i1> %6, i64 6
  %50 = select i1 %49, i32 48, i32 49
  %putchar7.i13.15 = tail call i32 @putchar(i32 %50) ; 0 uses
  %51 = extractelement <28 x i1> %6, i64 5
  %52 = select i1 %51, i32 48, i32 49
  %putchar7.i13.16 = tail call i32 @putchar(i32 %52) ; 0 uses
  %53 = extractelement <28 x i1> %6, i64 4
  %54 = select i1 %53, i32 48, i32 49
  %putchar7.i13.17 = tail call i32 @putchar(i32 %54) ; 0 uses
  %55 = extractelement <28 x i1> %6, i64 3
  %56 = select i1 %55, i32 48, i32 49
  %putchar7.i13.18 = tail call i32 @putchar(i32 %56) ; 0 uses
  %57 = extractelement <28 x i1> %6, i64 2
  %58 = select i1 %57, i32 48, i32 49
  %putchar7.i13.19 = tail call i32 @putchar(i32 %58) ; 0 uses
  %59 = extractelement <28 x i1> %6, i64 1
  %60 = select i1 %59, i32 48, i32 49
  %putchar7.i13.20 = tail call i32 @putchar(i32 %60) ; 0 uses
  %61 = extractelement <28 x i1> %6, i64 0
  %62 = select i1 %61, i32 48, i32 49
  %putchar7.i13.21 = tail call i32 @putchar(i32 %62) ; 0 uses
  %i.e = and i32 %i.a, 1
  %i.f = or disjoint i32 %i.e, 48
  %putchar7.i13.22 = tail call i32 @putchar(i32 %i.f) ; 0 uses
  %putchar.i15 = tail call i32 @putchar(i32 32)   ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_Z11testconverti(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.e = fcmp oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %_Z3f2hf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = bitcast float %i.d to i32                ; 3 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.f, 8384512
  %i.l = add nuw nsw i32 %i.k, 4096
  %i.m = lshr i32 %i.l, 13
  %i.n = trunc nuw nsw i32 %i.m to i16
  %i.o = add i16 %i.j, %i.n
  br label %_Z3f2hf.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.f)
  br label %_Z3f2hf.exit

_Z3f2hf.exit:                                     ; preds = %bb.a, %bb.c, %bb.d
  %.1.i.i = phi i16 [ 0, %bb.a ], [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.q = zext i16 %.1.i.i to i32                  ; 2 uses
  %.not = icmp eq i32 %0, %i.q
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_Z3f2hf.exit
  %i.r = fpext float %i.d to double
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, double noundef %i.r, i32 noundef %i.q) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_Z3f2hf.exit, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %_Z3f2hf.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z14testconvertallv() local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_Z11testconverti.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_Z11testconverti.exit ] ; 4 uses
  %.01017 = phi i32 [ 0, %bb.a ], [ %i.t, %_Z11testconverti.exit ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %indvars.iv
  %i.b = load float, ptr %i.a, align 4, !tbaa !11 ; 3 uses
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.c, label %_Z3f2hf.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = bitcast float %i.b to i32                ; 3 uses
  %i.e = lshr i32 %i.d, 23
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !13   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.d, 8384512
  %i.j = add nuw nsw i32 %i.i, 4096
  %i.k = lshr i32 %i.j, 13
  %i.l = trunc nuw nsw i32 %i.k to i16
  %i.m = add i16 %i.h, %i.l
  br label %_Z3f2hf.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.d)
  br label %_Z3f2hf.exit.i

_Z3f2hf.exit.i:                                   ; preds = %bb.e, %bb.d, %bb.b
  %.1.i.i.i = phi i16 [ 0, %bb.b ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = zext i16 %.1.i.i.i to i64
  %.not.i = icmp eq i64 %indvars.iv, %i.o
  br i1 %.not.i, label %_Z11testconverti.exit, label %bb.f

bb.f:                                             ; preds = %_Z3f2hf.exit.i
  %i.p = zext i16 %.1.i.i.i to i32
  %i.q = fpext float %i.b to double
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.r, double noundef %i.q, i32 noundef %i.p) ; 0 uses
  br label %_Z11testconverti.exit

_Z11testconverti.exit:                            ; preds = %_Z3f2hf.exit.i, %bb.f
  %.0.i = phi i32 [ 1, %bb.f ], [ 0, %_Z3f2hf.exit.i ]
  %i.t = add nuw nsw i32 %.0.i, %.01017           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31744
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !18

bb.g:                                             ; preds = %_Z11testconverti.exit16
  ret i32 %i.an

.preheader:                                       ; preds = %_Z11testconverti.exit, %_Z11testconverti.exit16
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %_Z11testconverti.exit16 ], [ 32769, %_Z11testconverti.exit ] ; 4 uses
  %.119 = phi i32 [ %i.an, %_Z11testconverti.exit16 ], [ %i.t, %_Z11testconverti.exit ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %indvars.iv23
  %i.v = load float, ptr %i.u, align 4, !tbaa !11 ; 3 uses
  %i.w = fcmp oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %_Z3f2hf.exit.i12, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.x = bitcast float %i.v to i32                ; 3 uses
  %i.y = lshr i32 %i.x, 23
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i11 = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i.i11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = and i32 %i.x, 8384512
  %i.ad = add nuw nsw i32 %i.ac, 4096
  %i.ae = lshr i32 %i.ad, 13
  %i.af = trunc nuw nsw i32 %i.ae to i16
  %i.ag = add i16 %i.ab, %i.af
  br label %_Z3f2hf.exit.i12

bb.j:                                             ; preds = %bb.h
  %i.ah = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.x)
  br label %_Z3f2hf.exit.i12

_Z3f2hf.exit.i12:                                 ; preds = %bb.j, %bb.i, %.preheader
  %.1.i.i.i13 = phi i16 [ 0, %.preheader ], [ %i.ag, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.ai = zext i16 %.1.i.i.i13 to i64
  %.not.i14 = icmp eq i64 %indvars.iv23, %i.ai
  br i1 %.not.i14, label %_Z11testconverti.exit16, label %bb.k

bb.k:                                             ; preds = %_Z3f2hf.exit.i12
  %i.aj = zext i16 %.1.i.i.i13 to i32
  %i.ak = fpext float %i.v to double
  %i.al = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.al, double noundef %i.ak, i32 noundef %i.aj) ; 0 uses
  br label %_Z11testconverti.exit16

_Z11testconverti.exit16:                          ; preds = %_Z3f2hf.exit.i12, %bb.k
  %.0.i15 = phi i32 [ 1, %bb.k ], [ 0, %_Z3f2hf.exit.i12 ]
  %i.an = add nuw nsw i32 %.0.i15, %.119          ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 64512
  br i1 %exitcond26.not, label %bb.g, label %.preheader, !llvm.loop !19
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_Z9testroundf(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp oeq float %0, 0.000000e+00
  br i1 %i.a, label %_Z3f2hf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast float %0 to i32                  ; 3 uses
  %i.c = lshr i32 %i.b, 23
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.b, 8384512
  %i.h = add nuw nsw i32 %i.g, 4096
  %i.i = lshr i32 %i.h, 13
  %i.j = trunc nuw nsw i32 %i.i to i16
  %i.k = add i16 %i.f, %i.j
  br label %_Z3f2hf.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.b)
  br label %_Z3f2hf.exit

_Z3f2hf.exit:                                     ; preds = %bb.a, %bb.c, %bb.d
  %.1.i.i = phi i16 [ 0, %bb.a ], [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %i.m = zext i16 %.1.i.i to i32                  ; 3 uses
  %i.n = zext i16 %.1.i.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !11 ; 2 uses
  %i.q = fsub float %i.p, %0
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.s = add nsw i32 %i.m, -1                     ; 2 uses
  %i.t = and i32 %i.s, 65535
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.u
end_hunk_0
