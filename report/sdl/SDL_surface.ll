Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_surface?download=true
inline.NumInlined: 117
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
@.str.33 = private unnamed_addr constant [30 x i8] c"aligning pitch would overflow\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"height * pitch would overflow\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Empty destination palette\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"sdl2-compat.surface2\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"Unexpected internal pixel format\00", align 1
@switch.table.SDL_BlitSurfaceScaled_REAL = private unnamed_addr constant [3 x i8] c"\00\01\00", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @SDL_SurfaceValid(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ false, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @SDL_UpdateSurfaceLockFlag(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = and i32 %i.a, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 4
  %.not4 = icmp eq i32 %i.e, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = or i32 %i.a, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = and i32 %i.a, -7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_CalculateSurfaceSize(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not23 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not24 = icmp eq i32 %0, 0
  br i1 %.not24, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %i.b, align 8
  br label %SDL_CalculateRGBSize.exit26.thread

bb.f:                                             ; preds = %bb.e
  %.mask = and i32 %0, -268435456
  %.not25 = icmp eq i32 %.mask, 268435456
  br i1 %.not25, label %.split18, label %bb.m

.split18:                                         ; preds = %bb.f
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = and i32 %0, 63488
  %.not28 = icmp eq i32 %i.e, 0
  br i1 %.not28, label %.critedge.i, label %switch.edge.i

switch.edge.i:                                    ; preds = %.split18
  %i.f = and i32 %0, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.c, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0         ; 2 uses
  store i64 %i.j, ptr %i.a, align 8
  br i1 %i.i, label %SDL_CalculateRGBSize.exit26, label %bb.i

.critedge.i:                                      ; preds = %.split18
  %i.k = lshr i32 %0, 8
  %i.l = and i32 %i.k, 7
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.c, i64 %i.m) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  store i64 %i.p, ptr %i.a, align 8
  br i1 %i.o, label %SDL_CalculateRGBSize.exit26, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  %i.q = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.p, i64 7) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0         ; 2 uses
  store i64 %i.s, ptr %i.a, align 8
  br i1 %i.r, label %SDL_CalculateRGBSize.exit26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  store i64 %i.t, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.edge.i
  %i.u = phi i64 [ %i.j, %switch.edge.i ], [ %i.t, %bb.h ] ; 2 uses
  br i1 %5, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.u, i64 3) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = extractvalue { i64, i1 } %i.v, 0         ; 2 uses
  store i64 %i.x, ptr %i.a, align 8
  br i1 %i.w, label %SDL_CalculateRGBSize.exit26, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = and i64 %i.x, -4                         ; 2 uses
  store i64 %i.y, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.z = phi i64 [ %i.y, %bb.k ], [ %i.u, %bb.i ]
  %i.aa = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.d, i64 %i.z) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  store i64 %i.ac, ptr %i.b, align 8
  br i1 %i.ab, label %SDL_CalculateRGBSize.exit26, label %SDL_CalculateRGBSize.exit26.thread

bb.m:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %0, 1196444237
  br i1 %i.ad, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = call zeroext i1 @SDL_CalculateYUVSize(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10
  br i1 %i.ae, label %SDL_CalculateRGBSize.exit26.thread, label %bb.r

SDL_CalculateRGBSize.exit26:                      ; preds = %switch.edge.i, %.critedge.i, %bb.g, %bb.j, %bb.l
  %.str.34.sink.i = phi ptr [ @.str.33, %bb.j ], [ @.str.33, %bb.g ], [ @.str.32, %.critedge.i ], [ @.str.32, %switch.edge.i ], [ @.str.34, %bb.l ]
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.34.sink.i) #10
  br i1 %i.af, label %SDL_CalculateRGBSize.exit26.thread, label %bb.r

