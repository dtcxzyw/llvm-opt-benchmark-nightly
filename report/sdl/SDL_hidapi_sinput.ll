Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_sinput?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@HIDAPI_DriverSInput_UpdateDevice:bb.a

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.2.i = phi i8 [ %i.el, %bb.az ], [ %.1.i, %bb.ay ]
  %i.em = load i8, ptr %i.ab, align 2, !range !3, !noundef !4
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.eo = load i16, ptr %i.ac, align 1
  call void @SDL_SendJoystickAxis(i64 noundef %i.bh, ptr noundef nonnull %i.k, i8 noundef zeroext %.2.i, i16 noundef signext %i.eo) #8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ep = load i8, ptr %i.ad, align 1
  %i.eq = load i8, ptr %i.ae, align 1             ; 2 uses
  %.not203.i = icmp eq i8 %i.ep, %i.eq
  br i1 %.not203.i, label %bb.bd, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bc
  %.pre231.i = load i8, ptr %.phi.trans.insert.i, align 2
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.er = load i8, ptr %i.af, align 2
  %i.es = load i8, ptr %.phi.trans.insert.i, align 2 ; 2 uses
  %.not204.i = icmp eq i8 %i.er, %i.es
  br i1 %.not204.i, label %.critedge.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i
  %i.et = phi i8 [ %.pre231.i, %._crit_edge.i ], [ %i.es, %bb.bd ]
  %i.eu = call i8 @llvm.umin.i8(i8 %i.et, i8 100) ; 2 uses
  switch i8 %i.eq, label %.critedge.i [
    i8 1, label %bb.bi
    i8 2, label %bb.bf
    i8 3, label %bb.bg
    i8 4, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.0184.i = phi i32 [ 1, %bb.bh ], [ 4, %bb.bg ], [ 3, %bb.bf ], [ 2, %bb.be ]
  %.0183.shrunk.i = phi i8 [ %i.eu, %bb.bh ], [ 100, %bb.bg ], [ %i.eu, %bb.bf ], [ 0, %bb.be ]
  %.0183.i = zext nneg i8 %.0183.shrunk.i to i32
  call void @SDL_SendJoystickPowerInfo(ptr noundef nonnull %i.k, i32 noundef %.0184.i, i32 noundef %.0183.i) #8
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.bi, %bb.be, %bb.bd
  %i.ev = load i8, ptr %i.ag, align 4, !range !3, !noundef !4
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %.critedge.i
  %i.ex = load i32, ptr %i.ah, align 1            ; 2 uses
  %i.ey = load i32, ptr %i.ai, align 4
  %.0182.i = sub i32 %i.ex, %i.ey
  %i.ez = zext i32 %.0182.i to i64
  %i.fa = mul nuw nsw i64 %i.ez, 1000
  %i.fb = load i64, ptr %i.aj, align 8
  %i.fc = add i64 %i.fa, %i.fb                    ; 2 uses
  store i64 %i.fc, ptr %i.aj, align 8
  store i32 %i.ex, ptr %i.ai, align 4
  %i.fd = load i8, ptr %i.ak, align 2, !range !3, !noundef !4
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ff = load float, ptr %i.al, align 8          ; 3 uses
  %i.fg = load i16, ptr %i.an, align 1
  %i.fh = sitofp i16 %i.fg to float
  %i.fi = fmul float %i.ff, %i.fh
  store float %i.fi, ptr %i.ao, align 4
  %i.fj = load <2 x i16>, ptr %i.ap, align 1
  %i.fk = sitofp <2 x i16> %i.fj to <2 x float>
  %i.fl = fneg <2 x float> %i.fk                  ; 2 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 1
  %i.fn = fmul float %i.ff, %i.fm
  store float %i.fn, ptr %i.am, align 4
  %i.fo = extractelement <2 x float> %i.fl, i64 0
  %i.fp = fmul float %i.ff, %i.fo
  store float %i.fp, ptr %i.a, align 4
  call void @SDL_SendJoystickSensor(i64 noundef %i.bh, ptr noundef nonnull %i.k, i32 noundef 2, i64 noundef %i.fc, ptr noundef nonnull %i.a, i32 noundef 3) #8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fq = load i8, ptr %i.aq, align 1, !range !3, !noundef !4
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fs = load float, ptr %i.ar, align 4          ; 3 uses
  %i.ft = load i16, ptr %i.as, align 1
  %i.fu = sitofp i16 %i.ft to float
  %i.fv = fmul float %i.fs, %i.fu
  store float %i.fv, ptr %i.ao, align 4
  %i.fw = load <2 x i16>, ptr %i.at, align 1
  %i.fx = sitofp <2 x i16> %i.fw to <2 x float>
  %i.fy = fneg <2 x float> %i.fx                  ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 1
  %i.ga = fmul float %i.fs, %i.fz
  store float %i.ga, ptr %i.am, align 4
  %i.gb = extractelement <2 x float> %i.fy, i64 0
  %i.gc = fmul float %i.fs, %i.gb
  store float %i.gc, ptr %i.a, align 4
  %i.gd = load i64, ptr %i.aj, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.bh, ptr noundef nonnull %i.k, i32 noundef 1, i64 noundef %i.gd, ptr noundef nonnull %i.a, i32 noundef 3) #8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %.critedge.i
  %i.ge = load i8, ptr %i.au, align 8, !range !3, !noundef !4
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.bo, label %HIDAPI_DriverSInput_HandleStatePacket.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gg = load i8, ptr %i.av, align 2
  %.not207.i = icmp eq i8 %i.gg, 0
  br i1 %.not207.i, label %HIDAPI_DriverSInput_HandleStatePacket.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gh = load i16, ptr %i.ax, align 1            ; 2 uses
  %i.gi = load <2 x i16>, ptr %i.ay, align 1
  %i.gj = load i16, ptr %i.az, align 1            ; 2 uses
  %i.gk = icmp ne i16 %i.gh, 0
  %i.gl = load <2 x i16>, ptr %i.aw, align 1
  %i.gm = sitofp <2 x i16> %i.gl to <2 x float>
  %i.gn = fmul nnan <2 x float> %i.gm, splat (float f0x37800000)
  %i.go = fadd <2 x float> %i.gn, splat (float 5.000000e-01) ; 2 uses
  %i.gp = uitofp i16 %i.gh to float
  %i.gq = fmul nnan float %i.gp, f0x38000000
  %i.gr = extractelement <2 x float> %i.go, i64 0
  %i.gs = extractelement <2 x float> %i.go, i64 1
  call void @SDL_SendJoystickTouchpad(i64 noundef %i.bh, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %i.gk, float noundef %i.gr, float noundef %i.gs, float noundef %i.gq) #8
  %i.gt = load i8, ptr %i.av, align 2
  %i.gu = icmp ugt i8 %i.gt, 1
  br i1 %i.gu, label %.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gv = load i8, ptr %i.ba, align 1
  %i.gw = icmp ugt i8 %i.gv, 1
  br i1 %i.gw, label %.thread.i, label %HIDAPI_DriverSInput_HandleStatePacket.exit

