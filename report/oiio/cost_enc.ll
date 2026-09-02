Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/cost_enc?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@VP8CalculateLevelCosts:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.o ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.q ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 272
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.s ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 272
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !37
  %i.cd = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.u ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 272
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !37
  %i.cj = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.w ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !37
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.y ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 136
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 272
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.aa ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 272
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !37
  %i.db = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.ac ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 264
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 136
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !37
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 272
  %i.dg = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !37
  %i.dh = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.ae ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 136
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 272
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !37
  %i.dn = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.ag ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 312
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !37
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 272
  %i.ds = getelementptr inbounds nuw i8, ptr %i.an, i64 328
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.ai ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 136
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 344
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 272
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 352
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %i.ak ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !37
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 136
  %i.ec = getelementptr inbounds nuw i8, ptr %i.an, i64 368
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !37
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 272
  %i.ee = getelementptr inbounds nuw i8, ptr %i.an, i64 376
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !37
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next82, 4
  br i1 %exitcond84.not, label %bb.o, label %.preheader56, !llvm.loop !31

bb.b:                                             ; preds = %.preheader56, %bb.n
  %indvars.iv69 = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next70, %bb.n ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [33 x i8], ptr %i.al, i64 %indvars.iv69 ; 6 uses
  %i.eg = getelementptr inbounds nuw [408 x i8], ptr %i.am, i64 %indvars.iv69 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7   ; 2 uses
  %.pn.in.i46 = xor i8 %i.ei, -1
  %.pn.i47 = zext i8 %.pn.in.i46 to i64
  %.in.in.i48 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i47
  %.in.i49 = load i16, ptr %.in.in.i48, align 2, !tbaa !12
  %.pn.i51 = zext i8 %i.ei to i64
  %.in.in.i52 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i51
  %.in.i53 = load i16, ptr %.in.in.i52, align 2, !tbaa !12
  store i16 %.in.i53, ptr %i.eg, align 2, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %VariableLevelCost.exit
  %indvars.iv = phi i64 [ 1, %bb.b ], [ %indvars.iv.next, %VariableLevelCost.exit ] ; 3 uses
  %i.ej = getelementptr [4 x i8], ptr @VP8LevelCodes, i64 %indvars.iv ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !12 ; 2 uses
  %.not15.i = icmp eq i16 %i.el, 0
  br i1 %.not15.i, label %VariableLevelCost.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.em = getelementptr i8, ptr %i.ej, i64 -2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !12
  %i.eo = zext i16 %i.el to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.01118.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.01217.i = phi i16 [ %i.en, %.lr.ph.preheader.i ], [ %i.ex, %bb.e ] ; 2 uses
  %.01316.i = phi i32 [ %i.eo, %.lr.ph.preheader.i ], [ %i.ey, %bb.e ] ; 2 uses
  %i.ep = and i32 %.01316.i, 1
  %.not14.i = icmp eq i32 %i.ep, 0
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = trunc i16 %.01217.i to i8
  %i.et = and i8 %i.es, 1
  %i.eu = sub nsw i8 0, %i.et
  %.pn.in.i.i = xor i8 %i.er, %i.eu
  %.pn.i.i = zext i8 %.pn.in.i.i to i64
  %.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.i
  %.in.i.i = load i16, ptr %.in.in.i.i, align 2, !tbaa !12
  %i.ev = zext i16 %.in.i.i to i32
  %i.ew = add nsw i32 %.01118.i, %i.ev
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.1.i = phi i32 [ %i.ew, %bb.d ], [ %.01118.i, %.lr.ph.i ] ; 2 uses
  %i.ex = lshr i16 %.01217.i, 1
  %i.ey = lshr i32 %.01316.i, 1                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i, label %VariableLevelCost.exit.loopexit, label %.lr.ph.i, !llvm.loop !32

VariableLevelCost.exit.loopexit:                  ; preds = %bb.e
  %i.ez = trunc i32 %.1.i to i16
  br label %VariableLevelCost.exit

