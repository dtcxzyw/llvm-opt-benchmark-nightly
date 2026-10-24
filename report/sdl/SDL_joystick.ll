Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_joystick?download=true
inline.NumInlined: 273
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_GetJoystickPlayerIndex_REAL:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 4) #12
  br i1 %i.h, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread8

SDL_ObjectValid.exit.thread8:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12 ; 0 uses
  %i.j = load i32, ptr @SDL_joysticks_locked, align 4
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread8
  %i.m = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.o) #12
  %i.p = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.o) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.o) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i:                                      ; preds = %bb.c, %SDL_ObjectValid.exit.thread8
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.r = load i32, ptr %0, align 8
  %i.s = load i32, ptr @SDL_joystick_player_count, align 4 ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %SDL_GetPlayerIndexForJoystickID.exit

.lr.ph.i:                                         ; preds = %SDL_ObjectValid.exit.thread
  %i.u = load ptr, ptr @SDL_joystick_players, align 8
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.r, %i.w
  br i1 %i.x, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetPlayerIndexForJoystickID.exit, label %bb.e, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.e
  %i.y = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %SDL_GetPlayerIndexForJoystickID.exit

SDL_GetPlayerIndexForJoystickID.exit:             ; preds = %bb.f, %SDL_ObjectValid.exit.thread, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %SDL_ObjectValid.exit.thread ], [ %i.y, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.s, %bb.f ] ; 2 uses
  %i.z = icmp eq i32 %.0.lcssa.i, %i.s
  %spec.store.select.i = select i1 %i.z, i32 -1, i32 %.0.lcssa.i ; 2 uses
  %i.aa = load i32, ptr @SDL_joysticks_locked, align 4
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr @SDL_joysticks_locked, align 4
  %.b.i3 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.ac = icmp ne i32 %i.ab, 0
  %or.cond.i4 = select i1 %.b.i3, i1 true, i1 %i.ac
  br i1 %or.cond.i4, label %.critedge.i5, label %bb.g

bb.g:                                             ; preds = %SDL_GetPlayerIndexForJoystickID.exit
  %i.ad = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.critedge.i5

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.af) #12
  %i.ag = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ag) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.af) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.af) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i5:                                     ; preds = %bb.g, %SDL_GetPlayerIndexForJoystickID.exit
  %i.ah = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ah) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %.critedge.i5, %bb.h, %.critedge.i, %bb.d
  %.0 = phi i32 [ -1, %.critedge.i ], [ -1, %bb.d ], [ %spec.store.select.i, %bb.h ], [ %spec.store.select.i, %.critedge.i5 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SetJoystickPlayerIndex_REAL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 4) #12
  br i1 %i.h, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread9

