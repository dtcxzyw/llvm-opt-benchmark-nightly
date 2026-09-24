Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/observer?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@read_packet_header:bb.a
  %i.aa = load i8, ptr %i.z, align 1
  %.not112.15 = icmp eq i8 %i.aa, 0
  br i1 %.not112.15, label %.preheader.16, label %.thread

.preheader.16:                                    ; preds = %.preheader.15
  %i.ab = getelementptr i8, ptr %3, i64 16
  %i.ac = load i8, ptr %i.ab, align 8
  %.not112.16 = icmp eq i8 %i.ac, 0
  br i1 %.not112.16, label %.preheader.17, label %.thread

.preheader.17:                                    ; preds = %.preheader.16
  %i.ad = getelementptr i8, ptr %3, i64 17
  %i.ae = load i8, ptr %i.ad, align 1
  %.not112.17 = icmp eq i8 %i.ae, 0
  br i1 %.not112.17, label %.preheader.18, label %.thread

.preheader.18:                                    ; preds = %.preheader.17
  %i.af = getelementptr i8, ptr %3, i64 18
  %i.ag = load i8, ptr %i.af, align 2
  %.not112.18 = icmp eq i8 %i.ag, 0
  br i1 %.not112.18, label %.preheader.19, label %.thread

.preheader.19:                                    ; preds = %.preheader.18
  %i.ah = getelementptr i8, ptr %3, i64 19
  %i.ai = load i8, ptr %i.ah, align 1
  %.not112.19 = icmp eq i8 %i.ai, 0
  br i1 %.not112.19, label %.preheader.20, label %.thread

.preheader.20:                                    ; preds = %.preheader.19
  %i.aj = getelementptr i8, ptr %3, i64 20
  %i.ak = load i8, ptr %i.aj, align 4
  %.not112.20 = icmp eq i8 %i.ak, 0
  br i1 %.not112.20, label %.preheader.21, label %.thread

.preheader.21:                                    ; preds = %.preheader.20
  %i.al = getelementptr i8, ptr %3, i64 21
  %i.am = load i8, ptr %i.al, align 1
  %.not112.21 = icmp eq i8 %i.am, 0
  br i1 %.not112.21, label %.preheader.22, label %.thread

.preheader.22:                                    ; preds = %.preheader.21
  %i.an = getelementptr i8, ptr %3, i64 22
  %i.ao = load i8, ptr %i.an, align 2
  %.not112.22 = icmp eq i8 %i.ao, 0
  br i1 %.not112.22, label %.preheader.23, label %.thread

.preheader.23:                                    ; preds = %.preheader.22
  %i.ap = getelementptr i8, ptr %3, i64 23
  %i.aq = load i8, ptr %i.ap, align 1
  %.not112.23 = icmp eq i8 %i.aq, 0
  br i1 %.not112.23, label %.preheader.24, label %.thread

.preheader.24:                                    ; preds = %.preheader.23
  %i.ar = getelementptr i8, ptr %3, i64 24
  %i.as = load i8, ptr %i.ar, align 8
  %.not112.24 = icmp eq i8 %i.as, 0
  br i1 %.not112.24, label %.preheader.25, label %.thread

.preheader.25:                                    ; preds = %.preheader.24
  %i.at = getelementptr i8, ptr %3, i64 25
  %i.au = load i8, ptr %i.at, align 1
  %.not112.25 = icmp eq i8 %i.au, 0
  br i1 %.not112.25, label %.preheader.26, label %.thread

.preheader.26:                                    ; preds = %.preheader.25
  %i.av = getelementptr i8, ptr %3, i64 26
  %i.aw = load i8, ptr %i.av, align 2
  %.not112.26 = icmp eq i8 %i.aw, 0
  br i1 %.not112.26, label %.preheader.27, label %.thread

.preheader.27:                                    ; preds = %.preheader.26
  %i.ax = getelementptr i8, ptr %3, i64 27
  %i.ay = load i8, ptr %i.ax, align 1
  %.not112.27 = icmp eq i8 %i.ay, 0
  br i1 %.not112.27, label %.preheader.28, label %.thread

.preheader.28:                                    ; preds = %.preheader.27
  %i.az = getelementptr i8, ptr %3, i64 28
  %i.ba = load i8, ptr %i.az, align 4
  %.not112.28 = icmp eq i8 %i.ba, 0
  br i1 %.not112.28, label %.preheader.29, label %.thread

.preheader.29:                                    ; preds = %.preheader.28
  %i.bb = getelementptr i8, ptr %3, i64 29
  %i.bc = load i8, ptr %i.bb, align 1
  %.not112.29 = icmp eq i8 %i.bc, 0
  br i1 %.not112.29, label %.preheader.30, label %.thread

