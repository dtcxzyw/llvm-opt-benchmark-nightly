Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gamepad?download=true
inline.NumInlined: 83
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_PrivateGamepadRemoved:bb.a
  br i1 %.not.i, label %SDL_SendGamepadAxis.exit.i, label %bb.t

.peel.next30.i:                                   ; preds = %.peel.next30.i.preheader, %bb.s
  %.015.i = phi i32 [ %i.be, %bb.s ], [ 6, %.peel.next30.i.preheader ] ; 3 uses
  %i.ay = call zeroext i1 @SDL_GetGamepadButton_REAL(ptr noundef nonnull %.014, i32 noundef %.015.i)
  br i1 %i.ay, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.peel.next30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @SDL_AssertJoysticksLocked() #9
  store i32 1618, ptr %2, align 8
  %i.az = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1618) #9
  br i1 %i.az, label %bb.r, label %SDL_SendGamepadButton.exit.i

bb.r:                                             ; preds = %bb.q
  store i64 %i.d, ptr %i.f, align 8
  %i.ba = load ptr, ptr %.014, align 8
  %i.bb = load i32, ptr %i.ba, align 8
  store i32 %i.bb, ptr %i.g, align 8
  %i.bc = trunc nuw nsw i32 %.015.i to i8
  store i8 %i.bc, ptr %i.h, align 4
  store i8 0, ptr %i.i, align 1
  %i.bd = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %2) #9 ; 0 uses
  br label %SDL_SendGamepadButton.exit.i

SDL_SendGamepadButton.exit.i:                     ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.s

bb.s:                                             ; preds = %SDL_SendGamepadButton.exit.i, %.peel.next30.i
  %i.be = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, 26
  br i1 %exitcond.not.i, label %.preheader.i, label %.peel.next30.i, !llvm.loop !5

bb.t:                                             ; preds = %.preheader.i
  call void @SDL_AssertJoysticksLocked() #9
  %i.bf = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1616) #9
  br i1 %i.bf, label %bb.u, label %SDL_SendGamepadAxis.exit.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 1616, ptr %1, align 8
  store i64 %i.d, ptr %i.at, align 8
  %i.bg = load ptr, ptr %.014, align 8
  %i.bh = load i32, ptr %i.bg, align 8
  store i32 %i.bh, ptr %i.au, align 8
  store i8 0, ptr %i.av, align 4
  store i16 0, ptr %i.aw, align 8
  %i.bi = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %SDL_SendGamepadAxis.exit.i

SDL_SendGamepadAxis.exit.i:                       ; preds = %bb.u, %bb.t, %.preheader.i
  %i.bj = call signext i16 @SDL_GetGamepadAxis_REAL(ptr noundef nonnull %.014, i32 noundef 1)
  %.not.1.i = icmp eq i16 %i.bj, 0
  br i1 %.not.1.i, label %SDL_SendGamepadAxis.exit.1.i, label %bb.v

bb.v:                                             ; preds = %SDL_SendGamepadAxis.exit.i
  call void @SDL_AssertJoysticksLocked() #9
  %i.bk = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1616) #9
  br i1 %i.bk, label %bb.w, label %SDL_SendGamepadAxis.exit.1.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 1616, ptr %1, align 8
  store i64 %i.d, ptr %i.at, align 8
  %i.bl = load ptr, ptr %.014, align 8
  %i.bm = load i32, ptr %i.bl, align 8
  store i32 %i.bm, ptr %i.au, align 8
  store i8 1, ptr %i.av, align 4
  store i16 0, ptr %i.aw, align 8
  %i.bn = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %SDL_SendGamepadAxis.exit.1.i

SDL_SendGamepadAxis.exit.1.i:                     ; preds = %bb.w, %bb.v, %SDL_SendGamepadAxis.exit.i
  %i.bo = call signext i16 @SDL_GetGamepadAxis_REAL(ptr noundef nonnull %.014, i32 noundef 2)
  %.not.2.i = icmp eq i16 %i.bo, 0
  br i1 %.not.2.i, label %SDL_SendGamepadAxis.exit.2.i, label %bb.x

bb.x:                                             ; preds = %SDL_SendGamepadAxis.exit.1.i
  call void @SDL_AssertJoysticksLocked() #9
  %i.bp = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1616) #9
  br i1 %i.bp, label %bb.y, label %SDL_SendGamepadAxis.exit.2.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 1616, ptr %1, align 8
  store i64 %i.d, ptr %i.at, align 8
  %i.bq = load ptr, ptr %.014, align 8
  %i.br = load i32, ptr %i.bq, align 8
  store i32 %i.br, ptr %i.au, align 8
  store i8 2, ptr %i.av, align 4
  store i16 0, ptr %i.aw, align 8
  %i.bs = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %SDL_SendGamepadAxis.exit.2.i

