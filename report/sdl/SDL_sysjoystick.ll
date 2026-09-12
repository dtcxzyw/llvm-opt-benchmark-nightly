Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_sysjoystick?download=true
inline.NumInlined: 52
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@LINUX_JoystickRumble:bb.a
  %i.m = lshr i16 %1, 1
  %i.n = lshr i16 %2, 1
  %narrow = add nuw i16 %i.n, %i.m
  %i.o = lshr i16 %narrow, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i16 81, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i16 -1, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i16 90, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i16 %i.o, ptr %i.s, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #16
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.x = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.v, i64 noundef 1076905344, ptr noundef nonnull %i.w) #16
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 58
  store i16 -1, ptr %i.aa, align 2
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ae = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ac, i64 noundef 1076905344, ptr noundef nonnull %i.ad) #16
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call ptr @__errno_location() #17
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call ptr @strerror(i32 noundef %i.ah) #16
  %i.aj = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24, ptr noundef %i.ai) #16
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 21, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 58
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 1, ptr %i.ap, align 4
  %i.aq = load i32, ptr %i.al, align 8
  %i.ar = call i64 @write(i32 noundef %i.aq, ptr noundef nonnull %3, i64 noundef 24) #16
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = tail call ptr @__errno_location() #17
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call ptr @strerror(i32 noundef %i.au) #16
  %i.aw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25, ptr noundef %i.av) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.e
  %.0 = phi i1 [ %i.aj, %bb.h ], [ %i.aw, %bb.j ], [ %i.t, %bb.e ], [ true, %bb.i ]
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
  %i.l = call i64 @read(i32 noundef %i.k, ptr noundef nonnull %2, i64 noundef 256) #16 ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph31.i, label %HandleClassicEvents.exit

.loopexit.i:                                      ; preds = %HandleHat.exit.i, %.lr.ph31.i
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call i64 @read(i32 noundef %i.p, ptr noundef nonnull %2, i64 noundef 256) #16 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph31.i, label %HandleClassicEvents.exit, !llvm.loop !26

.lr.ph31.i:                                       ; preds = %bb.b, %.loopexit.i
  %3 = phi i64 [ %i.q, %.loopexit.i ], [ %i.l, %bb.b ] ; 2 uses
  %4 = and i64 %3, 2147483640
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph31.i
  %5 = lshr i64 %3, 3
  %wide.trip.count.i = and i64 %5, 268435455
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %HandleHat.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %HandleHat.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.v = load i8, ptr %i.u, align 2
  switch i8 %i.v, label %HandleHat.exit.i [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1792
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.af = zext i16 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aj = load i16, ptr %i.ai, align 4
  %i.ak = icmp ne i16 %i.aj, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.g, ptr noundef %0, i8 noundef zeroext %i.ah, i1 noundef zeroext %i.ak) #16
  br label %HandleHat.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1800
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1             ; 4 uses
  %i.at = and i8 %i.as, -8
  %switch.i = icmp eq i8 %i.at, 16
  br i1 %switch.i, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = add nsw i8 %i.as, -16
  %i.au = lshr i8 %.lhs.trunc.i, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 3660
  %i.aw = zext nneg i8 %i.au to i64               ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ba = and i8 %i.as, 1                         ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bc = load i16, ptr %i.bb, align 4            ; 3 uses
  %i.bd = sext i16 %i.bc to i32                   ; 6 uses
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.be = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3644
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.aw
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 3664
  %i.bn = getelementptr inbounds nuw [20 x i8], ptr %i.bm, i64 %i.aw ; 4 uses
  %i.bo = icmp slt i16 %i.bc, 0
  br i1 %i.bo, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = zext nneg i8 %i.ba to i64               ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %.not42.i.i = icmp slt i32 %i.bs, %i.bd
  br i1 %.not42.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.bd, ptr %i.br, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bt = load i8, ptr %i.bn, align 4, !range !6, !noundef !7
  %i.bu = trunc nuw i8 %i.bt to i1
  %.nonneg.i.i = sub i32 0, %i.bs
  %i.bv = udiv i32 %.nonneg.i.i, 3
  %.neg.i.i = sub nsw i32 0, %i.bv
  %i.bw = icmp sge i32 %i.bd, %.neg.i.i
  %or.cond.not.i.i = and i1 %i.bw, %i.bu
  %spec.select.i.i = zext i1 %or.cond.not.i.i to i32
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.j
  %.pre.i.i = zext nneg i8 %i.ba to i64
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.by = zext nneg i8 %i.ba to i64               ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %.not41.i.i = icmp sgt i32 %i.ca, %i.bd
  br i1 %.not41.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bd, ptr %i.bz, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cb = load i8, ptr %i.bn, align 4, !range !6, !noundef !7
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = udiv i32 %i.ca, 3
  %i.ce = icmp samesign uge i32 %i.cd, %i.bd
  %or.cond48.not.i.i = and i1 %i.ce, %i.cc
  %spec.select49.i.i = select i1 %or.cond48.not.i.i, i32 1, i32 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i, %bb.i, %bb.h
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.by, %bb.m ], [ %i.bq, %bb.i ], [ %i.by, %bb.l ], [ %i.bq, %bb.h ]
  %.0.i.i = phi i32 [ 1, %._crit_edge.i.i ], [ %spec.select49.i.i, %bb.m ], [ %spec.select.i.i, %bb.i ], [ 2, %bb.l ], [ 0, %bb.h ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.pre-phi.i.i ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %.not43.i.i = icmp eq i32 %.0.i.i, %i.cg
  br i1 %.not43.i.i, label %HandleHat.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.0.i.i, ptr %i.cf, align 4
  %i.ch = trunc i32 %i.bh to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [3 x i8], ptr @__const.HandleHat.position_map, i64 %i.ck
  %i.cm = load i32, ptr %i.bl, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  tail call void @SDL_SendJoystickHat(i64 noundef %i.g, ptr noundef nonnull %0, i8 noundef zeroext %i.ch, i8 noundef zeroext %i.cp) #16
  br label %HandleHat.exit.i

bb.p:                                             ; preds = %bb.e, %bb.d
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 895
  %i.cr = zext i8 %i.as to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.cv = load i16, ptr %i.cu, align 4
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.g, ptr noundef nonnull %0, i8 noundef zeroext %i.ct, i16 noundef signext %i.cv) #16
  br label %HandleHat.exit.i

HandleHat.exit.i:                                 ; preds = %bb.p, %bb.o, %bb.n, %bb.c, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !27

HandleClassicEvents.exit:                         ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.br

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.cw = load ptr, ptr %i.b, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3637
  %i.cy = load i8, ptr %i.cx, align 1, !range !6, !noundef !7
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.da = tail call i64 @SDL_GetTicksNS_REAL() #16 ; 2 uses
  tail call fastcc void @PollAllValues(i64 noundef %i.da, ptr noundef nonnull %0)
  %i.db = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3636
  %i.dd = load i8, ptr %i.dc, align 4, !range !6, !noundef !7
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @PollAllSensors(i64 noundef %i.da, ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.df = phi ptr [ %.pre.i, %bb.s ], [ %i.db, %bb.r ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 3637
  store i8 0, ptr %i.dg, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.dh = tail call ptr @__errno_location() #17   ; 4 uses
  store i32 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.b, align 8
  %i.dj = load i32, ptr %i.di, align 8
end_hunk_0
