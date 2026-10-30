Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_xbox360?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@HIDAPI_DriverXbox360_IsSupportedDevice:bb.a
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %3, label %bb.d [
    i16 2389, label %bb.f
    i16 1118, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  switch i16 %4, label %bb.d [
    i16 1817, label %bb.f
    i16 657, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = icmp eq i32 %2, 2                        ; 2 uses
  %i.d = icmp eq i32 %9, 129
  %or.cond7 = and i1 %i.c, %i.d
  br i1 %or.cond7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp slt i32 %6, 1
  %. = and i1 %i.c, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.a ], [ false, %bb.b ], [ %., %bb.e ], [ false, %bb.c ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverXbox360_InitDevice(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(88) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 88) #9 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 2, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i16, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = load i16, ptr %i.g, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i16, ptr %i.i, align 4
  %i.k = tail call zeroext i1 @SDL_IsJoystickSteamVirtualGamepad(i16 noundef zeroext %i.f, i16 noundef zeroext %i.h, i16 noundef zeroext %i.j) #8
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @SDL_strncmp_REAL(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.3, i64 noundef 8) #8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = call i32 (ptr, ptr, ...) @SDL_sscanf_REAL(ptr noundef %i.p, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.r = load i32, ptr %i.a, align 4
  %i.s = add nsw i32 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.u = call zeroext i1 @HIDAPI_JoystickConnected(ptr noundef nonnull %0, ptr noundef null) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i1 [ %i.u, %bb.f ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @HIDAPI_DriverXbox360_GetDevicePlayerIndex(ptr nofree readnone captures(none) %0, i32 %1) #1 {
bb.a:
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverXbox360_SetDevicePlayerIndex(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [3 x i8], align 2                 ; 5 uses
  %i.b = alloca [3 x i8], align 2                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %UpdateSlotLED.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !3, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.k, %i.j
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i32 %2 to i8
  %i.p = and i8 %i.o, 3
  %narrow.i.i = add nuw nsw i8 %i.p, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i16 769, ptr %i.b, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %narrow.i.i, ptr %i.q, align 2
  %i.r = call i32 @SDL_hid_write_REAL(ptr noundef %i.n, ptr noundef nonnull %i.b, i64 noundef 3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %UpdateSlotLED.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i16 769, ptr %i.a, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.s, align 2
  %i.t = call i32 @SDL_hid_write_REAL(ptr noundef %i.n, ptr noundef nonnull %i.a, i64 noundef 3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %UpdateSlotLED.exit

UpdateSlotLED.exit:                               ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverXbox360_UpdateDevice(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @SDL_GetJoystickFromID_REAL(i32 noundef %i.i) #8 ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.l, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 0) #8 ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not = icmp eq ptr %i.j, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br i1 %.not, label %.backedge.us, label %.lr.ph.split

.backedge.us:                                     ; preds = %.lr.ph, %.backedge.us
  %i.z = load ptr, ptr %i.k, align 8
  %i.aa = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.z, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 0) #8 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.backedge.us, label %._crit_edge, !llvm.loop !5

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.ac = phi i32 [ %i.ci, %.backedge ], [ %i.m, %.lr.ph ]
  %i.ad = load i8, ptr %i.a, align 16
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %.backedge

bb.c:                                             ; preds = %.lr.ph.split
  %i.af = call i64 @SDL_GetTicksNS_REAL() #8      ; 18 uses
  %i.ag = load i8, ptr %i.o, align 1
  %i.ah = load i8, ptr %i.p, align 2              ; 4 uses
  %.not.i = icmp eq i8 %i.ag, %i.ah
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select.i = and i8 %i.ah, 1
  %i.ai = shl i8 %i.ah, 1
  %i.aj = and i8 %i.ai, 12
  %.2.i = or disjoint i8 %i.aj, %spec.select.i
  %i.ak = lshr i8 %i.ah, 2
  %i.al = and i8 %i.ak, 2
  %.3.i = or disjoint i8 %.2.i, %i.al
  call void @SDL_SendJoystickHat(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 0, i8 noundef zeroext %.3.i) #8
  %i.am = load i8, ptr %i.p, align 2
  %i.an = and i8 %i.am, 16
  %i.ao = icmp ne i8 %i.an, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 6, i1 noundef zeroext %i.ao) #8
  %i.ap = load i8, ptr %i.p, align 2
  %i.aq = and i8 %i.ap, 32
  %i.ar = icmp ne i8 %i.aq, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 4, i1 noundef zeroext %i.ar) #8
  %i.as = load i8, ptr %i.p, align 2
  %i.at = and i8 %i.as, 64
  %i.au = icmp ne i8 %i.at, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 7, i1 noundef zeroext %i.au) #8
  %i.av = load i8, ptr %i.p, align 2
  %i.aw = icmp slt i8 %i.av, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 8, i1 noundef zeroext %i.aw) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ax = load i8, ptr %i.q, align 1
  %i.ay = load i8, ptr %i.r, align 1              ; 2 uses
  %.not83.i = icmp eq i8 %i.ax, %i.ay
  br i1 %.not83.i, label %HIDAPI_DriverXbox360_HandleStatePacket.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = trunc i8 %i.ay to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 9, i1 noundef zeroext %i.az) #8
  %i.ba = load i8, ptr %i.r, align 1
  %i.bb = and i8 %i.ba, 2
  %i.bc = icmp ne i8 %i.bb, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 10, i1 noundef zeroext %i.bc) #8
  %i.bd = load i8, ptr %i.r, align 1
  %i.be = and i8 %i.bd, 4
  %i.bf = icmp ne i8 %i.be, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 5, i1 noundef zeroext %i.bf) #8
  %i.bg = load i8, ptr %i.r, align 1
  %i.bh = and i8 %i.bg, 16
  %i.bi = icmp ne i8 %i.bh, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 0, i1 noundef zeroext %i.bi) #8
  %i.bj = load i8, ptr %i.r, align 1
  %i.bk = and i8 %i.bj, 32
  %i.bl = icmp ne i8 %i.bk, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 1, i1 noundef zeroext %i.bl) #8
  %i.bm = load i8, ptr %i.r, align 1
  %i.bn = and i8 %i.bm, 64
  %i.bo = icmp ne i8 %i.bn, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 2, i1 noundef zeroext %i.bo) #8
  %i.bp = load i8, ptr %i.r, align 1
  %i.bq = icmp slt i8 %i.bp, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 3, i1 noundef zeroext %i.bq) #8
  br label %HIDAPI_DriverXbox360_HandleStatePacket.exit

