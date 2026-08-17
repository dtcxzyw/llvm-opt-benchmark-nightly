inline.NumInlined: 1324
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 80
begin_hunk_0_@cirrus_vga_ioport_write:bb.a
    i8 4, label %bb.s
    i8 6, label %bb.u
    i8 16, label %bb.x
    i8 48, label %bb.x
    i8 80, label %bb.x
    i8 112, label %bb.x
    i8 -112, label %bb.x
    i8 -80, label %bb.x
    i8 -48, label %bb.x
    i8 -16, label %bb.x
    i8 17, label %bb.y
    i8 49, label %bb.y
    i8 81, label %bb.y
    i8 113, label %bb.y
    i8 -111, label %bb.y
    i8 -79, label %bb.y
    i8 -47, label %bb.y
    i8 -15, label %bb.y
    i8 7, label %bb.z
    i8 8, label %bb.aa
    i8 9, label %bb.aa
    i8 10, label %bb.aa
    i8 11, label %bb.aa
    i8 12, label %bb.aa
    i8 13, label %bb.aa
    i8 14, label %bb.aa
    i8 15, label %bb.aa
    i8 19, label %bb.aa
    i8 20, label %bb.aa
    i8 21, label %bb.aa
    i8 22, label %bb.aa
    i8 24, label %bb.aa
    i8 25, label %bb.aa
    i8 26, label %bb.aa
    i8 27, label %bb.aa
    i8 28, label %bb.aa
    i8 29, label %bb.aa
    i8 30, label %bb.aa
    i8 31, label %bb.aa
    i8 18, label %bb.ab
    i8 23, label %bb.ac
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %i.av = zext nneg i8 %i.au to i64               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @sr_mask, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = trunc i64 %2 to i8
  %i.az = and i8 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 593
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av
  store i8 %i.az, ptr %i.bb, align 1
  %i.bc = icmp eq i8 %i.au, 1
  br i1 %i.bc, label %bb.t, label %cirrus_vga_write_sr.exit

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 68072
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull %0) #14, !inline_history !14
  br label %cirrus_vga_write_sr.exit

bb.u:                                             ; preds = %bb.r
  %i.bf = and i32 %i.d, 23
  %i.bg = icmp eq i32 %i.bf, 18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 599 ; 2 uses
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 18, ptr %i.bh, align 1
  br label %cirrus_vga_write_sr.exit

bb.w:                                             ; preds = %bb.u
  store i8 15, ptr %i.bh, align 1
  br label %cirrus_vga_write_sr.exit

bb.x:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %i.bi = trunc i64 %2 to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 609
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = shl i32 %i.d, 3
  %i.bl = lshr i8 %i.au, 5
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store i32 %i.bn, ptr %i.bo, align 8
  br label %cirrus_vga_write_sr.exit

bb.y:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %i.bp = trunc i64 %2 to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 610
  store i8 %i.bp, ptr %i.bq, align 2
  %i.br = shl i32 %i.d, 3
  %i.bs = lshr i8 %i.au, 5
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3020
  store i32 %i.bu, ptr %i.bv, align 4
  br label %cirrus_vga_write_sr.exit

bb.z:                                             ; preds = %bb.r
  tail call fastcc void @cirrus_update_memory_access(ptr noundef nonnull %0)
  %.pre.i = load i8, ptr %i.at, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %i.bw = phi i8 [ %.pre.i, %bb.z ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ], [ %i.au, %bb.r ]
  %i.bx = trunc i64 %2 to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 593
  %i.bz = zext i8 %i.bw to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  store i8 %i.bx, ptr %i.ca, align 1
  br label %cirrus_vga_write_sr.exit

bb.ab:                                            ; preds = %bb.r
  %i.cb = trunc i64 %2 to i8                      ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 611
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2705
  %i.ce = and i8 %i.cb, 1
  store i8 %i.ce, ptr %i.cd, align 1
  br label %cirrus_vga_write_sr.exit

