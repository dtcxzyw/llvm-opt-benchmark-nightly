inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@iso2022_decode:bb.a
  %i.am = icmp eq i8 %i.al, 64
  %i.an = add nsw i64 %.05487.i, 2
  %spec.select.i = select i1 %i.am, i64 %i.an, i64 %.05487.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi i64 [ %.05487.i, %bb.k ], [ %spec.select.i, %bb.l ], [ %.05487.i, %bb.j ] ; 2 uses
  %i.ao = add nsw i64 %.1.i, 1
  %i.ap = icmp slt i64 %.1.i, 15
  br i1 %i.ap, label %switch.lookup, label %.thread159, !llvm.loop !70

bb.n:                                             ; preds = %bb.i
  %i.aq = add nsw i64 %.05487.i, 1                ; 5 uses
  switch i64 %i.aq, label %.thread159 [
    i64 0, label %.thread159.loopexit254
    i64 3, label %bb.o
    i64 4, label %bb.s
    i64 6, label %bb.v
  ]

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %i.j, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !40  ; 3 uses
  switch i8 %i.z, label %bb.r [
    i8 36, label %bb.p
    i8 40, label %bb.z
    i8 41, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.at = or i8 %i.as, -128
  br label %.thread77.i

bb.q:                                             ; preds = %bb.o
  br label %bb.z

bb.r:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.av = load i32, ptr %i.au, align 8, !tbaa !69
  %i.aw = and i32 %i.av, 2
  %.not69.i = icmp ne i32 %i.aw, 0
  %i.ax = icmp eq i8 %i.z, 46
  %or.cond74.i = and i1 %i.ax, %.not69.i
  br i1 %or.cond74.i, label %bb.z, label %.thread159

bb.s:                                             ; preds = %bb.n
  %.not68.i = icmp eq i8 %i.z, 36
  br i1 %.not68.i, label %bb.t, label %.thread159

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %i.j, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !40
  %i.ba = or i8 %i.az, -128                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.j, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !40
  switch i8 %i.bc, label %.thread159 [
    i8 40, label %.thread77.i
    i8 41, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  br label %.thread77.i

bb.v:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69
  %i.bf = and i32 %i.be, 4
  %.not67.i = icmp eq i32 %i.bf, 0
  br i1 %.not67.i, label %.thread159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr i8, ptr %i.j, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %i.bi = icmp eq i8 %i.bh, 27
  br i1 %i.bi, label %bb.x, label %.thread159

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr i8, ptr %i.j, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bl = icmp eq i8 %i.bk, 36
  br i1 %i.bl, label %bb.y, label %.thread159

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr i8, ptr %i.j, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !40
  %i.bo = icmp eq i8 %i.bn, 66
  br i1 %i.bo, label %.thread77.i, label %.thread159

bb.z:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.055.i = phi i64 [ 0, %bb.o ], [ 2, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %.not70.i = icmp eq i8 %i.as, 66
  br i1 %.not70.i, label %iso2022processesc.exit.thread150, label %.thread77.i

.thread77.i:                                      ; preds = %bb.z, %bb.y, %bb.u, %bb.t, %bb.p
  %.05583.i = phi i64 [ %.055.i, %bb.z ], [ 0, %bb.y ], [ 1, %bb.u ], [ 0, %bb.t ], [ 0, %bb.p ]
  %.05681.i = phi i8 [ %i.as, %bb.z ], [ -62, %bb.y ], [ %i.ba, %bb.u ], [ %i.ba, %bb.t ], [ %i.at, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.thread77.i
  %.0.i = phi ptr [ %i.br, %.thread77.i ], [ %i.bu, %bb.aa ] ; 2 uses
  %i.bs = load i8, ptr %.0.i, align 8, !tbaa !57  ; 2 uses
  %.not71.i = icmp eq i8 %i.bs, 0                 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, %.05681.i
  %or.cond75.i = or i1 %.not71.i, %i.bt
  %i.bu = getelementptr i8, ptr %.0.i, i64 32
  br i1 %or.cond75.i, label %bb.ab, label %bb.aa, !llvm.loop !71

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not71.i, label %.thread159, label %iso2022processesc.exit.thread150

iso2022processesc.exit.thread150:                 ; preds = %bb.z, %bb.ab
  %.05584.i = phi i64 [ %.055.i, %bb.z ], [ %.05583.i, %bb.ab ]
  %.05682.i = phi i8 [ 66, %bb.z ], [ %.05681.i, %bb.ab ]
  %i.bv = getelementptr i8, ptr %0, i64 %.05584.i
  store i8 %.05682.i, ptr %i.bv, align 1, !tbaa !40
  %i.bw = sub i64 %.0142168, %i.aq
  %i.bx = load ptr, ptr %2, align 8, !tbaa !43
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.aq
  store ptr %i.by, ptr %2, align 8, !tbaa !43
  br label %bb.ce

bb.ac:                                            ; preds = %switch.hole_check, %bb.h
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !69
  %i.cb = and i32 %i.ca, 2
  %.not121 = icmp ne i32 %i.cb, 0
  %i.cc = icmp eq i8 %i.z, 78
  %or.cond = and i1 %i.cc, %.not121
  br i1 %or.cond, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.cd = icmp samesign ult i64 %.0142168, 3
  br i1 %i.cd, label %.thread159, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val = load i8, ptr %i.d, align 1, !tbaa !40
  switch i8 %.val, label %.thread159 [
    i8 65, label %bb.af
    i8 70, label %bb.ah
    i8 66, label %bb.au
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr i8, ptr %i.j, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40  ; 2 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.ag, label %.thread159

bb.ag:                                            ; preds = %bb.af
  %i.ch = or disjoint i8 %i.cf, -128
  %i.ci = zext i8 %i.ch to i32
  %i.cj = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ci) #16
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %.thread159, label %iso2022processg2.exit

bb.ah:                                            ; preds = %bb.ae
  %i.cl = getelementptr i8, ptr %i.j, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !40  ; 3 uses
  %i.cn = xor i8 %i.cm, -128                      ; 6 uses
  %i.co = zext i8 %i.cn to i32                    ; 4 uses
  %i.cp = icmp ult i8 %i.cn, -96
  br i1 %i.cp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cq = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.co) #16
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.thread159, label %iso2022processg2.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cs = icmp samesign ult i8 %i.cn, -64
  br i1 %i.cs, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ct = add nsw i32 %i.co, -160
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 1, %i.cu
  %i.cw = and i64 %i.cv, 680475593
  %.not35.i = icmp eq i64 %i.cw, 0
  br i1 %.not35.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.co) #16
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %.thread159, label %iso2022processg2.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.cz = zext i8 %i.cn to i64
  %i.da = icmp samesign ult i8 %i.cn, -76
  %.not36.i = icmp eq i8 %i.cm, 127
  %or.cond.i = or i1 %.not36.i, %i.da
  br i1 %or.cond.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = icmp samesign ugt i8 %i.cn, -45
  br i1 %i.db, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dc = add nuw nsw i64 %i.cz, 4294967116
  %5 = and i64 %i.dc, 4294967295
  %i.dd = shl nuw nsw i64 1, %5
  %i.de = and i64 %i.dd, 3221224823
  %.not37.i = icmp eq i64 %i.de, 0
  br i1 %.not37.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.df = add nuw nsw i32 %i.co, 720
  %i.dg = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.df) #16
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.thread159, label %iso2022processg2.exit

bb.aq:                                            ; preds = %bb.ao, %bb.am
  switch i8 %i.cm, label %.thread159 [
    i8 33, label %bb.ar
    i8 34, label %bb.as
    i8 47, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.di = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8216) #16
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %.thread159, label %iso2022processg2.exit

bb.as:                                            ; preds = %bb.aq
  %i.dk = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8217) #16
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %.thread159, label %iso2022processg2.exit

