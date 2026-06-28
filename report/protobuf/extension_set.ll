inline.NumInlined: 3767
inline.NumDeleted: 1290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
    i8 3, label %.preheader197
    i8 13, label %.preheader199
    i8 4, label %.preheader201
    i8 17, label %.preheader203
    i8 18, label %.preheader205
    i8 14, label %.preheader207
    i8 7, label %bb.k
    i8 6, label %bb.l
    i8 15, label %bb.m
    i8 16, label %bb.n
    i8 2, label %bb.o
    i8 1, label %bb.p
    i8 8, label %bb.q
    i8 9, label %bb.r
    i8 12, label %bb.r
    i8 10, label %bb.r
    i8 11, label %bb.r
  ]

.preheader207:                                    ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116  ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph264, label %.loopexit.thread

.lr.ph264:                                        ; preds = %.preheader207
  %i.m = load i32, ptr %i.i, align 4, !tbaa !129
  %i.n = and i32 %i.m, 1
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %.0.v.i.i.i.i.i175 = select i1 %i.o, ptr %i.i, ptr %i.q
  %.0.i.i.i.i.i176 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i175, i64 8 ; 3 uses
  %wide.trip.count373 = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter572 = and i64 %wide.trip.count373, 1
  %i.r = icmp eq i32 %i.k, 1
  br i1 %i.r, label %.epil.preheader571, label %.lr.ph264.new

.lr.ph264.new:                                    ; preds = %.lr.ph264
  %unroll_iter576 = and i64 %wide.trip.count373, 2147483646
  br label %bb.j

.preheader205:                                    ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !116  ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph268, label %.loopexit.thread

.lr.ph268:                                        ; preds = %.preheader205
  %i.w = load i32, ptr %i.s, align 4, !tbaa !129
  %i.x = and i32 %i.w, 1
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %.0.v.i.i.i.i.i173 = select i1 %i.y, ptr %i.s, ptr %i.aa
  %.0.i.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i173, i64 8 ; 3 uses
  %wide.trip.count378 = zext nneg i32 %i.u to i64 ; 2 uses
  %xtraiter579 = and i64 %wide.trip.count378, 1
  %i.ab = icmp eq i32 %i.u, 1
  br i1 %i.ab, label %.epil.preheader578, label %.lr.ph268.new

.lr.ph268.new:                                    ; preds = %.lr.ph268
  %unroll_iter583 = and i64 %wide.trip.count378, 2147483646
  br label %bb.i

.preheader203:                                    ; preds = %bb.c
  %i.ac = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !116 ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph272, label %.loopexit.thread

.lr.ph272:                                        ; preds = %.preheader203
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !129
  %i.ah = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %.0.v.i.i.i.i.i171 = select i1 %i.ai, ptr %i.ac, ptr %i.ak
  %.0.i.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i171, i64 8 ; 3 uses
  %wide.trip.count383 = zext nneg i32 %i.ae to i64 ; 2 uses
  %xtraiter586 = and i64 %wide.trip.count383, 1
  %i.al = icmp eq i32 %i.ae, 1
  br i1 %i.al, label %.epil.preheader585, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter590 = and i64 %wide.trip.count383, 2147483646
  br label %bb.h

.preheader201:                                    ; preds = %bb.c
  %i.am = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !116 ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph276, label %.loopexit.thread

.lr.ph276:                                        ; preds = %.preheader201
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %.0.v.i.i.i.i.i169 = select i1 %i.as, ptr %i.am, ptr %i.au
  %.0.i.i.i.i.i170 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i169, i64 8 ; 3 uses
  %wide.trip.count388 = zext nneg i32 %i.ao to i64 ; 2 uses
  %xtraiter593 = and i64 %wide.trip.count388, 1
  %i.av = icmp eq i32 %i.ao, 1
  br i1 %i.av, label %.epil.preheader592, label %.lr.ph276.new

.lr.ph276.new:                                    ; preds = %.lr.ph276
  %unroll_iter597 = and i64 %wide.trip.count388, 2147483646
  br label %bb.g

.preheader199:                                    ; preds = %bb.c
  %i.aw = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !116 ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph280, label %.loopexit.thread

.lr.ph280:                                        ; preds = %.preheader199
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !129
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %.0.v.i.i.i.i.i167 = select i1 %i.bc, ptr %i.aw, ptr %i.be
  %.0.i.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i167, i64 8 ; 3 uses
  %wide.trip.count393 = zext nneg i32 %i.ay to i64 ; 2 uses
  %xtraiter600 = and i64 %wide.trip.count393, 1
  %i.bf = icmp eq i32 %i.ay, 1
  br i1 %i.bf, label %.epil.preheader599, label %.lr.ph280.new

.lr.ph280.new:                                    ; preds = %.lr.ph280
  %unroll_iter604 = and i64 %wide.trip.count393, 2147483646
  br label %bb.f

.preheader197:                                    ; preds = %bb.c
  %i.bg = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !116 ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph284, label %.loopexit.thread

.lr.ph284:                                        ; preds = %.preheader197
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !129
  %i.bl = and i32 %i.bk, 1
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i165 = select i1 %i.bm, ptr %i.bg, ptr %i.bo
  %.0.i.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i165, i64 8 ; 3 uses
  %wide.trip.count398 = zext nneg i32 %i.bi to i64 ; 2 uses
  %xtraiter607 = and i64 %wide.trip.count398, 1
  %i.bp = icmp eq i32 %i.bi, 1
  br i1 %i.bp, label %.epil.preheader606, label %.lr.ph284.new

.lr.ph284.new:                                    ; preds = %.lr.ph284
  %unroll_iter611 = and i64 %wide.trip.count398, 2147483646
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.bq = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !116 ; 4 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph288, label %.loopexit.thread

.lr.ph288:                                        ; preds = %.preheader
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !129
  %i.bv = and i32 %i.bu, 1
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %.0.v.i.i.i.i.i = select i1 %i.bw, ptr %i.bq, ptr %i.by
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 3 uses
  %wide.trip.count403 = zext nneg i32 %i.bs to i64 ; 2 uses
  %xtraiter614 = and i64 %wide.trip.count403, 1
  %i.bz = icmp eq i32 %i.bs, 1
  br i1 %i.bz, label %.epil.preheader613, label %.lr.ph288.new

.lr.ph288.new:                                    ; preds = %.lr.ph288
  %unroll_iter618 = and i64 %wide.trip.count403, 2147483646
  br label %bb.d

.thread:                                          ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12
  store atomic i32 0, ptr %i.ca monotonic, align 4
  br label %.loopexit209

bb.d:                                             ; preds = %bb.d, %.lr.ph288.new
  %indvars.iv400 = phi i64 [ 0, %.lr.ph288.new ], [ %indvars.iv.next401.1, %bb.d ] ; 3 uses
  %.0153287 = phi i64 [ 0, %.lr.ph288.new ], [ %i.cv, %bb.d ]
  %niter619 = phi i64 [ 0, %.lr.ph288.new ], [ %niter619.next.1, %bb.d ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv400
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = or i32 %i.cc, 1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = xor i64 %i.cf, 63
  %i.ch = mul nuw nsw i64 %i.cg, 9
  %i.ci = add nuw nsw i64 %i.ch, 73
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = add i64 %i.cj, %.0153287
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv400
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = or i32 %i.cn, 1
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = xor i64 %i.cq, 63
  %i.cs = mul nuw nsw i64 %i.cr, 9
  %i.ct = add nuw nsw i64 %i.cs, 73
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = add i64 %i.cu, %i.ck                    ; 3 uses
  %indvars.iv.next401.1 = add nuw nsw i64 %indvars.iv400, 2 ; 2 uses
  %niter619.next.1 = add i64 %niter619, 2         ; 2 uses
  %niter619.ncmp.1 = icmp eq i64 %niter619.next.1, %unroll_iter618
  br i1 %niter619.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !406

bb.e:                                             ; preds = %bb.e, %.lr.ph284.new
  %indvars.iv395 = phi i64 [ 0, %.lr.ph284.new ], [ %indvars.iv.next396.1, %bb.e ] ; 3 uses
  %.1283 = phi i64 [ 0, %.lr.ph284.new ], [ %i.do, %bb.e ]
  %niter612 = phi i64 [ 0, %.lr.ph284.new ], [ %niter612.next.1, %bb.e ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i166, i64 %indvars.iv395
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !148
  %i.cy = or i64 %i.cx, 1
  %i.cz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = xor i64 %i.cz, 63
  %i.db = mul nuw nsw i64 %i.da, 9
  %i.dc = add nuw nsw i64 %i.db, 73
  %i.dd = lshr i64 %i.dc, 6
  %i.de = add i64 %i.dd, %.1283
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i166, i64 %indvars.iv395
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !148
  %i.di = or i64 %i.dh, 1
  %i.dj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = xor i64 %i.dj, 63
  %i.dl = mul nuw nsw i64 %i.dk, 9
  %i.dm = add nuw nsw i64 %i.dl, 73
  %i.dn = lshr i64 %i.dm, 6
  %i.do = add i64 %i.dn, %i.de                    ; 3 uses
  %indvars.iv.next396.1 = add nuw nsw i64 %indvars.iv395, 2 ; 2 uses
  %niter612.next.1 = add i64 %niter612, 2         ; 2 uses
  %niter612.ncmp.1 = icmp eq i64 %niter612.next.1, %unroll_iter611
  br i1 %niter612.ncmp.1, label %.loopexit.loopexit480.unr-lcssa, label %bb.e, !llvm.loop !407

bb.f:                                             ; preds = %bb.f, %.lr.ph280.new
  %indvars.iv390 = phi i64 [ 0, %.lr.ph280.new ], [ %indvars.iv.next391.1, %bb.f ] ; 3 uses
  %.2279 = phi i64 [ 0, %.lr.ph280.new ], [ %i.ej, %bb.f ]
  %niter605 = phi i64 [ 0, %.lr.ph280.new ], [ %niter605.next.1, %bb.f ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i168, i64 %indvars.iv390
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = or i32 %i.dq, 1
  %i.ds = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dr, i1 true)
  %i.dt = xor i32 %i.ds, 31
  %i.du = mul nuw nsw i32 %i.dt, 9
  %i.dv = add nuw nsw i32 %i.du, 73
  %i.dw = lshr i32 %i.dv, 6
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = add i64 %.2279, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i168, i64 %indvars.iv390
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = or i32 %i.eb, 1
  %i.ed = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ec, i1 true)
  %i.ee = xor i32 %i.ed, 31
  %i.ef = mul nuw nsw i32 %i.ee, 9
  %i.eg = add nuw nsw i32 %i.ef, 73
  %i.eh = lshr i32 %i.eg, 6
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = add i64 %i.dy, %i.ei                    ; 3 uses
  %indvars.iv.next391.1 = add nuw nsw i64 %indvars.iv390, 2 ; 2 uses
  %niter605.next.1 = add i64 %niter605, 2         ; 2 uses
  %niter605.ncmp.1 = icmp eq i64 %niter605.next.1, %unroll_iter604
  br i1 %niter605.ncmp.1, label %.loopexit.loopexit482.unr-lcssa, label %bb.f, !llvm.loop !408

bb.g:                                             ; preds = %bb.g, %.lr.ph276.new
  %indvars.iv385 = phi i64 [ 0, %.lr.ph276.new ], [ %indvars.iv.next386.1, %bb.g ] ; 3 uses
  %.3275 = phi i64 [ 0, %.lr.ph276.new ], [ %i.fc, %bb.g ]
  %niter598 = phi i64 [ 0, %.lr.ph276.new ], [ %niter598.next.1, %bb.g ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i170, i64 %indvars.iv385
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !148
  %i.em = or i64 %i.el, 1
  %i.en = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.em, i1 true)
  %i.eo = xor i64 %i.en, 63
  %i.ep = mul nuw nsw i64 %i.eo, 9
  %i.eq = add nuw nsw i64 %i.ep, 73
  %i.er = lshr i64 %i.eq, 6
  %i.es = add i64 %i.er, %.3275
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i170, i64 %indvars.iv385
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !148
  %i.ew = or i64 %i.ev, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = xor i64 %i.ex, 63
  %i.ez = mul nuw nsw i64 %i.ey, 9
  %i.fa = add nuw nsw i64 %i.ez, 73
  %i.fb = lshr i64 %i.fa, 6
  %i.fc = add i64 %i.fb, %i.es                    ; 3 uses
  %indvars.iv.next386.1 = add nuw nsw i64 %indvars.iv385, 2 ; 2 uses
  %niter598.next.1 = add i64 %niter598, 2         ; 2 uses
  %niter598.ncmp.1 = icmp eq i64 %niter598.next.1, %unroll_iter597
  br i1 %niter598.ncmp.1, label %.loopexit.loopexit484.unr-lcssa, label %bb.g, !llvm.loop !409

bb.h:                                             ; preds = %bb.h, %.lr.ph272.new
  %indvars.iv380 = phi i64 [ 0, %.lr.ph272.new ], [ %indvars.iv.next381.1, %bb.h ] ; 3 uses
  %.4271 = phi i64 [ 0, %.lr.ph272.new ], [ %i.gd, %bb.h ]
  %niter591 = phi i64 [ 0, %.lr.ph272.new ], [ %niter591.next.1, %bb.h ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i172, i64 %indvars.iv380
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 2 uses
  %i.ff = shl i32 %i.fe, 1
  %i.fg = ashr i32 %i.fe, 31
  %i.fh = xor i32 %i.ff, %i.fg
  %i.fi = or i32 %i.fh, 1
  %i.fj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fi, i1 true)
  %i.fk = xor i32 %i.fj, 31
  %i.fl = mul nuw nsw i32 %i.fk, 9
  %i.fm = add nuw nsw i32 %i.fl, 73
  %i.fn = lshr i32 %i.fm, 6
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = add i64 %.4271, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i172, i64 %indvars.iv380
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3  ; 2 uses
  %i.ft = shl i32 %i.fs, 1
  %i.fu = ashr i32 %i.fs, 31
  %i.fv = xor i32 %i.ft, %i.fu
  %i.fw = or i32 %i.fv, 1
  %i.fx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fw, i1 true)
  %i.fy = xor i32 %i.fx, 31
  %i.fz = mul nuw nsw i32 %i.fy, 9
  %i.ga = add nuw nsw i32 %i.fz, 73
  %i.gb = lshr i32 %i.ga, 6
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = add i64 %i.fp, %i.gc                    ; 3 uses
  %indvars.iv.next381.1 = add nuw nsw i64 %indvars.iv380, 2 ; 2 uses
  %niter591.next.1 = add i64 %niter591, 2         ; 2 uses
  %niter591.ncmp.1 = icmp eq i64 %niter591.next.1, %unroll_iter590
  br i1 %niter591.ncmp.1, label %.loopexit.loopexit486.unr-lcssa, label %bb.h, !llvm.loop !410