.preheader.30:                                    ; preds = %.preheader.29
  %i.bd = getelementptr i8, ptr %3, i64 30
  %i.be = load i8, ptr %i.bd, align 2
  %.not112.30 = icmp eq i8 %i.be, 0
  br i1 %.not112.30, label %.preheader.31, label %.thread

.preheader.31:                                    ; preds = %.preheader.30
  %i.bf = getelementptr i8, ptr %3, i64 31
  %i.bg = load i8, ptr %i.bf, align 1
  %.not112.31 = icmp eq i8 %i.bg, 0
  br i1 %.not112.31, label %.preheader.32, label %.thread

.preheader.32:                                    ; preds = %.preheader.31
  %i.bh = getelementptr i8, ptr %3, i64 32
  %i.bi = load i8, ptr %i.bh, align 8
  %.not112.32 = icmp eq i8 %i.bi, 0
  br i1 %.not112.32, label %.preheader.33, label %.thread

.preheader.33:                                    ; preds = %.preheader.32
  %i.bj = getelementptr i8, ptr %3, i64 33
  %i.bk = load i8, ptr %i.bj, align 1
  %.not112.33 = icmp eq i8 %i.bk, 0
  br i1 %.not112.33, label %.preheader.34, label %.thread

.preheader.34:                                    ; preds = %.preheader.33
  %i.bl = getelementptr i8, ptr %3, i64 34
  %i.bm = load i8, ptr %i.bl, align 2
  %.not112.34 = icmp eq i8 %i.bm, 0
  br i1 %.not112.34, label %.preheader.35, label %.thread

.preheader.35:                                    ; preds = %.preheader.34
  %i.bn = getelementptr i8, ptr %3, i64 35
  %i.bo = load i8, ptr %i.bn, align 1
  %.not112.35 = icmp eq i8 %i.bo, 0
  br i1 %.not112.35, label %.preheader.36, label %.thread

.preheader.36:                                    ; preds = %.preheader.35
  %i.bp = getelementptr i8, ptr %3, i64 36
  %i.bq = load i8, ptr %i.bp, align 4
  %.not112.36 = icmp eq i8 %i.bq, 0
  br i1 %.not112.36, label %.preheader.37, label %.thread

.preheader.37:                                    ; preds = %.preheader.36
  %i.br = getelementptr i8, ptr %3, i64 37
  %i.bs = load i8, ptr %i.br, align 1
  %.not112.37 = icmp eq i8 %i.bs, 0
  br i1 %.not112.37, label %.preheader.38, label %.thread

.preheader.38:                                    ; preds = %.preheader.37
  %i.bt = getelementptr i8, ptr %3, i64 38
  %i.bu = load i8, ptr %i.bt, align 2
  %.not112.38 = icmp eq i8 %i.bu, 0
  br i1 %.not112.38, label %.preheader.39, label %.thread

.preheader.39:                                    ; preds = %.preheader.38
  %i.bv = getelementptr i8, ptr %3, i64 39
  %i.bw = load i8, ptr %i.bv, align 1
  %.not112.39 = icmp eq i8 %i.bw, 0
  br i1 %.not112.39, label %.preheader.40, label %.thread

.preheader.40:                                    ; preds = %.preheader.39
  %i.bx = getelementptr i8, ptr %3, i64 40
  %i.by = load i8, ptr %i.bx, align 8
  %.not112.40 = icmp eq i8 %i.by, 0
  br i1 %.not112.40, label %.preheader.41, label %.thread

.preheader.41:                                    ; preds = %.preheader.40
  %i.bz = getelementptr i8, ptr %3, i64 41
  %i.ca = load i8, ptr %i.bz, align 1
  %.not112.41 = icmp eq i8 %i.ca, 0
  br i1 %.not112.41, label %.preheader.42, label %.thread

.preheader.42:                                    ; preds = %.preheader.41
  %i.cb = getelementptr i8, ptr %3, i64 42
  %i.cc = load i8, ptr %i.cb, align 2
  %.not112.42 = icmp eq i8 %i.cc, 0
  br i1 %.not112.42, label %.preheader.43, label %.thread

.preheader.43:                                    ; preds = %.preheader.42
  %i.cd = getelementptr i8, ptr %3, i64 43
  %i.ce = load i8, ptr %i.cd, align 1
  %.not112.43 = icmp eq i8 %i.ce, 0
  br i1 %.not112.43, label %.preheader.44, label %.thread

