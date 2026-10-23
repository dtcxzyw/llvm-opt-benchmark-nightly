Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_gip?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@GIP_EnableEliteButtons:bb.a
  store i32 2, ptr %i.p, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 4, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4               ; 3 uses
  %i.v = add i8 %i.u, 1
  %.not.i.i = icmp eq i8 %i.u, 0
  %spec.store.select32.i.i = select i1 %.not.i.i, i8 2, i8 %i.v
  store i8 %spec.store.select32.i.i, ptr %i.t, align 4
  %spec.select33.i.i = tail call i8 @llvm.umax.i8(i8 %i.u, i8 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2054) %i.a, i8 0, i64 2054, i1 false)
  store i8 77, ptr %i.a, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %spec.select33.i.i, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 2, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 7, ptr %i.y, align 4
  %i.z = tail call zeroext i1 @SDL_HIDAPI_LockRumble() #10
  br i1 %i.z, label %bb.k, label %GIP_SendVendorMessage.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = call i32 @SDL_HIDAPI_SendRumbleWithCallbackAndUnlock(ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef null, ptr noundef null) #10
  %i.ac = icmp eq i32 %i.ab, 6
  br label %GIP_SendVendorMessage.exit

GIP_SendVendorMessage.exit:                       ; preds = %bb.j, %bb.k
  %.0.i.i = phi i1 [ false, %bb.j ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %GIP_SendVendorMessage.exit
  %.0 = phi i1 [ %.0.i.i, %GIP_SendVendorMessage.exit ], [ true, %bb.i ]
  ret i1 %.0
}

declare zeroext i1 @SDL_SendKeyboardKey(i64 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @SDL_UCS4ToUTF8_REAL(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_SendKeyboardText(ptr noundef) local_unnamed_addr #3

declare i32 @SDL_GetKeymapKeycode(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @HIDAPI_SetDeviceSerial(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @GIP_HandleGamepadReport(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 64
  %i.d = icmp ne i8 %i.c, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 7, i1 noundef zeroext %i.d) #10
  %i.e = load i8, ptr %i.a, align 1
  %i.f = icmp slt i8 %i.e, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 8, i1 noundef zeroext %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i16
  %i.l = shl nuw i16 %i.k, 8                      ; 2 uses
  %i.m = zext i8 %i.h to i16
  %i.n = or disjoint i16 %i.l, %i.m
  %i.o = icmp slt i16 %i.l, 0
  %i.p = tail call i16 @llvm.smin.i16(i16 %i.n, i16 1023)
  %i.q = shl i16 %i.p, 6
  %i.r = xor i16 %i.q, -32768
  %i.s = select i1 %i.o, i16 -32768, i16 %i.r     ; 2 uses
  %i.t = icmp eq i16 %i.s, 32704
  %spec.store.select = select i1 %i.t, i16 32767, i16 %i.s
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 4, i16 noundef signext %spec.store.select) #10
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = shl nuw i16 %i.y, 8                      ; 2 uses
  %i.aa = zext i8 %i.v to i16
  %i.ab = or disjoint i16 %i.z, %i.aa
  %i.ac = icmp slt i16 %i.z, 0
  %i.ad = tail call i16 @llvm.smin.i16(i16 %i.ab, i16 1023)
  %i.ae = shl i16 %i.ad, 6
  %i.af = xor i16 %i.ae, -32768
  %i.ag = select i1 %i.ac, i16 -32768, i16 %i.af  ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 32704
  %spec.store.select1 = select i1 %i.ah, i16 32767, i16 %i.ag
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 5, i16 noundef signext %spec.store.select1) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aj = load i16, ptr %i.ai, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 0, i16 noundef signext %i.aj) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = xor i16 %i.al, -1
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 1, i16 noundef signext %i.am) #10
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ao = load i16, ptr %i.an, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 2, i16 noundef signext %i.ao) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = xor i16 %i.aq, -1
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 3, i16 noundef signext %i.ar) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GIP_HandleArcadeStickReport(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 6, -2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = shl nuw i16 %i.e, 8                      ; 2 uses
  %i.g = zext i8 %i.b to i16
  %i.h = or disjoint i16 %i.f, %i.g
  %i.i = icmp slt i16 %i.f, 0
  %i.j = tail call i16 @llvm.smin.i16(i16 %i.h, i16 1023)
  %i.k = shl i16 %i.j, 6
  %i.l = xor i16 %i.k, -32768
  %i.m = select i1 %i.i, i16 -32768, i16 %i.l     ; 2 uses
  %i.n = icmp eq i16 %i.m, 32704
  %spec.store.select = select i1 %i.n, i16 32767, i16 %i.m
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 4, i16 noundef signext %spec.store.select) #10
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  %i.t = shl nuw i16 %i.s, 8                      ; 2 uses
  %i.u = zext i8 %i.p to i16
  %i.v = or disjoint i16 %i.t, %i.u
  %i.w = icmp slt i16 %i.t, 0
  %i.x = tail call i16 @llvm.smin.i16(i16 %i.v, i16 1023)
  %i.y = shl i16 %i.x, 6
  %i.z = xor i16 %i.y, -32768
  %i.aa = select i1 %i.w, i16 -32768, i16 %i.z    ; 2 uses
  %i.ab = icmp eq i16 %i.aa, 32704
  %spec.store.select1 = select i1 %i.ab, i16 32767, i16 %i.aa
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 5, i16 noundef signext %spec.store.select1) #10
  %i.ac = icmp samesign ugt i32 %3, 18
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 64
  %.not = icmp eq i8 %i.af, 0
  %i.ag = select i1 %.not, i16 -32768, i16 32767
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 5, i16 noundef signext %i.ag) #10
  %i.ah = load i8, ptr %i.ad, align 1
  %.not29 = icmp sgt i8 %i.ah, -1
  %i.ai = select i1 %.not29, i16 -32768, i16 32767
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 4, i16 noundef signext %i.ai) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GIP_HandleFlightStickReport(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 6, -2147483648) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i32 %4, 19
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 245
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 247
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not = icmp eq i8 %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i8 %i.f to i1
  tail call void @SDL_SendJoystickButton(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 7, i1 noundef zeroext %i.g) #10
  %i.h = load i8, ptr %i.e, align 1
  %i.i = and i8 %i.h, 2
  %i.j = icmp ne i8 %i.i, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 8, i1 noundef zeroext %i.j) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 342
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph71, %.loopexit68
  %.070 = phi i32 [ 0, %.lr.ph71 ], [ %.2, %.loopexit68 ] ; 5 uses
  %i.o = sdiv i32 %.070, 8
  %i.p = add nsw i32 %i.o, 3
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr inbounds i8, ptr %3, i64 %i.q
  %i.u = load i8, ptr %i.t, align 1
  %.not67 = icmp eq i8 %i.s, %i.u
  br i1 %.not67, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.v = icmp slt i32 %.070, %i.l
  br i1 %i.v, label %.lr.ph, label %.loopexit68

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.169 = phi i32 [ %i.ai, %.lr.ph ], [ %.070, %.preheader ] ; 4 uses
  %i.w = load i8, ptr %i.n, align 2
  %i.x = trunc i32 %.169 to i8
  %i.y = add i8 %i.w, %i.x
  %i.z = sdiv i32 %.169, 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %3, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw i32 1, %.169
  %i.ag = and i32 %i.af, %i.ae
  %i.ah = icmp ne i32 %i.ag, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext %i.y, i1 noundef zeroext %i.ah) #10
  %i.ai = add nsw i32 %.169, 1                    ; 2 uses
  %i.aj = load i32, ptr %i.k, align 8
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !19

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i32 %.070, 8
  br label %.loopexit68