bb.i:                                             ; preds = %bb.i, %.lr.ph268.new
  %indvars.iv375 = phi i64 [ 0, %.lr.ph268.new ], [ %indvars.iv.next376.1, %bb.i ] ; 3 uses
  %.5267 = phi i64 [ 0, %.lr.ph268.new ], [ %i.hc, %bb.i ]
  %niter584 = phi i64 [ 0, %.lr.ph268.new ], [ %niter584.next.1, %bb.i ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i174, i64 %indvars.iv375
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !148 ; 2 uses
  %i.gg = shl i64 %i.gf, 1
  %i.gh = ashr i64 %i.gf, 63
  %i.gi = xor i64 %i.gg, %i.gh
  %i.gj = or i64 %i.gi, 1
  %i.gk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gj, i1 true)
  %i.gl = xor i64 %i.gk, 63
  %i.gm = mul nuw nsw i64 %i.gl, 9
  %i.gn = add nuw nsw i64 %i.gm, 73
  %i.go = lshr i64 %i.gn, 6
  %i.gp = add i64 %i.go, %.5267
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i174, i64 %indvars.iv375
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !148 ; 2 uses
  %i.gt = shl i64 %i.gs, 1
  %i.gu = ashr i64 %i.gs, 63
  %i.gv = xor i64 %i.gt, %i.gu
  %i.gw = or i64 %i.gv, 1
  %i.gx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gw, i1 true)
  %i.gy = xor i64 %i.gx, 63
  %i.gz = mul nuw nsw i64 %i.gy, 9
  %i.ha = add nuw nsw i64 %i.gz, 73
  %i.hb = lshr i64 %i.ha, 6
  %i.hc = add i64 %i.hb, %i.gp                    ; 3 uses
  %indvars.iv.next376.1 = add nuw nsw i64 %indvars.iv375, 2 ; 2 uses
  %niter584.next.1 = add i64 %niter584, 2         ; 2 uses
  %niter584.ncmp.1 = icmp eq i64 %niter584.next.1, %unroll_iter583
  br i1 %niter584.ncmp.1, label %.loopexit.loopexit488.unr-lcssa, label %bb.i, !llvm.loop !411

bb.j:                                             ; preds = %bb.j, %.lr.ph264.new
  %indvars.iv370 = phi i64 [ 0, %.lr.ph264.new ], [ %indvars.iv.next371.1, %bb.j ] ; 3 uses
  %.6263 = phi i64 [ 0, %.lr.ph264.new ], [ %i.hx, %bb.j ]
  %niter577 = phi i64 [ 0, %.lr.ph264.new ], [ %niter577.next.1, %bb.j ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i176, i64 %indvars.iv370
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = or i32 %i.he, 1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hg, i1 true)
  %i.hi = xor i64 %i.hh, 63
  %i.hj = mul nuw nsw i64 %i.hi, 9
  %i.hk = add nuw nsw i64 %i.hj, 73
  %i.hl = lshr i64 %i.hk, 6
  %i.hm = add i64 %i.hl, %.6263
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i176, i64 %indvars.iv370
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = or i32 %i.hp, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hr, i1 true)
  %i.ht = xor i64 %i.hs, 63
  %i.hu = mul nuw nsw i64 %i.ht, 9
  %i.hv = add nuw nsw i64 %i.hu, 73
  %i.hw = lshr i64 %i.hv, 6
  %i.hx = add i64 %i.hw, %i.hm                    ; 3 uses
  %indvars.iv.next371.1 = add nuw nsw i64 %indvars.iv370, 2 ; 2 uses
  %niter577.next.1 = add i64 %niter577, 2         ; 2 uses
  %niter577.ncmp.1 = icmp eq i64 %niter577.next.1, %unroll_iter576
  br i1 %niter577.ncmp.1, label %.loopexit.loopexit490.unr-lcssa, label %bb.j, !llvm.loop !412

bb.k:                                             ; preds = %bb.c
  %i.hy = load ptr, ptr %0, align 8, !tbaa !13
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !116
  %i.ib = zext i32 %i.ia to i64
  %i.ic = shl nuw nsw i64 %i.ib, 2
  br label %.loopexit

bb.l:                                             ; preds = %bb.c
  %i.id = load ptr, ptr %0, align 8, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !116
  %i.ig = zext i32 %i.if to i64
  %i.ih = shl nuw nsw i64 %i.ig, 3
  br label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.ii = load ptr, ptr %0, align 8, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !116
  %i.il = zext i32 %i.ik to i64
  %i.im = shl nuw nsw i64 %i.il, 2
  br label %.loopexit

bb.n:                                             ; preds = %bb.c
  %i.in = load ptr, ptr %0, align 8, !tbaa !13
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !116
  %i.iq = zext i32 %i.ip to i64
  %i.ir = shl nuw nsw i64 %i.iq, 3
  br label %.loopexit

bb.o:                                             ; preds = %bb.c
  %i.is = load ptr, ptr %0, align 8, !tbaa !13
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !116
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 2
  br label %.loopexit

bb.p:                                             ; preds = %bb.c
  %i.ix = load ptr, ptr %0, align 8, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !116
  %i.ja = zext i32 %i.iz to i64
  %i.jb = shl nuw nsw i64 %i.ja, 3
  br label %.loopexit

bb.q:                                             ; preds = %bb.c
  %i.jc = load ptr, ptr %0, align 8, !tbaa !13
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !116
  %i.jf = zext i32 %i.je to i64
  br label %.loopexit

bb.r:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 1373) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 36, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi37EEERS2_RAT__Kc.exit unwind label %bb.s

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi37EEERS2_RAT__Kc.exit: ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.s

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi37EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  unreachable

bb.s:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi37EEERS2_RAT__Kc.exit, %bb.r
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  unreachable

.loopexit.thread:                                 ; preds = %.preheader, %.preheader197, %.preheader199, %.preheader201, %.preheader203, %.preheader205, %.preheader207
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store atomic i32 0, ptr %i.jh monotonic, align 4
  br label %.loopexit209

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod615.not = icmp eq i64 %xtraiter614, 0
  br i1 %lcmp.mod615.not, label %.loopexit, label %.epil.preheader613

.epil.preheader613:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph288
  %indvars.iv400.epil.init = phi i64 [ 0, %.lr.ph288 ], [ %indvars.iv.next401.1, %.loopexit.loopexit.unr-lcssa ]
  %.0153287.epil.init = phi i64 [ 0, %.lr.ph288 ], [ %i.cv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod617 = trunc i32 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod617)
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv400.epil.init
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.jk = or i32 %i.jj, 1
  %i.jl = sext i32 %i.jk to i64
  %i.jm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jl, i1 true)
  %i.jn = xor i64 %i.jm, 63
  %i.jo = mul nuw nsw i64 %i.jn, 9
  %i.jp = add nuw nsw i64 %i.jo, 73
  %i.jq = lshr i64 %i.jp, 6
  %i.jr = add i64 %i.jq, %.0153287.epil.init
  br label %.loopexit

.loopexit.loopexit480.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod608.not = icmp eq i64 %xtraiter607, 0
  br i1 %lcmp.mod608.not, label %.loopexit, label %.epil.preheader606

.epil.preheader606:                               ; preds = %.loopexit.loopexit480.unr-lcssa, %.lr.ph284
  %indvars.iv395.epil.init = phi i64 [ 0, %.lr.ph284 ], [ %indvars.iv.next396.1, %.loopexit.loopexit480.unr-lcssa ]
  %.1283.epil.init = phi i64 [ 0, %.lr.ph284 ], [ %i.do, %.loopexit.loopexit480.unr-lcssa ]
  %lcmp.mod610 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod610)
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i166, i64 %indvars.iv395.epil.init
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !148
  %i.ju = or i64 %i.jt, 1
  %i.jv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ju, i1 true)
  %i.jw = xor i64 %i.jv, 63
  %i.jx = mul nuw nsw i64 %i.jw, 9
  %i.jy = add nuw nsw i64 %i.jx, 73
  %i.jz = lshr i64 %i.jy, 6
  %i.ka = add i64 %i.jz, %.1283.epil.init
  br label %.loopexit

.loopexit.loopexit482.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod601.not = icmp eq i64 %xtraiter600, 0
  br i1 %lcmp.mod601.not, label %.loopexit, label %.epil.preheader599

.epil.preheader599:                               ; preds = %.loopexit.loopexit482.unr-lcssa, %.lr.ph280
  %indvars.iv390.epil.init = phi i64 [ 0, %.lr.ph280 ], [ %indvars.iv.next391.1, %.loopexit.loopexit482.unr-lcssa ]
  %.2279.epil.init = phi i64 [ 0, %.lr.ph280 ], [ %i.ej, %.loopexit.loopexit482.unr-lcssa ]
  %lcmp.mod603 = trunc i32 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod603)
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i168, i64 %indvars.iv390.epil.init
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = or i32 %i.kc, 1
  %i.ke = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kd, i1 true)
  %i.kf = xor i32 %i.ke, 31
  %i.kg = mul nuw nsw i32 %i.kf, 9
  %i.kh = add nuw nsw i32 %i.kg, 73
  %i.ki = lshr i32 %i.kh, 6
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = add i64 %.2279.epil.init, %i.kj
  br label %.loopexit

.loopexit.loopexit484.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod594.not, label %.loopexit, label %.epil.preheader592

.epil.preheader592:                               ; preds = %.loopexit.loopexit484.unr-lcssa, %.lr.ph276
  %indvars.iv385.epil.init = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next386.1, %.loopexit.loopexit484.unr-lcssa ]
  %.3275.epil.init = phi i64 [ 0, %.lr.ph276 ], [ %i.fc, %.loopexit.loopexit484.unr-lcssa ]
  %lcmp.mod596 = trunc i32 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod596)
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i170, i64 %indvars.iv385.epil.init
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !148
  %i.kn = or i64 %i.km, 1
  %i.ko = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.kn, i1 true)
  %i.kp = xor i64 %i.ko, 63
  %i.kq = mul nuw nsw i64 %i.kp, 9
  %i.kr = add nuw nsw i64 %i.kq, 73
  %i.ks = lshr i64 %i.kr, 6
  %i.kt = add i64 %i.ks, %.3275.epil.init
  br label %.loopexit

.loopexit.loopexit486.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %.loopexit, label %.epil.preheader585

.epil.preheader585:                               ; preds = %.loopexit.loopexit486.unr-lcssa, %.lr.ph272
  %indvars.iv380.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %indvars.iv.next381.1, %.loopexit.loopexit486.unr-lcssa ]
  %.4271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.gd, %.loopexit.loopexit486.unr-lcssa ]
  %lcmp.mod589 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod589)
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i172, i64 %indvars.iv380.epil.init
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !3  ; 2 uses
  %i.kw = shl i32 %i.kv, 1
  %i.kx = ashr i32 %i.kv, 31
  %i.ky = xor i32 %i.kw, %i.kx
  %i.kz = or i32 %i.ky, 1
  %i.la = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = xor i32 %i.la, 31
  %i.lc = mul nuw nsw i32 %i.lb, 9
  %i.ld = add nuw nsw i32 %i.lc, 73
  %i.le = lshr i32 %i.ld, 6
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = add i64 %.4271.epil.init, %i.lf
  br label %.loopexit

.loopexit.loopexit488.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod580.not = icmp eq i64 %xtraiter579, 0
  br i1 %lcmp.mod580.not, label %.loopexit, label %.epil.preheader578

.epil.preheader578:                               ; preds = %.loopexit.loopexit488.unr-lcssa, %.lr.ph268
  %indvars.iv375.epil.init = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next376.1, %.loopexit.loopexit488.unr-lcssa ]
  %.5267.epil.init = phi i64 [ 0, %.lr.ph268 ], [ %i.hc, %.loopexit.loopexit488.unr-lcssa ]
  %lcmp.mod582 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod582)
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i174, i64 %indvars.iv375.epil.init
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !148 ; 2 uses
  %i.lj = shl i64 %i.li, 1
  %i.lk = ashr i64 %i.li, 63
  %i.ll = xor i64 %i.lj, %i.lk
  %i.lm = or i64 %i.ll, 1
  %i.ln = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.lm, i1 true)
  %i.lo = xor i64 %i.ln, 63
  %i.lp = mul nuw nsw i64 %i.lo, 9
  %i.lq = add nuw nsw i64 %i.lp, 73
  %i.lr = lshr i64 %i.lq, 6
  %i.ls = add i64 %i.lr, %.5267.epil.init
  br label %.loopexit

.loopexit.loopexit490.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %.loopexit, label %.epil.preheader571

.epil.preheader571:                               ; preds = %.loopexit.loopexit490.unr-lcssa, %.lr.ph264
  %indvars.iv370.epil.init = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next371.1, %.loopexit.loopexit490.unr-lcssa ]
  %.6263.epil.init = phi i64 [ 0, %.lr.ph264 ], [ %i.hx, %.loopexit.loopexit490.unr-lcssa ]
  %lcmp.mod575 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod575)
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i176, i64 %indvars.iv370.epil.init
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !3
  %i.lv = or i32 %i.lu, 1
  %i.lw = sext i32 %i.lv to i64
  %i.lx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.lw, i1 true)
  %i.ly = xor i64 %i.lx, 63
  %i.lz = mul nuw nsw i64 %i.ly, 9
  %i.ma = add nuw nsw i64 %i.lz, 73
  %i.mb = lshr i64 %i.ma, 6
  %i.mc = add i64 %i.mb, %.6263.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader571, %.loopexit.loopexit490.unr-lcssa, %.epil.preheader578, %.loopexit.loopexit488.unr-lcssa, %.epil.preheader585, %.loopexit.loopexit486.unr-lcssa, %.epil.preheader592, %.loopexit.loopexit484.unr-lcssa, %.epil.preheader599, %.loopexit.loopexit482.unr-lcssa, %.epil.preheader606, %.loopexit.loopexit480.unr-lcssa, %.epil.preheader613, %.loopexit.loopexit.unr-lcssa, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.7 = phi i64 [ %i.kk, %.epil.preheader599 ], [ %i.jf, %bb.q ], [ %i.jb, %bb.p ], [ %i.kt, %.epil.preheader592 ], [ %i.lg, %.epil.preheader585 ], [ %i.ls, %.epil.preheader578 ], [ %i.jr, %.epil.preheader613 ], [ %i.ka, %.epil.preheader606 ], [ %i.ic, %bb.k ], [ %i.ih, %bb.l ], [ %i.im, %bb.m ], [ %i.ir, %bb.n ], [ %i.iw, %bb.o ], [ %i.cv, %.loopexit.loopexit.unr-lcssa ], [ %i.do, %.loopexit.loopexit480.unr-lcssa ], [ %i.ej, %.loopexit.loopexit482.unr-lcssa ], [ %i.fc, %.loopexit.loopexit484.unr-lcssa ], [ %i.gd, %.loopexit.loopexit486.unr-lcssa ], [ %i.hc, %.loopexit.loopexit488.unr-lcssa ], [ %i.hx, %.loopexit.loopexit490.unr-lcssa ], [ %i.mc, %.epil.preheader571 ] ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.me = trunc i64 %.7 to i32                    ; 2 uses
  store atomic i32 %i.me, ptr %i.md monotonic, align 4
  %.not164 = icmp eq i64 %.7, 0
  br i1 %.not164, label %.loopexit209, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.mf = or i32 %i.me, 1
  %i.mg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mf, i1 true)
  %i.mh = xor i32 %i.mg, 31
  %i.mi = mul nuw nsw i32 %i.mh, 9
  %i.mj = add nuw nsw i32 %i.mi, 73
  %i.mk = lshr i32 %i.mj, 6
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl i32 %1, 3
  %i.mn = or disjoint i32 %i.mm, 3
  %i.mo = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mn, i1 true)
  %i.mp = xor i32 %i.mo, 31
  %i.mq = mul nuw nsw i32 %i.mp, 9
  %i.mr = add nuw nsw i32 %i.mq, 73
  %i.ms = lshr i32 %i.mr, 6
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = add i64 %.7, %i.mt
  %i.mv = add i64 %i.mu, %i.ml
  br label %.loopexit209

