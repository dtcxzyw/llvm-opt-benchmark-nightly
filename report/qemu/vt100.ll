Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vt100?download=true
inline.NumInlined: 53
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@vt100_input:bb.a
  br label %.sink.split.i

bb.bz:                                            ; preds = %bb.bp
  %i.or = load i16, ptr %i.u, align 4
  %i.os = and i16 %i.or, -4097
  br label %.sink.split.i

bb.ca:                                            ; preds = %bb.bp
  %i.ot = load i16, ptr %i.u, align 4
  %i.ou = and i16 %i.ot, -16
  br label %.sink.split.i

bb.cb:                                            ; preds = %bb.bp
  %i.ov = load i16, ptr %i.u, align 4
  %i.ow = and i16 %i.ov, -16
  %i.ox = or disjoint i16 %i.ow, 4
  br label %.sink.split.i

bb.cc:                                            ; preds = %bb.bp
  %i.oy = load i16, ptr %i.u, align 4
  %i.oz = and i16 %i.oy, -16
  %i.pa = or disjoint i16 %i.oz, 2
  br label %.sink.split.i

bb.cd:                                            ; preds = %bb.bp
  %i.pb = load i16, ptr %i.u, align 4
  %i.pc = and i16 %i.pb, -16
  %i.pd = or disjoint i16 %i.pc, 6
  br label %.sink.split.i

bb.ce:                                            ; preds = %bb.bp
  %i.pe = load i16, ptr %i.u, align 4
  %i.pf = and i16 %i.pe, -16
  %i.pg = or disjoint i16 %i.pf, 1
  br label %.sink.split.i

bb.cf:                                            ; preds = %bb.bp
  %i.ph = load i16, ptr %i.u, align 4
  %i.pi = and i16 %i.ph, -16
  %i.pj = or disjoint i16 %i.pi, 5
  br label %.sink.split.i

bb.cg:                                            ; preds = %bb.bp
  %i.pk = load i16, ptr %i.u, align 4
  %i.pl = and i16 %i.pk, -16
  %i.pm = or disjoint i16 %i.pl, 3
  br label %.sink.split.i

bb.ch:                                            ; preds = %bb.bp
  %i.pn = load i16, ptr %i.u, align 4
  %i.po = and i16 %i.pn, -16
  %i.pp = or disjoint i16 %i.po, 7
  br label %.sink.split.i

bb.ci:                                            ; preds = %bb.bp
  %i.pq = load i16, ptr %i.u, align 4
  %i.pr = and i16 %i.pq, -241
  br label %.sink.split.i

bb.cj:                                            ; preds = %bb.bp
  %i.ps = load i16, ptr %i.u, align 4
  %i.pt = and i16 %i.ps, -241
  %i.pu = or disjoint i16 %i.pt, 64
  br label %.sink.split.i

bb.ck:                                            ; preds = %bb.bp
  %i.pv = load i16, ptr %i.u, align 4
  %i.pw = and i16 %i.pv, -241
  %i.px = or disjoint i16 %i.pw, 32
  br label %.sink.split.i

bb.cl:                                            ; preds = %bb.bp
  %i.py = load i16, ptr %i.u, align 4
  %i.pz = and i16 %i.py, -241
  %i.qa = or disjoint i16 %i.pz, 96
  br label %.sink.split.i

bb.cm:                                            ; preds = %bb.bp
  %i.qb = load i16, ptr %i.u, align 4
  %i.qc = and i16 %i.qb, -241
  %i.qd = or disjoint i16 %i.qc, 16
  br label %.sink.split.i

bb.cn:                                            ; preds = %bb.bp
  %i.qe = load i16, ptr %i.u, align 4
  %i.qf = and i16 %i.qe, -241
  %i.qg = or disjoint i16 %i.qf, 80
  br label %.sink.split.i

bb.co:                                            ; preds = %bb.bp
  %i.qh = load i16, ptr %i.u, align 4
  %i.qi = and i16 %i.qh, -241
  %i.qj = or disjoint i16 %i.qi, 48
  br label %.sink.split.i

bb.cp:                                            ; preds = %bb.bp
  %i.qk = load i16, ptr %i.u, align 4
  %i.ql = and i16 %i.qk, -241
  %i.qm = or disjoint i16 %i.ql, 112
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.sink.i = phi i16 [ %i.qm, %bb.cp ], [ %i.oa, %bb.bq ], [ %i.oc, %bb.br ], [ %i.oe, %bb.bs ], [ %i.og, %bb.bt ], [ %i.oi, %bb.bu ], [ %i.ok, %bb.bv ], [ %i.om, %bb.bw ], [ %i.oo, %bb.bx ], [ %i.oq, %bb.by ], [ %i.os, %bb.bz ], [ %i.ou, %bb.ca ], [ %i.ox, %bb.cb ], [ %i.pa, %bb.cc ], [ %i.pd, %bb.cd ], [ %i.pg, %bb.ce ], [ %i.pj, %bb.cf ], [ %i.pm, %bb.cg ], [ %i.pp, %bb.ch ], [ %i.pr, %bb.ci ], [ %i.pu, %bb.cj ], [ %i.px, %bb.ck ], [ %i.qa, %bb.cl ], [ %i.qd, %bb.cm ], [ %i.qg, %bb.cn ], [ %i.qj, %bb.co ], [ 7, %bb.bp ]
  store i16 %.sink.i, ptr %i.u, align 4
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split.i, %bb.bp
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i.a, label %vt100_putchar.exit, label %bb.bp, !llvm.loop !34

