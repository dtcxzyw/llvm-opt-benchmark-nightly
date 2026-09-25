Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audio?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_LockRWLockForReading_REAL
; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @FindAudioDeviceByCallback(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 %i.a(ptr noundef %3, ptr noundef %i.c) #11 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.d, true
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_FindPhysicalAudioDeviceByHandle(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.FindAudioDeviceByCallbackData, align 8 ; 6 uses
  %i.a = load ptr, ptr @current_audio, align 16
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #11 ; 0 uses
  br label %SDL_FindPhysicalAudioDeviceByCallback.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr @TestDeviceHandleCallback, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.e) #11
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.g = call zeroext i1 @SDL_IterateHashTable(ptr noundef %i.f, ptr noundef nonnull @FindAudioDeviceByCallback, ptr noundef nonnull %1) #11 ; 0 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.h) #11
  %i.i = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not3.i = icmp eq ptr %i.i, null
  br i1 %.not3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.13) #11 ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %SDL_FindPhysicalAudioDeviceByCallback.exit

SDL_FindPhysicalAudioDeviceByCallback.exit:       ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.k, %bb.e ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i1 @TestDeviceHandleCallback(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %1
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetAudioDeviceName_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr @current_audio, align 16
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #11 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %0, 2
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.f) #11
  switch i32 %0, label %bb.f [
    i32 -1, label %bb.d
    i32 -2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 168), align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 172), align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %0, %bb.c ]
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 152), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.k = select i1 %i.e, ptr %i.i, ptr %i.j
  %i.l = zext i32 %.0 to i64
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not11 = icmp eq ptr %i.o, null
  br i1 %.not11, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.14) #11 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  br i1 %i.e, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call ptr @SDL_GetPersistentString(ptr noundef %i.t) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call ptr @SDL_GetPersistentString(ptr noundef %i.w) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.08 = phi ptr [ %i.u, %bb.i ], [ %i.x, %bb.j ], [ null, %bb.g ]
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.y) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.1 = phi ptr [ %.08, %bb.k ], [ null, %bb.b ]
  ret ptr %.1
}

declare zeroext i1 @SDL_FindInHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetPersistentString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GetAudioDeviceFormat_REAL(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #11
  br label %.split

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @ObtainPhysicalAudioDeviceDefaultAllowed(i32 noundef %0) ; 4 uses
  %.not16.not = icmp eq ptr %i.b, null
  br i1 %.not16.not, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %.split12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.e = load i32, ptr %i.d, align 4
  store i32 %i.e, ptr %2, align 4
  br label %.split12

.split12:                                         ; preds = %bb.d, %bb.e
  tail call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %i.b)
  br label %.split

.split:                                           ; preds = %bb.c, %.split12, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %.split12 ], [ false, %bb.c ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ObtainPhysicalAudioDeviceDefaultAllowed(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %.not33 = icmp eq i32 %0, -2                    ; 2 uses
  %i.a = icmp ugt i32 %0, -3
  br i1 %i.a, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i32 %0, -1
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.c) #11
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 168), align 8
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 172), align 4
  %spec.select34 = select i1 %.not33, i32 %i.e, i32 %0
  %.12035 = select i1 %i.b, i32 %i.d, i32 %spec.select34 ; 3 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.f) #11
  %i.g = icmp eq i32 %.12035, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %.not33, label %.lr.ph.split.us.split, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.c
  %.12036.us = phi i32 [ %i.n, %bb.c ], [ %.12035, %.lr.ph ] ; 2 uses
  %i.h = tail call fastcc ptr @ObtainPhysicalAudioDevice(i32 noundef %.12036.us) ; 3 uses
  %.not.us = icmp eq ptr %i.h, null
  br i1 %.not.us, label %.thread30, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.i) #11
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 172), align 4
  %i.k = icmp eq i32 %.12036.us, %i.j
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.l) #11
  br i1 %i.k, label %.thread30, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %i.h)
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.m) #11
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 172), align 4 ; 2 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.o) #11
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph.split.us.split

bb.d:                                             ; preds = %bb.a
  %i.q = tail call fastcc ptr @ObtainPhysicalAudioDevice(i32 noundef %0)
  br label %.thread30

