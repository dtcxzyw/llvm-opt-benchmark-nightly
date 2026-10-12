Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_joystick?download=true
inline.NumInlined: 273
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_GetJoystickPlayerIndex_REAL:bb.a
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
  %i.u = icmp eq i32 %i.t, %.tr48
  br i1 %i.u, label %.critedge, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.f, %bb.d
  %i.v = phi i32 [ %i.g, %bb.d ], [ %.pr, %bb.f ], [ %.pr, %bb.e ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %SDL_GetPlayerIndexForJoystickID.exit

.lr.ph.i:                                         ; preds = %thread-pre-split
  %i.x = load ptr, ptr @SDL_joystick_players, align 8
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %.tr48, %i.z
  br i1 %i.aa, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetPlayerIndexForJoystickID.exit.thread, label %bb.g, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.g
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %SDL_GetPlayerIndexForJoystickID.exit

SDL_GetPlayerIndexForJoystickID.exit:             ; preds = %thread-pre-split, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %thread-pre-split ], [ %i.ab, %._crit_edge.loopexit.split.loop.exit.i ] ; 2 uses
  %i.ac = icmp eq i32 %.0.lcssa.i, %i.v
  %spec.store.select.i = select i1 %i.ac, i32 -1, i32 %.0.lcssa.i ; 2 uses
  %2 = icmp sgt i32 %spec.store.select.i, -1
  br i1 %2, label %bb.i, label %SDL_GetPlayerIndexForJoystickID.exit.thread

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
end_hunk_0
begin_hunk_1_@SDL_SetJoystickLED_REAL:bb.a
  %.b.i25 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.am = icmp ne i32 %i.al, 0
  %or.cond.i26 = select i1 %.b.i25, i1 true, i1 %i.am
  br i1 %or.cond.i26, label %.critedge.i27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %.critedge.i27

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ap) #12
  %i.aq = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.aq) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ap) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.ap) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i27:                                    ; preds = %bb.i, %bb.h
  %i.ar = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ar) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %.critedge.i27, %bb.j, %.critedge.i, %bb.d
  %.022 = phi i1 [ false, %.critedge.i ], [ false, %bb.d ], [ %.0, %bb.j ], [ %.0, %.critedge.i27 ]
  ret i1 %.022
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 4) #12
  br i1 %i.h, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread11

SDL_ObjectValid.exit.thread11:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12 ; 0 uses
  %i.j = load i32, ptr @SDL_joysticks_locked, align 4
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread11
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

.critedge.i:                                      ; preds = %bb.c, %SDL_ObjectValid.exit.thread11
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call zeroext i1 %i.u(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #12 ; 2 uses
  %i.w = load i32, ptr @SDL_joysticks_locked, align 4
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr @SDL_joysticks_locked, align 4
  %.b.i6 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.y = icmp ne i32 %i.x, 0
  %or.cond.i7 = select i1 %.b.i6, i1 true, i1 %i.y
  br i1 %or.cond.i7, label %.critedge.i8, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.z = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.critedge.i8

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ab) #12
  %i.ac = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ac) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ab) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.ab) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i8:                                     ; preds = %bb.e, %SDL_ObjectValid.exit.thread
  %i.ad = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ad) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %.critedge.i8, %bb.f, %.critedge.i, %bb.d
  %.0 = phi i1 [ false, %.critedge.i ], [ false, %bb.d ], [ %i.v, %bb.f ], [ %i.v, %.critedge.i8 ]
  ret i1 %.0
}

declare void @SDL_DestroyProperties_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_PrivateJoystickRemoved(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %union.SDL_Event, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %.016 = load ptr, ptr @SDL_joysticks, align 8   ; 2 uses
  %.not17 = icmp eq ptr %.016, null
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.018 = phi ptr [ %.0, %bb.c ], [ %.016, %bb.a ] ; 4 uses
  %i.a = load i32, ptr %.018, align 8
  %i.b = icmp eq i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @SDL_PrivateJoystickForceRecentering(ptr noundef nonnull %.018)
  %i.c = getelementptr inbounds nuw i8, ptr %.018, i64 224
  store i8 0, ptr %i.c, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.018, i64 344
  %.0 = load ptr, ptr %i.d, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !23

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %i.e = tail call zeroext i1 @SDL_IsGamepad_REAL(i32 noundef %0) #12
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  tail call void @SDL_PrivateGamepadRemoved(i32 noundef %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  store i32 1542, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1542) #12
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %0, ptr %i.h, align 8
  %i.i = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = load i32, ptr @SDL_joystick_player_count, align 4 ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %SDL_GetPlayerIndexForJoystickID.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.l = load ptr, ptr @SDL_joystick_players, align 8
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %0, %i.n
  br i1 %i.o, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetPlayerIndexForJoystickID.exit.thread, label %bb.h, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.h
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %SDL_GetPlayerIndexForJoystickID.exit

SDL_GetPlayerIndexForJoystickID.exit:             ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.p, %._crit_edge.loopexit.split.loop.exit.i ] ; 2 uses
  %i.q = icmp eq i32 %.0.lcssa.i, %i.j
  %spec.store.select.i = select i1 %i.q, i32 -1, i32 %.0.lcssa.i ; 2 uses
  %2 = icmp sgt i32 %spec.store.select.i, -1
  br i1 %2, label %bb.j, label %SDL_GetPlayerIndexForJoystickID.exit.thread