.preheader.44:                                    ; preds = %.preheader.43
  %i.cf = getelementptr i8, ptr %3, i64 44
  %i.cg = load i8, ptr %i.cf, align 4
  %.not112.44 = icmp eq i8 %i.cg, 0
  br i1 %.not112.44, label %.preheader.45, label %.thread

.preheader.45:                                    ; preds = %.preheader.44
  %i.ch = getelementptr i8, ptr %3, i64 45
  %i.ci = load i8, ptr %i.ch, align 1
  %.not112.45 = icmp eq i8 %i.ci, 0
  br i1 %.not112.45, label %.preheader.46, label %.thread

.preheader.46:                                    ; preds = %.preheader.45
  %i.cj = getelementptr i8, ptr %3, i64 46
  %i.ck = load i8, ptr %i.cj, align 2
  %.not112.46 = icmp eq i8 %i.ck, 0
  br i1 %.not112.46, label %.preheader.47, label %.thread

.preheader.47:                                    ; preds = %.preheader.46
  %i.cl = getelementptr i8, ptr %3, i64 47
  %i.cm = load i8, ptr %i.cl, align 1
  %.not112.47 = icmp eq i8 %i.cm, 0
  br i1 %.not112.47, label %bb.d, label %.thread

bb.d:                                             ; preds = %.preheader.47
  store i32 0, ptr %4, align 4
  br label %.critedge

.thread:                                          ; preds = %bb.c, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14, %.preheader.15, %.preheader.16, %.preheader.17, %.preheader.18, %.preheader.19, %.preheader.20, %.preheader.21, %.preheader.22, %.preheader.23, %.preheader.24, %.preheader.25, %.preheader.26, %.preheader.27, %.preheader.28, %.preheader.29, %.preheader.30, %.preheader.31, %.preheader.32, %.preheader.33, %.preheader.34, %.preheader.35, %.preheader.36, %.preheader.37, %.preheader.38, %.preheader.39, %.preheader.40, %.preheader.41, %.preheader.42, %.preheader.43, %.preheader.44, %.preheader.45, %.preheader.46, %.preheader.47
  store i32 -13, ptr %4, align 4
  %i.cn = load i32, ptr %3, align 8
  %i.co = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef %i.cn)
  store ptr %i.co, ptr %5, align 8
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.cp = getelementptr i8, ptr %0, i64 168
  %i.cq = load i32, ptr %i.cp, align 8
  switch i32 %i.cq, label %bb.h [
    i32 1, label %bb.f
    i32 22, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %2, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(72) %2, i8 noundef 0, i64 noundef 72, i1 noundef false) #12
  store i32 0, ptr %2, align 8
  %i.cr = getelementptr i8, ptr %2, i64 4
  store i8 0, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %2, i64 8
  store i32 0, ptr %i.cs, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ct = getelementptr i8, ptr %3, i64 18        ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 2
  %.not125 = icmp eq i8 %i.cu, 0
  br i1 %.not125, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 6
  %i.cx = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.cy = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.da = getelementptr i8, ptr %2, i64 34
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.dc = getelementptr i8, ptr %2, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.de = getelementptr i8, ptr %2, i64 42
  %i.df = getelementptr i8, ptr %2, i64 8
  %i.dg = getelementptr i8, ptr %2, i64 12        ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.1118 = phi i32 [ 0, %.lr.ph ], [ %i.ef, %bb.t ]
  %.0101117 = phi i32 [ 48, %.lr.ph ], [ %.2, %bb.t ]
  %i.dh = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 4, ptr noundef %4, ptr noundef %5)
  br i1 %i.dh, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.di = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.dj = icmp ult i16 %i.di, 4
  %i.dk = zext i16 %i.di to i32                   ; 4 uses
  br i1 %i.dj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -13, ptr %4, align 4
  %i.dl = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %i.dk, i64 noundef 4)
  store ptr %i.dl, ptr %5, align 8
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.dm = load i16, ptr %6, align 2
  %i.dn = add nsw i32 %i.dk, -4                   ; 3 uses
  %cond1 = icmp eq i16 %i.dm, 257
  br i1 %cond1, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not111 = icmp eq i32 %i.dn, 8
  br i1 %.not111, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 -13, ptr %4, align 4
  %i.do = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef %i.dk, i64 noundef 12)
  store ptr %i.do, ptr %5, align 8
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.dp = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 8, ptr noundef %4, ptr noundef %5)
  br i1 %i.dp, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dq = load i8, ptr %i.cw, align 1
  %.lobit = lshr i8 %i.dq, 7
  %i.dr = load i8, ptr %i.cx, align 4
  %i.ds = and i8 %i.dr, -2
  %i.dt = or disjoint i8 %i.ds, %.lobit
  store i8 %i.dt, ptr %i.cx, align 4
  %i.du = load i16, ptr %i.cy, align 8
  %i.dv = load i8, ptr %i.cz, align 1             ; 2 uses
  %i.dw = zext i8 %i.dv to i16
  store i16 %i.dw, ptr %i.da, align 2
  %i.dx = load i8, ptr %i.db, align 1             ; 2 uses
  %i.dy = zext i8 %i.dx to i16
  store i16 %i.dy, ptr %i.dc, align 8
  %i.dz = or i16 %i.du, 13
  store i16 %i.dz, ptr %i.cy, align 8
  %i.ea = load i8, ptr %i.dd, align 1
  store i8 %i.ea, ptr %i.de, align 2
  switch i8 %i.dx, label %bb.t [
    i8 2, label %.sink.split
    i8 4, label %.sink.split
    i8 11, label %.sink.split
    i8 22, label %.sink.split
    i8 44, label %.sink.split
    i8 66, label %.sink.split
    i8 12, label %bb.q
    i8 18, label %bb.q
    i8 24, label %bb.q
    i8 36, label %bb.q
    i8 48, label %bb.q
    i8 72, label %bb.q
    i8 96, label %bb.q
    i8 108, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.eb = icmp ult i8 %i.dv, 15                   ; 2 uses
  %.138 = select i1 %i.eb, i32 6, i32 5
  %.139 = select i1 %i.eb, i8 -2, i8 -4
  br label %.sink.split

bb.r:                                             ; preds = %bb.l
  %.not110 = icmp eq i32 %i.dn, 0
  br i1 %.not110, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef %i.dn, ptr noundef %4, ptr noundef %5)
  br i1 %i.ec, label %bb.t, label %.critedge