.loopexit68:                                      ; preds = %.preheader, %bb.f
  %.2 = phi i32 [ %i.al, %bb.f ], [ %.070, %.preheader ] ; 2 uses
  %i.am = icmp slt i32 %.2, %i.l
  br i1 %i.am, label %bb.e, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.loopexit68, %.lr.ph, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.ao = load i16, ptr %i.an, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 0, i16 noundef signext %i.ao) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.aq = load i16, ptr %i.ap, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 1, i16 noundef signext %i.aq) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.as = load i16, ptr %i.ar, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 2, i16 noundef signext %i.as) #10
  %i.at = getelementptr i8, ptr %3, i64 17
  %i.au = load i16, ptr %i.at, align 1
  %i.av = xor i16 %i.au, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 4, i16 noundef signext %i.av) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph74.preheader, label %.loopexit

.lr.ph74.preheader:                               ; preds = %._crit_edge
  %umax = tail call i32 @llvm.umax.i32(i32 %4, i32 20)
  %i.az = add nsw i32 %umax, -19
  %i.ba = lshr i32 %i.az, 1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ba to i64
  %exitcond.not85 = icmp eq i32 %i.ba, 0
  br i1 %exitcond.not85, label %.loopexit, label %.lr.ph87

.lr.ph74:                                         ; preds = %.lr.ph87
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph87, !llvm.loop !21