.thread.i:                                        ; preds = %bb.bq, %bb.bp
  %.0216.i = phi i32 [ 1, %bb.bq ], [ 0, %bb.bp ]
  %.0181215.i = phi i32 [ 0, %bb.bq ], [ 1, %bb.bp ]
  %i.gx = icmp ne i16 %i.gj, 0
  %i.gy = sitofp <2 x i16> %i.gi to <2 x float>
  %i.gz = fmul nnan <2 x float> %i.gy, splat (float f0x37800000)
  %i.ha = fadd <2 x float> %i.gz, splat (float 5.000000e-01) ; 2 uses
  %i.hb = uitofp i16 %i.gj to float
  %i.hc = fmul nnan float %i.hb, f0x38000000
  %i.hd = extractelement <2 x float> %i.ha, i64 0
  %i.he = extractelement <2 x float> %i.ha, i64 1
  call void @SDL_SendJoystickTouchpad(i64 noundef %i.bh, ptr noundef nonnull %i.k, i32 noundef %.0181215.i, i32 noundef %.0216.i, i1 noundef zeroext %i.gx, float noundef %i.hd, float noundef %i.he, float noundef %i.hc) #8
  br label %HIDAPI_DriverSInput_HandleStatePacket.exit

HIDAPI_DriverSInput_HandleStatePacket.exit:       ; preds = %bb.bn, %bb.bo, %bb.bq, %.thread.i
  %i.hf = call i32 @llvm.umin.i32(i32 range(i32 1, -2147483648) %i.be, i32 64)
  %i.hg = zext nneg i32 %i.hf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.q, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.b, i64 %i.hg, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.backedge

.backedge:                                        ; preds = %HIDAPI_DriverSInput_HandleStatePacket.exit, %.lr.ph.split
  %i.hh = load ptr, ptr %i.l, align 8
  %i.hi = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.hh, ptr noundef nonnull %i.b, i64 noundef 64, i32 noundef 0) #8 ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.split, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.backedge, %.backedge.us, %bb.b
  %.lcssa = phi i32 [ %i.n, %bb.b ], [ %i.bc, %.backedge.us ], [ %i.hi, %.backedge ] ; 2 uses
  %i.hk = icmp slt i32 %.lcssa, 0
  br i1 %i.hk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge
  %i.hl = load ptr, ptr %i.h, align 8
  %i.hm = load i32, ptr %i.hl, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.hm) #8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge
  %i.hn = icmp eq i32 %.lcssa, 0
  br label %bb.bt

