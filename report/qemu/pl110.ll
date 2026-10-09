Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pl110?download=true
inline.NumInlined: 74
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pl110_write:bb.a
  %i.ar = or disjoint i32 %i.aq, %i.ap
  %i.as = or disjoint i32 %i.ar, %i.s
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i = phi i32 [ %i.as, %bb.f ], [ %i.ao, %bb.e ], [ %i.aj, %bb.d ], [ %i.ae, %bb.c ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 %.sink.i, ptr %i.at, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %bb.b
  %i.au = lshr i32 %i.k, 13                       ; 2 uses
  %i.av = and i32 %i.au, 248                      ; 3 uses
  %i.aw = lshr i32 %i.k, 18
  %i.ax = and i32 %i.aw, 248                      ; 3 uses
  %i.ay = lshr i32 %i.k, 23
  %i.az = and i32 %i.ay, 248                      ; 4 uses
  %.val2.i.1.i = load ptr, ptr %i.j, align 8
  %i.ba = tail call i32 @pixman_image_get_format(ptr noundef %.val2.i.1.i) #7
  %i.bb = lshr i32 %i.ba, 24
  %.val.i.1.i = load ptr, ptr %i.j, align 8
  %i.bc = tail call i32 @pixman_image_get_format(ptr noundef %.val.i.1.i) #7
  %i.bd = lshr i32 %i.bc, 22
  %i.be = and i32 %i.bd, 3
  %i.bf = shl nuw nsw i32 %i.bb, %i.be
  switch i32 %i.bf, label %pl110_update_palette.exit [
    i32 8, label %bb.k
    i32 15, label %bb.j
    i32 16, label %bb.i
    i32 24, label %bb.h
    i32 32, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.bg = shl nuw nsw i32 %i.av, 16
  %i.bh = shl nuw nsw i32 %i.ax, 8
  %i.bi = or disjoint i32 %i.bh, %i.bg
  %i.bj = or disjoint i32 %i.bi, %i.az
  br label %.sink.split40.i

bb.i:                                             ; preds = %bb.g
  %i.bk = shl nuw nsw i32 %i.av, 8
  %i.bl = shl nuw nsw i32 %i.ax, 3
  %i.bm = or disjoint i32 %i.bl, %i.bk
  %i.bn = lshr exact i32 %i.az, 3
  %i.bo = or disjoint i32 %i.bm, %i.bn
  br label %.sink.split40.i

bb.j:                                             ; preds = %bb.g
  %i.bp = shl nuw nsw i32 %i.av, 7
  %i.bq = shl nuw nsw i32 %i.ax, 2
  %i.br = or disjoint i32 %i.bq, %i.bp
  %i.bs = lshr exact i32 %i.az, 3
  %i.bt = or disjoint i32 %i.br, %i.bs
  br label %.sink.split40.i

bb.k:                                             ; preds = %bb.g
  %i.bu = and i32 %i.au, 224
  %i.bv = lshr i32 %i.k, 21
  %i.bw = and i32 %i.bv, 28
  %i.bx = or disjoint i32 %i.bw, %i.bu
  %i.by = lshr i32 %i.az, 6
  %i.bz = or disjoint i32 %i.bx, %i.by
  br label %.sink.split40.i

.sink.split40.i:                                  ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink41.i = phi i32 [ %i.bz, %bb.k ], [ %i.bt, %bb.j ], [ %i.bo, %bb.i ], [ %i.bj, %bb.h ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %.sink41.i, ptr %i.cb, align 4
  br label %pl110_update_palette.exit

bb.l:                                             ; preds = %bb.a
  %i.cc = lshr i64 %1, 2
  switch i64 %i.cc, label %bb.ad [
    i64 0, label %bb.m
    i64 1, label %bb.p
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
    i64 5, label %bb.v
    i64 6, label %bb.w
    i64 7, label %bb.y
    i64 10, label %bb.ac
  ]

bb.m:                                             ; preds = %bb.l
  %i.cd = trunc i64 %2 to i32                     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1172
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = shl i32 %i.cd, 2
  %i.cg = and i32 %i.cf, 1008
  %i.ch = add nuw nsw i32 %i.cg, 16               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %.not.i = icmp eq i32 %i.ch, %i.cl
  br i1 %.not.i, label %pl110_resize.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr i8, ptr %0, i64 1188
  %.val.i = load i32, ptr %i.cm, align 4
  %i.cn = and i32 %.val.i, 2049
  %.not12.not.i = icmp eq i32 %i.cn, 2049
  br i1 %.not12.not.i, label %bb.o, label %pl110_resize.exit

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cp = load ptr, ptr %i.co, align 16
  tail call void @qemu_console_resize(ptr noundef %i.cp, i32 noundef %i.ch, i32 noundef %i.cj) #7
  br label %pl110_resize.exit

pl110_resize.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  store i32 %i.ch, ptr %i.ck, align 8
  store i32 %i.cj, ptr %i.ci, align 4
  br label %pl110_update_palette.exit

bb.p:                                             ; preds = %bb.l
  %i.cq = trunc i64 %2 to i32                     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i32 %i.cq, ptr %i.cr, align 4
  %i.cs = and i32 %i.cq, 1023
  %i.ct = add nuw nsw i32 %i.cs, 1                ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %.not11.i55 = icmp eq i32 %i.ct, %i.cx
  br i1 %.not11.i55, label %pl110_resize.exit56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr i8, ptr %0, i64 1188
  %.val.i53 = load i32, ptr %i.cy, align 4
  %i.cz = and i32 %.val.i53, 2049
  %.not12.not.i54 = icmp eq i32 %i.cz, 2049
  br i1 %.not12.not.i54, label %bb.r, label %pl110_resize.exit56

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.db = load ptr, ptr %i.da, align 16
  tail call void @qemu_console_resize(ptr noundef %i.db, i32 noundef %i.cv, i32 noundef %i.ct) #7
  br label %pl110_resize.exit56

pl110_resize.exit56:                              ; preds = %bb.p, %bb.q, %bb.r
  store i32 %i.cv, ptr %i.cu, align 8
  store i32 %i.ct, ptr %i.cw, align 4
  br label %pl110_update_palette.exit

bb.s:                                             ; preds = %bb.l
  %i.dc = trunc i64 %2 to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store i32 %i.dc, ptr %i.dd, align 4
  br label %pl110_update_palette.exit

bb.t:                                             ; preds = %bb.l
  %i.de = trunc i64 %2 to i32
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i32 %i.de, ptr %i.df, align 4
  br label %pl110_update_palette.exit

bb.u:                                             ; preds = %bb.l
  %i.dg = trunc i64 %2 to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i32 %i.dg, ptr %i.dh, align 8
  br label %pl110_update_palette.exit

bb.v:                                             ; preds = %bb.l
  %i.di = trunc i64 %2 to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1196
  store i32 %i.di, ptr %i.dj, align 4
  br label %pl110_update_palette.exit

bb.w:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.dl = load i32, ptr %i.dk, align 16
  %.not50 = icmp eq i32 %i.dl, 0
  br i1 %.not50, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.dm = trunc i64 %2 to i32                     ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1204
  store i32 %i.dm, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.dp = load i32, ptr %i.do, align 16
  %i.dq = and i32 %i.dp, %i.dm
  %.not.i57 = icmp ne i32 %i.dq, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ds = load ptr, ptr %i.dr, align 16
  %..i = zext i1 %.not.i57 to i32
  tail call void @qemu_set_irq(ptr noundef %i.ds, i32 noundef %..i) #7
  br label %pl110_update_palette.exit

bb.y:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.du = load i32, ptr %i.dt, align 16
  %.not = icmp eq i32 %i.du, 0
  br i1 %.not, label %bb.z, label %bb.x

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.dv = trunc i64 %2 to i32                     ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 %i.dv, ptr %i.dw, align 4
  %i.dx = lshr i32 %i.dv, 1
  %i.dy = and i32 %i.dx, 7
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i32 %i.dy, ptr %i.dz, align 16
  %4 = and i32 %i.dv, 2049
  %.not51.not = icmp eq i32 %4, 2049
  br i1 %.not51.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.eb = load ptr, ptr %i.ea, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1212
  %i.ef = load i32, ptr %i.ee, align 4
  tail call void @qemu_console_resize(ptr noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.ef) #7
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.ej = add i64 %i.ei, 16666666
  tail call void @timer_mod(ptr noundef %i.eh, i64 noundef %i.ej) #7
  br label %pl110_update_palette.exit

bb.ab:                                            ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.el = load ptr, ptr %i.ek, align 8
  tail call void @timer_del(ptr noundef %i.el) #7
  br label %pl110_update_palette.exit

bb.ac:                                            ; preds = %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.en = load i32, ptr %i.em, align 16
  %i.eo = trunc i64 %2 to i32
  %i.ep = xor i32 %i.eo, -1
  %i.eq = and i32 %i.en, %i.ep                    ; 2 uses
  store i32 %i.eq, ptr %i.em, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.es = load i32, ptr %i.er, align 4
  %i.et = and i32 %i.es, %i.eq
  %.not.i59 = icmp ne i32 %i.et, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ev = load ptr, ptr %i.eu, align 16
  %..i60 = zext i1 %.not.i59 to i32
  tail call void @qemu_set_irq(ptr noundef %i.ev, i32 noundef %..i60) #7
  br label %pl110_update_palette.exit

bb.ad:                                            ; preds = %bb.l
  %i.ew = load i32, ptr @qemu_loglevel, align 4
  %i.ex = and i32 %i.ew, 2048
  %.not62 = icmp eq i32 %i.ex, 0
  br i1 %.not62, label %pl110_update_palette.exit, label %bb.ae, !prof !7

bb.ae:                                            ; preds = %bb.ad
  %i.ey = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, i32 noundef %i.ey) #7
  br label %pl110_update_palette.exit

pl110_update_palette.exit:                        ; preds = %.sink.split40.i, %bb.g, %pl110_resize.exit, %pl110_resize.exit56, %bb.s, %bb.t, %bb.u, %bb.v, %bb.x, %bb.ac, %bb.ab, %bb.aa, %bb.ae, %bb.ad
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

declare void @timer_del(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_console_surface(ptr noundef) local_unnamed_addr #1

declare i32 @pixman_image_get_format(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @pl110_update_display(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = tail call ptr @qemu_console_surface(ptr noundef %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.f = getelementptr i8, ptr %0, i64 1188
  %.val = load i32, ptr %i.f, align 4             ; 4 uses
  %i.g = and i32 %.val, 2049
  %.not.not = icmp eq i32 %i.g, 2049
  br i1 %.not.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %.val, 256
  %.not45 = icmp eq i32 %i.h, 0
  %. = select i1 %.not45, i32 24, i32 0           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.j = load i32, ptr %i.i, align 16
  %.not46 = icmp eq i32 %i.j, 2
  br i1 %.not46, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.l = load i32, ptr %i.k, align 16
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.o = load i32, ptr %i.n, align 8
  switch i32 %i.o, label %bb.f [
    i32 3, label %bb.e
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = or disjoint i32 %., 2
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b
  %.1 = phi i32 [ %i.p, %bb.f ], [ 2, %bb.e ], [ %., %bb.d ], [ %., %bb.c ], [ %., %bb.b ] ; 3 uses
  %i.q = and i32 %.val, 512
  %.not47 = icmp eq i32 %i.q, 0
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.s = load i32, ptr %i.r, align 16             ; 2 uses
  %i.t = add nuw nsw i32 %.1, 8
  %i.u = add i32 %i.t, %i.s
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.v = and i32 %.val, 1024
  %.not48 = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.x = load i32, ptr %i.w, align 16             ; 4 uses
  br i1 %.not48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nuw nsw i32 %.1, 16
  %i.z = add i32 %i.y, %i.x
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = add i32 %i.x, %.1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.sink52 = phi i32 [ %i.z, %bb.j ], [ %i.aa, %bb.k ], [ %i.u, %bb.h ]
  %i.ab = phi i32 [ %i.x, %bb.j ], [ %i.x, %bb.k ], [ %i.s, %bb.h ]
  %i.ac = zext i32 %.sink52 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @pl110_draw_fn_32, i64 %i.ac
  %.042 = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 7 uses
  switch i32 %i.ab, label %bb.r [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 5, label %bb.q
    i32 4, label %bb.p
    i32 6, label %bb.p
    i32 7, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = ashr i32 %i.af, 3
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ah = ashr i32 %i.af, 2
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.ai = ashr i32 %i.af, 1
  br label %bb.r

bb.p:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = shl i32 %i.af, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.ak = shl i32 %i.af, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.041 = phi i32 [ %i.af, %bb.l ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ], [ %i.ai, %bb.o ], [ %i.ak, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1220 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1192
end_hunk_0
