Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_joystick?download=true
inline.NumInlined: 273
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_GetJoystickPathForID_REAL:bb.a

.critedge.2.i:                                    ; preds = %.lr.ph.2.i
  %i.w = add nuw nsw i32 %.01724.2.i, 1           ; 2 uses
  %exitcond.2.not.i = icmp eq i32 %i.w, %i.s
  br i1 %exitcond.2.not.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.lr.ph.2.i, !llvm.loop !1

SDL_GetDriverAndJoystickIndex.exit:               ; preds = %.critedge.2.i, %bb.a, %._crit_edge.1.i
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44, i32 noundef %0) #12 ; 0 uses
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph.1.i, %.lr.ph.2.i
  %.04.ph = phi ptr [ @SDL_VIRTUAL_JoystickDriver, %.lr.ph.2.i ], [ @SDL_LINUX_JoystickDriver, %.lr.ph.1.i ], [ @SDL_HIDAPI_JoystickDriver, %.lr.ph.i ]
  %.03.ph = phi i32 [ %.01724.2.i, %.lr.ph.2.i ], [ %.01724.1.i, %.lr.ph.1.i ], [ %.01724.i, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.04.ph, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call ptr %i.z(i32 noundef %.03.ph) #12
  %i.ab = tail call ptr @SDL_GetPersistentString(ptr noundef %i.aa) #12
  br label %bb.b

bb.b:                                             ; preds = %SDL_GetDriverAndJoystickIndex.exit, %.loopexit
  %.0 = phi ptr [ %i.ab, %.loopexit ], [ null, %SDL_GetDriverAndJoystickIndex.exit ] ; 2 uses
  %i.ac = load i32, ptr @SDL_joysticks_locked, align 4
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.ae = icmp ne i32 %i.ad, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.ae
  br i1 %or.cond.i, label %.critedge.i2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %.critedge.i2

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ah) #12
  %i.ai = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ai) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ah) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.ah) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i2:                                     ; preds = %bb.c, %bb.b
  %i.aj = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.aj) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %bb.d, %.critedge.i2
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_UnlockJoysticks_REAL.exit
  %i.ak = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %SDL_UnlockJoysticks_REAL.exit
  ret ptr %.0
}

declare ptr @SDL_GetPersistentString(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetJoystickPlayerIndexForID_REAL(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = load i32, ptr @SDL_joystick_player_count, align 4 ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %SDL_GetPlayerIndexForJoystickID.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr @SDL_joystick_players, align 8
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %0, %i.i
  br i1 %i.j, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetPlayerIndexForJoystickID.exit, label %bb.b, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %SDL_GetPlayerIndexForJoystickID.exit

SDL_GetPlayerIndexForJoystickID.exit:             ; preds = %bb.c, %bb.a, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.k, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %SDL_GetPlayerIndexForJoystickID.exit
  %i.m = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.o) #12
  %i.p = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.o) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.o) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i:                                      ; preds = %bb.d, %SDL_GetPlayerIndexForJoystickID.exit
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %bb.e, %.critedge.i
  %i.r = icmp eq i32 %.0.lcssa.i, %i.e
  %spec.store.select.i = select i1 %i.r, i32 -1, i32 %.0.lcssa.i
  ret i32 %spec.store.select.i
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_OpenJoystick_REAL(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.SDL_vidpid_list, align 8    ; 13 uses
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %.loopexit171, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 8), align 8
  %i.g = tail call i32 %i.f() #12, !inline_history !0 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.preheader.i, %.critedge.i
  %.01724.i = phi i32 [ %i.k, %.critedge.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 80), align 8
  %i.j = tail call i32 %i.i(i32 noundef %.01724.i) #12, !inline_history !0
  %.not22.i = icmp eq i32 %i.j, %0
  br i1 %.not22.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.k = add nuw nsw i32 %.01724.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.k, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.critedge.i, %.preheader.preheader.i
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 8), align 8
  %i.m = tail call i32 %i.l() #12, !inline_history !0 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.1.i, label %._crit_edge.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.critedge.1.i
  %.01724.1.i = phi i32 [ %i.q, %.critedge.1.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 80), align 8
  %i.p = tail call i32 %i.o(i32 noundef %.01724.1.i) #12, !inline_history !0
  %.not22.1.i = icmp eq i32 %i.p, %0
  br i1 %.not22.1.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.lr.ph.1.i
  %i.q = add nuw nsw i32 %.01724.1.i, 1           ; 2 uses
  %exitcond.1.not.i = icmp eq i32 %i.q, %i.m
  br i1 %exitcond.1.not.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !1

