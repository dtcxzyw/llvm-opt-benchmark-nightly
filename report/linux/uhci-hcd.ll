Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/uhci-hcd?download=true
inline.NumInlined: 432
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@uhci_urb_enqueue:bb.a
  store volatile ptr %i.j, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  store volatile ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.j, i64 32       ; 3 uses
  store volatile ptr %i.n, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.j, i64 40
  store volatile ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %1, i64 72
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not56 = icmp eq ptr %i.s, null
  br i1 %.not56, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %1, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call fastcc ptr @uhci_alloc_qh(ptr noundef %i.e, ptr noundef %i.u, ptr noundef %i.q) #14, !srcloc !63 ; 2 uses
  %.not57 = icmp eq ptr %i.v, null
  br i1 %.not57, label %uhci_make_qh_idle.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.050 = phi ptr [ %i.v, %bb.d ], [ %i.s, %bb.c ] ; 43 uses
  %i.w = getelementptr i8, ptr %i.j, i64 24
  store ptr %.050, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.050, i64 116     ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %bb.br [
    i32 0, label %bb.f
    i32 2, label %bb.p
    i32 3, label %bb.u
    i32 1, label %bb.aq
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %.050, i64 32
  %i.aa = load ptr, ptr %i.z, align 16
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val108.i = load i16, ptr %i.ab, align 1
  %i.ac = and i16 %.val108.i, 2047
  %i.ad = zext nneg i16 %i.ac to i32              ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 136
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr i8, ptr %1, i64 104
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aj = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 524032                   ; 2 uses
  %i.am = or disjoint i32 %i.al, 45
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 1
  %spec.select.i = select i1 %i.as, i64 469762048, i64 402653184 ; 2 uses
  %i.at = getelementptr i8, ptr %.050, i64 64     ; 4 uses
  %i.au = load ptr, ptr %i.at, align 16           ; 7 uses
  %i.av = getelementptr i8, ptr %i.au, i64 24     ; 3 uses
  %i.aw = getelementptr i8, ptr %i.ai, i64 32     ; 3 uses
  %i.ax = getelementptr i8, ptr %i.ai, i64 40     ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  store ptr %i.av, ptr %i.ax, align 8
  store ptr %i.aw, ptr %i.av, align 8
  %i.az = getelementptr i8, ptr %i.au, i64 32
  store ptr %i.ay, ptr %i.az, align 8
  store volatile ptr %i.av, ptr %i.ay, align 8
  %i.ba = trunc nuw nsw i64 %spec.select.i to i32
  %i.bb = or disjoint i32 %i.al, 14680109
  %i.bc = getelementptr i8, ptr %1, i64 152
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr i8, ptr %i.au, i64 4
  store i32 %i.ba, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %i.au, i64 8
  store i32 %i.bb, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.au, i64 12
  store i32 %i.be, ptr %i.bh, align 4
  %i.bi = load i32, ptr %i.aj, align 8
  %i.bj = and i32 %i.bi, 128
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = icmp eq i32 %i.af, 0
  %or.cond.i = select i1 %i.bk, i1 true, i1 %i.bl ; 2 uses
  %.091.v.i = select i1 %or.cond.i, i64 204, i64 68
  %.091.i = xor i64 %.091.v.i, %i.an              ; 2 uses
  %.190.v.i = select i1 %or.cond.i, i64 8388608, i64 545259520
  %.190.i = or disjoint i64 %.190.v.i, %spec.select.i ; 2 uses
  %i.bm = icmp sgt i32 %i.af, 0
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bn = getelementptr i8, ptr %0, i64 608
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %.084126.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.bo, %bb.h ]
  %.085125.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.cl, %bb.h ] ; 2 uses
  %.087124.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.cm, %bb.h ] ; 3 uses
  %.2123.i = phi i64 [ %.190.i, %.lr.ph.i ], [ %spec.select104.i, %bb.h ] ; 2 uses
  %.192122.i = phi i64 [ %.091.i, %.lr.ph.i ], [ %i.bz, %bb.h ]
  %.val107.i = load ptr, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 0, ptr %i.d, align 8, !annotation !20
  %i.bo = call ptr @dma_pool_alloc(ptr noundef %.val107.i, i32 noundef 2080, ptr noundef nonnull %i.d) #11 ; 12 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  %.not102.i = icmp sgt i32 %.087124.i, %i.ad
  %spec.select105.i = call i32 @llvm.smin.i32(i32 %.087124.i, i32 %i.ad) ; 3 uses
  %i.bp = and i64 %.2123.i, -536870913
  %spec.select104.i = select i1 %.not102.i, i64 %.2123.i, i64 %i.bp ; 3 uses
  %i.bq = load i64, ptr %i.d, align 8
  %i.br = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  store i64 %i.bq, ptr %i.br, align 16
  %i.bs = getelementptr i8, ptr %i.bo, i64 40
  store i32 -1, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.bo, i64 24     ; 6 uses
  store volatile ptr %i.bt, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.bo, i64 32     ; 2 uses
  store volatile ptr %i.bt, ptr %i.bu, align 16
  %i.bv = getelementptr i8, ptr %i.bo, i64 48     ; 3 uses
  store volatile ptr %i.bv, ptr %i.bv, align 16
  %i.bw = getelementptr i8, ptr %i.bo, i64 56
  store volatile ptr %i.bv, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.bx = load i64, ptr %i.br, align 16
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %.084126.i, align 4
  %i.bz = xor i64 %.192122.i, 524288              ; 3 uses
  %i.ca = load ptr, ptr %i.ax, align 8            ; 2 uses
  store ptr %i.bt, ptr %i.ax, align 8
  store ptr %i.aw, ptr %i.bt, align 8
  store ptr %i.ca, ptr %i.bu, align 16
  store volatile ptr %i.bt, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %spec.select104.i to i32
  %i.cc = shl nuw i32 %spec.select105.i, 21
  %i.cd = add i32 %i.cc, -2097152
  %i.ce = trunc nuw nsw i64 %i.bz to i32
  %i.cf = or i32 %i.cd, %i.ce
  %i.cg = trunc i64 %.085125.i to i32
  %i.ch = getelementptr i8, ptr %i.bo, i64 4
  store i32 %i.cb, ptr %i.ch, align 4
  %i.ci = getelementptr i8, ptr %i.bo, i64 8
  store i32 %i.cf, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.bo, i64 12
  store i32 %i.cg, ptr %i.cj, align 4
  %i.ck = zext nneg i32 %spec.select105.i to i64
  %i.cl = add i64 %.085125.i, %i.ck
  %i.cm = sub nsw i32 %.087124.i, %spec.select105.i ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %.192.lcssa.i = phi i64 [ %.091.i, %bb.f ], [ %i.bz, %bb.h ]
  %.2.lcssa.i = phi i64 [ %.190.i, %bb.f ], [ %spec.select104.i, %bb.h ]
  %.084.lcssa.i = phi ptr [ %i.au, %bb.f ], [ %i.bo, %bb.h ]
  %i.co = getelementptr i8, ptr %0, i64 608       ; 2 uses
  %.val106.i = load ptr, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i64 0, ptr %i.c, align 8, !annotation !20
  %i.cp = call ptr @dma_pool_alloc(ptr noundef %.val106.i, i32 noundef 2080, ptr noundef nonnull %i.c) #11 ; 11 uses
  %.not.i110.i = icmp eq ptr %i.cp, null
  br i1 %.not.i110.i, label %uhci_alloc_td.exit111.thread.i, label %bb.i

