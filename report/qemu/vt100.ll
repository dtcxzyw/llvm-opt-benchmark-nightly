Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vt100?download=true
inline.NumInlined: 53
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@vt100_input:bb.a

bb.cu:                                            ; preds = %trace_console_putchar_csi.exit.i
  %i.rc = load <2 x i32>, ptr %i.o, align 4
  store <2 x i32> %i.rc, ptr %i.t, align 8
  %i.rd = load i16, ptr %i.u, align 4
  store i16 %i.rd, ptr %i.v, align 2
  br label %vt100_putchar.exit

bb.cv:                                            ; preds = %trace_console_putchar_csi.exit.i
  %i.re = load <2 x i32>, ptr %i.t, align 8
  store <2 x i32> %i.re, ptr %i.o, align 4
  %i.rf = load i16, ptr %i.v, align 2
  store i16 %i.rf, ptr %i.u, align 4
  br label %vt100_putchar.exit

bb.cw:                                            ; preds = %trace_console_putchar_csi.exit.i
  %i.rg = load i32, ptr %i.m, align 4
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.rg, i32 1) ; 2 uses
  %i.rh = load i32, ptr %i.a, align 4             ; 6 uses
  %i.ri = load i32, ptr %i.o, align 4             ; 3 uses
  %i.rj = sub i32 %i.rh, %i.ri                    ; 3 uses
  %i.rk = icmp ugt i32 %spec.store.select.i, %i.rj
  br i1 %i.rk, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %.not.i30 = icmp eq i32 %i.rj, 0
  br i1 %.not.i30, label %vt100_putchar.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.042.i = phi i32 [ %i.rj, %bb.cx ], [ %spec.store.select.i, %bb.cw ] ; 3 uses
  %i.rl = add i32 %.042.i, %i.ri                  ; 5 uses
  %.not45.i = icmp eq i32 %i.rh, %i.rl
  br i1 %.not45.i, label %.loopexit46.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rm = sub i32 %i.rh, %i.rl
  %i.rn = load i32, ptr %i.p, align 8
  %i.ro = load i32, ptr %i.q, align 8
  %i.rp = add i32 %i.ro, %i.rn
  %i.rq = load i32, ptr %i.r, align 4
  %i.rr = srem i32 %i.rp, %i.rq
  %i.rs = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.rt = mul i32 %i.rr, %i.rh                    ; 2 uses
  %i.ru = add i32 %i.rt, %i.rl
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [3 x i8], ptr %i.rs, i64 %i.rv
  %i.rx = add i32 %i.rt, %i.ri
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [3 x i8], ptr %i.rs, i64 %i.ry
  %i.sa = zext i32 %i.rm to i64
  %i.sb = mul nuw nsw i64 %i.sa, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.rw, ptr noundef nonnull align 1 %i.rz, i64 noundef range(i64 3, 12884901886) %i.sb, i1 noundef false) #10
  %i.sc = icmp ult i32 %i.rl, %i.rh
  br i1 %i.sc, label %.lr.ph.i29, label %.loopexit46.i

.lr.ph.i29:                                       ; preds = %bb.cz, %.lr.ph.i29
  %.047.i = phi i32 [ %i.se, %.lr.ph.i29 ], [ %i.rl, %bb.cz ] ; 2 uses
  %i.sd = load i32, ptr %i.q, align 8
  tail call fastcc void @vt100_update_xy(ptr noundef nonnull %0, i32 noundef %.047.i, i32 noundef %i.sd)
  %i.se = add nuw i32 %.047.i, 1                  ; 2 uses
  %i.sf = icmp ult i32 %i.se, %i.rh
  br i1 %i.sf, label %.lr.ph.i29, label %.loopexit46.i, !llvm.loop !36

.loopexit46.i:                                    ; preds = %.lr.ph.i29, %bb.cz, %bb.cy
  %i.sg = load i32, ptr %i.o, align 4             ; 3 uses
  %i.sh = add i32 %i.sg, %.042.i
  %i.si = icmp ult i32 %i.sg, %i.sh
  br i1 %i.si, label %.lr.ph49.i, label %vt100_putchar.exit