VariableLevelCost.exit:                           ; preds = %VariableLevelCost.exit.loopexit, %bb.c
  %.011.lcssa.i = phi i16 [ 0, %bb.c ], [ %i.ez, %VariableLevelCost.exit.loopexit ]
  %i.fa = add i16 %.011.lcssa.i, %.in.i49
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %indvars.iv
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 68
  br i1 %exitcond.not, label %bb.f, label %bb.c, !llvm.loop !33

bb.f:                                             ; preds = %VariableLevelCost.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ef, i64 11 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 136 ; 2 uses
  %i.fe = load i8, ptr %i.fc, align 1, !tbaa !7
  %.pn.in.i.1 = xor i8 %i.fe, -1
  %.pn.i.1 = zext i8 %.pn.in.i.1 to i64
  %.in.in.i.1 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.1
  %.in.i.1 = load i16, ptr %.in.in.i.1, align 2, !tbaa !12 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !7   ; 2 uses
  %.pn.in.i46.1 = xor i8 %i.fg, -1
  %.pn.i47.1 = zext i8 %.pn.in.i46.1 to i64
  %.in.in.i48.1 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i47.1
  %.in.i49.1 = load i16, ptr %.in.in.i48.1, align 2, !tbaa !12
  %1 = add i16 %.in.i.1, %.in.i49.1
  %.pn.i51.1 = zext i8 %i.fg to i64
  %.in.in.i52.1 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i51.1
  %.in.i53.1 = load i16, ptr %.in.in.i52.1, align 2, !tbaa !12
  %i.fh = add i16 %.in.i53.1, %.in.i.1
  store i16 %i.fh, ptr %i.fd, align 2, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %VariableLevelCost.exit.1, %bb.f
  %indvars.iv.1 = phi i64 [ 1, %bb.f ], [ %indvars.iv.next.1, %VariableLevelCost.exit.1 ] ; 3 uses
  %i.fi = getelementptr [4 x i8], ptr @VP8LevelCodes, i64 %indvars.iv.1 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4
  %i.fk = load i16, ptr %i.fj, align 4, !tbaa !12 ; 2 uses
  %.not15.i.1 = icmp eq i16 %i.fk, 0
  br i1 %.not15.i.1, label %VariableLevelCost.exit.1, label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %bb.g
  %i.fl = getelementptr i8, ptr %i.fi, i64 -2
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !12
  %i.fn = zext i16 %i.fk to i32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i, %.lr.ph.preheader.i.1
  %indvars.iv.i.1 = phi i64 [ 2, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next.i.1, %bb.i ] ; 2 uses
  %.01118.i.1 = phi i32 [ 0, %.lr.ph.preheader.i.1 ], [ %.1.i.1, %bb.i ] ; 2 uses
  %.01217.i.1 = phi i16 [ %i.fm, %.lr.ph.preheader.i.1 ], [ %i.fw, %bb.i ] ; 2 uses
  %.01316.i.1 = phi i32 [ %i.fn, %.lr.ph.preheader.i.1 ], [ %i.fx, %bb.i ] ; 2 uses
  %i.fo = and i32 %.01316.i.1, 1
  %.not14.i.1 = icmp eq i32 %i.fo, 0
  br i1 %.not14.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv.i.1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !7
  %i.fr = trunc i16 %.01217.i.1 to i8
  %i.fs = and i8 %i.fr, 1
  %i.ft = sub nsw i8 0, %i.fs
  %.pn.in.i.i.1 = xor i8 %i.fq, %i.ft
  %.pn.i.i.1 = zext i8 %.pn.in.i.i.1 to i64
  %.in.in.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.i.1
  %.in.i.i.1 = load i16, ptr %.in.in.i.i.1, align 2, !tbaa !12
  %i.fu = zext i16 %.in.i.i.1 to i32
  %i.fv = add nsw i32 %.01118.i.1, %i.fu
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.1
  %.1.i.1 = phi i32 [ %i.fv, %bb.h ], [ %.01118.i.1, %.lr.ph.i.1 ] ; 2 uses
  %i.fw = lshr i16 %.01217.i.1, 1
  %i.fx = lshr i32 %.01316.i.1, 1                 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1
  %.not.i.1 = icmp eq i32 %i.fx, 0
  br i1 %.not.i.1, label %VariableLevelCost.exit.loopexit.1, label %.lr.ph.i.1, !llvm.loop !32

