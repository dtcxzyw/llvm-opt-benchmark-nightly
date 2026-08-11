inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_AudioDeviceFormatChangedAlreadyLocked:bb.a
bb.m:                                             ; preds = %bb.l, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g, %.split, %SDL_AudioSpecsEqual.exit
  %.156 = phi i1 [ true, %SDL_AudioSpecsEqual.exit ], [ false, %bb.g ], [ true, %bb.m ], [ false, %.split ]
  ret i1 %.156
}

declare void @SDL_aligned_free_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_AudioDeviceFormatChanged(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ObtainPhysicalAudioDeviceObj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.a, i32 noundef 1) #11 ; 0 uses
  %i.c = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.c) #11
  br label %ObtainPhysicalAudioDeviceObj.exit

ObtainPhysicalAudioDeviceObj.exit:                ; preds = %bb.a, %bb.b
  %i.d = tail call zeroext i1 @SDL_AudioDeviceFormatChangedAlreadyLocked(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %0)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_UpdateAudio() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %union.SDL_Event, align 8           ; 7 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.a) #11
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 184), align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.c) #11
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.d) #11
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 184), align 8 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 184), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 176), ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 192), align 16
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.f) #11
  %.not1011 = icmp eq ptr %i.e, null
  br i1 %.not1011, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.012 = phi ptr [ %i.e, %.lr.ph ], [ %i.j, %bb.e ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i32, ptr %.012, align 8
  %i.l = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef %i.k) #11
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  %i.m = load i32, ptr %.012, align 8
  store i32 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.012, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  store i32 %i.o, ptr %i.g, align 8
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, 1
  %i.r = xor i8 %i.q, 1
  store i8 %i.r, ptr %i.h, align 4
  %i.s = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @SDL_free_REAL(ptr noundef nonnull %.012) #11
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %.loopexit, label %bb.c, !llvm.loop !28

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

declare zeroext i1 @SDL_EventEnabled_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_PushEvent_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyMutex_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyCondition_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @CreatePhysicalAudioDevice(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.b) #11
  %i.c = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_audio, i64 208)) #11
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.d) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(216) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 216) #12 ; 22 uses
  %.not42 = icmp eq ptr %i.e, null
  br i1 %.not42, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %0) #11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 4 uses
  store ptr %i.f, ptr %i.g, align 8
  %.not43 = icmp eq ptr %i.f, null
  br i1 %.not43, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #11
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @SDL_CreateMutex_REAL() #11 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8
  %.not44 = icmp eq ptr %i.h, null
  br i1 %.not44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.i) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #11
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.j = tail call ptr @SDL_CreateCondition_REAL() #11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  %.not45 = icmp eq ptr %i.j, null
  br i1 %.not45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %i.e, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.l) #11
  %i.m = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.m) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #11
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.o = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.n, i32 noundef 0) #11 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.q = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.p, i32 noundef 0) #11 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  store i8 %i.a, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.v = load i32, ptr %i.u, align 8              ; 3 uses
  %i.w = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.2) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.w) #11 ; 2 uses
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %SDL_GetDefaultSampleFramesFromFreq.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = icmp slt i32 %i.v, 22051
  br i1 %i.z, label %SDL_GetDefaultSampleFramesFromFreq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp samesign ult i32 %i.v, 48001
  br i1 %i.aa, label %SDL_GetDefaultSampleFramesFromFreq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp samesign ult i32 %i.v, 96001
  %..i = select i1 %i.ab, i32 2048, i32 4096
  br label %SDL_GetDefaultSampleFramesFromFreq.exit