._crit_edge.1.i:                                  ; preds = %.critedge.1.i, %._crit_edge.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 8), align 8
  %i.s = tail call i32 %i.r() #12, !inline_history !0 ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.2.i, label %.loopexit171

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.critedge.2.i
  %.01724.2.i = phi i32 [ %i.w, %.critedge.2.i ], [ 0, %._crit_edge.1.i ] ; 3 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 80), align 8
  %i.v = tail call i32 %i.u(i32 noundef %.01724.2.i) #12, !inline_history !0
  %.not22.2.i = icmp eq i32 %i.v, %0
  br i1 %.not22.2.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.lr.ph.2.i
  %i.w = add nuw nsw i32 %.01724.2.i, 1           ; 2 uses
  %exitcond.2.not.i = icmp eq i32 %i.w, %i.s
  br i1 %exitcond.2.not.i, label %.loopexit171, label %.lr.ph.2.i, !llvm.loop !1

SDL_GetDriverAndJoystickIndex.exit:               ; preds = %.lr.ph.i, %.lr.ph.1.i, %.lr.ph.2.i
  %.0156 = phi ptr [ @SDL_VIRTUAL_JoystickDriver, %.lr.ph.2.i ], [ @SDL_LINUX_JoystickDriver, %.lr.ph.1.i ], [ @SDL_HIDAPI_JoystickDriver, %.lr.ph.i ] ; 7 uses
  %.0155 = phi i32 [ %.01724.2.i, %.lr.ph.2.i ], [ %.01724.1.i, %.lr.ph.1.i ], [ %.01724.i, %.lr.ph.i ] ; 4 uses
  %.095178 = load ptr, ptr @SDL_joysticks, align 8 ; 2 uses
  %.not179 = icmp eq ptr %.095178, null
  br i1 %.not179, label %._crit_edge, label %.lr.ph

.loopexit171:                                     ; preds = %.critedge.2.i, %bb.a, %._crit_edge.1.i
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44, i32 noundef %0) #12 ; 0 uses
  %i.y = load i32, ptr @SDL_joysticks_locked, align 4
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.aa
  br i1 %or.cond.i, label %.critedge.i112, label %bb.b

bb.b:                                             ; preds = %.loopexit171
  %i.ab = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %.critedge.i112

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ad) #12
  %i.ae = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ae) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ad) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.ad) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i112:                                   ; preds = %bb.b, %.loopexit171
  %i.af = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.af) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.lr.ph:                                           ; preds = %SDL_GetDriverAndJoystickIndex.exit, %bb.g
  %.095180 = phi ptr [ %.095, %bb.g ], [ %.095178, %SDL_GetDriverAndJoystickIndex.exit ] ; 5 uses
  %i.ag = load i32, ptr %.095180, align 8
  %i.ah = icmp eq i32 %0, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.095180, i64 340 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = load i32, ptr @SDL_joysticks_locked, align 4
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr @SDL_joysticks_locked, align 4
  %.b.i113 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.an = icmp ne i32 %i.am, 0
  %or.cond.i114 = select i1 %.b.i113, i1 true, i1 %i.an
  br i1 %or.cond.i114, label %.critedge.i115, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %.critedge.i115

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.aq) #12
  %i.ar = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ar) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.aq) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.aq) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i115:                                   ; preds = %bb.e, %bb.d
  %i.as = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.as) #12
  br label %SDL_UnlockJoysticks_REAL.exit

