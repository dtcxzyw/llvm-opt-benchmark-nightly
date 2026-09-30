Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/rtl8139?download=true
inline.NumInlined: 384
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rtl8139_set_next_tctr_time:bb.a
  %i.p = add i64 %i.o, %i.n
  %i.q = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #9
  %.not12 = icmp ugt i64 %i.p, %i.q
  %i.r = add nuw nsw i64 %i.n, 128849018880
  %spec.select = select i1 %.not12, i64 %i.n, i64 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 11376
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = load i64, ptr %i.a, align 8
  %i.v = add i64 %i.u, %spec.select
  tail call void @timer_mod(ptr noundef %i.t, i64 noundef %i.v) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @timer_del(ptr noundef) local_unnamed_addr #1

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_flush_queued_packets(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rtl8139_receive(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #9 ; 48 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2856
  %i.f = load i8, ptr %i.e, align 8
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 2857
  %.val = load i8, ptr %i.g, align 1
  %i.h = and i8 %.val, 8
  %.not195 = icmp eq i8 %i.h, 0
  br i1 %.not195, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2840
  %i.j = load i32, ptr %i.i, align 8              ; 4 uses
  %i.k = and i32 %i.j, 1
  %.not196 = icmp eq i32 %i.k, 0
  br i1 %.not196, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %1, align 1
  %i.m = xor i32 %i.l, -1
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 65535
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not197 = icmp eq i32 %i.t, 0
  br i1 %.not197, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %i.j, 8
  %.not198 = icmp eq i32 %i.u, 0
  br i1 %.not198, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 11320 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8
  br label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 11344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 16
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 16
  br label %bb.w

bb.h:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %1, align 1                ; 2 uses
  %i.ac = and i8 %i.ab, 1
  %.not199 = icmp eq i8 %i.ac, 0
  br i1 %.not199, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i32 %i.j, 4
  %.not201 = icmp eq i32 %i.ad, 0
  br i1 %.not201, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 11320 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8
  br label %bb.ak

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call i32 @net_crc32(ptr noundef nonnull %1, i32 noundef 6) #9 ; 2 uses
  %i.ai = lshr i32 %i.ah, 26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 2776
  %i.ak = lshr i32 %i.ah, 29
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = and i32 %i.ai, 7
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.ao
  %.not202.not = icmp eq i32 %i.ar, 0
  br i1 %.not202.not, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 11320 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 11352 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8
  br label %bb.w

bb.m:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 2768
  %i.az = load i8, ptr %i.ay, align 16
  %i.ba = icmp eq i8 %i.az, %i.ab
  br i1 %i.ba, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 2769
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 2770
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bh, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 2771
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bm, %i.bo
  br i1 %i.bp, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 2772
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.br, %i.bt
  br i1 %i.bu, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 2773
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.bw, %i.by
  br i1 %i.bz, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ca = and i32 %i.j, 2
  %.not200 = icmp eq i32 %i.ca, 0
  br i1 %.not200, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 11320 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8
  br label %bb.ak

bb.u:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 11336 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 11320 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8
  br label %bb.ak

bb.w:                                             ; preds = %bb.l, %bb.c, %bb.g, %bb.u
  %.not210 = phi i32 [ 805306368, %bb.g ], [ 872415232, %bb.l ], [ 805306368, %bb.u ], [ 805306368, %bb.c ]
  %.1186 = phi i32 [ 8192, %bb.g ], [ 32768, %bb.l ], [ 16384, %bb.u ], [ 0, %bb.c ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.c, i64 2870    ; 2 uses
  %.val213 = load i16, ptr %i.ck, align 2
  %i.cl = and i16 %.val213, 2
  %.not203 = icmp eq i16 %i.cl, 0
  br i1 %.not203, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 11120
  %i.cn = load i32, ptr %i.cm, align 16           ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 11124
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %.not237 = icmp eq i32 %i.cq, 0
  %or.cond = select i1 %i.co, i1 %.not237, i1 false
  br i1 %or.cond, label %bb.ak, label %rtl8139_cp_rx_valid.exit.thread

rtl8139_cp_rx_valid.exit.thread:                  ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 11112 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = zext i32 %i.cn to i64
  %i.cu = zext i32 %i.cq to i64
  %i.cv = shl nuw i64 %i.cu, 32
  %i.cw = or disjoint i64 %i.cv, %i.ct
  %i.cx = shl i32 %i.cs, 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = add i64 %i.cw, %i.cy                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !7
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 10 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.db = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.cz, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext false) #9 ; 0 uses
  %i.dc = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dd = add i64 %i.cz, 4                        ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.de = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.dd, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext false) #9 ; 0 uses
  %i.df = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dg = add i64 %i.cz, 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.dh = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.dg, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext false) #9 ; 0 uses
  %i.di = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dj = add i64 %i.cz, 12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.dk = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.dj, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext false) #9 ; 0 uses
  %i.dl = load i32, ptr %i.a, align 4             ; 2 uses
  %.not206 = icmp sgt i32 %i.dc, -1
  br i1 %.not206, label %.critedge, label %bb.y