SDL_ObjectValid.exit.thread9:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12 ; 0 uses
  %i.j = load i32, ptr @SDL_joysticks_locked, align 4
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread9
  %i.m = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.o) #12
  %i.p = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.o) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.o) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i:                                      ; preds = %bb.c, %SDL_ObjectValid.exit.thread9
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.r = load i32, ptr %0, align 8
  %i.s = tail call fastcc zeroext i1 @SDL_SetJoystickIDForPlayerIndex(i32 noundef %1, i32 noundef %i.r) ; 2 uses
  %i.t = load i32, ptr @SDL_joysticks_locked, align 4
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr @SDL_joysticks_locked, align 4
  %.b.i4 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.v = icmp ne i32 %i.u, 0
  %or.cond.i5 = select i1 %.b.i4, i1 true, i1 %i.v
  br i1 %or.cond.i5, label %.critedge.i6, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.w = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %.critedge.i6

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.y) #12
  %i.z = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.z) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.y) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.y) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i6:                                     ; preds = %bb.e, %SDL_ObjectValid.exit.thread
  %i.aa = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.aa) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %.critedge.i6, %bb.f, %.critedge.i, %bb.d
  %.0 = phi i1 [ false, %.critedge.i ], [ false, %bb.d ], [ %i.s, %bb.f ], [ %i.s, %.critedge.i6 ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_SetJoystickIDForPlayerIndex(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %.pre = load i32, ptr @SDL_joystick_player_count, align 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.pr = phi i32 [ %.pre, %bb.a ], [ %i.be, %tailrecurse.backedge ] ; 3 uses
  %.tr = phi i32 [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 7 uses
  %.tr48 = phi i32 [ %1, %bb.a ], [ %.0.i, %tailrecurse.backedge ] ; 8 uses
  %ret.known.tr = phi i1 [ false, %bb.a ], [ true, %tailrecurse.backedge ]
  %i.a = icmp sgt i32 %.tr, -1                    ; 3 uses
  %.not.i = icmp slt i32 %.tr, %.pr               ; 2 uses
  %or.cond.i = select i1 %i.a, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %SDL_GetJoystickIDForPlayerIndex.exit

bb.b:                                             ; preds = %tailrecurse
  %i.b = load ptr, ptr @SDL_joystick_players, align 8
  %i.c = zext nneg i32 %.tr to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  br label %SDL_GetJoystickIDForPlayerIndex.exit

SDL_GetJoystickIDForPlayerIndex.exit:             ; preds = %tailrecurse, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %tailrecurse ] ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %SDL_GetJoystickIDForPlayerIndex.exit
  %i.f = load ptr, ptr @SDL_joystick_players, align 8
  %i.g = add i32 %.tr, 1                          ; 4 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = tail call ptr @SDL_realloc_REAL(ptr noundef %i.f, i64 noundef %i.i) #14 ; 3 uses
  %.not27.not = icmp eq ptr %i.j, null
  br i1 %.not27.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr @SDL_joystick_players, align 8
  %i.k = load i32, ptr @SDL_joystick_player_count, align 4 ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = sub i32 %i.g, %i.k
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 0, i64 %i.p, i1 false)
  store i32 %i.g, ptr @SDL_joystick_player_count, align 4
  br label %thread-pre-split

bb.e:                                             ; preds = %SDL_GetJoystickIDForPlayerIndex.exit
  br i1 %i.a, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @SDL_joystick_players, align 8
  %i.r = zext nneg i32 %.tr to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %2 = icmp eq i32 %i.t, %.tr48
  br i1 %2, label %.critedge, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.f, %bb.d
  %i.u = phi i32 [ %i.g, %bb.d ], [ %.pr, %bb.f ], [ %.pr, %bb.e ] ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %SDL_GetPlayerIndexForJoystickID.exit

.lr.ph.i:                                         ; preds = %thread-pre-split
  %i.w = load ptr, ptr @SDL_joystick_players, align 8
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %.tr48, %i.y
  br i1 %i.z, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetPlayerIndexForJoystickID.exit.thread, label %bb.g, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %SDL_GetPlayerIndexForJoystickID.exit

SDL_GetPlayerIndexForJoystickID.exit:             ; preds = %thread-pre-split, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %thread-pre-split ], [ %i.aa, %._crit_edge.loopexit.split.loop.exit.i ] ; 2 uses
  %i.ab = icmp eq i32 %.0.lcssa.i, %i.u
  %spec.store.select.i = select i1 %i.ab, i32 -1, i32 %.0.lcssa.i ; 2 uses
  %i.ac = icmp sgt i32 %spec.store.select.i, -1
  br i1 %i.ac, label %bb.i, label %SDL_GetPlayerIndexForJoystickID.exit.thread

bb.i:                                             ; preds = %SDL_GetPlayerIndexForJoystickID.exit
  %i.ad = load ptr, ptr @SDL_joystick_players, align 8
  %i.ae = zext nneg i32 %spec.store.select.i to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 0, ptr %i.af, align 4
  br label %SDL_GetPlayerIndexForJoystickID.exit.thread