uhci_alloc_td.exit111.thread.i:                   ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.o

bb.i:                                             ; preds = %._crit_edge.i
  %i.cq = load i64, ptr %i.c, align 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 16     ; 2 uses
  store i64 %i.cq, ptr %i.cr, align 16
  %i.cs = getelementptr i8, ptr %i.cp, i64 40
  store i32 -1, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %i.cp, i64 24     ; 6 uses
  store volatile ptr %i.ct, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %i.cp, i64 32     ; 2 uses
  store volatile ptr %i.ct, ptr %i.cu, align 16
  %i.cv = getelementptr i8, ptr %i.cp, i64 48     ; 3 uses
  store volatile ptr %i.cv, ptr %i.cv, align 16
  %i.cw = getelementptr i8, ptr %i.cp, i64 56
  store volatile ptr %i.cv, ptr %i.cw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.cx = load i64, ptr %i.cr, align 16
  %i.cy = trunc i64 %i.cx to i32
  store i32 %i.cy, ptr %.084.lcssa.i, align 4
  %i.cz = load ptr, ptr %i.ax, align 8            ; 2 uses
  store ptr %i.ct, ptr %i.ax, align 8
  store ptr %i.aw, ptr %i.ct, align 8
  store ptr %i.cz, ptr %i.cu, align 16
  store volatile ptr %i.ct, ptr %i.cz, align 8
  %i.da = trunc nuw nsw i64 %.2.lcssa.i to i32
  %i.db = or i32 %i.da, 16777216
  %i.dc = trunc nuw nsw i64 %.192.lcssa.i to i32
  %i.dd = and i32 %i.dc, 1572859
  %i.de = xor i32 %i.dd, -1572728
  %i.df = getelementptr i8, ptr %i.cp, i64 4
  store i32 %i.db, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.cp, i64 8
  store i32 %i.de, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.dh, align 4
  %.val.i = load ptr, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 0, ptr %i.b, align 8, !annotation !20
  %i.di = call ptr @dma_pool_alloc(ptr noundef %.val.i, i32 noundef 2080, ptr noundef nonnull %i.b) #11 ; 11 uses
  %.not.i112.i = icmp eq ptr %i.di, null
  br i1 %.not.i112.i, label %uhci_alloc_td.exit113.thread.i, label %bb.j