.critedge:                                        ; preds = %rtl8139_cp_rx_valid.exit.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 2832 ; 3 uses
  %i.dn = load i16, ptr %i.dm, align 16
  %i.do = or i16 %i.dn, 16
  store i16 %i.do, ptr %i.dm, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 2844 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 11320 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 11324 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 4
  %i.dx = add i16 %i.dw, 1
  store i16 %i.dx, ptr %i.dv, align 4
  %i.dy = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #9
  %i.dz = load i16, ptr %i.dm, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 2834
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = and i16 %i.eb, %i.dz
  %i.ed = icmp ne i16 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  call void @pci_set_irq(ptr noundef %i.dy, i32 noundef %i.ee) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ak

bb.y:                                             ; preds = %rtl8139_cp_rx_valid.exit.thread
  %i.ef = and i32 %i.dc, 8191                     ; 2 uses
  %i.eg = load i16, ptr %i.ck, align 2
  %i.eh = and i16 %i.eg, 64
  %.not207 = icmp eq i16 %i.eh, 0
  br i1 %.not207, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val215 = load i16, ptr %i.ei, align 1
  %i.ej = icmp eq i16 %.val215, 129
  br i1 %i.ej, label %.thread218, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ek = add i64 %2, 4                           ; 2 uses
  %i.el = zext nneg i32 %i.ef to i64
  %.not239 = icmp ugt i64 %i.ek, %i.el
  br i1 %.not239, label %bb.af, label %bb.ac

