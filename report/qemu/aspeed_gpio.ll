Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed_gpio?download=true
inline.NumInlined: 172
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@aspeed_gpio_read:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr @_TRACE_ASPEED_GPIO_READ_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_aspeed_gpio_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %trace_aspeed_gpio_read.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %i.i) #9
  br label %trace_aspeed_gpio_read.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %.not = icmp samesign ult i64 %i.d, %i.p
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 2048
  %.not48 = icmp eq i32 %i.r, 0
  br i1 %.not48, label %trace_aspeed_gpio_read.exit, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.aspeed_gpio_read, i64 noundef %i.d) #9
  br label %trace_aspeed_gpio_read.exit

bb.i:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.d ; 2 uses
  %i.v = load i16, ptr %i.u, align 4              ; 2 uses
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.y = load i32, ptr %i.x, align 4
  %.not43 = icmp ugt i32 %i.y, %i.w
  br i1 %.not43, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 2048
  %.not49 = icmp eq i32 %i.aa, 0
  br i1 %.not49, label %trace_aspeed_gpio_read.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.aspeed_gpio_read, i64 noundef %1) #9
  br label %trace_aspeed_gpio_read.exit

bb.l:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 3164
  %i.ac = zext i16 %i.v to i64
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.ac ; 14 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  switch i32 %i.af, label %bb.z [
    i32 1, label %bb.ab
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.t
    i32 10, label %bb.u
    i32 11, label %bb.v
    i32 12, label %bb.w
    i32 13, label %bb.x
    i32 14, label %bb.y
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  br label %bb.ab

bb.o:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %bb.ab

bb.p:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  br label %bb.ab

bb.q:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  br label %bb.ab

bb.r:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  br label %bb.ab

bb.s:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  br label %bb.ab

bb.t:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  br label %bb.ab

bb.u:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %bb.ab

bb.v:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  br label %bb.ab

bb.w:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  br label %bb.ab

bb.x:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br label %bb.ab

bb.y:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  br label %bb.ab

bb.z:                                             ; preds = %bb.l
  %i.at = load i32, ptr @qemu_loglevel, align 4
  %i.au = and i32 %i.at, 2048
  %.not50 = icmp eq i32 %i.au, 0
  br i1 %.not50, label %trace_aspeed_gpio_read.exit, label %bb.aa, !prof !9

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.aspeed_gpio_read, i64 noundef %1) #9
  br label %trace_aspeed_gpio_read.exit

bb.ab:                                            ; preds = %bb.l, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.0.in = phi ptr [ %i.as, %bb.y ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ], [ %i.ai, %bb.o ], [ %i.aj, %bb.p ], [ %i.ak, %bb.q ], [ %i.al, %bb.r ], [ %i.am, %bb.s ], [ %i.an, %bb.t ], [ %i.ao, %bb.u ], [ %i.ap, %bb.v ], [ %i.aq, %bb.w ], [ %i.ar, %bb.x ], [ %i.ad, %bb.l ]
  %.0 = load i32, ptr %.0.in, align 4
  %i.av = zext i32 %.0 to i64                     ; 5 uses
  %i.aw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i44 = icmp eq i32 %i.aw, 0
  br i1 %.not.i44, label %trace_aspeed_gpio_read.exit, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i16, ptr @_TRACE_ASPEED_GPIO_READ_DSTATE, align 2
  %.not2.i45 = icmp eq i16 %i.ax, 0
  br i1 %.not2.i45, label %trace_aspeed_gpio_read.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ay = load i32, ptr @qemu_loglevel, align 4
  %i.az = and i32 %i.ay, 32768
  %.not3.i46 = icmp eq i32 %i.az, 0
  br i1 %.not3.i46, label %trace_aspeed_gpio_read.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %i.av) #9
  br label %trace_aspeed_gpio_read.exit

trace_aspeed_gpio_read.exit:                      ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.e, %bb.d, %bb.c, %bb.b, %bb.z, %bb.aa, %bb.j, %bb.k, %bb.g, %bb.h
  %.041 = phi i64 [ 0, %bb.z ], [ %i.i, %bb.e ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.aa ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.av, %bb.ab ], [ %i.av, %bb.ac ], [ %i.av, %bb.ad ], [ %i.av, %bb.ae ]
  ret i64 %.041
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_gpio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO) #9 ; 6 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #9
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO_GET_CLASS) #9 ; 4 uses
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_aspeed_gpio_write.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_ASPEED_GPIO_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.e, 0
  br i1 %.not2.i, label %trace_aspeed_gpio_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %trace_aspeed_gpio_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.55, i64 noundef %1, i64 noundef %2) #9
  br label %trace_aspeed_gpio_write.exit

trace_aspeed_gpio_write.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = lshr i64 %1, 2                           ; 5 uses
  %i.i = icmp eq i64 %i.h, 171
  br i1 %i.i, label %bb.e, label %bb.v

