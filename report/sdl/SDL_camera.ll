Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_camera?download=true
inline.NumInlined: 47
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_GetCameraProperties_REAL:bb.a
  ret i32 %.0
}

declare i32 @SDL_CreateProperties_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetCameraPermissionState_REAL(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #11 ; 0 uses
  br label %ReleaseCamera.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.b, i32 noundef 1) #11 ; 0 uses
  %i.d = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.g) #11
  %i.h = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.b, i32 noundef -1) #11
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %ReleaseCamera.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.j) #11
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.k, ptr noundef %i.o) #11
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 128), i32 noundef -1) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.r) #11
  br label %ReleaseCamera.exit

ReleaseCamera.exit:                               ; preds = %bb.f, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_QuitCamera() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @camera_driver, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.b) #11
  %i.c = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 132), i32 noundef 1) #11 ; 0 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 112), align 8 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 112), align 8
  %i.f = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 128), i32 noundef 0) #11 ; 0 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.g) #11
  %.not67 = icmp eq ptr %i.e, null
  br i1 %.not67, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @SDL_DestroyHashTable(ptr noundef %i.d) #11
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 72), align 8
  tail call void %i.h() #11
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_DestroyRWLock_REAL(ptr noundef %i.i) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) @camera_driver, i8 0, i64 136, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.08 = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.08, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %.08) #11
  %.not6 = icmp eq ptr %i.k, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !llvm.loop !24

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @SDL_DestroyHashTable(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyRWLock_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_CameraInit(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @camera_driver, align 16
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_QuitCamera()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr @SDL_CreateRWLock_REAL() #11 ; 7 uses
  %.not71 = icmp eq ptr %i.b, null
  br i1 %.not71, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @SDL_CreateHashTable(i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull @SDL_HashID, ptr noundef nonnull @SDL_KeyMatchID, ptr noundef nonnull @DestroyCameraHashItem, ptr noundef null) #11 ; 6 uses
  %.not72 = icmp eq ptr %i.c, null
  br i1 %.not72, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_DestroyRWLock_REAL(ptr noundef nonnull %i.b) #11
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %.not73 = icmp eq ptr %0, null
  br i1 %.not73, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.d = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.11) #11 ; 2 uses
  %.not74 = icmp eq ptr %i.d, null
  br i1 %.not74, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.05984 = phi ptr [ %i.d, %bb.g ], [ %0, %bb.f ] ; 4 uses
  %i.e = load i8, ptr %.05984, align 1
  %.not75 = icmp eq i8 %i.e, 0
  br i1 %.not75, label %bb.o, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.f = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %.05984) #11 ; 3 uses
  %.not77.not = icmp eq ptr %i.f, null
  br i1 %.not77.not, label %.thread90, label %select.unfold.preheader

.thread90:                                        ; preds = %bb.h
  tail call void @SDL_DestroyRWLock_REAL(ptr noundef nonnull %i.b) #11
  tail call void @SDL_DestroyHashTable(ptr noundef nonnull %i.c) #11
  br label %bb.u

select.unfold.preheader:                          ; preds = %bb.h, %select.unfold
  %.050109 = phi ptr [ %i.u, %select.unfold ], [ %i.f, %bb.h ] ; 4 uses
  %.051108 = phi i1 [ %.1, %select.unfold ], [ false, %bb.h ] ; 2 uses
  %.052107 = phi i8 [ %.254, %select.unfold ], [ 0, %bb.h ] ; 2 uses
  %i.g = load i8, ptr %.050109, align 1
  %i.h = icmp eq i8 %i.g, 0
  %i.i = trunc nuw i8 %.052107 to i1
  %or.cond.not = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.not, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %select.unfold.preheader
  %i.j = tail call ptr @SDL_strchr_REAL(ptr noundef nonnull %.050109, i32 noundef 44) #11 ; 3 uses
  %.not80 = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %.not80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.j, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.k = load ptr, ptr @V4L2_bootstrap, align 8
  %i.l = tail call i32 @SDL_strcasecmp_REAL(ptr noundef %i.k, ptr noundef nonnull %.050109) #11
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = load ptr, ptr @DUMMYCAMERA_bootstrap, align 8
  %i.o = tail call i32 @SDL_strcasecmp_REAL(ptr noundef %i.n, ptr noundef nonnull %.050109) #11
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %select.unfold

