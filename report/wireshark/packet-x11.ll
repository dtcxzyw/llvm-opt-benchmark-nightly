inline.NumInlined: 1770
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 137
begin_hunk_0_@x_endian_match:bb.a
    i8 58, label %bb.t
    i8 59, label %.split64
    i8 66, label %.split64
    i8 67, label %.split64
    i8 70, label %.split64
    i8 62, label %.split63
    i8 63, label %.split62
    i8 93, label %.split62
    i8 94, label %.split62
    i8 64, label %.split61
    i8 65, label %.split61
    i8 88, label %.split61
    i8 68, label %bb.u
    i8 71, label %bb.u
    i8 69, label %.split59
    i8 76, label %.split59
    i8 72, label %.split58
    i8 73, label %.split57
    i8 96, label %.split57
    i8 74, label %.split56
    i8 75, label %.split54
    i8 77, label %.split52
    i8 89, label %bb.v
    i8 90, label %bb.w
    i8 91, label %.split49
    i8 100, label %bb.x
    i8 102, label %bb.y
    i8 114, label %bb.z
    i8 116, label %.split53
    i8 118, label %.split
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 32)
  br i1 %i.h, label %numberOfBitSet.exit42, label %consistentWithOrder.exit.thread

numberOfBitSet.exit42:                            ; preds = %bb.c
  %i.i = add i32 %.02089, 28
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.i)
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = add i32 %.02089, 29
  %i.m = and i32 %i.k, 15
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = lshr i32 %i.k, 4
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.p, %i.t
  %i.v = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.l)
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = add i32 %.02089, 30
  %i.y = and i32 %i.w, 15
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = lshr i32 %i.w, 4
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.ab, %i.u
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.x)
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = add i32 %.02089, 31
  %i.al = and i32 %i.aj, 15
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = lshr i32 %i.aj, 4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.ao, %i.ah
  %i.au = add i32 %i.at, %i.as
  %i.av = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ak)
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = and i32 %i.aw, 15
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = lshr i32 %i.aw, 4
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.ba, %i.au
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = add i32 %i.bg, 8
  %i.bi = icmp eq i32 %i.bh, %i.d
  br i1 %i.bi, label %consistentWithOrder.exit.thread, label %.critedge

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.bj = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 12)
  br i1 %i.bj, label %numberOfBitSet.exit37, label %consistentWithOrder.exit.thread

numberOfBitSet.exit37:                            ; preds = %bb.d
  %i.bk = add i32 %.02089, 8
  %i.bl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bk)
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = add i32 %.02089, 9
  %i.bo = and i32 %i.bm, 15
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = lshr i32 %i.bm, 4
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.br, %i.bv
  %i.bx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bn)
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add i32 %.02089, 10
  %i.ca = and i32 %i.by, 15
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = lshr i32 %i.by, 4
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = add i32 %i.cd, %i.bw
  %i.cj = add i32 %i.ci, %i.ch
  %i.ck = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bz)
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = add i32 %.02089, 11
  %i.cn = and i32 %i.cl, 15
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = lshr i32 %i.cl, 4
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cq, %i.cj
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cm)
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = and i32 %i.cy, 15
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = lshr i32 %i.cy, 4
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add i32 %i.dc, %i.cw
  %i.di = add i32 %i.dh, %i.dg
  %i.dj = add i32 %i.di, 3
  %i.dk = icmp eq i32 %i.dj, %i.d
  br i1 %i.dk, label %consistentWithOrder.exit.thread, label %.critedge

.split76:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.dl = icmp eq i16 %i.c, 2
  br i1 %i.dl, label %consistentWithOrder.exit.thread, label %.critedge

.split75:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.dm = icmp eq i16 %i.c, 4
  br i1 %i.dm, label %consistentWithOrder.exit.thread, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.dn = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 10)
  br i1 %i.dn, label %numberOfBitSet.exit32, label %consistentWithOrder.exit.thread

