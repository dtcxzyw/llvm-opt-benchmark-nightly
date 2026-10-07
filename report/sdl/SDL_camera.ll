Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_camera?download=true
inline.NumInlined: 47
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_AddCamera:bb.a
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
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.v, i64 %i.aa, i1 false)
  %i.ab = add nsw i32 %.082, -1
  %i.ac = add nsw i32 %.06581, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.166 = phi i32 [ %i.ac, %bb.l ], [ %.06581, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %i.ab, %bb.l ], [ %.082, %bb.k ]
  %i.ad = add nsw i32 %.1, 1                      ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %.166
  br i1 %i.ae, label %bb.k, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.m, %bb.i
  %.2 = phi i32 [ %2, %bb.i ], [ %.166, %bb.m ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %4, ptr %i.ag, align 8
  %i.ah = tail call i32 @SDL_GetNextObjectID() #11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 3 uses
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.ak = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.aj, i32 noundef 0) #11 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 444
  %i.am = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.al, i32 noundef 0) #11 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ao = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.an, i32 noundef 1) #11 ; 0 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.ap) #11
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  %i.ar = load i32, ptr %i.ai, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = tail call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.aq, ptr noundef %i.at, ptr noundef nonnull %i.d, i1 noundef zeroext false) #11
  br i1 %i.au, label %bb.n, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.av = load ptr, ptr %i.d, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.av) #11
  %i.aw = load ptr, ptr %i.m, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.aw) #11
  %i.ax = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ax) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #11
  br label %bb.p

bb.n:                                             ; preds = %.loopexit
  %i.ay = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 128), i32 noundef 1) #11 ; 0 uses
  %i.az = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #11 ; 6 uses
  %.not77 = icmp eq ptr %i.az, null
  br i1 %.not77, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 5120, ptr %i.az, align 8
  %i.ba = load i32, ptr %i.ai, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr null, ptr %i.bc, align 8
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.az, ptr %i.be, align 8
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.n, %bb.o
  %.06280 = phi ptr [ null, %.thread ], [ %i.d, %bb.n ], [ %i.d, %bb.o ]
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.bf) #11
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
  %i.ab = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.ac = insertelement <2 x i32> %i.ab, i32 %i.aa, i64 1
  %i.ad = sitofp <2 x i32> %i.ac to <2 x float>
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ah, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>
  %i.al = fdiv <2 x float> %i.ad, %i.ak           ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.an = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.ao = fcmp ogt float %i.am, %i.an
  br i1 %i.ao, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = fcmp ogt float %i.an, %i.am
  br i1 %i.ap, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 251658240
  %i.at = icmp eq i32 %i.as, 33554432
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 251658240
  %.not81 = icmp eq i32 %i.aw, 33554432           ; 2 uses
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %.not81, label %.thread89, label %bb.u

bb.t:                                             ; preds = %bb.r
  br i1 %.not81, label %bb.u, label %.thread89

.thread89:                                        ; preds = %bb.s, %bb.t
  br label %bb.u

bb.u:                                             ; preds = %.thread89, %bb.p, %bb.q, %bb.s, %bb.t, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ 1, %bb.f ], [ -1, %bb.g ], [ 1, %bb.h ], [ -1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.k ], [ 1, %bb.o ], [ -1, %bb.n ], [ 1, %bb.l ], [ 0, %.thread89 ], [ -1, %bb.p ], [ 1, %bb.q ], [ -1, %bb.s ], [ 1, %bb.t ]
  ret i32 %.1
}

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare i32 @SDL_GetNextObjectID() local_unnamed_addr #2

declare i32 @SDL_SetAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_InsertIntoHashTable(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_CameraDisconnected(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.SDL_PendingCameraEvent, align 8 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.b, i32 noundef 1) #11 ; 0 uses
  %i.d = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.f = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) #11 ; 2 uses
  br i1 %i.f, label %bb.c, label %UnrefPhysicalCamera.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @ZombieWaitDevice, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @ZombieAcquireFrame, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ZombieReleaseFrame, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #11 ; 8 uses
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 5121, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.o, align 8
  store ptr %i.k, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ]    ; 2 uses
  %i.p = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.b, i32 noundef -1) #11
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %UnrefPhysicalCamera.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.r) #11
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = tail call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.s, ptr noundef %i.w) #11
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 128), i32 noundef -1) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.z) #11
  br label %UnrefPhysicalCamera.exit

UnrefPhysicalCamera.exit:                         ; preds = %bb.h, %bb.e, %bb.b
  %i.aa = phi ptr [ null, %bb.b ], [ %i.k, %bb.e ], [ %i.k, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %1, %bb.b ], [ %.0, %bb.e ], [ %.0, %bb.h ]
  %i.ab = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ab) #11
  %i.ac = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.b, i32 noundef -1) #11
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %ReleaseCamera.exit

bb.i:                                             ; preds = %UnrefPhysicalCamera.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.ae) #11
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = tail call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.af, ptr noundef %i.aj) #11
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 128), i32 noundef -1) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.am) #11
  br label %ReleaseCamera.exit

ReleaseCamera.exit:                               ; preds = %UnrefPhysicalCamera.exit, %bb.k
  %i.an = icmp ne ptr %i.aa, null
  %or.cond = and i1 %i.f, %i.an
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %ReleaseCamera.exit
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.ao) #11
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.aa, ptr %i.aq, align 8
  store ptr %.1, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.ar) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %ReleaseCamera.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

declare zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @ZombieWaitDevice(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load <2 x i32>, ptr %i.c, align 4
  %i.e = sitofp <2 x i32> %i.d to <2 x double>    ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = extractelement <2 x double> %i.e, i64 1
  %i.h = fdiv double %i.g, %i.f
  %i.i = fmul double %i.h, 1.000000e+03
  %i.j = fptoui double %i.i to i32
  tail call void @SDL_Delay_REAL(i32 noundef %i.j) #11
  br label %bb.c

end_hunk_0
