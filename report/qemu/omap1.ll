Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/omap1?download=true
inline.NumInlined: 324
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@omap_rtc_write:bb.a
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.omap_rtc_alarm_update) #11
  br label %omap_rtc_alarm_update.exit

bb.u:                                             ; preds = %bb.d
  %i.ed = trunc i64 %2 to i8                      ; 2 uses
  %i.ee = lshr i8 %i.ed, 4
  %i.ef = mul nsw i8 %i.ee, -6
  %i.eg = add i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %i.eh, ptr %i.ei, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ek = tail call i64 @mktimegm(ptr noundef nonnull %i.ej) #11 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.ek, ptr %i.el, align 8
  %i.em = icmp eq i64 %i.ek, -1
  br i1 %i.em, label %bb.v, label %omap_rtc_alarm_update.exit

bb.v:                                             ; preds = %bb.u
  %i.en = load i32, ptr @qemu_loglevel, align 4
  %i.eo = and i32 %i.en, 2048
  %.not.i113 = icmp eq i32 %i.eo, 0
  br i1 %.not.i113, label %omap_rtc_alarm_update.exit, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.omap_rtc_alarm_update) #11
  br label %omap_rtc_alarm_update.exit

bb.x:                                             ; preds = %bb.d
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.eq = load i32, ptr %i.ep, align 16
  %.not108 = icmp eq i32 %i.eq, 0
  %i.er = trunc i64 %2 to i8                      ; 3 uses
  br i1 %.not108, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.es = and i8 %i.er, 63                        ; 2 uses
  %i.et = lshr i8 %i.es, 4
  %i.eu = mul nsw i8 %i.et, -6
  %i.ev = add nsw i8 %i.eu, %i.es
  %i.ew = urem i8 %i.ev, 12
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = and i64 %2, 128
  %.not109 = icmp eq i64 %i.ey, 0
  %i.ez = select i1 %.not109, i32 0, i32 12
  %i.fa = add nuw nsw i32 %i.ez, %i.ex
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.fb = lshr i8 %i.er, 4
  %i.fc = mul nsw i8 %i.fb, -6
  %i.fd = add i8 %i.fc, %i.er
  %i.fe = zext i8 %i.fd to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink = phi i32 [ %i.fe, %bb.z ], [ %i.fa, %bb.y ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %.sink, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fh = tail call i64 @mktimegm(ptr noundef nonnull %i.fg) #11 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.fh, ptr %i.fi, align 8
  %i.fj = icmp eq i64 %i.fh, -1
  br i1 %i.fj, label %bb.ab, label %omap_rtc_alarm_update.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fk = load i32, ptr @qemu_loglevel, align 4
  %i.fl = and i32 %i.fk, 2048
  %.not.i115 = icmp eq i32 %i.fl, 0
  br i1 %.not.i115, label %omap_rtc_alarm_update.exit, label %bb.ac, !prof !8

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.omap_rtc_alarm_update) #11
  br label %omap_rtc_alarm_update.exit

bb.ad:                                            ; preds = %bb.d
  %i.fm = trunc i64 %2 to i8                      ; 2 uses
  %i.fn = lshr i8 %i.fm, 4
  %i.fo = mul nsw i8 %i.fn, -6
  %i.fp = add i8 %i.fo, %i.fm
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ft = tail call i64 @mktimegm(ptr noundef nonnull %i.fs) #11 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.ft, ptr %i.fu, align 8
  %i.fv = icmp eq i64 %i.ft, -1
  br i1 %i.fv, label %bb.ae, label %omap_rtc_alarm_update.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fw = load i32, ptr @qemu_loglevel, align 4
  %i.fx = and i32 %i.fw, 2048
  %.not.i117 = icmp eq i32 %i.fx, 0
  br i1 %.not.i117, label %omap_rtc_alarm_update.exit, label %bb.af, !prof !8

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.omap_rtc_alarm_update) #11
  br label %omap_rtc_alarm_update.exit