.lr.ph49.i:                                       ; preds = %.loopexit46.i, %.lr.ph49.i
  %.148.i = phi i32 [ %i.sw, %.lr.ph49.i ], [ %i.sg, %.loopexit46.i ] ; 3 uses
  %i.sj = load i32, ptr %i.q, align 8             ; 2 uses
  %i.sk = load i32, ptr %i.p, align 8
  %i.sl = load i32, ptr %i.r, align 4
  %i.sm = load i32, ptr %i.a, align 4             ; 3 uses
  %.not.i.i27 = icmp slt i32 %.148.i, %i.sm
  %i.sn = add i32 %i.sm, -1
  %spec.select.i.i28 = select i1 %.not.i.i27, i32 %.148.i, i32 %i.sn ; 2 uses
  %i.so = add i32 %i.sk, %i.sj
  %i.sp = srem i32 %i.so, %i.sl
  %i.sq = load ptr, ptr %i.s, align 8
  %i.sr = mul i32 %i.sp, %i.sm
  %i.ss = add i32 %i.sr, %spec.select.i.i28
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [3 x i8], ptr %i.sq, i64 %i.st ; 2 uses
  store i8 32, ptr %i.su, align 1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  store i16 7, ptr %i.sv, align 1
  tail call fastcc void @vt100_update_xy(ptr noundef nonnull %0, i32 noundef %spec.select.i.i28, i32 noundef %i.sj)
  %i.sw = add nuw i32 %.148.i, 1                  ; 2 uses
  %i.sx = load i32, ptr %i.o, align 4
  %i.sy = add i32 %i.sx, %.042.i
  %i.sz = icmp ult i32 %i.sw, %i.sy
  br i1 %i.sz, label %.lr.ph49.i, label %vt100_putchar.exit, !llvm.loop !37

bb.da:                                            ; preds = %trace_console_putchar_csi.exit.i
  %i.ta = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.ta, 0
  br i1 %.not.i, label %vt100_putchar.exit, label %bb.db, !prof !22

bb.db:                                            ; preds = %bb.da
  %i.tb = load i16, ptr @_TRACE_CONSOLE_PUTCHAR_UNHANDLED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.tb, 0
  br i1 %.not1.i, label %vt100_putchar.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tc = load i32, ptr @qemu_loglevel, align 4
  %i.td = and i32 %i.tc, 32768
  %.not2.i = icmp eq i32 %i.td, 0
  br i1 %.not2.i, label %vt100_putchar.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, i32 noundef range(i32 0, 256) %i.de) #10
  br label %vt100_putchar.exit

bb.de:                                            ; preds = %bb.b
  switch i8 %i.ad, label %vt100_putchar.exit [
    i8 7, label %bb.df
    i8 27, label %bb.dg
  ]

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.k, align 8
  br label %vt100_putchar.exit

bb.dg:                                            ; preds = %bb.de
  store i32 1, ptr %i.k, align 8
  br label %vt100_putchar.exit

bb.dh:                                            ; preds = %bb.b, %bb.b
  store i32 0, ptr %i.k, align 8
  br label %vt100_putchar.exit

