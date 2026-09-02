Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bitbang_i2c?download=true
inline.NumInlined: 25
inline.NumDeleted: 8
begin_hunk_0_@bitbang_i2c_set:bb.a
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bitbang_i2c_set_state.exit, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.ag = load i16, ptr @_TRACE_BITBANG_I2C_STATE_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not2.i.i, label %bitbang_i2c_set_state.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr @qemu_loglevel, align 4
  %i.ai = and i32 %i.ah, 32768
  %.not3.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i.i, label %bitbang_i2c_set_state.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str, ptr noundef %i.ae, ptr noundef nonnull @.str.2) #6
  br label %bitbang_i2c_set_state.exit

bitbang_i2c_set_state.exit:                       ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  store i32 1, ptr %i.aa, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.aj, align 4
  br label %bb.y

bb.s:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %0, align 8
  tail call void @i2c_end_transfer(ptr noundef %i.an) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 -1, ptr %i.ak, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @sname, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i74 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i74, label %bitbang_i2c_enter_stop.exit, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  %i.au = load i16, ptr @_TRACE_BITBANG_I2C_STATE_DSTATE, align 2
  %.not2.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not2.i.i.i, label %bitbang_i2c_enter_stop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 32768
  %.not3.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not3.i.i.i, label %bitbang_i2c_enter_stop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str, ptr noundef %i.as, ptr noundef nonnull @.str.1) #6
  br label %bitbang_i2c_enter_stop.exit

bitbang_i2c_enter_stop.exit:                      ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  store i32 0, ptr %i.ao, align 8
  br label %bb.y

bb.y:                                             ; preds = %bitbang_i2c_enter_stop.exit, %bitbang_i2c_set_state.exit
  %i.ax = load i32, ptr %i.o, align 8
  %i.ay = load i32, ptr %i.b, align 4             ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i75 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i75, label %bitbang_i2c_ret.exit, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.bc = load i16, ptr @_TRACE_BITBANG_I2C_DATA_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not4.i.i, label %bitbang_i2c_ret.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = load i32, ptr @qemu_loglevel, align 4
  %i.be = and i32 %i.bd, 32768
  %.not5.i.i = icmp eq i32 %i.be, 0
  br i1 %.not5.i.i, label %bitbang_i2c_ret.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.21, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1) #6
  %.pre.i = load i32, ptr %i.b, align 4
  br label %bitbang_i2c_ret.exit

bitbang_i2c_ret.exit:                             ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.bf = phi i32 [ %i.ay, %bb.y ], [ %i.ay, %bb.z ], [ %i.ay, %bb.aa ], [ %.pre.i, %bb.ab ]
  store i32 1, ptr %i.az, align 4
  %i.bg = and i32 %i.bf, 1
  br label %bb.bm

bb.ac:                                            ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp eq i32 %i.bi, %2
  br i1 %i.bj, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4            ; 4 uses
  %i.bm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i76 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i76, label %bitbang_i2c_nop.exit80, label %bb.ae, !prof !7

bb.ae:                                            ; preds = %bb.ad
  %i.bn = load i16, ptr @_TRACE_BITBANG_I2C_DATA_DSTATE, align 2
  %.not4.i.i.i77 = icmp eq i16 %i.bn, 0
  br i1 %.not4.i.i.i77, label %bitbang_i2c_nop.exit80, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i32, ptr @qemu_loglevel, align 4
  %i.bp = and i32 %i.bo, 32768
  %.not5.i.i.i78 = icmp eq i32 %i.bp, 0
  br i1 %.not5.i.i.i78, label %bitbang_i2c_nop.exit80, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.21, i32 noundef %2, i32 noundef %i.c, i32 noundef %i.bl, i32 noundef %i.bl) #6
  %.pre.i.i79 = load i32, ptr %i.b, align 4
  br label %bitbang_i2c_nop.exit80

bitbang_i2c_nop.exit80:                           ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.bq = phi i32 [ %i.c, %bb.ad ], [ %i.c, %bb.ae ], [ %i.c, %bb.af ], [ %.pre.i.i79, %bb.ag ]
  store i32 %i.bl, ptr %i.bk, align 4
  %i.br = and i32 %i.bq, %i.bl
  br label %bb.bm