.thread218:                                       ; preds = %bb.z
  %i.em = add i64 %2, -4
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.em, i64 60) ; 3 uses
  %i.en = add i64 %spec.store.select, 4           ; 2 uses
  %i.eo = zext nneg i32 %i.ef to i64
  %.not238 = icmp ugt i64 %i.en, %i.eo
  br i1 %.not238, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %.thread218
  %i.ep = and i32 %i.df, -131072
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.val216 = load i16, ptr %i.eq, align 1
  %i.er = zext i16 %.val216 to i32
  %i.es = or disjoint i32 %i.ep, %i.er
  %i.et = or disjoint i32 %i.es, 65536
  %i.eu = zext i32 %i.di to i64
  %i.ev = zext i32 %i.dl to i64
  %i.ew = shl nuw i64 %i.ev, 32
  %i.ex = or disjoint i64 %i.ew, %i.eu            ; 3 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.ey = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.ex, i64 4294967296, ptr noundef nonnull %1, i64 noundef 12, i1 noundef zeroext true) #9 ; 0 uses
  %i.ez = add i64 %i.ex, 12
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = add nsw i64 %spec.store.select, -12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.fc = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.ez, i64 4294967296, ptr noundef nonnull %i.fa, i64 noundef %i.fb, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fd = and i32 %i.df, -65537
  %i.fe = zext i32 %i.di to i64
  %i.ff = zext i32 %i.dl to i64
  %i.fg = shl nuw i64 %i.ff, 32
  %i.fh = or disjoint i64 %i.fg, %i.fe            ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.fi = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.fh, i64 4294967296, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fj = phi i64 [ %i.fh, %bb.ac ], [ %i.ex, %bb.ab ]
  %.0188222231 = phi i64 [ %2, %bb.ac ], [ %spec.store.select, %bb.ab ]
  %.0224229 = phi i32 [ %i.fd, %bb.ac ], [ %i.et, %bb.ab ]
  %i.fk = phi i64 [ %i.ek, %bb.ac ], [ %i.en, %bb.ab ]
  %i.fl = trunc i64 %2 to i32
  %i.fm = call i64 @crc32(i64 noundef 0, ptr noundef %1, i32 noundef %i.fl) #9
  %i.fn = trunc i64 %i.fm to i32
  store i32 %i.fn, ptr %i.a, align 4
  %i.fo = add i64 %.0188222231, %i.fj
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.fp = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.fo, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  %3 = shl nuw nsw i32 %.1186, 11                 ; 2 uses
  %4 = and i32 %3, 16777216
  %i.fq = or disjoint i32 %4, %.not210
  %5 = and i32 %3, 33554432
  %i.fr = and i32 %i.dc, 2147475456
  %.1.masked = or i32 %i.fq, %i.fr
  %i.fs = or i32 %.1.masked, %5
  %i.ft = trunc nuw nsw i64 %i.fk to i32
  %i.fu = or i32 %i.fs, %i.ft                     ; 2 uses
  store i32 %i.fu, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.fv = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.cz, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  store i32 %.0224229, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !8
  fence seq_cst
  %i.fw = call i32 @address_space_rw(ptr noundef nonnull %i.da, i64 noundef %i.dd, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 11304 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = add i64 %i.fy, 1
  store i64 %i.fz, ptr %i.fx, align 8
  %i.ga = and i32 %i.fu, 1073741824
  %.not212 = icmp eq i32 %i.ga, 0
  br i1 %.not212, label %bb.ae, label %.thread233

bb.ae:                                            ; preds = %bb.ad
  %i.gb = load i32, ptr %i.cr, align 8
  %i.gc = add i32 %i.gb, 1
  br label %.thread233

.thread233:                                       ; preds = %bb.ae, %bb.ad
  %storemerge = phi i32 [ %i.gc, %bb.ae ], [ 0, %bb.ad ]
  store i32 %storemerge, ptr %i.cr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa, %.thread218
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 2832 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 16
  %i.gf = or i16 %i.ge, 16
  store i16 %i.gf, ptr %i.gd, align 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 2844 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gg, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 11320 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 11324 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 4
  %i.go = add i16 %i.gn, 1
  store i16 %i.go, ptr %i.gm, align 4
  call fastcc void @rtl8139_update_irq(ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ak

bb.ag:                                            ; preds = %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 2820 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 2824
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = add i32 %i.gs, %i.gq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 2828 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = sub i32 %i.gt, %i.gv
  %i.gx = add i32 %i.gq, -1
  %i.gy = and i32 %i.gw, %i.gx                    ; 2 uses
  %.not204 = icmp eq i32 %i.gy, 0
  br i1 %.not204, label %.thread234, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gz = add i64 %2, 11
  %i.ha = and i64 %i.gz, -4
  %i.hb = sext i32 %i.gy to i64
  %.not205 = icmp ult i64 %i.ha, %i.hb
  br i1 %.not205, label %.thread234, label %bb.ai

.thread234:                                       ; preds = %bb.ag, %bb.ah
  %.tr = trunc i64 %2 to i32                      ; 3 uses
  %i.hc = shl i32 %.tr, 16
  %i.hd = add i32 %i.hc, 262144
  %i.he = or disjoint i32 %.1186, %i.hd
  %i.hf = or disjoint i32 %i.he, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.hf, ptr %i.b, align 4
  call fastcc void @rtl8139_write_buffer(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 4)
  call fastcc void @rtl8139_write_buffer(ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %.tr)
  %i.hg = call i64 @crc32(i64 noundef 0, ptr noundef %1, i32 noundef %.tr) #9
  %i.hh = trunc i64 %i.hg to i32
  store i32 %i.hh, ptr %i.b, align 4
  call fastcc void @rtl8139_write_buffer(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 4)
  %i.hi = load i32, ptr %i.gu, align 4
  %i.hj = add i32 %i.hi, 3
  %i.hk = and i32 %i.hj, -4
  %i.hl = load i32, ptr %i.gp, align 4
  %i.hm = add i32 %i.hl, -1
  %i.hn = and i32 %i.hk, %i.hm
  store i32 %i.hn, ptr %i.gu, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 2832 ; 3 uses
  %i.hp = load i16, ptr %i.ho, align 16
  %i.hq = or i16 %i.hp, 16
  store i16 %i.hq, ptr %i.ho, align 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 2844 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4
  %i.hu = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #9
  %i.hv = load i16, ptr %i.ho, align 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 2834
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = and i16 %i.hx, %i.hv
  %i.hz = icmp ne i16 %i.hy, 0
  %i.ia = zext i1 %i.hz to i32
  tail call void @pci_set_irq(ptr noundef %i.hu, i32 noundef %i.ia) #9
  br label %bb.ak

bb.aj:                                            ; preds = %.thread234, %.thread233
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 2832 ; 3 uses
  %i.ic = load i16, ptr %i.ib, align 16
  %i.id = or i16 %i.ic, 1
  store i16 %i.id, ptr %i.ib, align 16
  %i.ie = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #9
  %i.if = load i16, ptr %i.ib, align 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 2834
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = and i16 %i.ih, %i.if
  %i.ij = icmp ne i16 %i.ii, 0
  %i.ik = zext i1 %i.ij to i32
  call void @pci_set_irq(ptr noundef %i.ie, i32 noundef %i.ik) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.x, %bb.ai, %bb.af, %.thread, %bb.b, %bb.a, %.critedge, %bb.aj, %bb.v, %bb.t, %bb.j, %bb.f
  %.5 = phi i64 [ %2, %bb.aj ], [ %2, %bb.af ], [ %2, %.critedge ], [ 0, %bb.ai ], [ %2, %.thread ], [ %2, %bb.j ], [ %2, %bb.t ], [ %2, %bb.v ], [ %2, %bb.f ], [ -1, %bb.a ], [ %2, %bb.x ], [ -1, %bb.b ]
  ret i64 %.5
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @rtl8139_can_receive(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #9 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2856
  %i.c = load i8, ptr %i.b, align 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %rtl8139_cp_rx_valid.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 2857
  %.val = load i8, ptr %i.d, align 1
  %i.e = and i8 %.val, 8
  %.not13 = icmp eq i8 %i.e, 0
  br i1 %.not13, label %rtl8139_cp_rx_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 2870
  %.val15 = load i16, ptr %i.f, align 2
  %i.g = and i16 %.val15, 2
  %.not14 = icmp eq i16 %i.g, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 11120
  %i.i = load i32, ptr %i.h, align 16
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %rtl8139_cp_rx_valid.exit, label %rtl8139_cp_rx_valid.exit.thread

rtl8139_cp_rx_valid.exit:                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 11124
  %i.l = load i32, ptr %i.k, align 4
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.e, label %rtl8139_cp_rx_valid.exit.thread

bb.e:                                             ; preds = %rtl8139_cp_rx_valid.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2820
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2824
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2828
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sub i32 %i.q, %i.s
  %i.u = add i32 %i.n, -1
  %i.v = and i32 %i.t, %i.u                       ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = icmp sgt i32 %i.v, 1513
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %rtl8139_cp_rx_valid.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2834
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = and i16 %i.z, 16
  %i.ab = icmp ne i16 %i.aa, 0
  br label %rtl8139_cp_rx_valid.exit.thread

rtl8139_cp_rx_valid.exit.thread:                  ; preds = %bb.d, %bb.e, %bb.f, %rtl8139_cp_rx_valid.exit, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.b ], [ true, %rtl8139_cp_rx_valid.exit ], [ true, %bb.a ], [ %i.ab, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @rtl8139_set_link_status(ptr noundef %0) #0 {
bb.a:
end_hunk_0
