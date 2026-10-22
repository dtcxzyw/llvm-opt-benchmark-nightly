Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pl011?download=true
inline.NumInlined: 64
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pl011_read:bb.a
    i64 15, label %bb.u
    i64 16, label %bb.v
    i64 18, label %bb.w
    i64 1016, label %bb.x
    i64 1017, label %bb.x
    i64 1018, label %bb.x
    i64 1019, label %bb.x
    i64 1020, label %bb.x
    i64 1021, label %bb.x
    i64 1022, label %bb.x
    i64 1023, label %bb.x
    i64 1024, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1092
  %.val.i = load i32, ptr %i.b, align 4
  %i.c = and i32 %.val.i, 16
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not.i.i, i32 1, i32 16       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.f = load i32, ptr %i.e, align 16
  %i.g = and i32 %i.f, -65                        ; 2 uses
  store i32 %i.g, ptr %i.e, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.o = load i32, ptr %i.n, align 16             ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 16
  %i.r = add i32 %i.j, 1
  %i.s = add nsw i32 %i.d, -1
  %i.t = and i32 %i.r, %i.s
  store i32 %i.t, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i32 [ %i.q, %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = or i32 %i.g, 16
  store i32 %i.w, ptr %i.e, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, -1
  %i.aa = icmp eq i32 %i.u, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, -17
  store i32 %i.ad, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i20.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i20.i, label %pl011_read_rxdata.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr @_TRACE_PL011_READ_FIFO_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.af, 0
  br i1 %.not2.i.i, label %pl011_read_rxdata.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 32768
  %.not3.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not3.i.i, label %pl011_read_rxdata.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %i.u, i32 noundef range(i32 1, 17) %i.d) #4
  br label %pl011_read_rxdata.exit

pl011_read_rxdata.exit:                           ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ai = lshr i32 %i.m, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i32 %i.ai, ptr %i.aj, align 8
  tail call fastcc void @pl011_update(ptr noundef nonnull %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1208
  tail call void @qemu_chr_fe_accept_input(ptr noundef nonnull %i.ak) #4
  br label %.thread

bb.l:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.am = load i32, ptr %i.al, align 8
  br label %.thread

bb.m:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ao = load i32, ptr %i.an, align 16
  br label %.thread

bb.n:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %i.aq = load i32, ptr %i.ap, align 4
  br label %.thread

bb.o:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.as = load i32, ptr %i.ar, align 16
  br label %.thread

bb.p:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.au = load i32, ptr %i.at, align 4
  br label %.thread

bb.q:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.aw = load i32, ptr %i.av, align 4
  br label %.thread

bb.r:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.ay = load i32, ptr %i.ax, align 4
  br label %.thread

bb.s:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ba = load i32, ptr %i.az, align 8
  br label %.thread

bb.t:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.bc = load i32, ptr %i.bb, align 4
  br label %.thread

bb.u:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.be = load i32, ptr %i.bd, align 8
  br label %.thread

bb.v:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, %i.bg
  br label %.thread

bb.w:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bl = load i32, ptr %i.bk, align 16
  br label %.thread

bb.x:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.bn = load ptr, ptr %i.bm, align 16
  %i.bo = add i64 %1, -4064
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  br label %bb.aa

bb.y:                                             ; preds = %bb.a
  %i.bt = load i32, ptr @qemu_loglevel, align 4
  %i.bu = and i32 %i.bt, 2048
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.aa, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.bv = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i32 noundef %i.bv) #4
  br label %bb.aa