bb.ac:                                            ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = and i8 %i.cg, 56
  %i.ci = trunc i64 %2 to i8
  %i.cj = and i8 %i.ci, -57
  %i.ck = or disjoint i8 %i.ch, %i.cj
  store i8 %i.ck, ptr %i.cf, align 8
  tail call fastcc void @cirrus_update_memory_access(ptr noundef nonnull %0)
  br label %cirrus_vga_write_sr.exit

bb.ad:                                            ; preds = %bb.r
  %i.cl = load i32, ptr @qemu_loglevel, align 4
  %i.cm = and i32 %i.cl, 2048
  %.not.i63 = icmp eq i32 %i.cm, 0
  br i1 %.not.i63, label %cirrus_vga_write_sr.exit, label %bb.ae, !prof !7

bb.ae:                                            ; preds = %bb.ad
  %i.cn = zext i8 %i.au to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.42, i32 noundef %i.cn, i32 noundef %i.d) #14
  br label %cirrus_vga_write_sr.exit

bb.af:                                            ; preds = %trace_vga_cirrus_write_io.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 70602 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = icmp eq i8 %i.cp, 4
  br i1 %i.cq, label %bb.ag, label %cirrus_write_hidden_dac.exit

bb.ag:                                            ; preds = %bb.af
  %i.cr = trunc i64 %2 to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 70603
  store i8 %i.cr, ptr %i.cs, align 1
  br label %cirrus_write_hidden_dac.exit

cirrus_write_hidden_dac.exit:                     ; preds = %bb.af, %bb.ag
  store i8 0, ptr %i.co, align 2
  br label %cirrus_vga_write_sr.exit

bb.ah:                                            ; preds = %trace_vga_cirrus_write_io.exit
  %i.ct = trunc i64 %2 to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1651
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1650
  store i8 0, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1649
  store i8 3, ptr %i.cw, align 1
  br label %cirrus_vga_write_sr.exit

bb.ai:                                            ; preds = %trace_vga_cirrus_write_io.exit
  %i.cx = trunc i64 %2 to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i8 %i.cx, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1650
  store i8 0, ptr %i.cz, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1649
  store i8 0, ptr %i.da, align 1
  br label %cirrus_vga_write_sr.exit

bb.aj:                                            ; preds = %trace_vga_cirrus_write_io.exit
  %i.db = trunc i64 %2 to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1653 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1650 ; 3 uses
  %i.de = load i8, ptr %i.dd, align 2             ; 2 uses
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df
  store i8 %i.db, ptr %i.dg, align 1
  %i.dh = add i8 %i.de, 1                         ; 2 uses
  store i8 %i.dh, ptr %i.dd, align 2
  %i.di = icmp eq i8 %i.dh, 3
  br i1 %i.di, label %bb.ak, label %cirrus_vga_write_sr.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 611
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = and i8 %i.dk, 2
  %.not.i64 = icmp eq i8 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1652 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 4             ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %5 = zext i8 %i.dn to i64
  %6 = mul nuw nsw i64 %5, 3
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 70620
  %9 = and i8 %i.dn, 15
  %narrow.i = mul nuw nsw i8 %9, 3
  %10 = zext nneg i8 %narrow.i to i64
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10
  %.sink13.i = select i1 %.not.i64, ptr %7, ptr %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sink13.i, ptr noundef nonnull align 1 dereferenceable(3) %i.dc, i64 noundef 3, i1 noundef false) #14
  store i8 0, ptr %i.dd, align 2
  %12 = add i8 %i.dn, 1
  store i8 %12, ptr %i.dm, align 4
  br label %cirrus_vga_write_sr.exit

bb.al:                                            ; preds = %trace_vga_cirrus_write_io.exit
  %i.do = trunc i64 %2 to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1105
  store i8 %i.do, ptr %i.dp, align 1
  br label %cirrus_vga_write_sr.exit

bb.am:                                            ; preds = %trace_vga_cirrus_write_io.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1105
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  tail call fastcc void @cirrus_vga_write_gr(ptr noundef %0, i32 noundef %i.ds, i32 noundef %i.d)
  br label %cirrus_vga_write_sr.exit