bb.g:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.095180, i64 344
  %.095 = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not = icmp eq ptr %.095, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.g, %SDL_GetDriverAndJoystickIndex.exit
  %i.au = tail call noalias dereferenceable_or_null(352) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 352) #13 ; 46 uses
  %.not104 = icmp eq ptr %i.au, null
  br i1 %.not104, label %bb.h, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.av = load i32, ptr @SDL_joysticks_locked, align 4
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr @SDL_joysticks_locked, align 4
  %.b.i117 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.ax = icmp ne i32 %i.aw, 0
  %or.cond.i118 = select i1 %.b.i117, i1 true, i1 %i.ax
  br i1 %or.cond.i118, label %.critedge.i119, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.j, label %.critedge.i119

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ba) #12
  %i.bb = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.bb) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ba) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.ba) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i119:                                   ; preds = %bb.i, %bb.h
  %i.bc = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.bc) #12
  br label %SDL_UnlockJoysticks_REAL.exit

bb.k:                                             ; preds = %._crit_edge
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %i.au, i32 noundef 4, i1 noundef zeroext true) #12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  store ptr %.0156, ptr %i.bd, align 8
  store i32 %0, ptr %i.au, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  store i8 1, ptr %i.be, align 8
  %i.bf = tail call i64 @SDL_GetTicks_REAL() #12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 236
  store i32 -1, ptr %i.bh, align 4
  %2 = icmp eq ptr %.0156, @SDL_VIRTUAL_JoystickDriver
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 65
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0156, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call zeroext i1 %i.bk(ptr noundef nonnull %i.au, i32 noundef %.0155) #12
  br i1 %i.bl, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %i.au, i32 noundef 4, i1 noundef zeroext false) #12
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.au) #12
  %i.bm = load i32, ptr @SDL_joysticks_locked, align 4
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr @SDL_joysticks_locked, align 4
  %.b.i121 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.bo = icmp ne i32 %i.bn, 0
  %or.cond.i122 = select i1 %.b.i121, i1 true, i1 %i.bo
  br i1 %or.cond.i122, label %.critedge.i123, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %.critedge.i123

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.br) #12
  %i.bs = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.bs) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.br) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.br) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i123:                                   ; preds = %bb.m, %bb.l
  %i.bt = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.bt) #12
  br label %SDL_UnlockJoysticks_REAL.exit

bb.o:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %.0156, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call ptr %i.bv(i32 noundef %.0155) #12 ; 2 uses
  %.not105 = icmp eq ptr %i.bw, null
  br i1 %.not105, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.bw) #12
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.0156, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call ptr %i.ca(i32 noundef %.0155) #12 ; 2 uses
  %.not106 = icmp eq ptr %i.cb, null
  br i1 %.not106, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.cb) #12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.cc, ptr %i.cd, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0156, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call { i64, i64 } %i.cg(i32 noundef %.0155) #12 ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  store i64 %i.ci, ptr %i.ce, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  store i64 %i.cj, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 68 ; 5 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.cn, i64 noundef 10) #13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store ptr %i.co, ptr %i.cp, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.ct, i64 noundef 8) #13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr %i.cu, ptr %i.cv, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.cz, i64 noundef 1) #13
  %i.db = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  store ptr %i.da, ptr %i.db, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.au, i64 112 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.df, i64 noundef 1) #13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  store ptr %i.dg, ptr %i.dh, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8
  %.not107 = icmp eq ptr %i.dl, null
  br i1 %.not107, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = load i32, ptr %i.cq, align 8
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.dp = load ptr, ptr %i.do, align 8
  %.not108 = icmp eq ptr %i.dp, null
  br i1 %.not108, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dq = load i32, ptr %i.cw, align 8
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.dt = load ptr, ptr %i.ds, align 8
  %.not109 = icmp eq ptr %i.dt, null
  br i1 %.not109, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.du = load i32, ptr %i.dc, align 8
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.dx = load ptr, ptr %i.dw, align 8
  %.not110 = icmp eq ptr %i.dx, null
  br i1 %.not110, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab
  tail call void @SDL_CloseJoystick_REAL(ptr noundef nonnull %i.au)
  %i.dy = load i32, ptr @SDL_joysticks_locked, align 4
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr @SDL_joysticks_locked, align 4
  %.b.i125 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.ea = icmp ne i32 %i.dz, 0
  %or.cond.i126 = select i1 %.b.i125, i1 true, i1 %i.ea
  br i1 %or.cond.i126, label %.critedge.i127, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ak, label %.critedge.i127

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ed) #12
  %i.ee = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ee) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ed) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.ed) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i127:                                   ; preds = %bb.aj, %bb.ai
  %i.ef = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ef) #12
  br label %SDL_UnlockJoysticks_REAL.exit

