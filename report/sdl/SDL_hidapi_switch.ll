Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_switch?download=true
inline.NumInlined: 144
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@HIDAPI_DriverSwitch_SendJoystickEffect:bb.a
  store i8 %i.o, ptr %i.p, align 1
  %i.q = add i8 %i.o, 1
  %i.r = and i8 %i.q, 15
  store i8 %i.r, ptr %i.n, align 4
  %i.s = tail call i64 @SDL_GetTicks_REAL() #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 84
  %i.w = load i8, ptr %i.v, align 4, !range !4, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = select i1 %i.x, i64 49, i64 64           ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.a, ptr noundef nonnull align 2 dereferenceable(10) %i.m, i64 10, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.aa = add nsw i64 %i.y, -10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.z, i8 0, i64 %i.aa, i1 false)
  %i.ab = trunc nuw nsw i64 %i.y to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !4, !noundef !5
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i32 @SDL_hid_write_REAL(ptr noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef %i.y) #8
  br label %WriteRumble.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = tail call zeroext i1 @SDL_HIDAPI_LockRumble() #8
  br i1 %i.ai, label %bb.g, label %WriteRumble.exit.thread

WriteRumble.exit.thread:                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %HasHomeLED.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = call i32 @SDL_HIDAPI_SendRumbleAndUnlock(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef range(i32 10, 65) %i.ab) #8
  br label %WriteRumble.exit

WriteRumble.exit:                                 ; preds = %bb.e, %bb.g
  %.018.in.i.i = phi i32 [ %i.ah, %bb.e ], [ %i.ak, %bb.g ]
  %.018.i.i = icmp sgt i32 %.018.in.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %.018.i.i, label %bb.h, label %HasHomeLED.exit.thread

bb.h:                                             ; preds = %WriteRumble.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 145
  store i8 0, ptr %i.am, align 1
  br label %HasHomeLED.exit.thread

bb.i:                                             ; preds = %bb.a
  %i.an = add i32 %3, -2
  %or.cond = icmp ult i32 %i.an, 255
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %2, align 1                ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  switch i8 %i.ao, label %.split [
    i8 3, label %bb.k
    i8 56, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ar = load i8, ptr %i.aq, align 4, !range !4, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.split, label %HasHomeLED.exit.thread

.split:                                           ; preds = %bb.k, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.au = trunc i32 %3 to i8
  %i.av = add i8 %i.au, -1
  %i.aw = tail call fastcc zeroext i1 @WriteSubcommand(ptr noundef %i.c, i32 noundef %i.ap, ptr noundef nonnull %i.at, i8 noundef zeroext %i.av, ptr noundef null)
  br label %HasHomeLED.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i16, ptr %i.ay, align 8            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 34
  %i.bb = load i16, ptr %i.ba, align 2            ; 2 uses
  %i.bc = icmp eq i16 %i.az, 0
  %i.bd = icmp eq i16 %i.bb, 0
  %or.cond.i = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond.i, label %HasHomeLED.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = icmp eq i16 %i.az, 3853
  %i.bf = icmp eq i16 %i.bb, 246
  %or.cond5.i = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond5.i, label %HasHomeLED.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  switch i32 %i.bh, label %HasHomeLED.exit [
    i32 0, label %HasHomeLED.exit.thread
    i32 6, label %HasHomeLED.exit.thread
  ]

HasHomeLED.exit:                                  ; preds = %bb.n
  %i.bi = icmp ne i16 %i.az, 1406
  %i.bj = icmp ult i32 %i.bh, 4
  %or.cond16.not.i = or i1 %i.bi, %i.bj
  br i1 %or.cond16.not.i, label %.split24, label %HasHomeLED.exit.thread

.split24:                                         ; preds = %HasHomeLED.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bl = trunc i32 %3 to i8
  %i.bm = add i8 %i.bl, -1
  %i.bn = tail call fastcc zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.c, i32 noundef 56, ptr noundef nonnull %i.bk, i8 noundef zeroext %i.bm, ptr noundef null)
  br label %HasHomeLED.exit.thread

bb.o:                                             ; preds = %bb.i
  %i.bo = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27) #8
  br label %HasHomeLED.exit.thread