numberOfBitSet.exit32:                            ; preds = %bb.e
  %i.do = add i32 %.02089, 8
  %i.dp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.do)
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  %i.dr = add i32 %.02089, 9
  %i.ds = and i32 %i.dq, 15
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = lshr i32 %i.dq, 4
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = add i32 %i.dv, %i.dz
  %i.eb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dr)
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %i.ed = and i32 %i.ec, 15
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = lshr i32 %i.ec, 4
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = add i32 %i.eg, %i.ea
  %i.em = add i32 %i.el, %i.ek
  %i.en = add i32 %i.em, 3
  %i.eo = icmp eq i32 %i.en, %i.d
  br i1 %i.eo, label %consistentWithOrder.exit.thread, label %.critedge

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.ep = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 6)
  br i1 %i.ep, label %.split74, label %consistentWithOrder.exit.thread

.split74:                                         ; preds = %bb.f
  %i.eq = add i32 %.02089, 4
  %i.er = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.eq, i32 noundef range(i32 0, -2147483647) %1) ; 2 uses
  %2 = lshr i16 %i.er, 2
  %3 = and i16 %i.er, 3
  %.not.i.i = icmp ne i16 %3, 0
  %i.es = zext i1 %.not.i.i to i32
  %narrow156.i = add nuw nsw i16 %2, 2
  %spec.select.i.i = zext nneg i16 %narrow156.i to i32
  %i.et = add nuw nsw i32 %spec.select.i.i, %i.es
  %i.eu = icmp eq i32 %i.et, %i.d
  br i1 %i.eu, label %consistentWithOrder.exit.thread, label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.ev = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 17)
  br i1 %i.ev, label %bb.h, label %consistentWithOrder.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ew = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 16) ; 3 uses
  switch i8 %i.ew, label %.critedge [
    i8 32, label %bb.i
    i8 16, label %bb.i
    i8 8, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ex = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 24)
  br i1 %i.ex, label %.split51, label %consistentWithOrder.exit.thread

.split51:                                         ; preds = %bb.i
  %i.ey = icmp eq i8 %i.ew, 8
  %i.ez = icmp eq i8 %i.ew, 16
  %i.fa = add i32 %.02089, 20
  %i.fb = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.fa, i32 noundef range(i32 0, -2147483647) %1)
  %i.fc = select i1 %i.ez, i32 1, i32 2
  %i.fd = select i1 %i.ey, i32 0, i32 %i.fc
  %i.fe = shl i32 %i.fb, %i.fd                    ; 2 uses
  %i.ff = sdiv i32 %i.fe, 4
  %i.fg = and i32 %i.fe, 3
  %.not.i126.i = icmp ne i32 %i.fg, 0
  %i.fh = zext i1 %.not.i126.i to i32
  %spec.select.i127.i = add nsw i32 %i.ff, 6
  %i.fi = add nsw i32 %spec.select.i127.i, %i.fh
  %i.fj = icmp eq i32 %i.fi, %i.d
  br i1 %i.fj, label %consistentWithOrder.exit.thread, label %.critedge

.split73:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.fk = icmp eq i16 %i.c, 3
  br i1 %i.fk, label %consistentWithOrder.exit.thread, label %.critedge

.split72:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.fl = icmp eq i16 %i.c, 6
  br i1 %i.fl, label %consistentWithOrder.exit.thread, label %.critedge

.split71:                                         ; preds = %bb.b
  %i.fm = icmp eq i16 %i.c, 11
  br i1 %i.fm, label %consistentWithOrder.exit.thread, label %.critedge

.split70:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.fn = icmp eq i16 %i.c, 1
  br i1 %i.fn, label %consistentWithOrder.exit.thread, label %.critedge

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.fo = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 10)
  br i1 %i.fo, label %.split67, label %consistentWithOrder.exit.thread

.split67:                                         ; preds = %bb.j
  %i.fp = add i32 %.02089, 8
  %i.fq = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.fp, i32 noundef range(i32 0, -2147483647) %1) ; 2 uses
  %4 = lshr i16 %i.fq, 2
  %5 = and i16 %i.fq, 3
  %.not.i128.i = icmp ne i16 %5, 0
  %i.fr = zext i1 %.not.i128.i to i32
  %narrow155.i = add nuw nsw i16 %4, 3
  %spec.select.i129.i = zext nneg i16 %narrow155.i to i32
  %i.fs = add nuw nsw i32 %spec.select.i129.i, %i.fr
  %i.ft = icmp eq i32 %i.fs, %i.d
  br i1 %i.ft, label %consistentWithOrder.exit.thread, label %.critedge