uhci_alloc_td.exit113.thread.i:                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.dj = load i64, ptr %i.b, align 8
  %i.dk = getelementptr i8, ptr %i.di, i64 16     ; 2 uses
  store i64 %i.dj, ptr %i.dk, align 16
  %i.dl = getelementptr i8, ptr %i.di, i64 40
  store i32 -1, ptr %i.dl, align 8
  %i.dm = getelementptr i8, ptr %i.di, i64 24     ; 3 uses
  store volatile ptr %i.dm, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %i.di, i64 32
  store volatile ptr %i.dm, ptr %i.dn, align 16
  %i.do = getelementptr i8, ptr %i.di, i64 48     ; 3 uses
  store volatile ptr %i.do, ptr %i.do, align 16
  %i.dp = getelementptr i8, ptr %i.di, i64 56
  store volatile ptr %i.do, ptr %i.dp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.dq = load i64, ptr %i.dk, align 16
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %i.cp, align 16
  %i.ds = getelementptr i8, ptr %i.di, i64 4
  store i32 0, ptr %i.ds, align 4
  %i.dt = getelementptr i8, ptr %i.di, i64 8
  store i32 -2096927, ptr %i.dt, align 8
  %i.du = getelementptr i8, ptr %i.di, i64 12
  store i32 0, ptr %i.du, align 4
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !64
  %i.dv = load ptr, ptr %i.at, align 16
  %i.dw = getelementptr i8, ptr %i.dv, i64 4      ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = or i32 %i.dx, 8388608
  store i32 %i.dy, ptr %i.dw, align 4
  store ptr %i.di, ptr %i.at, align 16
  %i.dz = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 28
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr i8, ptr %i.dz, i64 24
  %i.ee = load i32, ptr %i.ed, align 8
  %.not100.i = icmp eq i32 %i.ee, 7
  br i1 %.not100.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val109.i = load ptr, ptr %i.l, align 8
  %i.ef = getelementptr i8, ptr %.val109.i, i64 48 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 8
  %i.eh = or i8 %i.eg, 1
  store i8 %i.eh, ptr %i.ef, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.083.i = phi i32 [ 21, %bb.l ], [ 20, %bb.k ], [ 20, %bb.j ]
  %i.ei = getelementptr i8, ptr %.050, i64 112
  %i.ej = load i32, ptr %i.ei, align 16
  %.not101.i = icmp eq i32 %i.ej, 3
  br i1 %.not101.i, label %uhci_submit_control.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = getelementptr i8, ptr %.050, i64 120
  store i32 %.083.i, ptr %i.ek, align 8
  br label %uhci_submit_control.exit

bb.o:                                             ; preds = %uhci_alloc_td.exit113.thread.i, %uhci_alloc_td.exit111.thread.i, %.thread.i
  %i.el = load ptr, ptr %i.at, align 16           ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 24     ; 4 uses
  %i.en = getelementptr i8, ptr %i.el, i64 32     ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  store ptr %i.eo, ptr %i.eq, align 8
  store volatile ptr %i.ep, ptr %i.eo, align 8
  store volatile ptr %i.em, ptr %i.em, align 8
  store volatile ptr %i.em, ptr %i.en, align 8
  br label %bb.br

bb.p:                                             ; preds = %bb.e
  %i.er = getelementptr i8, ptr %1, i64 64
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr i8, ptr %i.es, i64 28
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.br, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ew = getelementptr i8, ptr %.050, i64 112
  %i.ex = load i32, ptr %i.ew, align 16
  %.not.i61 = icmp eq i32 %i.ex, 3
  br i1 %.not.i61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ey = getelementptr i8, ptr %.050, i64 120
  store i32 22, ptr %i.ey, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ez = tail call fastcc i32 @uhci_submit_common(ptr noundef readonly %i.e, ptr noundef readonly %1, ptr noundef nonnull %.050) #14, !srcloc !65 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.t, label %bb.br

