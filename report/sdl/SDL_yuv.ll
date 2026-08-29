Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RGB2YUVFactors = type { i32, [3 x float], [3 x float], [3 x float] }

@.str = private unnamed_addr constant [30 x i8] c"width * height would overflow\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"width + 1 would overflow\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"height + 1 would overflow\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Y + U would overflow\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Y + U + V would overflow\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"width * 4 would overflow\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"plane * 4 would overflow\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"That operation is not supported\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unsupported YUV conversion\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"SDL_ConvertPixels_YUV_to_YUV: colorspace conversion not supported\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"SDL_ConvertPixels_YUV_to_YUV: Unsupported YUV conversion: %s -> %s\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"GetYUVPlanes(): Unsupported YUV format: %s\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"GetYUVPlanes[2]: Unsupported YUV format: %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Unsupported YUV colorspace\00", align 1
@RGB2YUVFactorTables = internal unnamed_addr constant [5 x %struct.RGB2YUVFactors] [%struct.RGB2YUVFactors { i32 0, [3 x float] [float 2.990000e-01, float 5.870000e-01, float 1.140000e-01], [3 x float] [float -1.687000e-01, float -3.313000e-01, float 5.000000e-01], [3 x float] [float 5.000000e-01, float -4.187000e-01, float f0xBDA6809D] }, %struct.RGB2YUVFactors { i32 16, [3 x float] [float 2.568000e-01, float 5.041000e-01, float 9.790000e-02], [3 x float] [float -1.482000e-01, float -2.910000e-01, float 4.392000e-01], [3 x float] [float 4.392000e-01, float -3.678000e-01, float -7.140000e-02] }, %struct.RGB2YUVFactors { i32 0, [3 x float] [float 2.126000e-01, float 7.152000e-01, float 7.220000e-02], [3 x float] [float -1.141000e-01, float -3.839000e-01, float 4.980000e-01], [3 x float] [float 4.980000e-01, float -4.524000e-01, float -4.570000e-02] }, %struct.RGB2YUVFactors { i32 16, [3 x float] [float 1.826000e-01, float 6.142000e-01, float 6.200000e-02], [3 x float] [float -1.006000e-01, float -3.386000e-01, float 4.392000e-01], [3 x float] [float 4.392000e-01, float -3.989000e-01, float -4.030000e-02] }, %struct.RGB2YUVFactors { i32 0, [3 x float] [float 2.627000e-01, float f0x3F2D9168, float 5.930000e-02], [3 x float] [float -1.395000e-01, float -3.600000e-01, float 4.995000e-01], [3 x float] [float 4.995000e-01, float -4.593000e-01, float -4.020000e-02] }], align 16
@.str.14 = private unnamed_addr constant [53 x i8] c"Destination pitch is too small, expected at least %d\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Unsupported YUV destination format: %s\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"SDL_ConvertPixels_YUV_to_YUV_Copy: Unsupported YUV format: %s\00", align 1
@.str.17 = private unnamed_addr constant [79 x i8] c"SDL_ConvertPixels_Planar2x2_to_Planar2x2: Unsupported YUV conversion: %s -> %s\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"SDL_ConvertPixels_Packed4_to_Packed4: Unsupported YUV conversion: %s -> %s\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Can't change YUV plane types in-place\00", align 1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_CalculateYUVSize(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = sext i32 %1 to i64                         ; 3 uses
  switch i32 %0, label %IsPlanar2x2Format.exit [
    i32 1448433993, label %bb.b
    i32 842094169, label %bb.b
    i32 842094158, label %bb.b
    i32 825382478, label %bb.b
    i32 808530000, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 range(i64 -2147483648, -9223372036854775808) %i.a) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #6
  br label %.thread87

bb.d:                                             ; preds = %bb.b
  %6 = extractvalue { i64, i1 } %i.b, 0
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 1) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #6
  br label %.thread87

bb.f:                                             ; preds = %bb.d
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #6
  br label %.thread87