bb.bt:                                            ; preds = %bb.a, %bb.bs
  %.0 = phi i1 [ %i.hn, %bb.bs ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverSInput_OpenJoystick(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((68, 72), (112, 116)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 12 uses
  tail call void @SDL_AssertJoysticksLocked() #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 109
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.i = load i8, ptr %i.h, align 4
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.m = load i8, ptr %i.l, align 1, !range !3, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.o, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.q = load i8, ptr %i.p, align 2, !range !3, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.t = load i16, ptr %i.s, align 4
  %i.u = uitofp i16 %i.t to float
  %i.v = fdiv float 1.000000e+06, %i.u
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 2, float noundef %i.v) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.x = load i8, ptr %i.w, align 1, !range !3, !noundef !4
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = uitofp i16 %i.aa to float
  %i.ac = fdiv float 1.000000e+06, %i.ab
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 1, float noundef %i.ac) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !range !3, !noundef !4
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %.thread28

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 2             ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  %spec.select = tail call i8 @llvm.umin.i8(i8 %i.ah, i8 2)
  %i.aj = select i1 %i.ai, i8 1, i8 %spec.select  ; 2 uses
  store i8 %i.aj, ptr %i.ag, align 2
  %i.ak = icmp samesign ugt i8 %i.aj, 1
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 2 uses
  br i1 %i.ak, label %._crit_edge, label %.thread.a

.thread.a:                                        ; preds = %bb.h
  %.pre = load i8, ptr %2, align 1
  %3 = zext i8 %.pre to i32
  br label %bb.i

._crit_edge:                                      ; preds = %bb.h
  store i8 1, ptr %2, align 1
  br label %bb.i

bb.i:                                             ; preds = %.thread.a, %._crit_edge
  %i.al = phi i32 [ %3, %.thread.a ], [ 1, %._crit_edge ]
  tail call void @SDL_PrivateJoystickAddTouchpad(ptr noundef nonnull %1, i32 noundef %i.al) #8
  %.pr = load i8, ptr %i.ag, align 2
  %i.am = icmp ugt i8 %.pr, 1
  br i1 %i.am, label %bb.j, label %.thread28

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  tail call void @SDL_PrivateJoystickAddTouchpad(ptr noundef nonnull %1, i32 noundef %i.ap) #8
  br label %.thread28

.thread28:                                        ; preds = %bb.i, %bb.j, %bb.g
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSInput_RumbleJoystick(ptr noundef %0, ptr nofree readnone captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !3, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i8 3, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.g, align 1
  %i.h = lshr i16 %2, 8
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = lshr i16 %3, 8
  %i.k = trunc nuw i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 2, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.i, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.k, ptr %i.n, align 1
  %i.o = call i32 @SDL_HIDAPI_SendRumble(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 48) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.p, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSInput_RumbleJoystickTriggers(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #8
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 24) i32 @HIDAPI_DriverSInput_GetJoystickCapabilities(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !3, !noundef !4
  %i.e = shl nuw nsw i8 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.g = load i8, ptr %i.f, align 2, !range !3, !noundef !4
  %i.h = shl nuw nsw i8 %i.g, 2
  %.17 = or disjoint i8 %i.h, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.j = load i8, ptr %i.i, align 1, !range !3, !noundef !4
  %i.k = shl nuw nsw i8 %i.j, 1
  %.28 = or disjoint i8 %.17, %i.k
  %.2 = zext nneg i8 %.28 to i32
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSInput_SetJoystickLED(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.e = load i8, ptr %i.d, align 1, !range !3, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i8 3, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 4, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %2, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %3, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %4, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 @SDL_hid_write_REAL(ptr noundef %i.l, ptr noundef nonnull %i.a, i64 noundef 48) #8
  %i.n = icmp sgt i32 %i.m, -1                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i1 [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSInput_SendJoystickEffect(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #8
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSInput_SetJoystickSensorsEnabled(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.e = load i8, ptr %i.d, align 1, !range !3, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !3, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %i.a, ptr %i.j, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_DriverSInput_CloseJoystick(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_DriverSInput_FreeDevice(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

declare zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_RemoveHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @SDL_IsJoystickSInputController(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @HIDAPI_SetDeviceName(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @HIDAPI_JoystickConnected(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @SDL_hid_write_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

declare void @SDL_Delay_REAL(i32 noundef) local_unnamed_addr #3

declare i32 @SDL_hid_read_timeout_REAL(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

end_hunk_0