SDL_GetPlayerIndexForJoystickID.exit.thread:      ; preds = %bb.h, %bb.i, %SDL_GetPlayerIndexForJoystickID.exit
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %SDL_GetPlayerIndexForJoystickID.exit.thread
  %i.ag = load ptr, ptr @SDL_joystick_players, align 8
  %i.ah = zext nneg i32 %.tr to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  store i32 %.tr48, ptr %i.ai, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %SDL_GetPlayerIndexForJoystickID.exit.thread
  %.not.i29 = icmp eq i32 %.tr48, 0
  br i1 %.not.i29, label %SDL_GetDriverAndJoystickIndex.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.k
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 8), align 8
  %i.ak = tail call i32 %i.aj() #12, !inline_history !0 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i30, label %._crit_edge.i

.lr.ph.i30:                                       ; preds = %.preheader.preheader.i, %.critedge.i
  %.01724.i = phi i32 [ %i.ao, %.critedge.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 80), align 8
  %i.an = tail call i32 %i.am(i32 noundef %.01724.i) #12, !inline_history !0
  %.not22.i = icmp eq i32 %i.an, %.tr48
  br i1 %.not22.i, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i30
  %i.ao = add nuw nsw i32 %.01724.i, 1            ; 2 uses
  %exitcond.not.i31 = icmp eq i32 %i.ao, %i.ak
  br i1 %exitcond.not.i31, label %._crit_edge.i, label %.lr.ph.i30, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.critedge.i, %.preheader.preheader.i
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 8), align 8
  %i.aq = tail call i32 %i.ap() #12, !inline_history !0 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.1.i, label %._crit_edge.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.critedge.1.i
  %.01724.1.i = phi i32 [ %i.au, %.critedge.1.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 80), align 8
  %i.at = tail call i32 %i.as(i32 noundef %.01724.1.i) #12, !inline_history !0
  %.not22.1.i = icmp eq i32 %i.at, %.tr48
  br i1 %.not22.1.i, label %.loopexit, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.lr.ph.1.i
  %i.au = add nuw nsw i32 %.01724.1.i, 1          ; 2 uses
  %exitcond.1.not.i = icmp eq i32 %i.au, %i.aq
  br i1 %exitcond.1.not.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !1

._crit_edge.1.i:                                  ; preds = %.critedge.1.i, %._crit_edge.i
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 8), align 8
  %i.aw = tail call i32 %i.av() #12, !inline_history !0 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.2.i, label %SDL_GetDriverAndJoystickIndex.exit

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.critedge.2.i
  %.01724.2.i = phi i32 [ %i.ba, %.critedge.2.i ], [ 0, %._crit_edge.1.i ] ; 3 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 80), align 8
  %i.az = tail call i32 %i.ay(i32 noundef %.01724.2.i) #12, !inline_history !0
  %.not22.2.i = icmp eq i32 %i.az, %.tr48
  br i1 %.not22.2.i, label %.loopexit, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.lr.ph.2.i
  %i.ba = add nuw nsw i32 %.01724.2.i, 1          ; 2 uses
  %exitcond.2.not.i = icmp eq i32 %i.ba, %i.aw
  br i1 %exitcond.2.not.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.lr.ph.2.i, !llvm.loop !1

