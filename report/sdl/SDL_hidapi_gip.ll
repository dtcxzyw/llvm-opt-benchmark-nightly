Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_gip?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@GIP_HandleGamepadReport:bb.a
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
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 342
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph71, %.loopexit68
  %i.o = phi i32 [ %i.l, %.lr.ph71 ], [ %i.an, %.loopexit68 ] ; 3 uses
  %.070 = phi i32 [ 0, %.lr.ph71 ], [ %.2, %.loopexit68 ] ; 5 uses
  %i.p = sdiv i32 %.070, 8
  %i.q = add nsw i32 %i.p, 3
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds i8, ptr %3, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1
  %.not67 = icmp eq i8 %i.t, %i.v
  br i1 %.not67, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.w = icmp slt i32 %.070, %i.o
  br i1 %i.w, label %.lr.ph, label %.loopexit68

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.169 = phi i32 [ %i.aj, %.lr.ph ], [ %.070, %.preheader ] ; 4 uses
  %i.x = load i8, ptr %i.n, align 2
  %i.y = trunc i32 %.169 to i8
  %i.z = add i8 %i.x, %i.y
  %i.aa = sdiv i32 %.169, 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %3, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %.169
  %i.ah = and i32 %i.ag, %i.af
  %i.ai = icmp ne i32 %i.ah, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext %i.z, i1 noundef zeroext %i.ai) #10
  %i.aj = add nsw i32 %.169, 1                    ; 3 uses
  %i.ak = load i32, ptr %i.k, align 8             ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %.loopexit68, !llvm.loop !18

bb.f:                                             ; preds = %bb.e
  %i.am = add nsw i32 %.070, 8
  br label %.loopexit68

.loopexit68:                                      ; preds = %.lr.ph, %.preheader, %bb.f
  %i.an = phi i32 [ %i.o, %bb.f ], [ %i.o, %.preheader ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %i.am, %bb.f ], [ %.070, %.preheader ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.ao = icmp slt i32 %.2, %i.an
  br i1 %i.ao, label %bb.e, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.loopexit68, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.aq = load i16, ptr %i.ap, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 0, i16 noundef signext %i.aq) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.as = load i16, ptr %i.ar, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 1, i16 noundef signext %i.as) #10
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.au = load i16, ptr %i.at, align 1
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 2, i16 noundef signext %i.au) #10
  %i.av = getelementptr i8, ptr %3, i64 17
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = xor i16 %i.aw, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 4, i16 noundef signext %i.ax) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph74.preheader, label %.loopexit

.lr.ph74.preheader:                               ; preds = %._crit_edge
  %i.bb = add nsw i32 %4, -19
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bc to i64
  %exitcond.not85 = icmp eq i32 %i.bc, 0
  br i1 %exitcond.not85, label %.loopexit, label %.lr.ph87

.lr.ph74:                                         ; preds = %.lr.ph87
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph87, !llvm.loop !20