bb.t:                                             ; preds = %bb.s
  %.val.i62 = load ptr, ptr %i.l, align 8
  %i.fb = getelementptr i8, ptr %.val.i62, i64 48 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8
  %i.fd = or i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 8
  br label %uhci_submit_control.exit

bb.u:                                             ; preds = %bb.e
  %i.fe = getelementptr i8, ptr %.050, i64 124    ; 4 uses
  %i.ff = load i8, ptr %i.fe, align 4
  %i.fg = and i8 %i.ff, 16
  %.not.i63 = icmp eq i8 %i.fg, 0
  br i1 %.not.i63, label %.preheader44.i, label %bb.aj

.preheader44.i:                                   ; preds = %bb.u
  %i.fh = getelementptr i8, ptr %1, i64 168
  %i.fi = load i32, ptr %i.fh, align 8            ; 8 uses
  %.not36.i = icmp sgt i32 %i.fi, 127             ; 2 uses
  br i1 %.not36.i, label %.preheader.i, label %bb.v

.preheader.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.preheader44.i
  %i.fj = phi i1 [ true, %.preheader44.i ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ false, %bb.ab ]
  %i.fk = phi i1 [ true, %.preheader44.i ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ]
  %i.fl = phi i1 [ true, %.preheader44.i ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ]
  %i.fm = phi i1 [ true, %.preheader44.i ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ]
  %i.fn = phi i1 [ true, %.preheader44.i ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ]
  %i.fo = phi i1 [ true, %.preheader44.i ], [ true, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ]
  %.03148.lcssa.i = phi i32 [ 7, %.preheader44.i ], [ 6, %bb.v ], [ 5, %bb.w ], [ 4, %bb.x ], [ 3, %bb.y ], [ 2, %bb.z ], [ 1, %bb.aa ], [ 0, %bb.ab ] ; 16 uses
  %i.fp = getelementptr i8, ptr %.050, i64 100    ; 8 uses
  %i.fq = getelementptr i8, ptr %.050, i64 120    ; 8 uses
  %i.fr = getelementptr i8, ptr %.050, i64 104    ; 8 uses
  %i.fs = getelementptr i8, ptr %0, i64 920       ; 16 uses
  %i.ft = getelementptr i8, ptr %.050, i64 106
  %i.fu = load i16, ptr %i.ft, align 2
  %i.fv = sext i16 %i.fu to i32
  %invariant.op.i = sub nsw i32 900, %i.fv        ; 8 uses
  %i.fw = shl nuw nsw i32 1, %.03148.lcssa.i      ; 4 uses
  store i32 %i.fw, ptr %i.fp, align 4
  %i.fx = sub nuw nsw i32 9, %.03148.lcssa.i
  store i32 %i.fx, ptr %i.fq, align 8
  %i.fy = trunc nuw nsw i32 %i.fw to i16
  %i.fz = lshr i16 %i.fy, 1
  %i.ga = and i16 %i.fz, 31                       ; 3 uses
  store i16 %i.ga, ptr %i.fr, align 8
  %i.gb = zext nneg i16 %i.ga to i32
  %i.gc = zext nneg i16 %i.ga to i64
  %i.gd = getelementptr [2 x i8], ptr %i.fs, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = sext i16 %i.ge to i32                   ; 2 uses
  %.016.i.i.i = add nuw nsw i32 %i.fw, %i.gb      ; 2 uses
  %i.gg = icmp samesign ult i32 %.016.i.i.i, 32
  br i1 %i.gg, label %.lr.ph.i.i.i, label %uhci_check_bandwidth.exit.i

bb.v:                                             ; preds = %.preheader44.i
  %.not36.1.i = icmp slt i32 %i.fi, 64
  br i1 %.not36.1.i, label %bb.w, label %.preheader.i

bb.w:                                             ; preds = %bb.v
  %.not36.2.i = icmp slt i32 %i.fi, 32
  br i1 %.not36.2.i, label %bb.x, label %.preheader.i

bb.x:                                             ; preds = %bb.w
  %.not36.3.i = icmp slt i32 %i.fi, 16
  br i1 %.not36.3.i, label %bb.y, label %.preheader.i

bb.y:                                             ; preds = %bb.x
  %.not36.4.i = icmp slt i32 %i.fi, 8
  br i1 %.not36.4.i, label %bb.z, label %.preheader.i

bb.z:                                             ; preds = %bb.y
  %.not36.5.i = icmp slt i32 %i.fi, 4
  br i1 %.not36.5.i, label %bb.aa, label %.preheader.i