bb.h:                                             ; preds = %bb.f
  %11 = extractvalue { i64, i1 } %9, 0
  %12 = extractvalue { i64, i1 } %7, 0
  %i.g = lshr i64 %12, 1
  %i.h = lshr i64 %11, 1
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 range(i64 -2147483648, -9223372036854775808) %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #6
  br label %.thread87

bb.j:                                             ; preds = %bb.h
  %13 = extractvalue { i64, i1 } %i.i, 0
  %sext110 = shl i64 %6, 32
  %i.l = ashr exact i64 %sext110, 32
  %sext111.a = shl i64 %13, 32
  %i.m = ashr exact i64 %sext111.a, 32            ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.l, i64 range(i64 -2147483648, 2147483648) %i.m)
  br label %bb.n

IsPlanar2x2Format.exit:                           ; preds = %bb.a
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 1) ; 2 uses
  %15 = extractvalue { i64, i1 } %14, 1
  br i1 %15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %IsPlanar2x2Format.exit
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #6
  br label %.thread87

bb.l:                                             ; preds = %IsPlanar2x2Format.exit
  %16 = extractvalue { i64, i1 } %14, 0
  %i.p = lshr i64 %16, 1
  %i.q = sext i32 %2 to i64
  %i.r = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 range(i64 -2147483648, -9223372036854775808) %i.q) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %17 = extractvalue { i64, i1 } %i.r, 0
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #6
  br label %.thread87

bb.n:                                             ; preds = %bb.l, %bb.j
  %.148 = phi { i64, i1 } [ %i.n, %bb.j ], [ zeroinitializer, %bb.l ] ; 4 uses
  %.146 = phi i64 [ %i.m, %bb.j ], [ 0, %bb.l ]   ; 2 uses
  %.144 = phi i64 [ 0, %bb.j ], [ %17, %bb.l ]    ; 2 uses
  switch i32 %0, label %bb.al [
    i32 842094169, label %bb.o
    i32 1448433993, label %bb.o
    i32 844715353, label %bb.w
    i32 1498831189, label %bb.w
    i32 1431918169, label %bb.w
    i32 842094158, label %bb.ad
    i32 825382478, label %bb.ad
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %.not67 = icmp eq ptr %4, null
  br i1 %.not67, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = sext i32 %1 to i64
  store i64 %i.u, ptr %4, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not68 = icmp eq ptr %3, null
  br i1 %.not68, label %.thread87, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = extractvalue { i64, i1 } %.148, 1
  br i1 %i.v, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #6
  br label %.thread87

bb.t:                                             ; preds = %bb.r
  %i.x = extractvalue { i64, i1 } %.148, 0
  %i.y = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.x, i64 range(i64 -2147483648, 2147483648) %.146) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aa = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #6
  br label %.thread87

bb.v:                                             ; preds = %bb.t
  %18 = extractvalue { i64, i1 } %i.y, 0
  %sext69 = shl i64 %18, 32
  %i.ab = ashr exact i64 %sext69, 32
  store i64 %i.ab, ptr %3, align 8
  br label %.thread87

bb.w:                                             ; preds = %bb.n, %bb.n, %bb.n
  %.not63 = icmp eq ptr %4, null
  br i1 %.not63, label %bb.aa, label %19

19:                                               ; preds = %bb.w
  %20 = sext i32 %1 to i64
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 1) ; 2 uses
  %22 = extractvalue { i64, i1 } %21, 1
  br i1 %22, label %23, label %bb.x

23:                                               ; preds = %19
  %24 = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #6
  br label %.thread87

bb.x:                                             ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0           ; 2 uses
  %i.ac = icmp sgt i64 %25, -1
  br i1 %i.ac, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ad = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #6
  br label %.thread87

bb.z:                                             ; preds = %bb.x
  %i.ae = shl nuw nsw i64 %25, 1
  %i.af = and i64 %i.ae, 9223372036854775804
  store i64 %i.af, ptr %4, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.not64 = icmp eq ptr %3, null
  br i1 %.not64, label %.thread87, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %sext65.mask = and i64 %.144, 2147483648
  %i.ag = icmp eq i64 %sext65.mask, 0
  br i1 %i.ag, label %.thread104, label %bb.ac