bb.ah:                                            ; preds = %bb.ac
  store i32 %2, ptr %i.bh, align 8
  %i.bs = icmp eq i32 %2, 0
  br i1 %i.bs, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i81 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i81, label %bitbang_i2c_ret.exit85, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  %i.bw = load i16, ptr @_TRACE_BITBANG_I2C_DATA_DSTATE, align 2
  %.not4.i.i82 = icmp eq i16 %i.bw, 0
  br i1 %.not4.i.i82, label %bitbang_i2c_ret.exit85, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bx = load i32, ptr @qemu_loglevel, align 4
  %i.by = and i32 %i.bx, 32768
  %.not5.i.i83 = icmp eq i32 %i.by, 0
  br i1 %.not5.i.i83, label %bitbang_i2c_ret.exit85, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %i.c, i32 noundef %i.bu, i32 noundef 1) #6
  %.pre.i84 = load i32, ptr %i.b, align 4
  br label %bitbang_i2c_ret.exit85

bitbang_i2c_ret.exit85:                           ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.al
  %i.bz = phi i32 [ %i.c, %bb.ai ], [ %i.c, %bb.aj ], [ %i.c, %bb.ak ], [ %.pre.i84, %bb.al ]
  store i32 1, ptr %i.bt, align 4
  %i.ca = and i32 %i.bz, 1
  br label %bb.bm

bb.am:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.cc = load i32, ptr %i.cb, align 8            ; 10 uses
  switch i32 %i.cc, label %bb.bl [
    i32 0, label %bb.an
    i32 19, label %bb.an
    i32 1, label %bb.ao
    i32 2, label %bb.ao
    i32 3, label %bb.ao
    i32 4, label %bb.ao
    i32 5, label %bb.ao
    i32 6, label %bb.ao
    i32 7, label %bb.ao
    i32 8, label %bb.ao
    i32 9, label %bb.au
    i32 10, label %bb.ba
    i32 11, label %bb.bb
    i32 12, label %bb.bb
    i32 13, label %bb.bb
    i32 14, label %bb.bb
    i32 15, label %bb.bb
    i32 16, label %bb.bb
    i32 17, label %bb.bb
    i32 18, label %bb.bh
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.cd = tail call fastcc i32 @bitbang_i2c_ret(ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.bm

bb.ao:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8
  %3 = shl i8 %i.cf, 1
  %4 = trunc i32 %i.c to i8
  %5 = or i8 %3, %4
  store i8 %5, ptr %i.ce, align 8
  %i.cg = add nuw nsw i32 %i.cc, 1                ; 5 uses
  %i.ch = zext nneg i32 %i.cc to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @sname, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = zext nneg i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @sname, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i86 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i86, label %bitbang_i2c_set_state.exit89.thread, label %bb.ap, !prof !7

bitbang_i2c_set_state.exit89.thread:              ; preds = %bb.ao
  store i32 %i.cg, ptr %i.cb, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bitbang_i2c_ret.exit94

bb.ap:                                            ; preds = %bb.ao
  %i.cp = load i16, ptr @_TRACE_BITBANG_I2C_STATE_DSTATE, align 2
  %.not2.i.i87 = icmp eq i16 %i.cp, 0
  br i1 %.not2.i.i87, label %bitbang_i2c_set_state.exit89.thread105, label %bb.aq

bitbang_i2c_set_state.exit89.thread105:           ; preds = %bb.ap
  store i32 %i.cg, ptr %i.cb, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cr = load i32, ptr @qemu_loglevel, align 4
  %i.cs = and i32 %i.cr, 32768
  %.not3.i.i88 = icmp eq i32 %i.cs, 0
  br i1 %.not3.i.i88, label %bitbang_i2c_set_state.exit89.thread115, label %bitbang_i2c_set_state.exit89

bitbang_i2c_set_state.exit89.thread115:           ; preds = %bb.aq
  store i32 %i.cg, ptr %i.cb, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bitbang_i2c_set_state.exit89._crit_edge

bitbang_i2c_set_state.exit89:                     ; preds = %bb.aq
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str, ptr noundef %i.cj, ptr noundef %i.cm) #6
  %.pr.pre = load i32, ptr @trace_events_enabled_count, align 4
  %.pre110 = load i32, ptr %i.b, align 4          ; 2 uses
  %i.cu = icmp eq i32 %.pr.pre, 0
  store i32 %i.cg, ptr %i.cb, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br i1 %i.cu, label %bitbang_i2c_ret.exit94, label %bitbang_i2c_set_state.exit89._crit_edge, !prof !8

bitbang_i2c_set_state.exit89._crit_edge:          ; preds = %bitbang_i2c_set_state.exit89.thread115, %bitbang_i2c_set_state.exit89
  %i.cw = phi ptr [ %i.ct, %bitbang_i2c_set_state.exit89.thread115 ], [ %i.cv, %bitbang_i2c_set_state.exit89 ]
  %i.cx = phi i32 [ %i.c, %bitbang_i2c_set_state.exit89.thread115 ], [ %.pre110, %bitbang_i2c_set_state.exit89 ]
  %.pre111 = load i32, ptr %i.bh, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bitbang_i2c_set_state.exit89._crit_edge, %bitbang_i2c_set_state.exit89.thread105
  %i.cy = phi i32 [ 1, %bitbang_i2c_set_state.exit89.thread105 ], [ %.pre111, %bitbang_i2c_set_state.exit89._crit_edge ]
  %i.cz = phi ptr [ %i.cq, %bitbang_i2c_set_state.exit89.thread105 ], [ %i.cw, %bitbang_i2c_set_state.exit89._crit_edge ] ; 4 uses
  %i.da = phi i32 [ %i.c, %bitbang_i2c_set_state.exit89.thread105 ], [ %i.cx, %bitbang_i2c_set_state.exit89._crit_edge ] ; 3 uses
  %i.db = load i32, ptr %i.cz, align 4
  %i.dc = load i16, ptr @_TRACE_BITBANG_I2C_DATA_DSTATE, align 2
  %.not4.i.i91 = icmp eq i16 %i.dc, 0
  br i1 %.not4.i.i91, label %bitbang_i2c_ret.exit94, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dd = load i32, ptr @qemu_loglevel, align 4
  %i.de = and i32 %i.dd, 32768
  %.not5.i.i92 = icmp eq i32 %i.de, 0
  br i1 %.not5.i.i92, label %bitbang_i2c_ret.exit94, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.21, i32 noundef %i.cy, i32 noundef %i.da, i32 noundef %i.db, i32 noundef 1) #6
  %.pre.i93 = load i32, ptr %i.b, align 4
  br label %bitbang_i2c_ret.exit94