bb.e:                                             ; preds = %trace_aspeed_gpio_write.exit
  %i.j = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO) #9 ; 5 uses
  %i.k = tail call ptr @object_get_class(ptr noundef %i.j) #9
  %i.l = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.k, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO_GET_CLASS) #9
  %i.m = trunc i64 %2 to i32                      ; 17 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = lshr i64 %2, 5
  %i.q = and i64 %i.p, 7                          ; 2 uses
  %i.r = and i32 %i.m, 31                         ; 14 uses
  %i.s = and i32 %i.m, 24                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 3164
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %i.q ; 25 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.q ; 4 uses
  %i.y = and i32 %i.m, 4096
  %.not.i102 = icmp eq i32 %i.y, 0
  br i1 %.not.i102, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 2048
  %.not225.i = icmp eq i32 %i.aa, 0
  br i1 %.not225.i, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.aspeed_gpio_write_index_mode, i64 noundef %1, i64 noundef %2, i32 noundef 1) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  switch i32 %i.o, label %bb.s [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = lshr i32 %i.m, 20
  %i.ae = and i32 %i.ad, 1
  %i.af = shl nuw i32 1, %i.r
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %i.ac, %i.ag
  %i.ai = shl nuw i32 %i.ae, %i.r
  %i.aj = or i32 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.aj, %i.al                    ; 4 uses
  %i.an = load i32, ptr %i.u, align 4             ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.ap = load i32, ptr %i.ao, align 4            ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ar = load i32, ptr %i.aq, align 4            ; 4 uses
  %i.as = and i32 %i.ap, 1
  %i.at = shl i32 %i.ar, 1
  %i.au = and i32 %i.at, 2
  %i.av = or disjoint i32 %i.au, %i.as
  %i.aw = icmp eq i32 %i.av, 0
  %.pn.v.i.i = select i1 %i.aw, i32 %i.am, i32 %i.an
  %.pn.i.i = and i32 %.pn.v.i.i, 255
  %i.ax = lshr i32 %i.ap, 8
  %i.ay = and i32 %i.ax, 1
  %i.az = lshr i32 %i.ar, 7
  %i.ba = and i32 %i.az, 2
  %i.bb = or disjoint i32 %i.ba, %i.ay
  %i.bc = icmp eq i32 %i.bb, 0
  %.pn.v.1.i.i = select i1 %i.bc, i32 %i.am, i32 %i.an
  %.pn.1.i.i = and i32 %.pn.v.1.i.i, 65280
  %.1.1.i.i = or disjoint i32 %.pn.1.i.i, %.pn.i.i
  %i.bd = lshr i32 %i.ap, 16
  %i.be = and i32 %i.bd, 1
  %i.bf = lshr i32 %i.ar, 15
  %i.bg = and i32 %i.bf, 2
  %i.bh = or disjoint i32 %i.bg, %i.be
  %i.bi = icmp eq i32 %i.bh, 0
  %.pn.v.2.i.i = select i1 %i.bi, i32 %i.am, i32 %i.an
  %.pn.2.i.i = and i32 %.pn.v.2.i.i, 16711680
  %.1.2.i.i = or disjoint i32 %.1.1.i.i, %.pn.2.i.i
  %i.bj = lshr i32 %i.ap, 24
  %i.bk = and i32 %i.bj, 1
  %i.bl = lshr i32 %i.ar, 23
  %i.bm = and i32 %i.bl, 2
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = icmp eq i32 %i.bn, 0
  %.pn.v.3.i.i = select i1 %i.bo, i32 %i.am, i32 %i.an
  %.pn.3.i.i = and i32 %.pn.v.3.i.i, -16777216
  %.1.3.i.i = or disjoint i32 %.1.2.i.i, %.pn.3.i.i ; 2 uses
  store i32 %.1.3.i.i, ptr %i.ab, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = load i32, ptr %i.bp, align 4
  tail call fastcc void @aspeed_gpio_update(ptr noundef %i.j, ptr noundef nonnull %i.u, i32 noundef %.1.3.i.i, i32 noundef %i.bq)
  br label %aspeed_gpio_write_index_mode.exit

bb.j:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4            ; 5 uses
  %i.bt = lshr i32 %i.m, 20
  %i.bu = and i32 %i.bt, 1
  %i.bv = shl nuw i32 1, %i.r
  %i.bw = xor i32 %i.bv, -1
  %i.bx = and i32 %i.bs, %i.bw
  %i.by = shl nuw i32 %i.bu, %i.r
  %i.bz = or i32 %i.bx, %i.by
  %i.ca = load i32, ptr %i.x, align 4
  %i.cb = xor i32 %i.ca, -1
  %i.cc = or i32 %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.cc, %i.ce                    ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.ch = load i32, ptr %i.cg, align 4            ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.cj = load i32, ptr %i.ci, align 4            ; 4 uses
  %i.ck = and i32 %i.ch, 1
  %i.cl = shl i32 %i.cj, 1
  %i.cm = and i32 %i.cl, 2
  %i.cn = or disjoint i32 %i.cm, %i.ck
  %i.co = icmp eq i32 %i.cn, 0
  %.pn.v.i137.i = select i1 %i.co, i32 %i.cf, i32 %i.bs
  %.pn.i138.i = and i32 %.pn.v.i137.i, 255
  %i.cp = lshr i32 %i.ch, 8
  %i.cq = and i32 %i.cp, 1
  %i.cr = lshr i32 %i.cj, 7
  %i.cs = and i32 %i.cr, 2
  %i.ct = or disjoint i32 %i.cs, %i.cq
  %i.cu = icmp eq i32 %i.ct, 0
  %.pn.v.1.i139.i = select i1 %i.cu, i32 %i.cf, i32 %i.bs
  %.pn.1.i140.i = and i32 %.pn.v.1.i139.i, 65280
  %.1.1.i141.i = or disjoint i32 %.pn.1.i140.i, %.pn.i138.i
  %i.cv = lshr i32 %i.ch, 16
  %i.cw = and i32 %i.cv, 1
  %i.cx = lshr i32 %i.cj, 15
  %i.cy = and i32 %i.cx, 2
  %i.cz = or disjoint i32 %i.cy, %i.cw
  %i.da = icmp eq i32 %i.cz, 0
  %.pn.v.2.i142.i = select i1 %i.da, i32 %i.cf, i32 %i.bs
  %.pn.2.i143.i = and i32 %.pn.v.2.i142.i, 16711680
  %.1.2.i144.i = or disjoint i32 %.1.1.i141.i, %.pn.2.i143.i
  %i.db = lshr i32 %i.ch, 24
  %i.dc = and i32 %i.db, 1
  %i.dd = lshr i32 %i.cj, 23
  %i.de = and i32 %i.dd, 2
  %i.df = or disjoint i32 %i.de, %i.dc
  %i.dg = icmp eq i32 %i.df, 0
  %.pn.v.3.i145.i = select i1 %i.dg, i32 %i.cf, i32 %i.bs
  %.pn.3.i146.i = and i32 %.pn.v.3.i145.i, -16777216
  %.1.3.i147.i = or disjoint i32 %.1.2.i144.i, %.pn.3.i146.i
  store i32 %.1.3.i147.i, ptr %i.br, align 4
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %4 = lshr i32 %i.m, 20
  %i.di = shl nuw i32 1, %i.r
  %i.dj = xor i32 %i.di, -1                       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.dm = load i32, ptr %i.dl, align 4            ; 4 uses
  %5 = lshr i32 %i.m, 21
  %6 = lshr i32 %i.m, 22
  %7 = lshr i32 %i.m, 23
  %i.dn = load i32, ptr %i.dk, align 4            ; 4 uses
  %i.do = lshr i32 %i.dn, 24
  %i.dp = lshr i32 %i.dn, 16
  %i.dq = lshr i32 %i.dn, 8
  %i.dr = and i32 %i.do, 1
  %i.ds = and i32 %i.dq, 1
  %i.dt = lshr i32 %i.dm, 23
  %i.du = lshr i32 %i.dm, 7
  %i.dv = and i32 %i.dt, 2
  %i.dw = and i32 %i.du, 2
  %i.dx = or disjoint i32 %i.dv, %i.dr
  %i.dy = insertelement <2 x i32> poison, i32 %i.dn, i64 0
  %i.dz = insertelement <2 x i32> %i.dy, i32 %i.dp, i64 1
  %i.ea = and <2 x i32> %i.dz, splat (i32 1)
  %i.eb = lshr i32 %i.dm, 15
  %i.ec = shl i32 %i.dm, 1
  %i.ed = insertelement <2 x i32> poison, i32 %i.ec, i64 0
  %i.ee = insertelement <2 x i32> %i.ed, i32 %i.eb, i64 1
  %i.ef = and <2 x i32> %i.ee, splat (i32 2)
  %i.eg = or disjoint <2 x i32> %i.ef, %i.ea
  %i.eh = or disjoint i32 %i.dw, %i.ds
  %i.ei = insertelement <4 x i32> poison, i32 %i.eh, i64 0
  %i.ej = shufflevector <2 x i32> %i.eg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x i32> %i.ei, <4 x i32> %i.ej, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.el = insertelement <4 x i32> %i.ek, i32 %i.dx, i64 3
  %i.em = icmp eq <4 x i32> %i.el, zeroinitializer ; 4 uses
  %i.en = load <4 x i32>, ptr %i.dh, align 4      ; 5 uses
  %8 = insertelement <4 x i32> poison, i32 %4, i64 0
  %9 = insertelement <4 x i32> %8, i32 %5, i64 1
  %10 = insertelement <4 x i32> %9, i32 %6, i64 2
  %11 = insertelement <4 x i32> %10, i32 %7, i64 3
  %i.eo = and <4 x i32> %11, splat (i32 1)
  %i.ep = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %i.eq = shufflevector <4 x i32> %i.ep, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.er = and <4 x i32> %i.en, %i.eq
  %i.es = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.et = shufflevector <4 x i32> %i.es, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eu = shl nuw <4 x i32> %i.eo, %i.et
  %i.ev = or <4 x i32> %i.er, %i.eu               ; 4 uses
  %i.ew = shufflevector <4 x i1> %i.em, <4 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ex = select <4 x i1> %i.ew, <4 x i32> %i.ev, <4 x i32> %i.en
  %i.ey = and <4 x i32> %i.ex, splat (i32 255)
  %i.ez = shufflevector <4 x i1> %i.em, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.fa = select <4 x i1> %i.ez, <4 x i32> %i.ev, <4 x i32> %i.en
  %i.fb = and <4 x i32> %i.fa, splat (i32 65280)
  %i.fc = or disjoint <4 x i32> %i.fb, %i.ey
  %i.fd = shufflevector <4 x i1> %i.em, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fe = select <4 x i1> %i.fd, <4 x i32> %i.ev, <4 x i32> %i.en
  %i.ff = and <4 x i32> %i.fe, splat (i32 16711680)
  %i.fg = or disjoint <4 x i32> %i.fc, %i.ff
  %i.fh = shufflevector <4 x i1> %i.em, <4 x i1> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fi = select <4 x i1> %i.fh, <4 x i32> %i.ev, <4 x i32> %i.en
  %i.fj = and <4 x i32> %i.fi, splat (i32 -16777216)
  %i.fk = or disjoint <4 x i32> %i.fg, %i.fj
  store <4 x i32> %i.fk, ptr %i.dh, align 4
  %i.fl = and i32 %i.m, 16777216
  %.not135.i = icmp eq i32 %i.fl, 0
  br i1 %.not135.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fm = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = lshr i32 %i.fn, %i.r
  %i.fp = and i32 %i.fo, 1                        ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 1088 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 16           ; 2 uses
  %.not136.i = icmp ult i32 %i.fr, %i.fp
  br i1 %.not136.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.42, i32 noundef 743, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_gpio_write_index_mode) #11
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.fs = sub nuw i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.fq, align 16
  %i.ft = and i32 %i.fn, %i.dj
  store i32 %i.ft, ptr %i.fm, align 4
  br label %bb.u