bb.at:                                            ; preds = %bb.aq
  %i.dm = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8213) #16
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %.thread159, label %iso2022processg2.exit

bb.au:                                            ; preds = %bb.ae
  %i.do = getelementptr i8, ptr %i.j, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !40  ; 2 uses
  %.not.i128 = icmp sgt i8 %i.dp, -1
  br i1 %.not.i128, label %bb.av, label %.thread159

bb.av:                                            ; preds = %bb.au
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.dq) #16
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %.thread159, label %iso2022processg2.exit

iso2022processg2.exit:                            ; preds = %bb.ag, %bb.ai, %bb.al, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.av
  %i.dt = load ptr, ptr %2, align 8, !tbaa !43
  %i.du = getelementptr i8, ptr %i.dt, i64 3
  store ptr %i.du, ptr %2, align 8, !tbaa !43
  %i.dv = add nsw i64 %.0142168, -3
  br label %bb.ce

bb.aw:                                            ; preds = %bb.ac
  %i.dw = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 27) #16
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %.thread159, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dy = load i8, ptr %i.b, align 1, !tbaa !40
  %i.dz = or i8 %i.dy, 2
  store i8 %i.dz, ptr %i.b, align 1, !tbaa !40
  %i.ea = load ptr, ptr %2, align 8, !tbaa !43
  %i.eb = getelementptr i8, ptr %i.ea, i64 1
  store ptr %i.eb, ptr %2, align 8, !tbaa !43
  %i.ec = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.ay:                                            ; preds = %bb.f
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !69
  %i.ef = and i32 %i.ee, 1
  %.not120 = icmp eq i32 %i.ef, 0
  br i1 %.not120, label %bb.az, label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.eg = and i8 %i.l, -4
  store i8 %i.eg, ptr %i.b, align 1, !tbaa !40
  %i.eh = load ptr, ptr %2, align 8, !tbaa !43
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  store ptr %i.ei, ptr %2, align 8, !tbaa !43
  %i.ej = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.ba:                                            ; preds = %bb.f
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !69
  %i.em = and i32 %i.el, 1
  %.not119 = icmp eq i32 %i.em, 0
  br i1 %.not119, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.en = or i8 %i.l, 1
  store i8 %i.en, ptr %i.b, align 1, !tbaa !40
  %i.eo = load ptr, ptr %2, align 8, !tbaa !43
  %i.ep = getelementptr i8, ptr %i.eo, i64 1
  store ptr %i.ep, ptr %2, align 8, !tbaa !43
  %i.eq = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.bc:                                            ; preds = %bb.f
  %i.er = and i8 %i.l, -4
  store i8 %i.er, ptr %i.b, align 1, !tbaa !40
  %i.es = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 10) #16
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.thread159, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eu = load ptr, ptr %2, align 8, !tbaa !43
  %i.ev = getelementptr i8, ptr %i.eu, i64 1
  store ptr %i.ev, ptr %2, align 8, !tbaa !43
  %i.ew = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.be:                                            ; preds = %bb.f
  %i.ex = icmp ult i8 %i.k, 32
  br i1 %i.ex, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ey = icmp slt i8 %i.k, 0
  br i1 %i.ey, label %.thread159, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ez = and i32 %i.m, 1
  %.0107.in.idx = zext nneg i32 %i.ez to i64
  %.0107.in = getelementptr i8, ptr %0, i64 %.0107.in.idx
  %.0107 = load i8, ptr %.0107.in, align 1, !tbaa !40 ; 3 uses
  %i.fa = icmp eq i8 %.0107, 66
  br i1 %i.fa, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.ay, %bb.ba, %bb.be, %bb.bg
  %i.fb = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.o) #16
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %.thread159, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fd = load ptr, ptr %2, align 8, !tbaa !43
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store ptr %i.fe, ptr %2, align 8, !tbaa !43
  %i.ff = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.bj:                                            ; preds = %bb.bg
  %.not125 = icmp eq ptr %.0103169, null
  br i1 %.not125, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fg = load i8, ptr %.0103169, align 8, !tbaa !57
  %i.fh = icmp eq i8 %i.fg, %.0107
  br i1 %i.fh, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !54
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.0108 = phi ptr [ %i.fk, %bb.bl ], [ %i.fm, %bb.bm ] ; 3 uses
  %i.fl = load i8, ptr %.0108, align 8, !tbaa !57
  %.not126 = icmp eq i8 %i.fl, %.0107
  %i.fm = getelementptr i8, ptr %.0108, i64 32
  br i1 %.not126, label %.loopexit, label %bb.bm, !llvm.loop !72