bb.aa:                                            ; preds = %bb.z
  %.not36.6.i = icmp slt i32 %i.fi, 2
  br i1 %.not36.6.i, label %bb.ab, label %.preheader.i

bb.ab:                                            ; preds = %bb.aa
  %.not36.7.not.i = icmp eq i32 %i.fi, 1
  br i1 %.not36.7.not.i, label %.preheader.i, label %bb.br

end_hunk_0
begin_hunk_1_@_raw_spin_unlock_irqrestore

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dma_pool_create_node(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @timer_delete_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @uhci_submit_common(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val170 = load i16, ptr %i.f, align 1
  %i.g = and i16 %.val170, 2047
  %i.h = zext nneg i16 %i.g to i32                ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp slt i32 %i.j, 0
  br i1 %i.m, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = and i32 %i.o, 524032
  %i.q = and i32 %i.o, 128                        ; 2 uses
  %.not = icmp eq i32 %i.q, 0                     ; 2 uses
  %i.r = select i1 %.not, i32 225, i32 105
  %i.s = or disjoint i32 %i.r, %i.p               ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 60
  %.lobit = lshr exact i32 %i.q, 7
  %i.w = xor i32 %.lobit, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.o, 15
  %i.ab = and i32 %i.aa, 15
  %i.ac = lshr i32 %i.z, %i.ab
  %i.ad = and i32 %i.ac, 1
  %i.ae = getelementptr i8, ptr %i.u, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 1
  %spec.select = select i1 %i.ag, i64 469762048, i64 402653184 ; 2 uses
  %i.ah = or disjoint i64 %spec.select, 536870912
  %.1119 = select i1 %.not, i64 %spec.select, i64 %i.ah
  %i.ai = getelementptr i8, ptr %1, i64 128
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ne i32 %i.j, 0
  %i.al = icmp sgt i32 %i.aj, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr i8, ptr %1, i64 112
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %i.an, i64 24
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.j)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = getelementptr i8, ptr %1, i64 104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0142 = phi i32 [ %i.ar, %bb.c ], [ %i.j, %bb.d ]
  %.0138.in = phi ptr [ %i.ao, %bb.c ], [ %i.as, %bb.d ]
  %.0128 = phi ptr [ %i.an, %bb.c ], [ null, %bb.d ]
  %i.at = getelementptr i8, ptr %2, i64 64        ; 4 uses
  %i.au = load ptr, ptr %i.at, align 16
  %i.av = getelementptr i8, ptr %1, i64 92        ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.ax = getelementptr i8, ptr %i.l, i64 32      ; 2 uses
  %i.ay = getelementptr i8, ptr %i.l, i64 40      ; 4 uses
  br label %.outer

.outer:                                           ; preds = %sg_next.exit, %bb.e
  %.1143.ph = phi i32 [ %i.cr, %sg_next.exit ], [ %.0142, %bb.e ]
  %.1139.ph.in = phi ptr [ %i.co, %sg_next.exit ], [ %.0138.in, %bb.e ]
  %.0135.ph = phi ptr [ %.1, %sg_next.exit ], [ null, %bb.e ]
  %.0132.ph = phi i32 [ %i.ca, %sg_next.exit ], [ %i.ad, %bb.e ]
  %.1129.ph = phi ptr [ %.06.i, %sg_next.exit ], [ %.0128, %bb.e ] ; 2 uses
  %.0125.ph = phi i32 [ %i.cg, %sg_next.exit ], [ %i.aj, %bb.e ]
  %.0122.ph = phi i32 [ %i.ce, %sg_next.exit ], [ %i.j, %bb.e ]
  %.2120.ph = phi i64 [ %i.bz, %sg_next.exit ], [ %.1119, %bb.e ]
  %.0116.ph = phi ptr [ %.1, %sg_next.exit ], [ %i.au, %bb.e ]
  %.1139.ph = load i64, ptr %.1139.ph.in, align 8
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.k
  %.1143 = phi i32 [ %i.cd, %bb.k ], [ %.1143.ph, %.outer ]
  %.1139 = phi i64 [ %i.cc, %bb.k ], [ %.1139.ph, %.outer ] ; 2 uses
  %.0135 = phi ptr [ %.1, %bb.k ], [ %.0135.ph, %.outer ] ; 2 uses
  %.0132 = phi i32 [ %i.ca, %bb.k ], [ %.0132.ph, %.outer ] ; 3 uses
  %.0122 = phi i32 [ %i.ce, %bb.k ], [ %.0122.ph, %.outer ] ; 3 uses
  %.2120 = phi i64 [ %i.bz, %bb.k ], [ %.2120.ph, %.outer ] ; 3 uses
  %.0116 = phi ptr [ %.1, %bb.k ], [ %.0116.ph, %.outer ]
  %.not157 = icmp sgt i32 %.0122, %i.h
  br i1 %.not157, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.av, align 4
  %i.ba = and i32 %i.az, 1
  %.not158 = icmp eq i32 %i.ba, 0
  %i.bb = and i64 %.2120, -536870913
  %spec.select167 = select i1 %.not158, i64 %i.bb, i64 %.2120
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3121 = phi i64 [ %spec.select167, %bb.g ], [ %.2120, %bb.f ] ; 2 uses
  %.0117 = phi i32 [ %.0122, %bb.g ], [ %i.h, %bb.f ] ; 3 uses
  %.not159 = icmp eq ptr %.0135, null
  br i1 %.not159, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val169 = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i64 0, ptr %i.c, align 8, !annotation !20
  %i.bc = call ptr @dma_pool_alloc(ptr noundef %.val169, i32 noundef 2080, ptr noundef nonnull %i.c) #11 ; 8 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %.thread192, label %bb.j

.thread192:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.c, align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 16     ; 2 uses
  store i64 %i.bd, ptr %i.be, align 16
  %i.bf = getelementptr i8, ptr %i.bc, i64 40
  store i32 -1, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.bc, i64 24     ; 3 uses
  store volatile ptr %i.bg, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.bc, i64 32
  store volatile ptr %i.bg, ptr %i.bh, align 16
  %i.bi = getelementptr i8, ptr %i.bc, i64 48     ; 3 uses
  store volatile ptr %i.bi, ptr %i.bi, align 16
  %i.bj = getelementptr i8, ptr %i.bc, i64 56
  store volatile ptr %i.bi, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bk = load i64, ptr %i.be, align 16
  %i.bl = trunc i64 %i.bk to i32
  store i32 %i.bl, ptr %.0135, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1 = phi ptr [ %i.bc, %bb.j ], [ %.0116, %bb.h ] ; 13 uses
  %i.bm = getelementptr i8, ptr %.1, i64 24       ; 3 uses
  %i.bn = load ptr, ptr %i.ay, align 8            ; 2 uses
  store ptr %i.bm, ptr %i.ay, align 8
  store ptr %i.ax, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %.1, i64 32
  store ptr %i.bn, ptr %i.bo, align 8
  store volatile ptr %i.bm, ptr %i.bn, align 8
  %i.bp = trunc nuw nsw i64 %.3121 to i32         ; 4 uses
  %i.bq = shl i32 %.0117, 21
  %i.br = add i32 %i.bq, -2097152
  %i.bs = shl nuw nsw i32 %.0132, 19
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = or disjoint i32 %i.bt, %i.s
  %i.bv = trunc i64 %.1139 to i32
  %i.bw = getelementptr i8, ptr %.1, i64 4
  store i32 %i.bp, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %.1, i64 8
  store i32 %i.bu, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %.1, i64 12
  store i32 %i.bv, ptr %i.by, align 4
  %i.bz = or i64 %.3121, 8388608                  ; 3 uses
  %i.ca = xor i32 %.0132, 1                       ; 6 uses
  %i.cb = zext i32 %.0117 to i64
  %i.cc = add i64 %.1139, %i.cb                   ; 2 uses
  %i.cd = sub i32 %.1143, %.0117                  ; 2 uses
  %i.ce = sub i32 %.0122, %i.h                    ; 5 uses
  %i.cf = icmp slt i32 %i.cd, 1
  br i1 %i.cf, label %bb.l, label %bb.f

bb.l:                                             ; preds = %bb.k
  %i.cg = add i32 %.0125.ph, -1                   ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 1
  %i.ci = icmp slt i32 %i.ce, 1
  %or.cond3 = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond3, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load i64, ptr %.1129.ph, align 8
  %i.cj = and i64 %.val.i, 2
  %.not.i171 = icmp eq i64 %i.cj, 0
  br i1 %.not.i171, label %bb.n, label %sg_next.exit

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr i8, ptr %.1129.ph, i64 32 ; 2 uses
  %.val7.i = load i64, ptr %i.ck, align 8         ; 2 uses
  %i.cl = trunc i64 %.val7.i to i1
  br i1 %i.cl, label %bb.o, label %sg_next.exit, !prof !19

bb.o:                                             ; preds = %bb.n
  %i.cm = and i64 %.val7.i, -4
  %i.cn = inttoptr i64 %i.cm to ptr
  br label %sg_next.exit

sg_next.exit:                                     ; preds = %bb.m, %bb.n, %bb.o
  %.06.i = phi ptr [ null, %bb.m ], [ %i.cn, %bb.o ], [ %i.ck, %bb.n ] ; 3 uses
  %i.co = getelementptr i8, ptr %.06.i, i64 16
  %i.cp = getelementptr i8, ptr %.06.i, i64 24
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.ce)
  br label %.outer