bb.o:                                             ; preds = %bb.h
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4            ; 5 uses
  %i.fw = lshr i32 %i.m, 20
  %i.fx = and i32 %i.fw, 1
  %i.fy = shl nuw i32 1, %i.r
  %i.fz = xor i32 %i.fy, -1                       ; 2 uses
  %i.ga = and i32 %i.fv, %i.fz
  %i.gb = shl nuw i32 %i.fx, %i.r
  %i.gc = or i32 %i.ga, %i.gb                     ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.ge = load i32, ptr %i.gd, align 4            ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.gg = load i32, ptr %i.gf, align 4            ; 4 uses
  %i.gh = and i32 %i.ge, 1
  %i.gi = shl i32 %i.gg, 1
  %i.gj = and i32 %i.gi, 2
  %i.gk = or disjoint i32 %i.gj, %i.gh
  %i.gl = icmp eq i32 %i.gk, 0                    ; 2 uses
  %.pn.v.i192.i = select i1 %i.gl, i32 %i.gc, i32 %i.fv
  %.pn.i193.i = and i32 %.pn.v.i192.i, 255
  %i.gm = lshr i32 %i.ge, 8
  %i.gn = and i32 %i.gm, 1
  %i.go = lshr i32 %i.gg, 7
  %i.gp = and i32 %i.go, 2
  %i.gq = or disjoint i32 %i.gp, %i.gn
  %i.gr = icmp eq i32 %i.gq, 0                    ; 2 uses
  %.pn.v.1.i194.i = select i1 %i.gr, i32 %i.gc, i32 %i.fv
  %.pn.1.i195.i = and i32 %.pn.v.1.i194.i, 65280
  %.1.1.i196.i = or disjoint i32 %.pn.1.i195.i, %.pn.i193.i
  %i.gs = lshr i32 %i.ge, 16
  %i.gt = and i32 %i.gs, 1
  %i.gu = lshr i32 %i.gg, 15
  %i.gv = and i32 %i.gu, 2
  %i.gw = or disjoint i32 %i.gv, %i.gt
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %.pn.v.2.i197.i = select i1 %i.gx, i32 %i.gc, i32 %i.fv
  %.pn.2.i198.i = and i32 %.pn.v.2.i197.i, 16711680
  %.1.2.i199.i = or disjoint i32 %.1.1.i196.i, %.pn.2.i198.i
  %i.gy = lshr i32 %i.ge, 24
  %i.gz = and i32 %i.gy, 1
  %i.ha = lshr i32 %i.gg, 23
  %i.hb = and i32 %i.ha, 2
  %i.hc = or disjoint i32 %i.hb, %i.gz
  %i.hd = icmp eq i32 %i.hc, 0                    ; 2 uses
  %.pn.v.3.i200.i = select i1 %i.hd, i32 %i.gc, i32 %i.fv
  %.pn.3.i201.i = and i32 %.pn.v.3.i200.i, -16777216
  %.1.3.i202.i = or disjoint i32 %.1.2.i199.i, %.pn.3.i201.i
  store i32 %.1.3.i202.i, ptr %i.fu, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4            ; 5 uses
  %i.hg = lshr i32 %i.m, 21
  %i.hh = and i32 %i.hg, 1
  %i.hi = and i32 %i.hf, %i.fz
  %i.hj = shl nuw i32 %i.hh, %i.r
  %i.hk = or i32 %i.hi, %i.hj                     ; 4 uses
  %.pn.v.i203.i = select i1 %i.gl, i32 %i.hk, i32 %i.hf
  %.pn.i204.i = and i32 %.pn.v.i203.i, 255
  %.pn.v.1.i205.i = select i1 %i.gr, i32 %i.hk, i32 %i.hf
  %.pn.1.i206.i = and i32 %.pn.v.1.i205.i, 65280
  %.1.1.i207.i = or disjoint i32 %.pn.1.i206.i, %.pn.i204.i
  %.pn.v.2.i208.i = select i1 %i.gx, i32 %i.hk, i32 %i.hf
  %.pn.2.i209.i = and i32 %.pn.v.2.i208.i, 16711680
  %.1.2.i210.i = or disjoint i32 %.1.1.i207.i, %.pn.2.i209.i
  %.pn.v.3.i211.i = select i1 %i.hd, i32 %i.hk, i32 %i.hf
  %.pn.3.i212.i = and i32 %.pn.v.3.i211.i, -16777216
  %.1.3.i213.i = or disjoint i32 %.1.2.i210.i, %.pn.3.i212.i
  store i32 %.1.3.i213.i, ptr %i.he, align 4
  br label %aspeed_gpio_write_index_mode.exit

