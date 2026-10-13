Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed_gpio?download=true
inline.NumInlined: 172
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@aspeed_gpio_read:bb.a
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
  %i.di = lshr i32 %i.m, 20
  %i.dj = shl nuw i32 1, %i.r
  %i.dk = xor i32 %i.dj, -1                       ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.dn = lshr i32 %i.m, 21
  %i.do = lshr i32 %i.m, 22
  %i.dp = lshr i32 %i.m, 23
  %i.dq = load i32, ptr %i.dl, align 4            ; 4 uses
  %i.dr = load i32, ptr %i.dm, align 4            ; 4 uses
  %i.ds = lshr i32 %i.dq, 8
  %i.dt = shl i32 %i.dr, 1
  %i.du = insertelement <2 x i32> poison, i32 %i.ds, i64 0
  %i.dv = insertelement <2 x i32> %i.du, i32 %i.dq, i64 1
  %i.dw = and <2 x i32> %i.dv, splat (i32 1)
  %i.dx = lshr i32 %i.dr, 7
  %i.dy = insertelement <2 x i32> poison, i32 %i.dx, i64 0
  %i.dz = insertelement <2 x i32> %i.dy, i32 %i.dt, i64 1
  %i.ea = and <2 x i32> %i.dz, splat (i32 2)
  %i.eb = or disjoint <2 x i32> %i.ea, %i.dw
  %i.ec = lshr i32 %i.dq, 16
  %i.ed = and i32 %i.ec, 1
  %i.ee = lshr i32 %i.dr, 15
  %i.ef = and i32 %i.ee, 2
  %i.eg = or disjoint i32 %i.ef, %i.ed
  %i.eh = lshr i32 %i.dq, 24
  %i.ei = and i32 %i.eh, 1
  %i.ej = lshr i32 %i.dr, 23
  %i.ek = and i32 %i.ej, 2
  %i.el = or disjoint i32 %i.ek, %i.ei
  %i.em = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.en = insertelement <4 x i32> %i.em, i32 %i.eg, i64 1
  %i.eo = shufflevector <2 x i32> %i.eb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x i32> %i.en, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eq = icmp eq <4 x i32> %i.ep, zeroinitializer ; 4 uses
  %i.er = load <4 x i32>, ptr %i.dh, align 4      ; 5 uses
  %i.es = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %i.et = insertelement <4 x i32> %i.es, i32 %i.dn, i64 1
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.do, i64 2
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.dp, i64 3
  %i.ew = and <4 x i32> %i.ev, splat (i32 1)
  %i.ex = insertelement <4 x i32> poison, i32 %i.dk, i64 0
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ez = and <4 x i32> %i.er, %i.ey
  %i.fa = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.fb = shufflevector <4 x i32> %i.fa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fc = shl nuw <4 x i32> %i.ew, %i.fb
  %i.fd = or <4 x i32> %i.ez, %i.fc               ; 4 uses
  %i.fe = shufflevector <4 x i1> %i.eq, <4 x i1> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ff = select <4 x i1> %i.fe, <4 x i32> %i.fd, <4 x i32> %i.er
  %i.fg = and <4 x i32> %i.ff, splat (i32 255)
  %i.fh = shufflevector <4 x i1> %i.eq, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fi = select <4 x i1> %i.fh, <4 x i32> %i.fd, <4 x i32> %i.er
  %i.fj = and <4 x i32> %i.fi, splat (i32 65280)
  %i.fk = or disjoint <4 x i32> %i.fj, %i.fg
  %i.fl = shufflevector <4 x i1> %i.eq, <4 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fm = select <4 x i1> %i.fl, <4 x i32> %i.fd, <4 x i32> %i.er
  %i.fn = and <4 x i32> %i.fm, splat (i32 16711680)
  %i.fo = or disjoint <4 x i32> %i.fk, %i.fn
  %i.fp = shufflevector <4 x i1> %i.eq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.fq = select <4 x i1> %i.fp, <4 x i32> %i.fd, <4 x i32> %i.er
  %i.fr = and <4 x i32> %i.fq, splat (i32 -16777216)
  %i.fs = or disjoint <4 x i32> %i.fo, %i.fr
  store <4 x i32> %i.fs, ptr %i.dh, align 4
  %i.ft = and i32 %i.m, 16777216
  %.not135.i = icmp eq i32 %i.ft, 0
  br i1 %.not135.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = lshr i32 %i.fv, %i.r
  %i.fx = and i32 %i.fw, 1                        ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 1088 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 16           ; 2 uses
  %.not136.i = icmp ult i32 %i.fz, %i.fx
  br i1 %.not136.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.42, i32 noundef 743, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_gpio_write_index_mode) #11
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ga = sub nuw i32 %i.fz, %i.fx
  store i32 %i.ga, ptr %i.fy, align 16
  %i.gb = and i32 %i.fv, %i.dk
  store i32 %i.gb, ptr %i.fu, align 4
  br label %bb.u