HasHomeLED.exit.thread:                           ; preds = %bb.n, %bb.n, %bb.m, %bb.l, %.split, %.split24, %WriteRumble.exit.thread, %bb.k, %HasHomeLED.exit, %bb.c, %bb.h, %WriteRumble.exit, %bb.o
  %.2 = phi i1 [ %i.bo, %bb.o ], [ false, %WriteRumble.exit ], [ %i.f, %bb.c ], [ true, %bb.h ], [ true, %HasHomeLED.exit ], [ %i.bn, %.split24 ], [ true, %bb.k ], [ false, %WriteRumble.exit.thread ], [ %i.aw, %.split ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.n ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSwitch_SetJoystickSensorsEnabled(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = zext i1 %2 to i8                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8              ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.b, label %UpdateEnhancedModeOnApplicationUsage.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @SetEnhancedReportHint(ptr noundef nonnull %i.e, i32 noundef 1)
  br label %UpdateEnhancedModeOnApplicationUsage.exit

UpdateEnhancedModeOnApplicationUsage.exit:        ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.j = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %UpdateEnhancedModeOnApplicationUsage.exit
  br i1 %2, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.m = load i8, ptr %i.l, align 4, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %UpdateEnhancedModeOnApplicationUsage.exit
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27) #8
  br label %bb.q

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 153 ; 2 uses
  store i8 %i.c, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 0, ptr %i.q, align 8
  %i.r = tail call i64 @SDL_GetTicksNS_REAL() #8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load i8, ptr %i.p, align 1, !range !4, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr i8, ptr %i.e, i64 36
  %.val.i = load i8, ptr %i.v, align 4            ; 4 uses
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  switch i8 %.val.i, label %bb.h [
    i8 0, label %GetSensorInputMode.exit.i
    i8 63, label %GetSensorInputMode.exit.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %GetSensorInputMode.exit.i

bb.i:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.y = load i8, ptr %i.x, align 4, !range !4, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  %..i.i = select i1 %i.z, i8 63, i8 48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i4.i = phi i8 [ %.val.i, %bb.i ], [ %..i.i, %bb.j ] ; 4 uses
  %i.aa = load i32, ptr %i.f, align 8
  switch i32 %i.aa, label %bb.o [
    i32 0, label %.thread15.i.i
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %cond.i.i = icmp eq i8 %.0.i4.i, 63
  %spec.select18.i.i = select i1 %cond.i.i, i8 48, i8 %.0.i4.i
  br label %GetSensorInputMode.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = icmp eq i16 %i.ad, 1406
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 34
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, -2
  %switch.i.i = icmp eq i16 %i.ah, 8198
  br i1 %switch.i.i, label %GetSensorInputMode.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ai = icmp eq i8 %.0.i4.i, 63
  br i1 %i.ai, label %.thread15.i.i, label %GetSensorInputMode.exit.i

.thread15.i.i:                                    ; preds = %bb.o, %bb.k
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.al = load i8, ptr %i.ak, align 4, !range !4, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  %spec.select.i.i = select i1 %i.am, i8 63, i8 48
  br label %GetSensorInputMode.exit.i

GetSensorInputMode.exit.i:                        ; preds = %.thread15.i.i, %bb.o, %bb.n, %bb.l, %bb.h, %bb.g, %bb.g
  %.0.i = phi i8 [ 48, %bb.g ], [ %.val.i, %bb.h ], [ 48, %bb.g ], [ %spec.select.i.i, %.thread15.i.i ], [ %.0.i4.i, %bb.o ], [ %spec.select18.i.i, %bb.l ], [ 48, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.0.i, ptr %i.b, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 37 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %.0.i, %i.ao
  br i1 %i.ap, label %UpdateInputMode.exit, label %bb.p

bb.p:                                             ; preds = %GetSensorInputMode.exit.i
  store i8 %.0.i, ptr %i.an, align 1
  %i.aq = call fastcc zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.e, i32 noundef 3, ptr noundef nonnull %i.b, i8 noundef zeroext 1, ptr noundef null) ; 0 uses
  br label %UpdateInputMode.exit

UpdateInputMode.exit:                             ; preds = %GetSensorInputMode.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 %i.c, ptr %i.a, align 1
  %i.ar = call fastcc noundef zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.e, i32 noundef 64, ptr noundef nonnull %i.a, i8 noundef zeroext 1, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.q

bb.q:                                             ; preds = %UpdateInputMode.exit, %bb.e
  %.0 = phi i1 [ true, %UpdateInputMode.exit ], [ %i.o, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverSwitch_CloseJoystick(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.h = load i8, ptr %i.g, align 4
  switch i8 %i.h, label %bb.e [
    i8 0, label %bb.c
    i8 63, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 63, ptr %i.a, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 37 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 63
  br i1 %i.k, label %SetInputMode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 63, ptr %i.i, align 1
  %i.l = call fastcc zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.c, i32 noundef 3, ptr noundef nonnull %i.a, i8 noundef zeroext 1, ptr noundef null) ; 0 uses
  br label %SetInputMode.exit

SetInputMode.exit:                                ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %SetInputMode.exit, %bb.a
  call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str.20, ptr noundef nonnull @SDL_EnhancedReportsChanged, ptr noundef nonnull %i.c) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %.off = add i32 %i.n, -1
  %switch = icmp ult i32 %.off, 2
  %.str.22..str.23 = select i1 %switch, ptr @.str.22, ptr @.str.23
  call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull %.str.22..str.23, ptr noundef nonnull @SDL_HomeLEDHintChanged, ptr noundef nonnull %i.c) #8
  call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str.24, ptr noundef nonnull @SDL_PlayerLEDHintChanged, ptr noundef nonnull %i.c) #8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 153
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 53
  store i8 0, ptr %i.r, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_DriverSwitch_FreeDevice(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverJoyCons_RegisterHints(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %1) #8 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverJoyCons_UnregisterHints(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverJoyCons_IsEnabled() #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #8
  %i.b = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.1, i1 noundef zeroext %i.a) #8
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverJoyCons_IsSupportedDevice(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 zeroext %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq i16 %3, 1406
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %4, 8201
  %i.d = icmp ne ptr %0, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias dereferenceable_or_null(368) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 368) #9 ; 11 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i16, ptr %i.i, align 8
  %i.k = icmp eq i16 %i.j, 1406
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.m = load i16, ptr %i.l, align 2
  %i.n = icmp eq i16 %i.m, 8206
  br i1 %i.n, label %GetMaxWriteAttempts.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %GetMaxWriteAttempts.exit.i

GetMaxWriteAttempts.exit.i:                       ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ 5, %bb.g ], [ 20, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %.0.i.i, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.q = load i8, ptr %i.p, align 4, !range !4, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %GetMaxWriteAttempts.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %i.s = call fastcc zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.g, i32 noundef 2, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
  br i1 %i.s, label %bb.i, label %CalculateControllerType.exit.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = zext i8 %i.v to i32
  %.val20.i = load ptr, ptr %i.g, align 8         ; 3 uses
  switch i8 %i.v, label %CalculateControllerType.exit.i [
    i8 3, label %.thread.i.i
    i8 0, label %bb.j
  ]

.thread.i.i:                                      ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val20.i, i64 34
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp eq i16 %i.y, 8217
  %spec.select.i.i = select i1 %i.z, i32 12, i32 3
  br label %CalculateControllerType.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.val20.i, i64 34
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = icmp eq i16 %i.ab, 8206
  br i1 %i.ac, label %bb.k, label %CalculateControllerType.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val20.i, i64 64
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, 1
  %..i.i = select i1 %i.af, i32 1, i32 2
  br label %CalculateControllerType.exit.i

CalculateControllerType.exit.i:                   ; preds = %bb.k, %bb.j, %.thread.i.i, %bb.i, %bb.h
  %.1.i = phi i32 [ 0, %bb.h ], [ %..i.i, %bb.k ], [ %i.w, %bb.i ], [ 0, %bb.j ], [ %spec.select.i.i, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
end_hunk_0
begin_hunk_1_@WriteProprietary:bb.a
  %i.an = zext nneg i8 %.0.i to i32
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = call i32 @SDL_HIDAPI_SendRumbleAndUnlock(ptr noundef %i.ao, ptr noundef nonnull %.017.i, i32 noundef range(i32 10, 65) %i.an) #8
  br label %WritePacket.exit

WritePacket.exit:                                 ; preds = %bb.j, %bb.l
  %.018.in.i = phi i32 [ %i.al, %bb.j ], [ %i.ap, %bb.l ]
  %.018.i = icmp sgt i32 %.018.in.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %.018.i, label %bb.m, label %ReadProprietaryReply.exit.thread9

bb.m:                                             ; preds = %WritePacket.exit
  %i.aq = call i64 @SDL_GetTicks_REAL() #8
  %i.ar = add i64 %i.aq, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %bb.m
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.au = call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.at) #8
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.ay, ptr noundef nonnull %i.i, i64 noundef 64, i32 noundef 0) #8 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.p, label %ReadInput.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bb = load i8, ptr %i.j, align 8, !range !4, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %bb.p
  %.pre.i = load i8, ptr %i.i, align 8
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bd = load i8, ptr %i.k, align 4
  %.not.i.i = icmp eq i8 %i.bd, 0
  %.pre14.i = load i8, ptr %i.i, align 8          ; 4 uses
  br i1 %.not.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  switch i8 %.pre14.i, label %bb.s [
    i8 48, label %.thread16.i
    i8 49, label %.thread16.i
    i8 63, label %.thread16.i
  ]

.thread16.i:                                      ; preds = %bb.r, %bb.r, %bb.r
  store i8 %.pre14.i, ptr %i.k, align 4
  br label %bb.u

ReadInput.exit.i:                                 ; preds = %bb.o
  %.not.i = icmp eq i32 %i.az, -1
  br i1 %.not.i, label %ReadProprietaryReply.exit.thread9, label %.thread.i

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i
  %i.be = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.pre14.i, %bb.q ], [ %.pre14.i, %bb.r ]
  %i.bf = icmp eq i8 %i.be, -127
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load i8, ptr %i.h, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = icmp eq i32 %1, %i.bh
  br i1 %i.bi, label %ReadProprietaryReply.exit.thread11, label %bb.u