SDL_SendGamepadAxis.exit.2.i:                     ; preds = %bb.y, %bb.x, %SDL_SendGamepadAxis.exit.1.i
  %i.bt = call signext i16 @SDL_GetGamepadAxis_REAL(ptr noundef nonnull %.014, i32 noundef 3)
  %.not.3.i = icmp eq i16 %i.bt, 0
  br i1 %.not.3.i, label %SDL_SendGamepadAxis.exit.3.i, label %bb.z

bb.z:                                             ; preds = %SDL_SendGamepadAxis.exit.2.i
  call void @SDL_AssertJoysticksLocked() #9
  %i.bu = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1616) #9
  br i1 %i.bu, label %bb.aa, label %SDL_SendGamepadAxis.exit.3.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 1616, ptr %1, align 8
  store i64 %i.d, ptr %i.at, align 8
  %i.bv = load ptr, ptr %.014, align 8
  %i.bw = load i32, ptr %i.bv, align 8
  store i32 %i.bw, ptr %i.au, align 8
  store i8 3, ptr %i.av, align 4
  store i16 0, ptr %i.aw, align 8
  %i.bx = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %SDL_SendGamepadAxis.exit.3.i

SDL_SendGamepadAxis.exit.3.i:                     ; preds = %bb.aa, %bb.z, %SDL_SendGamepadAxis.exit.2.i
  %i.by = call signext i16 @SDL_GetGamepadAxis_REAL(ptr noundef nonnull %.014, i32 noundef 4)
  %.not.4.i = icmp eq i16 %i.by, 0
  br i1 %.not.4.i, label %SDL_SendGamepadAxis.exit.4.i, label %bb.ab

bb.ab:                                            ; preds = %SDL_SendGamepadAxis.exit.3.i
  call void @SDL_AssertJoysticksLocked() #9
  %i.bz = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1616) #9
  br i1 %i.bz, label %bb.ac, label %SDL_SendGamepadAxis.exit.4.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 1616, ptr %1, align 8
  store i64 %i.d, ptr %i.at, align 8
  %i.ca = load ptr, ptr %.014, align 8
  %i.cb = load i32, ptr %i.ca, align 8
  store i32 %i.cb, ptr %i.au, align 8
  store i8 4, ptr %i.av, align 4
  store i16 0, ptr %i.aw, align 8
  %i.cc = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %SDL_SendGamepadAxis.exit.4.i

SDL_SendGamepadAxis.exit.4.i:                     ; preds = %bb.ac, %bb.ab, %SDL_SendGamepadAxis.exit.3.i
  %i.cd = call signext i16 @SDL_GetGamepadAxis_REAL(ptr noundef nonnull %.014, i32 noundef 5)
  %.not.5.i = icmp eq i16 %i.cd, 0
  br i1 %.not.5.i, label %RecenterGamepad.exit, label %bb.ad

bb.ad:                                            ; preds = %SDL_SendGamepadAxis.exit.4.i
  call void @SDL_AssertJoysticksLocked() #9
  %i.ce = call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 1616) #9
  br i1 %i.ce, label %bb.ae, label %RecenterGamepad.exit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 1616, ptr %1, align 8
  store i64 %i.d, ptr %i.at, align 8
  %i.cf = load ptr, ptr %.014, align 8
  %i.cg = load i32, ptr %i.cf, align 8
  store i32 %i.cg, ptr %i.au, align 8
  store i8 5, ptr %i.av, align 4
  store i16 0, ptr %i.aw, align 8
  %i.ch = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %RecenterGamepad.exit

bb.af:                                            ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.014, i64 80
  %.0 = load ptr, ptr %i.ci, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %RecenterGamepad.exit, label %.lr.ph, !llvm.loop !8