._crit_edge:                                      ; preds = %bb.f, %bb.c, %.preheader
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.40) #11 ; 0 uses
  br label %.thread30

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.f
  %.12036.a = phi i32 [ %i.y, %bb.f ], [ %.12035, %.lr.ph ] ; 2 uses
  %i.s = tail call fastcc ptr @ObtainPhysicalAudioDevice(i32 noundef %.12036.a) ; 3 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.thread30, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.t) #11
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 168), align 8
  %i.v = icmp eq i32 %.12036.a, %i.u
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.w) #11
  br i1 %i.v, label %.thread30, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %i.s)
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.x) #11
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 168), align 8 ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.z) #11
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %._crit_edge, label %.lr.ph.split.split

.thread30:                                        ; preds = %bb.e, %.lr.ph.split.split, %.lr.ph.split.us.split, %bb.b, %._crit_edge, %bb.d
  %.4 = phi ptr [ %i.q, %bb.d ], [ null, %._crit_edge ], [ null, %.lr.ph.split.us.split ], [ %i.h, %bb.b ], [ null, %.lr.ph.split.split ], [ %i.s, %bb.e ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ReleaseAudioDevice(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %UnrefPhysicalAudioDevice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.b, i32 noundef -1) #11
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %UnrefPhysicalAudioDevice.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.e) #11
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.f, ptr noundef %i.j) #11
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i8, ptr %i.l, align 4, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 204), ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 200)
  %i.p = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.o, i32 noundef -1) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.q) #11
  tail call fastcc void @DestroyPhysicalAudioDevice(ptr noundef nonnull %0)
  br label %UnrefPhysicalAudioDevice.exit

UnrefPhysicalAudioDevice.exit:                    ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetAudioDeviceChannelMap_REAL(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ObtainPhysicalAudioDeviceDefaultAllowed(i32 noundef %0) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.split, label %.split11

.split11:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp sgt i32 %i.c, 0
  %i.g = icmp ne ptr %i.e, null
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %bb.b, label %SDL_ChannelMapDup.exit

bb.b:                                             ; preds = %.split11
  %i.h = zext nneg i32 %i.c to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.i) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %SDL_ChannelMapDup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull readonly align 4 %i.e, i64 %i.i, i1 false)
  br label %SDL_ChannelMapDup.exit

SDL_ChannelMapDup.exit:                           ; preds = %.split11, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %.split11 ], [ %i.j, %bb.c ], [ null, %bb.b ]
  tail call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %i.a)
  br label %.split

.split:                                           ; preds = %bb.a, %SDL_ChannelMapDup.exit
  %.09 = phi ptr [ %.0.i, %SDL_ChannelMapDup.exit ], [ null, %bb.a ]
  %.0 = phi i32 [ %i.c, %SDL_ChannelMapDup.exit ], [ 0, %bb.a ]
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split
  store i32 %.0, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_CloseAudioDevice_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @DestroyLogicalAudioDevice(ptr noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %UnrefPhysicalAudioDevice.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.e = load ptr, ptr %i.d, align 8
  %.not4 = icmp eq ptr %i.e, null
  br i1 %.not4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @ClosePhysicalAudioDevice(ptr noundef nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.f, i32 noundef -1) #11
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.g, label %UnrefPhysicalAudioDevice.exit

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.i) #11
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.j, ptr noundef %i.n) #11
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.q = load i8, ptr %i.p, align 4, !range !4, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.r, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 204), ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 200)
  %i.t = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.s, i32 noundef -1) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.u) #11
  tail call fastcc void @DestroyPhysicalAudioDevice(ptr noundef nonnull %i.c)
  br label %UnrefPhysicalAudioDevice.exit

UnrefPhysicalAudioDevice.exit:                    ; preds = %bb.i, %bb.f, %bb.c
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = load ptr, ptr @current_audio, align 16
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #11 ; 0 uses
  store ptr null, ptr %1, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.d = and i32 %0, 2
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.f) #11
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 152), align 8
  %i.h = zext i32 %0 to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
end_hunk_0