.lr.ph87:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %indvars.iv86 = phi i64 [ %indvars.iv.next, %.lr.ph74 ], [ 0, %.lr.ph74.preheader ] ; 3 uses
  %i.bb = shl nuw nsw i64 %indvars.iv86, 1        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = shl nuw i16 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = or disjoint i16 %i.bg, %i.bk
  %i.bm = xor i16 %i.bl, -32768
  %i.bn = trunc i64 %indvars.iv86 to i8
  %i.bo = add i8 %i.bn, 5
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext %i.bo, i16 noundef signext %i.bm) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv86, 1 ; 3 uses
  %i.bp = load i32, ptr %i.aw, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.lr.ph74, label %..loopexit.loopexit_crit_edge, !llvm.loop !21

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph87
  br label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph74, %.lr.ph74.preheader, %..loopexit.loopexit_crit_edge, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GIP_HandleGuitarReport(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 6, -2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i32 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %2, align 1                ; 2 uses
  %i.c = lshr i16 %i.b, 8
  %i.d = trunc nuw i16 %i.c to i8                 ; 3 uses
  %i.e = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.f = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.g = and <8 x i16> %i.f, <i16 4096, i16 16384, i16 4, i16 8, i16 128, i16 64, i16 32, i16 16>
  %i.h = icmp ne <8 x i16> %i.g, zeroinitializer  ; 8 uses
  %i.i = extractelement <8 x i1> %i.h, i64 7
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 0, i1 noundef zeroext %i.i) #10
  %i.j = extractelement <8 x i1> %i.h, i64 6
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 1, i1 noundef zeroext %i.j) #10
  %i.k = extractelement <8 x i1> %i.h, i64 5
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 2, i1 noundef zeroext %i.k) #10
  %i.l = extractelement <8 x i1> %i.h, i64 4
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 3, i1 noundef zeroext %i.l) #10
  %i.m = extractelement <8 x i1> %i.h, i64 3
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 4, i1 noundef zeroext %i.m) #10
  %i.n = extractelement <8 x i1> %i.h, i64 2
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 6, i1 noundef zeroext %i.n) #10
  %i.o = extractelement <8 x i1> %i.h, i64 1
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 8, i1 noundef zeroext %i.o) #10
  %i.p = extractelement <8 x i1> %i.h, i64 0
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 9, i1 noundef zeroext %i.p) #10
  %.lobit = and i8 %i.d, 1
  %i.q = shl i8 %i.d, 1
  %i.r = and i8 %i.q, 12
  %.2 = or disjoint i8 %i.r, %.lobit
  %i.s = lshr i8 %i.d, 2
  %i.t = and i8 %i.s, 2
  %.3 = or disjoint i8 %.2, %i.t
  tail call void @SDL_SendJoystickHat(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %.3) #10
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i16
  %i.x = mul nuw i16 %i.w, 257
  %i.y = xor i16 %i.x, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 2, i16 noundef signext %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp ugt i8 %i.aa, -49
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 10, i1 noundef zeroext %i.ab) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ad = load i8, ptr %i.ac, align 1
  %.not41 = icmp eq i8 %i.ad, 0
  %i.ae = select i1 %.not41, i16 -32768, i16 32767
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 4, i16 noundef signext %i.ae) #10
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = lshr i8 %i.ag, 4
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @GIP_HandleGuitarReport.effects_mappings, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  tail call void @SDL_SendJoystickAxis(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 3, i16 noundef signext %i.ak) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GIP_HandleDrumKitReport(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = zext i8 %i.a to i32                      ; 5 uses
  %i.f = and i32 %i.d, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %.not54 = icmp ult i8 %i.h, 16
  br i1 %.not54, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]         ; 2 uses
  %i.i = and i32 %i.d, 2
  %.not55 = icmp eq i32 %i.i, 0
  br i1 %.not55, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 15
  %.not56 = icmp eq i8 %i.l, 0
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = or disjoint i8 %.0, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i8 [ %i.m, %bb.f ], [ %.0, %bb.e ]
  %i.n = shl i8 %i.c, 1
  %i.o = and i8 %i.n, 8
  %i.p = lshr i8 %i.c, 2
  %i.q = and i8 %i.p, 2
  %spec.select = or disjoint i8 %i.q, %i.o
  %.3 = or i8 %spec.select, %.1
  tail call void @SDL_SendJoystickHat(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %.3) #10
  %i.r = and i32 %i.e, 8
  %i.s = icmp ne i32 %i.r, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 4, i1 noundef zeroext %i.s) #10
  %i.t = and i32 %i.e, 4
  %i.u = icmp ne i32 %i.t, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 6, i1 noundef zeroext %i.u) #10
  %i.v = and i32 %i.d, 16
  %i.w = icmp ne i32 %i.v, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 9, i1 noundef zeroext %i.w) #10
  %i.x = and i32 %i.d, 32
  %i.y = icmp ne i32 %i.x, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 10, i1 noundef zeroext %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 15
  %.not59 = icmp eq i8 %i.ab, 0
  br i1 %.not59, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ad = load i8, ptr %i.ac, align 1
  %.not60 = icmp ult i8 %i.ad, 16
  br i1 %.not60, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = and i32 %i.e, 16
  %i.af = icmp ne i32 %i.ae, 0
end_hunk_0