.thread:                                          ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %pl011_read_rxdata.exit
  %.0.ph.in = phi i32 [ %i.bl, %bb.w ], [ %i.bj, %bb.v ], [ %i.be, %bb.u ], [ %i.bc, %bb.t ], [ %i.ba, %bb.s ], [ %i.ay, %bb.r ], [ %i.aw, %bb.q ], [ %i.au, %bb.p ], [ %i.as, %bb.o ], [ %i.aq, %bb.n ], [ %i.ao, %bb.m ], [ %i.am, %bb.l ], [ %i.m, %pl011_read_rxdata.exit ] ; 2 uses
  %.0.ph = zext i32 %.0.ph.in to i64
  %i.bw = trunc nuw nsw i64 %i.a to i32
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.0 = phi i64 [ %i.bs, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ] ; 3 uses
  %i.bx = trunc nuw nsw i64 %.0 to i32            ; 2 uses
  %i.by = trunc i64 %i.a to i32                   ; 2 uses
  %i.bz = and i64 %i.a, 4294967295                ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, 19
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread, %bb.aa
  %i.cb = phi i64 [ %i.a, %.thread ], [ %i.bz, %bb.aa ] ; 2 uses
  %i.cc = phi i32 [ %i.bw, %.thread ], [ %i.by, %bb.aa ]
  %i.cd = phi i32 [ %.0.ph.in, %.thread ], [ %i.bx, %bb.aa ] ; 2 uses
  %.026 = phi i64 [ %.0.ph, %.thread ], [ %.0, %bb.aa ] ; 2 uses
  %i.ce = shl nuw nsw i64 1, %i.cb
  %i.cf = and i64 %i.ce, 188
  %.not.i.not = icmp eq i64 %i.cf, 0
  br i1 %.not.i.not, label %3, label %bb.ac

3:                                                ; preds = %bb.ab
  %4 = getelementptr inbounds nuw [8 x i8], ptr @pl011_regname.rname, i64 %i.cb
  %5 = load ptr, ptr %4, align 8
  br label %pl011_regname.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cg = phi i32 [ %i.cc, %bb.ab ], [ %i.by, %bb.aa ]
  %i.ch = phi i32 [ %i.cd, %bb.ab ], [ %i.bx, %bb.aa ]
  %.025 = phi i64 [ %.026, %bb.ab ], [ %.0, %bb.aa ]
  %i.ci = add i32 %i.cg, -1016
  %or.cond.i = icmp ult i32 %i.ci, 9
  %.str.26..str.27.i = select i1 %or.cond.i, ptr @.str.26, ptr @.str.27
  br label %pl011_regname.exit

pl011_regname.exit:                               ; preds = %3, %bb.ac
  %i.cj = phi i32 [ %i.cd, %3 ], [ %i.ch, %bb.ac ]
  %.024 = phi i64 [ %.026, %3 ], [ %.025, %bb.ac ]
  %.0.i = phi ptr [ %5, %3 ], [ %.str.26..str.27.i, %bb.ac ]
  %i.ck = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i22 = icmp eq i32 %i.ck, 0
  br i1 %.not.i22, label %trace_pl011_read.exit, label %bb.ad, !prof !7

bb.ad:                                            ; preds = %pl011_regname.exit
  %i.cl = load i16, ptr @_TRACE_PL011_READ_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.cl, 0
  br i1 %.not2.i, label %trace_pl011_read.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = load i32, ptr @qemu_loglevel, align 4
  %i.cn = and i32 %i.cm, 32768
  %.not3.i = icmp eq i32 %i.cn, 0
  br i1 %.not3.i, label %trace_pl011_read.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i64 noundef %1, i32 noundef %i.cj, ptr noundef %.0.i) #4
  br label %trace_pl011_read.exit

trace_pl011_read.exit:                            ; preds = %pl011_regname.exit, %bb.ad, %bb.ae, %bb.af
  ret i64 %.024
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pl011_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = trunc i64 %2 to i32                      ; 16 uses
  %i.d = lshr i64 %1, 2                           ; 3 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = and i64 %i.d, 4294967295                 ; 3 uses
  %i.g = icmp samesign ult i64 %i.f, 19
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %4 = shl nuw nsw i64 1, %i.f
  %5 = and i64 %4, 188
  %.not.i.a = icmp eq i64 %5, 0
  br i1 %.not.i.a, label %6, label %bb.c

6:                                                ; preds = %bb.b
  %7 = getelementptr inbounds nuw [8 x i8], ptr @pl011_regname.rname, i64 %i.f
  %8 = load ptr, ptr %7, align 8
  br label %pl011_regname.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = add i32 %i.e, -1016
  %or.cond.i = icmp ult i32 %i.h, 9
  %.str.26..str.27.i = select i1 %or.cond.i, ptr @.str.26, ptr @.str.27
  br label %pl011_regname.exit