bb.ag:                                            ; preds = %bb.d
  %i.fy = trunc i64 %2 to i8                      ; 2 uses
  %i.fz = lshr i8 %i.fy, 4
  %i.ga = mul nsw i8 %i.fz, -6
  %i.gb = add i8 %i.ga, %i.fy
  %i.gc = zext i8 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.gc, ptr %i.gd, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gf = tail call i64 @mktimegm(ptr noundef nonnull %i.ge) #11 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.gf, ptr %i.gg, align 8
  %i.gh = icmp eq i64 %i.gf, -1
  br i1 %i.gh, label %bb.ah, label %omap_rtc_alarm_update.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gi = load i32, ptr @qemu_loglevel, align 4
  %i.gj = and i32 %i.gi, 2048
  %.not.i119 = icmp eq i32 %i.gj, 0
  br i1 %.not.i119, label %omap_rtc_alarm_update.exit, label %bb.ai, !prof !8

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.omap_rtc_alarm_update) #11
  br label %omap_rtc_alarm_update.exit

bb.aj:                                            ; preds = %bb.d
  %i.gk = trunc i64 %2 to i8                      ; 2 uses
  %i.gl = lshr i8 %i.gk, 4
  %i.gm = mul nsw i8 %i.gl, -6
  %i.gn = add i8 %i.gm, %i.gk
  %i.go = zext i8 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i32 %i.go, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gr = tail call i64 @mktimegm(ptr noundef nonnull %i.gq) #11 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.gr, ptr %i.gs, align 8
  %i.gt = icmp eq i64 %i.gr, -1
  br i1 %i.gt, label %bb.ak, label %omap_rtc_alarm_update.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gu = load i32, ptr @qemu_loglevel, align 4
  %i.gv = and i32 %i.gu, 2048
  %.not.i121 = icmp eq i32 %i.gv, 0
  br i1 %.not.i121, label %omap_rtc_alarm_update.exit, label %bb.al, !prof !8

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.omap_rtc_alarm_update) #11
  br label %omap_rtc_alarm_update.exit

bb.am:                                            ; preds = %bb.d
  %i.gw = trunc i64 %2 to i32                     ; 4 uses
  %i.gx = lshr i32 %i.gw, 3
  %i.gy = and i32 %i.gx, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.gy, ptr %i.gz, align 16
  %i.ha = lshr i32 %i.gw, 2
  %i.hb = and i32 %i.ha, 1
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %i.hb, ptr %i.hc, align 4
  %i.hd = lshr i32 %i.gw, 1
  %i.he = and i32 %i.hd, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.he, ptr %i.hf, align 8
  %i.hg = and i32 %i.gw, 1                        ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 %i.hg, ptr %i.hh, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = and i8 %i.hj, -3
  %.tr107 = trunc nuw nsw i32 %i.hg to i8
  %i.hl = shl nuw nsw i8 %.tr107, 1
  %i.hm = or disjoint i8 %i.hk, %i.hl
  store i8 %i.hm, ptr %i.hi, align 1
  br label %omap_rtc_alarm_update.exit

bb.an:                                            ; preds = %bb.d
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = trunc i64 %2 to i8
  %i.hq = and i8 %i.hp, -64
  %i.hr = xor i8 %i.hq, 127
  %i.hs = and i8 %i.ho, %i.hr                     ; 2 uses
  store i8 %i.hs, ptr %i.hn, align 1
  %i.ht = getelementptr i8, ptr %0, i64 280
  %.val = load ptr, ptr %i.ht, align 8
  %i.hu = lshr i8 %i.hs, 6
  %i.hv = and i8 %i.hu, 1
  %i.hw = zext nneg i8 %i.hv to i32
  tail call void @qemu_set_irq(ptr noundef %.val, i32 noundef %i.hw) #11
  br label %omap_rtc_alarm_update.exit

bb.ao:                                            ; preds = %bb.d
  %i.hx = trunc i64 %2 to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %i.hx, ptr %i.hy, align 8
  br label %omap_rtc_alarm_update.exit

bb.ap:                                            ; preds = %bb.d
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 298
  %5 = trunc i64 %2 to i8
  store i8 %5, ptr %i.hz, align 2
  br label %omap_rtc_alarm_update.exit

bb.aq:                                            ; preds = %bb.d
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 298 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2
  %i.ic = and i16 %i.ib, 255
  %.tr = trunc i64 %2 to i16
  %i.id = shl i16 %.tr, 8
  %i.ie = or disjoint i16 %i.ic, %i.id
  store i16 %i.ie, ptr %i.ia, align 2
  br label %omap_rtc_alarm_update.exit