bb.p:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.av, align 4
  %i.ct = and i32 %i.cs, 64
  %.not161 = icmp eq i32 %i.ct, 0
  br i1 %.not161, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = load i32, ptr %i.n, align 8
  %i.cv = and i32 %i.cu, 128
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = icmp eq i32 %i.ce, 0
  %or.cond5 = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cy = load i32, ptr %i.i, align 8
  %.not162 = icmp eq i32 %i.cy, 0
  br i1 %.not162, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val168 = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 0, ptr %i.b, align 8, !annotation !20
  %i.cz = call ptr @dma_pool_alloc(ptr noundef %.val168, i32 noundef 2080, ptr noundef nonnull %i.b) #11 ; 11 uses
  %.not.i172 = icmp eq ptr %i.cz, null
  br i1 %.not.i172, label %uhci_alloc_td.exit173.thread, label %bb.t

uhci_alloc_td.exit173.thread:                     ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.da = load i64, ptr %i.b, align 8
  %i.db = getelementptr i8, ptr %i.cz, i64 16     ; 2 uses
  store i64 %i.da, ptr %i.db, align 16
  %i.dc = getelementptr i8, ptr %i.cz, i64 40
  store i32 -1, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %i.cz, i64 24     ; 6 uses
  store volatile ptr %i.dd, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %i.cz, i64 32     ; 2 uses
  store volatile ptr %i.dd, ptr %i.de, align 16
  %i.df = getelementptr i8, ptr %i.cz, i64 48     ; 3 uses
  store volatile ptr %i.df, ptr %i.df, align 16
  %i.dg = getelementptr i8, ptr %i.cz, i64 56
  store volatile ptr %i.df, ptr %i.dg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.dh = load i64, ptr %i.db, align 16
  %i.di = trunc i64 %i.dh to i32
  store i32 %i.di, ptr %.1, align 4
  %i.dj = load ptr, ptr %i.ay, align 8            ; 2 uses
  store ptr %i.dd, ptr %i.ay, align 8
  store ptr %i.ax, ptr %i.dd, align 8
  store ptr %i.dj, ptr %i.de, align 16
  store volatile ptr %i.dd, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.bz to i32          ; 2 uses
  %i.dl = shl nuw nsw i32 %i.ca, 19
  %i.dm = or disjoint i32 %i.dl, %i.s
  %i.dn = or disjoint i32 %i.dm, -2097152
  %i.do = trunc i64 %i.cc to i32
  %i.dp = getelementptr i8, ptr %i.cz, i64 4
  store i32 %i.dk, ptr %i.dp, align 4
  %i.dq = getelementptr i8, ptr %i.cz, i64 8
  store i32 %i.dn, ptr %i.dq, align 8
  %i.dr = getelementptr i8, ptr %i.cz, i64 12
  store i32 %i.do, ptr %i.dr, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q, %bb.p
  %i.ds = phi i32 [ %i.dk, %bb.t ], [ %i.bp, %bb.r ], [ %i.bp, %bb.q ], [ %i.bp, %bb.p ]
  %.2137 = phi ptr [ %i.cz, %bb.t ], [ %.1, %bb.r ], [ %.1, %bb.q ], [ %.1, %bb.p ] ; 2 uses
  %.2134 = phi i32 [ %.0132, %bb.t ], [ %i.ca, %bb.r ], [ %i.ca, %bb.q ], [ %i.ca, %bb.p ]
  %i.dt = getelementptr i8, ptr %.2137, i64 4
  %i.du = or i32 %i.ds, 16777216
  store i32 %i.du, ptr %i.dt, align 4
  %.val = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !annotation !20
  %i.dv = call ptr @dma_pool_alloc(ptr noundef %.val, i32 noundef 2080, ptr noundef nonnull %i.a) #11 ; 11 uses
  %.not.i174 = icmp eq ptr %i.dv, null
  br i1 %.not.i174, label %uhci_alloc_td.exit175.thread, label %bb.v

