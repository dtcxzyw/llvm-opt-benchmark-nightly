Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/uhci-hcd?download=true
inline.NumInlined: 432
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@uhci_submit_common:bb.a
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
  %i.bt = or i32 %i.bs, %i.br
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
  %i.cz = call ptr @dma_pool_alloc(ptr noundef %.val168, i32 noundef 2080, ptr noundef nonnull %i.b) #11 ; 10 uses
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
  %i.dk = trunc nuw nsw i64 %i.bz to i32
  %i.dl = shl nuw nsw i32 %i.ca, 19
  %i.dm = or disjoint i32 %i.dl, %i.s
  %i.dn = or i32 %i.dm, -2097152
  %i.do = trunc i64 %i.cc to i32
  %i.dp = getelementptr i8, ptr %i.cz, i64 8
  store i32 %i.dn, ptr %i.dp, align 8
  %i.dq = getelementptr i8, ptr %i.cz, i64 12
  store i32 %i.do, ptr %i.dq, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q, %bb.p
  %i.dr = phi i32 [ %i.dk, %bb.t ], [ %i.bp, %bb.r ], [ %i.bp, %bb.q ], [ %i.bp, %bb.p ]
  %.2137 = phi ptr [ %i.cz, %bb.t ], [ %.1, %bb.r ], [ %.1, %bb.q ], [ %.1, %bb.p ] ; 2 uses
  %.2134 = phi i32 [ %.0132, %bb.t ], [ %i.ca, %bb.r ], [ %i.ca, %bb.q ], [ %i.ca, %bb.p ]
  %i.ds = getelementptr i8, ptr %.2137, i64 4
  %i.dt = or i32 %i.dr, 16777216
  store i32 %i.dt, ptr %i.ds, align 4
  %.val = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !annotation !20
  %i.du = call ptr @dma_pool_alloc(ptr noundef %.val, i32 noundef 2080, ptr noundef nonnull %i.a) #11 ; 11 uses
  %.not.i174 = icmp eq ptr %i.du, null
  br i1 %.not.i174, label %uhci_alloc_td.exit175.thread, label %bb.v

uhci_alloc_td.exit175.thread:                     ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dv = load i64, ptr %i.a, align 8
  %i.dw = getelementptr i8, ptr %i.du, i64 16     ; 2 uses
  store i64 %i.dv, ptr %i.dw, align 16
  %i.dx = getelementptr i8, ptr %i.du, i64 40
  store i32 -1, ptr %i.dx, align 8
  %i.dy = getelementptr i8, ptr %i.du, i64 24     ; 3 uses
  store volatile ptr %i.dy, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %i.du, i64 32
  store volatile ptr %i.dy, ptr %i.dz, align 16
  %i.ea = getelementptr i8, ptr %i.du, i64 48     ; 3 uses
  store volatile ptr %i.ea, ptr %i.ea, align 16
  %i.eb = getelementptr i8, ptr %i.du, i64 56
  store volatile ptr %i.ea, ptr %i.eb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ec = load i64, ptr %i.dw, align 16
  %i.ed = trunc i64 %i.ec to i32
  store i32 %i.ed, ptr %.2137, align 4
  %i.ee = getelementptr i8, ptr %i.du, i64 4
  store i32 0, ptr %i.ee, align 4
  %i.ef = getelementptr i8, ptr %i.du, i64 8
  store i32 -2096927, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %i.du, i64 12
  store i32 0, ptr %i.eg, align 4
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !131
  %i.eh = load ptr, ptr %i.at, align 16
  %i.ei = getelementptr i8, ptr %i.eh, i64 4      ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = or i32 %i.ej, 8388608
  store i32 %i.ek, ptr %i.ei, align 4
  store ptr %i.du, ptr %i.at, align 16
  %i.el = load ptr, ptr %i.t, align 8
  %i.em = getelementptr i8, ptr %i.el, i64 60
  %i.en = load i32, ptr %i.n, align 8             ; 2 uses
  %i.eo = lshr i32 %i.en, 7
  %.lobit166 = and i32 %i.eo, 1
  %i.ep = xor i32 %.lobit166, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr [4 x i8], ptr %i.em, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4
  %i.et = lshr i32 %i.en, 15
  %i.eu = and i32 %i.et, 15                       ; 2 uses
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = xor i32 %i.ev, -1
  %i.ex = and i32 %i.es, %i.ew
  %i.ey = shl nuw nsw i32 %.2134, %i.eu
  %i.ez = or i32 %i.ex, %i.ey
  store i32 %i.ez, ptr %i.er, align 4
  br label %bb.x

bb.w:                                             ; preds = %uhci_alloc_td.exit175.thread, %uhci_alloc_td.exit173.thread, %.thread192
  %i.fa = load ptr, ptr %i.at, align 16           ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 24     ; 4 uses
  %i.fc = getelementptr i8, ptr %i.fa, i64 32     ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %i.fe = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  store ptr %i.fd, ptr %i.ff, align 8
  store volatile ptr %i.fe, ptr %i.fd, align 8
  store volatile ptr %i.fb, ptr %i.fb, align 8
  store volatile ptr %i.fb, ptr %i.fc, align 8
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
  %i.f = getelementptr i8, ptr %0, i64 -584
  %i.g = getelementptr i8, ptr %0, i64 -400
  br label %bb.b
end_hunk_0