bb.cr:                                            ; preds = %trace_console_putchar_csi.exit.i
  %i.qn = load i32, ptr %i.m, align 4
  switch i32 %i.qn, label %vt100_putchar.exit [
    i32 5, label %bb.cs
    i32 6, label %bb.ct
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.qo = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.w) #10
  %i.qp = tail call i32 @llvm.umin.i32(i32 %i.qo, i32 4)
  tail call void @fifo8_push_all(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.3, i32 noundef %i.qp) #10
  %i.qq = load ptr, ptr %i.x, align 8
  tail call void %i.qq(ptr noundef nonnull %0) #10, !inline_history !35
  br label %vt100_putchar.exit

bb.ct:                                            ; preds = %bb.cr
  %i.qr = load i32, ptr %i.q, align 8
  %i.qs = add i32 %i.qr, 1
  %i.qt = load i32, ptr %i.o, align 4
  %i.qu = add i32 %i.qt, 1
  %i.qv = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.4, i32 noundef %i.qs, i32 noundef %i.qu) #10 ; 3 uses
  %i.qw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qv) #13
  %i.qx = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.w) #10
  %i.qy = zext i32 %i.qx to i64
  %i.qz = tail call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.qy)
  %i.ra = trunc nuw i64 %i.qz to i32
  tail call void @fifo8_push_all(ptr noundef nonnull %i.w, ptr noundef nonnull %i.qv, i32 noundef %i.ra) #10
  %i.rb = load ptr, ptr %i.x, align 8
  tail call void %i.rb(ptr noundef nonnull %0) #10, !inline_history !35
  br label %vt100_putchar.exit

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
  %3 = icmp ult i32 %i.se, %i.rh
  br i1 %3, label %.lr.ph.i29, label %.loopexit46.i, !llvm.loop !36

.loopexit46.i:                                    ; preds = %.lr.ph.i29, %bb.cz, %bb.cy
  %i.sf = load i32, ptr %i.o, align 4             ; 3 uses
  %i.sg = add i32 %i.sf, %.042.i
  %i.sh = icmp ult i32 %i.sf, %i.sg
  br i1 %i.sh, label %.lr.ph49.i, label %vt100_putchar.exit

.lr.ph49.i:                                       ; preds = %.loopexit46.i, %.lr.ph49.i
  %.148.i = phi i32 [ %i.sv, %.lr.ph49.i ], [ %i.sf, %.loopexit46.i ] ; 3 uses
  %i.si = load i32, ptr %i.q, align 8             ; 2 uses
  %i.sj = load i32, ptr %i.p, align 8
  %i.sk = load i32, ptr %i.r, align 4
  %i.sl = load i32, ptr %i.a, align 4             ; 3 uses
  %.not.i.i27 = icmp slt i32 %.148.i, %i.sl
  %i.sm = add i32 %i.sl, -1
  %spec.select.i.i28 = select i1 %.not.i.i27, i32 %.148.i, i32 %i.sm ; 2 uses
  %i.sn = add i32 %i.sj, %i.si
  %i.so = srem i32 %i.sn, %i.sk
  %i.sp = load ptr, ptr %i.s, align 8
  %i.sq = mul i32 %i.so, %i.sl
  %i.sr = add i32 %i.sq, %spec.select.i.i28
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [3 x i8], ptr %i.sp, i64 %i.ss ; 2 uses
  store i8 32, ptr %i.st, align 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  store i16 7, ptr %i.su, align 1
  tail call fastcc void @vt100_update_xy(ptr noundef nonnull %0, i32 noundef %spec.select.i.i28, i32 noundef %i.si)
  %i.sv = add nuw i32 %.148.i, 1                  ; 2 uses
  %i.sw = load i32, ptr %i.o, align 4
  %i.sx = add i32 %i.sw, %.042.i
  %i.sy = icmp ult i32 %i.sv, %i.sx
  br i1 %i.sy, label %.lr.ph49.i, label %vt100_putchar.exit, !llvm.loop !37

bb.da:                                            ; preds = %trace_console_putchar_csi.exit.i
  %i.sz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.sz, 0
  br i1 %.not.i, label %vt100_putchar.exit, label %bb.db, !prof !22

bb.db:                                            ; preds = %bb.da
  %i.ta = load i16, ptr @_TRACE_CONSOLE_PUTCHAR_UNHANDLED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.ta, 0
  br i1 %.not1.i, label %vt100_putchar.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tb = load i32, ptr @qemu_loglevel, align 4
  %i.tc = and i32 %i.tb, 32768
  %.not2.i = icmp eq i32 %i.tc, 0
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
  %i.td = add i32 %.062, 1                        ; 2 uses
  %i.te = sext i32 %i.td to i64                   ; 2 uses
  %i.tf = icmp ugt i64 %2, %i.te
  br i1 %i.tf, label %bb.b, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %vt100_putchar.exit, %bb.a
  tail call fastcc void @vt100_show_cursor(ptr noundef %0, i32 noundef 1)
  %i.tg = load i32, ptr %i.d, align 8             ; 3 uses
  %i.th = load i32, ptr %i.i, align 8             ; 2 uses
  %i.ti = icmp slt i32 %i.tg, %i.th
  br i1 %i.ti, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge
  %i.tj = load i32, ptr %i.h, align 4             ; 2 uses
  %i.tk = sub i32 %i.th, %i.tg
  %i.tl = load i32, ptr %i.j, align 4
  %i.tm = sub i32 %i.tl, %i.tj
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.to = load ptr, ptr %i.tn, align 8
  tail call void %i.to(ptr noundef nonnull %0, i32 noundef %i.tg, i32 noundef %i.tj, i32 noundef %i.tk, i32 noundef %i.tm) #10, !inline_history !12
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
end_hunk_0