bb.u:                                             ; preds = %bb.b
  %i.mw = shl i32 %1, 3
  %i.mx = or disjoint i32 %i.mw, 1
  %i.my = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mx, i1 true)
  %i.mz = xor i32 %i.my, 31
  %i.na = mul nuw nsw i32 %i.mz, 9
  %i.nb = add nuw nsw i32 %i.na, 73
  %i.nc = lshr i32 %i.nb, 6
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = icmp eq i8 %i.h, 10
  %i.nf = zext i1 %i.ne to i64
  %.0.i = shl nuw nsw i64 %i.nd, %i.nf            ; 18 uses
  switch i8 %i.h, label %.loopexit209 [
    i8 5, label %bb.v
    i8 3, label %bb.x
    i8 13, label %bb.z
    i8 4, label %bb.ab
    i8 17, label %bb.ad
    i8 18, label %bb.af
    i8 9, label %bb.ah
    i8 12, label %bb.aj
    i8 14, label %bb.al
    i8 10, label %bb.an
    i8 11, label %bb.ao
    i8 7, label %bb.ap
    i8 6, label %bb.aq
    i8 15, label %bb.ar
    i8 16, label %bb.as
    i8 2, label %bb.at
    i8 1, label %bb.au
    i8 8, label %bb.av
  ]

bb.v:                                             ; preds = %bb.u
  %i.ng = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !116 ; 4 uses
  %i.nj = zext i32 %i.ni to i64                   ; 3 uses
  %i.nk = mul nuw nsw i64 %.0.i, %i.nj            ; 3 uses
  %i.nl = icmp sgt i32 %i.ni, 0
  br i1 %i.nl, label %.lr.ph260, label %.loopexit209

.lr.ph260:                                        ; preds = %bb.v
  %i.nm = load i32, ptr %i.ng, align 4, !tbaa !129
  %i.nn = and i32 %i.nm, 1
  %i.no = icmp eq i32 %i.nn, 0
  %i.np = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  %.0.v.i.i.i.i.i177 = select i1 %i.no, ptr %i.ng, ptr %i.nq
  %.0.i.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i177, i64 8 ; 3 uses
  %xtraiter565 = and i64 %i.nj, 1
  %i.nr = icmp eq i32 %i.ni, 1
  br i1 %i.nr, label %.epil.preheader564, label %.lr.ph260.new

.lr.ph260.new:                                    ; preds = %.lr.ph260
  %unroll_iter569 = and i64 %i.nj, 2147483646
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph260.new
  %indvars.iv365 = phi i64 [ 0, %.lr.ph260.new ], [ %indvars.iv.next366.1, %bb.w ] ; 3 uses
  %.8258 = phi i64 [ %i.nk, %.lr.ph260.new ], [ %i.om, %bb.w ]
  %niter570 = phi i64 [ 0, %.lr.ph260.new ], [ %niter570.next.1, %bb.w ]
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i178, i64 %indvars.iv365
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !3
  %i.nu = or i32 %i.nt, 1
  %i.nv = sext i32 %i.nu to i64
  %i.nw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.nv, i1 true)
  %i.nx = xor i64 %i.nw, 63
  %i.ny = mul nuw nsw i64 %i.nx, 9
  %i.nz = add nuw nsw i64 %i.ny, 73
  %i.oa = lshr i64 %i.nz, 6
  %i.ob = add i64 %i.oa, %.8258
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i178, i64 %indvars.iv365
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !3
  %i.of = or i32 %i.oe, 1
  %i.og = sext i32 %i.of to i64
  %i.oh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.og, i1 true)
  %i.oi = xor i64 %i.oh, 63
  %i.oj = mul nuw nsw i64 %i.oi, 9
  %i.ok = add nuw nsw i64 %i.oj, 73
  %i.ol = lshr i64 %i.ok, 6
  %i.om = add i64 %i.ol, %i.ob                    ; 3 uses
  %indvars.iv.next366.1 = add nuw nsw i64 %indvars.iv365, 2 ; 2 uses
  %niter570.next.1 = add i64 %niter570, 2         ; 2 uses
  %niter570.ncmp.1 = icmp eq i64 %niter570.next.1, %unroll_iter569
  br i1 %niter570.ncmp.1, label %.loopexit209.loopexit.unr-lcssa, label %bb.w, !llvm.loop !413

bb.x:                                             ; preds = %bb.u
  %i.on = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !116 ; 4 uses
  %i.oq = zext i32 %i.op to i64                   ; 3 uses
  %i.or = mul nuw nsw i64 %.0.i, %i.oq            ; 3 uses
  %i.os = icmp sgt i32 %i.op, 0
  br i1 %i.os, label %.lr.ph256, label %.loopexit209

.lr.ph256:                                        ; preds = %bb.x
  %i.ot = load i32, ptr %i.on, align 4, !tbaa !129
  %i.ou = and i32 %i.ot, 1
  %i.ov = icmp eq i32 %i.ou, 0
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8
  %.0.v.i.i.i.i.i179 = select i1 %i.ov, ptr %i.on, ptr %i.ox
  %.0.i.i.i.i.i180 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i179, i64 8 ; 3 uses
  %xtraiter558 = and i64 %i.oq, 1
  %i.oy = icmp eq i32 %i.op, 1
  br i1 %i.oy, label %.epil.preheader557, label %.lr.ph256.new

.lr.ph256.new:                                    ; preds = %.lr.ph256
  %unroll_iter562 = and i64 %i.oq, 2147483646
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph256.new
  %indvars.iv360 = phi i64 [ 0, %.lr.ph256.new ], [ %indvars.iv.next361.1, %bb.y ] ; 3 uses
  %.9254 = phi i64 [ %i.or, %.lr.ph256.new ], [ %i.pr, %bb.y ]
  %niter563 = phi i64 [ 0, %.lr.ph256.new ], [ %niter563.next.1, %bb.y ]
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv360
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !148
  %i.pb = or i64 %i.pa, 1
  %i.pc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.pb, i1 true)
  %i.pd = xor i64 %i.pc, 63
  %i.pe = mul nuw nsw i64 %i.pd, 9
  %i.pf = add nuw nsw i64 %i.pe, 73
  %i.pg = lshr i64 %i.pf, 6
  %i.ph = add i64 %i.pg, %.9254
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv360
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !148
  %i.pl = or i64 %i.pk, 1
  %i.pm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.pl, i1 true)
  %i.pn = xor i64 %i.pm, 63
  %i.po = mul nuw nsw i64 %i.pn, 9
  %i.pp = add nuw nsw i64 %i.po, 73
  %i.pq = lshr i64 %i.pp, 6
  %i.pr = add i64 %i.pq, %i.ph                    ; 3 uses
  %indvars.iv.next361.1 = add nuw nsw i64 %indvars.iv360, 2 ; 2 uses
  %niter563.next.1 = add i64 %niter563, 2         ; 2 uses
  %niter563.ncmp.1 = icmp eq i64 %niter563.next.1, %unroll_iter562
  br i1 %niter563.ncmp.1, label %.loopexit209.loopexit493.unr-lcssa, label %bb.y, !llvm.loop !414

bb.z:                                             ; preds = %bb.u
  %i.ps = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !116 ; 4 uses
  %i.pv = zext i32 %i.pu to i64                   ; 3 uses
  %i.pw = mul nuw nsw i64 %.0.i, %i.pv            ; 3 uses
  %i.px = icmp sgt i32 %i.pu, 0
  br i1 %i.px, label %.lr.ph252, label %.loopexit209

.lr.ph252:                                        ; preds = %bb.z
  %i.py = load i32, ptr %i.ps, align 4, !tbaa !129
  %i.pz = and i32 %i.py, 1
  %i.qa = icmp eq i32 %i.pz, 0
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8
  %.0.v.i.i.i.i.i181 = select i1 %i.qa, ptr %i.ps, ptr %i.qc
  %.0.i.i.i.i.i182 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i181, i64 8 ; 3 uses
  %xtraiter551 = and i64 %i.pv, 1
  %i.qd = icmp eq i32 %i.pu, 1
  br i1 %i.qd, label %.epil.preheader550, label %.lr.ph252.new

.lr.ph252.new:                                    ; preds = %.lr.ph252
  %unroll_iter555 = and i64 %i.pv, 2147483646
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph252.new
  %indvars.iv355 = phi i64 [ 0, %.lr.ph252.new ], [ %indvars.iv.next356.1, %bb.aa ] ; 3 uses
  %.10250 = phi i64 [ %i.pw, %.lr.ph252.new ], [ %i.qy, %bb.aa ]
  %niter556 = phi i64 [ 0, %.lr.ph252.new ], [ %niter556.next.1, %bb.aa ]
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i182, i64 %indvars.iv355
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3
  %i.qg = or i32 %i.qf, 1
  %i.qh = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qg, i1 true)
  %i.qi = xor i32 %i.qh, 31
  %i.qj = mul nuw nsw i32 %i.qi, 9
  %i.qk = add nuw nsw i32 %i.qj, 73
  %i.ql = lshr i32 %i.qk, 6
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = add i64 %.10250, %i.qm
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i182, i64 %indvars.iv355
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !3
  %i.qr = or i32 %i.qq, 1
  %i.qs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qr, i1 true)
  %i.qt = xor i32 %i.qs, 31
  %i.qu = mul nuw nsw i32 %i.qt, 9
  %i.qv = add nuw nsw i32 %i.qu, 73
  %i.qw = lshr i32 %i.qv, 6
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = add i64 %i.qn, %i.qx                    ; 3 uses
  %indvars.iv.next356.1 = add nuw nsw i64 %indvars.iv355, 2 ; 2 uses
  %niter556.next.1 = add i64 %niter556, 2         ; 2 uses
  %niter556.ncmp.1 = icmp eq i64 %niter556.next.1, %unroll_iter555
  br i1 %niter556.ncmp.1, label %.loopexit209.loopexit495.unr-lcssa, label %bb.aa, !llvm.loop !415

bb.ab:                                            ; preds = %bb.u
  %i.qz = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !116 ; 4 uses
  %i.rc = zext i32 %i.rb to i64                   ; 3 uses
  %i.rd = mul nuw nsw i64 %.0.i, %i.rc            ; 3 uses
  %i.re = icmp sgt i32 %i.rb, 0
  br i1 %i.re, label %.lr.ph248, label %.loopexit209

.lr.ph248:                                        ; preds = %bb.ab
  %i.rf = load i32, ptr %i.qz, align 4, !tbaa !129
  %i.rg = and i32 %i.rf, 1
  %i.rh = icmp eq i32 %i.rg, 0
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8
  %.0.v.i.i.i.i.i183 = select i1 %i.rh, ptr %i.qz, ptr %i.rj
  %.0.i.i.i.i.i184 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i183, i64 8 ; 3 uses
  %xtraiter544 = and i64 %i.rc, 1
  %i.rk = icmp eq i32 %i.rb, 1
  br i1 %i.rk, label %.epil.preheader543, label %.lr.ph248.new

.lr.ph248.new:                                    ; preds = %.lr.ph248
  %unroll_iter548 = and i64 %i.rc, 2147483646
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph248.new
  %indvars.iv350 = phi i64 [ 0, %.lr.ph248.new ], [ %indvars.iv.next351.1, %bb.ac ] ; 3 uses
  %.11246 = phi i64 [ %i.rd, %.lr.ph248.new ], [ %i.sd, %bb.ac ]
  %niter549 = phi i64 [ 0, %.lr.ph248.new ], [ %niter549.next.1, %bb.ac ]
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i184, i64 %indvars.iv350
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !148
  %i.rn = or i64 %i.rm, 1
  %i.ro = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.rn, i1 true)
  %i.rp = xor i64 %i.ro, 63
  %i.rq = mul nuw nsw i64 %i.rp, 9
  %i.rr = add nuw nsw i64 %i.rq, 73
  %i.rs = lshr i64 %i.rr, 6
  %i.rt = add i64 %i.rs, %.11246
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i184, i64 %indvars.iv350
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !148
  %i.rx = or i64 %i.rw, 1
  %i.ry = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.rx, i1 true)
  %i.rz = xor i64 %i.ry, 63
  %i.sa = mul nuw nsw i64 %i.rz, 9
  %i.sb = add nuw nsw i64 %i.sa, 73
  %i.sc = lshr i64 %i.sb, 6
  %i.sd = add i64 %i.sc, %i.rt                    ; 3 uses
  %indvars.iv.next351.1 = add nuw nsw i64 %indvars.iv350, 2 ; 2 uses
  %niter549.next.1 = add i64 %niter549, 2         ; 2 uses
  %niter549.ncmp.1 = icmp eq i64 %niter549.next.1, %unroll_iter548
  br i1 %niter549.ncmp.1, label %.loopexit209.loopexit497.unr-lcssa, label %bb.ac, !llvm.loop !416

bb.ad:                                            ; preds = %bb.u
  %i.se = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !116 ; 4 uses
  %i.sh = zext i32 %i.sg to i64                   ; 3 uses
  %i.si = mul nuw nsw i64 %.0.i, %i.sh            ; 3 uses
  %i.sj = icmp sgt i32 %i.sg, 0
  br i1 %i.sj, label %.lr.ph244, label %.loopexit209

.lr.ph244:                                        ; preds = %bb.ad
  %i.sk = load i32, ptr %i.se, align 4, !tbaa !129
  %i.sl = and i32 %i.sk, 1
  %i.sm = icmp eq i32 %i.sl, 0
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  %.0.v.i.i.i.i.i185 = select i1 %i.sm, ptr %i.se, ptr %i.so
  %.0.i.i.i.i.i186 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i185, i64 8 ; 3 uses
  %xtraiter537 = and i64 %i.sh, 1
  %i.sp = icmp eq i32 %i.sg, 1
  br i1 %i.sp, label %.epil.preheader536, label %.lr.ph244.new

.lr.ph244.new:                                    ; preds = %.lr.ph244
  %unroll_iter541 = and i64 %i.sh, 2147483646
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph244.new
  %indvars.iv345 = phi i64 [ 0, %.lr.ph244.new ], [ %indvars.iv.next346.1, %bb.ae ] ; 3 uses
  %.12242 = phi i64 [ %i.si, %.lr.ph244.new ], [ %i.tq, %bb.ae ]
  %niter542 = phi i64 [ 0, %.lr.ph244.new ], [ %niter542.next.1, %bb.ae ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i186, i64 %indvars.iv345
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !3  ; 2 uses
  %i.ss = shl i32 %i.sr, 1
  %i.st = ashr i32 %i.sr, 31
  %i.su = xor i32 %i.ss, %i.st
  %i.sv = or i32 %i.su, 1
  %i.sw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sv, i1 true)
  %i.sx = xor i32 %i.sw, 31
  %i.sy = mul nuw nsw i32 %i.sx, 9
  %i.sz = add nuw nsw i32 %i.sy, 73
  %i.ta = lshr i32 %i.sz, 6
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = add i64 %.12242, %i.tb
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i186, i64 %indvars.iv345
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !3  ; 2 uses
  %i.tg = shl i32 %i.tf, 1
  %i.th = ashr i32 %i.tf, 31
  %i.ti = xor i32 %i.tg, %i.th
  %i.tj = or i32 %i.ti, 1
  %i.tk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.tj, i1 true)
  %i.tl = xor i32 %i.tk, 31
  %i.tm = mul nuw nsw i32 %i.tl, 9
  %i.tn = add nuw nsw i32 %i.tm, 73
  %i.to = lshr i32 %i.tn, 6
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = add i64 %i.tc, %i.tp                    ; 3 uses
  %indvars.iv.next346.1 = add nuw nsw i64 %indvars.iv345, 2 ; 2 uses
  %niter542.next.1 = add i64 %niter542, 2         ; 2 uses
  %niter542.ncmp.1 = icmp eq i64 %niter542.next.1, %unroll_iter541
  br i1 %niter542.ncmp.1, label %.loopexit209.loopexit499.unr-lcssa, label %bb.ae, !llvm.loop !417

bb.af:                                            ; preds = %bb.u
  %i.tr = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !116 ; 4 uses
  %i.tu = zext i32 %i.tt to i64                   ; 3 uses
  %i.tv = mul nuw nsw i64 %.0.i, %i.tu            ; 3 uses
  %i.tw = icmp sgt i32 %i.tt, 0
  br i1 %i.tw, label %.lr.ph240, label %.loopexit209