.split68:                                         ; preds = %bb.b
  %.not83 = icmp eq i16 %i.c, 1
  br i1 %.not83, label %.critedge, label %consistentWithOrder.exit.thread

bb.k:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.fu = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 8)
  br i1 %i.fu, label %.split66, label %consistentWithOrder.exit.thread

.split66:                                         ; preds = %bb.k
  %i.fv = add i32 %.02089, 6
  %i.fw = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.fv, i32 noundef range(i32 0, -2147483647) %1) ; 2 uses
  %6 = lshr i16 %i.fw, 2
  %7 = and i16 %i.fw, 3
  %.not.i130.i = icmp ne i16 %7, 0
  %i.fx = zext i1 %.not.i130.i to i32
  %narrow154.i = add nuw nsw i16 %6, 2
  %spec.select.i131.i = zext nneg i16 %narrow154.i to i32
  %i.fy = add nuw nsw i32 %spec.select.i131.i, %i.fx
  %i.fz = icmp eq i32 %i.fy, %i.d
  br i1 %i.fz, label %consistentWithOrder.exit.thread, label %.critedge

bb.l:                                             ; preds = %bb.b
  %i.ga = icmp eq i16 %i.c, 1
  br i1 %i.ga, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gb = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 8)
  br i1 %i.gb, label %bb.n, label %consistentWithOrder.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.gc = add nsw i32 %i.e, -8                    ; 3 uses
  %i.gd = add i32 %.02089, 4
  %i.ge = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.gd, i32 noundef range(i32 0, -2147483647) %1) ; 2 uses
  %i.gf = zext i16 %i.ge to i32                   ; 2 uses
  %i.gg = icmp samesign ult i32 %i.gc, %i.gf
  br i1 %i.gg, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %.not43.i = icmp eq i16 %i.ge, 0
  br i1 %.not43.i, label %listOfStringLengthConsistent.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.gh = add i32 %.02089, 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.r
  %.in.i = phi i32 [ %i.gi, %bb.r ], [ %i.gf, %.lr.ph.i.preheader ]
  %.02145.i = phi i32 [ %i.gp, %bb.r ], [ %i.gc, %.lr.ph.i.preheader ] ; 3 uses
  %.02244.i = phi i32 [ %i.go, %bb.r ], [ %i.gh, %.lr.ph.i.preheader ] ; 4 uses
  %i.gi = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.gj = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02244.i, i32 noundef 1)
  br i1 %i.gj, label %bb.o, label %consistentWithOrder.exit.thread

bb.o:                                             ; preds = %.lr.ph.i
  %i.gk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02244.i) ; 2 uses
  %.not31.i = icmp eq i8 %i.gk, 0
  br i1 %.not31.i, label %listOfStringLengthConsistent.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = add nuw nsw i32 %i.gl, 1                ; 3 uses
  %.not32.i = icmp sgt i32 %.02145.i, %i.gl
  br i1 %.not32.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.gn = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02244.i, i32 noundef %i.gm)
  br i1 %i.gn, label %bb.r, label %consistentWithOrder.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.go = add i32 %i.gm, %.02244.i
  %i.gp = sub nsw i32 %.02145.i, %i.gm            ; 2 uses
  %.not.i27 = icmp eq i32 %i.gi, 0
  br i1 %.not.i27, label %listOfStringLengthConsistent.exit, label %.lr.ph.i

listOfStringLengthConsistent.exit:                ; preds = %bb.o, %bb.r, %.preheader.i
  %.021.lcssa.i = phi i32 [ %i.gc, %.preheader.i ], [ %i.gp, %bb.r ], [ %.02145.i, %bb.o ]
  %i.gq = icmp slt i32 %.021.lcssa.i, 4
  br i1 %i.gq, label %consistentWithOrder.exit.thread, label %.critedge

