Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_camera?download=true
inline.NumInlined: 47
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_GetCameraThreadName:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.2, i32 noundef %i.b) #11 ; 0 uses
  ret ptr %1
}

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_AddCameraFormat(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp sgt i32 %i.b, %i.d
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not29 = icmp eq i32 %i.b, 0
  %i.e = shl nsw i32 %i.b, 1
  %spec.select = select i1 %.not29, i32 16, i32 %i.e ; 2 uses
  %i.f = sext i32 %spec.select to i64
  %i.g = mul nsw i64 %i.f, 24
  %i.h = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre, i64 noundef %i.g) #12 ; 3 uses
  %.not30 = icmp eq ptr %i.h, null
  br i1 %.not30, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b
  store ptr %i.h, ptr %0, align 8
  store i32 %spec.select, ptr %i.a, align 4
  %.pre31 = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.a
  %i.i = phi i32 [ %.pre31, %.thread ], [ %i.d, %bb.a ]
  %i.j = phi ptr [ %i.h, %.thread ], [ %.pre, %bb.a ]
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.k ; 6 uses
  store i32 %1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %2, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %3, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %4, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %5, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 %6, ptr %i.q, align 4
  %i.r = load i32, ptr %i.c, align 8
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define hidden void @UnrefPhysicalCamera(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.a, i32 noundef -1) #11
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.d) #11
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.e, ptr noundef %i.i) #11
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 128), i32 noundef -1) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.l) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare i32 @SDL_AddAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_LockRWLockForWriting_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_RemoveFromHashTable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_UnlockRWLock_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @RefPhysicalCamera(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.a, i32 noundef 1) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_AddCamera(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.a) #11
  %i.b = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 132)) #11
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.c) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(472) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 472) #13 ; 20 uses
  %.not72 = icmp eq ptr %i.d, null
  br i1 %.not72, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %0) #11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8
  %.not73 = icmp eq ptr %i.e, null
  br i1 %.not73, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #11
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %1, ptr %i.g, align 8
  %i.h = tail call ptr @SDL_CreateMutex_REAL() #11 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %.not74 = icmp eq ptr %i.h, null
  br i1 %.not74, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.i) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #11
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.j = add nsw i32 %2, 1
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.k, i64 noundef 24) #13 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8
  %.not75 = icmp eq ptr %i.l, null
  br i1 %.not75, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.d, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.n) #11
  %i.o = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.o) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #11
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.p = icmp sgt i32 %2, 0
  br i1 %i.p, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.q = zext nneg i32 %2 to i64                  ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %3, i64 %i.r, i1 false)
  tail call void @SDL_qsort_REAL(ptr noundef nonnull %i.l, i64 noundef %i.q, i64 noundef 24, ptr noundef nonnull @CameraSpecCmp) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.m
  %.082 = phi i32 [ 0, %bb.j ], [ %i.ac, %bb.m ]  ; 4 uses
  %.06581 = phi i32 [ %2, %bb.j ], [ %.166, %bb.m ] ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = sext i32 %.082 to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24       ; 2 uses
  %i.w = tail call i32 @SDL_memcmp_REAL(ptr noundef %i.u, ptr noundef %i.v, i64 noundef 24) #11
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = sub nsw i32 %.06581, %.082
  %5 = zext nneg i32 %i.y to i64
  %i.z = mul nuw nsw i64 %5, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.v, i64 %i.z, i1 false)
  %i.aa = add nsw i32 %.082, -1
  %i.ab = add nsw i32 %.06581, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.166 = phi i32 [ %i.ab, %bb.l ], [ %.06581, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %i.aa, %bb.l ], [ %.082, %bb.k ]
  %i.ac = add nsw i32 %.1, 1                      ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %.166
  br i1 %i.ad, label %bb.k, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %bb.m, %bb.i
  %.2 = phi i32 [ %2, %bb.i ], [ %.166, %bb.m ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %4, ptr %i.af, align 8
  %i.ag = tail call i32 @SDL_GetNextObjectID() #11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.aj = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.ai, i32 noundef 0) #11 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 444
  %i.al = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.ak, i32 noundef 0) #11 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.an = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.am, i32 noundef 1) #11 ; 0 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.ao) #11
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  %i.aq = load i32, ptr %i.ah, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.ap, ptr noundef %i.as, ptr noundef nonnull %i.d, i1 noundef zeroext false) #11
  br i1 %i.at, label %bb.n, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.au = load ptr, ptr %i.d, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.au) #11
  %i.av = load ptr, ptr %i.m, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.av) #11
  %i.aw = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.aw) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #11
  br label %bb.p