.lr.ph240:                                        ; preds = %bb.af
  %i.tx = load i32, ptr %i.tr, align 4, !tbaa !129
  %i.ty = and i32 %i.tx, 1
  %i.tz = icmp eq i32 %i.ty, 0
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8
  %.0.v.i.i.i.i.i187 = select i1 %i.tz, ptr %i.tr, ptr %i.ub
  %.0.i.i.i.i.i188 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i187, i64 8 ; 3 uses
  %xtraiter530 = and i64 %i.tu, 1
  %i.uc = icmp eq i32 %i.tt, 1
  br i1 %i.uc, label %.epil.preheader529, label %.lr.ph240.new

.lr.ph240.new:                                    ; preds = %.lr.ph240
  %unroll_iter534 = and i64 %i.tu, 2147483646
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph240.new
  %indvars.iv340 = phi i64 [ 0, %.lr.ph240.new ], [ %indvars.iv.next341.1, %bb.ag ] ; 3 uses
  %.13238 = phi i64 [ %i.tv, %.lr.ph240.new ], [ %i.vb, %bb.ag ]
  %niter535 = phi i64 [ 0, %.lr.ph240.new ], [ %niter535.next.1, %bb.ag ]
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i188, i64 %indvars.iv340
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !148 ; 2 uses
  %i.uf = shl i64 %i.ue, 1
  %i.ug = ashr i64 %i.ue, 63
  %i.uh = xor i64 %i.uf, %i.ug
  %i.ui = or i64 %i.uh, 1
  %i.uj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ui, i1 true)
  %i.uk = xor i64 %i.uj, 63
  %i.ul = mul nuw nsw i64 %i.uk, 9
  %i.um = add nuw nsw i64 %i.ul, 73
  %i.un = lshr i64 %i.um, 6
  %i.uo = add i64 %i.un, %.13238
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i188, i64 %indvars.iv340
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !148 ; 2 uses
  %i.us = shl i64 %i.ur, 1
  %i.ut = ashr i64 %i.ur, 63
  %i.uu = xor i64 %i.us, %i.ut
  %i.uv = or i64 %i.uu, 1
  %i.uw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.uv, i1 true)
  %i.ux = xor i64 %i.uw, 63
  %i.uy = mul nuw nsw i64 %i.ux, 9
  %i.uz = add nuw nsw i64 %i.uy, 73
  %i.va = lshr i64 %i.uz, 6
  %i.vb = add i64 %i.va, %i.uo                    ; 3 uses
  %indvars.iv.next341.1 = add nuw nsw i64 %indvars.iv340, 2 ; 2 uses
  %niter535.next.1 = add i64 %niter535, 2         ; 2 uses
  %niter535.ncmp.1 = icmp eq i64 %niter535.next.1, %unroll_iter534
  br i1 %niter535.ncmp.1, label %.loopexit209.loopexit501.unr-lcssa, label %bb.ag, !llvm.loop !418

bb.ah:                                            ; preds = %bb.u
  %i.vc = load ptr, ptr %0, align 8, !tbaa !13    ; 5 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !119 ; 4 uses
  %i.vf = zext i32 %i.ve to i64                   ; 3 uses
  %i.vg = mul nuw nsw i64 %.0.i, %i.vf            ; 3 uses
  %i.vh = icmp sgt i32 %i.ve, 0
  br i1 %i.vh, label %.lr.ph236, label %.loopexit209

.lr.ph236:                                        ; preds = %bb.ah
  %i.vi = load ptr, ptr %i.vc, align 8, !tbaa !132
  %i.vj = ptrtoint ptr %i.vi to i64               ; 2 uses
  %i.vk = and i64 %i.vj, 1
  %i.vl = icmp eq i64 %i.vk, 0                    ; 3 uses
  %i.vm = add i64 %i.vj, -1
  %i.vn = inttoptr i64 %i.vm to ptr
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8 ; 3 uses
  %xtraiter523 = and i64 %i.vf, 1
  %i.vp = icmp eq i32 %i.ve, 1
  br i1 %i.vp, label %.epil.preheader522, label %.lr.ph236.new

.lr.ph236.new:                                    ; preds = %.lr.ph236
  %unroll_iter527 = and i64 %i.vf, 2147483646
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph236.new
  %indvars.iv335 = phi i64 [ 0, %.lr.ph236.new ], [ %indvars.iv.next336.1, %bb.ai ] ; 3 uses
  %.14234 = phi i64 [ %i.vg, %.lr.ph236.new ], [ %i.ws, %bb.ai ]
  %niter528 = phi i64 [ 0, %.lr.ph236.new ], [ %niter528.next.1, %bb.ai ]
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %indvars.iv335
  %.0.i.i.i.i = select i1 %i.vl, ptr %i.vc, ptr %i.vq
  %i.vr = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !20
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !122 ; 2 uses
  %i.vu = trunc i64 %i.vt to i32
  %i.vv = or i32 %i.vu, 1
  %i.vw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.vv, i1 true)
  %i.vx = xor i32 %i.vw, 31
  %i.vy = mul nuw nsw i32 %i.vx, 9
  %i.vz = add nuw nsw i32 %i.vy, 73
  %i.wa = lshr i32 %i.vz, 6
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = add i64 %i.vt, %.14234
  %i.wd = add i64 %i.wc, %i.wb
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %indvars.iv335
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.0.i.i.i.i.1 = select i1 %i.vl, ptr %i.vc, ptr %i.wf
  %i.wg = load ptr, ptr %.0.i.i.i.i.1, align 8, !tbaa !20
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !122 ; 2 uses
  %i.wj = trunc i64 %i.wi to i32
  %i.wk = or i32 %i.wj, 1
  %i.wl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.wk, i1 true)
  %i.wm = xor i32 %i.wl, 31
  %i.wn = mul nuw nsw i32 %i.wm, 9
  %i.wo = add nuw nsw i32 %i.wn, 73
  %i.wp = lshr i32 %i.wo, 6
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = add i64 %i.wi, %i.wd
  %i.ws = add i64 %i.wr, %i.wq                    ; 3 uses
  %indvars.iv.next336.1 = add nuw nsw i64 %indvars.iv335, 2 ; 2 uses
  %niter528.next.1 = add i64 %niter528, 2         ; 2 uses
  %niter528.ncmp.1 = icmp eq i64 %niter528.next.1, %unroll_iter527
  br i1 %niter528.ncmp.1, label %.loopexit209.loopexit503.unr-lcssa, label %bb.ai, !llvm.loop !419

bb.aj:                                            ; preds = %bb.u
  %i.wt = load ptr, ptr %0, align 8, !tbaa !13    ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !119 ; 4 uses
  %i.ww = zext i32 %i.wv to i64                   ; 3 uses
  %i.wx = mul nuw nsw i64 %.0.i, %i.ww            ; 3 uses
  %i.wy = icmp sgt i32 %i.wv, 0
  br i1 %i.wy, label %.lr.ph232, label %.loopexit209

.lr.ph232:                                        ; preds = %bb.aj
  %i.wz = load ptr, ptr %i.wt, align 8, !tbaa !132
  %i.xa = ptrtoint ptr %i.wz to i64               ; 2 uses
  %i.xb = and i64 %i.xa, 1
  %i.xc = icmp eq i64 %i.xb, 0                    ; 3 uses
  %i.xd = add i64 %i.xa, -1
  %i.xe = inttoptr i64 %i.xd to ptr
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8 ; 3 uses
  %xtraiter516 = and i64 %i.ww, 1
  %i.xg = icmp eq i32 %i.wv, 1
  br i1 %i.xg, label %.epil.preheader515, label %.lr.ph232.new

.lr.ph232.new:                                    ; preds = %.lr.ph232
  %unroll_iter520 = and i64 %i.ww, 2147483646
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph232.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph232.new ], [ %indvars.iv.next331.1, %bb.ak ] ; 3 uses
  %.15230 = phi i64 [ %i.wx, %.lr.ph232.new ], [ %i.yj, %bb.ak ]
  %niter521 = phi i64 [ 0, %.lr.ph232.new ], [ %niter521.next.1, %bb.ak ]
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv330
  %.0.i.i.i.i189 = select i1 %i.xc, ptr %i.wt, ptr %i.xh
  %i.xi = load ptr, ptr %.0.i.i.i.i189, align 8, !tbaa !20
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !122 ; 2 uses
  %i.xl = trunc i64 %i.xk to i32
  %i.xm = or i32 %i.xl, 1
  %i.xn = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xm, i1 true)
  %i.xo = xor i32 %i.xn, 31
  %i.xp = mul nuw nsw i32 %i.xo, 9
  %i.xq = add nuw nsw i32 %i.xp, 73
  %i.xr = lshr i32 %i.xq, 6
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = add i64 %i.xk, %.15230
  %i.xu = add i64 %i.xt, %i.xs
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv330
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %.0.i.i.i.i189.1 = select i1 %i.xc, ptr %i.wt, ptr %i.xw
  %i.xx = load ptr, ptr %.0.i.i.i.i189.1, align 8, !tbaa !20
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !122 ; 2 uses
  %i.ya = trunc i64 %i.xz to i32
  %i.yb = or i32 %i.ya, 1
  %i.yc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.yb, i1 true)
  %i.yd = xor i32 %i.yc, 31
  %i.ye = mul nuw nsw i32 %i.yd, 9
  %i.yf = add nuw nsw i32 %i.ye, 73
  %i.yg = lshr i32 %i.yf, 6
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = add i64 %i.xz, %i.xu
  %i.yj = add i64 %i.yi, %i.yh                    ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 2 uses
  %niter521.next.1 = add i64 %niter521, 2         ; 2 uses
  %niter521.ncmp.1 = icmp eq i64 %niter521.next.1, %unroll_iter520
  br i1 %niter521.ncmp.1, label %.loopexit209.loopexit505.unr-lcssa, label %bb.ak, !llvm.loop !420

bb.al:                                            ; preds = %bb.u
  %i.yk = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 4
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !116 ; 4 uses
  %i.yn = zext i32 %i.ym to i64                   ; 3 uses
  %i.yo = mul nuw nsw i64 %.0.i, %i.yn            ; 3 uses
  %i.yp = icmp sgt i32 %i.ym, 0
  br i1 %i.yp, label %.lr.ph228, label %.loopexit209

.lr.ph228:                                        ; preds = %bb.al
  %i.yq = load i32, ptr %i.yk, align 4, !tbaa !129
  %i.yr = and i32 %i.yq, 1
  %i.ys = icmp eq i32 %i.yr, 0
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  %.0.v.i.i.i.i.i190 = select i1 %i.ys, ptr %i.yk, ptr %i.yu
  %.0.i.i.i.i.i191 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i190, i64 8 ; 3 uses
  %xtraiter = and i64 %i.yn, 1
  %i.yv = icmp eq i32 %i.ym, 1
  br i1 %i.yv, label %.epil.preheader, label %.lr.ph228.new

.lr.ph228.new:                                    ; preds = %.lr.ph228
  %unroll_iter = and i64 %i.yn, 2147483646
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph228.new
  %indvars.iv327 = phi i64 [ 0, %.lr.ph228.new ], [ %indvars.iv.next328.1, %bb.am ] ; 3 uses
  %.16226 = phi i64 [ %i.yo, %.lr.ph228.new ], [ %i.zq, %bb.am ]
  %niter = phi i64 [ 0, %.lr.ph228.new ], [ %niter.next.1, %bb.am ]
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i191, i64 %indvars.iv327
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !3
  %i.yy = or i32 %i.yx, 1
  %i.yz = sext i32 %i.yy to i64
  %i.za = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.yz, i1 true)
  %i.zb = xor i64 %i.za, 63
  %i.zc = mul nuw nsw i64 %i.zb, 9
  %i.zd = add nuw nsw i64 %i.zc, 73
  %i.ze = lshr i64 %i.zd, 6
  %i.zf = add i64 %i.ze, %.16226
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i191, i64 %indvars.iv327
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !3
  %i.zj = or i32 %i.zi, 1
  %i.zk = sext i32 %i.zj to i64
  %i.zl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.zk, i1 true)
  %i.zm = xor i64 %i.zl, 63
  %i.zn = mul nuw nsw i64 %i.zm, 9
  %i.zo = add nuw nsw i64 %i.zn, 73
  %i.zp = lshr i64 %i.zo, 6
  %i.zq = add i64 %i.zp, %i.zf                    ; 3 uses
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit209.loopexit507.unr-lcssa, label %bb.am, !llvm.loop !421

bb.an:                                            ; preds = %bb.u
  %i.zr = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !119 ; 2 uses
  %i.zu = zext i32 %i.zt to i64
  %i.zv = mul nuw nsw i64 %.0.i, %i.zu            ; 2 uses
  %i.zw = icmp sgt i32 %i.zt, 0
  br i1 %i.zw, label %.lr.ph224, label %.loopexit209

.lr.ph224:                                        ; preds = %bb.an, %.lr.ph224
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %.lr.ph224 ], [ 0, %bb.an ] ; 2 uses
  %i.zx = phi ptr [ %i.aam, %.lr.ph224 ], [ %i.zr, %bb.an ] ; 2 uses
  %.17222 = phi i64 [ %i.aal, %.lr.ph224 ], [ %i.zv, %bb.an ]
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !132
  %i.zz = ptrtoint ptr %i.zy to i64               ; 2 uses
  %i.aaa = and i64 %i.zz, 1
  %i.aab = icmp eq i64 %i.aaa, 0
  %i.aac = add i64 %i.zz, -1
  %i.aad = inttoptr i64 %i.aac to ptr
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.aae, i64 %indvars.iv324
  %.0.i.i.i.i192 = select i1 %i.aab, ptr %i.zx, ptr %i.aaf
  %i.aag = load ptr, ptr %.0.i.i.i.i192, align 8, !tbaa !20 ; 2 uses
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !69
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = tail call noundef i64 %i.aaj(ptr noundef nonnull align 8 dereferenceable(16) %i.aag), !inline_history !422
  %i.aal = add i64 %i.aak, %.17222                ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.aam = load ptr, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !119
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = icmp slt i64 %indvars.iv.next325, %i.aap
  br i1 %i.aaq, label %.lr.ph224, label %.loopexit209, !llvm.loop !423

bb.ao:                                            ; preds = %bb.u
  %i.aar = load ptr, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !119 ; 2 uses
  %i.aau = zext i32 %i.aat to i64
  %i.aav = mul nuw nsw i64 %.0.i, %i.aau          ; 2 uses
  %i.aaw = icmp sgt i32 %i.aat, 0
  br i1 %i.aaw, label %.lr.ph, label %.loopexit209

.lr.ph:                                           ; preds = %bb.ao, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.ao ] ; 2 uses
  %i.aax = phi ptr [ %i.abv, %.lr.ph ], [ %i.aar, %bb.ao ] ; 2 uses
  %.18220 = phi i64 [ %i.abu, %.lr.ph ], [ %i.aav, %bb.ao ]
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !132
  %i.aaz = ptrtoint ptr %i.aay to i64             ; 2 uses
  %i.aba = and i64 %i.aaz, 1
  %i.abb = icmp eq i64 %i.aba, 0
  %i.abc = add i64 %i.aaz, -1
  %i.abd = inttoptr i64 %i.abc to ptr
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv
  %.0.i.i.i.i193 = select i1 %i.abb, ptr %i.aax, ptr %i.abf
  %i.abg = load ptr, ptr %.0.i.i.i.i193, align 8, !tbaa !20 ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !69
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = tail call noundef i64 %i.abj(ptr noundef nonnull align 8 dereferenceable(16) %i.abg), !inline_history !424 ; 2 uses
  %i.abl = trunc i64 %i.abk to i32
  %i.abm = or i32 %i.abl, 1
  %i.abn = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.abm, i1 true)
  %i.abo = xor i32 %i.abn, 31
  %i.abp = mul nuw nsw i32 %i.abo, 9
  %i.abq = add nuw nsw i32 %i.abp, 73
  %i.abr = lshr i32 %i.abq, 6
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = add i64 %i.abk, %.18220
  %i.abu = add i64 %i.abt, %i.abs                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.abv = load ptr, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !119
  %i.aby = sext i32 %i.abx to i64
  %i.abz = icmp slt i64 %indvars.iv.next, %i.aby
  br i1 %i.abz, label %.lr.ph, label %.loopexit209, !llvm.loop !425

