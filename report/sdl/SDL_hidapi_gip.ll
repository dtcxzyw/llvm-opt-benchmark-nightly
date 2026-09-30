Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_gip?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@HIDAPI_DriverGIP_OpenJoystick:bb.a
  %i.v = and i32 %i.u, 1
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.e, align 8
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  store i8 %i.x, ptr %i.y, align 4
  %i.z = load i32, ptr %i.e, align 8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.e, align 8
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 342
  store i8 %i.af, ptr %i.ag, align 2
  %i.ah = load i32, ptr %i.e, align 8
  %i.ai = add nsw i32 %i.ah, %i.ac
  store i32 %i.ai, ptr %i.e, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  store i32 6, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 324 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add nsw i32 %i.ao, 5
  store i32 %i.ap, ptr %i.aj, align 4
  %.pr = load i32, ptr %i.ak, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi i32 [ %.pr, %bb.l ], [ %i.al, %bb.k ] ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 7
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 6, ptr %i.as, align 8
  %.pre = load i32, ptr %i.ak, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = phi i32 [ %.pre, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.au = icmp eq i32 %i.at, 8
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 7, ptr %i.av, align 8
  %.pr43 = load i32, ptr %i.ak, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = phi i32 [ %.pr43, %bb.p ], [ %i.at, %bb.o ]
  %i.ax = icmp eq i32 %i.aw, 9
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 6, ptr %i.ay, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.az, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  %.0 = phi i1 [ true, %bb.s ], [ %i.c, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverGIP_RumbleJoystick(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc ptr @HIDAPI_DriverGIP_FindAttachment(ptr %.val, ptr noundef %1) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.58) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 32
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = udiv i16 %2, 655
  %i.i = trunc nuw nsw i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 243
  store i8 %i.i, ptr %i.j, align 1
  %i.k = udiv i16 %3, 655
  %i.l = trunc nuw nsw i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  store i8 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.n, align 8
  %i.o = tail call fastcc zeroext i1 @HIDAPI_DriverGIP_UpdateRumble(ptr noundef %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ %i.o, %bb.e ], [ %i.g, %bb.d ], [ %i.c, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverGIP_RumbleJoystickTriggers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc ptr @HIDAPI_DriverGIP_FindAttachment(ptr %.val, ptr noundef %1) ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.58) #10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 32
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 4
  %.not13 = icmp eq i32 %i.i, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = udiv i16 %2, 655
  %i.l = trunc nuw nsw i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 241
  store i8 %i.l, ptr %i.m, align 1
  %i.n = udiv i16 %3, 655
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 242
  store i8 %i.o, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.q, align 8
  %i.r = tail call fastcc zeroext i1 @HIDAPI_DriverGIP_UpdateRumble(ptr noundef %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi i1 [ %i.j, %bb.e ], [ %i.r, %bb.f ], [ %i.c, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 51) i32 @HIDAPI_DriverGIP_GetJoystickCapabilities(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc ptr @HIDAPI_DriverGIP_FindAttachment(ptr %.val, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 32
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.g = load i32, ptr %i.f, align 8
  %2 = shl i32 %i.g, 3
  %3 = and i32 %2, 32
  %spec.select = xor i32 %3, 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %spec.select, %bb.c ], [ 0, %bb.b ]
  %i.h = lshr i32 %i.d, 5
  %i.i = and i32 %i.h, 2
  %spec.select15 = or disjoint i32 %.0, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.010 = phi i32 [ %spec.select15, %bb.d ], [ 0, %bb.a ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverGIP_SetJoystickLED(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
bb.a:
  %i.a = alloca [2054 x i8], align 16             ; 12 uses
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.b, align 8
  %i.c = tail call fastcc ptr @HIDAPI_DriverGIP_FindAttachment(ptr %.val, ptr noundef %1) ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.58) #10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 332
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 64
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #10
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 220 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4               ; 3 uses
  %i.l = add i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.k, 0
  %spec.store.select32.i.i = select i1 %.not.i.i, i8 2, i8 %i.l
  store i8 %spec.store.select32.i.i, ptr %i.j, align 4
  %spec.select33.i.i = tail call i8 @llvm.umax.i8(i8 %i.k, i8 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2054) %i.a, i8 0, i64 2054, i1 false)
  store i8 14, ptr %i.a, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %spec.select33.i.i, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 5, ptr %i.n, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %2, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %3, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %4, ptr %.sroa.7.0..sroa_idx, align 8
  %i.o = tail call zeroext i1 @SDL_HIDAPI_LockRumble() #10
  br i1 %i.o, label %GIP_SendVendorMessage.exit, label %GIP_SendVendorMessage.exit.thread

GIP_SendVendorMessage.exit.thread:                ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

GIP_SendVendorMessage.exit:                       ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = call i32 @SDL_HIDAPI_SendRumbleWithCallbackAndUnlock(ptr noundef %i.p, ptr noundef nonnull %i.a, i32 noundef 9, ptr noundef null, ptr noundef null) #10
  %i.r = icmp eq i32 %i.q, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %GIP_SendVendorMessage.exit.thread, %GIP_SendVendorMessage.exit
  %i.s = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.60) #10
  br label %bb.g

bb.g:                                             ; preds = %GIP_SendVendorMessage.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.s, %bb.f ], [ %i.h, %bb.d ], [ true, %GIP_SendVendorMessage.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverGIP_SendJoystickEffect(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #10
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverGIP_SetJoystickSensorsEnabled(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #10
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_DriverGIP_CloseJoystick(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverGIP_FreeDevice(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.f) #10
  store ptr null, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_RemoveKeyboard(i32 noundef %i.h) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call fastcc void @GIP_MetadataFree(ptr noundef nonnull %i.i)
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #10
  store ptr null, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %.not.1 = icmp eq ptr %i.k, null
  br i1 %.not.1, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not17.1 = icmp eq ptr %i.m, null
  br i1 %.not17.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.m) #10
  store ptr null, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not18.1 = icmp eq i32 %i.o, 0
  br i1 %.not18.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @SDL_RemoveKeyboard(i32 noundef %i.o) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  tail call fastcc void @GIP_MetadataFree(ptr noundef nonnull %i.p)
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.k) #10
  store ptr null, ptr %i.j, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %.not.2 = icmp eq ptr %i.r, null
  br i1 %.not.2, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not17.2 = icmp eq ptr %i.t, null
  br i1 %.not17.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.t) #10
  store ptr null, ptr %i.s, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not18.2 = icmp eq i32 %i.v, 0
  br i1 %.not18.2, label %bb.r, label %bb.q
end_hunk_0