SDL_CalculateRGBSize.exit26.thread:               ; preds = %bb.l, %.split, %SDL_CalculateRGBSize.exit26, %bb.n
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %SDL_CalculateRGBSize.exit26.thread
  %i.ag = load i64, ptr %i.b, align 8
  store i64 %i.ag, ptr %3, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %SDL_CalculateRGBSize.exit26.thread
  br i1 %.not23, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.a, align 8
  store i64 %i.ah, ptr %4, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %SDL_CalculateRGBSize.exit26, %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ false, %SDL_CalculateRGBSize.exit26 ], [ true, %bb.m ], [ true, %bb.q ], [ true, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare zeroext i1 @SDL_CalculateYUVSize(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_CreateSurface_REAL(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %3 = call zeroext i1 @SDL_CalculateSurfaceSize(i32 noundef %2, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br i1 %3, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %4 = call noalias ptr @SDL_malloc_REAL(i64 noundef 296) #10 ; 13 uses
  %.not.a = icmp eq ptr %4, null
  br i1 %.not.a, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = load i64, ptr %i.a, align 8
  %6 = trunc i64 %5 to i32
  %7 = call fastcc zeroext i1 @SDL_InitializeSurface(ptr noundef %4, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %6, i1 noundef zeroext false)
  br i1 %7, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp ne i32 %2, 1196444237
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.o = load i32, ptr %4, align 8
  %i.p = and i32 %i.o, -2
  store i32 %i.p, ptr %4, align 8
  %i.q = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.4, i1 noundef zeroext false) #10
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %8 = load i64, ptr %i.b, align 8                ; 2 uses
  %i.r = call noalias ptr @SDL_malloc_REAL(i64 noundef %8) #10
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.s = load i32, ptr %4, align 8
  %i.t = or i32 %i.s, 8
  store i32 %i.t, ptr %4, align 8
  %i.u = call i64 @SDL_GetSIMDAlignment_REAL() #10
  %9 = load i64, ptr %i.b, align 8                ; 2 uses
  %i.v = call noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %i.u, i64 noundef %9) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %10 = phi i64 [ %8, %bb.m ], [ %9, %bb.n ]
  %.sink = phi ptr [ %i.r, %bb.m ], [ %i.v, %bb.n ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sink, ptr %i.w, align 8
  %.not29 = icmp eq ptr %.sink, null
  br i1 %.not29, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %4)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sink, i8 0, i64 %10, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.k, %bb.q, %bb.i, %bb.h, %bb.g, %bb.p, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.p ], [ null, %bb.h ], [ null, %bb.g ], [ %4, %bb.q ], [ %4, %bb.k ], [ %4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #4

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_InitializeSurface(ptr noundef nonnull initializes((0, 296)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i1 noundef zeroext %8) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.a, i8 0, i64 280, i1 false)
  store i32 1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %6, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %7, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr @SDL_surface_magic, ptr %i.g, align 8
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call ptr @SDL_GetPixelFormatDetails_REAL(i32 noundef %3) #10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.i, ptr %i.j, align 8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_DestroySurface_REAL(ptr noundef nonnull %0)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.n = icmp eq i32 %4, 0
  store i32 -1, ptr %i.m, align 8
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @SDL_GetDefaultColorspaceForFormat(i32 noundef %3) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ %i.o, %bb.f ], [ %4, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink, ptr %i.p, align 8
  %.not66 = icmp eq i32 %5, 0
  br i1 %.not66, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = icmp eq ptr %i.q, @SDL_surface_magic
  br i1 %i.r, label %bb.i, label %SDL_SurfaceValid.exit.thread.i

SDL_SurfaceValid.exit.thread.i:                   ; preds = %bb.h
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %SDL_GetSurfaceProperties_REAL.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.j, label %SDL_GetSurfaceProperties_REAL.exit

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i32 @SDL_CreateProperties_REAL() #10 ; 2 uses
  store i32 %i.v, ptr %i.t, align 4
  br label %SDL_GetSurfaceProperties_REAL.exit

SDL_GetSurfaceProperties_REAL.exit:               ; preds = %SDL_SurfaceValid.exit.thread.i, %bb.i, %bb.j
  %.0.i = phi i32 [ 0, %SDL_SurfaceValid.exit.thread.i ], [ %i.v, %bb.j ], [ %i.u, %bb.i ]
  %i.w = tail call zeroext i1 @SDL_CopyProperties_REAL(i32 noundef %5, i32 noundef %.0.i) #10
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %SDL_GetSurfaceProperties_REAL.exit
  tail call void @SDL_DestroySurface_REAL(ptr noundef nonnull %0)
  br label %bb.t

bb.l:                                             ; preds = %SDL_GetSurfaceProperties_REAL.exit, %bb.g
  %i.x = load i32, ptr %i.b, align 4              ; 5 uses
  %.not67 = icmp eq i32 %i.x, 0
  %.mask = and i32 %i.x, -268435456
  %.not68 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not67, %.not68
  br i1 %or.cond, label %bb.m, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.m:                                             ; preds = %bb.l
  %i.y = lshr i32 %i.x, 24
  %i.z = and i32 %i.y, 15                         ; 2 uses
  %.off = add nsw i32 %i.z, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = lshr i32 %i.x, 20
  %i.ab = and i32 %i.aa, 15
  switch i32 %i.ab, label %SDL_SetSurfaceBlendMode_REAL.exit [
    i32 3, label %bb.q
    i32 4, label %bb.q
    i32 7, label %bb.q
    i32 8, label %bb.q
  ]

bb.o:                                             ; preds = %bb.m
  %.off73 = add nsw i32 %i.z, -7
  %switch74 = icmp ult i32 %.off73, 5
  br i1 %switch74, label %bb.p, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.p:                                             ; preds = %bb.o
  %i.ac = lshr i32 %i.x, 20
  %i.ad = and i32 %i.ac, 15
  switch i32 %i.ad, label %SDL_SetSurfaceBlendMode_REAL.exit [
    i32 3, label %bb.q
    i32 2, label %bb.q
    i32 6, label %bb.q
    i32 5, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.n, %bb.n, %bb.n, %bb.n
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ae, @SDL_surface_magic
  br i1 %i.af, label %bb.r, label %SDL_SurfaceValid.exit.thread.i75

SDL_SurfaceValid.exit.thread.i75:                 ; preds = %bb.q
  %i.ag = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %SDL_SetSurfaceBlendMode_REAL.exit

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i32 %i.ai, -1009
  %i.ak = or disjoint i32 %i.aj, 16               ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 8
  %.not.i77 = icmp eq i32 %i.ak, %i.ai
  br i1 %.not.i77, label %SDL_SetSurfaceBlendMode_REAL.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @SDL_InvalidateMap(ptr noundef nonnull %i.al) #10
  br label %SDL_SetSurfaceBlendMode_REAL.exit

SDL_SetSurfaceBlendMode_REAL.exit:                ; preds = %bb.n, %bb.s, %bb.r, %SDL_SurfaceValid.exit.thread.i75, %bb.l, %bb.o, %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.am, align 8
  br label %bb.t

bb.t:                                             ; preds = %SDL_SetSurfaceBlendMode_REAL.exit, %bb.k, %bb.d
  %.0 = phi i1 [ true, %SDL_SetSurfaceBlendMode_REAL.exit ], [ false, %bb.k ], [ false, %bb.d ]
  ret i1 %.0
}

declare zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noalias ptr @SDL_aligned_alloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @SDL_GetSIMDAlignment_REAL() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @SDL_DestroySurface_REAL(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit

SDL_SurfaceValid.exit:                            ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br i1 %i.c, label %bb.b, label %SDL_SurfaceValid.exit.thread

bb.b:                                             ; preds = %SDL_SurfaceValid.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %SDL_SurfaceValid.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 8
  %i.j = icmp sgt i32 %i.h, 1
  br i1 %i.j, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit27

SDL_SurfaceValid.exit27:                          ; preds = %bb.c
end_hunk_0
