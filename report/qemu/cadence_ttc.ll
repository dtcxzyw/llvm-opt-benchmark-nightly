Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cadence_ttc?download=true
inline.NumInlined: 23
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cadence_ttc_read:bb.a
  %i.y = load i32, ptr %i.x, align 8
  store i32 0, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @qemu_set_irq(ptr noundef %i.aa, i32 noundef 0) #6
  br label %cadence_ttc_read_imp.exit

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ac = load i32, ptr %i.ab, align 4
  br label %cadence_ttc_read_imp.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  br label %cadence_ttc_read_imp.exit

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ag = load i32, ptr %i.af, align 4
  br label %cadence_ttc_read_imp.exit

cadence_ttc_read_imp.exit:                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.ag, %bb.l ], [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.t, %bb.g ], [ %i.w, %bb.h ], [ %i.y, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ], [ 0, %bb.a ]
  %i.ah = zext i32 %.0.i to i64
  ret i64 %i.ah
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_ttc_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = lshr i64 %1, 2
  %i.b = urem i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.b ; 14 uses
  tail call fastcc void @cadence_timer_sync(ptr noundef nonnull %i.d)
  switch i64 %1, label %bb.m [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %bb.b
    i64 12, label %bb.c
    i64 16, label %bb.c
    i64 20, label %bb.c
    i64 36, label %bb.f
    i64 40, label %bb.f
    i64 44, label %bb.f
    i64 48, label %bb.g
    i64 52, label %bb.g
    i64 56, label %bb.g
    i64 60, label %bb.h
    i64 64, label %bb.h
    i64 68, label %bb.h
    i64 72, label %bb.i
    i64 76, label %bb.i
    i64 80, label %bb.i
    i64 84, label %bb.l
    i64 88, label %bb.l
    i64 92, label %bb.l
    i64 96, label %bb.j
    i64 100, label %bb.j
    i64 104, label %bb.j
    i64 108, label %bb.k
    i64 112, label %bb.k
    i64 116, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = trunc i64 %2 to i32
  %i.f = and i32 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.f, ptr %i.g, align 4
  br label %bb.l

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.h = and i64 %2, 16
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %i.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = trunc i64 %2 to i32
  %i.k = and i32 %i.j, 47
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.k, ptr %i.l, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.m = trunc i64 %2 to i16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i16 %i.m, ptr %i.n, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.o = trunc i64 %2 to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  store i16 %i.o, ptr %i.p, align 2
  br label %bb.l

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.q = trunc i64 %2 to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i16 %i.q, ptr %i.r, align 2
  br label %bb.l

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.s = trunc i64 %2 to i16
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  store i16 %i.s, ptr %i.t, align 2
  br label %bb.l

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.u = trunc i64 %2 to i32
  %i.v = and i32 %i.u, 63
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.v, ptr %i.w, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.x = trunc i64 %2 to i32
  %i.y = and i32 %i.x, 7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.y, ptr %i.z, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  tail call fastcc void @cadence_timer_run(ptr noundef nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, %i.ad
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  tail call void @qemu_set_irq(ptr noundef %i.ab, i32 noundef %i.ai) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @cadence_timer_sync(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i16, ptr %i.d, align 8
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 16
  %i.h = add nuw nsw i64 %i.g, 65536
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.h, %bb.b ], [ 4294967296, %bb.a ] ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #6 ; 3 uses
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %.not51 = icmp eq i32 %i.n, 0
  %i.o = icmp eq i64 %i.k, %i.l
  %or.cond = select i1 %.not51, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.m, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.p = sub i64 %i.l, %i.k                       ; 7 uses
  %i.q = icmp ugt i64 %i.p, 8589934591
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.r = udiv i64 %i.p, 1000
  %i.s = icmp ugt i64 %i.p, 8589934591999
  br i1 %i.s, label %.lr.ph.i.1, label %._crit_edge.i

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.t = udiv i64 %i.p, 1000000
  %i.u = icmp ugt i64 %i.p, 8589934591999999
  br i1 %i.u, label %.lr.ph.i.2, label %._crit_edge.i

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.v = udiv i64 %i.p, 1000000000
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.e
  %.017.lcssa.i = phi i64 [ 1000000000, %bb.e ], [ 1000000, %.lr.ph.i ], [ 1000, %.lr.ph.i.1 ], [ 1, %.lr.ph.i.2 ] ; 3 uses
  %.0.lcssa.i = phi i64 [ %i.p, %bb.e ], [ %i.r, %.lr.ph.i ], [ %i.t, %.lr.ph.i.1 ], [ %i.v, %.lr.ph.i.2 ]
  %i.w = shl i64 %.0.lcssa.i, 16                  ; 3 uses
  %i.x = icmp ugt i64 %i.w, 8589934591
  %i.y = icmp samesign ugt i64 %.017.lcssa.i, 1
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph25.i, label %cadence_timer_get_steps.exit

.lr.ph25.i:                                       ; preds = %._crit_edge.i, %.lr.ph25.i
  %.123.i = phi i64 [ %i.aa, %.lr.ph25.i ], [ %i.w, %._crit_edge.i ] ; 2 uses
  %.11822.i = phi i64 [ %i.ab, %.lr.ph25.i ], [ %.017.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.aa = udiv i64 %.123.i, 1000                  ; 2 uses
  %i.ab = udiv i64 %.11822.i, 1000                ; 2 uses
  %i.ac = icmp ugt i64 %.123.i, 8589934591999
  %i.ad = icmp samesign ugt i64 %.11822.i, 1999
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph25.i, label %cadence_timer_get_steps.exit, !llvm.loop !7

cadence_timer_get_steps.exit:                     ; preds = %.lr.ph25.i, %._crit_edge.i
  %.118.lcssa.i = phi i64 [ %.017.lcssa.i, %._crit_edge.i ], [ %i.ab, %.lr.ph25.i ]
  %.1.lcssa.i = phi i64 [ %i.w, %._crit_edge.i ], [ %i.aa, %.lr.ph25.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %.1.lcssa.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = and i32 %i.ak, 1
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = lshr i32 %i.ak, 1
  %i.an = and i32 %i.am, 15
  %i.ao = add nuw nsw i32 %i.an, 1
  %narrow.i = select i1 %.not.i, i32 0, i32 %i.ao
  %i.ap = zext nneg i32 %narrow.i to i64
  %.2.i = lshr i64 %i.ai, %i.ap
  %i.aq = udiv i64 %.2.i, %.118.lcssa.i           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64                   ; 20 uses
  %i.au = load i32, ptr %i.a, align 8             ; 2 uses
  %i.av = and i32 %i.au, 4
  %.not52 = icmp eq i32 %i.av, 0
  %i.aw = sub i64 0, %i.aq
  %i.ax = select i1 %.not52, i64 %i.aq, i64 %i.aw
  %i.ay = add i64 %i.ax, %i.at                    ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ba = icmp sgt i64 %i.ay, %i.at
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %.fr = freeze i1 %i.ba
  %i.bc = load i16, ptr %i.az, align 2
  %i.bd = zext i16 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 16               ; 9 uses
  %i.bf = icmp samesign ugt i64 %i.be, %i.i       ; 2 uses
  br i1 %.fr, label %cadence_timer_get_steps.exit.split.us.preheader, label %cadence_timer_get_steps.exit.split.preheader

cadence_timer_get_steps.exit.split.preheader:     ; preds = %cadence_timer_get_steps.exit
  br i1 %i.bf, label %cadence_timer_get_steps.exit.split.1, label %is_between.exit.thread

cadence_timer_get_steps.exit.split.us.preheader:  ; preds = %cadence_timer_get_steps.exit
  br i1 %i.bf, label %cadence_timer_get_steps.exit.split.us.1, label %is_between.exit.us

is_between.exit.us:                               ; preds = %cadence_timer_get_steps.exit.split.us.preheader
  %i.bg = icmp samesign ule i64 %i.be, %i.at
  %i.bh = icmp sgt i64 %i.be, %i.ay
  %.not80.us = or i1 %i.bg, %i.bh
  br i1 %.not80.us, label %is_between.exit61.us, label %bb.f

is_between.exit61.us:                             ; preds = %is_between.exit.us
  %i.bi = add nuw nsw i64 %i.be, %i.i             ; 2 uses
  %i.bj = icmp samesign ule i64 %i.bi, %i.at
  %i.bk = icmp sgt i64 %i.bi, %i.ay
  %.not83.us = or i1 %i.bj, %i.bk
  br i1 %.not83.us, label %is_between.exit64.us, label %bb.f

is_between.exit64.us:                             ; preds = %is_between.exit61.us
  %i.bl = sub nsw i64 %i.be, %i.i                 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, %i.at
  %i.bn = icmp sle i64 %i.bl, %i.ay
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %cadence_timer_get_steps.exit.split.us.1

bb.f:                                             ; preds = %is_between.exit64.us, %is_between.exit61.us, %is_between.exit.us
  %i.bp = load i32, ptr %i.bb, align 8
  %i.bq = or i32 %i.bp, 2
  store i32 %i.bq, ptr %i.bb, align 8
  br label %cadence_timer_get_steps.exit.split.us.1

cadence_timer_get_steps.exit.split.us.1:          ; preds = %bb.f, %is_between.exit64.us, %cadence_timer_get_steps.exit.split.us.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bs = load i16, ptr %i.br, align 4
  %i.bt = zext i16 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 16               ; 5 uses
  %i.bv = icmp samesign ugt i64 %i.bu, %i.i
  br i1 %i.bv, label %cadence_timer_get_steps.exit.split.us.2, label %is_between.exit.us.1

is_between.exit.us.1:                             ; preds = %cadence_timer_get_steps.exit.split.us.1
  %i.bw = icmp samesign ule i64 %i.bu, %i.at
  %i.bx = icmp sgt i64 %i.bu, %i.ay
  %.not80.us.1 = or i1 %i.bw, %i.bx
  br i1 %.not80.us.1, label %is_between.exit61.us.1, label %bb.g

is_between.exit61.us.1:                           ; preds = %is_between.exit.us.1
  %i.by = add nuw nsw i64 %i.bu, %i.i             ; 2 uses
  %i.bz = icmp samesign ule i64 %i.by, %i.at
  %i.ca = icmp sgt i64 %i.by, %i.ay
  %.not83.us.1 = or i1 %i.bz, %i.ca
  br i1 %.not83.us.1, label %is_between.exit64.us.1, label %bb.g

is_between.exit64.us.1:                           ; preds = %is_between.exit61.us.1
  %i.cb = sub nsw i64 %i.bu, %i.i                 ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, %i.at
  %i.cd = icmp sle i64 %i.cb, %i.ay
  %i.ce = and i1 %i.cc, %i.cd
  br i1 %i.ce, label %bb.g, label %cadence_timer_get_steps.exit.split.us.2

bb.g:                                             ; preds = %is_between.exit64.us.1, %is_between.exit61.us.1, %is_between.exit.us.1
  %i.cf = load i32, ptr %i.bb, align 8
  %i.cg = or i32 %i.cf, 4
  store i32 %i.cg, ptr %i.bb, align 8
  br label %cadence_timer_get_steps.exit.split.us.2

cadence_timer_get_steps.exit.split.us.2:          ; preds = %bb.g, %is_between.exit64.us.1, %cadence_timer_get_steps.exit.split.us.1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = zext i16 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 16               ; 5 uses
  %i.cl = icmp samesign ugt i64 %i.ck, %i.i
  br i1 %i.cl, label %.split.us, label %is_between.exit.us.2

is_between.exit.us.2:                             ; preds = %cadence_timer_get_steps.exit.split.us.2
  %i.cm = icmp samesign ule i64 %i.ck, %i.at
  %i.cn = icmp sgt i64 %i.ck, %i.ay
  %.not80.us.2 = or i1 %i.cm, %i.cn
  br i1 %.not80.us.2, label %is_between.exit61.us.2, label %.split.us.sink.split

is_between.exit61.us.2:                           ; preds = %is_between.exit.us.2
  %i.co = add nuw nsw i64 %i.ck, %i.i             ; 2 uses
  %i.cp = icmp samesign ule i64 %i.co, %i.at
  %i.cq = icmp sgt i64 %i.co, %i.ay
  %.not83.us.2 = or i1 %i.cp, %i.cq
  br i1 %.not83.us.2, label %is_between.exit64.us.2, label %.split.us.sink.split

is_between.exit64.us.2:                           ; preds = %is_between.exit61.us.2
  %i.cr = sub nsw i64 %i.ck, %i.i                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, %i.at
  %i.ct = icmp sle i64 %i.cr, %i.ay
  %i.cu = and i1 %i.cs, %i.ct
  br i1 %i.cu, label %.split.us.sink.split, label %.split.us

is_between.exit.thread:                           ; preds = %cadence_timer_get_steps.exit.split.preheader
  %i.cv = icmp samesign uge i64 %i.be, %i.at
  %i.cw = icmp slt i64 %i.be, %i.ay
  %.not74 = or i1 %i.cv, %i.cw
  br i1 %.not74, label %is_between.exit61.thread, label %bb.h

is_between.exit61.thread:                         ; preds = %is_between.exit.thread
  %i.cx = add nuw nsw i64 %i.be, %i.i             ; 2 uses
  %i.cy = icmp samesign uge i64 %i.cx, %i.at
  %i.cz = icmp slt i64 %i.cx, %i.ay
  %.not77 = or i1 %i.cy, %i.cz
  br i1 %.not77, label %is_between.exit64, label %bb.h

is_between.exit64:                                ; preds = %is_between.exit61.thread
  %i.da = sub nsw i64 %i.be, %i.i                 ; 2 uses
  %i.db = icmp slt i64 %i.da, %i.at
  %i.dc = icmp sge i64 %i.da, %i.ay
  %i.dd = and i1 %i.db, %i.dc
  br i1 %i.dd, label %bb.h, label %cadence_timer_get_steps.exit.split.1

bb.h:                                             ; preds = %is_between.exit61.thread, %is_between.exit.thread, %is_between.exit64
  %i.de = load i32, ptr %i.bb, align 8
  %i.df = or i32 %i.de, 2
  store i32 %i.df, ptr %i.bb, align 8
  br label %cadence_timer_get_steps.exit.split.1

cadence_timer_get_steps.exit.split.1:             ; preds = %is_between.exit64, %bb.h, %cadence_timer_get_steps.exit.split.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = zext i16 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 16               ; 5 uses
  %i.dk = icmp samesign ugt i64 %i.dj, %i.i
  br i1 %i.dk, label %cadence_timer_get_steps.exit.split.2, label %is_between.exit.thread.1

is_between.exit.thread.1:                         ; preds = %cadence_timer_get_steps.exit.split.1
  %i.dl = icmp samesign uge i64 %i.dj, %i.at
  %i.dm = icmp slt i64 %i.dj, %i.ay
  %.not74.1 = or i1 %i.dl, %i.dm
  br i1 %.not74.1, label %is_between.exit61.thread.1, label %bb.i

is_between.exit61.thread.1:                       ; preds = %is_between.exit.thread.1
  %i.dn = add nuw nsw i64 %i.dj, %i.i             ; 2 uses
  %i.do = icmp samesign uge i64 %i.dn, %i.at
  %i.dp = icmp slt i64 %i.dn, %i.ay
  %.not77.1 = or i1 %i.do, %i.dp
  br i1 %.not77.1, label %is_between.exit64.1, label %bb.i

is_between.exit64.1:                              ; preds = %is_between.exit61.thread.1
  %i.dq = sub nsw i64 %i.dj, %i.i                 ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %i.at
  %i.ds = icmp sge i64 %i.dq, %i.ay
  %i.dt = and i1 %i.dr, %i.ds
  br i1 %i.dt, label %bb.i, label %cadence_timer_get_steps.exit.split.2

bb.i:                                             ; preds = %is_between.exit64.1, %is_between.exit61.thread.1, %is_between.exit.thread.1
  %i.du = load i32, ptr %i.bb, align 8
  %i.dv = or i32 %i.du, 4
  store i32 %i.dv, ptr %i.bb, align 8
  br label %cadence_timer_get_steps.exit.split.2

cadence_timer_get_steps.exit.split.2:             ; preds = %bb.i, %is_between.exit64.1, %cadence_timer_get_steps.exit.split.1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = zext i16 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 16               ; 5 uses
  %i.ea = icmp samesign ugt i64 %i.dz, %i.i
  br i1 %i.ea, label %.split.us, label %is_between.exit.thread.2

is_between.exit.thread.2:                         ; preds = %cadence_timer_get_steps.exit.split.2
  %i.eb = icmp samesign uge i64 %i.dz, %i.at
  %i.ec = icmp slt i64 %i.dz, %i.ay
  %.not74.2 = or i1 %i.eb, %i.ec
  br i1 %.not74.2, label %is_between.exit61.thread.2, label %.split.us.sink.split

is_between.exit61.thread.2:                       ; preds = %is_between.exit.thread.2
  %i.ed = add nuw nsw i64 %i.dz, %i.i             ; 2 uses
  %i.ee = icmp samesign uge i64 %i.ed, %i.at
  %i.ef = icmp slt i64 %i.ed, %i.ay
  %.not77.2 = or i1 %i.ee, %i.ef
  br i1 %.not77.2, label %is_between.exit64.2, label %.split.us.sink.split

is_between.exit64.2:                              ; preds = %is_between.exit61.thread.2
  %i.eg = sub nsw i64 %i.dz, %i.i                 ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.at
  %i.ei = icmp sge i64 %i.eg, %i.ay
  %i.ej = and i1 %i.eh, %i.ei
  br i1 %i.ej, label %.split.us.sink.split, label %.split.us

.split.us.sink.split:                             ; preds = %is_between.exit.thread.2, %is_between.exit61.thread.2, %is_between.exit64.2, %is_between.exit.us.2, %is_between.exit61.us.2, %is_between.exit64.us.2
  %i.ek = load i32, ptr %i.bb, align 8
  %i.el = or i32 %i.ek, 8
  store i32 %i.el, ptr %i.bb, align 8
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %cadence_timer_get_steps.exit.split.2, %is_between.exit64.2, %cadence_timer_get_steps.exit.split.us.2, %is_between.exit64.us.2
  %i.em = icmp sgt i64 %i.ay, -1
  %.not53 = icmp slt i64 %i.ay, %i.i
  %or.cond58 = select i1 %i.em, i1 %.not53, i1 false
  br i1 %or.cond58, label %.preheader, label %bb.j

bb.j:                                             ; preds = %.split.us
  %i.en = and i32 %i.au, 2
  %.not54 = icmp eq i32 %i.en, 0
  %i.eo = select i1 %.not54, i32 16, i32 1
  %i.ep = load i32, ptr %i.bb, align 8
  %i.eq = or i32 %i.ep, %i.eo
  store i32 %i.eq, ptr %i.bb, align 8
  br label %.preheader

.preheader:                                       ; preds = %.split.us, %bb.j
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.k
  %.0 = phi i64 [ %i.es, %bb.k ], [ %i.ay, %.preheader ] ; 3 uses
  %i.er = icmp slt i64 %.0, 0
  %i.es = add nsw i64 %.0, %i.i
  br i1 %i.er, label %bb.k, label %bb.l, !llvm.loop !8

bb.l:                                             ; preds = %bb.k
  %i.et = urem i64 %.0, %i.i
  %i.eu = trunc nuw i64 %i.et to i32
  store i32 %i.eu, ptr %i.ar, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = load i32, ptr %i.bb, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = and i32 %i.ez, %i.ex
  %i.fb = icmp ne i32 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  tail call void @qemu_set_irq(ptr noundef %i.ew, i32 noundef %i.fc) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @cadence_timer_run(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.cadence_timer_run) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.f = and i32 %i.d, 2
  %.not25 = icmp eq i32 %i.f, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i16, ptr %i.g, align 8
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = add nuw nsw i64 %i.j, 65536
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = phi i64 [ %i.k, %bb.f ], [ 4294967296, %bb.e ]
  %i.m = and i32 %i.d, 4
  %.not26 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not26, i64 %i.l, i64 -1      ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64                     ; 10 uses
  %i.s = load i16, ptr %i.o, align 2
  %i.t = zext i16 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 16                 ; 5 uses
  %i.v = icmp sgt i64 %i.n, %i.r
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = icmp samesign ugt i64 %i.u, %i.r
  %i.x = icmp samesign ule i64 %i.u, %i.n
  %i.y = and i1 %i.w, %i.x
  br label %is_between.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp samesign ult i64 %i.u, %i.r
  %i.aa = icmp sge i64 %i.u, %i.n
  %i.ab = and i1 %i.z, %i.aa
  br label %is_between.exit

is_between.exit:                                  ; preds = %bb.h, %bb.i
  %.0.in.i = phi i1 [ %i.y, %bb.h ], [ %i.ab, %bb.i ]
  %spec.select = select i1 %.0.in.i, i64 %i.u, i64 %i.n ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = zext i16 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 16               ; 5 uses
  %i.ag = icmp sgt i64 %spec.select, %i.r
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %is_between.exit
  %i.ah = icmp samesign ult i64 %i.af, %i.r
  %i.ai = icmp sge i64 %i.af, %spec.select
  %i.aj = and i1 %i.ah, %i.ai
  br label %is_between.exit.1

bb.k:                                             ; preds = %is_between.exit
  %i.ak = icmp samesign ugt i64 %i.af, %i.r
  %i.al = icmp samesign ule i64 %i.af, %spec.select
  %i.am = and i1 %i.ak, %i.al
  br label %is_between.exit.1

is_between.exit.1:                                ; preds = %bb.k, %bb.j
  %.0.in.i.1 = phi i1 [ %i.am, %bb.k ], [ %i.aj, %bb.j ]
  %spec.select.1 = select i1 %.0.in.i.1, i64 %i.af, i64 %spec.select ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16               ; 5 uses
  %i.ar = icmp sgt i64 %spec.select.1, %i.r
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %is_between.exit.1
  %i.as = icmp samesign ult i64 %i.aq, %i.r
  %i.at = icmp sge i64 %i.aq, %spec.select.1
  %i.au = and i1 %i.as, %i.at
  br label %cadence_timer_get_ns.exit

bb.m:                                             ; preds = %is_between.exit.1
  %i.av = icmp samesign ugt i64 %i.aq, %i.r
  %i.aw = icmp samesign ule i64 %i.aq, %spec.select.1
  %i.ax = and i1 %i.av, %i.aw
  br label %cadence_timer_get_ns.exit

cadence_timer_get_ns.exit:                        ; preds = %bb.l, %bb.m
  %.0.in.i.2 = phi i1 [ %i.ax, %bb.m ], [ %i.au, %bb.l ]
  %spec.select.2 = select i1 %.0.in.i.2, i64 %i.aq, i64 %spec.select.1
  %i.ay = sub nsw i64 %spec.select.2, %i.r
  %i.az = tail call i64 @llvm.abs.i64(i64 %i.ay, i1 true)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 1
  %.not.i = icmp eq i32 %i.bf, 0
  %i.bg = lshr i32 %i.be, 1
  %i.bh = and i32 %i.bg, 15
  %i.bi = xor i32 %i.bh, 15
  %narrow.i = select i1 %.not.i, i32 16, i32 %i.bi
  %.pn.i = zext nneg i32 %narrow.i to i64
  %i.bj = mul nuw nsw i64 %i.az, 1000000000
  %.0.i28 = lshr i64 %i.bj, %.pn.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = udiv i64 %.0.i28, %i.bm
  %i.bo = add i64 %i.bn, %i.bb
  tail call void @timer_mod(ptr noundef %i.bc, i64 noundef %i.bo) #6
  br label %bb.n

bb.n:                                             ; preds = %cadence_timer_get_ns.exit, %bb.d
  ret void
}

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_ttc_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @__func__.CADENCE_TTC) #6 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.b, i8 noundef 0, i64 noundef 72, i1 noundef false) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store i32 133000000, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i32 33, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #8 ; 2 uses
  tail call void @timer_init_full(ptr noundef %i.e, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @cadence_timer_tick, ptr noundef nonnull %i.b) #6
  store ptr %i.e, ptr %i.b, align 8
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  tail call void @sysbus_init_irq(ptr noundef %i.f, ptr noundef nonnull %i.g) #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1160 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 noundef 0, i64 noundef 72, i1 noundef false) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store i32 133000000, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  store i32 33, ptr %i.j, align 8
  %i.k = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #8 ; 2 uses
  tail call void @timer_init_full(ptr noundef %i.k, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @cadence_timer_tick, ptr noundef nonnull %i.h) #6
  store ptr %i.k, ptr %i.h, align 8
  %i.l = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  tail call void @sysbus_init_irq(ptr noundef %i.l, ptr noundef nonnull %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1232 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, i8 noundef 0, i64 noundef 72, i1 noundef false) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1240
  store i32 133000000, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  store i32 33, ptr %i.p, align 8
  %i.q = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #8 ; 2 uses
  tail call void @timer_init_full(ptr noundef %i.q, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @cadence_timer_tick, ptr noundef nonnull %i.n) #6
  store ptr %i.q, ptr %i.n, align 8
  %i.r = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  tail call void @sysbus_init_irq(ptr noundef %i.r, ptr noundef nonnull %i.s) #6
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cadence_timer_post_load(ptr nofree noundef captures(none) initializes((56, 60)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.a, align 8
  tail call fastcc void @cadence_timer_sync(ptr noundef %0)
  tail call fastcc void @cadence_timer_run(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, %i.e
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  tail call void @qemu_set_irq(ptr noundef %i.c, i32 noundef %i.j) #6
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cadence_timer_pre_save(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  tail call fastcc void @cadence_timer_sync(ptr noundef %0)
  ret i32 0
}

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_timer_tick(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  tail call fastcc void @cadence_timer_sync(ptr noundef %0)
  tail call fastcc void @cadence_timer_run(ptr noundef %0)
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !9}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