RecenterGamepad.exit:                             ; preds = %bb.af, %.preheader, %bb.ae, %bb.ad, %SDL_SendGamepadAxis.exit.4.i
  store i32 1620, ptr %3, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %0, ptr %i.ck, align 8
  %i.cl = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %3) #9 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %RecenterGamepad.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_GamepadSensorWatcher(i64 noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  tail call void @SDL_LockJoysticks_REAL() #9
  %.019 = load ptr, ptr @SDL_gamepads, align 8    ; 2 uses
  %.not20 = icmp eq ptr %.019, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.021 = phi ptr [ %.019, %.lr.ph ], [ %.0, %bb.h ] ; 7 uses
  %i.e = load ptr, ptr %.021, align 8             ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.g = load ptr, ptr %i.f, align 8
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 244
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.k = load ptr, ptr %.021, align 8             ; 5 uses
  call void @SDL_AssertJoysticksLocked() #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %7 = load float, ptr %3, align 4                ; 2 uses
  %8 = load float, ptr %5, align 4                ; 2 uses
  %i.m = load float, ptr %6, align 4              ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.n = load <4 x float>, ptr %i.l, align 4      ; 3 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %i.p = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.p, <2 x float> zeroinitializer)
  %i.r = load <2 x float>, ptr %9, align 4        ; 2 uses
  %i.s = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.u = shufflevector <4 x float> %i.n, <4 x float> %i.t, <2 x i32> <i32 1, i32 4>
  %11 = insertelement <2 x float> poison, float %8, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %12, <2 x float> %i.q)
  %i.w = shufflevector <2 x float> %i.s, <2 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %13 = insertelement <2 x float> poison, float %i.m, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %14, <2 x float> %i.v)
  store <2 x float> %i.x, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.z = load float, ptr %i.y, align 4
  %i.aa = call float @llvm.fmuladd.f32(float %i.z, float %7, float 0.000000e+00)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 300
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = call float @llvm.fmuladd.f32(float %i.ac, float %8, float %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = call float @llvm.fmuladd.f32(float %i.af, float %i.m, float %i.ad)
  store float %i.ag, ptr %i.c, align 8
  %i.ah = load ptr, ptr %.021, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %0, ptr noundef %i.ah, i32 noundef 1, i64 noundef %2, ptr noundef nonnull %i.a, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.pre = load ptr, ptr %.021, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ai = phi ptr [ %.pre, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not18 = icmp eq ptr %i.ak, null
  br i1 %.not18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 256
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.am, %1
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ao = load ptr, ptr %.021, align 8            ; 5 uses
  call void @SDL_AssertJoysticksLocked() #9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 272
  %15 = load float, ptr %3, align 4               ; 2 uses
  %16 = load float, ptr %5, align 4               ; 2 uses
  %i.aq = load float, ptr %6, align 4             ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.ar = load <4 x float>, ptr %i.ap, align 4    ; 3 uses
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %18 = insertelement <2 x float> poison, float %15, i64 0
  %i.at = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.at, <2 x float> zeroinitializer)
  %i.av = load <2 x float>, ptr %17, align 4      ; 2 uses
  %i.aw = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.ar, <4 x float> %i.ax, <2 x i32> <i32 1, i32 4>
  %19 = insertelement <2 x float> poison, float %16, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %20, <2 x float> %i.au)
  %i.ba = shufflevector <2 x float> %i.aw, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %21 = insertelement <2 x float> poison, float %i.aq, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %22, <2 x float> %i.az)
  store <2 x float> %i.bb, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 296
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = call float @llvm.fmuladd.f32(float %i.bd, float %15, float 0.000000e+00)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 300
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %16, float %i.be)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 304
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = call float @llvm.fmuladd.f32(float %i.bj, float %i.aq, float %i.bh)
  store float %i.bk, ptr %i.d, align 8
  %i.bl = load ptr, ptr %.021, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %0, ptr noundef %i.bl, i32 noundef 2, i64 noundef %2, ptr noundef nonnull %i.b, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.021, i64 80
  %.0 = load ptr, ptr %i.bm, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @SDL_UnlockJoysticks_REAL() #9
  ret void
}

declare void @SDL_LockJoysticks_REAL() local_unnamed_addr #2

declare void @SDL_SendJoystickSensor(i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_UnlockJoysticks_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 12) i32 @SDL_GetGamepadTypeFromString_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  switch i8 %i.a, label %bb.d [
    i8 0, label %.loopexit
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.010 = phi ptr [ %i.b, %bb.c ], [ %0, %bb.b ]  ; 12 uses
  %i.c = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.18) #9
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.19) #9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.20) #9
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.21) #9
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.22) #9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.23) #9
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.24) #9
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.25) #9
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.26) #9
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.27) #9
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.28) #9
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.29) #9
  %i.z = icmp eq i32 %i.y, 0
  %spec.select = select i1 %i.z, i32 11, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.b, %bb.a
  %.011 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ 6, %bb.j ], [ 1, %bb.e ], [ %spec.select, %bb.o ], [ 2, %bb.f ], [ 8, %bb.l ], [ 3, %bb.g ], [ 10, %bb.n ], [ 4, %bb.h ], [ 7, %bb.k ], [ 5, %bb.i ], [ 9, %bb.m ]
  ret i32 %.011
}

declare i32 @SDL_strcasecmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @SDL_GetGamepadStringForType_REAL(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 11
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @map_StringForGamepadType, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 6) i32 @SDL_GetGamepadAxisFromString_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  switch i8 %i.a, label %bb.d [
    i8 0, label %.loopexit
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.010 = phi ptr [ %i.b, %bb.c ], [ %0, %bb.b ]  ; 6 uses
  %i.c = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.30) #9
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.31) #9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.32) #9
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.33) #9
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.34) #9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.010, ptr noundef nonnull @.str.35) #9
  %i.n = icmp eq i32 %i.m, 0
  %spec.select = select i1 %i.n, i32 5, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b, %bb.a
  %.011 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %bb.d ], [ 3, %bb.g ], [ 1, %bb.e ], [ %spec.select, %bb.i ], [ 2, %bb.f ], [ 4, %bb.h ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @SDL_GetGamepadStringForAxis_REAL(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %or.cond = icmp ult i32 %0, 6
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @map_StringForGamepadAxis, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

end_hunk_0