bb.ap:                                            ; preds = %bb.u
  %i.aca = add nuw nsw i64 %.0.i, 4
  %i.acb = load ptr, ptr %0, align 8, !tbaa !13
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 4
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !116
  %i.ace = zext i32 %i.acd to i64
  %i.acf = mul nuw nsw i64 %i.aca, %i.ace
  br label %.loopexit209

bb.aq:                                            ; preds = %bb.u
  %i.acg = add nuw nsw i64 %.0.i, 8
  %i.ach = load ptr, ptr %0, align 8, !tbaa !13
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !116
  %i.ack = zext i32 %i.acj to i64
  %i.acl = mul nuw nsw i64 %i.acg, %i.ack
  br label %.loopexit209

bb.ar:                                            ; preds = %bb.u
  %i.acm = add nuw nsw i64 %.0.i, 4
  %i.acn = load ptr, ptr %0, align 8, !tbaa !13
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 4
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !116
  %i.acq = zext i32 %i.acp to i64
  %i.acr = mul nuw nsw i64 %i.acm, %i.acq
  br label %.loopexit209

bb.as:                                            ; preds = %bb.u
  %i.acs = add nuw nsw i64 %.0.i, 8
  %i.act = load ptr, ptr %0, align 8, !tbaa !13
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 4
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !116
  %i.acw = zext i32 %i.acv to i64
  %i.acx = mul nuw nsw i64 %i.acs, %i.acw
  br label %.loopexit209

bb.at:                                            ; preds = %bb.u
  %i.acy = add nuw nsw i64 %.0.i, 4
  %i.acz = load ptr, ptr %0, align 8, !tbaa !13
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !116
  %i.adc = zext i32 %i.adb to i64
  %i.add = mul nuw nsw i64 %i.acy, %i.adc
  br label %.loopexit209

bb.au:                                            ; preds = %bb.u
  %i.ade = add nuw nsw i64 %.0.i, 8
  %i.adf = load ptr, ptr %0, align 8, !tbaa !13
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !116
  %i.adi = zext i32 %i.adh to i64
  %i.adj = mul nuw nsw i64 %i.ade, %i.adi
  br label %.loopexit209

bb.av:                                            ; preds = %bb.u
  %i.adk = add nuw nsw i64 %.0.i, 1
  %i.adl = load ptr, ptr %0, align 8, !tbaa !13
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 4
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !116
  %i.ado = zext i32 %i.adn to i64
  %i.adp = mul nuw nsw i64 %i.adk, %i.ado
  br label %.loopexit209

bb.aw:                                            ; preds = %bb.a
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.adr = load i8, ptr %i.adq, align 2           ; 2 uses
  %i.ads = and i8 %i.adr, 2
  %.not = icmp eq i8 %i.ads, 0
  br i1 %.not, label %bb.ax, label %.loopexit209

bb.ax:                                            ; preds = %bb.aw
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adu = load i8, ptr %i.adt, align 8, !tbaa !105 ; 2 uses
  %i.adv = shl i32 %1, 3
  %i.adw = or disjoint i32 %i.adv, 1
  %i.adx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.adw, i1 true)
  %i.ady = xor i32 %i.adx, 31
  %i.adz = mul nuw nsw i32 %i.ady, 9
  %i.aea = add nuw nsw i32 %i.adz, 73
  %i.aeb = lshr i32 %i.aea, 6
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = icmp eq i8 %i.adu, 10
  %i.aee = zext i1 %i.aed to i64
  %.0.i194 = shl nuw nsw i64 %i.aec, %i.aee       ; 19 uses
  switch i8 %i.adu, label %.loopexit209 [
    i8 5, label %bb.ay
    i8 3, label %bb.az
    i8 13, label %bb.ba
    i8 4, label %bb.bb
    i8 17, label %bb.bc
    i8 18, label %bb.bd
    i8 9, label %bb.be
    i8 12, label %bb.bf
    i8 14, label %bb.bg
    i8 10, label %bb.bh
    i8 11, label %bb.bi
    i8 7, label %bb.bj
    i8 6, label %bb.bk
    i8 15, label %bb.bl
    i8 16, label %bb.bm
    i8 2, label %bb.bn
    i8 1, label %bb.bo
    i8 8, label %bb.bp
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.aef = load i32, ptr %0, align 8, !tbaa !13
  %i.aeg = or i32 %i.aef, 1
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aeh, i1 true)
  %i.aej = xor i64 %i.aei, 63
  %i.aek = mul nuw nsw i64 %i.aej, 9
  %i.ael = add nuw nsw i64 %i.aek, 73
  %i.aem = lshr i64 %i.ael, 6
  %i.aen = add nuw nsw i64 %i.aem, %.0.i194
  br label %.loopexit209

bb.az:                                            ; preds = %bb.ax
  %i.aeo = load i64, ptr %0, align 8, !tbaa !13
  %i.aep = or i64 %i.aeo, 1
  %i.aeq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aep, i1 true)
  %i.aer = xor i64 %i.aeq, 63
  %i.aes = mul nuw nsw i64 %i.aer, 9
  %i.aet = add nuw nsw i64 %i.aes, 73
  %i.aeu = lshr i64 %i.aet, 6
  %i.aev = add nuw nsw i64 %i.aeu, %.0.i194
  br label %.loopexit209

bb.ba:                                            ; preds = %bb.ax
  %i.aew = load i32, ptr %0, align 8, !tbaa !13
  %i.aex = or i32 %i.aew, 1
  %i.aey = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aex, i1 true)
  %i.aez = xor i32 %i.aey, 31
  %i.afa = mul nuw nsw i32 %i.aez, 9
  %i.afb = add nuw nsw i32 %i.afa, 73
  %i.afc = lshr i32 %i.afb, 6
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = add nuw nsw i64 %.0.i194, %i.afd
  br label %.loopexit209

bb.bb:                                            ; preds = %bb.ax
  %i.aff = load i64, ptr %0, align 8, !tbaa !13
  %i.afg = or i64 %i.aff, 1
  %i.afh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.afg, i1 true)
  %i.afi = xor i64 %i.afh, 63
  %i.afj = mul nuw nsw i64 %i.afi, 9
  %i.afk = add nuw nsw i64 %i.afj, 73
  %i.afl = lshr i64 %i.afk, 6
  %i.afm = add nuw nsw i64 %i.afl, %.0.i194
  br label %.loopexit209

bb.bc:                                            ; preds = %bb.ax
  %i.afn = load i32, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.afo = shl i32 %i.afn, 1
  %i.afp = ashr i32 %i.afn, 31
  %i.afq = xor i32 %i.afo, %i.afp
  %i.afr = or i32 %i.afq, 1
  %i.afs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.afr, i1 true)
  %i.aft = xor i32 %i.afs, 31
  %i.afu = mul nuw nsw i32 %i.aft, 9
  %i.afv = add nuw nsw i32 %i.afu, 73
  %i.afw = lshr i32 %i.afv, 6
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = add nuw nsw i64 %.0.i194, %i.afx
  br label %.loopexit209

bb.bd:                                            ; preds = %bb.ax
  %i.afz = load i64, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.aga = shl i64 %i.afz, 1
  %i.agb = ashr i64 %i.afz, 63
  %i.agc = xor i64 %i.aga, %i.agb
  %i.agd = or i64 %i.agc, 1
  %i.age = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.agd, i1 true)
  %i.agf = xor i64 %i.age, 63
  %i.agg = mul nuw nsw i64 %i.agf, 9
  %i.agh = add nuw nsw i64 %i.agg, 73
  %i.agi = lshr i64 %i.agh, 6
  %i.agj = add nuw nsw i64 %i.agi, %.0.i194
  br label %.loopexit209

bb.be:                                            ; preds = %bb.ax
  %i.agk = load ptr, ptr %0, align 8, !tbaa !13
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !122 ; 2 uses
  %i.agn = trunc i64 %i.agm to i32
  %i.ago = or i32 %i.agn, 1
  %i.agp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ago, i1 true)
  %i.agq = xor i32 %i.agp, 31
  %i.agr = mul nuw nsw i32 %i.agq, 9
  %i.ags = add nuw nsw i32 %i.agr, 73
  %i.agt = lshr i32 %i.ags, 6
  %i.agu = zext nneg i32 %i.agt to i64
  %i.agv = add i64 %i.agm, %.0.i194
  %i.agw = add i64 %i.agv, %i.agu
  br label %.loopexit209

bb.bf:                                            ; preds = %bb.ax
  %i.agx = load ptr, ptr %0, align 8, !tbaa !13
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !122 ; 2 uses
  %i.aha = trunc i64 %i.agz to i32
  %i.ahb = or i32 %i.aha, 1
  %i.ahc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ahb, i1 true)
  %i.ahd = xor i32 %i.ahc, 31
  %i.ahe = mul nuw nsw i32 %i.ahd, 9
  %i.ahf = add nuw nsw i32 %i.ahe, 73
  %i.ahg = lshr i32 %i.ahf, 6
  %i.ahh = zext nneg i32 %i.ahg to i64
  %i.ahi = add i64 %i.agz, %.0.i194
  %i.ahj = add i64 %i.ahi, %i.ahh
  br label %.loopexit209

bb.bg:                                            ; preds = %bb.ax
  %i.ahk = load i32, ptr %0, align 8, !tbaa !13
  %i.ahl = or i32 %i.ahk, 1
  %i.ahm = sext i32 %i.ahl to i64
  %i.ahn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ahm, i1 true)
  %i.aho = xor i64 %i.ahn, 63
  %i.ahp = mul nuw nsw i64 %i.aho, 9
  %i.ahq = add nuw nsw i64 %i.ahp, 73
  %i.ahr = lshr i64 %i.ahq, 6
  %i.ahs = add nuw nsw i64 %i.ahr, %.0.i194
  br label %.loopexit209

bb.bh:                                            ; preds = %bb.ax
  %i.aht = load ptr, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !69
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  %i.ahw = load ptr, ptr %i.ahv, align 8
  %i.ahx = tail call noundef i64 %i.ahw(ptr noundef nonnull align 8 dereferenceable(16) %i.aht), !inline_history !422
  %i.ahy = add i64 %i.ahx, %.0.i194
  br label %.loopexit209

bb.bi:                                            ; preds = %bb.ax
  %i.ahz = and i8 %i.adr, 4
  %.not161 = icmp eq i8 %i.ahz, 0
  %i.aia = load ptr, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !69
  %. = select i1 %.not161, i64 24, i64 104
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.
  %i.aid = load ptr, ptr %i.aic, align 8
  %i.aie = tail call noundef i64 %i.aid(ptr noundef nonnull align 8 dereferenceable(8) %i.aia) ; 2 uses
  %i.aif = trunc i64 %i.aie to i32
  %i.aig = or i32 %i.aif, 1
  %i.aih = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aig, i1 true)
  %i.aii = xor i32 %i.aih, 31
  %i.aij = mul nuw nsw i32 %i.aii, 9
  %i.aik = add nuw nsw i32 %i.aij, 73
  %i.ail = lshr i32 %i.aik, 6
  %i.aim = zext nneg i32 %i.ail to i64
  %i.ain = add i64 %i.aie, %.0.i194
  %i.aio = add i64 %i.ain, %i.aim
  br label %.loopexit209

bb.bj:                                            ; preds = %bb.ax
  %i.aip = add nuw nsw i64 %.0.i194, 4
  br label %.loopexit209

bb.bk:                                            ; preds = %bb.ax
  %i.aiq = add nuw nsw i64 %.0.i194, 8
  br label %.loopexit209

bb.bl:                                            ; preds = %bb.ax
  %i.air = add nuw nsw i64 %.0.i194, 4
  br label %.loopexit209

bb.bm:                                            ; preds = %bb.ax
  %i.ais = add nuw nsw i64 %.0.i194, 8
  br label %.loopexit209

bb.bn:                                            ; preds = %bb.ax
  %i.ait = add nuw nsw i64 %.0.i194, 4
  br label %.loopexit209

bb.bo:                                            ; preds = %bb.ax
  %i.aiu = add nuw nsw i64 %.0.i194, 8
  br label %.loopexit209

bb.bp:                                            ; preds = %bb.ax
  %i.aiv = add nuw nsw i64 %.0.i194, 1
  br label %.loopexit209

.loopexit209.loopexit.unr-lcssa:                  ; preds = %bb.w
  %lcmp.mod566.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod566.not, label %.loopexit209, label %.epil.preheader564

.epil.preheader564:                               ; preds = %.loopexit209.loopexit.unr-lcssa, %.lr.ph260
  %indvars.iv365.epil.init = phi i64 [ 0, %.lr.ph260 ], [ %indvars.iv.next366.1, %.loopexit209.loopexit.unr-lcssa ]
  %.8258.epil.init = phi i64 [ %i.nk, %.lr.ph260 ], [ %i.om, %.loopexit209.loopexit.unr-lcssa ]
  %lcmp.mod568 = trunc i32 %i.ni to i1
  tail call void @llvm.assume(i1 %lcmp.mod568)
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i178, i64 %indvars.iv365.epil.init
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !3
  %i.aiy = or i32 %i.aix, 1
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aiz, i1 true)
  %i.ajb = xor i64 %i.aja, 63
  %i.ajc = mul nuw nsw i64 %i.ajb, 9
  %i.ajd = add nuw nsw i64 %i.ajc, 73
  %i.aje = lshr i64 %i.ajd, 6
  %i.ajf = add i64 %i.aje, %.8258.epil.init
  br label %.loopexit209

.loopexit209.loopexit493.unr-lcssa:               ; preds = %bb.y
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %.loopexit209, label %.epil.preheader557

.epil.preheader557:                               ; preds = %.loopexit209.loopexit493.unr-lcssa, %.lr.ph256
  %indvars.iv360.epil.init = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next361.1, %.loopexit209.loopexit493.unr-lcssa ]
  %.9254.epil.init = phi i64 [ %i.or, %.lr.ph256 ], [ %i.pr, %.loopexit209.loopexit493.unr-lcssa ]
  %lcmp.mod561 = trunc i32 %i.op to i1
  tail call void @llvm.assume(i1 %lcmp.mod561)
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv360.epil.init
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !148
  %i.aji = or i64 %i.ajh, 1
  %i.ajj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aji, i1 true)
  %i.ajk = xor i64 %i.ajj, 63
  %i.ajl = mul nuw nsw i64 %i.ajk, 9
  %i.ajm = add nuw nsw i64 %i.ajl, 73
  %i.ajn = lshr i64 %i.ajm, 6
  %i.ajo = add i64 %i.ajn, %.9254.epil.init
  br label %.loopexit209

.loopexit209.loopexit495.unr-lcssa:               ; preds = %bb.aa
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %.loopexit209, label %.epil.preheader550

.epil.preheader550:                               ; preds = %.loopexit209.loopexit495.unr-lcssa, %.lr.ph252
  %indvars.iv355.epil.init = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next356.1, %.loopexit209.loopexit495.unr-lcssa ]
  %.10250.epil.init = phi i64 [ %i.pw, %.lr.ph252 ], [ %i.qy, %.loopexit209.loopexit495.unr-lcssa ]
  %lcmp.mod554 = trunc i32 %i.pu to i1
  tail call void @llvm.assume(i1 %lcmp.mod554)
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i182, i64 %indvars.iv355.epil.init
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !3
  %i.ajr = or i32 %i.ajq, 1
  %i.ajs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ajr, i1 true)
  %i.ajt = xor i32 %i.ajs, 31
  %i.aju = mul nuw nsw i32 %i.ajt, 9
  %i.ajv = add nuw nsw i32 %i.aju, 73
  %i.ajw = lshr i32 %i.ajv, 6
  %i.ajx = zext nneg i32 %i.ajw to i64
  %i.ajy = add i64 %.10250.epil.init, %i.ajx
  br label %.loopexit209

