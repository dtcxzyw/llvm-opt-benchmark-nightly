inline.NumInlined: 273
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_CloseJoystick_REAL:bb.a
  tail call void @SDL_free_REAL(ptr noundef %i.bv) #12
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %.loopexit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph61, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.cd) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i32, ptr %i.bw, align 8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %bb.t, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.t, %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ci) #12
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ck) #12
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #12
  %i.cl = load i32, ptr @SDL_joysticks_locked, align 4
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr @SDL_joysticks_locked, align 4
  %.b.i47 = load i1, ptr @SDL_joysticks_initialized, align 1
  %i.cn = icmp ne i32 %i.cm, 0
  %or.cond.i48 = select i1 %.b.i47, i1 true, i1 %i.cn
  br i1 %or.cond.i48, label %.critedge.i49, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.co = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_joystick_lock_pending) #12
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.v, label %.critedge.i49

bb.v:                                             ; preds = %bb.u
  %i.cq = load ptr, ptr @SDL_joystick_lock, align 8 ; 3 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.cq) #12
  %i.cr = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.cr) #12
  store ptr null, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.cq) #12
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.cq) #12
  br label %SDL_UnlockJoysticks_REAL.exit

.critedge.i49:                                    ; preds = %bb.u, %._crit_edge
  %i.cs = load ptr, ptr @SDL_joystick_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.cs) #12
  br label %SDL_UnlockJoysticks_REAL.exit