bb.s:                                             ; preds = %bb.b
  %i.gr = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 16)
  br i1 %i.gr, label %numberOfBitSet.exit26, label %consistentWithOrder.exit.thread

numberOfBitSet.exit26:                            ; preds = %bb.s
  %i.gs = add i32 %.02089, 12
  %i.gt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gs)
  %i.gu = zext i8 %i.gt to i32                    ; 2 uses
  %i.gv = add i32 %.02089, 13
  %i.gw = and i32 %i.gu, 15
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = lshr i32 %i.gu, 4
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = add i32 %i.gz, %i.hd
  %i.hf = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gv)
  %i.hg = zext i8 %i.hf to i32                    ; 2 uses
  %i.hh = add i32 %.02089, 14
  %i.hi = and i32 %i.hg, 15
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = lshr i32 %i.hg, 4
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = add i32 %i.hl, %i.he
  %i.hr = add i32 %i.hq, %i.hp
  %i.hs = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hh)
  %i.ht = zext i8 %i.hs to i32                    ; 2 uses
  %i.hu = add i32 %.02089, 15
  %i.hv = and i32 %i.ht, 15
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = lshr i32 %i.ht, 4
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = add i32 %i.hy, %i.hr
  %i.ie = add i32 %i.id, %i.ic
  %i.if = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hu)
  %i.ig = zext i8 %i.if to i32                    ; 2 uses
  %i.ih = and i32 %i.ig, 15
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = lshr i32 %i.ig, 4
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = add i32 %i.ik, %i.ie
  %i.iq = add i32 %i.ip, %i.io
  %i.ir = add i32 %i.iq, 4
  %i.is = icmp eq i32 %i.ir, %i.d
  br i1 %i.is, label %consistentWithOrder.exit.thread, label %.critedge

bb.t:                                             ; preds = %bb.b
  %i.it = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 12)
  br i1 %i.it, label %.split60, label %consistentWithOrder.exit.thread

.split60:                                         ; preds = %bb.t
  %i.iu = add i32 %.02089, 10
  %i.iv = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.iu, i32 noundef range(i32 0, -2147483647) %1) ; 2 uses
  %8 = lshr i16 %i.iv, 2
  %9 = and i16 %i.iv, 3
  %.not.i132.i = icmp ne i16 %9, 0
  %i.iw = zext i1 %.not.i132.i to i32
  %narrow153.i = add nuw nsw i16 %8, 3
  %spec.select.i133.i = zext nneg i16 %narrow153.i to i32
  %i.ix = add nuw nsw i32 %spec.select.i133.i, %i.iw
  %i.iy = icmp eq i32 %i.ix, %i.d
  br i1 %i.iy, label %consistentWithOrder.exit.thread, label %.critedge

.split64:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.iz = icmp ugt i16 %i.c, 2
  %i.ja = trunc i16 %i.c to i1
  %spec.select.i = and i1 %i.iz, %i.ja
  br i1 %spec.select.i, label %consistentWithOrder.exit.thread, label %.critedge

.split63:                                         ; preds = %bb.b
  %i.jb = icmp eq i16 %i.c, 7
  br i1 %i.jb, label %consistentWithOrder.exit.thread, label %.critedge

.split62:                                         ; preds = %bb.b, %bb.b, %bb.b
  %i.jc = icmp eq i16 %i.c, 8
  br i1 %i.jc, label %consistentWithOrder.exit.thread, label %.critedge

.split61:                                         ; preds = %bb.b, %bb.b, %bb.b
  %i.jd = icmp ugt i16 %i.c, 2
  br i1 %i.jd, label %consistentWithOrder.exit.thread, label %.critedge

bb.u:                                             ; preds = %bb.b, %bb.b
  %i.je = icmp ugt i16 %i.c, 2
  br i1 %i.je, label %.split55, label %.critedge

.split55:                                         ; preds = %bb.u
  %.lhs.trunc144.i = add i16 %i.c, -3
  %i.jf = urem i16 %.lhs.trunc144.i, 3
  %i.jg = icmp eq i16 %i.jf, 0
  br i1 %i.jg, label %consistentWithOrder.exit.thread, label %.critedge