bb.p:                                             ; preds = %bb.h
  %i.hl = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 5 uses
  %i.hn = lshr i32 %i.m, 20
  %i.ho = and i32 %i.hn, 1
  %i.hp = shl nuw i32 1, %i.r
  %i.hq = xor i32 %i.hp, -1
  %i.hr = and i32 %i.hm, %i.hq
  %i.hs = shl nuw i32 %i.ho, %i.r
  %i.ht = or i32 %i.hr, %i.hs                     ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.hv = load i32, ptr %i.hu, align 4            ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.hx = load i32, ptr %i.hw, align 4            ; 4 uses
  %i.hy = and i32 %i.hv, 1
  %i.hz = shl i32 %i.hx, 1
  %i.ia = and i32 %i.hz, 2
  %i.ib = or disjoint i32 %i.ia, %i.hy
  %i.ic = icmp eq i32 %i.ib, 0
  %.pn.v.i214.i = select i1 %i.ic, i32 %i.ht, i32 %i.hm
  %.pn.i215.i = and i32 %.pn.v.i214.i, 255
  %i.id = lshr i32 %i.hv, 8
  %i.ie = and i32 %i.id, 1
  %i.if = lshr i32 %i.hx, 7
  %i.ig = and i32 %i.if, 2
  %i.ih = or disjoint i32 %i.ig, %i.ie
  %i.ii = icmp eq i32 %i.ih, 0
  %.pn.v.1.i216.i = select i1 %i.ii, i32 %i.ht, i32 %i.hm
  %.pn.1.i217.i = and i32 %.pn.v.1.i216.i, 65280
  %.1.1.i218.i = or disjoint i32 %.pn.1.i217.i, %.pn.i215.i
  %i.ij = lshr i32 %i.hv, 16
  %i.ik = and i32 %i.ij, 1
  %i.il = lshr i32 %i.hx, 15
  %i.im = and i32 %i.il, 2
  %i.in = or disjoint i32 %i.im, %i.ik
  %i.io = icmp eq i32 %i.in, 0
  %.pn.v.2.i219.i = select i1 %i.io, i32 %i.ht, i32 %i.hm
  %.pn.2.i220.i = and i32 %.pn.v.2.i219.i, 16711680
  %.1.2.i221.i = or disjoint i32 %.1.1.i218.i, %.pn.2.i220.i
  %i.ip = lshr i32 %i.hv, 24
  %i.iq = and i32 %i.ip, 1
  %i.ir = lshr i32 %i.hx, 23
  %i.is = and i32 %i.ir, 2
  %i.it = or disjoint i32 %i.is, %i.iq
  %i.iu = icmp eq i32 %i.it, 0
  %.pn.v.3.i222.i = select i1 %i.iu, i32 %i.ht, i32 %i.hm
  %.pn.3.i223.i = and i32 %.pn.v.3.i222.i, -16777216
  %.1.3.i224.i = or disjoint i32 %.1.2.i221.i, %.pn.3.i223.i
  store i32 %.1.3.i224.i, ptr %i.hl, align 4
  br label %aspeed_gpio_write_index_mode.exit