uhci_alloc_td.exit175.thread:                     ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = load i64, ptr %i.a, align 8
  %i.dx = getelementptr i8, ptr %i.dv, i64 16     ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 16
  %i.dy = getelementptr i8, ptr %i.dv, i64 40
  store i32 -1, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %i.dv, i64 24     ; 3 uses
  store volatile ptr %i.dz, ptr %i.dz, align 8
  %i.ea = getelementptr i8, ptr %i.dv, i64 32
  store volatile ptr %i.dz, ptr %i.ea, align 16
  %i.eb = getelementptr i8, ptr %i.dv, i64 48     ; 3 uses
  store volatile ptr %i.eb, ptr %i.eb, align 16
  %i.ec = getelementptr i8, ptr %i.dv, i64 56
  store volatile ptr %i.eb, ptr %i.ec, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ed = load i64, ptr %i.dx, align 16
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %.2137, align 4
  %i.ef = getelementptr i8, ptr %i.dv, i64 4
  store i32 0, ptr %i.ef, align 4
  %i.eg = getelementptr i8, ptr %i.dv, i64 8
  store i32 -2096927, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.eh, align 4
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !131
  %i.ei = load ptr, ptr %i.at, align 16
  %i.ej = getelementptr i8, ptr %i.ei, i64 4      ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = or i32 %i.ek, 8388608
  store i32 %i.el, ptr %i.ej, align 4
  store ptr %i.dv, ptr %i.at, align 16
  %i.em = load ptr, ptr %i.t, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 60
  %i.eo = load i32, ptr %i.n, align 8             ; 2 uses
  %i.ep = lshr i32 %i.eo, 7
  %.lobit166 = and i32 %i.ep, 1
  %i.eq = xor i32 %.lobit166, 1
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr [4 x i8], ptr %i.en, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = lshr i32 %i.eo, 15
  %i.ev = and i32 %i.eu, 15                       ; 2 uses
  %i.ew = shl nuw nsw i32 1, %i.ev
  %i.ex = xor i32 %i.ew, -1
  %i.ey = and i32 %i.et, %i.ex
  %i.ez = shl nuw nsw i32 %.2134, %i.ev
  %i.fa = or i32 %i.ey, %i.ez
  store i32 %i.fa, ptr %i.es, align 4
  br label %bb.x