bb.n:                                             ; preds = %.loopexit
  %i.ax = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 128), i32 noundef 1) #11 ; 0 uses
  %i.ay = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #11 ; 6 uses
  %.not77 = icmp eq ptr %i.ay, null
  br i1 %.not77, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 5120, ptr %i.ay, align 8
  %i.az = load i32, ptr %i.ah, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr null, ptr %i.bb, align 8
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ay, ptr %i.bd, align 8
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.n, %bb.o
  %.06280 = phi ptr [ null, %.thread ], [ %i.d, %bb.n ], [ %i.d, %bb.o ]
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.be) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.p, %bb.b, %bb.a
  %.164 = phi ptr [ null, %bb.a ], [ %.06280, %bb.p ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.164
}

declare void @SDL_LockRWLockForReading_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_GetAtomicInt_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #6

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_CreateMutex_REAL() local_unnamed_addr #2

declare void @SDL_DestroyMutex_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @SDL_qsort_REAL(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @CameraSpecCmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = load i32, ptr %1, align 4                ; 7 uses
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %.mask = and i32 %i.a, -268435456
  %.not61 = icmp eq i32 %.mask, 268435456         ; 3 uses
  %or.cond83 = or i1 %.not, %.not61
  br i1 %or.cond83, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not62 = icmp eq i32 %i.b, 0
  %.mask64 = and i32 %i.b, -268435456
  %.not63 = icmp eq i32 %.mask64, 268435456
  %or.cond84 = or i1 %.not62, %.not63
  br i1 %or.cond84, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ne i32 %i.b, 0
  %or.cond = select i1 %.not61, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.old1.not = icmp eq i32 %i.b, 0
  br i1 %.old1.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.mask67 = and i32 %i.b, -268435456
  %.not66 = icmp eq i32 %.mask67, 268435456
  br i1 %.not66, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.d = lshr i32 %i.a, 8
  %i.e = and i32 %i.d, 255
  %i.f = select i1 %.not61, i32 %i.e, i32 0       ; 2 uses
  %.mask72 = and i32 %i.b, -268435456
  %.not71 = icmp eq i32 %.mask72, 268435456
  %i.g = lshr i32 %i.b, 8
  %i.h = and i32 %i.g, 255
  %i.i = select i1 %.not71, i32 %i.h, i32 0       ; 2 uses
  %i.j = icmp samesign ugt i32 %i.f, %i.i
  br i1 %i.j, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = icmp samesign ugt i32 %i.i, %i.f
  br i1 %i.k, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp sgt i32 %i.m, %i.o
  br i1 %i.p, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = icmp sgt i32 %i.o, %i.m
  br i1 %i.q, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = icmp sgt i32 %i.u, %i.s
  br i1 %i.w, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %.not77 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not80 = icmp eq i32 %i.aa, 0                  ; 2 uses
  br i1 %.not77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not80, label %bb.u, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %.not80, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ab = phi i32 [ %i.aa, %bb.n ], [ 0, %bb.o ]
  %i.ac = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.ab, i64 1
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ak = insertelement <2 x i32> %i.aj, i32 %i.ai, i64 1
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>
  %i.am = fdiv <2 x float> %i.ae, %i.al           ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0 ; 2 uses
end_hunk_0