HIDAPI_DriverXbox360_HandleStatePacket.exit:      ; preds = %bb.e, %bb.f
  %i.br = load i8, ptr %i.t, align 4
  %i.bs = zext i8 %i.br to i16
  %i.bt = mul nuw i16 %i.bs, 257
  %i.bu = xor i16 %i.bt, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 4, i16 noundef signext %i.bu) #8
  %i.bv = load i8, ptr %i.u, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = mul nuw i16 %i.bw, 257
  %i.by = xor i16 %i.bx, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 5, i16 noundef signext %i.by) #8
  %i.bz = load i16, ptr %i.v, align 2
  call void @SDL_SendJoystickAxis(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 0, i16 noundef signext %i.bz) #8
  %i.ca = load i16, ptr %i.w, align 8
  %i.cb = xor i16 %i.ca, -1
  call void @SDL_SendJoystickAxis(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 1, i16 noundef signext %i.cb) #8
  %i.cc = load i16, ptr %i.x, align 2
  call void @SDL_SendJoystickAxis(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 2, i16 noundef signext %i.cc) #8
  %i.cd = load i16, ptr %i.y, align 4
  %i.ce = xor i16 %i.cd, -1
  call void @SDL_SendJoystickAxis(i64 noundef %i.af, ptr noundef nonnull %i.j, i8 noundef zeroext 3, i16 noundef signext %i.ce) #8
  %i.cf = call i32 @llvm.umin.i32(i32 range(i32 1, -2147483648) %i.ac, i32 64)
  %i.cg = zext nneg i32 %i.cf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %i.cg, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %HIDAPI_DriverXbox360_HandleStatePacket.exit, %.lr.ph.split
  %i.ch = load ptr, ptr %i.k, align 8
  %i.ci = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.ch, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 0) #8 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.split, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.backedge, %.backedge.us, %bb.b
  %.lcssa = phi i32 [ %i.m, %bb.b ], [ %i.aa, %.backedge.us ], [ %i.ci, %.backedge ] ; 2 uses
  %i.ck = icmp slt i32 %.lcssa, 0
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr %i.g, align 8
  %i.cm = load i32, ptr %i.cl, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.cm) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.cn = icmp eq i32 %.lcssa, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i1 [ %i.cn, %bb.h ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverXbox360_OpenJoystick(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [3 x i8], align 2                 ; 5 uses
  %i.b = alloca [3 x i8], align 2                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  tail call void @SDL_AssertJoysticksLocked() #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.g = tail call i32 @SDL_GetJoystickPlayerIndex_REAL(ptr noundef %1) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i32 %i.g, ptr %i.h, align 8
  %i.i = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.5, i1 noundef zeroext true) #8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 4
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.h, align 8              ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = trunc i32 %i.l to i8
  %i.r = and i8 %i.q, 3
  %narrow.i.i = add nuw nsw i8 %i.r, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i16 769, ptr %i.b, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %narrow.i.i, ptr %i.s, align 2
  %i.t = call i32 @SDL_hid_write_REAL(ptr noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %UpdateSlotLED.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i16 769, ptr %i.a, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.x, align 2
  %i.y = call i32 @SDL_hid_write_REAL(ptr noundef %i.w, ptr noundef nonnull %i.a, i64 noundef 3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %UpdateSlotLED.exit

UpdateSlotLED.exit:                               ; preds = %bb.c, %bb.d
  %i.z = call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str.5, ptr noundef nonnull @SDL_PlayerLEDHintChanged, ptr noundef nonnull %i.d) #8 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 11, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 6, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.ac, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverXbox360_RumbleJoystick(ptr noundef %0, ptr nofree readnone captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 2048, ptr %i.a, align 8
  %i.b = lshr i16 %2, 8
  %i.c = trunc nuw i16 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.c, ptr %i.d, align 1
  %i.e = lshr i16 %3, 8
  %i.f = trunc nuw i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.f, ptr %i.g, align 4
  %i.h = call i32 @SDL_HIDAPI_SendRumble(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8) #8
  %.not = icmp eq i32 %i.h, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverXbox360_RumbleJoystickTriggers(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
end_hunk_0