SDL_GetDefaultSampleFramesFromFreq.exit:          ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.1.i = phi i32 [ %i.x, %bb.j ], [ 512, %bb.k ], [ %..i, %bb.m ], [ 1024, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 %.1.i, ptr %i.ac, align 4
  %i.ad = load i32, ptr %i.s, align 8
  %i.ae = icmp eq i32 %i.ad, 8
  %i.af = select i1 %i.ae, i32 128, i32 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %3, ptr %i.ah, align 8
  %not..i = xor i1 %1, true
  %i.ai = zext i1 %not..i to i32
  %5 = or disjoint i32 %i.ai, 2
  %i.aj = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @last_device_instance_id, i32 noundef 1) #11
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = or disjoint i32 %i.al, %5
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.ao) #11
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.aq = load i32, ptr %i.an, align 8
  %i.ar = zext i32 %i.aq to i64
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.ap, ptr noundef %i.as, ptr noundef nonnull %i.e, i1 noundef zeroext false) #11
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %SDL_GetDefaultSampleFramesFromFreq.exit
  %i.au = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef %4, i32 noundef 1) #11 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %SDL_GetDefaultSampleFramesFromFreq.exit
  %i.av = load ptr, ptr %i.k, align 8
  tail call void @SDL_DestroyCondition_REAL(ptr noundef %i.av) #11
  %i.aw = load ptr, ptr %i.e, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.aw) #11
  %i.ax = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ax) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.e, %bb.n ], [ null, %bb.o ]  ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.ay) #11
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ba = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.az, i32 noundef 1) #11 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.p, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0, %bb.p ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.1
}

declare ptr @SDL_CreateMutex_REAL() local_unnamed_addr #2

declare ptr @SDL_CreateCondition_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @SDL_AudioDetectDevices_Default(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.SDL_AudioSpec, align 4      ; 6 uses
  %3 = alloca %struct.SDL_AudioSpec, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 32784, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 44100, ptr %i.b, align 4
  %i.c = call fastcc noundef ptr @CreatePhysicalAudioDevice(ptr noundef nonnull @.str.37, i1 noundef zeroext false, ptr noundef nonnull readonly %3, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_audio, i64 200)) ; 3 uses
  %.not37.i = icmp eq ptr %i.c, null
  br i1 %.not37.i, label %SDL_AddAudioDevice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #11 ; 6 uses
  %.not38.i = icmp eq ptr %i.d, null
  br i1 %.not38.i, label %SDL_AddAudioDevice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 4352, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.h, align 8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.i) #11
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 192), align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.d, ptr %i.k, align 8
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 192), align 16
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.l) #11
  br label %SDL_AddAudioDevice.exit

SDL_AddAudioDevice.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store ptr %i.c, ptr %0, align 8
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 129), align 1, !range !3, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %SDL_AddAudioDevice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 32784, ptr %2, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 44100, ptr %i.p, align 4
  %i.q = call fastcc noundef ptr @CreatePhysicalAudioDevice(ptr noundef nonnull @.str.38, i1 noundef zeroext true, ptr noundef nonnull readonly %2, ptr noundef nonnull inttoptr (i64 2 to ptr), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_audio, i64 204)) ; 3 uses
  %.not37.i2 = icmp eq ptr %i.q, null
  br i1 %.not37.i2, label %SDL_AddAudioDevice.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #11 ; 6 uses
  %.not38.i3 = icmp eq ptr %i.r, null
  br i1 %.not38.i3, label %SDL_AddAudioDevice.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 4352, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.v, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.w) #11
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 192), align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.r, ptr %i.y, align 8
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 192), align 16
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.z) #11
  br label %SDL_AddAudioDevice.exit4

SDL_AddAudioDevice.exit4:                         ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  store ptr %i.q, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %SDL_AddAudioDevice.exit4, %SDL_AddAudioDevice.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_AudioOpenDevice_Default(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.39) #11
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal void @SDL_AudioThreadInit_Default(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load i8, ptr %i.a, align 4, !range !3, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, i32 2, i32 3
  %i.e = tail call zeroext i1 @SDL_SetCurrentThreadPriority_REAL(i32 noundef %i.d) #11 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @SDL_AudioThreadDeinit_Default(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @SDL_AudioWaitDevice_Default(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @SDL_AudioPlayDevice_Default(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noalias noundef ptr @SDL_AudioGetDeviceBuf_Default(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #9 {
bb.a:
  store i32 0, ptr %1, align 4
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @SDL_AudioWaitRecordingDevice_Default(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @SDL_AudioRecordDevice_Default(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.39) #11 ; 0 uses
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @SDL_AudioFlushRecording_Default(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @SDL_AudioCloseDevice_Default(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @SDL_AudioFreeDeviceHandle_Default(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret void
end_hunk_0