ReadProprietaryReply.exit.thread11:               ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.loopexit

.thread.i:                                        ; preds = %ReadInput.exit.i, %bb.n
  call void @SDL_Delay_REAL(i32 noundef 1) #8
  br label %bb.u

bb.u:                                             ; preds = %.thread.i, %bb.t, %bb.s, %.thread16.i
  %i.bj = call i64 @SDL_GetTicks_REAL() #8
  %.not7.i = icmp ult i64 %i.bj, %i.ar
  br i1 %.not7.i, label %bb.n, label %ReadProprietaryReply.exit.thread9, !llvm.loop !10

ReadProprietaryReply.exit.thread9:                ; preds = %ReadInput.exit.i, %bb.u, %WritePacket.exit, %WritePacket.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bk = add nuw nsw i32 %.02016, 1
  %i.bl = load i32, ptr %i.b, align 4
  %.not = icmp slt i32 %.02016, %i.bl
  br i1 %.not, label %.lr.ph.split, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.g, %WritePacket.exit.us, %ReadProprietaryReply.exit.thread9, %bb.a, %ReadProprietaryReply.exit.thread11
  %.not14 = phi i1 [ true, %ReadProprietaryReply.exit.thread11 ], [ false, %bb.a ], [ false, %ReadProprietaryReply.exit.thread9 ], [ false, %bb.g ], [ true, %WritePacket.exit.us ]
  ret i1 %.not14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @SDL_hid_write_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_HIDAPI_LockRumble() local_unnamed_addr #3