bb.m:                                             ; preds = %bb.l, %bb.k
  %.lcssa113 = phi ptr [ @V4L2_bootstrap, %bb.k ], [ @DUMMYCAMERA_bootstrap, %bb.l ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @camera_driver, i8 0, i64 136, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 104), ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 16
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa113, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call zeroext i1 %i.r(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 16)) #11
  br i1 %i.s, label %bb.n, label %select.unfold

bb.n:                                             ; preds = %bb.m
  %i.t = load <2 x ptr>, ptr %.lcssa113, align 8
  store <2 x ptr> %i.t, ptr @camera_driver, align 16
  br label %select.unfold

select.unfold:                                    ; preds = %bb.l, %bb.m, %bb.n
  %.254 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.1 = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ %.051108, %bb.l ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  br i1 %.not80, label %.critedge2, label %select.unfold.preheader, !llvm.loop !25

bb.o:                                             ; preds = %.thread, %bb.g
  %.not7489 = phi i1 [ false, %.thread ], [ true, %bb.g ]
  %.05986 = phi ptr [ %.05984, %.thread ], [ null, %bb.g ]
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @V4L2_bootstrap, i64 24), align 8, !range !10, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  br i1 %i.w, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @camera_driver, i8 0, i64 136, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 104), ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 16
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @V4L2_bootstrap, i64 16), align 8
  %i.y = tail call zeroext i1 %i.x(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 16)) #11
  br i1 %i.y, label %.critedge2.thread.loopexit.critedge, label %bb.q

.critedge2.thread.loopexit.critedge:              ; preds = %bb.r, %bb.p
  %.lcssa = phi ptr [ @V4L2_bootstrap, %bb.p ], [ @DUMMYCAMERA_bootstrap, %bb.r ] ; 2 uses
  %i.z = load <2 x ptr>, ptr %.lcssa, align 8
  %i.aa = load ptr, ptr %.lcssa, align 8
  store <2 x ptr> %i.z, ptr @camera_driver, align 16
  br label %.critedge2.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @DUMMYCAMERA_bootstrap, i64 24), align 8, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge2.thread97, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @camera_driver, i8 0, i64 136, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 104), ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 96), align 16
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMYCAMERA_bootstrap, i64 16), align 8
  %i.ae = tail call zeroext i1 %i.ad(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @camera_driver, i64 16)) #11
  br i1 %i.ae, label %.critedge2.thread.loopexit.critedge, label %.critedge2.thread97.thread

.critedge2:                                       ; preds = %select.unfold.preheader, %select.unfold
  %.052.lcssa = phi i8 [ %.052107, %select.unfold.preheader ], [ %.254, %select.unfold ]
  %.051.lcssa = phi i1 [ %.051108, %select.unfold.preheader ], [ %.1, %select.unfold ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.f) #11
  %i.af = trunc nuw i8 %.052.lcssa to i1
  br i1 %i.af, label %.critedge2..critedge2.thread_crit_edge, label %.critedge2.thread97.thread124

.critedge2..critedge2.thread_crit_edge:           ; preds = %.critedge2
  %.pre = load ptr, ptr @camera_driver, align 16
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2..critedge2.thread_crit_edge, %.critedge2.thread.loopexit.critedge
  %i.ag = phi ptr [ %.pre, %.critedge2..critedge2.thread_crit_edge ], [ %i.aa, %.critedge2.thread.loopexit.critedge ]
  tail call void @SDL_DebugLogBackend(ptr noundef nonnull @.str.5, ptr noundef %i.ag) #11
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 16), align 16
  tail call void %i.ah() #11
  br label %bb.u