vt100_putchar.exit:                               ; preds = %.lr.ph49.i, %bb.cq, %.lr.ph47.i, %.lr.ph.i, %.lr.ph263.i, %bb.bj, %.lr.ph266.i, %._crit_edge.i, %._crit_edge272.i, %._crit_edge278.i, %bb.dd, %bb.dc, %bb.db, %bb.da, %.loopexit46.i, %bb.cx, %bb.bo, %.loopexit44.i, %bb.bl, %bb.b, %bh_utf8_decode.exit.i, %vt100_put_one.exit48, %bb.j, %bb.k, %bb.k, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s, %vt100_put_one.exit, %.preheader.i, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.ah, %bb.ao, %bb.ar, %bb.au, %bb.ax, %bb.ay, %bb.az, %bb.ba, %.preheader253.i, %.preheader252.lr.ph.i, %.preheader250.i, %.preheader249.lr.ph.i, %bb.bb, %.preheader248.lr.ph.i, %bb.bh, %.preheader258.i, %.preheader256.i, %bb.bi, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.de, %bb.df, %bb.dg, %bb.dh
  %.0247.i = phi ptr [ null, %bb.b ], [ null, %bh_utf8_decode.exit.i ], [ null, %vt100_put_one.exit48 ], [ null, %bb.j ], [ null, %vt100_put_one.exit ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.s ], [ null, %bb.ab ], [ null, %.preheader.i ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ah ], [ null, %.lr.ph47.i ], [ null, %bb.ao ], [ null, %bb.ar ], [ null, %bb.au ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.dh ], [ null, %.preheader256.i ], [ null, %bb.bb ], [ null, %bb.bh ], [ null, %.preheader250.i ], [ null, %bb.dg ], [ null, %.preheader253.i ], [ null, %bb.bi ], [ null, %.lr.ph266.i ], [ null, %.lr.ph263.i ], [ null, %bb.cr ], [ null, %bb.cs ], [ %i.qv, %bb.ct ], [ null, %bb.cu ], [ null, %bb.cv ], [ null, %.lr.ph.i ], [ null, %bb.de ], [ null, %bb.df ], [ null, %.preheader248.lr.ph.i ], [ null, %.preheader258.i ], [ null, %._crit_edge272.i ], [ null, %.preheader249.lr.ph.i ], [ null, %bb.dc ], [ null, %.preheader252.lr.ph.i ], [ null, %._crit_edge278.i ], [ null, %bb.cq ], [ null, %bb.dd ], [ null, %._crit_edge.i ], [ null, %bb.bl ], [ null, %.loopexit44.i ], [ null, %bb.bo ], [ null, %bb.cx ], [ null, %.loopexit46.i ], [ null, %bb.da ], [ null, %bb.db ], [ null, %bb.bj ], [ null, %.lr.ph49.i ]
  tail call void @g_free(ptr noundef %.0247.i) #10
  %i.te = add i32 %.062, 1                        ; 2 uses
  %i.tf = sext i32 %i.te to i64                   ; 2 uses
  %i.tg = icmp ugt i64 %2, %i.tf
  br i1 %i.tg, label %bb.b, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %vt100_putchar.exit, %bb.a
  tail call fastcc void @vt100_show_cursor(ptr noundef %0, i32 noundef 1)
  %i.th = load i32, ptr %i.d, align 8             ; 3 uses
  %i.ti = load i32, ptr %i.i, align 8             ; 2 uses
  %i.tj = icmp slt i32 %i.th, %i.ti
  br i1 %i.tj, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge
  %i.tk = load i32, ptr %i.h, align 4             ; 2 uses
  %i.tl = sub i32 %i.ti, %i.th
  %i.tm = load i32, ptr %i.j, align 4
  %i.tn = sub i32 %i.tm, %i.tk
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tp = load ptr, ptr %i.to, align 8
  tail call void %i.tp(ptr noundef nonnull %0, i32 noundef %i.th, i32 noundef %i.tk, i32 noundef %i.tl, i32 noundef %i.tn) #10, !inline_history !12
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vt100_keysym(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  switch i32 %1, label %bb.ab [
    i32 58368, label %bb.b
    i32 58369, label %bb.d
    i32 58374, label %bb.f
    i32 58375, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = load i32, ptr %i.b, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sub i32 %i.e, %i.g
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sub i32 %i.j, %spec.select.i             ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = select i1 %i.l, i32 %i.e, i32 0
  %spec.select38.i = add i32 %i.m, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted.i = load i32, ptr %i.n, align 4      ; 2 uses
  %i.o = icmp eq i32 %.promoted.i, %spec.select38.i
  br i1 %i.o, label %vt100_scroll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %i.e, -1
  %i.q = add i32 %.promoted.i, -1                 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %spec.select39.i = select i1 %i.r, i32 %i.p, i32 %i.q
  store i32 %spec.select39.i, ptr %i.n, align 4
  br label %vt100_scroll.exit

vt100_scroll.exit:                                ; preds = %bb.c, %bb.b
  tail call void @vt100_refresh(ptr noundef nonnull %0)
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i32, ptr %i.t, align 8
  %.promoted45.i = load i32, ptr %i.s, align 4    ; 2 uses
  %i.v = icmp eq i32 %.promoted45.i, %i.u
  br i1 %i.v, label %vt100_scroll.exit41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = add i32 %.promoted45.i, 1                ; 2 uses
  %i.y = load i32, ptr %i.w, align 4
  %i.z = icmp eq i32 %i.x, %i.y
  %spec.store.select.i = select i1 %i.z, i32 0, i32 %i.x
  store i32 %spec.store.select.i, ptr %i.s, align 4
  br label %vt100_scroll.exit41

vt100_scroll.exit41:                              ; preds = %bb.e, %bb.d
  tail call void @vt100_refresh(ptr noundef nonnull %0)
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = sub i32 %i.ad, %i.af
  %spec.select.i42 = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sub i32 %i.ai, %spec.select.i42         ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = select i1 %i.ak, i32 %i.ad, i32 0
  %spec.select38.i43 = add i32 %i.al, %i.aj       ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 11 uses
  %i.an = add i32 %i.ad, -1                       ; 10 uses
  %.promoted.i44 = load i32, ptr %i.am, align 4   ; 2 uses
  %i.ao = icmp eq i32 %.promoted.i44, %spec.select38.i43
  br i1 %i.ao, label %vt100_scroll.exit49, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add i32 %.promoted.i44, -1              ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  %spec.select39.i47 = select i1 %i.aq, i32 %i.an, i32 %i.ap ; 3 uses
  store i32 %spec.select39.i47, ptr %i.am, align 4
  %i.ar = icmp eq i32 %spec.select39.i47, %spec.select38.i43
  br i1 %i.ar, label %vt100_scroll.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = add i32 %spec.select39.i47, -1          ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  %spec.select39.i47.1 = select i1 %i.at, i32 %i.an, i32 %i.as ; 3 uses
  store i32 %spec.select39.i47.1, ptr %i.am, align 4
  %i.au = icmp eq i32 %spec.select39.i47.1, %spec.select38.i43
  br i1 %i.au, label %vt100_scroll.exit49, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add i32 %spec.select39.i47.1, -1        ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %spec.select39.i47.2 = select i1 %i.aw, i32 %i.an, i32 %i.av ; 3 uses
  store i32 %spec.select39.i47.2, ptr %i.am, align 4
  %i.ax = icmp eq i32 %spec.select39.i47.2, %spec.select38.i43
  br i1 %i.ax, label %vt100_scroll.exit49, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add i32 %spec.select39.i47.2, -1        ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  %spec.select39.i47.3 = select i1 %i.az, i32 %i.an, i32 %i.ay ; 3 uses
  store i32 %spec.select39.i47.3, ptr %i.am, align 4
  %i.ba = icmp eq i32 %spec.select39.i47.3, %spec.select38.i43
  br i1 %i.ba, label %vt100_scroll.exit49, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add i32 %spec.select39.i47.3, -1        ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  %spec.select39.i47.4 = select i1 %i.bc, i32 %i.an, i32 %i.bb ; 3 uses
  store i32 %spec.select39.i47.4, ptr %i.am, align 4
  %i.bd = icmp eq i32 %spec.select39.i47.4, %spec.select38.i43
  br i1 %i.bd, label %vt100_scroll.exit49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = add i32 %spec.select39.i47.4, -1        ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %spec.select39.i47.5 = select i1 %i.bf, i32 %i.an, i32 %i.be ; 3 uses
  store i32 %spec.select39.i47.5, ptr %i.am, align 4
  %i.bg = icmp eq i32 %spec.select39.i47.5, %spec.select38.i43
  br i1 %i.bg, label %vt100_scroll.exit49, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = add i32 %spec.select39.i47.5, -1        ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %spec.select39.i47.6 = select i1 %i.bi, i32 %i.an, i32 %i.bh ; 3 uses
  store i32 %spec.select39.i47.6, ptr %i.am, align 4
  %i.bj = icmp eq i32 %spec.select39.i47.6, %spec.select38.i43
  br i1 %i.bj, label %vt100_scroll.exit49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = add i32 %spec.select39.i47.6, -1        ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %spec.select39.i47.7 = select i1 %i.bl, i32 %i.an, i32 %i.bk ; 3 uses
  store i32 %spec.select39.i47.7, ptr %i.am, align 4
  %i.bm = icmp eq i32 %spec.select39.i47.7, %spec.select38.i43
  br i1 %i.bm, label %vt100_scroll.exit49, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = add i32 %spec.select39.i47.7, -1        ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  %spec.select39.i47.8 = select i1 %i.bo, i32 %i.an, i32 %i.bn ; 3 uses
  store i32 %spec.select39.i47.8, ptr %i.am, align 4
  %i.bp = icmp eq i32 %spec.select39.i47.8, %spec.select38.i43
  br i1 %i.bp, label %vt100_scroll.exit49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = add i32 %spec.select39.i47.8, -1        ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  %spec.select39.i47.9 = select i1 %i.br, i32 %i.an, i32 %i.bq
  store i32 %spec.select39.i47.9, ptr %i.am, align 4
  br label %vt100_scroll.exit49

vt100_scroll.exit49:                              ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  tail call void @vt100_refresh(ptr noundef nonnull %0)
  br label %bb.am

bb.q:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 11 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load i32, ptr %i.bt, align 8            ; 10 uses
  %.promoted45.i50 = load i32, ptr %i.bs, align 4 ; 2 uses
  %i.bv = icmp eq i32 %.promoted45.i50, %i.bu
  br i1 %i.bv, label %vt100_scroll.exit54, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bx = add i32 %.promoted45.i50, 1             ; 2 uses
  %i.by = load i32, ptr %i.bw, align 4            ; 10 uses
  %i.bz = icmp eq i32 %i.bx, %i.by
  %spec.store.select.i52 = select i1 %i.bz, i32 0, i32 %i.bx ; 3 uses
  store i32 %spec.store.select.i52, ptr %i.bs, align 4
  %i.ca = icmp eq i32 %spec.store.select.i52, %i.bu
  br i1 %i.ca, label %vt100_scroll.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = add i32 %spec.store.select.i52, 1       ; 2 uses
  %i.cc = icmp eq i32 %i.cb, %i.by
  %spec.store.select.i52.1 = select i1 %i.cc, i32 0, i32 %i.cb ; 3 uses
  store i32 %spec.store.select.i52.1, ptr %i.bs, align 4
  %i.cd = icmp eq i32 %spec.store.select.i52.1, %i.bu
  br i1 %i.cd, label %vt100_scroll.exit54, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = add i32 %spec.store.select.i52.1, 1     ; 2 uses
  %i.cf = icmp eq i32 %i.ce, %i.by
  %spec.store.select.i52.2 = select i1 %i.cf, i32 0, i32 %i.ce ; 3 uses
  store i32 %spec.store.select.i52.2, ptr %i.bs, align 4
  %i.cg = icmp eq i32 %spec.store.select.i52.2, %i.bu
  br i1 %i.cg, label %vt100_scroll.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = add i32 %spec.store.select.i52.2, 1     ; 2 uses
  %i.ci = icmp eq i32 %i.ch, %i.by
  %spec.store.select.i52.3 = select i1 %i.ci, i32 0, i32 %i.ch ; 3 uses
  store i32 %spec.store.select.i52.3, ptr %i.bs, align 4
  %i.cj = icmp eq i32 %spec.store.select.i52.3, %i.bu
  br i1 %i.cj, label %vt100_scroll.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = add i32 %spec.store.select.i52.3, 1     ; 2 uses
  %i.cl = icmp eq i32 %i.ck, %i.by
  %spec.store.select.i52.4 = select i1 %i.cl, i32 0, i32 %i.ck ; 3 uses
  store i32 %spec.store.select.i52.4, ptr %i.bs, align 4
  %i.cm = icmp eq i32 %spec.store.select.i52.4, %i.bu
  br i1 %i.cm, label %vt100_scroll.exit54, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = add i32 %spec.store.select.i52.4, 1     ; 2 uses
  %i.co = icmp eq i32 %i.cn, %i.by
  %spec.store.select.i52.5 = select i1 %i.co, i32 0, i32 %i.cn ; 3 uses
  store i32 %spec.store.select.i52.5, ptr %i.bs, align 4
  %i.cp = icmp eq i32 %spec.store.select.i52.5, %i.bu
  br i1 %i.cp, label %vt100_scroll.exit54, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = add i32 %spec.store.select.i52.5, 1     ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %i.by
  %spec.store.select.i52.6 = select i1 %i.cr, i32 0, i32 %i.cq ; 3 uses
  store i32 %spec.store.select.i52.6, ptr %i.bs, align 4
  %i.cs = icmp eq i32 %spec.store.select.i52.6, %i.bu
  br i1 %i.cs, label %vt100_scroll.exit54, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = add i32 %spec.store.select.i52.6, 1     ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.by
  %spec.store.select.i52.7 = select i1 %i.cu, i32 0, i32 %i.ct ; 3 uses
  store i32 %spec.store.select.i52.7, ptr %i.bs, align 4
  %i.cv = icmp eq i32 %spec.store.select.i52.7, %i.bu
  br i1 %i.cv, label %vt100_scroll.exit54, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = add i32 %spec.store.select.i52.7, 1     ; 2 uses
  %i.cx = icmp eq i32 %i.cw, %i.by
  %spec.store.select.i52.8 = select i1 %i.cx, i32 0, i32 %i.cw ; 3 uses
  store i32 %spec.store.select.i52.8, ptr %i.bs, align 4
  %i.cy = icmp eq i32 %spec.store.select.i52.8, %i.bu
  br i1 %i.cy, label %vt100_scroll.exit54, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = add i32 %spec.store.select.i52.8, 1     ; 2 uses
  %i.da = icmp eq i32 %i.cz, %i.by
  %spec.store.select.i52.9 = select i1 %i.da, i32 0, i32 %i.cz
  store i32 %spec.store.select.i52.9, ptr %i.bs, align 4
  br label %vt100_scroll.exit54

vt100_scroll.exit54:                              ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  tail call void @vt100_refresh(ptr noundef nonnull %0)
  br label %bb.am

bb.ab:                                            ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !7
  %i.db = and i32 %1, -32
  %or.cond = icmp eq i32 %i.db, 57600
  br i1 %or.cond, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 27, ptr %i.a, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 91, ptr %i.dc, align 1
  %i.de = icmp samesign ugt i32 %1, 57609
  %.lhs.trunc = trunc i32 %1 to i8                ; 2 uses
  br i1 %i.de, label %bb.ad, label %._crit_edge57

bb.ad:                                            ; preds = %bb.ac
  %i.df = udiv i8 %.lhs.trunc, 10
  %i.dg = or disjoint i8 %i.df, 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.dg, ptr %i.dd, align 2
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %bb.ac, %bb.ad
  %.0 = phi ptr [ %i.dh, %bb.ad ], [ %i.dd, %bb.ac ] ; 3 uses
  %i.di = urem i8 %.lhs.trunc, 10
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.dj, ptr %.0, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 126, ptr %i.dk, align 1
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ab
  %i.dm = add i32 %1, -57632
  %or.cond3 = icmp ult i32 %i.dm, 96
  br i1 %or.cond3, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 27, ptr %i.a, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 91, ptr %i.dn, align 1
  %i.dp = trunc i32 %1 to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.dp, ptr %i.do, align 2
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ds = load i32, ptr %i.dr, align 4
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i32 %1, label %bb.aj [
    i32 13, label %bb.ai
    i32 10, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.dt = tail call i64 @vt100_input(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 10, ptr %i.a, align 16
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = trunc i32 %1 to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dv, ptr %i.a, align 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.aj, %bb.ai, %._crit_edge57
  %.1 = phi ptr [ %i.dl, %._crit_edge57 ], [ %i.dq, %bb.af ], [ %i.du, %bb.ai ], [ %i.dw, %bb.aj ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dy = load i32, ptr %i.dx, align 4
  %.not40 = icmp eq i32 %i.dy, 0
  %.pre58 = ptrtoint ptr %.1 to i64
  %.pre59 = ptrtoint ptr %i.a to i64
  %.pre61 = sub i64 %.pre58, %.pre59              ; 2 uses
  br i1 %.not40, label %._crit_edge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = call i64 @vt100_input(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %.pre61) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak, %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.eb = call i32 @fifo8_num_free(ptr noundef nonnull %i.ea) #10
  %i.ec = zext i32 %i.eb to i64
  %i.ed = call i64 @llvm.umin.i64(i64 %.pre61, i64 %i.ec)
  %i.ee = trunc nuw i64 %i.ed to i32
  call void @fifo8_push_all(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.a, i32 noundef %i.ee) #10
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull %0) #10, !inline_history !35
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %vt100_scroll.exit54, %vt100_scroll.exit49, %vt100_scroll.exit41, %vt100_scroll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vt100_update_cursor() local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @cursor_visible_phase, align 1, !range !13, !noundef !39
  %i.b = xor i8 %i.a, 1
  store i8 %i.b, ptr @cursor_visible_phase, align 1
  %i.c = load ptr, ptr @vt100s, align 8           ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.04 = phi ptr [ %i.f, %.preheader ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @vt100_refresh(ptr noundef nonnull %.04)
  %i.e = getelementptr inbounds nuw i8, ptr %.04, i64 176
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !40

bb.b:                                             ; preds = %.preheader
  %i.g = load ptr, ptr @cursor_timer, align 8
  %i.h = tail call i64 @qemu_clock_get_ns(i32 noundef 0) #10
  %i.i = sdiv i64 %i.h, 1000000
  %i.j = add nsw i64 %i.i, 250
  tail call void @timer_mod(ptr noundef %i.g, i64 noundef %i.j) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vt100_init(ptr noundef initializes((16, 20), (176, 184)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cursor_timer, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #14 ; 2 uses
  tail call void @timer_init_full(ptr noundef %i.b, ptr noundef null, i32 noundef 0, i32 noundef 1000000, i32 noundef 0, ptr noundef nonnull @cursor_timer_cb, ptr noundef null) #10
  store ptr %i.b, ptr @cursor_timer, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.c, align 8
  %i.d = load ptr, ptr @vt100s, align 8           ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @vt100s, i64 8), align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %0, ptr @vt100s, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @vt100s, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @fifo8_create(ptr noundef nonnull %i.h, i32 noundef 16) #10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 512, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i16 7, ptr %i.l, align 4
  tail call void @vt100_set_image(ptr noundef nonnull %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cursor_timer_cb(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load i8, ptr @cursor_visible_phase, align 1, !range !13, !noundef !39
  %i.b = xor i8 %i.a, 1
  store i8 %i.b, ptr @cursor_visible_phase, align 1
  %i.c = load ptr, ptr @vt100s, align 8           ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %vt100_update_cursor.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.04.i = phi ptr [ %i.f, %.preheader.i ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @vt100_refresh(ptr noundef nonnull %.04.i)
  %i.e = getelementptr inbounds nuw i8, ptr %.04.i, i64 176
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %.preheader.i, !llvm.loop !40

bb.b:                                             ; preds = %.preheader.i
  %i.g = load ptr, ptr @cursor_timer, align 8
  %i.h = tail call i64 @qemu_clock_get_ns(i32 noundef 0) #10
  %i.i = sdiv i64 %i.h, 1000000
  %i.j = add nsw i64 %i.i, 250
  tail call void @timer_mod(ptr noundef %i.g, i64 noundef %i.j) #10
  br label %vt100_update_cursor.exit

vt100_update_cursor.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

declare void @fifo8_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vt100_fini(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.c, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @vt100s, i64 8), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %i.c, %bb.d ], [ %.pre14, %bb.c ]
  %i.g = phi ptr [ null, %bb.d ], [ %.pre, %bb.c ]
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @fifo8_destroy(ptr noundef nonnull %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @g_free(ptr noundef %i.j) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare void @fifo8_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @pixman_image_fill_rectangles(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @qemu_pixman_glyph_from_vgafont(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @qemu_pixman_glyph_render(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unicode_to_cp437(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vt100_put_lf(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pixman_color, align 8       ; 4 uses
  %2 = alloca %struct.pixman_rectangle16, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %._crit_edge71

._crit_edge71:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.h, 1                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  %spec.store.select = select i1 %i.o, i32 0, i32 %i.l ; 2 uses
  store i32 %spec.store.select, ptr %i.g, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge71, %bb.c
  %i.p = phi i32 [ %i.h, %._crit_edge71 ], [ %spec.store.select, %bb.c ]
  %i.q = phi i32 [ %.pre, %._crit_edge71 ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = add i32 %i.j, 1                          ; 2 uses
  %i.s = icmp eq i32 %i.r, %i.q
  %spec.store.select64 = select i1 %i.s, i32 0, i32 %i.r ; 3 uses
  store i32 %spec.store.select64, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.q
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = add i32 %i.f, %spec.store.select64
  %i.ad = srem i32 %i.ac, %i.q
  %i.ae = mul i32 %i.y, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [3 x i8], ptr %i.ab, i64 %i.af
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.069 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ] ; 3 uses
  %.06068 = phi i32 [ %i.aj, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  store i8 32, ptr %.069, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.069, i64 1
  store i16 7, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.069, i64 3
  %i.aj = add nuw nsw i32 %.06068, 1              ; 2 uses
  %i.ak = load i32, ptr %i.x, align 4             ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre72 = load i32, ptr %i.g, align 4
  %.pre73 = load i32, ptr %i.i, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.am = phi i32 [ %spec.store.select64, %bb.f ], [ %.pre73, %._crit_edge.loopexit ]
  %i.an = phi i32 [ %i.p, %bb.f ], [ %.pre72, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.y, %bb.f ], [ %i.ak, %._crit_edge.loopexit ] ; 2 uses
  %i.ao = icmp eq i32 %i.an, %i.am
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.aq, align 8
  %i.ar = add i32 %.lcssa, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = load i32, ptr %i.d, align 8             ; 2 uses
  %i.au = add i32 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = load ptr, ptr %0, align 8               ; 2 uses
  %.tr = trunc i32 %.lcssa to i16
  %i.ax = shl i16 %.tr, 3
  %.tr65 = trunc i32 %i.at to i16
  %i.ay = shl i16 %.tr65, 4
  %i.az = add i16 %i.ay, -16
  tail call void @pixman_image_composite(i32 noundef 1, ptr noundef %i.aw, ptr noundef null, ptr noundef %i.aw, i16 noundef signext 0, i16 noundef signext 16, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef zeroext %i.ax, i16 noundef zeroext %i.az) #10
  %i.ba = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 -281474976710656, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 4503599627370496, ptr %2, align 8, !annotation !7
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bc = load <2 x i32>, ptr %i.x, align 4
  %i.bd = trunc <2 x i32> %i.bc to <2 x i16>
  %i.be = shl <2 x i16> %i.bd, <i16 3, i16 4>
  %i.bf = add <2 x i16> %i.be, <i16 0, i16 -16>
  %i.bg = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.bg, ptr %i.bb, align 2
  %i.bh = call i32 @pixman_image_fill_rectangles(i32 noundef 1, ptr noundef %i.ba, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %2) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.bj, align 4
  %i.bk = load i32, ptr %i.x, align 4
  %i.bl = shl i32 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.bl, ptr %i.bm, align 8
  %i.bn = load i32, ptr %i.d, align 8
  %i.bo = shl i32 %i.bn, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.bo, ptr %i.bp, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.a
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vt100_update_xy(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pixman_color, align 8       ; 4 uses
  %4 = alloca %struct.pixman_color, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %1)
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %1)
  store i32 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %2)
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %2)
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = srem i32 %i.o, %i.q                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sub i32 %i.r, %i.t                       ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = select i1 %i.v, i32 %i.q, i32 0
  %spec.select = add i32 %i.w, %i.u               ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp slt i32 %spec.select, %i.y
  br i1 %i.z, label %bb.b, label %vt100_invalidate_xy.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not = icmp slt i32 %1, %i.ab
  %i.ac = add i32 %i.ab, -1
  %spec.select60 = select i1 %.not, i32 %1, i32 %i.ac ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = mul i32 %i.ab, %i.r
  %i.ag = add i32 %spec.select60, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [3 x i8], ptr %i.ae, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ak = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.vt100_putcharxy) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.am = load i16, ptr %i.al, align 1            ; 4 uses
  %i.an = and i16 %i.am, 2048
  %.not16.i = icmp eq i16 %i.an, 0                ; 2 uses
  %i.ao = lshr i16 %i.am, 8
  %i.ap = and i16 %i.ao, 1
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr @color_table_rgb, i64 %i.aq ; 2 uses
  %i.as = and i16 %i.am, 15
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = lshr i16 %i.am, 4
  %i.aw = and i16 %i.av, 15
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ax ; 2 uses
  %..i = select i1 %.not16.i, ptr %i.au, ptr %i.ay
  %.20.i = select i1 %.not16.i, ptr %i.ay, ptr %i.au
  %.sink.i = load i64, ptr %.20.i, align 8
  %.sink18.i = load i64, ptr %..i, align 8
  store i64 %.sink18.i, ptr %3, align 8
  store i64 %.sink.i, ptr %4, align 8
  %i.az = zext i8 %i.aj to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @vt100_putcharxy.glyphs, i64 %i.az ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.bb, null
  br i1 %.not17.i, label %bb.e, label %vt100_putcharxy.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = zext i8 %i.aj to i32
  %i.bd = tail call ptr @qemu_pixman_glyph_from_vgafont(i32 noundef 16, ptr noundef nonnull @vgafont16, i32 noundef %i.bc) #10 ; 2 uses
  store ptr %i.bd, ptr %i.ba, align 8
  %.pre.i = load ptr, ptr %0, align 8
  br label %vt100_putcharxy.exit

vt100_putcharxy.exit:                             ; preds = %bb.d, %bb.e
  %i.be = phi ptr [ %.pre.i, %bb.e ], [ %i.ak, %bb.d ]
  %i.bf = phi ptr [ %i.bd, %bb.e ], [ %i.bb, %bb.d ]
  call void @qemu_pixman_glyph_render(ptr noundef %i.bf, ptr noundef %i.be, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %spec.select60, i32 noundef %spec.select, i32 noundef 8, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = shl i32 %spec.select60, 3               ; 3 uses
  %i.bj = icmp sgt i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %vt100_putcharxy.exit
  store i32 %i.bi, ptr %i.bg, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %vt100_putcharxy.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = shl i32 %spec.select, 4                 ; 3 uses
  %i.bn = icmp sgt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.bm, ptr %i.bk, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = add i32 %i.bi, 8                        ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.bq, ptr %i.bo, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = add i32 %i.bm, 16                       ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.l, label %vt100_invalidate_xy.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.bu, ptr %i.bs, align 4
  br label %vt100_invalidate_xy.exit

vt100_invalidate_xy.exit:                         ; preds = %bb.l, %bb.k, %bb.a
  ret void
}

declare void @pixman_image_composite(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare i32 @fifo8_num_free(ptr noundef) local_unnamed_addr #2

declare void @fifo8_push_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #7

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11}
!11 = !{!"llvm.loop.unswitch.partial.disable"}
!12 = distinct !{null}
!13 = !{i8 0, i8 2}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9, !11}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9, !11}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9, !11}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{null}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = !{}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
end_hunk_0