bb.j:                                             ; preds = %SDL_GetPlayerIndexForJoystickID.exit
  %i.r = load ptr, ptr @SDL_joystick_players, align 8
  %i.s = zext nneg i32 %spec.store.select.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4
  br label %SDL_GetPlayerIndexForJoystickID.exit.thread

SDL_GetPlayerIndexForJoystickID.exit.thread:      ; preds = %bb.i, %bb.j, %SDL_GetPlayerIndexForJoystickID.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

declare void @SDL_QuitSubSystem_REAL(i32 noundef) local_unnamed_addr #2

declare void @SDL_QuitSteamVirtualGamepadInfo() local_unnamed_addr #2

declare void @SDL_RemoveHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_FreeVIDPIDList(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull @SDL_VIDPIDIncludedHintChanged, ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull %i.c, ptr noundef nonnull @SDL_VIDPIDExcludedHintChanged, ptr noundef nonnull %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.j, align 8
  ret void
}

declare void @SDL_QuitGamepadMappings() local_unnamed_addr #2

declare void @SDL_DestroyHashTable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_PrivateJoystickAddTouchpad(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %i.c to i64
  %i.g = shl nsw i64 %i.f, 4
  %i.h = tail call ptr @SDL_realloc_REAL(ptr noundef %i.e, i64 noundef %i.g) #14 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = sext i32 %1 to i64
  %i.l = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.k, i64 noundef 16) #13 ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  %spec.select = select i1 %.not18, i32 0, i32 %1
  store i32 %spec.select, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i32 %i.c, ptr %i.a, align 8
  store ptr %i.h, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @SDL_PrivateJoystickAddSensor(ptr nofree noundef captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %i.c to i64
  %i.g = mul nsw i64 %i.f, 24
  %i.h = tail call ptr @SDL_realloc_REAL(ptr noundef %i.e, i64 noundef %i.g) #14 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  store i32 %1, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store float %2, ptr %i.l, align 4
  store i32 %i.c, ptr %i.a, align 8
  store ptr %i.h, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @SDL_PrivateJoystickSensorRate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.pre10 = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.k, %bb.d ]
  %i.f = phi ptr [ %.pre10, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %2, ptr %i.j, align 4
  %.pre = load ptr, ptr %i.d, align 8
  %.pre11 = load i32, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %i.e, %bb.b ], [ %.pre11, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = sext i32 %i.k to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_PrivateJoystickAdded(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %union.SDL_Event, align 8           ; 6 uses
  %.b.i = load i1, ptr @SDL_joysticks_quitting, align 1
  br i1 %.b.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @SDL_joystick_being_added, align 1
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 8), align 8
  %i.b = tail call i32 %i.a() #12, !inline_history !0 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.preheader.i, %.critedge.i
  %.01724.i = phi i32 [ %i.f, %.critedge.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 80), align 8
  %i.e = tail call i32 %i.d(i32 noundef %.01724.i) #12, !inline_history !0
  %.not22.i = icmp eq i32 %i.e, %0
  br i1 %.not22.i, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.f = add nuw nsw i32 %.01724.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.f, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.critedge.i, %.preheader.preheader.i
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 8), align 8
  %i.h = tail call i32 %i.g() #12, !inline_history !0 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.1.i, label %._crit_edge.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.critedge.1.i
  %.01724.1.i = phi i32 [ %i.l, %.critedge.1.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 80), align 8
  %i.k = tail call i32 %i.j(i32 noundef %.01724.1.i) #12, !inline_history !0
  %.not22.1.i = icmp eq i32 %i.k, %0
  br i1 %.not22.1.i, label %.loopexit, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.lr.ph.1.i
  %i.l = add nuw nsw i32 %.01724.1.i, 1           ; 2 uses
  %exitcond.1.not.i = icmp eq i32 %i.l, %i.h
  br i1 %exitcond.1.not.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !1