bb.o:                                             ; preds = %bb.h
  %i.gc = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4            ; 5 uses
  %i.ge = lshr i32 %i.m, 20
  %i.gf = and i32 %i.ge, 1
  %i.gg = shl nuw i32 1, %i.r
  %i.gh = xor i32 %i.gg, -1                       ; 2 uses
  %i.gi = and i32 %i.gd, %i.gh
  %i.gj = shl nuw i32 %i.gf, %i.r
  %i.gk = or i32 %i.gi, %i.gj                     ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.gm = load i32, ptr %i.gl, align 4            ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.go = load i32, ptr %i.gn, align 4            ; 4 uses
  %i.gp = and i32 %i.gm, 1
  %i.gq = shl i32 %i.go, 1
  %i.gr = and i32 %i.gq, 2
  %i.gs = or disjoint i32 %i.gr, %i.gp
  %i.gt = icmp eq i32 %i.gs, 0                    ; 2 uses
  %.pn.v.i192.i = select i1 %i.gt, i32 %i.gk, i32 %i.gd
  %.pn.i193.i = and i32 %.pn.v.i192.i, 255
  %i.gu = lshr i32 %i.gm, 8
  %i.gv = and i32 %i.gu, 1
  %i.gw = lshr i32 %i.go, 7
  %i.gx = and i32 %i.gw, 2
  %i.gy = or disjoint i32 %i.gx, %i.gv
  %i.gz = icmp eq i32 %i.gy, 0                    ; 2 uses
  %.pn.v.1.i194.i = select i1 %i.gz, i32 %i.gk, i32 %i.gd
  %.pn.1.i195.i = and i32 %.pn.v.1.i194.i, 65280
  %.1.1.i196.i = or disjoint i32 %.pn.1.i195.i, %.pn.i193.i
  %i.ha = lshr i32 %i.gm, 16
  %i.hb = and i32 %i.ha, 1
  %i.hc = lshr i32 %i.go, 15
  %i.hd = and i32 %i.hc, 2
  %i.he = or disjoint i32 %i.hd, %i.hb
  %i.hf = icmp eq i32 %i.he, 0                    ; 2 uses
  %.pn.v.2.i197.i = select i1 %i.hf, i32 %i.gk, i32 %i.gd
  %.pn.2.i198.i = and i32 %.pn.v.2.i197.i, 16711680
  %.1.2.i199.i = or disjoint i32 %.1.1.i196.i, %.pn.2.i198.i
  %i.hg = lshr i32 %i.gm, 24
  %i.hh = and i32 %i.hg, 1
  %i.hi = lshr i32 %i.go, 23
  %i.hj = and i32 %i.hi, 2
  %i.hk = or disjoint i32 %i.hj, %i.hh
  %i.hl = icmp eq i32 %i.hk, 0                    ; 2 uses
  %.pn.v.3.i200.i = select i1 %i.hl, i32 %i.gk, i32 %i.gd
  %.pn.3.i201.i = and i32 %.pn.v.3.i200.i, -16777216
  %.1.3.i202.i = or disjoint i32 %.1.2.i199.i, %.pn.3.i201.i
  store i32 %.1.3.i202.i, ptr %i.gc, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4            ; 5 uses
  %i.ho = lshr i32 %i.m, 21
  %i.hp = and i32 %i.ho, 1
  %i.hq = and i32 %i.hn, %i.gh
  %i.hr = shl nuw i32 %i.hp, %i.r
  %i.hs = or i32 %i.hq, %i.hr                     ; 4 uses
  %.pn.v.i203.i = select i1 %i.gt, i32 %i.hs, i32 %i.hn
  %.pn.i204.i = and i32 %.pn.v.i203.i, 255
  %.pn.v.1.i205.i = select i1 %i.gz, i32 %i.hs, i32 %i.hn
  %.pn.1.i206.i = and i32 %.pn.v.1.i205.i, 65280
  %.1.1.i207.i = or disjoint i32 %.pn.1.i206.i, %.pn.i204.i
  %.pn.v.2.i208.i = select i1 %i.hf, i32 %i.hs, i32 %i.hn
  %.pn.2.i209.i = and i32 %.pn.v.2.i208.i, 16711680
  %.1.2.i210.i = or disjoint i32 %.1.1.i207.i, %.pn.2.i209.i
  %.pn.v.3.i211.i = select i1 %i.hl, i32 %i.hs, i32 %i.hn
  %.pn.3.i212.i = and i32 %.pn.v.3.i211.i, -16777216
  %.1.3.i213.i = or disjoint i32 %.1.2.i210.i, %.pn.3.i212.i
  store i32 %.1.3.i213.i, ptr %i.hm, align 4
  br label %aspeed_gpio_write_index_mode.exit

