inline.NumInlined: 52
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@LINUX_JoystickOpen:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.011.i = phi ptr [ %.0.i.7, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0610.i = phi i32 [ %i.o, %.lr.ph.i ], [ %.0610.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i, i64 80
  %.0.i = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %.0.i.1 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.1, i64 80
  %.0.i.2 = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.2, i64 80
  %.0.i.3 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.3, i64 80
  %.0.i.4 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.4, i64 80
  %.0.i.5 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.5, i64 80
  %.0.i.6 = load ptr, ptr %i.n, align 8
  %i.o = add nsw i32 %.0610.i, -8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.6, i64 80
  %.0.i.7 = load ptr, ptr %i.p, align 8           ; 2 uses
  %i.q = icmp sgt i32 %.0610.i, 8
  br i1 %i.q, label %.lr.ph.i, label %GetJoystickByDevIndex.exit, !llvm.loop !19

GetJoystickByDevIndex.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader.i
  %.07.i = phi ptr [ %.09.i, %.preheader.i ], [ %.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.0.i.7, %.lr.ph.i ] ; 5 uses
  %.not = icmp eq ptr %.07.i, null
  br i1 %.not, label %GetJoystickByDevIndex.exit.thread, label %bb.b

GetJoystickByDevIndex.exit.thread:                ; preds = %bb.a, %GetJoystickByDevIndex.exit
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17) #16
  br label %bb.w

bb.b:                                             ; preds = %GetJoystickByDevIndex.exit
  %i.s = tail call noalias dereferenceable_or_null(3752) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 3752) #19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 9 uses
  store ptr %i.s, ptr %i.t, align 8
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.u = load ptr, ptr @SDL_sensorlist, align 8
  %.not.i33 = icmp eq ptr %i.u, null
  br i1 %.not.i33, label %GetSensor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.w, i32 noundef 524288, i32 noundef 0) #16 ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %GetSensor.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.x, i64 noundef 2155824392, ptr noundef nonnull %i.a) #16
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = call i32 @close(i32 noundef %i.x) #16   ; 0 uses
  %.01728.i = load ptr, ptr @SDL_sensorlist, align 8 ; 2 uses
  %.not2229.i = icmp eq ptr %.01728.i, null
  %or.cond.i34 = select i1 %i.aa, i1 true, i1 %.not2229.i
  br i1 %or.cond.i34, label %GetSensor.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.e, %bb.j
  %.01730.i = phi ptr [ %.017.i, %bb.j ], [ %.01728.i, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %.01730.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph.i35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.ae = load ptr, ptr %.01730.i, align 8
  %i.af = call i32 (ptr, i32, ...) @open(ptr noundef %i.ae, i32 noundef 524288, i32 noundef 0) #16 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.af, i64 noundef 2155824392, ptr noundef nonnull %i.b) #16
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = call i32 @close(i32 noundef %i.af) #16  ; 0 uses
  br i1 %i.ai, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %GetSensor.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.am = getelementptr inbounds nuw i8, ptr %.01730.i, i64 24
  %.017.i = load ptr, ptr %i.am, align 8          ; 2 uses
  %.not22.i = icmp eq ptr %.017.i, null
  br i1 %.not22.i, label %GetSensor.exit, label %.lr.ph.i35, !llvm.loop !25

GetSensor.exit:                                   ; preds = %bb.j, %bb.c, %bb.d, %bb.e, %bb.i
  %.2.i = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %.01730.i, %bb.i ], [ null, %bb.d ], [ null, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.an = call fastcc zeroext i1 @PrepareJoystickHwdata(ptr noundef %0, ptr noundef nonnull %.07.i, ptr noundef %.2.i)
  %i.ao = load ptr, ptr %i.t, align 8             ; 3 uses
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %GetSensor.exit
  call void @SDL_free_REAL(ptr noundef %i.ao) #16
  store ptr null, ptr %i.t, align 8
  br label %bb.w

bb.l:                                             ; preds = %GetSensor.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i, i64 72
  store ptr %i.ao, ptr %i.ap, align 8
  %.not32 = icmp eq ptr %.2.i, null
  br i1 %.not32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  store ptr %i.ao, ptr %i.aq, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call ptr @SDL_UDEV_GetProductSerial(ptr noundef %i.as) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.t, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3637
  store i8 1, ptr %i.aw, align 1
  %i.ax = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1789
  %i.az = load i8, ptr %i.ay, align 1, !range !6, !noundef !7
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %0, i32 noundef 2, float noundef 0.000000e+00) #16
  %.pre = load ptr, ptr %i.t, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = phi ptr [ %.pre, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1788
  %i.bd = load i8, ptr %i.bc, align 4, !range !6, !noundef !7
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %0, i32 noundef 1, float noundef 0.000000e+00) #16
  %.pre40 = load ptr, ptr %i.t, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = phi ptr [ %.pre40, %bb.q ], [ %i.bb, %bb.p ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = call i32 @close(i32 noundef %i.bh) #16  ; 0 uses
  %i.bk = load ptr, ptr %i.t, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 -1, ptr %i.bl, align 4
  %.pre41 = load ptr, ptr %i.t, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bm = phi ptr [ %.pre41, %bb.s ], [ %i.bf, %bb.r ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load i8, ptr %i.bn, align 8, !range !6, !noundef !7
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 49
  %i.br = load i8, ptr %i.bq, align 1, !range !6, !noundef !7
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bt = call i32 @SDL_GetJoystickProperties_REAL(ptr noundef nonnull %0) #16
  %i.bu = call zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef %i.bt, ptr noundef nonnull @.str.18, i1 noundef zeroext true) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.b, %bb.k, %GetJoystickByDevIndex.exit.thread
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.k ], [ %i.r, %GetJoystickByDevIndex.exit.thread ], [ true, %bb.v ], [ true, %bb.u ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @LINUX_JoystickRumble(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
bb.a:
  %3 = alloca %struct.input_event, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  %i.g = load i8, ptr %i.f, align 1, !range !6, !noundef !7
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i16 %1, 1
  %i.j = lshr i16 %2, 1
  %narrow = add nuw i16 %i.j, %i.i
  %i.k = lshr i16 %narrow, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sink29 = phi i16 [ 81, %bb.c ], [ 80, %bb.a ]
  %.sink26 = phi i16 [ 90, %bb.c ], [ %1, %bb.a ]
  %.sink25 = phi i64 [ 76, %bb.c ], [ 74, %bb.a ]
  %.sink = phi i16 [ %i.k, %bb.c ], [ %2, %bb.a ]
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i16 %.sink29, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i16 -1, ptr %5, align 2
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i16 %.sink26, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink25
  store i16 %.sink, ptr %7, align 2
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.p = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.n, i64 noundef 1076905344, ptr noundef nonnull %i.o) #16
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 58
  store i16 -1, ptr %i.s, align 2
  %i.t = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.w = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.u, i64 noundef 1076905344, ptr noundef nonnull %i.v) #16
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @__errno_location() #17
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call ptr @strerror(i32 noundef %i.z) #16
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24, ptr noundef %i.aa) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 21, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 58
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 1, ptr %i.ah, align 4
  %i.ai = load i32, ptr %i.ad, align 8
  %i.aj = call i64 @write(i32 noundef %i.ai, ptr noundef nonnull %3, i64 noundef 24) #16
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = tail call ptr @__errno_location() #17
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call ptr @strerror(i32 noundef %i.am) #16
  %i.ao = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25, ptr noundef %i.an) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.d
  %.0 = phi i1 [ %i.ab, %bb.g ], [ %i.ao, %bb.i ], [ %i.l, %bb.d ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @LINUX_JoystickRumbleTriggers(ptr nofree readnone captures(none) %0, i16 zeroext %1, i16 zeroext %2) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #16
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @LINUX_JoystickSetLED(ptr nofree readnone captures(none) %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #16
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @LINUX_JoystickSendEffect(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #16
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @LINUX_JoystickSetSensorsEnabled(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) #0 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1788
  %i.e = load i8, ptr %i.d, align 4, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1789
  %i.h = load i8, ptr %i.g, align 1, !range !6, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #16
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3636
  %i.l = load i8, ptr %i.k, align 4, !range !6, !noundef !7
  %i.m = icmp eq i8 %i.l, %i.a
  br i1 %i.m, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %1, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.26) #16
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.q, i32 noundef 524288, i32 noundef 0) #16
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.r, ptr %i.t, align 4
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27, ptr noundef %i.aa) #16
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.w, i32 noundef 4, i32 noundef 2048) #16 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = tail call i32 @close(i32 noundef %i.ae) #16 ; 0 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 -1, ptr %i.ah, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3636
  store i8 %i.a, ptr %i.aj, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l, %bb.i, %bb.g, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ %i.ab, %bb.i ], [ true, %bb.l ], [ %i.p, %bb.g ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal void @LINUX_JoystickUpdate(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [32 x %struct.input_event], align 16 ; 8 uses
  %i.a = alloca [3 x float], align 4              ; 8 uses
  %2 = alloca [32 x %struct.js_event], align 16   ; 5 uses
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 28 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1790
  %i.e = load i8, ptr %i.d, align 2, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = tail call i64 @SDL_GetTicksNS_REAL() #16 ; 3 uses
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3637
  store i8 0, ptr %i.i, align 1
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = call i64 @read(i32 noundef %i.k, ptr noundef nonnull %2, i64 noundef 256) #16
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph31.i, label %HandleClassicEvents.exit

.loopexit.i:                                      ; preds = %HandleHat.exit.i, %.lr.ph31.i
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call i64 @read(i32 noundef %i.p, ptr noundef nonnull %2, i64 noundef 256) #16
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph31.i, label %HandleClassicEvents.exit, !llvm.loop !26

.lr.ph31.i:                                       ; preds = %bb.b, %.loopexit.i
  %i.t = phi i32 [ %i.r, %.loopexit.i ], [ %i.m, %bb.b ]
  %i.u = lshr i32 %i.t, 3                         ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.preheader.i

end_hunk_0