._crit_edge.1.i:                                  ; preds = %.critedge.1.i, %._crit_edge.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 8), align 8
  %i.n = tail call i32 %i.m() #12, !inline_history !0 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.2.i, label %.thread

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.critedge.2.i
  %.01724.2.i = phi i32 [ %i.r, %.critedge.2.i ], [ 0, %._crit_edge.1.i ] ; 3 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 80), align 8
  %i.q = tail call i32 %i.p(i32 noundef %.01724.2.i) #12, !inline_history !0
  %.not22.2.i = icmp eq i32 %i.q, %0
  br i1 %.not22.2.i, label %.loopexit, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.lr.ph.2.i
  %i.r = add nuw nsw i32 %.01724.2.i, 1           ; 2 uses
  %exitcond.2.not.i = icmp eq i32 %i.r, %i.n
  br i1 %exitcond.2.not.i, label %.thread, label %.lr.ph.2.i, !llvm.loop !1

.thread:                                          ; preds = %.critedge.2.i, %._crit_edge.1.i, %bb.b
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44, i32 noundef %0) #12 ; 0 uses
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph.1.i, %.lr.ph.2.i
  %.019.ph = phi ptr [ @SDL_VIRTUAL_JoystickDriver, %.lr.ph.2.i ], [ @SDL_LINUX_JoystickDriver, %.lr.ph.1.i ], [ @SDL_HIDAPI_JoystickDriver, %.lr.ph.i ] ; 2 uses
  %.018.ph = phi i32 [ %.01724.2.i, %.lr.ph.2.i ], [ %.01724.1.i, %.lr.ph.1.i ], [ %.01724.i, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019.ph, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 %i.u(i32 noundef %.018.ph) #12 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %SDL_FindFreePlayerIndex.exit.thread

bb.c:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %.019.ph, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 %i.y(i32 noundef %.018.ph) #12 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %SDL_FindFreePlayerIndex.exit.thread

bb.d:                                             ; preds = %.thread, %bb.c
  %i.ab = tail call zeroext i1 @SDL_IsGamepad_REAL(i32 noundef %0) #12
  br i1 %i.ab, label %bb.e, label %SDL_FindFreePlayerIndex.exit.thread31

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr @SDL_joystick_player_count, align 4 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i14, label %SDL_FindFreePlayerIndex.exit.thread

.lr.ph.i14:                                       ; preds = %bb.e
  %i.ae = load ptr, ptr @SDL_joystick_players, align 8
  %wide.trip.count.i = zext nneg i32 %i.ac to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i14
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i14 ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i15, label %SDL_FindFreePlayerIndex.exit, label %bb.f, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.f
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %SDL_FindFreePlayerIndex.exit

SDL_FindFreePlayerIndex.exit:                     ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit.i
  %.1 = phi i32 [ %i.ai, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.ac, %bb.g ] ; 2 uses
  %2 = icmp sgt i32 %.1, -1
  br i1 %2, label %SDL_FindFreePlayerIndex.exit.thread, label %SDL_FindFreePlayerIndex.exit.thread31

SDL_FindFreePlayerIndex.exit.thread:              ; preds = %.loopexit, %bb.e, %bb.c, %SDL_FindFreePlayerIndex.exit
  %.130 = phi i32 [ %.1, %SDL_FindFreePlayerIndex.exit ], [ 0, %bb.e ], [ %i.z, %bb.c ], [ %i.v, %.loopexit ]
  %i.aj = tail call fastcc zeroext i1 @SDL_SetJoystickIDForPlayerIndex(i32 noundef %.130, i32 noundef %0) ; 0 uses
  br label %SDL_FindFreePlayerIndex.exit.thread31

SDL_FindFreePlayerIndex.exit.thread31:            ; preds = %bb.d, %SDL_FindFreePlayerIndex.exit.thread, %SDL_FindFreePlayerIndex.exit
  %i.ak = tail call fastcc ptr @SDL_UpdateJoystickNameForID(i32 noundef %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store i32 1541, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.al, align 8
  %i.am = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1541) #12
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %SDL_FindFreePlayerIndex.exit.thread31
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %0, ptr %i.an, align 8
  %i.ao = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %SDL_FindFreePlayerIndex.exit.thread31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ap = call zeroext i1 @SDL_IsGamepad_REAL(i32 noundef %0) #12
  store i1 false, ptr @SDL_joystick_being_added, align 1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @SDL_PrivateGamepadAdded(i32 noundef %0) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  ret void
}