.split59:                                         ; preds = %bb.b, %bb.b
  %i.jh = icmp ugt i16 %i.c, 3
  br i1 %i.jh, label %consistentWithOrder.exit.thread, label %.critedge

.split58:                                         ; preds = %bb.b
  %i.ji = icmp ugt i16 %i.c, 5
  br i1 %i.ji, label %consistentWithOrder.exit.thread, label %.critedge

.split57:                                         ; preds = %bb.b, %bb.b
  %i.jj = icmp eq i16 %i.c, 5
  br i1 %i.jj, label %consistentWithOrder.exit.thread, label %.critedge

.split56:                                         ; preds = %bb.b
  %i.jk = icmp ugt i16 %i.c, 3
  br i1 %i.jk, label %consistentWithOrder.exit.thread, label %.critedge

.split54:                                         ; preds = %bb.b
  %i.jl = icmp ugt i16 %i.c, 3
  br i1 %i.jl, label %consistentWithOrder.exit.thread, label %.critedge

.split52:                                         ; preds = %bb.b
  %i.jm = icmp ugt i16 %i.c, 3
  br i1 %i.jm, label %consistentWithOrder.exit.thread, label %.critedge

bb.v:                                             ; preds = %bb.b
  %i.jn = icmp ugt i16 %i.c, 2
  br i1 %i.jn, label %.split50, label %.critedge

.split50:                                         ; preds = %bb.v
  %.lhs.trunc146.i = add i16 %i.c, -2
  %i.jo = urem i16 %.lhs.trunc146.i, 3
  %i.jp = icmp eq i16 %i.jo, 0
  br i1 %i.jp, label %consistentWithOrder.exit.thread, label %.critedge

bb.w:                                             ; preds = %bb.b
  %i.jq = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 14)
  br i1 %i.jq, label %.split69, label %consistentWithOrder.exit.thread

.split69:                                         ; preds = %bb.w
  %i.jr = add i32 %.02089, 12
  %i.js = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.jr, i32 noundef range(i32 0, -2147483647) %1) ; 2 uses
  %10 = lshr i16 %i.js, 2
  %11 = and i16 %i.js, 3
  %.not.i134.i = icmp ne i16 %11, 0
  %i.jt = zext i1 %.not.i134.i to i32
  %narrow152.i = add nuw nsw i16 %10, 4
  %spec.select.i135.i = zext nneg i16 %narrow152.i to i32
  %i.ju = add nuw nsw i32 %spec.select.i135.i, %i.jt
  %i.jv = icmp eq i32 %i.ju, %i.d
  br i1 %i.jv, label %consistentWithOrder.exit.thread, label %.critedge

.split49:                                         ; preds = %bb.b
  %.not82 = icmp eq i16 %i.c, 1
  br i1 %.not82, label %.critedge, label %consistentWithOrder.exit.thread

bb.x:                                             ; preds = %bb.b
  %i.jw = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 6)
  br i1 %i.jw, label %.split65, label %consistentWithOrder.exit.thread

.split65:                                         ; preds = %bb.x
  %i.jx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.jy = zext i8 %i.jx to i32
  %i.jz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.ka = zext i8 %i.jz to i32
  %i.kb = mul nuw nsw i32 %i.ka, %i.jy
  %i.kc = add nuw nsw i32 %i.kb, 2
  %i.kd = icmp eq i32 %i.kc, %i.d
  br i1 %i.kd, label %consistentWithOrder.exit.thread, label %.critedge

bb.y:                                             ; preds = %bb.b
  %i.ke = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 6)
  br i1 %i.ke, label %numberOfBitSet.exit, label %consistentWithOrder.exit.thread