VariableLevelCost.exit.loopexit.1:                ; preds = %bb.i
  %2 = trunc i32 %.1.i.1 to i16
  br label %VariableLevelCost.exit.1

VariableLevelCost.exit.1:                         ; preds = %VariableLevelCost.exit.loopexit.1, %bb.g
  %.011.lcssa.i.1 = phi i16 [ 0, %bb.g ], [ %2, %VariableLevelCost.exit.loopexit.1 ]
  %3 = add i16 %1, %.011.lcssa.i.1
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.1
  store i16 %3, ptr %i.fy, align 2, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 68
  br i1 %exitcond.1.not, label %bb.j, label %bb.g, !llvm.loop !33

bb.j:                                             ; preds = %VariableLevelCost.exit.1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ef, i64 22 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eg, i64 272 ; 2 uses
  %i.gb = load i8, ptr %i.fz, align 1, !tbaa !7
  %.pn.in.i.2 = xor i8 %i.gb, -1
  %.pn.i.2 = zext i8 %.pn.in.i.2 to i64
  %.in.in.i.2 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.2
  %.in.i.2 = load i16, ptr %.in.in.i.2, align 2, !tbaa !12 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ef, i64 23
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !7   ; 2 uses
  %.pn.in.i46.2 = xor i8 %i.gd, -1
  %.pn.i47.2 = zext i8 %.pn.in.i46.2 to i64
  %.in.in.i48.2 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i47.2
  %.in.i49.2 = load i16, ptr %.in.in.i48.2, align 2, !tbaa !12
  %4 = add i16 %.in.i.2, %.in.i49.2
  %.pn.i51.2 = zext i8 %i.gd to i64
  %.in.in.i52.2 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i51.2
  %.in.i53.2 = load i16, ptr %.in.in.i52.2, align 2, !tbaa !12
  %i.ge = add i16 %.in.i53.2, %.in.i.2
  store i16 %i.ge, ptr %i.ga, align 2, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %VariableLevelCost.exit.2, %bb.j
  %indvars.iv.2 = phi i64 [ 1, %bb.j ], [ %indvars.iv.next.2, %VariableLevelCost.exit.2 ] ; 3 uses
  %i.gf = getelementptr [4 x i8], ptr @VP8LevelCodes, i64 %indvars.iv.2 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 -4
  %i.gh = load i16, ptr %i.gg, align 4, !tbaa !12 ; 2 uses
  %.not15.i.2 = icmp eq i16 %i.gh, 0
  br i1 %.not15.i.2, label %VariableLevelCost.exit.2, label %.lr.ph.preheader.i.2