.lr.ph87:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %indvars.iv86 = phi i64 [ %indvars.iv.next, %.lr.ph74 ], [ 0, %.lr.ph74.preheader ] ; 3 uses
  %i.bd = shl nuw nsw i64 %indvars.iv86, 1        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 19
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = or disjoint i16 %i.bi, %i.bm
  %i.bo = xor i16 %i.bn, -32768
  %i.bp = trunc i64 %indvars.iv86 to i8
  %i.bq = add i8 %i.bp, 5
  tail call void @SDL_SendJoystickAxis(i64 noundef %2, ptr noundef nonnull %1, i8 noundef zeroext %i.bq, i16 noundef signext %i.bo) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv86, 1 ; 3 uses
  %i.br = load i32, ptr %i.ay, align 4
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %.lr.ph74, label %..loopexit.loopexit_crit_edge, !llvm.loop !20

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph87
  br label %.loopexit, !llvm.loop !20

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
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ %i.af, %bb.i ]
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 0, i1 noundef zeroext %i.ag) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp ugt i8 %i.ai, 15
  %i.ak = and i32 %i.e, 32
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = select i1 %i.aj, i1 true, i1 %i.al
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 1, i1 noundef zeroext %i.am) #10
  %i.an = load i8, ptr %i.z, align 1
  %.not61 = icmp ult i8 %i.an, 16
  br i1 %.not61, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = and i8 %i.ap, 15
  %.not62 = icmp eq i8 %i.aq, 0
  br i1 %.not62, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = and i32 %i.e, 64
  %i.as = icmp ne i32 %i.ar, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.at = phi i1 [ true, %bb.k ], [ true, %bb.j ], [ %i.as, %bb.l ]
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 2, i1 noundef zeroext %i.at) #10
  %i.au = load i8, ptr %i.ah, align 1
  %i.av = and i8 %i.au, 15
  %.not63 = icmp eq i8 %i.av, 0
  br i1 %.not63, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ax = load i8, ptr %i.aw, align 1
  %.not64 = icmp ugt i8 %i.ax, 15
  %i.ay = icmp slt i8 %i.a, 0
  %spec.select67 = select i1 %.not64, i1 true, i1 %i.ay
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = phi i1 [ %spec.select67, %bb.n ], [ true, %bb.m ]
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 3, i1 noundef zeroext %i.az) #10
  %i.ba = load i8, ptr %i.ah, align 1
  %.not65 = icmp eq i8 %i.ba, 0
  br i1 %.not65, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load i8, ptr %i.z, align 1
  %i.bc = icmp ne i8 %i.bb, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = phi i1 [ true, %bb.o ], [ %i.bc, %bb.p ]
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 7, i1 noundef zeroext %i.bd) #10
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bf = load i8, ptr %i.be, align 1
  %.not66 = icmp eq i8 %i.bf, 0
  br i1 %.not66, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp ne i8 %i.bh, 0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = phi i1 [ true, %bb.q ], [ %i.bi, %bb.r ]
  tail call void @SDL_SendJoystickButton(i64 noundef %1, ptr noundef nonnull %0, i8 noundef zeroext 8, i1 noundef zeroext %i.bj) #10
  ret void
}

declare void @SDL_SendJoystickHat(i64 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendJoystickAxis(i64 noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverGIP_RumbleSent(ptr nofree noundef writeonly captures(none) initializes((232, 240)) %0) #0 {
bb.a:
  %i.a = tail call i64 @SDL_GetTicks_REAL() #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.a, ptr %i.b, align 8
  ret void
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @HIDAPI_DriverGIP_FindAttachment(ptr nofree readonly captures(none) %.112.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #10
  %i.a = getelementptr inbounds nuw i8, ptr %.112.val, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load i32, ptr %0, align 8
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.112.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.1 = icmp eq ptr %i.h, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = load i32, ptr %0, align 8
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.112.val, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.2 = icmp eq ptr %i.n, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %0, align 8
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.112.val, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.3 = icmp eq ptr %i.t, null
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = load i32, ptr %0, align 8
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.112.val, i64 56
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.4 = icmp eq ptr %i.z, null
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = load i32, ptr %0, align 8
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.112.val, i64 64
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not.5 = icmp eq ptr %i.af, null
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = load i32, ptr %0, align 8
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.112.val, i64 72
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.6 = icmp eq ptr %i.al, null
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = load i32, ptr %0, align 8
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.112.val, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not.7 = icmp eq ptr %i.ar, null
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = load i32, ptr %0, align 8
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.010 = phi ptr [ %i.b, %bb.b ], [ null, %bb.q ], [ %i.h, %bb.d ], [ %i.ar, %bb.p ], [ %i.n, %bb.f ], [ %i.af, %bb.l ], [ %i.t, %bb.h ], [ %i.al, %bb.n ], [ %i.z, %bb.j ]
  ret ptr %.010
}

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #3

declare void @SDL_RemoveKeyboard(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7}
!1 = distinct !{!1, !7}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
end_hunk_0