bb.al:                                            ; preds = %bb.ah, %bb.ag
  %i.eg = icmp eq i32 %i.di, 2
  br i1 %i.eg, label %.lr.ph182, label %bb.am
end_hunk_0
begin_hunk_1_@AttemptSensorFusion:bb.a
  %i.r = tail call ptr @SDL_realloc_REAL(ptr noundef %i.o, i64 noundef %i.q) #14 ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %SDL_PrivateJoystickAddSensor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %i.m to i64
  %i.t = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.t, align 4
  store i32 %i.n, ptr %i.e, align 8
  store ptr %i.r, ptr %i.f, align 8
  br label %SDL_PrivateJoystickAddSensor.exit

SDL_PrivateJoystickAddSensor.exit:                ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.v = load i32, ptr %i.g, align 8
  %.not37 = icmp eq i32 %i.v, 0
  br i1 %.not37, label %bb.g, label %SDL_PrivateJoystickAddSensor.exit39

bb.g:                                             ; preds = %SDL_PrivateJoystickAddSensor.exit
  %i.w = tail call i32 @SDL_GetSensorTypeForID_REAL(i32 noundef %i.h) #12
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.h, label %SDL_PrivateJoystickAddSensor.exit39

bb.h:                                             ; preds = %bb.g
  %i.y = tail call zeroext i1 @SDL_InitSubSystem_REAL(i32 noundef 32768) #12 ; 0 uses
  store i32 %i.h, ptr %i.g, align 8
  %i.z = load i32, ptr %i.e, align 8              ; 2 uses
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = sext i32 %i.aa to i64
  %i.ad = mul nsw i64 %i.ac, 24
  %i.ae = tail call ptr @SDL_realloc_REAL(ptr noundef %i.ab, i64 noundef %i.ad) #14 ; 3 uses
  %.not.i38 = icmp eq ptr %i.ae, null
  br i1 %.not.i38, label %SDL_PrivateJoystickAddSensor.exit39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = sext i32 %i.z to i64
  %i.ag = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  store i32 2, ptr %i.ag, align 4
  store i32 %i.aa, ptr %i.e, align 8
  store ptr %i.ae, ptr %i.f, align 8
  br label %SDL_PrivateJoystickAddSensor.exit39

SDL_PrivateJoystickAddSensor.exit39:              ; preds = %bb.i, %bb.h, %bb.g, %SDL_PrivateJoystickAddSensor.exit
  %i.ai = add i32 %.03043, 1                      ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not35 = icmp eq i32 %i.al, 0
  br i1 %.not35, label %._crit_edge, label %bb.c, !llvm.loop !20

._crit_edge:                                      ; preds = %SDL_PrivateJoystickAddSensor.exit39, %.preheader41
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.b) #12
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  tail call void @SDL_QuitSubSystem_REAL(i32 noundef 32768) #12
  %i.am = tail call i32 @SDL_GetPrimaryDisplay_REAL() #12
  %i.an = tail call i32 @SDL_GetNaturalDisplayOrientation_REAL(i32 noundef %i.am) #12
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272
  store float 1.000000e+00, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 300
  store float -1.000000e+00, ptr %i.aq, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 276
  store float -1.000000e+00, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296
  store float -1.000000e+00, ptr %i.as, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float 1.000000e+00, ptr %i.at, align 4
  br i1 %1, label %.preheader40, label %.loopexit