bb.ar:                                            ; preds = %bb.d
  %i.if = load i32, ptr @qemu_loglevel, align 4
  %i.ig = and i32 %i.if, 2048
  %.not124 = icmp eq i32 %i.ig, 0
  br i1 %.not124, label %omap_rtc_alarm_update.exit, label %bb.as, !prof !8

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.omap_rtc_write, i64 noundef %1) #11
  br label %omap_rtc_alarm_update.exit

omap_rtc_alarm_update.exit:                       ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.ar, %bb.as, %bb.d, %bb.p, %bb.q, %bb.m, %bb.n, %bb.b, %bb.c, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.k, %bb.j, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @omap_mcbsp_sink_tick(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.omap_mcbsp_sink_tick) #11
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.g = phi i32 [ %i.b, %bb.c ], [ %.pre, %bb.d ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i16, ptr %i.h, align 8
  %i.j = lshr i16 %i.i, 5
  %i.k = and i16 %i.j, 7
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @omap_mcbsp_source_tick.bps, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = shl i32 %i.g, %i.n
  store i32 %i.o, ptr %i.c, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 306 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = or i16 %i.q, 2
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.t = load ptr, ptr %i.s, align 16
  tail call void @qemu_set_irq(ptr noundef %i.t, i32 noundef 1) #11
  tail call fastcc void @omap_mcbsp_intr_update(ptr noundef nonnull %0)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #11
  %i.x = add i64 %i.w, 1000000000
  tail call void @timer_mod(ptr noundef %i.v, i64 noundef %i.x) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @omap_mcbsp_source_tick(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.omap_mcbsp_source_tick) #11
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.g = phi i32 [ %i.b, %bb.c ], [ %.pre, %bb.d ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.i = load i16, ptr %i.h, align 4
  %i.j = lshr i16 %i.i, 5
  %i.k = and i16 %i.j, 7
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @omap_mcbsp_source_tick.bps, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = shl i32 %i.g, %i.n
  store i32 %i.o, ptr %i.c, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.q = load i16, ptr %i.p, align 16             ; 2 uses
  %i.r = shl i16 %i.q, 1
  %i.s = and i16 %i.r, 4
  %spec.select.i = or i16 %i.q, %i.s
  %i.t = or i16 %spec.select.i, 2
  store i16 %i.t, ptr %i.p, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @qemu_set_irq(ptr noundef %i.v, i32 noundef 1) #11
  tail call fastcc void @omap_mcbsp_intr_update(ptr noundef nonnull %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.x = load ptr, ptr %i.w, align 16
  %i.y = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #11
  %i.z = add i64 %i.y, 1000000000
  tail call void @timer_mod(ptr noundef %i.x, i64 noundef %i.z) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 65536) i64 @omap_mcbsp_read(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @qemu_loglevel, align 4
  %i.b = and i32 %i.a, 2048
  %.not54 = icmp eq i32 %i.b, 0
  br i1 %.not54, label %bb.aq, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.omap_mcbsp_read, i64 noundef %1, i32 noundef %2) #11
  br label %bb.aq

bb.d:                                             ; preds = %bb.a
  %i.c = trunc i64 %1 to i32
  %i.d = and i32 %i.c, 2047
  switch i32 %i.d, label %bb.ao [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 4, label %bb.aq
    i32 6, label %bb.aq
    i32 8, label %bb.n
    i32 10, label %bb.o
    i32 12, label %bb.p
    i32 14, label %bb.q
    i32 16, label %bb.r
    i32 18, label %bb.s
    i32 20, label %bb.t
    i32 22, label %bb.u
    i32 24, label %bb.v
    i32 26, label %bb.w
    i32 28, label %bb.x
    i32 30, label %bb.y
    i32 32, label %bb.z
    i32 34, label %bb.aa
    i32 36, label %bb.ab
    i32 38, label %bb.ac
    i32 40, label %bb.ad
    i32 42, label %bb.ae
    i32 44, label %bb.af
    i32 46, label %bb.ag
    i32 48, label %bb.ah
    i32 50, label %bb.ai
    i32 52, label %bb.aj
    i32 54, label %bb.ak
    i32 56, label %bb.al
    i32 58, label %bb.am
    i32 60, label %bb.an
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.f = load i16, ptr %i.e, align 4
  %i.g = and i16 %i.f, 224
  %i.h = icmp samesign ult i16 %i.g, 96
  br i1 %i.h, label %bb.aq, label %bb.f

end_hunk_0
