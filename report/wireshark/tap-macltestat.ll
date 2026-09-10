Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tap-macltestat?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mac_lte_stat_packet:bb.a
  %i.j = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr i8, ptr %3, i64 309
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 8
  br label %update_ueid_rnti_counts.exit.thread153

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8
  %i.v = getelementptr i8, ptr %3, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 4
  br label %update_ueid_rnti_counts.exit.thread153

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  br label %update_ueid_rnti_counts.exit.thread153

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr i8, ptr %3, i64 308
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 8
  br label %update_ueid_rnti_counts.exit.thread153

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.am = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.an = load i8, ptr %i.am, align 8
  switch i8 %i.an, label %bb.j [
    i8 0, label %bb.h
    i8 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %3, i64 18
  %i.ar = load i16, ptr %i.aq, align 2
  %. = tail call i16 @llvm.umax.i16(i16 %i.ap, i16 %i.ar)
  store i16 %., ptr %i.ao, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %0, i64 38        ; 2 uses
  %i.at = load i16, ptr %i.as, align 2
  %i.au = getelementptr i8, ptr %3, i64 18
  %i.av = load i16, ptr %i.au, align 2
  %.138 = tail call i16 @llvm.umax.i16(i16 %i.at, i16 %i.av)
  store i16 %.138, ptr %i.as, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.aw = getelementptr i8, ptr %0, i64 131120    ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not127 = icmp eq ptr %i.ax, null
  br i1 %.not127, label %bb.k, label %.preheader158

.preheader158:                                    ; preds = %bb.j
  %i.ay = load i8, ptr %3, align 8
  %i.az = getelementptr i8, ptr %3, i64 2         ; 3 uses
  %i.ba = getelementptr i8, ptr %3, i64 4         ; 3 uses
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %alloc_mac_lte_ep.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call noalias dereferenceable_or_null(136) ptr @g_malloc(i64 noundef 136) #8 ; 13 uses
  %.not35.i = icmp eq ptr %i.bb, null
  br i1 %.not35.i, label %alloc_mac_lte_ep.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr i8, ptr %3, i64 2
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = getelementptr i8, ptr %i.bb, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = load i8, ptr %i.c, align 2
  %i.bg = getelementptr i8, ptr %i.bb, i64 12
  store i8 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %3, i64 4
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = getelementptr i8, ptr %i.bb, i64 14
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = getelementptr i8, ptr %i.bb, i64 20
  store i32 0, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %i.bb, i64 28
  store i32 0, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %i.bb, i64 24
  store i32 0, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.bb, i64 64
  %i.bo = getelementptr i8, ptr %i.bb, i64 120
  store i32 0, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bb, i64 124
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %i.bb, i64 128
  store i32 0, ptr %i.bq, align 8
  store ptr null, ptr %i.bb, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  br label %alloc_mac_lte_ep.exit

alloc_mac_lte_ep.exit:                            ; preds = %bb.k, %bb.l, %bb.m
  %.0.i = phi ptr [ %i.bb, %bb.m ], [ null, %bb.k ], [ null, %bb.l ] ; 3 uses
  store ptr %.0.i, ptr %i.aw, align 8
  %i.br = getelementptr i8, ptr %3, i64 2
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = getelementptr i8, ptr %3, i64 4
  %i.bu = load i16, ptr %i.bt, align 4
  %i.bv = getelementptr i8, ptr %0, i64 131110    ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2            ; 2 uses
  %i.bx = icmp eq i16 %i.bw, -1
  br i1 %i.bx, label %update_ueid_rnti_counts.exit, label %bb.n

bb.n:                                             ; preds = %alloc_mac_lte_ep.exit
  %i.by = getelementptr i8, ptr %0, i64 131112    ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp eq i16 %i.bz, -1
  br i1 %i.ca, label %update_ueid_rnti_counts.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr i8, ptr %0, i64 40
  %i.cc = zext i16 %i.bu to i64
  %i.cd = getelementptr i8, ptr %i.cb, i64 %i.cc  ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1
  %.not.i139 = icmp eq i8 %i.ce, 0
  br i1 %.not.i139, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.cd, align 1
  %i.cf = add nuw i16 %i.bw, 1
  store i16 %i.cf, ptr %i.bv, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr i8, ptr %0, i64 65575
  %i.ch = zext i16 %i.bs to i64
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch  ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1
  %.not11.i = icmp eq i8 %i.cj, 0
  br i1 %.not11.i, label %bb.r, label %update_ueid_rnti_counts.exit

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.ci, align 1
  %i.ck = add nuw i16 %i.bz, 1
  store i16 %i.ck, ptr %i.by, align 8
  br label %update_ueid_rnti_counts.exit

bb.s:                                             ; preds = %.preheader158, %bb.v
  %.0115160 = phi ptr [ %i.ax, %.preheader158 ], [ %i.cw, %bb.v ] ; 5 uses
  %i.cl = getelementptr i8, ptr %.0115160, i64 8
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = icmp eq i8 %i.cm, %i.ay
  br i1 %i.cn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr i8, ptr %.0115160, i64 10
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = load i16, ptr %i.az, align 2
  %i.cr = icmp eq i16 %i.cp, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr i8, ptr %.0115160, i64 14
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = load i16, ptr %i.ba, align 4
  %i.cv = icmp eq i16 %i.ct, %i.cu
  br i1 %i.cv, label %update_ueid_rnti_counts.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %i.cw = load ptr, ptr %.0115160, align 8        ; 2 uses
  %.not128 = icmp eq ptr %i.cw, null
  br i1 %.not128, label %bb.w, label %bb.s, !llvm.loop !9

bb.w:                                             ; preds = %bb.v
  %.not.i140 = icmp eq ptr %3, null
  br i1 %.not.i140, label %update_ueid_rnti_counts.exit.thread153, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = tail call noalias dereferenceable_or_null(136) ptr @g_malloc(i64 noundef 136) #8 ; 18 uses
  %.not35.i141 = icmp eq ptr %i.cx, null
  br i1 %.not35.i141, label %update_ueid_rnti_counts.exit.thread153, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = load i16, ptr %i.az, align 2
  %i.cz = getelementptr i8, ptr %i.cx, i64 10
  store i16 %i.cy, ptr %i.cz, align 2
  %i.da = load i8, ptr %i.c, align 2
  %i.db = getelementptr i8, ptr %i.cx, i64 12
  store i8 %i.da, ptr %i.db, align 4
  %i.dc = load i16, ptr %i.ba, align 4
  %i.dd = getelementptr i8, ptr %i.cx, i64 14
  store i16 %i.dc, ptr %i.dd, align 2
  %i.de = getelementptr i8, ptr %i.cx, i64 20
  store i32 0, ptr %i.de, align 4
  %i.df = getelementptr i8, ptr %i.cx, i64 28
  store i32 0, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.cx, i64 24
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %i.cx, i64 64
  %i.di = getelementptr i8, ptr %i.cx, i64 120
  store i32 0, ptr %i.di, align 8
  %i.dj = getelementptr i8, ptr %i.cx, i64 124
  store i32 0, ptr %i.dj, align 4
  %i.dk = getelementptr i8, ptr %i.cx, i64 128
  store i32 0, ptr %i.dk, align 8
  store ptr null, ptr %i.cx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  %i.dl = load ptr, ptr %i.aw, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0 = phi ptr [ %i.dl, %bb.y ], [ %i.dm, %bb.z ] ; 2 uses
  %i.dm = load ptr, ptr %.0, align 8              ; 2 uses
  %.not130 = icmp eq ptr %i.dm, null
  br i1 %.not130, label %bb.aa, label %bb.z, !llvm.loop !10

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cx, ptr %.0, align 8
  store ptr null, ptr %i.cx, align 8
  %i.dn = load i16, ptr %i.az, align 2
  %i.do = load i16, ptr %i.ba, align 4
  %i.dp = getelementptr i8, ptr %0, i64 131110    ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2            ; 2 uses
  %i.dr = icmp eq i16 %i.dq, -1
  br i1 %i.dr, label %update_ueid_rnti_counts.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr i8, ptr %0, i64 131112    ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 8            ; 2 uses
  %i.du = icmp eq i16 %i.dt, -1
  br i1 %i.du, label %update_ueid_rnti_counts.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr i8, ptr %0, i64 40
  %i.dw = zext i16 %i.do to i64
  %i.dx = getelementptr i8, ptr %i.dv, i64 %i.dw  ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1
  %.not.i144 = icmp eq i8 %i.dy, 0
  br i1 %.not.i144, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.dx, align 1
  %i.dz = add nuw i16 %i.dq, 1
  store i16 %i.dz, ptr %i.dp, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ea = getelementptr i8, ptr %0, i64 65575
  %i.eb = zext i16 %i.dn to i64
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.eb  ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1
  %.not11.i145 = icmp eq i8 %i.ed, 0
  br i1 %.not11.i145, label %bb.af, label %update_ueid_rnti_counts.exit.thread

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.ec, align 1
  %i.ee = add nuw i16 %i.dt, 1
  store i16 %i.ee, ptr %i.ds, align 8
  br label %update_ueid_rnti_counts.exit.thread

update_ueid_rnti_counts.exit:                     ; preds = %bb.r, %bb.q, %bb.n, %alloc_mac_lte_ep.exit
  %.not131 = icmp eq ptr %.0.i, null
  br i1 %.not131, label %update_ueid_rnti_counts.exit.thread153, label %update_ueid_rnti_counts.exit.thread

update_ueid_rnti_counts.exit.thread:              ; preds = %bb.u, %bb.af, %bb.ae, %bb.ab, %bb.aa, %update_ueid_rnti_counts.exit
  %.1114152 = phi ptr [ %.0.i, %update_ueid_rnti_counts.exit ], [ %i.cx, %bb.af ], [ %i.cx, %bb.ae ], [ %i.cx, %bb.ab ], [ %i.cx, %bb.aa ], [ %.0115160, %bb.u ] ; 21 uses
  %i.ef = load i8, ptr %3, align 8
  %i.eg = getelementptr i8, ptr %.1114152, i64 8
  store i8 %i.ef, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %3, i64 2
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = getelementptr i8, ptr %.1114152, i64 10
  store i16 %i.ei, ptr %i.ej, align 2
  %i.ek = getelementptr i8, ptr %3, i64 7         ; 3 uses
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = icmp ne i8 %i.el, 0
  %i.en = getelementptr i8, ptr %.1114152, i64 16
  %i.eo = zext i1 %i.em to i8
  store i8 %i.eo, ptr %i.en, align 8
  %i.ep = load i8, ptr %i.am, align 8
  %i.eq = icmp eq i8 %i.ep, 0
  %i.er = getelementptr i8, ptr %3, i64 17
  %i.es = load i8, ptr %i.er, align 1
  %.not135 = icmp eq i8 %i.es, 0                  ; 2 uses
  br i1 %i.eq, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %update_ueid_rnti_counts.exit.thread
  br i1 %.not135, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr i8, ptr %.1114152, i64 72 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 8
  br label %update_ueid_rnti_counts.exit.thread153

bb.ai:                                            ; preds = %bb.ag
  %i.ew = getelementptr i8, ptr %3, i64 8
  %i.ex = load i8, ptr %i.ew, align 8, !range !11, !noundef !12
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ez = getelementptr i8, ptr %3, i64 12
  %i.fa = load i32, ptr %i.ez, align 4
  %.not136 = icmp eq i32 %i.fa, 1
  br i1 %.not136, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = getelementptr i8, ptr %.1114152, i64 68 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 4
  br label %update_ueid_rnti_counts.exit.thread153

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.fe = getelementptr i8, ptr %.1114152, i64 20 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr i8, ptr %.1114152, i64 32
  %i.fi = getelementptr i8, ptr %3, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.fh, ptr noundef align 8 dereferenceable(16) %i.fi, i64 16, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fj = getelementptr i8, ptr %.1114152, i64 48
  %i.fk = getelementptr i8, ptr %3, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.fj, ptr noundef align 8 dereferenceable(16) %i.fk, i64 16, i1 false)
  %i.fl = add i32 %i.ff, 1
  store i32 %i.fl, ptr %i.fe, align 4
  %i.fm = getelementptr i8, ptr %3, i64 312
  %i.fn = load i16, ptr %i.fm, align 8
  %i.fo = zext i16 %i.fn to i32
  %i.fp = getelementptr i8, ptr %.1114152, i64 24 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = add i32 %i.fq, %i.fo
  store i32 %i.fr, ptr %i.fp, align 8
  %i.fs = getelementptr i8, ptr %3, i64 310
  %i.ft = load i16, ptr %i.fs, align 2
  %i.fu = zext i16 %i.ft to i32
  %i.fv = getelementptr i8, ptr %.1114152, i64 64 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = add i32 %i.fw, %i.fu
  store i32 %i.fx, ptr %i.fv, align 8
  %i.fy = load i8, ptr %i.ek, align 1
  %.not137 = icmp eq i8 %i.fy, 0
  br i1 %.not137, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.fz = getelementptr i8, ptr %3, i64 44
  %i.ga = getelementptr i8, ptr %.1114152, i64 28 ; 34 uses
  %.promoted162 = load i32, ptr %i.ga, align 4
  %i.gb = load i32, ptr %i.fz, align 4
  %i.gc = add i32 %.promoted162, %i.gb            ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 4
  %i.gd = getelementptr i8, ptr %3, i64 48
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = add i32 %i.gc, %i.ge                    ; 2 uses
  store i32 %i.gf, ptr %i.ga, align 4
  %i.gg = getelementptr i8, ptr %3, i64 52
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = add i32 %i.gf, %i.gh                    ; 2 uses
  store i32 %i.gi, ptr %i.ga, align 4
  %i.gj = getelementptr i8, ptr %3, i64 56
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = add i32 %i.gi, %i.gk                    ; 2 uses
  store i32 %i.gl, ptr %i.ga, align 4
  %i.gm = getelementptr i8, ptr %3, i64 60
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = add i32 %i.gl, %i.gn                    ; 2 uses
  store i32 %i.go, ptr %i.ga, align 4
  %i.gp = getelementptr i8, ptr %3, i64 64
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = add i32 %i.go, %i.gq                    ; 2 uses
  store i32 %i.gr, ptr %i.ga, align 4
  %i.gs = getelementptr i8, ptr %3, i64 68
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = add i32 %i.gr, %i.gt                    ; 2 uses
  store i32 %i.gu, ptr %i.ga, align 4
  %i.gv = getelementptr i8, ptr %3, i64 72
  %i.gw = load i32, ptr %i.gv, align 8
  %i.gx = add i32 %i.gu, %i.gw                    ; 2 uses
  store i32 %i.gx, ptr %i.ga, align 4
  %i.gy = getelementptr i8, ptr %3, i64 76
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = add i32 %i.gx, %i.gz                    ; 2 uses
  store i32 %i.ha, ptr %i.ga, align 4
  %i.hb = getelementptr i8, ptr %3, i64 80
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = add i32 %i.ha, %i.hc                    ; 2 uses
  store i32 %i.hd, ptr %i.ga, align 4
  %i.he = getelementptr i8, ptr %3, i64 84
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = add i32 %i.hd, %i.hf                    ; 2 uses
  store i32 %i.hg, ptr %i.ga, align 4
  %i.hh = getelementptr i8, ptr %3, i64 88
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = add i32 %i.hg, %i.hi                    ; 2 uses
  store i32 %i.hj, ptr %i.ga, align 4
  %i.hk = getelementptr i8, ptr %3, i64 92
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = add i32 %i.hj, %i.hl                    ; 2 uses
  store i32 %i.hm, ptr %i.ga, align 4
end_hunk_0