.sink.split:                                      ; preds = %bb.q, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %.sink = phi i32 [ 4, %bb.p ], [ %.138, %bb.q ], [ 4, %bb.p ], [ 4, %bb.p ], [ 4, %bb.p ], [ 4, %bb.p ], [ 4, %bb.p ]
  %.sink137 = phi i8 [ -2, %bb.p ], [ %.139, %bb.q ], [ -2, %bb.p ], [ -2, %bb.p ], [ -2, %bb.p ], [ -2, %bb.p ], [ -2, %bb.p ]
  store i32 %.sink, ptr %i.df, align 8
  %i.ed = load i8, ptr %i.dg, align 4
  %i.ee = and i8 %i.ed, %.sink137
  store i8 %i.ee, ptr %i.dg, align 4
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r, %bb.s, %bb.p
  %.pn = phi i32 [ 4, %bb.r ], [ 12, %bb.p ], [ %i.dk, %bb.s ], [ 12, %.sink.split ]
  %.2 = add i32 %.pn, %.0101117                   ; 2 uses
  %i.ef = add nuw nsw i32 %.1118, 1               ; 2 uses
  %i.eg = load i8, ptr %i.ct, align 2
  %i.eh = zext i8 %i.eg to i32
  %i.ei = icmp samesign ult i32 %i.ef, %i.eh
  br i1 %i.ei, label %bb.i, label %.critedge, !llvm.loop !8

.critedge:                                        ; preds = %bb.t, %bb.o, %bb.i, %bb.s, %bb.h, %bb.k, %bb.n, %bb.b, %.thread, %bb.d
  %.2105 = phi i32 [ 0, %bb.d ], [ -1, %.thread ], [ -1, %bb.n ], [ %., %bb.b ], [ -1, %bb.k ], [ 48, %bb.h ], [ -1, %bb.i ], [ -1, %bb.o ], [ %.2, %bb.t ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.2105
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @process_packet_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  %6 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = icmp ult i8 %i.b, 10
  br i1 %i.c, label %switch.lookup, label %observer_to_wtap_encap.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.process_packet_header, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %observer_to_wtap_encap.exit

observer_to_wtap_encap.exit:                      ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  tail call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %.0.i)
  %i.e = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.f = getelementptr i8, ptr %2, i64 216
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %2, i64 4
  store i32 3, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 168
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 122
  %i.k = getelementptr i8, ptr %1, i64 10         ; 2 uses
  %i.l = load i16, ptr %i.k, align 2              ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %observer_to_wtap_encap.exit
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr i8, ptr %2, i64 48
  %i.o = getelementptr i8, ptr %2, i64 52
  store i32 %i.m, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = load i16, ptr %i.p, align 8
  %i.r = zext i16 %i.q to i32
end_hunk_0
