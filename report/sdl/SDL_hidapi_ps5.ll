inline.NumInlined: 36
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@HIDAPI_DriverPS5_UpdateEffects:bb.a
  %.sink43.in = phi ptr [ %i.bj, %SetLedsForPlayerIndex.exit ], [ %i.ax, %bb.s ]
  %.sink43 = load i8, ptr %.sink43.in, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 46
  store i8 %.sink43, ptr %i.bk, align 1
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.q, %bb.n
  %i.bl = phi i8 [ %i.ak, %bb.q ], [ 0, %bb.n ], [ %i.an, %.sink.split ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.bn = load i8, ptr %i.bm, align 1, !range !3, !noundef !4
  %i.bo = trunc nuw i8 %i.bn to i1
  %.not36 = icmp samesign ugt i32 %1, 15
  %or.cond39.not = select i1 %i.bo, i1 %.not36, i1 false
  br i1 %or.cond39.not, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bq = or i8 %i.bl, 16
  store i8 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bs = load i8, ptr %i.br, align 4, !range !3, !noundef !4
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.x, label %.sink.split45

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.y, label %.sink.split45

bb.y:                                             ; preds = %bb.x
  %i.bx = urem i32 %i.bv, 7
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @SetLightsForPlayerIndex.lights, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = or i8 %i.ca, 32
  br label %.sink.split45

.sink.split45:                                    ; preds = %bb.w, %bb.y, %bb.x
  %.sink.i.sink = phi i8 [ 0, %bb.x ], [ %i.cb, %bb.y ], [ 0, %bb.w ]
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 43
  store i8 %.sink.i.sink, ptr %i.cc, align 1
  br label %bb.z

bb.z:                                             ; preds = %.sink.split45, %bb.v
  %i.cd = call fastcc zeroext i1 @HIDAPI_DriverPS5_InternalSendJoystickEffect(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 47, i1 noundef zeroext %2)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ %i.cd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @HIDAPI_DriverPS5_InternalSendJoystickEffect(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.DS5EffectsState_t, align 1  ; 8 uses
  %i.a = alloca [78 x i8], align 16               ; 11 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.g = load i8, ptr %i.f, align 1, !range !3, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  %.030.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.030.sroa.gep32 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !range !3, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @HIDAPI_DriverPS5_SetEnhancedModeAvailable(ptr noundef nonnull %0), !inline_history !12
  %i.p = load i8, ptr %i.j, align 1, !range !3, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %HIDAPI_DriverPS5_SetEnhancedReportHint.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %4, i8 0, i64 47, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i8, ptr %i.r, align 4, !range !3, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %HIDAPI_DriverPS5_UpdateEffects.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.v = load i8, ptr %i.u, align 2               ; 3 uses
  %.not31.i = icmp eq i8 %i.v, 0
  br i1 %.not31.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.x = load i8, ptr %i.w, align 1
  %.not32.i = icmp eq i8 %i.x, 0
  br i1 %.not32.i, label %HIDAPI_DriverPS5_UpdateEffects.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.z = load i8, ptr %i.y, align 1, !range !3, !noundef !4
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 38
  store i8 4, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.ad = load i8, ptr %i.ac, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ae = lshr i8 %i.v, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = lshr i8 %i.ag, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi i8 [ 2, %bb.k ], [ 3, %bb.l ]
  %.sink33 = phi i8 [ %i.v, %bb.k ], [ %i.ae, %bb.l ]
  %.sink = phi i8 [ %i.ad, %bb.k ], [ %i.ah, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %.sink33, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %.sink, ptr %i.ak, align 1
  store i8 %i.ai, ptr %4, align 1
  br label %HIDAPI_DriverPS5_UpdateEffects.exit

HIDAPI_DriverPS5_UpdateEffects.exit:              ; preds = %bb.g, %bb.m, %bb.i
  %i.al = call fastcc zeroext i1 @HIDAPI_DriverPS5_InternalSendJoystickEffect(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 47, i1 noundef zeroext false), !inline_history !13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.am = tail call fastcc zeroext i1 @HIDAPI_DriverPS5_UpdateEffects(ptr noundef nonnull %0, i32 noundef 24, i1 noundef zeroext false), !inline_history !12 ; 0 uses
  br label %HIDAPI_DriverPS5_SetEnhancedReportHint.exit

HIDAPI_DriverPS5_SetEnhancedReportHint.exit:      ; preds = %bb.f, %HIDAPI_DriverPS5_UpdateEffects.exit
  store i32 1, ptr %i.m, align 4
  br label %bb.n

bb.n:                                             ; preds = %HIDAPI_DriverPS5_SetEnhancedReportHint.exit, %bb.e
  tail call void @SDL_Delay_REAL(i32 noundef 10) #8
  %.pre = load i8, ptr %i.j, align 1, !range !3
  %i.an = trunc nuw i8 %.pre to i1
  br i1 %i.an, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.d, %bb.n
  %i.ao = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #8
  br label %bb.y

bb.o:                                             ; preds = %bb.n, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) %i.a, i8 0, i64 78, i1 false)
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  %i.ar = load i8, ptr %i.aq, align 4, !range !3, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 16, ptr %i.at, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink34 = phi i8 [ 49, %bb.p ], [ 2, %bb.o ]
  %.030.sroa.phi = phi ptr [ %.030.sroa.gep, %bb.p ], [ %.030.sroa.gep32, %bb.o ] ; 3 uses
  %.030 = phi i64 [ 3, %bb.p ], [ 1, %bb.o ]      ; 2 uses
  %.029 = phi i32 [ 78, %bb.p ], [ 48, %bb.o ]    ; 5 uses
  store i8 %.sink34, ptr %i.a, align 16
  %i.au = sub nuw nsw i64 78, %.030
  %i.av = sext i32 %2 to i64
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.030.sroa.phi, ptr align 1 %1, i64 %i.aw, i1 false)
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i8 -94, ptr %i.e, align 1
  %i.ax = call i32 @SDL_crc32_REAL(i32 noundef 0, ptr noundef nonnull %i.e, i64 noundef 1) #8
  %i.ay = zext nneg i32 %.029 to i64              ; 2 uses
  %i.az = add nsw i64 %i.ay, -4
  %i.ba = call i32 @SDL_crc32_REAL(i32 noundef %i.ax, ptr noundef nonnull %i.a, i64 noundef %i.az) #8
  %5 = getelementptr i8, ptr %i.a, i64 %i.ay
  %i.bb = getelementptr i8, ptr %5, i64 -4
  store i32 %i.ba, ptr %i.bb, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = call zeroext i1 @SDL_HIDAPI_LockRumble() #8
  br i1 %i.bc, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bd = load ptr, ptr %0, align 8
  %i.be = call zeroext i1 @SDL_HIDAPI_GetPendingRumbleLocked(ptr noundef %i.bd, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  br i1 %i.be, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.030 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %.029, %i.bi
  br i1 %i.bj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = load i8, ptr %.030.sroa.phi, align 1
  %i.bl = load i8, ptr %i.bg, align 1
  %i.bm = icmp eq i8 %i.bk, %i.bl
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %.030.sroa.phi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %.critedge, label %bb.x

.critedge:                                        ; preds = %bb.w
  %i.bs = zext nneg i32 %.029 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.bs, i1 false)
  call void @SDL_HIDAPI_UnlockRumble() #8
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = call i32 @SDL_HIDAPI_SendRumbleAndUnlock(ptr noundef %i.bt, ptr noundef nonnull %i.a, i32 noundef %.029) #8
  %.not = icmp eq i32 %i.bu, %.029
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge, %bb.s, %.thread, %bb.b
  %.1 = phi i1 [ %.not, %bb.x ], [ false, %bb.s ], [ true, %.critedge ], [ %i.i, %bb.b ], [ %i.ao, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.1
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

declare void @SDL_Delay_REAL(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @SDL_crc32_REAL(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_HIDAPI_LockRumble() local_unnamed_addr #3

declare zeroext i1 @SDL_HIDAPI_GetPendingRumbleLocked(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_HIDAPI_UnlockRumble() local_unnamed_addr #3

declare i32 @SDL_HIDAPI_SendRumbleAndUnlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @HIDAPI_DriverPS5_SetEnhancedModeAvailable(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !3, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i8, ptr %i.d, align 2, !range !3, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @SDL_PrivateJoystickAddTouchpad(ptr noundef %i.h, i32 noundef 2) #8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.k = load i8, ptr %i.j, align 2, !range !3, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.o = load i8, ptr %i.n, align 4, !range !3, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i16, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 34
  %i.t = load i16, ptr %i.s, align 2
  %i.u = tail call zeroext i1 @SDL_IsJoystickDualSenseEdge(i16 noundef zeroext %i.r, i16 noundef zeroext %i.t) #8
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.0 = phi float [ 2.500000e+02, %bb.f ], [ 1.000000e+03, %bb.g ], [ 1.000000e+03, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.w, i32 noundef 2, float noundef %.0) #8
  %i.x = load ptr, ptr %i.v, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.x, i32 noundef 1, float noundef %.0) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.z = load i8, ptr %i.y, align 1, !range !3, !noundef !4
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %i.ac, i32 noundef 1, float noundef 2.500000e+02) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 1, ptr %i.ad, align 1
  %i.ae = load ptr, ptr %0, align 8
  tail call void @HIDAPI_UpdateDeviceProperties(ptr noundef %i.ae) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

declare void @SDL_PrivateJoystickAddTouchpad(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @SDL_PrivateJoystickAddSensor(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @HIDAPI_UpdateDeviceProperties(ptr noundef) local_unnamed_addr #3

declare i64 @SDL_GetTicks_REAL() local_unnamed_addr #3

declare ptr @SDL_GetJoystickFromID_REAL(i32 noundef) local_unnamed_addr #3

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @HIDAPI_DriverPS5_HandleStatePacketAlt(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load i8, ptr %i.b, align 4, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp sgt i8 %i.f, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = and i32 %i.n, 3840
  %i.p = or disjoint i32 %i.o, %i.j
  %i.q = lshr i32 %i.m, 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 4
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = uitofp nneg i32 %i.p to float
  %i.x = fmul nnan float %i.w, f0x3A088889
  %i.y = uitofp nneg i32 %i.v to float
  %i.z = fmul nnan float %i.y, f0x3A74FE91
  %i.aa = select i1 %i.g, float 1.000000e+00, float 0.000000e+00
  tail call void @SDL_SendJoystickTouchpad(i64 noundef %3, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %i.g, float noundef %i.x, float noundef %i.z, float noundef %i.aa) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.ac = load i8, ptr %i.ab, align 1
end_hunk_0