SDL_UnlockJoysticks_REAL.exit:                    ; preds = %.critedge.i49, %bb.v, %.critedge.i44, %bb.g, %.critedge.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext i1 @SDL_IsJoystickHIDAPI(i64 %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %1, 71776119061217280
  %i.b = icmp eq i64 %i.a, 29273397577908224
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext i1 @SDL_IsJoystickXInput(i64 %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %1, 71776119061217280
  %i.b = icmp eq i64 %i.a, 33776997205278720
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext i1 @SDL_IsJoystickRAWINPUT(i64 %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %1, 71776119061217280
  %i.b = icmp eq i64 %i.a, 32088147345014784
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext i1 @SDL_IsJoystickWGI(i64 %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %1, 71776119061217280
  %i.b = icmp eq i64 %i.a, 33495522228568064
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc void @AttemptSensorFusion(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_InitSubSystem_REAL(i32 noundef 32768) #12
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SDL_GetSensors_REAL(ptr noundef null) #12 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %.preheader41

.preheader41:                                     ; preds = %bb.b
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not3542 = icmp eq i32 %i.c, 0
  br i1 %.not3542, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %SDL_PrivateJoystickAddSensor.exit39
  %i.h = phi i32 [ %i.c, %.lr.ph ], [ %i.al, %SDL_PrivateJoystickAddSensor.exit39 ] ; 4 uses
  %.043 = phi i32 [ 0, %.lr.ph ], [ %i.ai, %SDL_PrivateJoystickAddSensor.exit39 ]
  %i.i = load i32, ptr %i.d, align 4
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %bb.d, label %SDL_PrivateJoystickAddSensor.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @SDL_GetSensorTypeForID_REAL(i32 noundef %i.h) #12
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %SDL_PrivateJoystickAddSensor.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call zeroext i1 @SDL_InitSubSystem_REAL(i32 noundef 32768) #12 ; 0 uses
  store i32 %i.h, ptr %i.d, align 4
  %i.m = load i32, ptr %i.e, align 8              ; 2 uses
  %i.n = add nsw i32 %i.m, 1                      ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = sext i32 %i.n to i64
  %i.q = mul nsw i64 %i.p, 24
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
  %i.ai = add i32 %.043, 1                        ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not35 = icmp eq i32 %i.al, 0
  br i1 %.not35, label %._crit_edge, label %bb.c, !llvm.loop !19

._crit_edge:                                      ; preds = %SDL_PrivateJoystickAddSensor.exit39, %.preheader41
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.b) #12
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  tail call void @SDL_QuitSubSystem_REAL(i32 noundef 32768) #12
  %i.am = tail call i32 @SDL_GetPrimaryDisplay_REAL() #12
  %i.an = tail call i32 @SDL_GetNaturalDisplayOrientation_REAL(i32 noundef %i.am) #12
  %i.ao = icmp eq i32 %i.an, 1                    ; 3 uses
  %. = select i1 %i.ao, i64 272, i64 276
  %.55 = select i1 %i.ao, float 1.000000e+00, float -1.000000e+00
  %.56 = select i1 %i.ao, i64 300, i64 296
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store float %.55, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %.56
  store float -1.000000e+00, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float 1.000000e+00, ptr %4, align 4
  br i1 %1, label %.preheader40, label %.loopexit

.preheader40:                                     ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.aq = load <4 x float>, ptr %i.ap, align 4
  %i.ar = fneg <4 x float> %i.aq
  store <4 x float> %i.ar, ptr %i.ap, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.at = load float, ptr %i.as, align 4
  %i.au = fneg float %i.at
  store float %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float -1.000000e+00, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.aw, align 4
  %i.ay = fneg <2 x float> %i.ax
  store <2 x float> %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fneg float %i.ba
  store float %i.bb, ptr %i.az, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader40, %bb.j, %bb.a
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
define hidden noundef zeroext i1 @SDL_IsJoystickVirtual_REAL(i32 noundef %0) local_unnamed_addr #1 {
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
  %i.g = tail call i32 %i.f() #12, !inline_history !7 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.preheader.i, %.critedge.i
  %.01824.i = phi i32 [ %i.k, %.critedge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_JoystickDriver, i64 80), align 8
  %i.j = tail call i32 %i.i(i32 noundef %.01824.i) #12, !inline_history !7
  %.not22.i = icmp eq i32 %i.j, %0
  br i1 %.not22.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.k = add nuw nsw i32 %.01824.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.k, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.critedge.i, %.preheader.preheader.i
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 8), align 8
  %i.m = tail call i32 %i.l() #12, !inline_history !7 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.1.i, label %._crit_edge.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.critedge.1.i
  %.01824.1.i = phi i32 [ %i.q, %.critedge.1.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_LINUX_JoystickDriver, i64 80), align 8
  %i.p = tail call i32 %i.o(i32 noundef %.01824.1.i) #12, !inline_history !7
  %.not22.1.i = icmp eq i32 %i.p, %0
  br i1 %.not22.1.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.lr.ph.1.i
  %i.q = add nuw nsw i32 %.01824.1.i, 1           ; 2 uses
  %exitcond.1.not.i = icmp eq i32 %i.q, %i.m
  br i1 %exitcond.1.not.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !8

._crit_edge.1.i:                                  ; preds = %.critedge.1.i, %._crit_edge.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 8), align 8
  %i.s = tail call i32 %i.r() #12, !inline_history !7 ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.2.i, label %.loopexit.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.critedge.2.i
  %.01824.2.i = phi i32 [ %i.w, %.critedge.2.i ], [ 0, %._crit_edge.1.i ] ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_VIRTUAL_JoystickDriver, i64 80), align 8
  %i.v = tail call i32 %i.u(i32 noundef %.01824.2.i) #12, !inline_history !7
  %.not22.2.i = icmp eq i32 %i.v, %0
  br i1 %.not22.2.i, label %SDL_GetDriverAndJoystickIndex.exit, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.lr.ph.2.i
  %i.w = add nuw nsw i32 %.01824.2.i, 1           ; 2 uses
  %exitcond.2.not.i = icmp eq i32 %i.w, %i.s
  br i1 %exitcond.2.not.i, label %.loopexit.i, label %.lr.ph.2.i, !llvm.loop !8

.loopexit.i:                                      ; preds = %.critedge.2.i, %._crit_edge.1.i, %bb.a
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44, i32 noundef %0) #12 ; 0 uses
  br label %SDL_GetDriverAndJoystickIndex.exit

SDL_GetDriverAndJoystickIndex.exit:               ; preds = %.lr.ph.i, %.lr.ph.1.i, %.lr.ph.2.i, %.loopexit.i
  %.3.i = phi i1 [ false, %.loopexit.i ], [ true, %.lr.ph.2.i ], [ false, %.lr.ph.1.i ], [ false, %.lr.ph.i ]
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
  ret i1 %.3.i
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetJoystickVirtualAxis_REAL(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #1 {
end_hunk_0