.lr.ph.preheader.i.2:                             ; preds = %bb.k
  %i.gi = getelementptr i8, ptr %i.gf, i64 -2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !12
  %i.gk = zext i16 %i.gh to i32
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m, %.lr.ph.preheader.i.2
  %indvars.iv.i.2 = phi i64 [ 2, %.lr.ph.preheader.i.2 ], [ %indvars.iv.next.i.2, %bb.m ] ; 2 uses
  %.01118.i.2 = phi i32 [ 0, %.lr.ph.preheader.i.2 ], [ %.1.i.2, %bb.m ] ; 2 uses
  %.01217.i.2 = phi i16 [ %i.gj, %.lr.ph.preheader.i.2 ], [ %i.gt, %bb.m ] ; 2 uses
  %.01316.i.2 = phi i32 [ %i.gk, %.lr.ph.preheader.i.2 ], [ %i.gu, %bb.m ] ; 2 uses
  %i.gl = and i32 %.01316.i.2, 1
  %.not14.i.2 = icmp eq i32 %i.gl, 0
  br i1 %.not14.i.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv.i.2
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !7
  %i.go = trunc i16 %.01217.i.2 to i8
  %i.gp = and i8 %i.go, 1
  %i.gq = sub nsw i8 0, %i.gp
  %.pn.in.i.i.2 = xor i8 %i.gn, %i.gq
  %.pn.i.i.2 = zext i8 %.pn.in.i.i.2 to i64
  %.in.in.i.i.2 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.i.2
  %.in.i.i.2 = load i16, ptr %.in.in.i.i.2, align 2, !tbaa !12
  %i.gr = zext i16 %.in.i.i.2 to i32
  %i.gs = add nsw i32 %.01118.i.2, %i.gr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.2
  %.1.i.2 = phi i32 [ %i.gs, %bb.l ], [ %.01118.i.2, %.lr.ph.i.2 ] ; 2 uses
  %i.gt = lshr i16 %.01217.i.2, 1
  %i.gu = lshr i32 %.01316.i.2, 1                 ; 2 uses
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1
  %.not.i.2 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.2, label %VariableLevelCost.exit.loopexit.2, label %.lr.ph.i.2, !llvm.loop !32

VariableLevelCost.exit.loopexit.2:                ; preds = %bb.m
  %5 = trunc i32 %.1.i.2 to i16
  br label %VariableLevelCost.exit.2

VariableLevelCost.exit.2:                         ; preds = %VariableLevelCost.exit.loopexit.2, %bb.k
  %.011.lcssa.i.2 = phi i16 [ 0, %bb.k ], [ %5, %VariableLevelCost.exit.loopexit.2 ]
  %6 = add i16 %4, %.011.lcssa.i.2
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.2
  store i16 %6, ptr %i.gv, align 2, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 68
  br i1 %exitcond.2.not, label %bb.n, label %bb.k, !llvm.loop !33

bb.n:                                             ; preds = %VariableLevelCost.exit.2
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next70, 8
  br i1 %exitcond72.not, label %.preheader55, label %bb.b, !llvm.loop !34