bb.p:                                             ; preds = %bb.h
  %i.ht = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4            ; 5 uses
  %i.hv = lshr i32 %i.m, 20
  %i.hw = and i32 %i.hv, 1
  %i.hx = shl nuw i32 1, %i.r
  %i.hy = xor i32 %i.hx, -1
  %i.hz = and i32 %i.hu, %i.hy
  %i.ia = shl nuw i32 %i.hw, %i.r
  %i.ib = or i32 %i.hz, %i.ia                     ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.id = load i32, ptr %i.ic, align 4            ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.if = load i32, ptr %i.ie, align 4            ; 4 uses
  %i.ig = and i32 %i.id, 1
  %i.ih = shl i32 %i.if, 1
  %i.ii = and i32 %i.ih, 2
  %i.ij = or disjoint i32 %i.ii, %i.ig
  %i.ik = icmp eq i32 %i.ij, 0
  %.pn.v.i214.i = select i1 %i.ik, i32 %i.ib, i32 %i.hu
  %.pn.i215.i = and i32 %.pn.v.i214.i, 255
  %i.il = lshr i32 %i.id, 8
  %i.im = and i32 %i.il, 1
  %i.in = lshr i32 %i.if, 7
  %i.io = and i32 %i.in, 2
  %i.ip = or disjoint i32 %i.io, %i.im
  %i.iq = icmp eq i32 %i.ip, 0
  %.pn.v.1.i216.i = select i1 %i.iq, i32 %i.ib, i32 %i.hu
  %.pn.1.i217.i = and i32 %.pn.v.1.i216.i, 65280
  %.1.1.i218.i = or disjoint i32 %.pn.1.i217.i, %.pn.i215.i
  %i.ir = lshr i32 %i.id, 16
  %i.is = and i32 %i.ir, 1
  %i.it = lshr i32 %i.if, 15
  %i.iu = and i32 %i.it, 2
  %i.iv = or disjoint i32 %i.iu, %i.is
  %i.iw = icmp eq i32 %i.iv, 0
  %.pn.v.2.i219.i = select i1 %i.iw, i32 %i.ib, i32 %i.hu
  %.pn.2.i220.i = and i32 %.pn.v.2.i219.i, 16711680
  %.1.2.i221.i = or disjoint i32 %.1.1.i218.i, %.pn.2.i220.i
  %i.ix = lshr i32 %i.id, 24
  %i.iy = and i32 %i.ix, 1
  %i.iz = lshr i32 %i.if, 23
  %i.ja = and i32 %i.iz, 2
  %i.jb = or disjoint i32 %i.ja, %i.iy
  %i.jc = icmp eq i32 %i.jb, 0
  %.pn.v.3.i222.i = select i1 %i.jc, i32 %i.ib, i32 %i.hu
  %.pn.3.i223.i = and i32 %.pn.v.3.i222.i, -16777216
  %.1.3.i224.i = or disjoint i32 %.1.2.i221.i, %.pn.3.i223.i
  store i32 %.1.3.i224.i, ptr %i.ht, align 4
  br label %aspeed_gpio_write_index_mode.exit

bb.q:                                             ; preds = %bb.h
  %i.jd = getelementptr inbounds nuw i8, ptr %i.u, i64 36 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = lshr i32 %i.m, 20
  %i.jg = and i32 %i.jf, 1
  %i.jh = shl nuw nsw i32 1, %i.s
  %i.ji = shl nuw nsw i32 %i.jg, %i.s
  %i.jj = xor i32 %i.jh, 16843009                 ; 2 uses
  %.masked.i = and i32 %i.je, %i.jj
  %i.jk = or i32 %.masked.i, %i.ji
  store i32 %i.jk, ptr %i.jd, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = lshr i32 %i.m, 21
  %i.jo = and i32 %i.jn, 1
  %i.jp = shl nuw nsw i32 %i.jo, %i.s
  %.masked226.i = and i32 %i.jm, %i.jj
  %i.jq = or i32 %.masked226.i, %i.jp