numberOfBitSet.exit:                              ; preds = %bb.y
  %i.kf = add i32 %.02089, 4
  %i.kg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kf)
  %i.kh = zext i8 %i.kg to i32                    ; 2 uses
  %i.ki = add i32 %.02089, 5
  %i.kj = and i32 %i.kh, 15
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = lshr i32 %i.kh, 4
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = add i32 %i.km, %i.kq
  %i.ks = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ki)
  %i.kt = zext i8 %i.ks to i32                    ; 2 uses
  %i.ku = and i32 %i.kt, 15
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = lshr i32 %i.kt, 4
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr [4 x i8], ptr @numberOfBitSetTable, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = add i32 %i.kx, %i.kr
  %i.ld = add i32 %i.lc, %i.lb
  %i.le = add i32 %i.ld, 2
  %i.lf = icmp eq i32 %i.le, %i.d
  br i1 %i.lf, label %consistentWithOrder.exit.thread, label %.critedge

bb.z:                                             ; preds = %bb.b
  %i.lg = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.02089, i32 noundef 10)
  br i1 %i.lg, label %consistentWithOrder.exit, label %consistentWithOrder.exit.thread

.split53:                                         ; preds = %bb.b
  %i.lh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %12 = lshr i8 %i.lh, 2
  %13 = and i8 %i.lh, 3
  %.not.i136.i = icmp ne i8 %13, 0
  %i.li = zext i1 %.not.i136.i to i32
  %narrow.i = add nuw nsw i8 %12, 1
  %spec.select.i137.i = zext nneg i8 %narrow.i to i32
  %i.lj = add nuw nsw i32 %spec.select.i137.i, %i.li
  %i.lk = icmp eq i32 %i.lj, %i.d
  br i1 %i.lk, label %consistentWithOrder.exit.thread, label %.critedge

.split:                                           ; preds = %bb.b
  %i.ll = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.lm = zext i8 %i.ll to i32
  %i.ln = shl nuw nsw i32 %i.lm, 1
  %i.lo = or disjoint i32 %i.ln, 1
  %i.lp = icmp eq i32 %i.lo, %i.d
  br i1 %i.lp, label %consistentWithOrder.exit.thread, label %.critedge

consistentWithOrder.exit:                         ; preds = %bb.z
  %i.lq = add i32 %.02089, 8
  %i.lr = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.lq, i32 noundef range(i32 0, -2147483647) %1)
  %i.ls = zext i16 %i.lr to i32
  %i.lt = add nuw nsw i32 %i.ls, 3
  %i.lu = icmp eq i32 %i.lt, %i.d
  br i1 %i.lu, label %consistentWithOrder.exit.thread, label %.critedge