.loopexit:                                        ; preds = %bb.bm, %bb.bk
  %.1104 = phi ptr [ %.0103169, %bb.bk ], [ %.0108, %bb.bm ] ; 3 uses
  %i.fn = getelementptr i8, ptr %.1104, i64 2     ; 3 uses
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !67
  %i.fp = zext i8 %i.fo to i64
  %i.fq = icmp samesign ult i64 %.0142168, %i.fp
  br i1 %i.fq, label %.thread159, label %bb.bn

bb.bn:                                            ; preds = %.loopexit
  %i.fr = getelementptr i8, ptr %.1104, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !73
  %i.ft = tail call i32 %i.fs(ptr noundef %1, ptr noundef nonnull %i.j) #16 ; 9 uses
  %i.fu = icmp eq i32 %i.ft, 65535
  br i1 %i.fu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fv = load i8, ptr %i.fn, align 2, !tbaa !67
  %i.fw = zext i8 %i.fv to i64
  br label %.thread159

bb.bp:                                            ; preds = %bb.bn
  %i.fx = icmp ult i32 %i.ft, 65536
  br i1 %i.fx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fy = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ft) #16
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %.thread159, label %bb.cd

bb.br:                                            ; preds = %bb.bp
  %i.ga = icmp ult i32 %i.ft, 196608
  br i1 %i.ga, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gb = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ft) #16
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %.thread159, label %bb.cd

end_hunk_0