.preheader40:                                     ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.av = load <4 x float>, ptr %i.au, align 4
  %i.aw = fneg <4 x float> %i.av
  store <4 x float> %i.aw, ptr %i.au, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = fneg float %i.ay
  store float %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float -1.000000e+00, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.bb, align 4
  %i.bd = fneg <2 x float> %i.bc
  store <2 x float> %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fneg float %i.bf
  store float %i.bg, ptr %i.be, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader40, %bb.m, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_AttachVirtualJoystick_REAL(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %i.f = tail call i32 @SDL_JoystickAttachVirtualInner(ptr noundef %0) #12
  %i.g = load i32, ptr @SDL_joysticks_locked, align 4
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.i = icmp ne i32 %i.h, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.l) #12
  %i.m = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.m) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.l) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.l) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.n = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.n) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %bb.c, %.critedge.i
  ret i32 %i.f
}

declare i32 @SDL_JoystickAttachVirtualInner(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_DetachVirtualJoystick_REAL(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %i.f = tail call zeroext i1 @SDL_JoystickDetachVirtualInner(i32 noundef %0) #12
  %i.g = load i32, ptr @SDL_joysticks_locked, align 4
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.i = icmp ne i32 %i.h, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.l) #12
  %i.m = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.m) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.l) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.l) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.n = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.n) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %bb.c, %.critedge.i
  ret i1 %i.f
}

declare zeroext i1 @SDL_JoystickDetachVirtualInner(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickVirtual_REAL(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 8), align 8
  %i.g = tail call i32 %i.f() #12, !inline_history !0 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.preheader.i, %.critedge.i
  %.01724.i = phi i32 [ %i.k, %.critedge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 80), align 8
  %i.j = tail call i32 %i.i(i32 noundef %.01724.i) #12, !inline_history !0
  %.not22.i = icmp eq i32 %i.j, %0
  br i1 %.not22.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.k = add nuw nsw i32 %.01724.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.k, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.critedge.i, %.preheader.preheader.i
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 8), align 8
  %i.m = tail call i32 %i.l() #12, !inline_history !0 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.1.i, label %._crit_edge.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.critedge.1.i
  %.01724.1.i = phi i32 [ %i.q, %.critedge.1.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 80), align 8
  %i.p = tail call i32 %i.o(i32 noundef %.01724.1.i) #12, !inline_history !0
  %.not22.1.i = icmp eq i32 %i.p, %0
  br i1 %.not22.1.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.lr.ph.1.i
  %i.q = add nuw nsw i32 %.01724.1.i, 1           ; 2 uses
  %exitcond.1.not.i = icmp eq i32 %i.q, %i.m
  br i1 %exitcond.1.not.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !1

._crit_edge.1.i:                                  ; preds = %.critedge.1.i, %._crit_edge.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 8), align 8
  %i.s = tail call i32 %i.r() #12, !inline_history !0 ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.2.i, label %.loopexit.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.critedge.2.i
  %.01724.2.i = phi i32 [ %i.w, %.critedge.2.i ], [ 0, %._crit_edge.1.i ] ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 80), align 8
  %i.v = tail call i32 %i.u(i32 noundef %.01724.2.i) #12, !inline_history !0
  %.not22.2.i = icmp eq i32 %i.v, %0
  br i1 %.not22.2.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.lr.ph.2.i
  %i.w = add nuw nsw i32 %.01724.2.i, 1           ; 2 uses
  %exitcond.2.not.i = icmp eq i32 %i.w, %i.s
  br i1 %exitcond.2.not.i, label %.loopexit.i, label %.lr.ph.2.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.critedge.2.i, %._crit_edge.1.i, %bb.a
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44, i32 noundef %0) #12 ; 0 uses
  br label %SDL_GetDriverAndJoystickIndex.exit

SDL_GetDriverAndJoystickIndex.exit:               ; preds = %.lr.ph.i, %.lr.ph.1.i, %.lr.ph.2.i, %.loopexit.i
  %.0 = phi ptr [ undef, %.loopexit.i ], [ @SDL_VIRTUAL_JoystickDriver, %.lr.ph.2.i ], [ @SDL_LINUX_JoystickDriver, %.lr.ph.1.i ], [ @SDL_HIDAPI_JoystickDriver, %.lr.ph.i ]
  %.3.i = phi i1 [ false, %.loopexit.i ], [ true, %.lr.ph.2.i ], [ true, %.lr.ph.1.i ], [ true, %.lr.ph.i ]
  %i.y = load i32, ptr @SDL_joysticks_locked, align 4
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.aa
  br i1 %or.cond.i, label %.critedge.i3, label %bb.b