bb.q:                                             ; preds = %bb.h
  %i.iv = getelementptr inbounds nuw i8, ptr %i.u, i64 36 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = lshr i32 %i.m, 20
  %i.iy = and i32 %i.ix, 1
  %i.iz = shl nuw nsw i32 1, %i.s
  %i.ja = shl nuw nsw i32 %i.iy, %i.s
  %i.jb = xor i32 %i.iz, 16843009                 ; 2 uses
  %.masked.i = and i32 %i.iw, %i.jb
  %i.jc = or i32 %.masked.i, %i.ja
  store i32 %i.jc, ptr %i.iv, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = lshr i32 %i.m, 21
  %i.jg = and i32 %i.jf, 1
  %i.jh = shl nuw nsw i32 %i.jg, %i.s
  %.masked226.i = and i32 %i.je, %i.jb
  %i.ji = or i32 %.masked226.i, %i.jh
  store i32 %i.ji, ptr %i.jd, align 4
  br label %aspeed_gpio_write_index_mode.exit

bb.r:                                             ; preds = %bb.h
  %i.jj = getelementptr inbounds nuw i8, ptr %i.u, i64 52 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = lshr i32 %i.m, 20
  %i.jm = and i32 %i.jl, 1
  %i.jn = shl nuw i32 1, %i.r
  %i.jo = xor i32 %i.jn, -1
  %i.jp = and i32 %i.jk, %i.jo
  %i.jq = shl nuw i32 %i.jm, %i.r
  %i.jr = or i32 %i.jp, %i.jq
end_hunk_0
begin_hunk_1_@aspeed_gpio_2700_read:bb.a
  switch i64 %i.d, label %bb.p [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 64, label %bb.i
    i64 65, label %bb.i
    i64 66, label %bb.i
    i64 67, label %bb.i
    i64 68, label %bb.i
    i64 69, label %bb.i
    i64 70, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.j = trunc nuw nsw i64 %i.d to i32
  %i.k = icmp ugt i64 %1, 11
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 2048
  %.not41 = icmp eq i32 %i.m, 0
  br i1 %.not41, label %trace_aspeed_gpio_read.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.aspeed_gpio_2700_read, i32 noundef %i.j) #9
  br label %trace_aspeed_gpio_read.exit

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3152
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.d
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  br label %bb.t

bb.i:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.r = trunc nuw nsw i64 %i.d to i32
  %i.s = add nsw i32 %i.r, -64                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.u = load i32, ptr %i.t, align 4
  %.not37 = icmp ult i32 %i.s, %i.u
  br i1 %.not37, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 2048
  %.not40 = icmp eq i32 %i.w, 0
  br i1 %.not40, label %trace_aspeed_gpio_read.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.aspeed_gpio_2700_read, i32 noundef %i.s) #9
  br label %trace_aspeed_gpio_read.exit

bb.l:                                             ; preds = %bb.i
  %i.x = zext nneg i32 %i.s to i64
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3192
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  br label %bb.t

bb.m:                                             ; preds = %bb.p
  %i.ac = trunc nuw nsw i64 %i.ah to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.ae = load i32, ptr %i.ad, align 8
  %.not38 = icmp ugt i32 %i.ae, %i.ac
  br i1 %.not38, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr @qemu_loglevel, align 4
  %i.ag = and i32 %i.af, 2048
  %.not43 = icmp eq i32 %i.ag, 0
  br i1 %.not43, label %trace_aspeed_gpio_read.exit, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.aspeed_gpio_2700_read, i32 noundef %i.ac) #9
  br label %trace_aspeed_gpio_read.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %i.d, -96                   ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 216
  br i1 %i.ai, label %bb.m, label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.aj = tail call fastcc i64 @aspeed_gpio_2700_read_control_reg(ptr noundef %i.a, i32 noundef %i.ac)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 2048
  %.not42 = icmp eq i32 %i.al, 0
  br i1 %.not42, label %trace_aspeed_gpio_read.exit, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.aspeed_gpio_2700_read, i64 noundef %1) #9
  br label %trace_aspeed_gpio_read.exit

bb.t:                                             ; preds = %bb.q, %bb.l, %bb.h
  %.0 = phi i64 [ %i.aj, %bb.q ], [ %i.q, %bb.h ], [ %i.ab, %bb.l ] ; 5 uses
  %i.am = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %trace_aspeed_gpio_read.exit, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.an = load i16, ptr @_TRACE_ASPEED_GPIO_READ_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.an, 0
  br i1 %.not2.i, label %trace_aspeed_gpio_read.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = load i32, ptr @qemu_loglevel, align 4
  %i.ap = and i32 %i.ao, 32768
  %.not3.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i, label %trace_aspeed_gpio_read.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %.0) #9
  br label %trace_aspeed_gpio_read.exit

trace_aspeed_gpio_read.exit:                      ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.s, %bb.n, %bb.o, %bb.j, %bb.k, %bb.f, %bb.g, %bb.b, %bb.c
  %.029 = phi i64 [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ %.0, %bb.w ]
  ret i64 %.029
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_gpio_2700_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO) #9 ; 6 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #9
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO_GET_CLASS) #9 ; 2 uses
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_aspeed_gpio_write.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_ASPEED_GPIO_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.e, 0
  br i1 %.not2.i, label %trace_aspeed_gpio_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %trace_aspeed_gpio_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.55, i64 noundef %1, i64 noundef %2) #9
  br label %trace_aspeed_gpio_write.exit