pl011_regname.exit:                               ; preds = %6, %bb.c
  %.0.i = phi ptr [ %8, %6 ], [ %.str.26..str.27.i, %bb.c ]
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i50.a = icmp eq i32 %i.i, 0
  br i1 %.not.i50.a, label %trace_pl011_write.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %pl011_regname.exit
  %i.j = load i16, ptr @_TRACE_PL011_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.j, 0
  br i1 %.not2.i, label %trace_pl011_write.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not3.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i, label %trace_pl011_write.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, i64 noundef %1, i32 noundef %i.c, ptr noundef %.0.i) #4
  br label %trace_pl011_write.exit

trace_pl011_write.exit:                           ; preds = %pl011_regname.exit, %bb.d, %bb.e, %bb.f
  switch i64 %i.d, label %bb.ax [
    i64 0, label %bb.g
    i64 1, label %bb.q
    i64 6, label %pl011_trace_baudrate_change.exit
    i64 8, label %bb.r
    i64 9, label %bb.s
    i64 10, label %bb.z
    i64 11, label %bb.ag
    i64 12, label %bb.an
    i64 13, label %bb.ar
    i64 14, label %bb.as
    i64 17, label %bb.at
    i64 18, label %bb.au
  ]

bb.g:                                             ; preds = %trace_pl011_write.exit
  %i.m = trunc i64 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.m, ptr %i.a, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = and i32 %i.o, 1
  %.not.i51 = icmp eq i32 %i.p, 0
  br i1 %.not.i51, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1321 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !8, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 2048
  %.not9.i = icmp eq i32 %i.u, 0
  br i1 %.not9.i, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.31) #4
  %.pre.pre.i = load i32, ptr %i.n, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i = phi i32 [ %i.o, %bb.i ], [ %.pre.pre.i, %bb.j ]
  store i8 1, ptr %i.q, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.v = phi i32 [ %i.o, %bb.h ], [ %.pre.i, %bb.k ], [ %i.o, %bb.g ]
  %i.w = and i32 %i.v, 256
  %.not8.i = icmp eq i32 %i.w, 0
  br i1 %.not8.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 2048
  %.not10.i = icmp eq i32 %i.y, 0
  br i1 %.not10.i, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.aa = call i32 @qemu_chr_fe_write_all(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, i32 noundef 1) #4 ; 0 uses
  %.val.i.i = load i32, ptr %i.n, align 4
  %i.ab = and i32 %.val.i.i, 128
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %pl011_write_txdata.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i8, ptr %i.a, align 1
  %i.ad = zext i8 %i.ac to i32
  call fastcc void @pl011_fifo_rx_put(ptr noundef nonnull %0, i32 noundef range(i32 0, 1025) %i.ad)
  br label %pl011_write_txdata.exit