.thread104:                                       ; preds = %bb.ab
  %sext66 = shl i64 %.144, 34
  %i.ah = ashr exact i64 %sext66, 32
  store i64 %i.ah, ptr %3, align 8
  br label %.thread87

bb.ac:                                            ; preds = %bb.ab
  %i.ai = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6) #6
  br label %.thread87

bb.ad:                                            ; preds = %bb.n, %bb.n
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aj = sext i32 %1 to i64
  store i64 %i.aj, ptr %4, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not62 = icmp eq ptr %3, null
  br i1 %.not62, label %.thread87, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ak = extractvalue { i64, i1 } %.148, 1
  br i1 %i.ak, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #6
  br label %.thread87

bb.ai:                                            ; preds = %bb.ag
  %i.am = extractvalue { i64, i1 } %.148, 0
  %i.an = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.am, i64 range(i64 -2147483648, 2147483648) %.146) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ap = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #6
  br label %.thread87

bb.ak:                                            ; preds = %bb.ai
  %26 = extractvalue { i64, i1 } %i.an, 0
  %sext = shl i64 %26, 32
  %i.aq = ashr exact i64 %sext, 32
  store i64 %i.aq, ptr %3, align 8
  br label %.thread87

bb.al:                                            ; preds = %bb.n
  %i.ar = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #6
  br label %.thread87