trace_aspeed_gpio_write.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = lshr i64 %1, 2                           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  %.not = icmp samesign ult i64 %i.h, %i.k
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %trace_aspeed_gpio_write.exit
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 2048
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %aspeed_gpio_2700_write_control_reg.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.aspeed_gpio_2700_write, i64 noundef %1) #9
  br label %aspeed_gpio_2700_write_control_reg.exit

bb.g:                                             ; preds = %trace_aspeed_gpio_write.exit
  %switch = icmp ult i64 %1, 12
  br i1 %switch, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = trunc i64 %2 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3152
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.h
  store i32 %i.n, ptr %i.p, align 4
  br label %aspeed_gpio_2700_write_control_reg.exit

bb.i:                                             ; preds = %bb.l
  %i.q = trunc nuw nsw i64 %i.v to i32            ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.s = load i32, ptr %i.r, align 8
  %.not28 = icmp ugt i32 %i.s, %i.q
  br i1 %.not28, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 2048
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %aspeed_gpio_2700_write_control_reg.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.aspeed_gpio_2700_write, i32 noundef %i.q) #9
  br label %aspeed_gpio_2700_write_control_reg.exit

bb.l:                                             ; preds = %bb.g
  %i.v = add nsw i64 %i.h, -96                    ; 2 uses
  %i.w = icmp ult i64 %i.v, 216
  br i1 %i.w, label %bb.i, label %bb.x

bb.m:                                             ; preds = %bb.i
  %i.x = trunc i64 %2 to i32                      ; 12 uses
  %.not29 = icmp ult i32 %i.x, 16384
  br i1 %.not29, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 2048
  %.not34 = icmp eq i32 %i.z, 0
  br i1 %.not34, label %aspeed_gpio_2700_write_control_reg.exit, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.aspeed_gpio_2700_write, i64 noundef %2) #9
  br label %aspeed_gpio_2700_write_control_reg.exit

bb.p:                                             ; preds = %bb.m
  %i.aa = tail call ptr @object_get_class(ptr noundef %i.a) #9
  %i.ab = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.aa, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO_GET_CLASS) #9 ; 2 uses
  %i.ac = lshr i32 %i.q, 5                        ; 3 uses
  %i.ad = and i32 %i.q, 31                        ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 204
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i30 = icmp ult i32 %i.ac, %i.af
  br i1 %.not.i30, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 2048
  %.not199.i = icmp eq i32 %i.ah, 0
  br i1 %.not199.i, label %aspeed_gpio_2700_write_control_reg.exit, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.aspeed_gpio_2700_write_control_reg, i32 noundef %i.ac) #9
  br label %aspeed_gpio_2700_write_control_reg.exit