.critedge2.thread97:                              ; preds = %bb.q
  br i1 %i.w, label %bb.s, label %.critedge2.thread97.thread

.critedge2.thread97.thread124:                    ; preds = %.critedge2
  br i1 %.051.lcssa, label %.critedge2.thread97.thread, label %.thread130

bb.s:                                             ; preds = %.critedge2.thread97
  br i1 %.not7489, label %bb.t, label %.thread130

.thread130:                                       ; preds = %.critedge2.thread97.thread124, %bb.s
  %.05985103128133 = phi ptr [ %.05986, %bb.s ], [ %.05984, %.critedge2.thread97.thread124 ]
  %i.ai = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12, ptr noundef nonnull %.05985103128133) #11 ; 0 uses
  br label %.critedge2.thread97.thread

bb.t:                                             ; preds = %bb.s
  %i.aj = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.13) #11 ; 0 uses
  br label %.critedge2.thread97.thread

.critedge2.thread97.thread:                       ; preds = %bb.r, %.critedge2.thread97.thread124, %.thread130, %bb.t, %.critedge2.thread97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @camera_driver, i8 0, i64 136, i1 false)
  tail call void @SDL_DestroyRWLock_REAL(ptr noundef nonnull %i.b) #11
  tail call void @SDL_DestroyHashTable(ptr noundef nonnull %i.c) #11
  br label %bb.u

bb.u:                                             ; preds = %.thread90, %bb.e, %.critedge2.thread, %.critedge2.thread97.thread, %bb.c
  %.363 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ true, %.critedge2.thread ], [ false, %.critedge2.thread97.thread ], [ false, %.thread90 ]
  ret i1 %.363
}

declare ptr @SDL_CreateRWLock_REAL() local_unnamed_addr #2

declare ptr @SDL_CreateHashTable(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_HashID(ptr noundef, ptr noundef) #2

declare zeroext i1 @SDL_KeyMatchID(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @DestroyCameraHashItem(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  tail call fastcc void @ClosePhysicalCamera(ptr noundef %2)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 64), align 16
  tail call void %i.a(ptr noundef %2) #11
  %i.b = load ptr, ptr %2, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.f) #11
  tail call void @SDL_free_REAL(ptr noundef nonnull %2) #11
  ret void
}

declare ptr @SDL_GetHint_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_strchr_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_strcasecmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_DebugLogBackend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_UpdateCamera() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %union.SDL_Event, align 8           ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.a) #11
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 112), align 16
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.c) #11
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.d) #11
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 112), align 16 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 112), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 104), ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 120), align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @camera_driver, i64 88), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.f) #11
  %.not910 = icmp eq ptr %i.e, null
  br i1 %.not910, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi ptr [ %i.e, %.lr.ph ], [ %i.i, %bb.e ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load i32, ptr %.011, align 8
  %i.k = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef %i.j) #11
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  %i.l = load i32, ptr %.011, align 8
  store i32 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.011, i64 4
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.g, align 8
  %i.o = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @SDL_free_REAL(ptr noundef nonnull %.011) #11
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %.loopexit, label %bb.c, !llvm.loop !26

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

declare zeroext i1 @SDL_EventEnabled_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_PushEvent_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_Delay_REAL(i32 noundef) local_unnamed_addr #2

declare noalias ptr @SDL_aligned_alloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SDL_GetSIMDAlignment_REAL() local_unnamed_addr #2

declare void @SDL_WaitThread_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyProperties_REAL(i32 noundef) local_unnamed_addr #2

declare void @SDL_aligned_free_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_FindInHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @SDL_fabsf_REAL(float noundef) local_unnamed_addr #2

declare i32 @SDL_abs_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !8}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !4, !16, !15}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
end_hunk_0