bb.b:                                             ; preds = %SDL_GetDriverAndJoystickIndex.exit
  %i.ab = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %.critedge.i3

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ad) #12
  %i.ae = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ae) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ad) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.ad) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i3:                                     ; preds = %bb.b, %SDL_GetDriverAndJoystickIndex.exit
  %i.af = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.af) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %bb.c, %.critedge.i3
  %1 = icmp eq ptr %.0, @SDL_VIRTUAL_JoystickDriver
  %or.cond = and i1 %.3.i, %1
  ret i1 %or.cond
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetJoystickVirtualAxis_REAL(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 4) #12
  br i1 %i.h, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread15

SDL_ObjectValid.exit.thread15:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12 ; 0 uses
  %i.j = load i32, ptr @SDL_joysticks_locked, align 4
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread15
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

.critedge.i:                                      ; preds = %bb.c, %SDL_ObjectValid.exit.thread15
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.s = load i8, ptr %i.r, align 1, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #12 ; 0 uses
  %i.v = load i32, ptr @SDL_joysticks_locked, align 4
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr @SDL_joysticks_locked, align 4
  %.b.i6 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.x = icmp ne i32 %i.w, 0
  %or.cond.i7 = select i1 %.b.i6, i1 true, i1 %i.x
  br i1 %or.cond.i7, label %.critedge.i8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.critedge.i8

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.aa) #12
  %i.ab = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ab) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.aa) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.aa) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i8:                                     ; preds = %bb.f, %bb.e
  %i.ac = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ac) #12
  br label %SDL_UnlockJoysticks_REAL.exit

bb.h:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.ad = tail call zeroext i1 @SDL_SetJoystickVirtualAxisInner(ptr noundef nonnull %0, i32 noundef %1, i16 noundef signext %2) #12 ; 2 uses
  %i.ae = load i32, ptr @SDL_joysticks_locked, align 4
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr @SDL_joysticks_locked, align 4
  %.b.i10 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond.i11 = select i1 %.b.i10, i1 true, i1 %i.ag
  br i1 %or.cond.i11, label %.critedge.i12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %.critedge.i12

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.aj) #12
  %i.ak = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ak) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.aj) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.aj) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i12:                                    ; preds = %bb.i, %bb.h
  %i.al = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.al) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %.critedge.i12, %bb.j, %.critedge.i8, %bb.g, %.critedge.i, %bb.d
  %.0 = phi i1 [ false, %.critedge.i8 ], [ false, %.critedge.i ], [ false, %bb.d ], [ false, %bb.g ], [ %i.ad, %bb.j ], [ %i.ad, %.critedge.i12 ]
  ret i1 %.0
}

declare zeroext i1 @SDL_SetJoystickVirtualAxisInner(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetJoystickVirtualBall_REAL(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef 1) #12 ; 0 uses
  %i.b = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #12
  %i.c = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending, i32 noundef -1) #12 ; 0 uses
  %i.d = load i32, ptr @SDL_joysticks_locked, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @SDL_joysticks_locked, align 4
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 4) #12
  br i1 %i.h, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread16

SDL_ObjectValid.exit.thread16:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12 ; 0 uses
  %i.j = load i32, ptr @SDL_joysticks_locked, align 4
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr @SDL_joysticks_locked, align 4
  %.b.i = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond.i = select i1 %.b.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread16
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

.critedge.i:                                      ; preds = %bb.c, %SDL_ObjectValid.exit.thread16
  %i.q = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.q) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.s = load i8, ptr %i.r, align 1, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #12 ; 0 uses
  %i.v = load i32, ptr @SDL_joysticks_locked, align 4
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr @SDL_joysticks_locked, align 4
  %.b.i7 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.x = icmp ne i32 %i.w, 0
  %or.cond.i8 = select i1 %.b.i7, i1 true, i1 %i.x
  br i1 %or.cond.i8, label %.critedge.i9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.critedge.i9

end_hunk_1