.thread87:                                        ; preds = %bb.ah, %bb.aj, %23, %bb.y, %bb.s, %bb.u, %bb.m, %bb.k, %bb.e, %bb.g, %bb.i, %bb.q, %bb.aa, %bb.af, %bb.v, %.thread104, %bb.ak, %bb.ac, %bb.c, %bb.al
  %.9 = phi i1 [ %i.ar, %bb.al ], [ %i.k, %bb.i ], [ %i.o, %bb.k ], [ %i.ai, %bb.ac ], [ %i.aa, %bb.u ], [ %i.ad, %bb.y ], [ true, %bb.q ], [ %i.d, %bb.c ], [ true, %bb.ak ], [ true, %.thread104 ], [ true, %bb.v ], [ true, %bb.af ], [ true, %bb.aa ], [ %i.e, %bb.e ], [ %i.f, %bb.g ], [ %i.t, %bb.m ], [ %i.w, %bb.s ], [ %24, %23 ], [ %i.al, %bb.ah ], [ %i.ap, %bb.aj ]
  ret i1 %.9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ConvertPixels_YUV_to_RGB(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4
  %i.f = call fastcc zeroext i1 @GetYUVPlanes(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %5, i32 noundef %6, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  br i1 %i.f, label %bb.b, label %yuv_rgb_std.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %3, 31
  switch i32 %i.g, label %GetYUVConversionType.exit [
    i32 6, label %bb.c
    i32 5, label %bb.c
    i32 1, label %bb.d
    i32 9, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = and i32 %3, 251658240
  %.not13.i = icmp ne i32 %i.h, 33554432
  %..i = zext i1 %.not13.i to i32
  br label %GetYUVConversionType.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %3, 251658240
  %.not.i = icmp eq i32 %i.i, 33554432
  %.15.i = select i1 %.not.i, i32 2, i32 3
  br label %GetYUVConversionType.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.j = and i32 %3, 251658240
  %i.k = icmp eq i32 %i.j, 33554432
  br i1 %i.k, label %GetYUVConversionType.exit.thread, label %GetYUVConversionType.exit

GetYUVConversionType.exit:                        ; preds = %bb.b, %bb.e
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.13) #6
  br i1 %i.l, label %GetYUVConversionType.exit.thread, label %yuv_rgb_std.exit.thread

GetYUVConversionType.exit.thread:                 ; preds = %bb.e, %bb.d, %bb.c, %GetYUVConversionType.exit
  %.096 = phi i32 [ 1, %GetYUVConversionType.exit ], [ 4, %bb.e ], [ %.15.i, %bb.d ], [ %..i, %bb.c ] ; 19 uses
  %i.m = load ptr, ptr %i.a, align 8              ; 19 uses
  %i.n = load ptr, ptr %i.b, align 8              ; 19 uses
  %i.o = load ptr, ptr %i.c, align 8              ; 19 uses
  %i.p = load i32, ptr %i.d, align 4              ; 19 uses
  %i.q = load i32, ptr %i.e, align 4              ; 19 uses
  switch i32 %2, label %bb.ab [
    i32 1448433993, label %bb.f
    i32 842094169, label %bb.f
    i32 1498831189, label %bb.n
    i32 1431918169, label %bb.n
    i32 844715353, label %bb.n
    i32 842094158, label %bb.u
    i32 825382478, label %bb.u
  ]

bb.f:                                             ; preds = %GetYUVConversionType.exit.thread, %GetYUVConversionType.exit.thread
  switch i32 %7, label %bb.m [
    i32 353701890, label %bb.g
    i32 386930691, label %bb.h
    i32 371595268, label %bb.i
    i32 373694468, label %bb.i
    i32 375789572, label %bb.j
    i32 377888772, label %bb.j
    i32 370546692, label %bb.k
    i32 372645892, label %bb.k
    i32 374740996, label %bb.l
    i32 376840196, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @yuv420_rgb565_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @yuv420_rgb24_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.i:                                             ; preds = %bb.f, %bb.f
  tail call void @yuv420_rgba_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.j:                                             ; preds = %bb.f, %bb.f
  tail call void @yuv420_bgra_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.k:                                             ; preds = %bb.f, %bb.f
  tail call void @yuv420_argb_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.l:                                             ; preds = %bb.f, %bb.f
  tail call void @yuv420_abgr_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.m:                                             ; preds = %bb.f
  switch i32 %2, label %yuv_rgb_std.exit.thread99 [
    i32 844715353, label %bb.n
    i32 1431918169, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %GetYUVConversionType.exit.thread, %GetYUVConversionType.exit.thread, %GetYUVConversionType.exit.thread
  switch i32 %7, label %bb.ah [
    i32 353701890, label %bb.o
    i32 386930691, label %bb.p
    i32 371595268, label %bb.q
    i32 373694468, label %bb.q
    i32 375789572, label %bb.r
    i32 377888772, label %bb.r
    i32 370546692, label %bb.s
    i32 372645892, label %bb.s
    i32 374740996, label %bb.t
    i32 376840196, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n
  tail call void @yuv422_rgb565_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.p:                                             ; preds = %bb.n
  tail call void @yuv422_rgb24_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.q:                                             ; preds = %bb.n, %bb.n
  tail call void @yuv422_rgba_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.r:                                             ; preds = %bb.n, %bb.n
  tail call void @yuv422_bgra_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.s:                                             ; preds = %bb.n, %bb.n
  tail call void @yuv422_argb_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.t:                                             ; preds = %bb.n, %bb.n
  tail call void @yuv422_abgr_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.u:                                             ; preds = %GetYUVConversionType.exit.thread, %GetYUVConversionType.exit.thread
  switch i32 %7, label %bb.ah [
    i32 353701890, label %bb.v
    i32 386930691, label %bb.w
    i32 371595268, label %bb.x
    i32 373694468, label %bb.x
    i32 375789572, label %bb.y
    i32 377888772, label %bb.y
    i32 370546692, label %bb.z
    i32 372645892, label %bb.z
    i32 374740996, label %bb.aa
    i32 376840196, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  tail call void @yuvnv12_rgb565_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.w:                                             ; preds = %bb.u
  tail call void @yuvnv12_rgb24_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.x:                                             ; preds = %bb.u, %bb.u
  tail call void @yuvnv12_rgba_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.y:                                             ; preds = %bb.u, %bb.u
  tail call void @yuvnv12_bgra_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.z:                                             ; preds = %bb.u, %bb.u
  tail call void @yuvnv12_argb_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.aa:                                            ; preds = %bb.u, %bb.u
  tail call void @yuvnv12_abgr_std(i32 noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %10, i32 noundef %11, i32 noundef %.096) #6
  br label %yuv_rgb_std.exit.thread

bb.ab:                                            ; preds = %GetYUVConversionType.exit.thread
end_hunk_0