bb.o:                                             ; preds = %.preheader55
  store i32 0, ptr %i.a, align 8, !tbaa !36
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @VP8InitResidual(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4), (16, 20), (24, 48)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3620
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [264 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4676
  %i.g = getelementptr inbounds [1056 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 21960
  %i.j = getelementptr inbounds [384 x i8], ptr %i.i, i64 %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !21
  store i32 %0, ptr %3, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @VP8GetCostLuma4(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.VP8Residual, align 8        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = and i32 %i.b, 3
  %i.d = ashr i32 %i.b, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 3, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4412
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 7844
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 23112
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.l, ptr %i.m, align 8, !tbaa !21
  store i32 0, ptr %2, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.o = zext nneg i32 %i.c to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = sext i32 %i.d to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !6
  %i.v = add nsw i32 %i.u, %i.q
  %i.w = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !29
  call void %i.w(ptr noundef %1, ptr noundef nonnull %2) #8
  %i.x = load ptr, ptr @VP8GetResidualCost, align 8, !tbaa !29
  %i.y = call i32 %i.x(i32 noundef %i.v, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define hidden i32 @VP8GetCostLuma16(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.VP8Residual, align 8        ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  tail call void @VP8IteratorNzToBytes(ptr noundef %0) #8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 1, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3884
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4676
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5732
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 21960
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 22344
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !21
  store i32 0, ptr %2, align 8, !tbaa !22
  %i.m = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void %i.m(ptr noundef nonnull %i.n, ptr noundef nonnull %2) #8
  %i.o = load ptr, ptr @VP8GetResidualCost, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.r = load i32, ptr %i.q, align 4, !tbaa !6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load i32, ptr %i.t, align 8, !tbaa !6
  %i.v = add nsw i32 %i.u, %i.r
  %i.w = call i32 %i.o(i32 noundef %i.v, ptr noundef nonnull %2) #8
  store i32 0, ptr %i.c, align 8, !tbaa !18
  store ptr %i.d, ptr %i.f, align 8, !tbaa !19
  store ptr %i.g, ptr %i.i, align 8, !tbaa !20
  store ptr %i.j, ptr %i.l, align 8, !tbaa !21
  store i32 1, ptr %2, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %.030 = phi i32 [ %i.w, %bb.a ], [ %i.bs, %.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv ; 5 uses
  %i.ad = shl nuw nsw i64 %indvars.iv, 2          ; 4 uses
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !6
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !6
  %i.ag = add nsw i32 %i.af, %i.ae
  %i.ah = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ad
  call void %i.ah(ptr noundef nonnull %i.ai, ptr noundef nonnull %2) #8
  %i.aj = load ptr, ptr @VP8GetResidualCost, align 8, !tbaa !29
  %i.ak = call i32 %i.aj(i32 noundef %i.ag, ptr noundef nonnull %2) #8
  %i.al = add nsw i32 %i.ak, %.030
  %i.am = load i32, ptr %i.y, align 4, !tbaa !30
  %i.an = icmp sgt i32 %i.am, -1
  %i.ao = zext i1 %i.an to i32                    ; 3 uses
  store i32 %i.ao, ptr %i.ac, align 4, !tbaa !6
  store i32 %i.ao, ptr %i.p, align 4, !tbaa !6
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !6
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ad
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  call void %i.ar(ptr noundef nonnull %i.at, ptr noundef nonnull %2) #8
  %i.au = load ptr, ptr @VP8GetResidualCost, align 8, !tbaa !29
  %i.av = call i32 %i.au(i32 noundef %i.aq, ptr noundef nonnull %2) #8
  %i.aw = add nsw i32 %i.av, %i.al
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !30
  %i.ay = icmp sgt i32 %i.ax, -1
  %i.az = zext i1 %i.ay to i32                    ; 3 uses
  store i32 %i.az, ptr %i.ac, align 4, !tbaa !6
  store i32 %i.az, ptr %i.z, align 8, !tbaa !6
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ad
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  call void %i.bc(ptr noundef nonnull %i.be, ptr noundef nonnull %2) #8
  %i.bf = load ptr, ptr @VP8GetResidualCost, align 8, !tbaa !29
  %i.bg = call i32 %i.bf(i32 noundef %i.bb, ptr noundef nonnull %2) #8
  %i.bh = add nsw i32 %i.bg, %i.aw
  %i.bi = load i32, ptr %i.y, align 4, !tbaa !30
  %i.bj = icmp sgt i32 %i.bi, -1
  %i.bk = zext i1 %i.bj to i32                    ; 3 uses
  store i32 %i.bk, ptr %i.ac, align 4, !tbaa !6
  store i32 %i.bk, ptr %i.aa, align 4, !tbaa !6
  %i.bl = load i32, ptr %i.ab, align 8, !tbaa !6
  %i.bm = add nsw i32 %i.bl, %i.bk
  %i.bn = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ad
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  call void %i.bn(ptr noundef nonnull %i.bp, ptr noundef nonnull %2) #8
  %i.bq = load ptr, ptr @VP8GetResidualCost, align 8, !tbaa !29
  %i.br = call i32 %i.bq(i32 noundef %i.bm, ptr noundef nonnull %2) #8
  %i.bs = add nsw i32 %i.br, %i.bh                ; 2 uses
  %i.bt = load i32, ptr %i.y, align 4, !tbaa !30
  %i.bu = icmp sgt i32 %i.bt, -1
  %i.bv = zext i1 %i.bu to i32                    ; 2 uses
  store i32 %i.bv, ptr %i.ac, align 4, !tbaa !6
  store i32 %i.bv, ptr %i.ab, align 8, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !39

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %i.bs
end_hunk_0