bb.an:                                            ; preds = %trace_vga_cirrus_write_io.exit, %trace_vga_cirrus_write_io.exit
  %i.dt = trunc i64 %2 to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i8 %i.dt, ptr %i.du, align 4
  br label %cirrus_vga_write_sr.exit

bb.ao:                                            ; preds = %trace_vga_cirrus_write_io.exit, %trace_vga_cirrus_write_io.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.dw = load i8, ptr %i.dv, align 4             ; 7 uses
  switch i8 %i.dw, label %bb.av [
    i8 0, label %bb.ap
    i8 1, label %bb.ap
    i8 2, label %bb.ap
    i8 3, label %bb.ap
    i8 4, label %bb.ap
    i8 5, label %bb.ap
    i8 6, label %bb.ap
    i8 7, label %bb.ap
    i8 8, label %bb.ap
    i8 9, label %bb.ap
    i8 10, label %bb.ap
    i8 11, label %bb.ap
    i8 12, label %bb.ap
    i8 13, label %bb.ap
    i8 14, label %bb.ap
    i8 15, label %bb.ap
    i8 16, label %bb.ap
    i8 17, label %bb.ap
    i8 18, label %bb.ap
    i8 19, label %bb.ap
    i8 20, label %bb.ap
    i8 21, label %bb.ap
    i8 22, label %bb.ap
    i8 23, label %bb.ap
    i8 24, label %bb.ap
    i8 25, label %bb.au
    i8 26, label %bb.au
    i8 27, label %bb.au
    i8 28, label %bb.au
    i8 29, label %bb.au
    i8 34, label %cirrus_vga_write_sr.exit
    i8 36, label %cirrus_vga_write_sr.exit
    i8 38, label %cirrus_vga_write_sr.exit
    i8 39, label %cirrus_vga_write_sr.exit
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1406
  %i.dy = load i8, ptr %i.dx, align 2
  %.not.i65 = icmp slt i8 %i.dy, 0
  %i.dz = icmp samesign ult i8 %i.dw, 8
  %or.cond.i = select i1 %.not.i65, i1 %i.dz, i1 false
  br i1 %or.cond.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ea = icmp eq i8 %i.dw, 7
  br i1 %i.ea, label %bb.ar, label %cirrus_vga_write_sr.exit

bb.ar:                                            ; preds = %bb.aq
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = and i8 %i.ec, -17
  %i.ee = trunc i64 %2 to i8
  %i.ef = and i8 %i.ee, 16
  %i.eg = or disjoint i8 %i.ed, %i.ef
  store i8 %i.eg, ptr %i.eb, align 4
  br label %cirrus_vga_write_sr.exit

bb.as:                                            ; preds = %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1389
  %i.ei = trunc i64 %2 to i8
  %i.ej = zext nneg i8 %i.dw to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej
  store i8 %i.ei, ptr %i.ek, align 1
  switch i8 %i.dw, label %cirrus_vga_write_sr.exit [
    i8 0, label %bb.at
    i8 4, label %bb.at
    i8 5, label %bb.at
    i8 6, label %bb.at
    i8 7, label %bb.at
    i8 17, label %bb.at
    i8 23, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 68072
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull %0) #14, !inline_history !15
  br label %cirrus_vga_write_sr.exit

bb.au:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.en = trunc i64 %2 to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1389
  %i.ep = zext nneg i8 %i.dw to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep
  store i8 %i.en, ptr %i.eq, align 1
  br label %cirrus_vga_write_sr.exit

bb.av:                                            ; preds = %bb.ao
  %i.er = load i32, ptr @qemu_loglevel, align 4
  %i.es = and i32 %i.er, 2048
  %.not17.i = icmp eq i32 %i.es, 0
  br i1 %.not17.i, label %cirrus_vga_write_sr.exit, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av
  %i.et = zext i8 %i.dw to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.54, i32 noundef %i.et, i32 noundef %i.d) #14
  br label %cirrus_vga_write_sr.exit