.loopexit209.loopexit497.unr-lcssa:               ; preds = %bb.ac
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod545.not, label %.loopexit209, label %.epil.preheader543

.epil.preheader543:                               ; preds = %.loopexit209.loopexit497.unr-lcssa, %.lr.ph248
  %indvars.iv350.epil.init = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next351.1, %.loopexit209.loopexit497.unr-lcssa ]
  %.11246.epil.init = phi i64 [ %i.rd, %.lr.ph248 ], [ %i.sd, %.loopexit209.loopexit497.unr-lcssa ]
  %lcmp.mod547 = trunc i32 %i.rb to i1
  tail call void @llvm.assume(i1 %lcmp.mod547)
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i184, i64 %indvars.iv350.epil.init
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !148
  %i.akb = or i64 %i.aka, 1
  %i.akc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.akb, i1 true)
  %i.akd = xor i64 %i.akc, 63
  %i.ake = mul nuw nsw i64 %i.akd, 9
  %i.akf = add nuw nsw i64 %i.ake, 73
  %i.akg = lshr i64 %i.akf, 6
  %i.akh = add i64 %i.akg, %.11246.epil.init
  br label %.loopexit209

.loopexit209.loopexit499.unr-lcssa:               ; preds = %bb.ae
  %lcmp.mod538.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod538.not, label %.loopexit209, label %.epil.preheader536

.epil.preheader536:                               ; preds = %.loopexit209.loopexit499.unr-lcssa, %.lr.ph244
  %indvars.iv345.epil.init = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next346.1, %.loopexit209.loopexit499.unr-lcssa ]
  %.12242.epil.init = phi i64 [ %i.si, %.lr.ph244 ], [ %i.tq, %.loopexit209.loopexit499.unr-lcssa ]
  %lcmp.mod540 = trunc i32 %i.sg to i1
  tail call void @llvm.assume(i1 %lcmp.mod540)
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i186, i64 %indvars.iv345.epil.init
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !3 ; 2 uses
  %i.akk = shl i32 %i.akj, 1
  %i.akl = ashr i32 %i.akj, 31
  %i.akm = xor i32 %i.akk, %i.akl
  %i.akn = or i32 %i.akm, 1
  %i.ako = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akn, i1 true)
  %i.akp = xor i32 %i.ako, 31
  %i.akq = mul nuw nsw i32 %i.akp, 9
  %i.akr = add nuw nsw i32 %i.akq, 73
  %i.aks = lshr i32 %i.akr, 6
  %i.akt = zext nneg i32 %i.aks to i64
  %i.aku = add i64 %.12242.epil.init, %i.akt
  br label %.loopexit209

.loopexit209.loopexit501.unr-lcssa:               ; preds = %bb.ag
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod531.not, label %.loopexit209, label %.epil.preheader529

.epil.preheader529:                               ; preds = %.loopexit209.loopexit501.unr-lcssa, %.lr.ph240
  %indvars.iv340.epil.init = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next341.1, %.loopexit209.loopexit501.unr-lcssa ]
  %.13238.epil.init = phi i64 [ %i.tv, %.lr.ph240 ], [ %i.vb, %.loopexit209.loopexit501.unr-lcssa ]
  %lcmp.mod533 = trunc i32 %i.tt to i1
  tail call void @llvm.assume(i1 %lcmp.mod533)
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i188, i64 %indvars.iv340.epil.init
  %i.akw = load i64, ptr %i.akv, align 8, !tbaa !148 ; 2 uses
  %i.akx = shl i64 %i.akw, 1
  %i.aky = ashr i64 %i.akw, 63
  %i.akz = xor i64 %i.akx, %i.aky
  %i.ala = or i64 %i.akz, 1
  %i.alb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ala, i1 true)
  %i.alc = xor i64 %i.alb, 63
  %i.ald = mul nuw nsw i64 %i.alc, 9
  %i.ale = add nuw nsw i64 %i.ald, 73
  %i.alf = lshr i64 %i.ale, 6
  %i.alg = add i64 %i.alf, %.13238.epil.init
  br label %.loopexit209

.loopexit209.loopexit503.unr-lcssa:               ; preds = %bb.ai
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %.loopexit209, label %.epil.preheader522

.epil.preheader522:                               ; preds = %.loopexit209.loopexit503.unr-lcssa, %.lr.ph236
  %indvars.iv335.epil.init = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next336.1, %.loopexit209.loopexit503.unr-lcssa ]
  %.14234.epil.init = phi i64 [ %i.vg, %.lr.ph236 ], [ %i.ws, %.loopexit209.loopexit503.unr-lcssa ]
  %lcmp.mod526 = trunc i32 %i.ve to i1
  tail call void @llvm.assume(i1 %lcmp.mod526)
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %indvars.iv335.epil.init
  %.0.i.i.i.i.epil = select i1 %i.vl, ptr %i.vc, ptr %i.alh
  %i.ali = load ptr, ptr %.0.i.i.i.i.epil, align 8, !tbaa !20
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !122 ; 2 uses
  %i.all = trunc i64 %i.alk to i32
  %i.alm = or i32 %i.all, 1
  %i.aln = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.alm, i1 true)
  %i.alo = xor i32 %i.aln, 31
  %i.alp = mul nuw nsw i32 %i.alo, 9
  %i.alq = add nuw nsw i32 %i.alp, 73
  %i.alr = lshr i32 %i.alq, 6
  %i.als = zext nneg i32 %i.alr to i64
  %i.alt = add i64 %i.alk, %.14234.epil.init
  %i.alu = add i64 %i.alt, %i.als
  br label %.loopexit209

.loopexit209.loopexit505.unr-lcssa:               ; preds = %bb.ak
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.loopexit209, label %.epil.preheader515

.epil.preheader515:                               ; preds = %.loopexit209.loopexit505.unr-lcssa, %.lr.ph232
  %indvars.iv330.epil.init = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next331.1, %.loopexit209.loopexit505.unr-lcssa ]
  %.15230.epil.init = phi i64 [ %i.wx, %.lr.ph232 ], [ %i.yj, %.loopexit209.loopexit505.unr-lcssa ]
  %lcmp.mod519 = trunc i32 %i.wv to i1
  tail call void @llvm.assume(i1 %lcmp.mod519)
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv330.epil.init
  %.0.i.i.i.i189.epil = select i1 %i.xc, ptr %i.wt, ptr %i.alv
  %i.alw = load ptr, ptr %.0.i.i.i.i189.epil, align 8, !tbaa !20
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.aly = load i64, ptr %i.alx, align 8, !tbaa !122 ; 2 uses
  %i.alz = trunc i64 %i.aly to i32
  %i.ama = or i32 %i.alz, 1
  %i.amb = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ama, i1 true)
  %i.amc = xor i32 %i.amb, 31
  %i.amd = mul nuw nsw i32 %i.amc, 9
  %i.ame = add nuw nsw i32 %i.amd, 73
  %i.amf = lshr i32 %i.ame, 6
  %i.amg = zext nneg i32 %i.amf to i64
  %i.amh = add i64 %i.aly, %.15230.epil.init
  %i.ami = add i64 %i.amh, %i.amg
  br label %.loopexit209

.loopexit209.loopexit507.unr-lcssa:               ; preds = %bb.am
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit209, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit209.loopexit507.unr-lcssa, %.lr.ph228
  %indvars.iv327.epil.init = phi i64 [ 0, %.lr.ph228 ], [ %indvars.iv.next328.1, %.loopexit209.loopexit507.unr-lcssa ]
  %.16226.epil.init = phi i64 [ %i.yo, %.lr.ph228 ], [ %i.zq, %.loopexit209.loopexit507.unr-lcssa ]
  %lcmp.mod514 = trunc i32 %i.ym to i1
  tail call void @llvm.assume(i1 %lcmp.mod514)
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i191, i64 %indvars.iv327.epil.init
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !3
  %i.aml = or i32 %i.amk, 1
  %i.amm = sext i32 %i.aml to i64
  %i.amn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.amm, i1 true)
  %i.amo = xor i64 %i.amn, 63
  %i.amp = mul nuw nsw i64 %i.amo, 9
  %i.amq = add nuw nsw i64 %i.amp, 73
  %i.amr = lshr i64 %i.amq, 6
  %i.ams = add i64 %i.amr, %.16226.epil.init
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph, %.lr.ph224, %.epil.preheader, %.loopexit209.loopexit507.unr-lcssa, %.epil.preheader515, %.loopexit209.loopexit505.unr-lcssa, %.epil.preheader522, %.loopexit209.loopexit503.unr-lcssa, %.epil.preheader529, %.loopexit209.loopexit501.unr-lcssa, %.epil.preheader536, %.loopexit209.loopexit499.unr-lcssa, %.epil.preheader543, %.loopexit209.loopexit497.unr-lcssa, %.epil.preheader550, %.loopexit209.loopexit495.unr-lcssa, %.epil.preheader557, %.loopexit209.loopexit493.unr-lcssa, %.epil.preheader564, %.loopexit209.loopexit.unr-lcssa, %.loopexit.thread, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %.thread, %bb.u, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.t, %.loopexit
  %.20 = phi i64 [ %i.mv, %bb.t ], [ 0, %.loopexit ], [ %i.aiv, %bb.bp ], [ 0, %bb.aw ], [ %.0.i194, %bb.ax ], [ %i.aen, %bb.ay ], [ %i.aev, %bb.az ], [ %i.afe, %bb.ba ], [ %i.afm, %bb.bb ], [ %i.afy, %bb.bc ], [ %i.agj, %bb.bd ], [ %i.agw, %bb.be ], [ %i.ahj, %bb.bf ], [ %i.ahs, %bb.bg ], [ %i.ahy, %bb.bh ], [ %i.aio, %bb.bi ], [ %i.aip, %bb.bj ], [ %i.aiq, %bb.bk ], [ %i.air, %bb.bl ], [ %i.ais, %bb.bm ], [ %i.ait, %bb.bn ], [ %i.aiu, %bb.bo ], [ 0, %bb.u ], [ %i.adp, %bb.av ], [ 0, %.thread ], [ %i.ajo, %.epil.preheader557 ], [ %i.ajy, %.epil.preheader550 ], [ 0, %.loopexit.thread ], [ %i.aku, %.epil.preheader536 ], [ %i.alg, %.epil.preheader529 ], [ %i.alu, %.epil.preheader522 ], [ %i.ami, %.epil.preheader515 ], [ %i.ams, %.epil.preheader ], [ %i.aal, %.lr.ph224 ], [ %i.acf, %bb.ap ], [ %i.acl, %bb.aq ], [ %i.acr, %bb.ar ], [ %i.acx, %bb.as ], [ %i.add, %bb.at ], [ %i.adj, %bb.au ], [ %i.ajf, %.epil.preheader564 ], [ %i.nk, %bb.v ], [ %i.or, %bb.x ], [ %i.pw, %bb.z ], [ %i.rd, %bb.ab ], [ %i.si, %bb.ad ], [ %i.tv, %bb.af ], [ %i.vg, %bb.ah ], [ %i.wx, %bb.aj ], [ %i.yo, %bb.al ], [ %i.zv, %bb.an ], [ %i.aav, %bb.ao ], [ %i.akh, %.epil.preheader543 ], [ %i.om, %.loopexit209.loopexit.unr-lcssa ], [ %i.pr, %.loopexit209.loopexit493.unr-lcssa ], [ %i.qy, %.loopexit209.loopexit495.unr-lcssa ], [ %i.sd, %.loopexit209.loopexit497.unr-lcssa ], [ %i.tq, %.loopexit209.loopexit499.unr-lcssa ], [ %i.vb, %.loopexit209.loopexit501.unr-lcssa ], [ %i.ws, %.loopexit209.loopexit503.unr-lcssa ], [ %i.yj, %.loopexit209.loopexit505.unr-lcssa ], [ %i.zq, %.loopexit209.loopexit507.unr-lcssa ], [ %i.abu, %.lr.ph ]
  ret i64 %.20
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK6google8protobuf11MessageLite13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