consistentWithOrder.exit.thread:                  ; preds = %bb.q, %.lr.ph.i, %bb.b, %bb.y, %bb.x, %bb.w, %bb.s, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.t, %bb.m, %bb.i, %bb.z, %consistentWithOrder.exit, %.split, %.split49, %.split50, %.split51, %.split52, %.split53, %.split54, %.split55, %.split56, %.split57, %.split58, %.split59, %.split60, %.split61, %.split62, %.split63, %.split64, %numberOfBitSet.exit26, %numberOfBitSet.exit, %.split65, %listOfStringLengthConsistent.exit, %.split66, %.split67, %.split68, %.split69, %.split70, %.split71, %.split72, %.split73, %.split74, %numberOfBitSet.exit32, %numberOfBitSet.exit37, %.split75, %.split76, %numberOfBitSet.exit42
  %i.lv = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.f, i32 noundef 4)
  br i1 %i.lv, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %consistentWithOrder.exit.thread, %.lr.ph, %consistentWithOrder.exit, %.split, %.split49, %.split50, %.split51, %.split52, %.split53, %.split54, %.split55, %.split56, %.split57, %.split58, %.split59, %.split60, %.split61, %.split62, %.split63, %.split64, %numberOfBitSet.exit26, %numberOfBitSet.exit, %.split65, %listOfStringLengthConsistent.exit, %.split66, %.split67, %.split68, %.split69, %.split70, %.split71, %.split72, %.split73, %.split74, %numberOfBitSet.exit32, %numberOfBitSet.exit37, %.split75, %.split76, %numberOfBitSet.exit42, %bb.h, %bb.l, %bb.v, %bb.u, %bb.n, %bb.p, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %bb.p ], [ -1, %bb.u ], [ -1, %bb.l ], [ -1, %bb.h ], [ -1, %numberOfBitSet.exit42 ], [ -1, %bb.v ], [ -1, %.split76 ], [ -1, %.split75 ], [ -1, %numberOfBitSet.exit37 ], [ -1, %numberOfBitSet.exit32 ], [ -1, %.split74 ], [ -1, %.split73 ], [ -1, %.split72 ], [ -1, %.split71 ], [ -1, %.split70 ], [ -1, %.split69 ], [ -1, %.split68 ], [ -1, %.split67 ], [ -1, %.split66 ], [ -1, %listOfStringLengthConsistent.exit ], [ -1, %.split65 ], [ -1, %numberOfBitSet.exit ], [ -1, %numberOfBitSet.exit26 ], [ -1, %.split64 ], [ -1, %.split63 ], [ -1, %.split62 ], [ -1, %.split61 ], [ -1, %.split60 ], [ -1, %.split59 ], [ -1, %.split58 ], [ -1, %.split57 ], [ -1, %.split56 ], [ -1, %.split55 ], [ -1, %.split54 ], [ -1, %.split53 ], [ -1, %.split52 ], [ -1, %.split51 ], [ -1, %.split50 ], [ -1, %.split49 ], [ -1, %.split ], [ -1, %consistentWithOrder.exit ], [ -1, %.lr.ph ], [ 1, %consistentWithOrder.exit.thread ], [ -1, %bb.n ]
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 256) i32 @field8(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.a)
  %i.c = zext i8 %i.b to i32                      ; 4 uses
  %i.d = tail call ptr @proto_registrar_get_nth(i32 noundef %3) ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @try_val_to_str(i32 noundef %i.c, ptr noundef nonnull %i.f) ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4
  %i.i = getelementptr i8, ptr %i.d, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1
  %i.l = select i1 %i.k, ptr @.str.1449, ptr @.str.1450
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull %i.l, ptr noundef %i.m, i32 noundef %i.c, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.o = load i32, ptr %1, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef %4) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.q = load i32, ptr %1, align 4
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %1, align 4
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 65536) i32 @field16(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.a, i32 noundef %4)
  %i.c = zext i16 %i.b to i32                     ; 4 uses
  %i.d = tail call ptr @proto_registrar_get_nth(i32 noundef %3) ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @try_val_to_str(i32 noundef %i.c, ptr noundef nonnull %i.f) ; 2 uses
  %.not24 = icmp eq ptr %i.g, null
  br i1 %.not24, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4
  %i.i = getelementptr i8, ptr %i.d, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1
  %i.l = select i1 %i.k, ptr @.str.1449, ptr @.str.1450
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.h, i32 noundef 2, i32 noundef %i.c, ptr noundef nonnull %i.l, ptr noundef %i.m, i32 noundef %i.c, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.o = load i32, ptr %1, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.o, i32 noundef 2, i32 noundef %4) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.q = load i32, ptr %1, align 4
  %i.r = add i32 %i.q, 2
  store i32 %i.r, ptr %1, align 4
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @field32(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.a, i32 noundef %4) ; 6 uses
  %i.c = tail call ptr @proto_registrar_get_nth(i32 noundef %3) ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @try_val_to_str(i32 noundef %i.b, ptr noundef nonnull %i.f) ; 2 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4
  %i.i = getelementptr i8, ptr %i.c, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1
  %i.l = select i1 %i.k, ptr @.str.1449, ptr @.str.1451
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef %i.b, ptr noundef nonnull %i.l, ptr noundef %i.d, i32 noundef %i.b, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.n = load i32, ptr %1, align 4
  %i.o = getelementptr i8, ptr %i.c, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 1
  %i.r = select i1 %i.q, ptr @.str.1452, ptr @.str.1453
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef %i.b, ptr noundef nonnull %i.r, ptr noundef %i.d, i32 noundef %i.b) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.t = load i32, ptr %1, align 4
  %i.u = add i32 %i.t, 4
  store i32 %i.u, ptr %1, align 4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_nth(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_remove(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @atom(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.a, i32 noundef %4) ; 5 uses
  %i.c = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.c, 68
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr [8 x i8], ptr @atom_predefined_interpretation, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
end_hunk_0