bb.w:                                             ; preds = %uhci_alloc_td.exit175.thread, %uhci_alloc_td.exit173.thread, %.thread192
  %i.fb = load ptr, ptr %i.at, align 16           ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 24     ; 4 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 32     ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = load ptr, ptr %i.fc, align 8            ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  store ptr %i.fe, ptr %i.fg, align 8
  store volatile ptr %i.ff, ptr %i.fe, align 8
  store volatile ptr %i.fc, ptr %i.fc, align 8
  store volatile ptr %i.fc, ptr %i.fd, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.w, %bb.v
  %.0 = phi i32 [ -12, %bb.w ], [ -22, %bb.a ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc void @uhci_reserve_bandwidth(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 106
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr i8, ptr %1, i64 104
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i16 %i.e, 32
  br i1 %i.f, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 332
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = sext i16 %i.e to i32
  %i.h = getelementptr i8, ptr %0, i64 336
  %i.i = getelementptr i8, ptr %0, i64 332        ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 100
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.015 = phi i32 [ %i.g, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  %i.k = sext i32 %.015 to i64
  %i.l = getelementptr [2 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = load i16, ptr %i.l, align 2
  %i.n = add i16 %i.m, %i.b
  store i16 %i.n, ptr %i.l, align 2
  %i.o = load i32, ptr %i.i, align 4
  %i.p = add i32 %i.o, %i.c                       ; 2 uses
  store i32 %i.p, ptr %i.i, align 4
  %i.q = load i32, ptr %i.j, align 4
  %i.r = add i32 %i.q, %.015                      ; 2 uses
  %i.s = icmp slt i32 %i.r, 32
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %i.t = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.p, %bb.b ]
  %i.u = sdiv i32 %i.t, 32
  %i.v = getelementptr i8, ptr %0, i64 -480
  store i32 %i.u, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %1, i64 116
  %i.x = load i32, ptr %i.w, align 4
  switch i32 %i.x, label %bb.e [
    i32 3, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %0, i64 -476       ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ab = getelementptr i8, ptr %0, i64 -472      ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %i.ae = getelementptr i8, ptr %1, i64 124       ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = or i8 %i.af, 16
  store i8 %i.ag, ptr %i.ae, align 4
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @uhci_check_ports(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not68 = icmp eq i32 %i.b, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 272        ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 248
  %i.e = getelementptr i8, ptr %0, i64 264        ; 2 uses
end_hunk_1