pl011_write_txdata.exit:                          ; preds = %bb.o, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = or i32 %i.af, 32
  store i32 %i.ag, ptr %i.ae, align 8
  call fastcc void @pl011_update(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %pl011_trace_baudrate_change.exit

bb.q:                                             ; preds = %trace_pl011_write.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i32 0, ptr %i.ah, align 8
  br label %pl011_trace_baudrate_change.exit

bb.r:                                             ; preds = %trace_pl011_write.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store i32 %i.c, ptr %i.ai, align 4
  br label %pl011_trace_baudrate_change.exit

bb.s:                                             ; preds = %trace_pl011_write.exit
  %i.aj = and i32 %i.c, 65535                     ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i32 %i.aj, ptr %i.ak, align 16
  %i.al = icmp eq i32 %i.aj, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.pre.i52 = load ptr, ptr %.phi.trans.insert.i, align 16
  %.phi.trans.insert5.i = getelementptr i8, ptr %.pre.i52, i64 40
  %.val.pre.i = load i64, ptr %.phi.trans.insert5.i, align 8 ; 4 uses
  br i1 %i.al, label %pl011_get_baudrate.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i64 %.val.pre.i, 0
  br i1 %.not.i.i.i, label %clock_get_hz.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = udiv i64 4294967296000000000, %.val.pre.i
  %i.an = trunc i64 %i.am to i32
  br label %clock_get_hz.exit.i.i

clock_get_hz.exit.i.i:                            ; preds = %bb.u, %bb.t
  %i.ao = phi i32 [ %i.an, %bb.u ], [ 0, %bb.t ]
  %i.ap = shl nuw nsw i32 %i.aj, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %i.ap
  %i.at = udiv i32 %i.ao, %i.as
  %i.au = shl i32 %i.at, 2
  br label %pl011_get_baudrate.exit.i

pl011_get_baudrate.exit.i:                        ; preds = %clock_get_hz.exit.i.i, %bb.s
  %.0.i.i = phi i32 [ %i.au, %clock_get_hz.exit.i.i ], [ 0, %bb.s ]
  %.not.i.i53 = icmp eq i64 %.val.pre.i, 0
  br i1 %.not.i.i53, label %clock_get_hz.exit.i, label %bb.v

bb.v:                                             ; preds = %pl011_get_baudrate.exit.i
  %i.av = udiv i64 4294967296000000000, %.val.pre.i
  %i.aw = and i64 %i.av, 4294967295
  br label %clock_get_hz.exit.i

clock_get_hz.exit.i:                              ; preds = %bb.v, %pl011_get_baudrate.exit.i
  %i.ax = phi i64 [ %i.aw, %bb.v ], [ 0, %pl011_get_baudrate.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i4.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i4.i, label %pl011_trace_baudrate_change.exit, label %bb.w, !prof !7

bb.w:                                             ; preds = %clock_get_hz.exit.i
  %i.bb = load i16, ptr @_TRACE_PL011_BAUDRATE_CHANGE_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not4.i.i, label %pl011_trace_baudrate_change.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = load i32, ptr @qemu_loglevel, align 4
  %i.bd = and i32 %i.bc, 32768
  %.not5.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not5.i.i, label %pl011_trace_baudrate_change.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.35, i32 noundef %.0.i.i, i64 noundef range(i64 0, 4294967296) %i.ax, i32 noundef %i.aj, i32 noundef %i.az) #4
  br label %pl011_trace_baudrate_change.exit

bb.z:                                             ; preds = %trace_pl011_write.exit
  %i.be = and i32 %i.c, 63                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bh = load i32, ptr %i.bg, align 16           ; 3 uses
  %i.bi = icmp eq i32 %i.bh, 0
  %.phi.trans.insert.i54 = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.pre.i55 = load ptr, ptr %.phi.trans.insert.i54, align 16
  %.phi.trans.insert5.i56 = getelementptr i8, ptr %.pre.i55, i64 40
  %.val.pre.i57 = load i64, ptr %.phi.trans.insert5.i56, align 8 ; 4 uses
  br i1 %i.bi, label %pl011_get_baudrate.exit.i60, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i58 = icmp eq i64 %.val.pre.i57, 0
  br i1 %.not.i.i.i58, label %clock_get_hz.exit.i.i59, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = udiv i64 4294967296000000000, %.val.pre.i57
  %i.bk = trunc i64 %i.bj to i32
  br label %clock_get_hz.exit.i.i59

clock_get_hz.exit.i.i59:                          ; preds = %bb.ab, %bb.aa
  %i.bl = phi i32 [ %i.bk, %bb.ab ], [ 0, %bb.aa ]
  %i.bm = shl i32 %i.bh, 6
  %i.bn = or disjoint i32 %i.bm, %i.be
  %i.bo = udiv i32 %i.bl, %i.bn
  %i.bp = shl i32 %i.bo, 2
  br label %pl011_get_baudrate.exit.i60

pl011_get_baudrate.exit.i60:                      ; preds = %clock_get_hz.exit.i.i59, %bb.z
  %.0.i.i61 = phi i32 [ %i.bp, %clock_get_hz.exit.i.i59 ], [ 0, %bb.z ]
  %.not.i.i62 = icmp eq i64 %.val.pre.i57, 0
  br i1 %.not.i.i62, label %clock_get_hz.exit.i63, label %bb.ac

bb.ac:                                            ; preds = %pl011_get_baudrate.exit.i60
  %i.bq = udiv i64 4294967296000000000, %.val.pre.i57
  %i.br = and i64 %i.bq, 4294967295
end_hunk_0