end_hunk_0
begin_hunk_1_@aspeed_gpio_2700_read:bb.a
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
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %i.aj ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.aj ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 5 uses
  %i.aq = lshr i32 %i.x, 1
  %i.ar = and i32 %i.aq, 1
  %i.as = shl nuw i32 1, %i.ad
  %i.at = xor i32 %i.as, -1                       ; 8 uses
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
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 5 uses
  %i.bh = and i32 %i.x, 1
  %i.bi = and i32 %i.bg, %i.at
  %i.bj = shl nuw i32 %i.bh, %i.ad
  %i.bk = or i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.bm = lshr i32 %i.x, 2
  %i.bn = lshr i32 %i.x, 3
  %i.bo = lshr i32 %i.x, 4
  %i.bp = lshr i32 %i.x, 5
  %i.bq = load i32, ptr %i.bd, align 4            ; 4 uses
  %i.br = load i32, ptr %i.be, align 4            ; 4 uses
  %i.bs = lshr i32 %i.bq, 8
  %i.bt = shl i32 %i.br, 1
  %i.bu = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %i.bv = insertelement <2 x i32> %i.bu, i32 %i.bq, i64 1
  %i.bw = and <2 x i32> %i.bv, splat (i32 1)
  %i.bx = lshr i32 %i.br, 7
  %i.by = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %i.bz = insertelement <2 x i32> %i.by, i32 %i.bt, i64 1
  %i.ca = and <2 x i32> %i.bz, splat (i32 2)
  %i.cb = or disjoint <2 x i32> %i.ca, %i.bw
  %i.cc = lshr i32 %i.bq, 16
  %i.cd = and i32 %i.cc, 1
  %i.ce = lshr i32 %i.br, 15
  %i.cf = and i32 %i.ce, 2
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = lshr i32 %i.bq, 24
  %i.ci = and i32 %i.ch, 1
  %i.cj = lshr i32 %i.br, 23
  %i.ck = and i32 %i.cj, 2
  %i.cl = or disjoint i32 %i.ck, %i.ci
  %i.cm = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cg, i64 1
  %i.co = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x i32> %i.cn, <4 x i32> %i.co, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cq = icmp eq <4 x i32> %i.cp, zeroinitializer ; 8 uses
  %i.cr = extractelement <4 x i1> %i.cq, i64 3    ; 5 uses
  %.pn.v.i.i = select i1 %i.cr, i32 %i.bc, i32 %i.ap
  %.pn.i.i = and i32 %.pn.v.i.i, 255
  %i.cs = extractelement <4 x i1> %i.cq, i64 2    ; 5 uses
  %.pn.v.1.i.i = select i1 %i.cs, i32 %i.bc, i32 %i.ap
  %.pn.1.i.i = and i32 %.pn.v.1.i.i, 65280
  %.1.1.i.i = or disjoint i32 %.pn.1.i.i, %.pn.i.i
  %i.ct = extractelement <4 x i1> %i.cq, i64 1    ; 5 uses
  %.pn.v.2.i.i = select i1 %i.ct, i32 %i.bc, i32 %i.ap
  %.pn.2.i.i = and i32 %.pn.v.2.i.i, 16711680
  %.1.2.i.i = or disjoint i32 %.1.1.i.i, %.pn.2.i.i
  %i.cu = extractelement <4 x i1> %i.cq, i64 0    ; 5 uses
  %.pn.v.3.i.i = select i1 %i.cu, i32 %i.bc, i32 %i.ap
  %.pn.3.i.i = and i32 %.pn.v.3.i.i, -16777216
  %.1.3.i.i = or disjoint i32 %.1.2.i.i, %.pn.3.i.i
  store i32 %.1.3.i.i, ptr %i.ao, align 4
  %i.cv = load i32, ptr %i.ba, align 4
  %i.cw = and i32 %i.bk, %i.cv                    ; 4 uses
  %.pn.v.i111.i = select i1 %i.cr, i32 %i.cw, i32 %i.bg
  %.pn.i112.i = and i32 %.pn.v.i111.i, 255
  %.pn.v.1.i113.i = select i1 %i.cs, i32 %i.cw, i32 %i.bg
  %.pn.1.i114.i = and i32 %.pn.v.1.i113.i, 65280
  %.1.1.i115.i = or disjoint i32 %.pn.1.i114.i, %.pn.i112.i
  %.pn.v.2.i116.i = select i1 %i.ct, i32 %i.cw, i32 %i.bg
  %.pn.2.i117.i = and i32 %.pn.v.2.i116.i, 16711680
  %.1.2.i118.i = or disjoint i32 %.1.1.i115.i, %.pn.2.i117.i
  %.pn.v.3.i119.i = select i1 %i.cu, i32 %i.cw, i32 %i.bg
  %.pn.3.i120.i = and i32 %.pn.v.3.i119.i, -16777216
  %.1.3.i121.i = or disjoint i32 %.1.2.i118.i, %.pn.3.i120.i
  store i32 %.1.3.i121.i, ptr %i.bf, align 4
  %i.cx = load <4 x i32>, ptr %i.bl, align 4      ; 5 uses
  %i.cy = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.bn, i64 1
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.bo, i64 2
  %i.db = insertelement <4 x i32> %i.da, i32 %i.bp, i64 3
  %i.dc = and <4 x i32> %i.db, splat (i32 1)
  %i.dd = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.df = and <4 x i32> %i.cx, %i.de
  %i.dg = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.dh = shufflevector <4 x i32> %i.dg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.di = shl nuw <4 x i32> %i.dc, %i.dh
  %i.dj = or <4 x i32> %i.df, %i.di               ; 4 uses
  %i.dk = shufflevector <4 x i1> %i.cq, <4 x i1> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dl = select <4 x i1> %i.dk, <4 x i32> %i.dj, <4 x i32> %i.cx
  %i.dm = and <4 x i32> %i.dl, splat (i32 255)
  %i.dn = shufflevector <4 x i1> %i.cq, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.do = select <4 x i1> %i.dn, <4 x i32> %i.dj, <4 x i32> %i.cx
  %i.dp = and <4 x i32> %i.do, splat (i32 65280)
  %i.dq = or disjoint <4 x i32> %i.dp, %i.dm
  %i.dr = shufflevector <4 x i1> %i.cq, <4 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ds = select <4 x i1> %i.dr, <4 x i32> %i.dj, <4 x i32> %i.cx
  %i.dt = and <4 x i32> %i.ds, splat (i32 16711680)
  %i.du = or disjoint <4 x i32> %i.dq, %i.dt
  %i.dv = shufflevector <4 x i1> %i.cq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dw = select <4 x i1> %i.dv, <4 x i32> %i.dj, <4 x i32> %i.cx
  %i.dx = and <4 x i32> %i.dw, splat (i32 -16777216)
  %i.dy = or disjoint <4 x i32> %i.du, %i.dx
  store <4 x i32> %i.dy, ptr %i.bl, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 5 uses
  %i.eb = lshr i32 %i.x, 6
  %i.ec = and i32 %i.eb, 1
  %i.ed = and i32 %i.ea, %i.at
  %i.ee = shl nuw i32 %i.ec, %i.ad
  %i.ef = or i32 %i.ed, %i.ee                     ; 4 uses
  %.pn.v.i166.i = select i1 %i.cr, i32 %i.ef, i32 %i.ea
  %.pn.i167.i = and i32 %.pn.v.i166.i, 255
  %.pn.v.1.i168.i = select i1 %i.cs, i32 %i.ef, i32 %i.ea
  %.pn.1.i169.i = and i32 %.pn.v.1.i168.i, 65280
  %.1.1.i170.i = or disjoint i32 %.pn.1.i169.i, %.pn.i167.i
  %.pn.v.2.i171.i = select i1 %i.ct, i32 %i.ef, i32 %i.ea
  %.pn.2.i172.i = and i32 %.pn.v.2.i171.i, 16711680
  %.1.2.i173.i = or disjoint i32 %.1.1.i170.i, %.pn.2.i172.i
  %.pn.v.3.i174.i = select i1 %i.cu, i32 %i.ef, i32 %i.ea
  %.pn.3.i175.i = and i32 %.pn.v.3.i174.i, -16777216
  %.1.3.i176.i = or disjoint i32 %.1.2.i173.i, %.pn.3.i175.i
  store i32 %.1.3.i176.i, ptr %i.dz, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ak, i64 44 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4            ; 5 uses
  %i.ei = lshr i32 %i.x, 7
  %i.ej = and i32 %i.ei, 1
  %i.ek = and i32 %i.eh, %i.at
  %i.el = shl nuw i32 %i.ej, %i.ad
  %i.em = or i32 %i.ek, %i.el                     ; 4 uses
  %.pn.v.i177.i = select i1 %i.cr, i32 %i.em, i32 %i.eh
  %.pn.i178.i = and i32 %.pn.v.i177.i, 255
  %.pn.v.1.i179.i = select i1 %i.cs, i32 %i.em, i32 %i.eh
  %.pn.1.i180.i = and i32 %.pn.v.1.i179.i, 65280
  %.1.1.i181.i = or disjoint i32 %.pn.1.i180.i, %.pn.i178.i
  %.pn.v.2.i182.i = select i1 %i.ct, i32 %i.em, i32 %i.eh
  %.pn.2.i183.i = and i32 %.pn.v.2.i182.i, 16711680
  %.1.2.i184.i = or disjoint i32 %.1.1.i181.i, %.pn.2.i183.i
  %.pn.v.3.i185.i = select i1 %i.cu, i32 %i.em, i32 %i.eh
  %.pn.3.i186.i = and i32 %.pn.v.3.i185.i, -16777216
  %.1.3.i187.i = or disjoint i32 %.1.2.i184.i, %.pn.3.i186.i
  store i32 %.1.3.i187.i, ptr %i.eg, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4            ; 5 uses
  %i.ep = lshr i32 %i.x, 8
  %i.eq = and i32 %i.ep, 1
  %i.er = and i32 %i.eo, %i.at
  %i.es = shl nuw i32 %i.eq, %i.ad
  %i.et = or i32 %i.er, %i.es                     ; 4 uses
  %.pn.v.i188.i = select i1 %i.cr, i32 %i.et, i32 %i.eo
  %.pn.i189.i = and i32 %.pn.v.i188.i, 255
  %.pn.v.1.i190.i = select i1 %i.cs, i32 %i.et, i32 %i.eo
  %.pn.1.i191.i = and i32 %.pn.v.1.i190.i, 65280
  %.1.1.i192.i = or disjoint i32 %.pn.1.i191.i, %.pn.i189.i
  %.pn.v.2.i193.i = select i1 %i.ct, i32 %i.et, i32 %i.eo
  %.pn.2.i194.i = and i32 %.pn.v.2.i193.i, 16711680
  %.1.2.i195.i = or disjoint i32 %.1.1.i192.i, %.pn.2.i194.i
  %.pn.v.3.i196.i = select i1 %i.cu, i32 %i.et, i32 %i.eo
  %.pn.3.i197.i = and i32 %.pn.v.3.i196.i, -16777216
  %.1.3.i198.i = or disjoint i32 %.1.2.i195.i, %.pn.3.i197.i
  store i32 %.1.3.i198.i, ptr %i.en, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ak, i64 52 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = lshr i32 %i.x, 9
  %i.ex = and i32 %i.ew, 1
  %i.ey = and i32 %i.ev, %i.at
  %i.ez = shl nuw i32 %i.ex, %i.ad
  %i.fa = or i32 %i.ey, %i.ez
  %i.fb = load i32, ptr %i.an, align 4
  %i.fc = and i32 %i.fa, %i.fb
  store i32 %i.fc, ptr %i.eu, align 4
  %i.fd = and i32 %i.x, 4096
  %.not109.i = icmp eq i32 %i.fd, 0
  br i1 %.not109.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ak, i64 28 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.fg = lshr i32 %i.ff, %i.ad
  %i.fh = and i32 %i.fg, 1                        ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 16           ; 2 uses
  %.not110.i = icmp ult i32 %i.fj, %i.fh
  br i1 %.not110.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.42, i32 noundef 1170, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_gpio_2700_write_control_reg) #11
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.fk = sub nuw i32 %i.fj, %i.fh
  store i32 %i.fk, ptr %i.fi, align 16
  %i.fl = and i32 %i.ff, %i.at
  store i32 %i.fl, ptr %i.fe, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.fm = load i32, ptr %i.ak, align 4
  tail call fastcc void @aspeed_gpio_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ak, i32 noundef %i.fm, i32 noundef -1)
  br label %aspeed_gpio_2700_write_control_reg.exit

bb.x:                                             ; preds = %bb.l
  %i.fn = load i32, ptr @qemu_loglevel, align 4
  %i.fo = and i32 %i.fn, 2048
  %.not32 = icmp eq i32 %i.fo, 0
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
end_hunk_1