declare zeroext i1 @SDL_IsGamepad_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_EventEnabled_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_PushEvent_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_PrivateGamepadAdded(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_IsJoystickBeingAdded() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @SDL_joystick_being_added, align 1
  ret i1 %.b
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_PrivateJoystickForceRecentering(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %union.SDL_Event, align 8           ; 10 uses
  %2 = alloca %union.SDL_Event, align 8           ; 8 uses
  %i.a = tail call i64 @SDL_GetTicksNS_REAL() #12 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.preheader38

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

.preheader38:                                     ; preds = %bb.d, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph41, label %.preheader37

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = phi i32 [ %i.c, %.lr.ph ], [ %i.r, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw [10 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i8, ptr %i.l, align 2, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i64 %indvars.iv to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.q = load i16, ptr %i.p, align 2
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.a, ptr noundef nonnull %0, i8 noundef zeroext %i.o, i16 noundef signext %i.q)
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %i.i, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %.preheader38, !llvm.loop !25

.preheader37:                                     ; preds = %.lr.ph41, %.preheader38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph43, label %.preheader

.lr.ph43:                                         ; preds = %.preheader37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 21
  br label %bb.e

.lr.ph41:                                         ; preds = %.preheader38, %.lr.ph41
  %.140 = phi i32 [ %i.ae, %.lr.ph41 ], [ 0, %.preheader38 ] ; 2 uses
  %i.ad = trunc i32 %.140 to i8
  tail call void @SDL_SendJoystickButton(i64 noundef %i.a, ptr noundef nonnull %0, i8 noundef zeroext %i.ad, i1 noundef zeroext false)
  %i.ae = add nuw nsw i32 %.140, 1                ; 2 uses
  %i.af = load i32, ptr %i.f, align 8
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph41, label %.preheader37, !llvm.loop !26

.preheader:                                       ; preds = %SDL_SendJoystickHat.exit, %.preheader37
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph43, %SDL_SendJoystickHat.exit
  %i.as = phi i32 [ %i.v, %.lr.ph43 ], [ %i.bi, %SDL_SendJoystickHat.exit ]
  %.242 = phi i32 [ 0, %.lr.ph43 ], [ %i.bh, %SDL_SendJoystickHat.exit ] ; 3 uses
  %i.at = trunc i32 %.242 to i8
  %i.au = and i32 %.242, 255                      ; 2 uses
  %.not.i = icmp sgt i32 %i.as, %i.au
  br i1 %.not.i, label %bb.f, label %SDL_SendJoystickHat.exit

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.x, align 8
  %i.aw = zext nneg i32 %i.au to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %SDL_SendJoystickHat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.b.i.i = load i1, ptr @SDL_joystick_allows_background_events, align 1
  br i1 %.b.i.i, label %SDL_PrivateJoystickShouldIgnoreEvent.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = call zeroext i1 @SDL_HasWindows() #12
  br i1 %i.ba, label %bb.i, label %SDL_PrivateJoystickShouldIgnoreEvent.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bb = call ptr @SDL_GetKeyboardFocus_REAL() #12 ; 0 uses
  br label %SDL_PrivateJoystickShouldIgnoreEvent.exit.thread.i

SDL_PrivateJoystickShouldIgnoreEvent.exit.thread.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.x, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aw
  store i8 0, ptr %i.bd, align 1
  store i64 %i.a, ptr %i.y, align 8
  %i.be = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1538) #12
  br i1 %i.be, label %bb.j, label %SDL_SendJoystickHat.exit

bb.j:                                             ; preds = %SDL_PrivateJoystickShouldIgnoreEvent.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 1538, ptr %2, align 8
  store i64 %i.a, ptr %i.z, align 8
  %i.bf = load i32, ptr %0, align 8
  store i32 %i.bf, ptr %i.aa, align 8
  store i8 %i.at, ptr %i.ab, align 4
  store i8 0, ptr %i.ac, align 1
  %i.bg = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %SDL_SendJoystickHat.exit

SDL_SendJoystickHat.exit:                         ; preds = %bb.e, %bb.f, %SDL_PrivateJoystickShouldIgnoreEvent.exit.thread.i, %bb.j
  %i.bh = add nuw nsw i32 %.242, 1                ; 2 uses
  %i.bi = load i32, ptr %i.u, align 8             ; 2 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.e, label %.preheader, !llvm.loop !27

bb.k:                                             ; preds = %.lr.ph48, %._crit_edge
  %i.bk = phi i32 [ %i.ai, %.lr.ph48 ], [ %i.ct, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next56, %._crit_edge ] ; 6 uses
  %i.bl = load ptr, ptr %i.ak, align 8
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv55 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = icmp sgt i32 %i.bn, 0
  %i.bp = sext i32 %i.bk to i64
  %i.bq = icmp slt i64 %indvars.iv55, %i.bp
  %or.cond = and i1 %i.bo, %i.bq
  br i1 %or.cond, label %.lr.ph45.split.preheader, label %._crit_edge

.lr.ph45.split.preheader:                         ; preds = %bb.k
  %i.br = trunc nuw nsw i64 %indvars.iv55 to i32
  br label %.lr.ph45.split

end_hunk_1