bb.s:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 3164
  %i.aj = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %i.aj ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.aj ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 5 uses
  %i.aq = lshr i32 %i.x, 1
  %i.ar = and i32 %i.aq, 1
  %i.as = shl nuw i32 1, %i.ad
  %i.at = xor i32 %i.as, -1                       ; 7 uses
  %i.au = and i32 %i.ap, %i.at
  %i.av = shl nuw i32 %i.ar, %i.ad
  %i.aw = or i32 %i.au, %i.av
  %i.ax = load i32, ptr %i.an, align 4
  %i.ay = xor i32 %i.ax, -1
  %i.az = or i32 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.az, %i.bb                    ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %4 = load i32, ptr %i.be, align 4               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 5 uses
  %i.bh = and i32 %i.x, 1
  %i.bi = and i32 %i.bg, %i.at
  %i.bj = shl nuw i32 %i.bh, %i.ad
  %i.bk = or i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %5 = lshr i32 %i.x, 2
  %6 = lshr i32 %i.x, 3
  %7 = lshr i32 %i.x, 4
  %8 = lshr i32 %i.x, 5
  %i.bm = load i32, ptr %i.bd, align 4            ; 4 uses
  %i.bn = lshr i32 %i.bm, 24
  %i.bo = lshr i32 %i.bm, 16
  %i.bp = lshr i32 %i.bm, 8
  %i.bq = and i32 %i.bn, 1
  %i.br = and i32 %i.bp, 1
  %i.bs = lshr i32 %4, 23
  %i.bt = lshr i32 %4, 7
  %i.bu = and i32 %i.bs, 2
  %i.bv = and i32 %i.bt, 2
  %i.bw = or disjoint i32 %i.bu, %i.bq
  %i.bx = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.by = insertelement <2 x i32> %i.bx, i32 %i.bo, i64 1
  %i.bz = and <2 x i32> %i.by, splat (i32 1)
  %i.ca = lshr i32 %4, 15
  %i.cb = shl i32 %4, 1
  %i.cc = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %i.cd = insertelement <2 x i32> %i.cc, i32 %i.ca, i64 1
  %i.ce = and <2 x i32> %i.cd, splat (i32 2)
  %i.cf = or disjoint <2 x i32> %i.ce, %i.bz
  %i.cg = or disjoint i32 %i.bv, %i.br
  %i.ch = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.ci = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x i32> %i.ch, <4 x i32> %i.ci, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.bw, i64 3
  %i.cl = icmp eq <4 x i32> %i.ck, zeroinitializer ; 12 uses
  %i.cm = extractelement <4 x i1> %i.cl, i64 1    ; 3 uses
  %.pn.v.i.i = select i1 %i.cm, i32 %i.bc, i32 %i.ap
  %.pn.i.i = and i32 %.pn.v.i.i, 255
  %i.cn = extractelement <4 x i1> %i.cl, i64 0    ; 3 uses
  %.pn.v.1.i.i = select i1 %i.cn, i32 %i.bc, i32 %i.ap
  %.pn.1.i.i = and i32 %.pn.v.1.i.i, 65280
  %.1.1.i.i = or disjoint i32 %.pn.1.i.i, %.pn.i.i
  %i.co = extractelement <4 x i1> %i.cl, i64 2    ; 3 uses
  %.pn.v.2.i.i = select i1 %i.co, i32 %i.bc, i32 %i.ap
  %.pn.2.i.i = and i32 %.pn.v.2.i.i, 16711680
  %.1.2.i.i = or disjoint i32 %.1.1.i.i, %.pn.2.i.i
  %i.cp = extractelement <4 x i1> %i.cl, i64 3    ; 3 uses
  %.pn.v.3.i.i = select i1 %i.cp, i32 %i.bc, i32 %i.ap
  %.pn.3.i.i = and i32 %.pn.v.3.i.i, -16777216
  %.1.3.i.i = or disjoint i32 %.1.2.i.i, %.pn.3.i.i
  store i32 %.1.3.i.i, ptr %i.ao, align 4
  %i.cq = load i32, ptr %i.ba, align 4
  %i.cr = and i32 %i.bk, %i.cq                    ; 4 uses
  %.pn.v.i111.i = select i1 %i.cm, i32 %i.cr, i32 %i.bg
  %.pn.i112.i = and i32 %.pn.v.i111.i, 255
  %.pn.v.1.i113.i = select i1 %i.cn, i32 %i.cr, i32 %i.bg
  %.pn.1.i114.i = and i32 %.pn.v.1.i113.i, 65280
  %.1.1.i115.i = or disjoint i32 %.pn.1.i114.i, %.pn.i112.i
  %.pn.v.2.i116.i = select i1 %i.co, i32 %i.cr, i32 %i.bg
  %.pn.2.i117.i = and i32 %.pn.v.2.i116.i, 16711680
  %.1.2.i118.i = or disjoint i32 %.1.1.i115.i, %.pn.2.i117.i
  %.pn.v.3.i119.i = select i1 %i.cp, i32 %i.cr, i32 %i.bg
  %.pn.3.i120.i = and i32 %.pn.v.3.i119.i, -16777216
  %.1.3.i121.i = or disjoint i32 %.1.2.i118.i, %.pn.3.i120.i
  store i32 %.1.3.i121.i, ptr %i.bf, align 4
  %i.cs = load <4 x i32>, ptr %i.bl, align 4      ; 5 uses
  %9 = insertelement <4 x i32> poison, i32 %5, i64 0
  %10 = insertelement <4 x i32> %9, i32 %6, i64 1
  %11 = insertelement <4 x i32> %10, i32 %7, i64 2
  %12 = insertelement <4 x i32> %11, i32 %8, i64 3
  %i.ct = and <4 x i32> %12, splat (i32 1)
  %i.cu = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.cv = shufflevector <4 x i32> %i.cu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cw = and <4 x i32> %i.cs, %i.cv
  %i.cx = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.cy = shufflevector <4 x i32> %i.cx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cz = shl nuw <4 x i32> %i.ct, %i.cy
  %i.da = or <4 x i32> %i.cw, %i.cz               ; 4 uses
  %i.db = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = select <4 x i1> %i.db, <4 x i32> %i.da, <4 x i32> %i.cs
  %i.dd = and <4 x i32> %i.dc, splat (i32 255)
  %i.de = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.df = select <4 x i1> %i.de, <4 x i32> %i.da, <4 x i32> %i.cs
  %i.dg = and <4 x i32> %i.df, splat (i32 65280)
  %i.dh = or disjoint <4 x i32> %i.dg, %i.dd
  %i.di = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dj = select <4 x i1> %i.di, <4 x i32> %i.da, <4 x i32> %i.cs
  %i.dk = and <4 x i32> %i.dj, splat (i32 16711680)
  %i.dl = or disjoint <4 x i32> %i.dh, %i.dk
  %i.dm = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dn = select <4 x i1> %i.dm, <4 x i32> %i.da, <4 x i32> %i.cs
  %i.do = and <4 x i32> %i.dn, splat (i32 -16777216)
  %i.dp = or disjoint <4 x i32> %i.dl, %i.do
  store <4 x i32> %i.dp, ptr %i.bl, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4            ; 5 uses
  %i.ds = lshr i32 %i.x, 6
  %i.dt = and i32 %i.ds, 1
  %i.du = and i32 %i.dr, %i.at
  %i.dv = shl nuw i32 %i.dt, %i.ad
  %i.dw = or i32 %i.du, %i.dv                     ; 4 uses
  %.pn.v.i166.i = select i1 %i.cm, i32 %i.dw, i32 %i.dr
  %.pn.i167.i = and i32 %.pn.v.i166.i, 255
  %.pn.v.1.i168.i = select i1 %i.cn, i32 %i.dw, i32 %i.dr
  %.pn.1.i169.i = and i32 %.pn.v.1.i168.i, 65280
  %.1.1.i170.i = or disjoint i32 %.pn.1.i169.i, %.pn.i167.i
  %.pn.v.2.i171.i = select i1 %i.co, i32 %i.dw, i32 %i.dr
  %.pn.2.i172.i = and i32 %.pn.v.2.i171.i, 16711680
  %.1.2.i173.i = or disjoint i32 %.1.1.i170.i, %.pn.2.i172.i
  %.pn.v.3.i174.i = select i1 %i.cp, i32 %i.dw, i32 %i.dr
  %.pn.3.i175.i = and i32 %.pn.v.3.i174.i, -16777216
  %.1.3.i176.i = or disjoint i32 %.1.2.i173.i, %.pn.3.i175.i
  store i32 %.1.3.i176.i, ptr %i.dq, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ak, i64 44 ; 2 uses
  %i.dy = lshr i32 %i.x, 7
  %13 = lshr i32 %i.x, 8
  %14 = load <2 x i32>, ptr %i.dx, align 4        ; 5 uses
  %i.dz = and i32 %13, 1
  %i.ea = and i32 %i.dy, 1
  %15 = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <2 x i32> zeroinitializer
  %17 = and <2 x i32> %14, %16
  %18 = shl nuw i32 %i.dz, %i.ad
  %19 = shl nuw i32 %i.ea, %i.ad
  %20 = insertelement <2 x i32> poison, i32 %19, i64 0
  %21 = insertelement <2 x i32> %20, i32 %18, i64 1
  %22 = or <2 x i32> %17, %21                     ; 4 uses
  %23 = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <2 x i32> <i32 1, i32 1>
  %24 = select <2 x i1> %23, <2 x i32> %22, <2 x i32> %14
  %25 = and <2 x i32> %24, splat (i32 255)
  %26 = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <2 x i32> zeroinitializer
  %27 = select <2 x i1> %26, <2 x i32> %22, <2 x i32> %14
  %28 = and <2 x i32> %27, splat (i32 65280)
  %29 = or disjoint <2 x i32> %28, %25
  %30 = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <2 x i32> <i32 2, i32 2>
  %31 = select <2 x i1> %30, <2 x i32> %22, <2 x i32> %14
  %32 = and <2 x i32> %31, splat (i32 16711680)
  %33 = or disjoint <2 x i32> %29, %32
  %34 = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <2 x i32> <i32 3, i32 3>
  %35 = select <2 x i1> %34, <2 x i32> %22, <2 x i32> %14
  %36 = and <2 x i32> %35, splat (i32 -16777216)
  %37 = or disjoint <2 x i32> %33, %36
  store <2 x i32> %37, ptr %i.dx, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ak, i64 52 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = lshr i32 %i.x, 9
  %i.ee = and i32 %i.ed, 1
  %i.ef = and i32 %i.ec, %i.at
  %i.eg = shl nuw i32 %i.ee, %i.ad
  %i.eh = or i32 %i.ef, %i.eg
  %i.ei = load i32, ptr %i.an, align 4
  %i.ej = and i32 %i.eh, %i.ei
  store i32 %i.ej, ptr %i.eb, align 4
  %i.ek = and i32 %i.x, 4096
  %.not109.i = icmp eq i32 %i.ek, 0
  br i1 %.not109.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %i.ak, i64 28 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = lshr i32 %i.em, %i.ad
  %i.eo = and i32 %i.en, 1                        ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 16           ; 2 uses
  %.not110.i = icmp ult i32 %i.eq, %i.eo
  br i1 %.not110.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.42, i32 noundef 1170, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_gpio_2700_write_control_reg) #11
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.er = sub nuw i32 %i.eq, %i.eo
  store i32 %i.er, ptr %i.ep, align 16
  %i.es = and i32 %i.em, %i.at
  store i32 %i.es, ptr %i.el, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.et = load i32, ptr %i.ak, align 4
  tail call fastcc void @aspeed_gpio_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ak, i32 noundef %i.et, i32 noundef -1)
  br label %aspeed_gpio_2700_write_control_reg.exit