declare i32 @SDL_HIDAPI_SendRumbleAndUnlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @SDL_GetTicks_REAL() local_unnamed_addr #3

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @SDL_Delay_REAL(i32 noundef) local_unnamed_addr #3

declare i32 @SDL_GetAtomicInt_REAL(ptr noundef) local_unnamed_addr #3

declare i32 @SDL_hid_read_timeout_REAL(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_IsJoystickGameCube(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare void @HIDAPI_SetDeviceName(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @HIDAPI_SetDeviceProduct(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @HIDAPI_SetDeviceSerial(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SDL_GetJoystickFromID_REAL(i32 noundef) local_unnamed_addr #3

declare void @HIDAPI_JoystickDisconnected(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #3

declare void @SDL_SendJoystickButton(i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendJoystickHat(i64 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendJoystickAxis(i64 noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare float @HIDAPI_RemapVal(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SetEnhancedReportHint(ptr noundef initializes((48, 52)) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %1, ptr %i.b, align 8
  switch i32 %1, label %default.unreachable7 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.c, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @SetEnhancedModeAvailable(ptr noundef nonnull %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 1, ptr %i.d, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @SetEnhancedModeAvailable(ptr noundef nonnull %0)
  br label %bb.e

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.f = load i8, ptr %i.e, align 1, !range !4, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr i8, ptr %0, i64 36
  %.val.i = load i8, ptr %i.h, align 4            ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  switch i8 %.val.i, label %bb.g [
    i8 0, label %GetSensorInputMode.exit.i
    i8 63, label %GetSensorInputMode.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  br label %GetSensorInputMode.exit.i

bb.h:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.k = load i8, ptr %i.j, align 4, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  %..i.i = select i1 %i.l, i8 63, i8 48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i4.i = phi i8 [ %.val.i, %bb.h ], [ %..i.i, %bb.i ] ; 4 uses
  %i.m = load i32, ptr %i.b, align 8
  switch i32 %i.m, label %bb.n [
    i32 0, label %.thread15.i.i
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %cond.i.i = icmp eq i8 %.0.i4.i, 63
  %spec.select18.i.i = select i1 %cond.i.i, i8 48, i8 %.0.i4.i
  br label %GetSensorInputMode.exit.i

bb.l:                                             ; preds = %bb.j
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i16, ptr %i.o, align 8
  %i.q = icmp eq i16 %i.p, 1406
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, -2
  %switch.i.i = icmp eq i16 %i.t, 8198
  br i1 %switch.i.i, label %GetSensorInputMode.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.u = icmp eq i8 %.0.i4.i, 63
  br i1 %i.u, label %.thread15.i.i, label %GetSensorInputMode.exit.i

.thread15.i.i:                                    ; preds = %bb.n, %bb.j
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  %i.x = load i8, ptr %i.w, align 4, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i.i = select i1 %i.y, i8 63, i8 48
  br label %GetSensorInputMode.exit.i

GetSensorInputMode.exit.i:                        ; preds = %.thread15.i.i, %bb.n, %bb.m, %bb.k, %bb.g, %bb.f, %bb.f
  %.0.i = phi i8 [ 48, %bb.f ], [ %.val.i, %bb.g ], [ 48, %bb.f ], [ %spec.select.i.i, %.thread15.i.i ], [ %.0.i4.i, %bb.n ], [ %spec.select18.i.i, %bb.k ], [ 48, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0.i, ptr %i.a, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %.0.i, %i.aa
  br i1 %i.ab, label %UpdateInputMode.exit, label %bb.o

bb.o:                                             ; preds = %GetSensorInputMode.exit.i
  store i8 %.0.i, ptr %i.z, align 1
  %i.ac = call fastcc zeroext i1 @WriteSubcommand(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, i8 noundef zeroext 1, ptr noundef null) ; 0 uses
  br label %UpdateInputMode.exit

UpdateInputMode.exit:                             ; preds = %GetSensorInputMode.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SetEnhancedModeAvailable(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i8, ptr %i.d, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.thread23

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.n, i32 noundef 2, float noundef 2.000000e+02) #8
  %i.o = load ptr, ptr %i.m, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.o, i32 noundef 1, float noundef 2.000000e+02) #8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 160
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8
  %i.p = icmp eq ptr %.pre17, null
  br i1 %i.p, label %.thread23, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %.thread25

bb.f:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.u, i32 noundef 4, float noundef 2.000000e+02) #8
  %i.v = load ptr, ptr %i.t, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.v, i32 noundef 3, float noundef 2.000000e+02) #8
  %.pre18 = load ptr, ptr %0, align 8
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %.pre18, i64 160
  %.pre20 = load ptr, ptr %.phi.trans.insert19, align 8
  %i.w = icmp eq ptr %.pre20, null
  br i1 %i.w, label %.thread23, label %.thread25

.thread25:                                        ; preds = %.thread, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.g, label %.thread23

bb.g:                                             ; preds = %.thread25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.ab, i32 noundef 6, float noundef 2.000000e+02) #8
  %i.ac = load ptr, ptr %i.aa, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.ac, i32 noundef 5, float noundef 2.000000e+02) #8
  br label %.thread23

.thread23:                                        ; preds = %bb.e, %bb.f, %.thread25, %bb.g, %bb.a, %bb.b
  ret void
}

declare void @SDL_PrivateJoystickAddSensor(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare float @SDL_roundf_REAL(float noundef) local_unnamed_addr #3

declare void @SDL_SendJoystickPowerInfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @SDL_UnlockMutex_REAL(ptr noundef) local_unnamed_addr #3

declare void @SDL_LockMutex_REAL(ptr noundef) local_unnamed_addr #3

declare void @SDL_SendJoystickSensor(i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @HIDAPI_DriverSwitch_ActuallyRumbleJoystick(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.g
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 100
  br i1 %exitcond.not.i, label %EncodeRumbleHighAmplitude.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleHighAmplitude.hfa, i64 %indvars.iv.next.i
  %i.c = load i16, ptr %i.b, align 4
  %.not.i.1 = icmp ugt i16 %2, %i.c
  br i1 %.not.i.1, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleHighAmplitude.hfa, i64 %indvars.iv.next.i.1
  %i.e = load i16, ptr %i.d, align 8
  %.not.i.2 = icmp ugt i16 %2, %i.e
  br i1 %.not.i.2, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleHighAmplitude.hfa, i64 %indvars.iv.next.i.2
  %i.g = load i16, ptr %i.f, align 4
  %.not.i.3 = icmp ugt i16 %2, %i.g
  br i1 %.not.i.3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.3, %bb.f ] ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleHighAmplitude.hfa, i64 %indvars.iv.i
  %i.i = load i16, ptr %i.h, align 16
  %.not.i = icmp ugt i16 %2, %i.i
  br i1 %.not.i, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.g
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.g ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleHighAmplitude.hfa, i64 %indvars.iv.i.lcssa
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = trunc i16 %i.l to i8
  br label %EncodeRumbleHighAmplitude.exit

EncodeRumbleHighAmplitude.exit:                   ; preds = %bb.b, %bb.h
  %.06.i = phi i8 [ %i.m, %bb.h ], [ -56, %bb.b ] ; 3 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.n
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.i22, 100
  br i1 %exitcond.not.i26, label %EncodeRumbleLowAmplitude.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i25 = or disjoint i64 %indvars.iv.i22, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleLowAmplitude.lfa, i64 %indvars.iv.next.i25
  %i.o = load i16, ptr %i.n, align 4
  %.not.i23.1 = icmp ugt i16 %1, %i.o
  br i1 %.not.i23.1, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i25.1 = or disjoint i64 %indvars.iv.i22, 2 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleLowAmplitude.lfa, i64 %indvars.iv.next.i25.1
  %i.q = load i16, ptr %i.p, align 8
  %.not.i23.2 = icmp ugt i16 %1, %i.q
  br i1 %.not.i23.2, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i25.2 = or disjoint i64 %indvars.iv.i22, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleLowAmplitude.lfa, i64 %indvars.iv.next.i25.2
  %i.s = load i16, ptr %i.r, align 4
  %.not.i23.3 = icmp ugt i16 %1, %i.s
  br i1 %.not.i23.3, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i25.3 = add nuw nsw i64 %indvars.iv.i22, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %EncodeRumbleHighAmplitude.exit
  %indvars.iv.i22 = phi i64 [ 0, %EncodeRumbleHighAmplitude.exit ], [ %indvars.iv.next.i25.3, %bb.m ] ; 7 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleLowAmplitude.lfa, i64 %indvars.iv.i22
  %i.u = load i16, ptr %i.t, align 16
  %.not.i23 = icmp ugt i16 %1, %i.u
  br i1 %.not.i23, label %bb.i, label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.n
  %indvars.iv.i22.lcssa = phi i64 [ %indvars.iv.i22, %bb.n ], [ %indvars.iv.next.i25, %bb.j ], [ %indvars.iv.next.i25.1, %bb.k ], [ %indvars.iv.next.i25.2, %bb.l ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @__const.EncodeRumbleLowAmplitude.lfa, i64 %indvars.iv.i22.lcssa
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 2
end_hunk_1