declare { i64, ptr } @_ZNK6google8protobuf11MessageLite11GetTypeNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtension15UnusedKeyMethodEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.in.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.o, %bb.d ]
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !tbaa !95 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %bb.c
  %.07.i.i.i.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.07.i.i.i.i.i.i.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = icmp slt i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.j = add nuw nsw i64 %.07.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !354

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %bb.c ], [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 11
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 240
  %i.n = and i64 %.0.lcssa.i.i.i.i.i.i.i, 255
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  br label %bb.b

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i
  %i.p = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i
  %.sroa.7.0.i.i.i.i = phi i32 [ %i.p, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i ], [ %i.w, %bb.f ] ; 4 uses
  %.sroa.0.0.i6.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i ], [ %i.x, %bb.f ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = icmp eq i32 %.sroa.7.0.i.i.i.i, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i, i64 8
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i32
  %i.x = load ptr, ptr %.sroa.0.0.i6.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit.thread, !llvm.loop !355

bb.g:                                             ; preds = %bb.e
  %i.aa = sext i32 %.sroa.7.0.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = icmp slt i32 %1, %i.ad
  br i1 %i.ae, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit.thread, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit: ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !95 ; 2 uses
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %.pre, i64 10
  %.pre16 = load i8, ptr %.phi.trans.insert15, align 1, !tbaa !13
  %.pre17 = zext i8 %.pre16 to i32
  %i.af = icmp ne ptr %.sroa.0.0.i6.i.i.i, %.pre
  %i.ag = icmp ne i32 %.sroa.7.0.i.i.i.i, %.pre17
  %i.ah = select i1 %i.af, i1 true, i1 %i.ag
  %i.ai = and i32 %.sroa.7.0.i.i.i.i, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i6.i.i.i, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %cond.fr = freeze i1 %i.ah
  %spec.select = select i1 %cond.fr, ptr %i.al, ptr null
  br label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit.thread

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit.thread: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit, %bb.g
  %i.am = phi ptr [ null, %bb.g ], [ %spec.select, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit ], [ null, %bb.f ]
  ret ptr %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.o, %bb.d ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !95 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.c
  %.07.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.07.i.i.i.i.i.i.i.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = icmp slt i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.j = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !354

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.07.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 11
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 240
  %i.n = and i64 %.0.lcssa.i.i.i.i.i.i.i.i, 255
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  br label %bb.b

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i.i
  %i.p = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = phi i32 [ %i.p, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i.i ], [ %i.w, %bb.f ] ; 4 uses
  %.sroa.0.0.i6.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i.i ], [ %i.x, %bb.f ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = icmp eq i32 %.sroa.7.0.i.i.i.i.i, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 8
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i32
  %i.x = load ptr, ptr %.sroa.0.0.i6.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %.not.i9.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i.i, label %bb.e, label %_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi.exit, !llvm.loop !355

bb.g:                                             ; preds = %bb.e
  %i.aa = sext i32 %.sroa.7.0.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = icmp slt i32 %1, %i.ad
  br i1 %i.ae, label %_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi.exit, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit.i

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit.i: ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !95 ; 2 uses
  %.phi.trans.insert15.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre16.i = load i8, ptr %.phi.trans.insert15.i, align 1, !tbaa !13
  %.pre17.i = zext i8 %.pre16.i to i32
  %i.af = icmp ne ptr %.sroa.0.0.i6.i.i.i.i, %.pre.i
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENUlPKvE_8__invokeESE_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_.exit unwind label %bb.f

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_.exit: ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11, align 8, !tbaa !441
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_.exit, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11, align 8, !tbaa !441
  ret ptr %i.e

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11) #35
  resume { ptr, i32 } %i.f
}

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite18InternalWriteGroupEiRKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %.not = icmp ne i8 %i.b, 11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !range !104
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 1894) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 30, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.f = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 2
  %.not26 = icmp eq i8 %i.j, 0
  br i1 %.not26, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i = icmp ult ptr %4, %i.k
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.f, !prof !34

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.l, %bb.f ], [ %4, %bb.e ]  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 11, ptr %.0.i, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  store i8 16, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp ugt i32 %3, 127
  br i1 %i.o, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !360

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.r, %.lr.ph.i ], [ %3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.p = trunc i32 %.07.i1.i to i8
  %i.q = or i8 %i.p, -128
  store i8 %i.q, ptr %.0.i2.i, align 1, !tbaa !13
  %i.r = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.t = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.t, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !361, !llvm.loop !362

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.r, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.n, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.u = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.u, ptr %.0.i.lcssa.i, align 1, !tbaa !13
  %i.w = load i8, ptr %i.h, align 2
  %i.x = and i8 %i.w, 4
  %.not27 = icmp eq i8 %i.x, 0
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.y = tail call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_123FindRegisteredExtensionEPKNS0_11MessageLiteEi(ptr noundef %1, i32 noundef %3) ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 2 uses
  %i.z = zext i8 %.sroa.4.0.copyload.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !313
  %.fr.i = freeze i32 %i.ab                       ; 2 uses
  %i.ac = trunc nuw i8 %.sroa.5.0.copyload.i to i1
  %i.ad = add i32 %.fr.i, -5
  %switch.i.i.i = icmp ult i32 %i.ad, -3
  %or.cond13.i.i = and i1 %switch.i.i.i, %i.ac
  br i1 %or.cond13.i.i, label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i: ; preds = %bb.h
  %i.ae = icmp eq i32 %.fr.i, 2
  %spec.select.i = select i1 %i.ae, ptr %.sroa.9.0.copyload.i, ptr null
  br label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit

_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit: ; preds = %bb.g, %bb.h, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i
  %i.af = phi ptr [ %.sroa.9.0.copyload.i, %bb.h ], [ %spec.select.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i ], [ null, %bb.g ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.af, i32 noundef 3, ptr noundef nonnull %i.v, ptr noundef nonnull %5)
  br label %bb.j

bb.i:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.am = tail call noundef i32 @_ZNK6google8protobuf11MessageLite13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.an = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef %i.am, ptr noundef nonnull %i.v, ptr noundef nonnull %5)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit
  %.025 = phi ptr [ %i.ak, %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit ], [ %i.an, %bb.i ] ; 3 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i30 = icmp ult ptr %.025, %i.ao
  br i1 %.not.i30, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %.025)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32: ; preds = %bb.j, %bb.k
  %.0.i31 = phi ptr [ %i.ap, %bb.k ], [ %.025, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i31, i64 1
  store i8 12, ptr %.0.i31, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.0 = phi ptr [ %i.f, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.aq, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32 ], [ %4, %bb.d ]
  ret ptr %.0
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #23

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %.not = icmp ne i8 %i.b, 11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !range !104
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not6 = icmp eq i8 %i.i, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8, !tbaa !148
  %i.k = or i32 %1, 1
  %i.l = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.k, i1 true)
  %i.m = xor i32 %i.l, 31
  %i.n = mul nuw nsw i32 %i.m, 9
  %i.o = add nuw nsw i32 %i.n, 73
  %i.p = lshr i32 %i.o, 6
  %i.q = zext nneg i32 %i.p to i64
  %i.r = and i8 %i.h, 4
  %.not7 = icmp eq i8 %i.r, 0
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %. = select i1 %.not7, i64 24, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = or i32 %i.x, 1
  %i.z = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = xor i32 %i.z, 31
  %i.ab = mul nuw nsw i32 %i.aa, 9
  %i.ac = add nuw nsw i32 %i.ab, 73
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %i.j, %i.q
  %i.ag = add i64 %i.af, %i.w
  %i.ah = add i64 %i.ag, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.ah, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 0, ptr %i.a, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 7 uses
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val1, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr nonnull %i.a)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !148
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 %.idx.i ; 5 uses
  %.not42.i.i = icmp eq i16 %.val, 0
  br i1 %.not42.i.i, label %.preheader31.i.i, label %.lr.ph.i.i

.preheader31.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val1, %bb.c ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %.preheader31.i.i
  %i.n = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.033.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01832.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.val1, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01832.i.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01832.i.i, i64 18
  %i.q = load i8, ptr %i.p, align 2
  %i.r = trunc i8 %i.q to i1
  %i.s = load ptr, ptr %i.o, align 8
  %spec.select.i.i.i = select i1 %i.r, ptr %i.s, ptr %i.o
  tail call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %.01832.i.i, i64 32 ; 3 uses
  %i.u = add nuw nsw i32 %.033.i.i, 1
  %i.v = icmp ne ptr %i.t, %i.m
  %i.w = icmp samesign ult i32 %.033.i.i, 15
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph.i.i, label %.preheader31.i.i, !llvm.loop !443

.preheader.i.i:                                   ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %.preheader31.i.i
  %.promoted4 = phi i64 [ 0, %.preheader31.i.i ], [ %i.bj, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val1, %.preheader31.i.i ], [ %i.bp, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 2 uses
  %.not2139.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2139.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.preheader.i.i
  %i.y = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.h

bb.d:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %.lr.ph37.i.i
  %i.z = phi i64 [ 0, %.lr.ph37.i.i ], [ %i.bj, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ]
  %.136.i.i = phi ptr [ %.018.lcssa.i.i, %.lr.ph37.i.i ], [ %i.bq, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 3 uses
  %.01935.i.i = phi ptr [ %.val1, %.lr.ph37.i.i ], [ %i.bp, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 6 uses
  %i.aa = load i32, ptr %.01935.i.i, align 8, !tbaa !109 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !105
  %.not.i.i.i.i = icmp ne i8 %i.ad, 11
  %i.ae = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !range !104
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i32 noundef %i.aa)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 18
  %i.aj = load i8, ptr %i.ai, align 2             ; 2 uses
  %i.ak = and i8 %i.aj, 2
  %.not6.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not6.i.i.i.i, label %bb.g, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

bb.g:                                             ; preds = %bb.f
  %i.al = or i32 %i.aa, 1
  %i.am = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.al, i1 true)
  %i.an = xor i32 %i.am, 31
  %i.ao = mul nuw nsw i32 %i.an, 9
  %i.ap = add nuw nsw i32 %i.ao, 73
  %i.aq = lshr i32 %i.ap, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = and i8 %i.aj, 4
  %.not7.i.i.i.i = icmp eq i8 %i.as, 0
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69
  %..i.i.i.i = select i1 %.not7.i.i.i.i, i64 24, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at), !inline_history !444 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = xor i32 %i.ba, 31
  %i.bc = mul nuw nsw i32 %i.bb, 9
  %i.bd = add nuw nsw i32 %i.bc, 73
  %i.be = lshr i32 %i.bd, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add i64 %i.n, %i.ar
  %i.bh = add i64 %i.bg, %i.ax
  %i.bi = add i64 %i.bh, %i.bf
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.bi, %bb.g ], [ 0, %bb.f ]
  %i.bj = add i64 %i.z, %.0.i.i.i.i               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 18
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = trunc i8 %i.bm to i1
  %i.bo = load ptr, ptr %i.bk, align 8
  %spec.select.i23.i.i = select i1 %i.bn, ptr %i.bo, ptr %i.bk
  tail call void @llvm.prefetch.p0(ptr %spec.select.i23.i.i, i32 0, i32 3, i32 1)
  %i.bp = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !445