SDL_GetDriverAndJoystickIndex.exit:               ; preds = %.critedge.2.i, %bb.k, %._crit_edge.1.i
  %i.bb = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44, i32 noundef %.tr48) #12 ; 0 uses
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph.i30, %.lr.ph.1.i, %.lr.ph.2.i
  %.040.ph = phi ptr [ @SDL_VIRTUAL_JoystickDriver, %.lr.ph.2.i ], [ @SDL_LINUX_JoystickDriver, %.lr.ph.1.i ], [ @SDL_HIDAPI_JoystickDriver, %.lr.ph.i30 ]
  %.0.ph = phi i32 [ %.01724.2.i, %.lr.ph.2.i ], [ %.01724.1.i, %.lr.ph.1.i ], [ %.01724.i, %.lr.ph.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.040.ph, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(i32 noundef %.0.ph, i32 noundef %.tr) #12
  br label %bb.l

bb.l:                                             ; preds = %SDL_GetDriverAndJoystickIndex.exit, %.loopexit
  %.not28 = icmp eq i32 %.0.i, 0
  br i1 %.not28, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr @SDL_joystick_player_count, align 4 ; 4 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i34, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.o, %bb.m, %._crit_edge.loopexit.split.loop.exit.i39
  %.tr.be = phi i32 [ %i.bk, %._crit_edge.loopexit.split.loop.exit.i39 ], [ 0, %bb.m ], [ %i.be, %bb.o ]
  br label %tailrecurse

.lr.ph.i34:                                       ; preds = %bb.m
  %i.bg = load ptr, ptr @SDL_joystick_players, align 8
  %wide.trip.count.i35 = zext nneg i32 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i34
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i37, %bb.o ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i36
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %._crit_edge.loopexit.split.loop.exit.i39, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, %wide.trip.count.i35
  br i1 %exitcond.not.i38, label %tailrecurse.backedge, label %bb.n, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit.i39:         ; preds = %bb.n
  %i.bk = trunc nuw nsw i64 %indvars.iv.i36 to i32
  br label %tailrecurse.backedge

.critedge:                                        ; preds = %bb.c, %bb.l, %bb.f
  %.1 = phi i1 [ true, %bb.f ], [ %ret.known.tr, %bb.c ], [ true, %bb.l ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_RumbleJoystick_REAL(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 4) #12
  br i1 %i.h, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread42

SDL_ObjectValid.exit.thread42:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12 ; 0 uses
  %i.j = load i32, ptr @SDL_joysticks_locked, align 4
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread42
  %i.m = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.o) #12
  %i.p = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.o) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.o) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i:                                      ; preds = %bb.c, %SDL_ObjectValid.exit.thread42
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = icmp eq i16 %1, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %2, %i.v
  br i1 %i.w, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %SDL_ObjectValid.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call zeroext i1 %i.aa(ptr noundef nonnull %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #12
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i64 @SDL_GetTicks_REAL() #12
  %i.ad = add i64 %i.ac, 2000
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  store i64 %spec.store.select, ptr %i.ae, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.af, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.e, %bb.g
  store i16 %1, ptr %i.r, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i16 %2, ptr %i.ag, align 2
  %i.ah = or i16 %2, %1
  %or.cond = icmp ne i16 %i.ah, 0
  %i.ai = icmp ne i32 %3, 0
  %or.cond4 = and i1 %or.cond, %i.ai
  br i1 %or.cond4, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call i64 @SDL_GetTicks_REAL() #12
  %i.ak = tail call i32 @llvm.umin.i32(i32 %3, i32 65535)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  %spec.store.select36 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  store i64 %spec.store.select36, ptr %i.an, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k
  %.0.shrunk45 = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ false, %bb.h ] ; 2 uses
  %i.ap = load i32, ptr @SDL_joysticks_locked, align 4
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr @SDL_joysticks_locked, align 4
  %.b.i37 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond.i38 = select i1 %.b.i37, i1 true, i1 %i.ar
  br i1 %or.cond.i38, label %.critedge.i39, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %.critedge.i39

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.au) #12
  %i.av = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.av) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.au) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.au) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i39:                                    ; preds = %bb.m, %bb.l
  %i.aw = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.aw) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %.critedge.i39, %bb.n, %.critedge.i, %bb.d
  %.034 = phi i1 [ false, %.critedge.i ], [ false, %bb.d ], [ %.0.shrunk45, %bb.n ], [ %.0.shrunk45, %.critedge.i39 ]
  ret i1 %.034
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_RumbleJoystickTriggers_REAL(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 4) #12
  br i1 %i.h, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread39

SDL_ObjectValid.exit.thread39:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12 ; 0 uses
  %i.j = load i32, ptr @SDL_joysticks_locked, align 4
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread39
  %i.m = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.o) #12
  %i.p = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.o) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.o) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i:                                      ; preds = %bb.c, %SDL_ObjectValid.exit.thread39
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

end_hunk_0