bb.ax:                                            ; preds = %trace_vga_cirrus_write_io.exit, %trace_vga_cirrus_write_io.exit
  %i.eu = trunc i64 %2 to i8
  %i.ev = and i8 %i.eu, 16
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1646
  store i8 %i.ev, ptr %i.ew, align 2
  br label %cirrus_vga_write_sr.exit

cirrus_vga_write_sr.exit:                         ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ak, %bb.aj, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %trace_vga_cirrus_write_io.exit, %bb.o, %bb.p, %bb.q, %cirrus_write_hidden_dac.exit, %bb.ah, %bb.ai, %bb.al, %bb.am, %bb.an, %bb.ax, %bb.a
  ret void
}

declare i32 @vga_ioport_invalid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 256) i32 @cirrus_vga_read_sr(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i8, ptr %i.a, align 16              ; 4 uses
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 3, label %bb.b
    i8 4, label %bb.b
    i8 6, label %bb.c
    i8 16, label %bb.d
    i8 48, label %bb.d
    i8 80, label %bb.d
    i8 112, label %bb.d
    i8 -112, label %bb.d
    i8 -80, label %bb.d
    i8 -48, label %bb.d
    i8 -16, label %bb.d
    i8 17, label %bb.e
    i8 49, label %bb.e
    i8 81, label %bb.e
    i8 113, label %bb.e
    i8 -111, label %bb.e
    i8 -79, label %bb.e
    i8 -47, label %bb.e
    i8 -15, label %bb.e
    i8 5, label %bb.f
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.f
    i8 10, label %bb.f
    i8 11, label %bb.f
    i8 12, label %bb.f
    i8 13, label %bb.f
    i8 14, label %bb.f
    i8 15, label %bb.f
    i8 18, label %bb.f
    i8 19, label %bb.f
    i8 20, label %bb.f
    i8 21, label %bb.f
    i8 22, label %bb.f
    i8 23, label %bb.f
    i8 24, label %bb.f
    i8 25, label %bb.f
    i8 26, label %bb.f
    i8 27, label %bb.f
    i8 28, label %bb.f
    i8 29, label %bb.f
    i8 30, label %bb.f
    i8 31, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 593
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 599
  %i.h = load i8, ptr %i.g, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 609
  %i.j = load i8, ptr %i.i, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 610
  %i.l = load i8, ptr %i.k, align 2
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 593
  %i.n = zext nneg i8 %i.b to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 2048
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.s = zext i8 %i.b to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, i32 noundef %i.s) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.shrunk = phi i8 [ %i.p, %bb.f ], [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ -1, %bb.g ], [ -1, %bb.h ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 256) i32 @cirrus_vga_read_palette(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 611
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1651
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 70620
  %i.g = and i8 %i.e, 15
  %narrow = mul nuw nsw i8 %i.g, 3
  %i.h = zext nneg i8 %narrow to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1650
  %i.j = load i8, ptr %i.i, align 2               ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.o = zext i8 %i.e to i64
  %i.p = mul nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1650
  %i.r = load i8, ptr %i.q, align 2               ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i8 [ %i.j, %bb.b ], [ %i.r, %bb.c ]
  %.0.in.in = phi ptr [ %i.m, %bb.b ], [ %i.u, %bb.c ]
  %.0.in = load i8, ptr %.0.in.in, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1650 ; 2 uses
  %i.x = add i8 %i.v, 1                           ; 2 uses
  store i8 %i.x, ptr %i.w, align 2
  %i.y = icmp eq i8 %i.x, 3
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.w, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1651
  %i.aa = add i8 %i.e, 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = zext i8 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 256) i32 @cirrus_vga_read_gr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 70600
  %i.b = load i8, ptr %i.a, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 70601
  %i.d = load i8, ptr %i.c, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1106
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1105
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ult i32 %1, 58
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1106
end_hunk_0