bb.h:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i", %.lr.ph41.i.i
  %i.br = phi i64 [ %.promoted4, %.lr.ph41.i.i ], [ %i.db, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i" ]
  %.12040.i.i = phi ptr [ %.019.lcssa.i.i, %.lr.ph41.i.i ], [ %i.dc, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i" ] ; 6 uses
  %i.bs = load i32, ptr %.12040.i.i, align 8, !tbaa !109 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !105
  %.not.i.i24.i.i = icmp ne i8 %i.bv, 11
  %i.bw = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 17
  %i.bx = load i8, ptr %i.bw, align 1, !range !104
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond.i.i25.i.i = select i1 %.not.i.i24.i.i, i1 true, i1 %i.by
  br i1 %or.cond.i.i25.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i32 noundef %i.bs)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i"

bb.j:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 18
  %i.cb = load i8, ptr %i.ca, align 2             ; 2 uses
  %i.cc = and i8 %i.cb, 2
  %.not6.i.i26.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not6.i.i26.i.i, label %bb.k, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i"

bb.k:                                             ; preds = %bb.j
  %i.cd = or i32 %i.bs, 1
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = xor i32 %i.ce, 31
  %i.cg = mul nuw nsw i32 %i.cf, 9
  %i.ch = add nuw nsw i32 %i.cg, 73
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = and i8 %i.cb, 4
  %.not7.i.i28.i.i = icmp eq i8 %i.ck, 0
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69
  %..i.i29.i.i = select i1 %.not7.i.i28.i.i, i64 24, i64 104
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %..i.i29.i.i
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl), !inline_history !444 ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = or i32 %i.cq, 1
  %i.cs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.ct = xor i32 %i.cs, 31
  %i.cu = mul nuw nsw i32 %i.ct, 9
  %i.cv = add nuw nsw i32 %i.cu, 73
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = add i64 %i.y, %i.cj
  %i.cz = add i64 %i.cy, %i.cp
  %i.da = add i64 %i.cz, %i.cx
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i27.i.i = phi i64 [ %i.bz, %bb.i ], [ %i.da, %bb.k ], [ 0, %bb.j ]
  %i.db = add i64 %i.br, %.0.i.i27.i.i            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.dc, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %bb.h, !llvm.loop !446

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i", %bb.b, %.preheader.i.i
  %i.dd = phi i64 [ %.promoted4, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.db, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit30.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i64 %i.dd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_ZN6google8protobuf8internal30FindExtensionLazyEagerVerifyFnEPKNS0_11MessageLiteEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_123FindRegisteredExtensionEPKNS0_11MessageLiteEi(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #37
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIhlEEPKcT_T0_S4_(i8 noundef zeroext %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::CheckOpMessageBuilder", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef %2)
  invoke void @_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringERSoh(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef zeroext %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit unwind label %bb.e ; 0 uses

_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit: ; preds = %bb.c
  %i.c = invoke noundef ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder9NewStringEv(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !69
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %3, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !13
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #39
  br label %_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit

_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #35
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %i.c

bb.e:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit, %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.r
}

declare void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef) unnamed_addr #15

declare void @_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringERSoh(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef zeroext) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #15

declare noundef ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder9NewStringEv(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !69
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !13
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #35
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #27

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #27

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #15

declare void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN6google8protobuf8internal16OnShutdownDeleteIN4absl12lts_2025051213flat_hash_setINS1_13ExtensionInfoENS1_12_GLOBAL__N_115ExtensionHasherENS7_11ExtensionEqESaIS6_EEEEEPT_SD_ENUlPKvE_8__invokeESF_(ptr noundef %0) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN6google8protobuf8internal16OnShutdownDeleteIN4absl12lts_2025051213flat_hash_setINS1_13ExtensionInfoENS1_12_GLOBAL__N_115ExtensionHasherENS7_11ExtensionEqESaIS6_EEEEEPT_SD_ENKUlPKvE_clESF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.b = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = and i64 %i.e, 65536
  %i.g = icmp ne i64 %i.f, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.val.i.i.i, ptr noundef %.val3.i.i.i.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %i.g)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal25RepeatedPrimitiveDefaultsD2Ev:bb.a
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !13
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #35
  br label %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit, %bb.g
  %i.bh = load i32, ptr %0, align 8, !tbaa !129
  %i.bi = and i32 %i.bh, 1
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !13
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  %i.bp = add nsw i64 %i.bo, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENUlPKvE_8__invokeESE_(ptr noundef %0) #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENKUlPKvE_clESE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !132
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #37
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  br label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENKUlPKvE_clESE_.exit

_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENKUlPKvE_clESE_.exit: ; preds = %bb.a, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr nofree %0, i32 %1, ptr nofree readnone captures(address) %2, i32 %3, ptr nofree nonnull captures(none) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i113 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i113, label %.lr.ph, label %.preheader103

.preheader103:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i6118 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i6118, label %.lr.ph123, label %.preheader

.lr.ph123:                                        ; preds = %.preheader103
  %i.e = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0116 = phi i32 [ %i.al, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0115 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0114 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.f = and i32 %.sroa.11.0114, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0115, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 34
  %i.k = load i8, ptr %i.j, align 2
  %i.l = trunc i8 %i.k to i1
  %i.m = load ptr, ptr %i.i, align 8
  %spec.select.i = select i1 %i.l, ptr %i.m, ptr %i.i
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0115, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = add nsw i32 %.sroa.11.0114, 1            ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0115, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = icmp eq i32 %i.p, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.u, %bb.c ], [ %.sroa.0.0115, %bb.b ] ; 2 uses
  %i.u = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !13    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0115, i64 240
  %i.ad = add i32 %.sroa.11.0114, 1
  %i.ae = and i32 %i.ad, 255
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.ag, %.thread.i.i ], [ %i.aj, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.ak = zext i8 %i.y to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.p, %bb.b ], [ %i.ak, %.critedge.loopexit23.i.i.i ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0115, %bb.b ], [ %i.u, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0115, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add nuw nsw i32 %.0116, 1
  %i.am = icmp ne ptr %.sroa.0.2, %2
  %i.an = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.am, i1 true, i1 %i.an
  %i.ao = icmp samesign ult i32 %.0116, 15
  %i.ap = select i1 %.not3.i, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph, label %.preheader103, !llvm.loop !558

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40, %.preheader103
  %.sroa.082.0.lcssa = phi ptr [ %0, %.preheader103 ], [ %.sroa.082.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 2 uses
  %.sroa.1189.0.lcssa = phi i32 [ %1, %.preheader103 ], [ %.sroa.1189.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 2 uses
  %i.aq = icmp ne ptr %.sroa.082.0.lcssa, %2
  %i.ar = icmp ne i32 %.sroa.1189.0.lcssa, %3
  %.not3.i44126 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %.not3.i44126, label %.lr.ph129, label %._crit_edge

.lr.ph129:                                        ; preds = %.preheader
  %i.as = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph123, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40
  %.sroa.0.1122 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph123 ], [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 7 uses
  %.sroa.11.1121 = phi i32 [ %.sroa.11.0.lcssa, %.lr.ph123 ], [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 3 uses
  %.sroa.1189.0120 = phi i32 [ %1, %.lr.ph123 ], [ %.sroa.1189.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 3 uses
  %.sroa.082.0119 = phi ptr [ %0, %.lr.ph123 ], [ %.sroa.082.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 7 uses
  %i.at = and i32 %.sroa.1189.0120, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 16
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.au ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !172 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !105
  %.not.i.i7 = icmp ne i8 %i.ba, 11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bc = load i8, ptr %i.bb, align 1, !range !104
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.not.i.i7, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i32 noundef %i.ax)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"

bb.g:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.bg = load i8, ptr %i.bf, align 2             ; 2 uses
  %i.bh = and i8 %i.bg, 2
  %.not6.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not6.i.i, label %bb.h, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"

bb.h:                                             ; preds = %bb.g
  %i.bi = or i32 %i.ax, 1
  %i.bj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = mul nuw nsw i32 %i.bk, 9
  %i.bm = add nuw nsw i32 %i.bl, 73
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = and i8 %i.bg, 4
  %.not7.i.i = icmp eq i8 %i.bp, 0
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69
  %..i.i = select i1 %.not7.i.i, i64 24, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %..i.i
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq), !inline_history !559 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = or i32 %i.bv, 1
  %i.bx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = xor i32 %i.bx, 31
  %i.bz = mul nuw nsw i32 %i.by, 9
  %i.ca = add nuw nsw i32 %i.bz, 73
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = add i64 %i.e, %i.bo
  %i.ce = add i64 %i.cd, %i.bu
  %i.cf = add i64 %i.ce, %i.cc
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit": ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.be, %bb.f ], [ %i.cf, %bb.h ], [ 0, %bb.g ]
  %i.cg = load i64, ptr %4, align 8, !tbaa !148
  %i.ch = add i64 %i.cg, %.0.i.i
  store i64 %i.ch, ptr %4, align 8, !tbaa !148
  %i.ci = and i32 %.sroa.11.1121, 255
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1122, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 34
  %i.cn = load i8, ptr %i.cm, align 2
  %i.co = trunc i8 %i.cn to i1
  %i.cp = load ptr, ptr %i.cl, align 8
  %spec.select.i8 = select i1 %i.co, ptr %i.cp, ptr %i.cl
  tail call void @llvm.prefetch.p0(ptr %spec.select.i8, i32 0, i32 3, i32 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 11
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %.not.i.i9 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i9, label %.thread.i.i20, label %bb.i

bb.i:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"
  %i.cs = add nsw i32 %.sroa.1189.0120, 1         ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 10
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i32
  %i.cw = icmp eq i32 %i.cs, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i.i16, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24

.lr.ph.i.i.i16:                                   ; preds = %bb.i, %bb.j
  %.01521.i.i.i17 = phi ptr [ %i.cx, %bb.j ], [ %.sroa.082.0119, %bb.i ] ; 2 uses
  %i.cx = load ptr, ptr %.01521.i.i.i17, align 8, !tbaa !95 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %.not17.i.i.i18 = icmp eq i8 %i.cz, 0
  br i1 %.not17.i.i.i18, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24

bb.j:                                             ; preds = %.lr.ph.i.i.i16
  %i.da = getelementptr inbounds nuw i8, ptr %.01521.i.i.i17, i64 8
  %i.db = load i8, ptr %i.da, align 8, !tbaa !13  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = icmp eq i8 %i.db, %i.dd
  br i1 %i.de, label %.lr.ph.i.i.i16, label %.critedge.loopexit23.i.i.i19, !llvm.loop !214

.thread.i.i20:                                    ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 240
  %i.dg = add i32 %.sroa.1189.0120, 1
  %i.dh = and i32 %i.dg, 255
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.di
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread.i.i20
  %.116.in.i.i.i21 = phi ptr [ %i.dj, %.thread.i.i20 ], [ %i.dm, %bb.k ]
  %.116.i.i.i22 = load ptr, ptr %.116.in.i.i.i21, align 8, !tbaa !95 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.116.i.i.i22, i64 11
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %.not.i.i.i.i23 = icmp eq i8 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.116.i.i.i22, i64 240
  br i1 %.not.i.i.i.i23, label %bb.k, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24, !llvm.loop !215

.critedge.loopexit23.i.i.i19:                     ; preds = %bb.j
  %i.dn = zext i8 %i.db to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24: ; preds = %.lr.ph.i.i.i16, %bb.k, %.critedge.loopexit23.i.i.i19, %bb.i
  %.sroa.082.2 = phi ptr [ %.116.i.i.i22, %bb.k ], [ %.sroa.082.0119, %bb.i ], [ %i.cx, %.critedge.loopexit23.i.i.i19 ], [ %.sroa.082.0119, %.lr.ph.i.i.i16 ] ; 2 uses
  %.sroa.1189.2 = phi i32 [ 0, %bb.k ], [ %i.cs, %bb.i ], [ %i.dn, %.critedge.loopexit23.i.i.i19 ], [ %i.cs, %.lr.ph.i.i.i16 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.1122, i64 11
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %.not.i.i25 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i25, label %.thread.i.i36, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24
  %i.dq = add nsw i32 %.sroa.11.1121, 1           ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.1122, i64 10
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.dt = zext i8 %i.ds to i32
  %i.du = icmp eq i32 %i.dq, %i.dt
  br i1 %i.du, label %.lr.ph.i.i.i32, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40

.lr.ph.i.i.i32:                                   ; preds = %bb.l, %bb.m
  %.01521.i.i.i33 = phi ptr [ %i.dv, %bb.m ], [ %.sroa.0.1122, %bb.l ] ; 2 uses
  %i.dv = load ptr, ptr %.01521.i.i.i33, align 8, !tbaa !95 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 11
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %.not17.i.i.i34 = icmp eq i8 %i.dx, 0
  br i1 %.not17.i.i.i34, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40

bb.m:                                             ; preds = %.lr.ph.i.i.i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.01521.i.i.i33, i64 8
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !13  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %i.ec = icmp eq i8 %i.dz, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i.i32, label %.critedge.loopexit23.i.i.i35, !llvm.loop !214

.thread.i.i36:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.1122, i64 240
  %i.ee = add i32 %.sroa.11.1121, 1
  %i.ef = and i32 %i.ee, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eg
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.thread.i.i36
  %.116.in.i.i.i37 = phi ptr [ %i.eh, %.thread.i.i36 ], [ %i.ek, %bb.n ]
  %.116.i.i.i38 = load ptr, ptr %.116.in.i.i.i37, align 8, !tbaa !95 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.116.i.i.i38, i64 11
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !13
  %.not.i.i.i.i39 = icmp eq i8 %i.ej, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %.116.i.i.i38, i64 240
  br i1 %.not.i.i.i.i39, label %bb.n, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40, !llvm.loop !215

.critedge.loopexit23.i.i.i35:                     ; preds = %bb.m
  %i.el = zext i8 %i.dz to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40: ; preds = %.lr.ph.i.i.i32, %bb.n, %.critedge.loopexit23.i.i.i35, %bb.l
  %.sroa.11.3 = phi i32 [ 0, %bb.n ], [ %i.dq, %bb.l ], [ %i.el, %.critedge.loopexit23.i.i.i35 ], [ %i.dq, %.lr.ph.i.i.i32 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i38, %bb.n ], [ %.sroa.0.1122, %bb.l ], [ %i.dv, %.critedge.loopexit23.i.i.i35 ], [ %.sroa.0.1122, %.lr.ph.i.i.i32 ] ; 2 uses
  %i.em = icmp ne ptr %.sroa.0.3, %2
  %i.en = icmp ne i32 %.sroa.11.3, %3
  %.not3.i6 = select i1 %i.em, i1 true, i1 %i.en
  br i1 %.not3.i6, label %bb.e, label %.preheader, !llvm.loop !560

bb.o:                                             ; preds = %.lr.ph129, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67
  %.sroa.1189.1128 = phi i32 [ %.sroa.1189.0.lcssa, %.lr.ph129 ], [ %.sroa.1189.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67 ] ; 3 uses
  %.sroa.082.1127 = phi ptr [ %.sroa.082.0.lcssa, %.lr.ph129 ], [ %.sroa.082.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67 ] ; 7 uses
  %i.eo = and i32 %.sroa.1189.1128, 255
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 16
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.ep ; 5 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !172 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !105
  %.not.i.i45 = icmp ne i8 %i.ev, 11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 17
  %i.ex = load i8, ptr %i.ew, align 1, !range !104
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond.i.i46 = select i1 %.not.i.i45, i1 true, i1 %i.ey
  br i1 %or.cond.i.i46, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ez = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i32 noundef %i.es)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"

bb.q:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 18
  %i.fb = load i8, ptr %i.fa, align 2             ; 2 uses
  %i.fc = and i8 %i.fb, 2
  %.not6.i.i47 = icmp eq i8 %i.fc, 0
  br i1 %.not6.i.i47, label %bb.r, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"

bb.r:                                             ; preds = %bb.q
  %i.fd = or i32 %i.es, 1
  %i.fe = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fd, i1 true)
  %i.ff = xor i32 %i.fe, 31
  %i.fg = mul nuw nsw i32 %i.ff, 9
  %i.fh = add nuw nsw i32 %i.fg, 73
  %i.fi = lshr i32 %i.fh, 6
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = and i8 %i.fb, 4
  %.not7.i.i49 = icmp eq i8 %i.fk, 0
  %i.fl = load ptr, ptr %i.et, align 8, !tbaa !13 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !69
  %..i.i50 = select i1 %.not7.i.i49, i64 24, i64 104
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %..i.i50
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = tail call noundef i64 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl), !inline_history !559 ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = or i32 %i.fq, 1
  %i.fs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fr, i1 true)
  %i.ft = xor i32 %i.fs, 31
  %i.fu = mul nuw nsw i32 %i.ft, 9
  %i.fv = add nuw nsw i32 %i.fu, 73
  %i.fw = lshr i32 %i.fv, 6
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = add i64 %i.as, %i.fj
  %i.fz = add i64 %i.fy, %i.fp
  %i.ga = add i64 %i.fz, %i.fx
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51": ; preds = %bb.p, %bb.q, %bb.r
  %.0.i.i48 = phi i64 [ %i.ez, %bb.p ], [ %i.ga, %bb.r ], [ 0, %bb.q ]
  %i.gb = load i64, ptr %4, align 8, !tbaa !148
  %i.gc = add i64 %i.gb, %.0.i.i48
  store i64 %i.gc, ptr %4, align 8, !tbaa !148
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 11
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %.not.i.i52 = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i52, label %.thread.i.i63, label %bb.s

bb.s:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"
  %i.gf = add nsw i32 %.sroa.1189.1128, 1         ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 10
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !13
  %i.gi = zext i8 %i.gh to i32
  %i.gj = icmp eq i32 %i.gf, %i.gi
  br i1 %i.gj, label %.lr.ph.i.i.i59, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67

.lr.ph.i.i.i59:                                   ; preds = %bb.s, %bb.t
  %.01521.i.i.i60 = phi ptr [ %i.gk, %bb.t ], [ %.sroa.082.1127, %bb.s ] ; 2 uses
  %i.gk = load ptr, ptr %.01521.i.i.i60, align 8, !tbaa !95 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 11
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !13
  %.not17.i.i.i61 = icmp eq i8 %i.gm, 0
  br i1 %.not17.i.i.i61, label %bb.t, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67

bb.t:                                             ; preds = %.lr.ph.i.i.i59
  %i.gn = getelementptr inbounds nuw i8, ptr %.01521.i.i.i60, i64 8
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !13  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 10
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !13
  %i.gr = icmp eq i8 %i.go, %i.gq
  br i1 %i.gr, label %.lr.ph.i.i.i59, label %.critedge.loopexit23.i.i.i62, !llvm.loop !214

.thread.i.i63:                                    ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 240
  %i.gt = add i32 %.sroa.1189.1128, 1
  %i.gu = and i32 %i.gt, 255
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gv
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.thread.i.i63
  %.116.in.i.i.i64 = phi ptr [ %i.gw, %.thread.i.i63 ], [ %i.gz, %bb.u ]
  %.116.i.i.i65 = load ptr, ptr %.116.in.i.i.i64, align 8, !tbaa !95 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.116.i.i.i65, i64 11
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13
  %.not.i.i.i.i66 = icmp eq i8 %i.gy, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %.116.i.i.i65, i64 240
  br i1 %.not.i.i.i.i66, label %bb.u, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67, !llvm.loop !215

.critedge.loopexit23.i.i.i62:                     ; preds = %bb.t
  %i.ha = zext i8 %i.go to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67: ; preds = %.lr.ph.i.i.i59, %bb.u, %.critedge.loopexit23.i.i.i62, %bb.s
  %.sroa.082.3 = phi ptr [ %.116.i.i.i65, %bb.u ], [ %.sroa.082.1127, %bb.s ], [ %i.gk, %.critedge.loopexit23.i.i.i62 ], [ %.sroa.082.1127, %.lr.ph.i.i.i59 ] ; 2 uses
  %.sroa.1189.3 = phi i32 [ 0, %bb.u ], [ %i.gf, %bb.s ], [ %i.ha, %.critedge.loopexit23.i.i.i62 ], [ %i.gf, %.lr.ph.i.i.i59 ] ; 2 uses
  %i.hb = icmp ne ptr %.sroa.082.3, %2
  %i.hc = icmp ne i32 %.sroa.1189.3, %3
  %.not3.i44 = select i1 %i.hb, i1 true, i1 %i.hc
  br i1 %.not3.i44, label %bb.o, label %._crit_edge, !llvm.loop !561

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #32 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nounwind }
attributes #36 = { cold }
attributes #37 = { noreturn nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { builtin nounwind }
attributes #40 = { cold nounwind }
attributes #41 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal24GeneratedExtensionFinderE", !9, i64 0}
!9 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{i64 0, i64 8, !12, i64 8, i64 4, !3, i64 12, i64 1, !13, i64 13, i64 1, !14, i64 14, i64 1, !13, i64 15, i64 1, !16, i64 16, i64 16, !13, i64 32, i64 8, !18, i64 40, i64 8, !20}
!12 = !{!9, !9, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"_ZTSN6google8protobuf8internal14LazyAnnotationE", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !10, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSN4absl12lts_2025051213flat_hash_setIN6google8protobuf8internal13ExtensionInfoENS4_12_GLOBAL__N_115ExtensionHasherENS6_11ExtensionEqESaIS5_EEE", !10, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !25, i64 0, !26, i64 8, !5, i64 16}
!25 = !{!"long", !5, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!29, !9, i64 0}
!29 = !{!"_ZTSN6google8protobuf8internal13ExtensionInfoE", !9, i64 0, !4, i64 8, !5, i64 12, !15, i64 13, !15, i64 14, !15, i64 14, !17, i64 15, !5, i64 16, !19, i64 32, !10, i64 40}
!30 = !{}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!33 = distinct !{!33, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"branch_weights", i32 -294967296, i32 2002000, i32 2001000, i32 2000000}
!39 = !{!29, !4, i64 8}
!40 = !{!29, !5, i64 12}
!41 = !{!29, !15, i64 13}
!42 = !{!"branch_weights", i32 1, i32 1048575}
!43 = !{!44, !46, !48, !50, !52, !54}
!44 = distinct !{!44, !45, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!45 = distinct !{!45, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSD_8iteratorEbERKT_"}
!46 = distinct !{!46, !47, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS7_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS8_EE19EmplaceDecomposableERKS8_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_: argument 0"}
!47 = distinct !{!47, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS7_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS8_EE19EmplaceDecomposableERKS8_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_"}
!48 = distinct !{!48, !49, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS6_EE19EmplaceDecomposableEJRKS6_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_: argument 0"}
!49 = distinct !{!49, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS6_EE19EmplaceDecomposableEJRKS6_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_"}
!50 = distinct !{!50, !51, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEEvE5applyINS1_12raw_hash_setIS8_NS6_12_GLOBAL__N_115ExtensionHasherENSC_11ExtensionEqESaIS7_EE19EmplaceDecomposableEJRKS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_: argument 0"}
!51 = distinct !{!51, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEEvE5applyINS1_12raw_hash_setIS8_NS6_12_GLOBAL__N_115ExtensionHasherENSC_11ExtensionEqESaIS7_EE19EmplaceDecomposableEJRKS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_"}
!52 = distinct !{!52, !53, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE7emplaceIJRKS7_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSI_: argument 0"}
!53 = distinct !{!53, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE7emplaceIJRKS7_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSI_"}
!54 = distinct !{!54, !55, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE6insertIS7_Li0EEESt4pairINSD_8iteratorEbERKT_: argument 0"}
end_hunk_2