bitbang_i2c_ret.exit94:                           ; preds = %bitbang_i2c_set_state.exit89.thread, %bitbang_i2c_set_state.exit89, %bb.ar, %bb.as, %bb.at
  %i.df = phi ptr [ %i.cv, %bitbang_i2c_set_state.exit89 ], [ %i.cz, %bb.ar ], [ %i.cz, %bb.as ], [ %i.cz, %bb.at ], [ %i.co, %bitbang_i2c_set_state.exit89.thread ]
  %i.dg = phi i32 [ %.pre110, %bitbang_i2c_set_state.exit89 ], [ %i.da, %bb.ar ], [ %i.da, %bb.as ], [ %.pre.i93, %bb.at ], [ %i.c, %bitbang_i2c_set_state.exit89.thread ]
  store i32 1, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 1
  br label %bb.bm

bb.au:                                            ; preds = %bb.am
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = icmp slt i32 %i.dj, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8             ; 3 uses
  br i1 %i.dk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dn = zext i8 %i.dm to i32
  store i32 %i.dn, ptr %i.di, align 4
  tail call fastcc void @trace_bitbang_i2c_addr(i8 noundef zeroext %i.dm)
  %i.do = load ptr, ptr %0, align 8
  %i.dp = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dq = lshr i32 %i.dp, 1
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = trunc i32 %i.dp to i1
  %i.dt = tail call i32 @i2c_start_transfer(ptr noundef %i.do, i8 noundef zeroext %i.dr, i1 noundef zeroext %i.ds) #6
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  tail call fastcc void @trace_bitbang_i2c_send(i8 noundef zeroext %i.dm)
  %i.du = load ptr, ptr %0, align 8
  %i.dv = load i8, ptr %i.dl, align 8
  %i.dw = tail call i32 @i2c_send(ptr noundef %i.du, i8 noundef zeroext %i.dv) #6
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0 = phi i32 [ %i.dt, %bb.av ], [ %i.dw, %bb.aw ]
  %.not67 = icmp eq i32 %.0, 0
  br i1 %.not67, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call fastcc void @bitbang_i2c_set_state(ptr noundef nonnull %0, i32 noundef 19)
  tail call fastcc void @bitbang_i2c_enter_stop(ptr noundef nonnull %0)
  %i.dx = tail call fastcc i32 @bitbang_i2c_ret(ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.bm

bb.az:                                            ; preds = %bb.ax
  %i.dy = load i32, ptr %i.di, align 4
  %i.dz = and i32 %i.dy, 1
  %.not68 = icmp eq i32 %i.dz, 0
  %. = select i1 %.not68, i32 1, i32 10
  tail call fastcc void @bitbang_i2c_set_state(ptr noundef nonnull %0, i32 noundef %.)
  %i.ea = tail call fastcc i32 @bitbang_i2c_ret(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.bm

bb.ba:                                            ; preds = %bb.am
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = tail call zeroext i8 @i2c_recv(ptr noundef %i.eb) #6 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ec, ptr %i.ed, align 8
  tail call fastcc void @trace_bitbang_i2c_recv(i8 noundef zeroext %i.ec)
  %.pre = load i32, ptr %i.cb, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am
  %i.ee = phi i32 [ %.pre, %bb.ba ], [ %i.cc, %bb.am ], [ %i.cc, %bb.am ], [ %i.cc, %bb.am ], [ %i.cc, %bb.am ], [ %i.cc, %bb.am ], [ %i.cc, %bb.am ], [ %i.cc, %bb.am ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.eg = load i8, ptr %i.ef, align 8             ; 3 uses
  %i.eh = lshr i8 %i.eg, 7
  %i.ei = zext nneg i8 %i.eh to i32               ; 3 uses
  %i.ej = add i32 %i.ee, 1                        ; 4 uses
  %i.ek = zext i32 %i.ee to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr @sname, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = zext i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @sname, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i95 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i95, label %bitbang_i2c_set_state.exit98.thread118, label %bb.bc, !prof !7

bitbang_i2c_set_state.exit98.thread118:           ; preds = %bb.bb
  store i32 %i.ej, ptr %i.cb, align 8
  %i.er = shl i8 %i.eg, 1
  store i8 %i.er, ptr %i.ef, align 8
  %i.es = load i32, ptr %i.b, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bitbang_i2c_ret.exit103

bb.bc:                                            ; preds = %bb.bb
  %i.eu = load i16, ptr @_TRACE_BITBANG_I2C_STATE_DSTATE, align 2
  %.not2.i.i96 = icmp eq i16 %i.eu, 0
  br i1 %.not2.i.i96, label %bitbang_i2c_set_state.exit98.thread, label %bb.bd, !prof !9

bb.bd:                                            ; preds = %bb.bc
  %i.ev = load i32, ptr @qemu_loglevel, align 4
  %i.ew = and i32 %i.ev, 32768
  %.not3.i.i97 = icmp eq i32 %i.ew, 0
  br i1 %.not3.i.i97, label %bitbang_i2c_set_state.exit98.thread, label %bitbang_i2c_set_state.exit98, !prof !9

bitbang_i2c_set_state.exit98.thread:              ; preds = %bb.bc, %bb.bd
  store i32 %i.ej, ptr %i.cb, align 8
  %i.ex = shl i8 %i.eg, 1
  store i8 %i.ex, ptr %i.ef, align 8
  %i.ey = load i32, ptr %i.b, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.be

bitbang_i2c_set_state.exit98:                     ; preds = %bb.bd
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str, ptr noundef %i.em, ptr noundef %i.ep) #6
  %.pre107 = load i8, ptr %i.ef, align 8
  %.pre108 = load i32, ptr @trace_events_enabled_count, align 4
  %i.fa = icmp eq i32 %.pre108, 0
  store i32 %i.ej, ptr %i.cb, align 8
  %i.fb = shl i8 %.pre107, 1
  store i8 %i.fb, ptr %i.ef, align 8
  %i.fc = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br i1 %i.fa, label %bitbang_i2c_ret.exit103, label %bb.be, !prof !8

bb.be:                                            ; preds = %bitbang_i2c_set_state.exit98.thread, %bitbang_i2c_set_state.exit98
  %i.fe = phi ptr [ %i.ez, %bitbang_i2c_set_state.exit98.thread ], [ %i.fd, %bitbang_i2c_set_state.exit98 ] ; 4 uses
  %i.ff = phi i32 [ %i.ey, %bitbang_i2c_set_state.exit98.thread ], [ %i.fc, %bitbang_i2c_set_state.exit98 ] ; 3 uses
  %i.fg = load i32, ptr %i.bh, align 8
  %i.fh = load i32, ptr %i.fe, align 4
  %i.fi = load i16, ptr @_TRACE_BITBANG_I2C_DATA_DSTATE, align 2
  %.not4.i.i100 = icmp eq i16 %i.fi, 0
  br i1 %.not4.i.i100, label %bitbang_i2c_ret.exit103, label %bb.bf

end_hunk_0