bb.x:                                             ; preds = %bb.l
  %i.eu = load i32, ptr @qemu_loglevel, align 4
  %i.ev = and i32 %i.eu, 2048
  %.not32 = icmp eq i32 %i.ev, 0
  br i1 %.not32, label %aspeed_gpio_2700_write_control_reg.exit, label %bb.y, !prof !9

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.aspeed_gpio_2700_write, i64 noundef %1) #9
  br label %aspeed_gpio_2700_write_control_reg.exit

aspeed_gpio_2700_write_control_reg.exit:          ; preds = %bb.w, %bb.r, %bb.q, %bb.h, %bb.y, %bb.x, %bb.n, %bb.o, %bb.j, %bb.k, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 0, 16384) i64 @aspeed_gpio_2700_read_control_reg(ptr noundef %0, i32 noundef range(i32 0, 216) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 17, ptr noundef nonnull @__func__.ASPEED_GPIO_GET_CLASS) #9
  %i.c = lshr i32 %1, 5                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not116 = icmp eq i32 %i.g, 0
  br i1 %.not116, label %bb.e, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.aspeed_gpio_2700_read_control_reg, i32 noundef %i.c) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = and i32 %1, 31                           ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3164
  %i.j = zext nneg i32 %i.c to i64
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load <4 x i32>, ptr %i.l, align 4
  %i.n = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.p = lshr <4 x i32> %i.m, %i.o
  %i.q = shl <4 x i32> %i.p, <i32 0, i32 1, i32 2, i32 3>
  %i.r = and <4 x i32> %i.q, <i32 1, i32 2, i32 4, i32 8>
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = lshr i32 %i.t, %i.h
  %i.v = shl i32 %i.u, 4
  %i.w = and i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.y = load i32, ptr %i.x, align 4
  %i.z = lshr i32 %i.y, %i.h
  %i.aa = shl i32 %i.z, 5
  %i.ab = and i32 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = lshr i32 %i.ad, %i.h
  %i.af = shl i32 %i.ae, 6
  %i.ag = and i32 %i.af, 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = lshr i32 %i.ai, %i.h
  %i.ak = shl i32 %i.aj, 7
  %i.al = and i32 %i.ak, 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = lshr i32 %i.an, %i.h
  %i.ap = shl i32 %i.ao, 8
  %i.aq = and i32 %i.ap, 256
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = lshr i32 %i.as, %i.h
  %i.au = shl i32 %i.at, 9
  %i.av = and i32 %i.au, 512
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = lshr i32 %i.ax, %i.h
  %i.az = shl i32 %i.ay, 12
  %i.ba = and i32 %i.az, 4096
  %i.bb = load i32, ptr %i.k, align 4
  %i.bc = lshr i32 %i.bb, %i.h
  %i.bd = shl i32 %i.bc, 13
  %i.be = and i32 %i.bd, 8192
  %i.bf = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.r)
  %op.rdx = or disjoint i32 %i.bf, %i.w
  %op.rdx124 = or disjoint i32 %i.ab, %i.ag
  %op.rdx125 = or disjoint i32 %i.al, %i.aq
  %op.rdx126 = or disjoint i32 %i.av, %i.ba
  %op.rdx127 = or disjoint i32 %op.rdx, %op.rdx124
  %op.rdx128 = or disjoint i32 %op.rdx125, %op.rdx126
  %op.rdx129 = or disjoint i32 %op.rdx127, %op.rdx128
  %op.rdx130 = or disjoint i32 %op.rdx129, %i.be
  %i.bg = zext nneg i32 %op.rdx130 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i64 [ %i.bg, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
end_hunk_1
