inline.NumInlined: 100
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@decap:bb.a
  %.1.i.i.i = phi i16 [ %i.az, %bb.l ], [ 0, %bb.k ], [ %.0.i.i.i, %bb.i ]
  %i.bd = icmp slt i64 %.143.idx.i.i.i, 512
  br i1 %i.bd, label %bb.f, label %vector.body, !llvm.loop !84

vector.body:                                      ; preds = %bb.m, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.m ] ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.014.i.i, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.be, align 2, !tbaa !38
  %i.bf = zext <8 x i16> %wide.load to <8 x i32>
  %i.bg = mul nuw nsw <8 x i32> %i.bf, splat (i32 3329) ; 2 uses
  %i.bh = and <8 x i32> %i.bg, %broadcast.splat
  %i.bi = lshr <8 x i32> %i.bg, %broadcast.splat43
  %i.bj = lshr <8 x i32> %i.bh, %broadcast.splat45
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  store <8 x i16> %i.bl, ptr %i.be, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, 256
  br i1 %i.bm, label %scalar_decompress.exit.i.i, label %vector.body, !llvm.loop !85

scalar_decompress.exit.i.i:                       ; preds = %vector.body
  %i.bn = add nsw i32 %.01013.i.i, -1
  call fastcc void @scalar_ntt(ptr noundef nonnull %.014.i.i)
  %i.bo = getelementptr inbounds i8, ptr %.01112.i.i, i64 %i.ag
  %i.bp = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 512
  %i.bq = icmp sgt i32 %.01013.i.i, 1
  br i1 %i.bq, label %bb.e, label %vector_decode_decompress_ntt.exit.i, !llvm.loop !86

vector_decode_decompress_ntt.exit.i:              ; preds = %scalar_decompress.exit.i.i, %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !87
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %notmask.i.i = shl nsw i32 -1, %i.x             ; 2 uses
  %i.bu = trunc i32 %notmask.i.i to i16
  %i.bv = xor i16 %i.bu, -1                       ; 3 uses
  %i.bw = zext nneg i32 %i.x to i64
  %i.bx = zext i16 %i.bv to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %vector_decode_decompress_ntt.exit.i
  %.051.i.i = phi i64 [ 0, %vector_decode_decompress_ntt.exit.i ], [ %.253.i.i, %bb.u ]
  %.042.idx.i.i = phi i64 [ 0, %vector_decode_decompress_ntt.exit.i ], [ %.143.idx.i.i, %bb.u ] ; 4 uses
  %.040.i.i = phi i32 [ 0, %vector_decode_decompress_ntt.exit.i ], [ %.2.i.i, %bb.u ] ; 2 uses
  %.038.i.i = phi i32 [ %i.x, %vector_decode_decompress_ntt.exit.i ], [ %.139.i.i, %bb.u ] ; 6 uses
  %.036.i.i = phi ptr [ %i.bt, %vector_decode_decompress_ntt.exit.i ], [ %.137.i.i, %bb.u ] ; 3 uses
  %.034.i.i = phi i16 [ %i.bv, %vector_decode_decompress_ntt.exit.i ], [ %.135.i.i, %bb.u ] ; 4 uses
  %.0.i.i = phi i16 [ 0, %vector_decode_decompress_ntt.exit.i ], [ %.1.i.i, %bb.u ] ; 2 uses
  %.042.ptr.i.i = getelementptr inbounds nuw i8, ptr %6, i64 %.042.idx.i.i ; 2 uses
  %i.by = icmp eq i32 %.040.i.i, 0
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i.i.i = load i64, ptr %.036.i.i, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.152.i.i = phi i64 [ %.0.copyload.i.i.i, %bb.o ], [ %.051.i.i, %bb.n ] ; 6 uses
  %.141.i.i = phi i32 [ 64, %bb.o ], [ %.040.i.i, %bb.n ] ; 6 uses
  %.137.i.i = phi ptr [ %i.bz, %bb.o ], [ %.036.i.i, %bb.n ]
  %i.ca = icmp ne i32 %.038.i.i, %i.x
  %.not.i.i = icmp slt i32 %.141.i.i, %i.x
  %or.cond.i.i = or i1 %i.ca, %.not.i.i
  br i1 %or.cond.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = trunc i64 %.152.i.i to i16
  %i.cc = and i16 %.034.i.i, %i.cb
  %.042.add46.i.i = add nuw nsw i64 %.042.idx.i.i, 2
  store i16 %i.cc, ptr %.042.ptr.i.i, align 2, !tbaa !38
  %i.cd = lshr i64 %.152.i.i, %i.bw
  %i.ce = sub nsw i32 %.141.i.i, %i.x
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %.not45.i.i = icmp slt i32 %.141.i.i, %.038.i.i
  br i1 %.not45.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = trunc i64 %.152.i.i to i32
  %i.cg = zext i16 %.034.i.i to i32
  %i.ch = and i32 %i.cf, %i.cg
  %i.ci = sub nsw i32 %i.x, %.038.i.i
  %i.cj = shl i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i16
  %i.cl = or i16 %.0.i.i, %i.ck
  %.042.add.i.i = add nuw nsw i64 %.042.idx.i.i, 2
  store i16 %i.cl, ptr %.042.ptr.i.i, align 2, !tbaa !38
  %i.cm = zext nneg i32 %.038.i.i to i64
  %i.cn = lshr i64 %.152.i.i, %i.cm
  %i.co = sub nsw i32 %.141.i.i, %.038.i.i
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cp = trunc i64 %.152.i.i to i16
  %i.cq = and i16 %.034.i.i, %i.cp
  %i.cr = sub nsw i32 %.038.i.i, %.141.i.i
  %i.cs = lshr i32 %i.bx, %.141.i.i
  %i.ct = trunc nuw nsw i32 %i.cs to i16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.253.i.i = phi i64 [ %.152.i.i, %bb.t ], [ %i.cn, %bb.s ], [ %i.cd, %bb.q ]
  %.143.idx.i.i = phi i64 [ %.042.idx.i.i, %bb.t ], [ %.042.add.i.i, %bb.s ], [ %.042.add46.i.i, %bb.q ] ; 2 uses
  %.2.i.i = phi i32 [ 0, %bb.t ], [ %i.co, %bb.s ], [ %i.ce, %bb.q ]
  %.139.i.i = phi i32 [ %i.cr, %bb.t ], [ %i.x, %bb.s ], [ %i.x, %bb.q ]
  %.135.i.i = phi i16 [ %i.ct, %bb.t ], [ %i.bv, %bb.s ], [ %.034.i.i, %bb.q ]
  %.1.i.i = phi i16 [ %i.cq, %bb.t ], [ 0, %bb.s ], [ %.0.i.i, %bb.q ]
  %i.cu = icmp slt i64 %.143.idx.i.i, 512
  br i1 %i.cu, label %bb.n, label %vector.ph46, !llvm.loop !84

vector.ph46:                                      ; preds = %bb.u
  %i.cv = add nsw i32 %i.x, -1
  %i.cw = xor i32 %notmask.i.i, -1
  %broadcast.splatinsert47 = insertelement <8 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat48 = shufflevector <8 x i32> %broadcast.splatinsert47, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <8 x i32> poison, i32 %i.cv, i64 0
  %broadcast.splat50 = shufflevector <8 x i32> %broadcast.splatinsert49, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat52 = shufflevector <8 x i32> %broadcast.splatinsert51, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph46
  %index54 = phi i64 [ 0, %vector.ph46 ], [ %index.next56, %vector.body53 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index54 ; 2 uses
  %wide.load55 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !38
  %i.cy = zext <8 x i16> %wide.load55 to <8 x i32>
  %i.cz = mul nuw nsw <8 x i32> %i.cy, splat (i32 3329) ; 2 uses
  %i.da = and <8 x i32> %i.cz, %broadcast.splat48
  %i.db = lshr <8 x i32> %i.cz, %broadcast.splat52
  %i.dc = lshr <8 x i32> %i.da, %broadcast.splat50
  %i.dd = add nuw nsw <8 x i32> %i.dc, %i.db
  %i.de = trunc <8 x i32> %i.dd to <8 x i16>
  store <8 x i16> %i.de, ptr %i.cx, align 2, !tbaa !38
  %index.next56 = add nuw i64 %index54, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next56, 256
  br i1 %i.df, label %scalar_decompress.exit.i, label %vector.body53, !llvm.loop !88

scalar_decompress.exit.i:                         ; preds = %vector.body53
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16
  call fastcc void @inner_product(ptr noundef %7, ptr noundef %i.dh, ptr noundef nonnull %3, i32 noundef %i.t)
  call fastcc void @scalar_inverse_ntt(ptr noundef %7)
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %scalar_decompress.exit.i
  %index60 = phi i64 [ 0, %scalar_decompress.exit.i ], [ %index.next65, %vector.body59 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index60 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load61 = load <8 x i16>, ptr %i.di, align 2, !tbaa !38
  %wide.load62 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !38
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index60 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load63 = load <8 x i16>, ptr %i.dk, align 2, !tbaa !38
  %wide.load64 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !38
  %i.dm = sub <8 x i16> %wide.load61, %wide.load63 ; 3 uses
  %i.dn = sub <8 x i16> %wide.load62, %wide.load64 ; 3 uses
  %i.do = add <8 x i16> %i.dm, splat (i16 3329)
  %i.dp = add <8 x i16> %i.dn, splat (i16 3329)
  %i.dq = icmp slt <8 x i16> %i.dm, zeroinitializer
  %i.dr = icmp slt <8 x i16> %i.dn, zeroinitializer
  %i.ds = select <8 x i1> %i.dq, <8 x i16> %i.do, <8 x i16> zeroinitializer
  %i.dt = select <8 x i1> %i.dr, <8 x i16> %i.dp, <8 x i16> zeroinitializer
  %i.du = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dm, <8 x i16> zeroinitializer)
  %i.dv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dn, <8 x i16> zeroinitializer)
  %i.dw = or <8 x i16> %i.ds, %i.du
  %i.dx = or <8 x i16> %i.dt, %i.dv
  store <8 x i16> %i.dw, ptr %i.di, align 2, !tbaa !38
  store <8 x i16> %i.dx, ptr %i.dj, align 2, !tbaa !38
  %index.next65 = add nuw i64 %index60, 16        ; 2 uses
  %i.dy = icmp eq i64 %index.next65, 256
  br i1 %i.dy, label %vector.body68, label %vector.body59, !llvm.loop !89

vector.body68:                                    ; preds = %vector.body59, %vector.body68
  %index69 = phi i64 [ %index.next71, %vector.body68 ], [ 0, %vector.body59 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index69 ; 2 uses
  %wide.load70 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !38
  %i.ea = zext <8 x i16> %wide.load70 to <8 x i32> ; 2 uses
  %i.eb = shl nuw nsw <8 x i32> %i.ea, splat (i32 1)
  %i.ec = mul nuw nsw <8 x i32> %i.ea, splat (i32 10078)
  %i.ed = lshr <8 x i32> %i.ec, splat (i32 24)    ; 2 uses
  %i.ee = mul nsw <8 x i32> %i.ed, splat (i32 -3329)
  %i.ef = add nsw <8 x i32> %i.ee, %i.eb          ; 4 uses
  %i.eg = sub nsw <8 x i32> splat (i32 1664), %i.ef
  %i.eh = or <8 x i32> %i.eg, %i.ef
  %i.ei = lshr <8 x i32> %i.eh, splat (i32 31)
  %i.ej = add nuw nsw <8 x i32> %i.ei, %i.ed
  %i.ek = sub nsw <8 x i32> splat (i32 4993), %i.ef
  %i.el = or <8 x i32> %i.ek, %i.ef
  %i.em = lshr <8 x i32> %i.el, splat (i32 31)
  %i.en = add nuw nsw <8 x i32> %i.ej, %i.em
  %i.eo = trunc nuw nsw <8 x i32> %i.en to <8 x i16>
  %i.ep = and <8 x i16> %i.eo, splat (i16 1)
  store <8 x i16> %i.ep, ptr %i.dz, align 2, !tbaa !38
  %index.next71 = add nuw i64 %index69, 8         ; 2 uses
  %i.eq = icmp eq i64 %index.next71, 256
  br i1 %i.eq, label %vector.body74, label %vector.body68, !llvm.loop !90

vector.body74:                                    ; preds = %vector.body68, %vector.body74
  %index75 = phi i64 [ %index.next76, %vector.body74 ], [ 0, %vector.body68 ] ; 3 uses
  %i.er = shl nuw i64 %index75, 3                 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %index75
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.er ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 112
  %i.fi = load i16, ptr %i.et, align 2, !tbaa !38
  %i.fj = load i16, ptr %i.ev, align 2, !tbaa !38
  %i.fk = load i16, ptr %i.ex, align 2, !tbaa !38
  %i.fl = load i16, ptr %i.ez, align 2, !tbaa !38
  %i.fm = load i16, ptr %i.fb, align 2, !tbaa !38
  %i.fn = load i16, ptr %i.fd, align 2, !tbaa !38
  %i.fo = load i16, ptr %i.ff, align 2, !tbaa !38
  %i.fp = load i16, ptr %i.fh, align 2, !tbaa !38
  %i.fq = insertelement <8 x i16> poison, i16 %i.fi, i64 0
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 1
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 2
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 3
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.fm, i64 4
  %i.fv = insertelement <8 x i16> %i.fu, i16 %i.fn, i64 5
  %i.fw = insertelement <8 x i16> %i.fv, i16 %i.fo, i64 6
  %i.fx = insertelement <8 x i16> %i.fw, i16 %i.fp, i64 7
  %i.fy = trunc <8 x i16> %i.fx to <8 x i8>
  %i.fz = and <8 x i8> %i.fy, splat (i8 1)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eu, i64 18
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ew, i64 34
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ey, i64 50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fa, i64 66
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fc, i64 82
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 98
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 114
  %i.gi = load i16, ptr %i.ga, align 2, !tbaa !38
  %i.gj = load i16, ptr %i.gb, align 2, !tbaa !38
  %i.gk = load i16, ptr %i.gc, align 2, !tbaa !38
  %i.gl = load i16, ptr %i.gd, align 2, !tbaa !38
  %i.gm = load i16, ptr %i.ge, align 2, !tbaa !38
  %i.gn = load i16, ptr %i.gf, align 2, !tbaa !38
  %i.go = load i16, ptr %i.gg, align 2, !tbaa !38
  %i.gp = load i16, ptr %i.gh, align 2, !tbaa !38
  %i.gq = insertelement <8 x i16> poison, i16 %i.gi, i64 0
  %i.gr = insertelement <8 x i16> %i.gq, i16 %i.gj, i64 1
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 2
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 3
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 4
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 5
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 6
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 7
  %i.gy = trunc <8 x i16> %i.gx to <8 x i8>
  %i.gz = shl <8 x i8> %i.gy, splat (i8 1)
  %i.ha = and <8 x i8> %i.gz, splat (i8 2)
  %i.hb = or disjoint <8 x i8> %i.ha, %i.fz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.he = getelementptr inbounds nuw i8, ptr %i.ew, i64 36
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ey, i64 52
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fa, i64 68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fc, i64 84
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fe, i64 100
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fg, i64 116
  %i.hk = load i16, ptr %i.hc, align 2, !tbaa !38
  %i.hl = load i16, ptr %i.hd, align 2, !tbaa !38
  %i.hm = load i16, ptr %i.he, align 2, !tbaa !38
  %i.hn = load i16, ptr %i.hf, align 2, !tbaa !38
  %i.ho = load i16, ptr %i.hg, align 2, !tbaa !38
  %i.hp = load i16, ptr %i.hh, align 2, !tbaa !38
  %i.hq = load i16, ptr %i.hi, align 2, !tbaa !38
  %i.hr = load i16, ptr %i.hj, align 2, !tbaa !38
  %i.hs = insertelement <8 x i16> poison, i16 %i.hk, i64 0
  %i.ht = insertelement <8 x i16> %i.hs, i16 %i.hl, i64 1
  %i.hu = insertelement <8 x i16> %i.ht, i16 %i.hm, i64 2
  %i.hv = insertelement <8 x i16> %i.hu, i16 %i.hn, i64 3
  %i.hw = insertelement <8 x i16> %i.hv, i16 %i.ho, i64 4
  %i.hx = insertelement <8 x i16> %i.hw, i16 %i.hp, i64 5
  %i.hy = insertelement <8 x i16> %i.hx, i16 %i.hq, i64 6
  %i.hz = insertelement <8 x i16> %i.hy, i16 %i.hr, i64 7
  %i.ia = trunc <8 x i16> %i.hz to <8 x i8>
  %i.ib = shl <8 x i8> %i.ia, splat (i8 2)
  %i.ic = and <8 x i8> %i.ib, splat (i8 4)
  %i.id = or disjoint <8 x i8> %i.hb, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.et, i64 6
  %i.if = getelementptr inbounds nuw i8, ptr %i.eu, i64 22
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ew, i64 38
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ey, i64 54
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fa, i64 70
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fc, i64 86
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fe, i64 102
  %i.il = getelementptr inbounds nuw i8, ptr %i.fg, i64 118
  %i.im = load i16, ptr %i.ie, align 2, !tbaa !38
  %i.in = load i16, ptr %i.if, align 2, !tbaa !38
  %i.io = load i16, ptr %i.ig, align 2, !tbaa !38
  %i.ip = load i16, ptr %i.ih, align 2, !tbaa !38
  %i.iq = load i16, ptr %i.ii, align 2, !tbaa !38
  %i.ir = load i16, ptr %i.ij, align 2, !tbaa !38
  %i.is = load i16, ptr %i.ik, align 2, !tbaa !38
  %i.it = load i16, ptr %i.il, align 2, !tbaa !38
  %i.iu = insertelement <8 x i16> poison, i16 %i.im, i64 0
  %i.iv = insertelement <8 x i16> %i.iu, i16 %i.in, i64 1
  %i.iw = insertelement <8 x i16> %i.iv, i16 %i.io, i64 2
  %i.ix = insertelement <8 x i16> %i.iw, i16 %i.ip, i64 3
  %i.iy = insertelement <8 x i16> %i.ix, i16 %i.iq, i64 4
  %i.iz = insertelement <8 x i16> %i.iy, i16 %i.ir, i64 5
  %i.ja = insertelement <8 x i16> %i.iz, i16 %i.is, i64 6
  %i.jb = insertelement <8 x i16> %i.ja, i16 %i.it, i64 7
  %i.jc = trunc <8 x i16> %i.jb to <8 x i8>
  %i.jd = shl <8 x i8> %i.jc, splat (i8 3)
  %i.je = and <8 x i8> %i.jd, splat (i8 8)
  %i.jf = or disjoint <8 x i8> %i.id, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fe, i64 104
  %i.jn = getelementptr inbounds nuw i8, ptr %i.fg, i64 120
  %i.jo = load i16, ptr %i.jg, align 2, !tbaa !38
  %i.jp = load i16, ptr %i.jh, align 2, !tbaa !38
  %i.jq = load i16, ptr %i.ji, align 2, !tbaa !38
  %i.jr = load i16, ptr %i.jj, align 2, !tbaa !38
  %i.js = load i16, ptr %i.jk, align 2, !tbaa !38
  %i.jt = load i16, ptr %i.jl, align 2, !tbaa !38
  %i.ju = load i16, ptr %i.jm, align 2, !tbaa !38
  %i.jv = load i16, ptr %i.jn, align 2, !tbaa !38
  %i.jw = insertelement <8 x i16> poison, i16 %i.jo, i64 0
  %i.jx = insertelement <8 x i16> %i.jw, i16 %i.jp, i64 1
  %i.jy = insertelement <8 x i16> %i.jx, i16 %i.jq, i64 2
  %i.jz = insertelement <8 x i16> %i.jy, i16 %i.jr, i64 3
  %i.ka = insertelement <8 x i16> %i.jz, i16 %i.js, i64 4
  %i.kb = insertelement <8 x i16> %i.ka, i16 %i.jt, i64 5
  %i.kc = insertelement <8 x i16> %i.kb, i16 %i.ju, i64 6
  %i.kd = insertelement <8 x i16> %i.kc, i16 %i.jv, i64 7
  %i.ke = trunc <8 x i16> %i.kd to <8 x i8>
  %i.kf = shl <8 x i8> %i.ke, splat (i8 4)
  %i.kg = and <8 x i8> %i.kf, splat (i8 16)
  %i.kh = or disjoint <8 x i8> %i.jf, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.et, i64 10
  %i.kj = getelementptr inbounds nuw i8, ptr %i.eu, i64 26
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ew, i64 42
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ey, i64 58
  %i.km = getelementptr inbounds nuw i8, ptr %i.fa, i64 74
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fc, i64 90
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fe, i64 106
  %i.kp = getelementptr inbounds nuw i8, ptr %i.fg, i64 122
  %i.kq = load i16, ptr %i.ki, align 2, !tbaa !38
  %i.kr = load i16, ptr %i.kj, align 2, !tbaa !38
  %i.ks = load i16, ptr %i.kk, align 2, !tbaa !38
  %i.kt = load i16, ptr %i.kl, align 2, !tbaa !38
  %i.ku = load i16, ptr %i.km, align 2, !tbaa !38
  %i.kv = load i16, ptr %i.kn, align 2, !tbaa !38
  %i.kw = load i16, ptr %i.ko, align 2, !tbaa !38
  %i.kx = load i16, ptr %i.kp, align 2, !tbaa !38
  %i.ky = insertelement <8 x i16> poison, i16 %i.kq, i64 0
  %i.kz = insertelement <8 x i16> %i.ky, i16 %i.kr, i64 1
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.ks, i64 2
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 3
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 4
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 5
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 6
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.kx, i64 7
  %i.lg = trunc <8 x i16> %i.lf to <8 x i8>
  %i.lh = shl <8 x i8> %i.lg, splat (i8 5)
  %i.li = and <8 x i8> %i.lh, splat (i8 32)
  %i.lj = or disjoint <8 x i8> %i.kh, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %i.eu, i64 28
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ew, i64 44
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ey, i64 60
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fa, i64 76
  %i.lp = getelementptr inbounds nuw i8, ptr %i.fc, i64 92
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fe, i64 108
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fg, i64 124
  %i.ls = load i16, ptr %i.lk, align 2, !tbaa !38
  %i.lt = load i16, ptr %i.ll, align 2, !tbaa !38
  %i.lu = load i16, ptr %i.lm, align 2, !tbaa !38
  %i.lv = load i16, ptr %i.ln, align 2, !tbaa !38
  %i.lw = load i16, ptr %i.lo, align 2, !tbaa !38
  %i.lx = load i16, ptr %i.lp, align 2, !tbaa !38
  %i.ly = load i16, ptr %i.lq, align 2, !tbaa !38
  %i.lz = load i16, ptr %i.lr, align 2, !tbaa !38
  %i.ma = insertelement <8 x i16> poison, i16 %i.ls, i64 0
  %i.mb = insertelement <8 x i16> %i.ma, i16 %i.lt, i64 1
  %i.mc = insertelement <8 x i16> %i.mb, i16 %i.lu, i64 2
  %i.md = insertelement <8 x i16> %i.mc, i16 %i.lv, i64 3
  %i.me = insertelement <8 x i16> %i.md, i16 %i.lw, i64 4
  %i.mf = insertelement <8 x i16> %i.me, i16 %i.lx, i64 5
  %i.mg = insertelement <8 x i16> %i.mf, i16 %i.ly, i64 6
  %i.mh = insertelement <8 x i16> %i.mg, i16 %i.lz, i64 7
  %i.mi = trunc <8 x i16> %i.mh to <8 x i8>
  %i.mj = shl <8 x i8> %i.mi, splat (i8 6)
end_hunk_0
begin_hunk_1_@hash_h:bb.a
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %i.a) #12
  %.not12.i = icmp ne i32 %i.h, 0
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 32
  %narrow.i = select i1 %.not12.i, i1 %i.j, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.k = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.l = phi i32 [ 0, %bb.a ], [ %i.k, %single_keccak.exit ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @matrix_expand(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [168 x i8], align 16              ; 5 uses
  %i.b = alloca [34 x i8], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.e = load ptr, ptr %1, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.preheader.lr.ph, label %.loopexit25

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01632 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ap, %._crit_edge ] ; 2 uses
  %.01831 = phi ptr [ %i.d, %.preheader.lr.ph ], [ %i.an, %._crit_edge ]
  %i.n = trunc i32 %.01632 to i8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.030 = phi i32 [ 0, %.preheader ], [ %i.ao, %.loopexit ] ; 2 uses
  %.129 = phi ptr [ %.01831, %.preheader ], [ %i.an, %.loopexit ] ; 3 uses
  store i8 %i.n, ptr %i.k, align 16, !tbaa !44
  %i.o = trunc i32 %.030 to i8
  store i8 %i.o, ptr %i.l, align 1, !tbaa !44
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.q = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef null) #12
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.loopexit25, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 34) #12
  %.not20 = icmp eq i32 %i.r, 0
  br i1 %.not20, label %.loopexit25, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %.022.idx.i = phi i64 [ 0, %bb.d ], [ %.4.idx.i, %bb.l ]
  %i.s = call i32 @EVP_DigestSqueeze(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 168) #12
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %sample_scalar.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.k
  %.023.idx.i = phi i64 [ %.023.add.i, %bb.k ], [ 0, %bb.e ] ; 3 uses
  %.1.idx.i = phi i64 [ %.3.idx.i, %bb.k ], [ %.022.idx.i, %bb.e ] ; 4 uses
  %.023.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.023.idx.i ; 3 uses
  %.1.ptr.i = getelementptr inbounds nuw i8, ptr %.129, i64 %.1.idx.i
  %i.t = getelementptr inbounds nuw i8, ptr %.023.ptr.i, i64 2
  %.023.add.i = add nuw nsw i64 %.023.idx.i, 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !44
  %.not26.i = icmp slt i64 %.1.idx.i, 512
  br i1 %.not26.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.023.ptr.i, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !44
  %i.x = load i8, ptr %.023.ptr.i, align 1, !tbaa !44
  %i.y = zext i8 %i.w to i32                      ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = and i32 %i.z, 3840
  %i.ab = zext i8 %i.x to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab            ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 3329
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nuw nsw i32 %i.ac to i16
  %.1.add.i = add nuw nsw i64 %.1.idx.i, 2
  store i16 %i.ae, ptr %.1.ptr.i, align 2, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.idx.i = phi i64 [ %.1.add.i, %bb.g ], [ %.1.idx.i, %bb.f ] ; 5 uses
  %.2.ptr.i = getelementptr inbounds nuw i8, ptr %.129, i64 %.2.idx.i
  %.not28.i = icmp samesign ult i64 %.2.idx.i, 512
  br i1 %.not28.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = zext i8 %i.u to i32
  %i.ag = shl nuw nsw i32 %i.af, 4
  %i.ah = lshr i32 %i.y, 4
  %i.ai = or disjoint i32 %i.ah, %i.ag            ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 3329
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw nsw i32 %i.ai to i16
  %.2.add.i = add nuw nsw i64 %.2.idx.i, 2
  store i16 %i.ak, ptr %.2.ptr.i, align 2, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.idx.i = phi i64 [ %.2.add.i, %bb.j ], [ %.2.idx.i, %bb.i ] ; 2 uses
  %i.al = icmp samesign ult i64 %.023.idx.i, 165
  br i1 %i.al, label %.preheader.i, label %bb.l, !llvm.loop !93

bb.l:                                             ; preds = %bb.k, %bb.h
  %.4.idx.i = phi i64 [ %.3.idx.i, %bb.k ], [ %.2.idx.i, %bb.h ] ; 2 uses
  %i.am = icmp samesign ult i64 %.4.idx.i, 512
  br i1 %i.am, label %bb.e, label %.loopexit, !llvm.loop !94

sample_scalar.exit:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit25

.loopexit:                                        ; preds = %bb.l, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.an = getelementptr inbounds nuw i8, ptr %.129, i64 512 ; 2 uses
  %i.ao = add nuw nsw i32 %.030, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !95

._crit_edge:                                      ; preds = %.loopexit
  %i.ap = add nuw nsw i32 %.01632, 1              ; 2 uses
  %exitcond35.not = icmp eq i32 %i.ap, %i.g
  br i1 %exitcond35.not, label %.loopexit25, label %.preheader, !llvm.loop !96

.loopexit25:                                      ; preds = %._crit_edge, %bb.b, %bb.c, %bb.a, %sample_scalar.exit
  %.017 = phi i32 [ 0, %bb.b ], [ 0, %sample_scalar.exit ], [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.017
}

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_xof(ptr noundef) local_unnamed_addr #1

declare ptr @EVP_MD_CTX_get0_md(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinalXOF(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestSqueeze(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbd_3(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 192, ptr noundef %1, ptr noundef %2, ptr %.val)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %i.d = mul i64 %index, 3                        ; 8 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 %i.d     ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.e, i64 3
  %i.f = getelementptr i8, ptr %i.a, i64 %i.d     ; 3 uses
  %next.gep79 = getelementptr i8, ptr %i.f, i64 6
  %i.g = getelementptr i8, ptr %i.a, i64 %i.d     ; 3 uses
  %next.gep80 = getelementptr i8, ptr %i.g, i64 9
  %i.h = getelementptr i8, ptr %i.a, i64 %i.d     ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.h, i64 12
  %i.i = getelementptr i8, ptr %i.a, i64 %i.d     ; 3 uses
  %next.gep82 = getelementptr i8, ptr %i.i, i64 15
  %i.j = getelementptr i8, ptr %i.a, i64 %i.d     ; 3 uses
  %next.gep83 = getelementptr i8, ptr %i.j, i64 18
  %i.k = getelementptr i8, ptr %i.a, i64 %i.d     ; 3 uses
  %next.gep84 = getelementptr i8, ptr %i.k, i64 21
  %i.l = shl nuw i64 %index, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.o = getelementptr i8, ptr %i.e, i64 4
  %i.p = getelementptr i8, ptr %i.f, i64 7
  %i.q = getelementptr i8, ptr %i.g, i64 10
  %i.r = getelementptr i8, ptr %i.h, i64 13
  %i.s = getelementptr i8, ptr %i.i, i64 16
  %i.t = getelementptr i8, ptr %i.j, i64 19
  %i.u = getelementptr i8, ptr %i.k, i64 22
  %i.v = load i8, ptr %next.gep, align 8, !tbaa !44
  %i.w = load i8, ptr %next.gep78, align 1, !tbaa !44
  %i.x = load i8, ptr %next.gep79, align 2, !tbaa !44
  %i.y = load i8, ptr %next.gep80, align 1, !tbaa !44
  %i.z = load i8, ptr %next.gep81, align 4, !tbaa !44
  %i.aa = load i8, ptr %next.gep82, align 1, !tbaa !44
  %i.ab = load i8, ptr %next.gep83, align 2, !tbaa !44
  %i.ac = load i8, ptr %next.gep84, align 1, !tbaa !44
  %i.ad = insertelement <8 x i8> poison, i8 %i.v, i64 0
  %i.ae = insertelement <8 x i8> %i.ad, i8 %i.w, i64 1
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.x, i64 2
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.y, i64 3
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.z, i64 4
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.aa, i64 5
  %i.aj = insertelement <8 x i8> %i.ai, i8 %i.ab, i64 6
  %i.ak = insertelement <8 x i8> %i.aj, i8 %i.ac, i64 7
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.am = getelementptr i8, ptr %i.e, i64 5
  %i.an = getelementptr i8, ptr %i.f, i64 8
  %i.ao = getelementptr i8, ptr %i.g, i64 11
  %i.ap = getelementptr i8, ptr %i.h, i64 14
  %i.aq = getelementptr i8, ptr %i.i, i64 17
  %i.ar = getelementptr i8, ptr %i.j, i64 20
  %i.as = getelementptr i8, ptr %i.k, i64 23
  %i.at = load i8, ptr %i.n, align 1, !tbaa !44
  %i.au = load i8, ptr %i.o, align 4, !tbaa !44
  %i.av = load i8, ptr %i.p, align 1, !tbaa !44
  %i.aw = load i8, ptr %i.q, align 2, !tbaa !44
  %i.ax = load i8, ptr %i.r, align 1, !tbaa !44
  %i.ay = load i8, ptr %i.s, align 8, !tbaa !44
  %i.az = load i8, ptr %i.t, align 1, !tbaa !44
  %i.ba = load i8, ptr %i.u, align 2, !tbaa !44
  %i.bb = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 1
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 2
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 3
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 4
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 5
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 6
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 7
  %i.bj = load i8, ptr %i.al, align 2, !tbaa !44
  %i.bk = load i8, ptr %i.am, align 1, !tbaa !44
  %i.bl = load i8, ptr %i.an, align 8, !tbaa !44
  %i.bm = load i8, ptr %i.ao, align 1, !tbaa !44
  %i.bn = load i8, ptr %i.ap, align 2, !tbaa !44
  %i.bo = load i8, ptr %i.aq, align 1, !tbaa !44
  %i.bp = load i8, ptr %i.ar, align 4, !tbaa !44
  %i.bq = load i8, ptr %i.as, align 1, !tbaa !44
  %i.br = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 1
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 2
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 3
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bn, i64 4
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bo, i64 5
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 6
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bq, i64 7
  %i.bz = zext <8 x i8> %i.ak to <8 x i32>        ; 8 uses
  %i.ca = and <8 x i32> %i.bz, splat (i32 1)
  %i.cb = lshr <8 x i32> %i.bz, splat (i32 1)
  %i.cc = and <8 x i32> %i.cb, splat (i32 1)
  %i.cd = lshr <8 x i32> %i.bz, splat (i32 2)
  %i.ce = and <8 x i32> %i.cd, splat (i32 1)
  %i.cf = shl <8 x i32> %i.bz, splat (i32 28)
  %i.cg = ashr <8 x i32> %i.cf, splat (i32 31)
  %i.ch = shl <8 x i32> %i.bz, splat (i32 27)
  %i.ci = ashr <8 x i32> %i.ch, splat (i32 31)
  %i.cj = shl <8 x i32> %i.bz, splat (i32 26)
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 31)
  %i.cl = add nsw <8 x i32> %i.ci, %i.ca
  %i.cm = add nsw <8 x i32> %i.cl, %i.cg
  %i.cn = add nsw <8 x i32> %i.cm, %i.ck
  %i.co = add nsw <8 x i32> %i.cn, %i.cc
  %i.cp = add nsw <8 x i32> %i.co, %i.ce          ; 2 uses
  %i.cq = lshr <8 x i32> %i.bz, splat (i32 6)
  %i.cr = and <8 x i32> %i.cq, splat (i32 1)
  %i.cs = lshr <8 x i32> %i.bz, splat (i32 7)
  %i.ct = zext <8 x i8> %i.bi to <8 x i32>        ; 8 uses
  %i.cu = and <8 x i32> %i.ct, splat (i32 1)
  %i.cv = shl <8 x i32> %i.ct, splat (i32 30)
  %i.cw = ashr <8 x i32> %i.cv, splat (i32 31)
  %i.cx = shl <8 x i32> %i.ct, splat (i32 29)
  %i.cy = ashr <8 x i32> %i.cx, splat (i32 31)
  %i.cz = shl <8 x i32> %i.ct, splat (i32 28)
  %i.da = ashr <8 x i32> %i.cz, splat (i32 31)
  %i.db = add nuw nsw <8 x i32> %i.cr, %i.cs
  %i.dc = add nuw nsw <8 x i32> %i.db, %i.cu
  %i.dd = add nsw <8 x i32> %i.dc, %i.cy
  %i.de = add nsw <8 x i32> %i.dd, %i.cw
  %i.df = add nsw <8 x i32> %i.de, %i.da          ; 2 uses
  %i.dg = lshr <8 x i32> %i.ct, splat (i32 4)
  %i.dh = and <8 x i32> %i.dg, splat (i32 1)
  %i.di = lshr <8 x i32> %i.ct, splat (i32 5)
  %i.dj = and <8 x i32> %i.di, splat (i32 1)
  %i.dk = lshr <8 x i32> %i.ct, splat (i32 6)
  %i.dl = and <8 x i32> %i.dk, splat (i32 1)
  %i.dm = lshr <8 x i32> %i.ct, splat (i32 7)
  %i.dn = zext <8 x i8> %i.by to <8 x i32>        ; 8 uses
  %i.do = and <8 x i32> %i.dn, splat (i32 1)
  %i.dp = shl <8 x i32> %i.dn, splat (i32 30)
  %i.dq = ashr <8 x i32> %i.dp, splat (i32 31)
  %i.dr = sub nsw <8 x i32> %i.dj, %i.dm
  %i.ds = add nsw <8 x i32> %i.dr, %i.dh
  %i.dt = add nsw <8 x i32> %i.ds, %i.dl
  %i.du = sub nsw <8 x i32> %i.dt, %i.do
  %i.dv = add nsw <8 x i32> %i.du, %i.dq          ; 2 uses
  %i.dw = lshr <8 x i32> %i.dn, splat (i32 2)
  %i.dx = and <8 x i32> %i.dw, splat (i32 1)
  %i.dy = lshr <8 x i32> %i.dn, splat (i32 3)
  %i.dz = and <8 x i32> %i.dy, splat (i32 1)
  %i.ea = lshr <8 x i32> %i.dn, splat (i32 4)
  %i.eb = and <8 x i32> %i.ea, splat (i32 1)
  %i.ec = shl <8 x i32> %i.dn, splat (i32 26)
  %i.ed = ashr <8 x i32> %i.ec, splat (i32 31)
  %i.ee = shl <8 x i32> %i.dn, splat (i32 25)
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 31)
  %i.eg = lshr <8 x i32> %i.dn, splat (i32 7)
  %i.eh = sub nsw <8 x i32> %i.dz, %i.eg
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = add nsw <8 x i32> %i.ei, %i.eb
  %i.ek = add nsw <8 x i32> %i.ej, %i.ef
  %i.el = add nsw <8 x i32> %i.ek, %i.ed          ; 2 uses
  %i.em = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = icmp slt <16 x i32> %i.em, zeroinitializer
  %i.eo = select <16 x i1> %i.en, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.ep = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = add nsw <16 x i32> %i.eo, %i.ep
  %i.er = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = icmp slt <16 x i32> %i.er, zeroinitializer
  %i.et = select <16 x i1> %i.es, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.eu = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = add nsw <16 x i32> %i.et, %i.eu
  %i.ew = shufflevector <16 x i32> %i.eq, <16 x i32> %i.ev, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.ew to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.m, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, 64
  br i1 %i.ex, label %.loopexit, label %vector.body, !llvm.loop !97

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbd_2(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef %1, ptr noundef %2, ptr %.val)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %i.d = shl nuw i64 %index, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %wide.load = load <4 x i8>, ptr %i.e, align 4, !tbaa !44
  %i.g = zext <4 x i8> %wide.load to <4 x i32>    ; 8 uses
  %i.h = and <4 x i32> %i.g, splat (i32 1)
  %i.i = lshr <4 x i32> %i.g, splat (i32 1)
  %i.j = and <4 x i32> %i.i, splat (i32 1)
  %i.k = shl <4 x i32> %i.g, splat (i32 29)
  %i.l = ashr <4 x i32> %i.k, splat (i32 31)
  %i.m = shl <4 x i32> %i.g, splat (i32 28)
  %i.n = ashr <4 x i32> %i.m, splat (i32 31)
  %i.o = add nsw <4 x i32> %i.n, %i.h
  %i.p = add nsw <4 x i32> %i.o, %i.l
  %i.q = add nsw <4 x i32> %i.p, %i.j             ; 2 uses
  %i.r = icmp slt <4 x i32> %i.q, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.t = add nsw <4 x i32> %i.s, %i.q
  %i.u = lshr <4 x i32> %i.g, splat (i32 4)
  %i.v = and <4 x i32> %i.u, splat (i32 1)
  %i.w = lshr <4 x i32> %i.g, splat (i32 5)
  %i.x = and <4 x i32> %i.w, splat (i32 1)
  %i.y = shl <4 x i32> %i.g, splat (i32 25)
  %i.z = ashr <4 x i32> %i.y, splat (i32 31)
  %i.aa = lshr <4 x i32> %i.g, splat (i32 7)
  %i.ab = sub nsw <4 x i32> %i.x, %i.aa
  %i.ac = add nsw <4 x i32> %i.ab, %i.v
  %i.ad = add nsw <4 x i32> %i.ac, %i.z           ; 2 uses
  %i.ae = icmp slt <4 x i32> %i.ad, zeroinitializer
  %i.af = select <4 x i1> %i.ae, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.ag = add nsw <4 x i32> %i.af, %i.ad
  %i.ah = shufflevector <4 x i32> %i.t, <4 x i32> %i.ag, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nsw <8 x i32> %i.ah to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.f, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 128
  br i1 %i.ai, label %.loopexit, label %vector.body, !llvm.loop !98

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hash_g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 33, 65) %2, ptr noundef nonnull %3, ptr %.40.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %3, ptr noundef %.40.val, ptr noundef null) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 64, ptr %i.a, align 4, !tbaa !5
  %i.c = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %2) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %3) #12
  %i.e = tail call i32 @EVP_MD_xof(ptr noundef %i.d) #12
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 64) #12
  %i.g = icmp ne i32 %i.f, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %.not12.i = icmp ne i32 %i.h, 0
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 64
  %narrow.i = select i1 %.not12.i, i1 %i.j, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.k = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.l = phi i32 [ 0, %bb.a ], [ %i.k, %single_keccak.exit ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @prf(ptr noundef nonnull %0, i64 noundef range(i64 128, 193) %1, ptr noundef %2, ptr noundef %3, ptr %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef %3, ptr noundef %.24.val, ptr noundef null) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = trunc nuw nsw i64 %1 to i32
  store i32 %i.c, ptr %i.a, align 4, !tbaa !5
  %i.d = tail call i32 @EVP_DigestUpdate(ptr noundef %3, ptr noundef %2, i64 noundef 33) #12
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef %3) #12
  %i.f = tail call i32 @EVP_MD_xof(ptr noundef %i.e) #12
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @EVP_DigestFinalXOF(ptr noundef %3, ptr noundef nonnull %0, i64 noundef range(i64 32, 193) %1) #12
  %i.h = icmp ne i32 %i.g, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 @EVP_DigestFinal_ex(ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %.not12.i = icmp ne i32 %i.i, 0
  %i.j = load i32, ptr %i.a, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %1, %i.k
  %narrow.i = select i1 %.not12.i, i1 %i.l, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.h, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.m = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %single_keccak.exit ]
  ret i32 %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_ntt(ptr nofree noundef captures(address) %0) unnamed_addr #9 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit141, %bb.a
  %.020.idx = phi i64 [ 0, %bb.a ], [ %.022.add.lcssa, %.loopexit141 ] ; 4 uses
  %.1 = phi ptr [ @kNTTRoots, %bb.a ], [ %i.b, %.loopexit141 ]
  %.020.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx ; 3 uses
  %.020.add = add nuw nsw i64 %.020.idx, 256      ; 4 uses
  %.ptr25 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add
  %i.b = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !38
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %i.e = add i64 %.020.idx, %i.a                  ; 2 uses
  %i.f = add i64 %i.e, 256
  %i.g = add i64 %i.e, 2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = add i64 %.020.idx, %i.a
  %i.j = xor i64 %i.i, -1
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.n = shl i64 %n.vec, 1                        ; 2 uses
  %i.o = add i64 %.020.add, %i.n                  ; 3 uses
  %i.p = getelementptr i8, ptr %.020.ptr, i64 %i.n
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.020.ptr, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !38 ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %i.s, align 2, !tbaa !38
  %i.t = zext <8 x i16> %wide.load44 to <8 x i32>
  %i.u = mul nuw <8 x i32> %broadcast.splat, %i.t ; 2 uses
  %i.v = zext <8 x i32> %i.u to <8 x i64>
  %i.w = mul nuw nsw <8 x i64> %i.v, splat (i64 5039)
  %i.x = lshr <8 x i64> %i.w, splat (i64 24)
  %i.y = trunc nuw nsw <8 x i64> %i.x to <8 x i32>
  %i.z = mul <8 x i32> %i.y, splat (i32 62207)
  %i.aa = add <8 x i32> %i.z, %i.u
  %i.ab = trunc <8 x i32> %i.aa to <8 x i16>      ; 2 uses
  %i.ac = add <8 x i16> %i.ab, splat (i16 -3329)  ; 2 uses
  %i.ad = icmp slt <8 x i16> %i.ac, zeroinitializer
  %i.ae = select <8 x i1> %i.ad, <8 x i16> %i.ab, <8 x i16> zeroinitializer
  %i.af = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ac, <8 x i16> zeroinitializer)
  %i.ag = or <8 x i16> %i.ae, %i.af               ; 2 uses
  %i.ah = sub <8 x i16> %wide.load, %i.ag         ; 3 uses
  %i.ai = add <8 x i16> %i.ah, splat (i16 3329)
  %i.aj = icmp slt <8 x i16> %i.ah, zeroinitializer
  %i.ak = select <8 x i1> %i.aj, <8 x i16> %i.ai, <8 x i16> zeroinitializer
  %i.al = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ah, <8 x i16> zeroinitializer)
  %i.am = or <8 x i16> %i.ak, %i.al
  store <8 x i16> %i.am, ptr %i.s, align 2, !tbaa !38
  %i.an = add <8 x i16> %i.ag, %wide.load         ; 2 uses
  %i.ao = add <8 x i16> %i.an, splat (i16 -3329)  ; 2 uses
  %i.ap = icmp slt <8 x i16> %i.ao, zeroinitializer
  %i.aq = select <8 x i1> %i.ap, <8 x i16> %i.an, <8 x i16> zeroinitializer
  %i.ar = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ao, <8 x i16> zeroinitializer)
  %i.as = or <8 x i16> %i.aq, %i.ar
  store <8 x i16> %i.as, ptr %next.gep, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.o, -2
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit141, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.022.idx.ph = phi i64 [ %.020.add, %bb.b ], [ %i.o, %middle.block ]
  %.121.ph = phi ptr [ %.020.ptr, %bb.b ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.idx = phi i64 [ %.022.add, %scalar.ph ], [ %.022.idx.ph, %scalar.ph.preheader ] ; 3 uses
  %.121 = phi ptr [ %i.bs, %scalar.ph ], [ %.121.ph, %scalar.ph.preheader ] ; 3 uses
  %.022.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx ; 2 uses
  %i.au = load i16, ptr %.121, align 2, !tbaa !38 ; 2 uses
  %i.av = load i16, ptr %.022.ptr, align 2, !tbaa !38
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nuw i32 %i.aw, %i.d                 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, 5039
  %i.ba = lshr i64 %i.az, 24
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %.neg.i = mul i32 %i.bb, 62207
  %i.bc = add i32 %.neg.i, %i.ax
  %i.bd = trunc i32 %i.bc to i16                  ; 2 uses
  %i.be = add i16 %i.bd, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.be, 0
  %i.bf = select i1 %isneg.i.i, i16 %i.bd, i16 0
  %i.bg = tail call i16 @llvm.smax.i16(i16 %i.be, i16 0)
  %i.bh = or i16 %i.bf, %i.bg                     ; 2 uses
  %i.bi = sub i16 %i.au, %i.bh                    ; 3 uses
  %i.bj = add i16 %i.bi, 3329
  %isneg.i = icmp slt i16 %i.bi, 0
  %i.bk = select i1 %isneg.i, i16 %i.bj, i16 0
  %i.bl = tail call i16 @llvm.smax.i16(i16 %i.bi, i16 0)
  %i.bm = or i16 %i.bk, %i.bl
  %.022.add = add nuw nsw i64 %.022.idx, 2        ; 2 uses
  store i16 %i.bm, ptr %.022.ptr, align 2, !tbaa !38
  %i.bn = add i16 %i.bh, %i.au                    ; 2 uses
  %i.bo = add i16 %i.bn, -3329                    ; 2 uses
  %isneg.i26 = icmp slt i16 %i.bo, 0
  %i.bp = select i1 %isneg.i26, i16 %i.bn, i16 0
  %i.bq = tail call i16 @llvm.smax.i16(i16 %i.bo, i16 0)
  %i.br = or i16 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.121, i64 2 ; 2 uses
  store i16 %i.br, ptr %.121, align 2, !tbaa !38
  %i.bt = icmp ult ptr %i.bs, %.ptr25
  br i1 %i.bt, label %scalar.ph, label %.loopexit141, !llvm.loop !100

.loopexit141:                                     ; preds = %scalar.ph, %middle.block
  %.022.idx.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.022.idx, %scalar.ph ]
  %.022.add.lcssa = phi i64 [ %i.o, %middle.block ], [ %.022.add, %scalar.ph ]
  %i.bu = icmp slt i64 %.022.idx.lcssa, 510
  br i1 %i.bu, label %bb.b, label %.preheader38.preheader, !llvm.loop !101

.preheader38.preheader:                           ; preds = %.loopexit141
  %i.bv = ptrtoint ptr %0 to i64                  ; 2 uses
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.preheader, %.loopexit140
  %.020.idx.1 = phi i64 [ %.022.add.1.lcssa, %.loopexit140 ], [ 0, %.preheader38.preheader ] ; 4 uses
  %.1.1 = phi ptr [ %i.bw, %.loopexit140 ], [ %i.b, %.preheader38.preheader ]
  %.020.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.1 ; 3 uses
  %.020.add.1 = add nuw nsw i64 %.020.idx.1, 128  ; 4 uses
  %.ptr25.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.1
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.1, i64 2 ; 3 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !38
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = add i64 %.020.idx.1, %i.bv              ; 2 uses
  %i.ca = add i64 %i.bz, 128
  %i.cb = add i64 %i.bz, 2
  %i.cc = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.cb)
  %i.cd = add i64 %.020.idx.1, %i.bv
  %i.ce = xor i64 %i.cd, -1
  %i.cf = add i64 %i.cc, %i.ce                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = add nuw i64 %i.cg, 1                    ; 2 uses
  %min.iters.check47 = icmp ult i64 %i.cf, 14
  br i1 %min.iters.check47, label %scalar.ph46.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %.preheader38
  %n.vec50 = and i64 %i.ch, -8                    ; 3 uses
  %i.ci = shl i64 %n.vec50, 1                     ; 2 uses
  %i.cj = add i64 %.020.add.1, %i.ci              ; 3 uses
  %i.ck = getelementptr i8, ptr %.020.ptr.1, i64 %i.ci
  %broadcast.splatinsert51 = insertelement <8 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat52 = shufflevector <8 x i32> %broadcast.splatinsert51, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.1
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph48
  %index54 = phi i64 [ 0, %vector.ph48 ], [ %index.next58, %vector.body53 ] ; 2 uses
  %i.cm = shl i64 %index54, 1                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %.020.ptr.1, i64 %i.cm ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 2 uses
  %wide.load56 = load <8 x i16>, ptr %next.gep55, align 2, !tbaa !38 ; 2 uses
  %wide.load57 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !38
  %i.co = zext <8 x i16> %wide.load57 to <8 x i32>
  %i.cp = mul nuw <8 x i32> %broadcast.splat52, %i.co ; 2 uses
  %i.cq = zext <8 x i32> %i.cp to <8 x i64>
  %i.cr = mul nuw nsw <8 x i64> %i.cq, splat (i64 5039)
  %i.cs = lshr <8 x i64> %i.cr, splat (i64 24)
  %i.ct = trunc nuw nsw <8 x i64> %i.cs to <8 x i32>
  %i.cu = mul <8 x i32> %i.ct, splat (i32 62207)
  %i.cv = add <8 x i32> %i.cu, %i.cp
  %i.cw = trunc <8 x i32> %i.cv to <8 x i16>      ; 2 uses
  %i.cx = add <8 x i16> %i.cw, splat (i16 -3329)  ; 2 uses
  %i.cy = icmp slt <8 x i16> %i.cx, zeroinitializer
  %i.cz = select <8 x i1> %i.cy, <8 x i16> %i.cw, <8 x i16> zeroinitializer
  %i.da = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cx, <8 x i16> zeroinitializer)
  %i.db = or <8 x i16> %i.cz, %i.da               ; 2 uses
  %i.dc = sub <8 x i16> %wide.load56, %i.db       ; 3 uses
  %i.dd = add <8 x i16> %i.dc, splat (i16 3329)
  %i.de = icmp slt <8 x i16> %i.dc, zeroinitializer
  %i.df = select <8 x i1> %i.de, <8 x i16> %i.dd, <8 x i16> zeroinitializer
  %i.dg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dc, <8 x i16> zeroinitializer)
  %i.dh = or <8 x i16> %i.df, %i.dg
  store <8 x i16> %i.dh, ptr %i.cn, align 2, !tbaa !38
  %i.di = add <8 x i16> %i.db, %wide.load56       ; 2 uses
  %i.dj = add <8 x i16> %i.di, splat (i16 -3329)  ; 2 uses
  %i.dk = icmp slt <8 x i16> %i.dj, zeroinitializer
  %i.dl = select <8 x i1> %i.dk, <8 x i16> %i.di, <8 x i16> zeroinitializer
  %i.dm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dj, <8 x i16> zeroinitializer)
  %i.dn = or <8 x i16> %i.dl, %i.dm
  store <8 x i16> %i.dn, ptr %next.gep55, align 2, !tbaa !38
  %index.next58 = add nuw i64 %index54, 8         ; 2 uses
  %i.do = icmp eq i64 %index.next58, %n.vec50
  br i1 %i.do, label %middle.block59, label %vector.body53, !llvm.loop !102

middle.block59:                                   ; preds = %vector.body53
  %ind.escape60 = add i64 %i.cj, -2
  %cmp.n61 = icmp eq i64 %i.ch, %n.vec50
  br i1 %cmp.n61, label %.loopexit140, label %scalar.ph46.preheader

scalar.ph46.preheader:                            ; preds = %.preheader38, %middle.block59
  %.022.idx.1.ph = phi i64 [ %.020.add.1, %.preheader38 ], [ %i.cj, %middle.block59 ]
  %.121.1.ph = phi ptr [ %.020.ptr.1, %.preheader38 ], [ %i.ck, %middle.block59 ]
  br label %scalar.ph46

scalar.ph46:                                      ; preds = %scalar.ph46.preheader, %scalar.ph46
  %.022.idx.1 = phi i64 [ %.022.add.1, %scalar.ph46 ], [ %.022.idx.1.ph, %scalar.ph46.preheader ] ; 3 uses
  %.121.1 = phi ptr [ %i.en, %scalar.ph46 ], [ %.121.1.ph, %scalar.ph46.preheader ] ; 3 uses
  %.022.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.1 ; 2 uses
  %i.dp = load i16, ptr %.121.1, align 2, !tbaa !38 ; 2 uses
  %i.dq = load i16, ptr %.022.ptr.1, align 2, !tbaa !38
  %i.dr = zext i16 %i.dq to i32
  %i.ds = mul nuw i32 %i.dr, %i.by                ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = mul nuw nsw i64 %i.dt, 5039
  %i.dv = lshr i64 %i.du, 24
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %.neg.i.1 = mul i32 %i.dw, 62207
  %i.dx = add i32 %.neg.i.1, %i.ds
  %i.dy = trunc i32 %i.dx to i16                  ; 2 uses
  %i.dz = add i16 %i.dy, -3329                    ; 2 uses
  %isneg.i.i.1 = icmp slt i16 %i.dz, 0
  %i.ea = select i1 %isneg.i.i.1, i16 %i.dy, i16 0
  %i.eb = tail call i16 @llvm.smax.i16(i16 %i.dz, i16 0)
  %i.ec = or i16 %i.ea, %i.eb                     ; 2 uses
  %i.ed = sub i16 %i.dp, %i.ec                    ; 3 uses
  %i.ee = add i16 %i.ed, 3329
  %isneg.i.1 = icmp slt i16 %i.ed, 0
  %i.ef = select i1 %isneg.i.1, i16 %i.ee, i16 0
  %i.eg = tail call i16 @llvm.smax.i16(i16 %i.ed, i16 0)
  %i.eh = or i16 %i.ef, %i.eg
  %.022.add.1 = add nuw nsw i64 %.022.idx.1, 2    ; 2 uses
  store i16 %i.eh, ptr %.022.ptr.1, align 2, !tbaa !38
  %i.ei = add i16 %i.ec, %i.dp                    ; 2 uses
  %i.ej = add i16 %i.ei, -3329                    ; 2 uses
  %isneg.i26.1 = icmp slt i16 %i.ej, 0
  %i.ek = select i1 %isneg.i26.1, i16 %i.ei, i16 0
  %i.el = tail call i16 @llvm.smax.i16(i16 %i.ej, i16 0)
  %i.em = or i16 %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.121.1, i64 2 ; 2 uses
  store i16 %i.em, ptr %.121.1, align 2, !tbaa !38
  %i.eo = icmp ult ptr %i.en, %.ptr25.1
  br i1 %i.eo, label %scalar.ph46, label %.loopexit140, !llvm.loop !103

.loopexit140:                                     ; preds = %scalar.ph46, %middle.block59
  %.022.idx.1.lcssa = phi i64 [ %ind.escape60, %middle.block59 ], [ %.022.idx.1, %scalar.ph46 ]
  %.022.add.1.lcssa = phi i64 [ %i.cj, %middle.block59 ], [ %.022.add.1, %scalar.ph46 ]
  %i.ep = icmp slt i64 %.022.idx.1.lcssa, 510
  br i1 %i.ep, label %.preheader38, label %.preheader37.preheader, !llvm.loop !101

.preheader37.preheader:                           ; preds = %.loopexit140
  %i.eq = ptrtoint ptr %0 to i64                  ; 2 uses
  br label %.preheader37

.preheader37:                                     ; preds = %.preheader37.preheader, %.loopexit139
  %.020.idx.2 = phi i64 [ %.022.add.2.lcssa, %.loopexit139 ], [ 0, %.preheader37.preheader ] ; 4 uses
  %.1.2 = phi ptr [ %i.er, %.loopexit139 ], [ %i.bw, %.preheader37.preheader ]
  %.020.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.2 ; 3 uses
  %.020.add.2 = add nuw nsw i64 %.020.idx.2, 64   ; 4 uses
  %.ptr25.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.2
  %i.er = getelementptr inbounds nuw i8, ptr %.1.2, i64 2 ; 3 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !38
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %i.eu = add i64 %.020.idx.2, %i.eq              ; 2 uses
  %i.ev = add i64 %i.eu, 64
  %i.ew = add i64 %i.eu, 2
  %i.ex = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 %i.ew)
  %i.ey = add i64 %.020.idx.2, %i.eq
  %i.ez = xor i64 %i.ey, -1
  %i.fa = add i64 %i.ex, %i.ez                    ; 2 uses
  %i.fb = lshr i64 %i.fa, 1
  %i.fc = add nuw i64 %i.fb, 1                    ; 2 uses
  %min.iters.check65 = icmp ult i64 %i.fa, 14
  br i1 %min.iters.check65, label %scalar.ph64.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %.preheader37
  %n.vec68 = and i64 %i.fc, -8                    ; 3 uses
  %i.fd = shl i64 %n.vec68, 1                     ; 2 uses
  %i.fe = add i64 %.020.add.2, %i.fd              ; 3 uses
  %i.ff = getelementptr i8, ptr %.020.ptr.2, i64 %i.fd
  %broadcast.splatinsert69 = insertelement <8 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat70 = shufflevector <8 x i32> %broadcast.splatinsert69, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.2
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph66
  %index72 = phi i64 [ 0, %vector.ph66 ], [ %index.next76, %vector.body71 ] ; 2 uses
  %i.fh = shl i64 %index72, 1                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %.020.ptr.2, i64 %i.fh ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh ; 2 uses
  %wide.load74 = load <8 x i16>, ptr %next.gep73, align 2, !tbaa !38 ; 2 uses
  %wide.load75 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !38
  %i.fj = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.fk = mul nuw <8 x i32> %broadcast.splat70, %i.fj ; 2 uses
  %i.fl = zext <8 x i32> %i.fk to <8 x i64>
  %i.fm = mul nuw nsw <8 x i64> %i.fl, splat (i64 5039)
  %i.fn = lshr <8 x i64> %i.fm, splat (i64 24)
  %i.fo = trunc nuw nsw <8 x i64> %i.fn to <8 x i32>
  %i.fp = mul <8 x i32> %i.fo, splat (i32 62207)
  %i.fq = add <8 x i32> %i.fp, %i.fk
  %i.fr = trunc <8 x i32> %i.fq to <8 x i16>      ; 2 uses
  %i.fs = add <8 x i16> %i.fr, splat (i16 -3329)  ; 2 uses
  %i.ft = icmp slt <8 x i16> %i.fs, zeroinitializer
  %i.fu = select <8 x i1> %i.ft, <8 x i16> %i.fr, <8 x i16> zeroinitializer
  %i.fv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fs, <8 x i16> zeroinitializer)
  %i.fw = or <8 x i16> %i.fu, %i.fv               ; 2 uses
  %i.fx = sub <8 x i16> %wide.load74, %i.fw       ; 3 uses
  %i.fy = add <8 x i16> %i.fx, splat (i16 3329)
  %i.fz = icmp slt <8 x i16> %i.fx, zeroinitializer
  %i.ga = select <8 x i1> %i.fz, <8 x i16> %i.fy, <8 x i16> zeroinitializer
  %i.gb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fx, <8 x i16> zeroinitializer)
  %i.gc = or <8 x i16> %i.ga, %i.gb
  store <8 x i16> %i.gc, ptr %i.fi, align 2, !tbaa !38
  %i.gd = add <8 x i16> %i.fw, %wide.load74       ; 2 uses
  %i.ge = add <8 x i16> %i.gd, splat (i16 -3329)  ; 2 uses
  %i.gf = icmp slt <8 x i16> %i.ge, zeroinitializer
  %i.gg = select <8 x i1> %i.gf, <8 x i16> %i.gd, <8 x i16> zeroinitializer
  %i.gh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ge, <8 x i16> zeroinitializer)
  %i.gi = or <8 x i16> %i.gg, %i.gh
  store <8 x i16> %i.gi, ptr %next.gep73, align 2, !tbaa !38
  %index.next76 = add nuw i64 %index72, 8         ; 2 uses
  %i.gj = icmp eq i64 %index.next76, %n.vec68
  br i1 %i.gj, label %middle.block77, label %vector.body71, !llvm.loop !104

middle.block77:                                   ; preds = %vector.body71
  %ind.escape78 = add i64 %i.fe, -2
  %cmp.n79 = icmp eq i64 %i.fc, %n.vec68
  br i1 %cmp.n79, label %.loopexit139, label %scalar.ph64.preheader

scalar.ph64.preheader:                            ; preds = %.preheader37, %middle.block77
  %.022.idx.2.ph = phi i64 [ %.020.add.2, %.preheader37 ], [ %i.fe, %middle.block77 ]
  %.121.2.ph = phi ptr [ %.020.ptr.2, %.preheader37 ], [ %i.ff, %middle.block77 ]
  br label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.preheader, %scalar.ph64
  %.022.idx.2 = phi i64 [ %.022.add.2, %scalar.ph64 ], [ %.022.idx.2.ph, %scalar.ph64.preheader ] ; 3 uses
  %.121.2 = phi ptr [ %i.hi, %scalar.ph64 ], [ %.121.2.ph, %scalar.ph64.preheader ] ; 3 uses
  %.022.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.2 ; 2 uses
  %i.gk = load i16, ptr %.121.2, align 2, !tbaa !38 ; 2 uses
  %i.gl = load i16, ptr %.022.ptr.2, align 2, !tbaa !38
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nuw i32 %i.gm, %i.et                ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = mul nuw nsw i64 %i.go, 5039
  %i.gq = lshr i64 %i.gp, 24
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %.neg.i.2 = mul i32 %i.gr, 62207
  %i.gs = add i32 %.neg.i.2, %i.gn
  %i.gt = trunc i32 %i.gs to i16                  ; 2 uses
  %i.gu = add i16 %i.gt, -3329                    ; 2 uses
  %isneg.i.i.2 = icmp slt i16 %i.gu, 0
  %i.gv = select i1 %isneg.i.i.2, i16 %i.gt, i16 0
  %i.gw = tail call i16 @llvm.smax.i16(i16 %i.gu, i16 0)
  %i.gx = or i16 %i.gv, %i.gw                     ; 2 uses
  %i.gy = sub i16 %i.gk, %i.gx                    ; 3 uses
  %i.gz = add i16 %i.gy, 3329
  %isneg.i.2 = icmp slt i16 %i.gy, 0
  %i.ha = select i1 %isneg.i.2, i16 %i.gz, i16 0
  %i.hb = tail call i16 @llvm.smax.i16(i16 %i.gy, i16 0)
  %i.hc = or i16 %i.ha, %i.hb
  %.022.add.2 = add nuw nsw i64 %.022.idx.2, 2    ; 2 uses
  store i16 %i.hc, ptr %.022.ptr.2, align 2, !tbaa !38
  %i.hd = add i16 %i.gx, %i.gk                    ; 2 uses
  %i.he = add i16 %i.hd, -3329                    ; 2 uses
  %isneg.i26.2 = icmp slt i16 %i.he, 0
  %i.hf = select i1 %isneg.i26.2, i16 %i.hd, i16 0
  %i.hg = tail call i16 @llvm.smax.i16(i16 %i.he, i16 0)
  %i.hh = or i16 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.121.2, i64 2 ; 2 uses
  store i16 %i.hh, ptr %.121.2, align 2, !tbaa !38
  %i.hj = icmp ult ptr %i.hi, %.ptr25.2
  br i1 %i.hj, label %scalar.ph64, label %.loopexit139, !llvm.loop !105

.loopexit139:                                     ; preds = %scalar.ph64, %middle.block77
  %.022.idx.2.lcssa = phi i64 [ %ind.escape78, %middle.block77 ], [ %.022.idx.2, %scalar.ph64 ]
  %.022.add.2.lcssa = phi i64 [ %i.fe, %middle.block77 ], [ %.022.add.2, %scalar.ph64 ]
  %i.hk = icmp slt i64 %.022.idx.2.lcssa, 510
  br i1 %i.hk, label %.preheader37, label %.preheader36.preheader, !llvm.loop !101

.preheader36.preheader:                           ; preds = %.loopexit139
  %i.hl = ptrtoint ptr %0 to i64                  ; 2 uses
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.preheader, %.loopexit138
  %.020.idx.3 = phi i64 [ %.022.add.3.lcssa, %.loopexit138 ], [ 0, %.preheader36.preheader ] ; 4 uses
  %.1.3 = phi ptr [ %i.hm, %.loopexit138 ], [ %i.er, %.preheader36.preheader ] ; 4 uses
  %.020.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.3 ; 3 uses
  %.020.add.3 = add nuw nsw i64 %.020.idx.3, 32   ; 4 uses
  %.ptr25.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.3
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.3, i64 2 ; 4 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !38
  %i.ho = zext i16 %i.hn to i32                   ; 2 uses
  %i.hp = add i64 %.020.idx.3, %i.hl              ; 2 uses
  %i.hq = add i64 %i.hp, 32
  %i.hr = add i64 %i.hp, 2
  %i.hs = tail call i64 @llvm.umax.i64(i64 %i.hq, i64 %i.hr)
  %i.ht = add i64 %.020.idx.3, %i.hl
  %i.hu = xor i64 %i.ht, -1
  %i.hv = add i64 %i.hs, %i.hu                    ; 2 uses
  %i.hw = lshr i64 %i.hv, 1
  %i.hx = add nuw i64 %i.hw, 1                    ; 2 uses
  %min.iters.check83 = icmp ult i64 %i.hv, 14
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %.preheader36
  %n.vec86 = and i64 %i.hx, -8                    ; 3 uses
  %i.hy = shl i64 %n.vec86, 1                     ; 2 uses
  %i.hz = add i64 %.020.add.3, %i.hy              ; 3 uses
  %i.ia = getelementptr i8, ptr %.020.ptr.3, i64 %i.hy
  %broadcast.splatinsert87 = insertelement <8 x i32> poison, i32 %i.ho, i64 0
  %broadcast.splat88 = shufflevector <8 x i32> %broadcast.splatinsert87, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.3
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph84
  %index90 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body89 ] ; 2 uses
  %i.ic = shl i64 %index90, 1                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %.020.ptr.3, i64 %i.ic ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic ; 2 uses
  %wide.load92 = load <8 x i16>, ptr %next.gep91, align 2, !tbaa !38 ; 2 uses
  %wide.load93 = load <8 x i16>, ptr %i.id, align 2, !tbaa !38
  %i.ie = zext <8 x i16> %wide.load93 to <8 x i32>
  %i.if = mul nuw <8 x i32> %broadcast.splat88, %i.ie ; 2 uses
  %i.ig = zext <8 x i32> %i.if to <8 x i64>
  %i.ih = mul nuw nsw <8 x i64> %i.ig, splat (i64 5039)
  %i.ii = lshr <8 x i64> %i.ih, splat (i64 24)
  %i.ij = trunc nuw nsw <8 x i64> %i.ii to <8 x i32>
  %i.ik = mul <8 x i32> %i.ij, splat (i32 62207)
  %i.il = add <8 x i32> %i.ik, %i.if
  %i.im = trunc <8 x i32> %i.il to <8 x i16>      ; 2 uses
  %i.in = add <8 x i16> %i.im, splat (i16 -3329)  ; 2 uses
  %i.io = icmp slt <8 x i16> %i.in, zeroinitializer
  %i.ip = select <8 x i1> %i.io, <8 x i16> %i.im, <8 x i16> zeroinitializer
  %i.iq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.in, <8 x i16> zeroinitializer)
  %i.ir = or <8 x i16> %i.ip, %i.iq               ; 2 uses
  %i.is = sub <8 x i16> %wide.load92, %i.ir       ; 3 uses
  %i.it = add <8 x i16> %i.is, splat (i16 3329)
  %i.iu = icmp slt <8 x i16> %i.is, zeroinitializer
  %i.iv = select <8 x i1> %i.iu, <8 x i16> %i.it, <8 x i16> zeroinitializer
  %i.iw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.is, <8 x i16> zeroinitializer)
  %i.ix = or <8 x i16> %i.iv, %i.iw
  store <8 x i16> %i.ix, ptr %i.id, align 2, !tbaa !38
  %i.iy = add <8 x i16> %i.ir, %wide.load92       ; 2 uses
  %i.iz = add <8 x i16> %i.iy, splat (i16 -3329)  ; 2 uses
  %i.ja = icmp slt <8 x i16> %i.iz, zeroinitializer
  %i.jb = select <8 x i1> %i.ja, <8 x i16> %i.iy, <8 x i16> zeroinitializer
  %i.jc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.iz, <8 x i16> zeroinitializer)
  %i.jd = or <8 x i16> %i.jb, %i.jc
  store <8 x i16> %i.jd, ptr %next.gep91, align 2, !tbaa !38
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.je = icmp eq i64 %index.next94, %n.vec86
  br i1 %i.je, label %middle.block95, label %vector.body89, !llvm.loop !106

middle.block95:                                   ; preds = %vector.body89
  %ind.escape96 = add i64 %i.hz, -2
  %cmp.n97 = icmp eq i64 %i.hx, %n.vec86
  br i1 %cmp.n97, label %.loopexit138, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.preheader36, %middle.block95
  %.022.idx.3.ph = phi i64 [ %.020.add.3, %.preheader36 ], [ %i.hz, %middle.block95 ]
  %.121.3.ph = phi ptr [ %.020.ptr.3, %.preheader36 ], [ %i.ia, %middle.block95 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.022.idx.3 = phi i64 [ %.022.add.3, %scalar.ph82 ], [ %.022.idx.3.ph, %scalar.ph82.preheader ] ; 3 uses
  %.121.3 = phi ptr [ %i.kd, %scalar.ph82 ], [ %.121.3.ph, %scalar.ph82.preheader ] ; 3 uses
  %.022.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.3 ; 2 uses
  %i.jf = load i16, ptr %.121.3, align 2, !tbaa !38 ; 2 uses
  %i.jg = load i16, ptr %.022.ptr.3, align 2, !tbaa !38
  %i.jh = zext i16 %i.jg to i32
  %i.ji = mul nuw i32 %i.jh, %i.ho                ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = mul nuw nsw i64 %i.jj, 5039
  %i.jl = lshr i64 %i.jk, 24
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %.neg.i.3 = mul i32 %i.jm, 62207
  %i.jn = add i32 %.neg.i.3, %i.ji
  %i.jo = trunc i32 %i.jn to i16                  ; 2 uses
  %i.jp = add i16 %i.jo, -3329                    ; 2 uses
  %isneg.i.i.3 = icmp slt i16 %i.jp, 0
  %i.jq = select i1 %isneg.i.i.3, i16 %i.jo, i16 0
  %i.jr = tail call i16 @llvm.smax.i16(i16 %i.jp, i16 0)
  %i.js = or i16 %i.jq, %i.jr                     ; 2 uses
  %i.jt = sub i16 %i.jf, %i.js                    ; 3 uses
  %i.ju = add i16 %i.jt, 3329
  %isneg.i.3 = icmp slt i16 %i.jt, 0
  %i.jv = select i1 %isneg.i.3, i16 %i.ju, i16 0
  %i.jw = tail call i16 @llvm.smax.i16(i16 %i.jt, i16 0)
  %i.jx = or i16 %i.jv, %i.jw
  %.022.add.3 = add nuw nsw i64 %.022.idx.3, 2    ; 2 uses
  store i16 %i.jx, ptr %.022.ptr.3, align 2, !tbaa !38
  %i.jy = add i16 %i.js, %i.jf                    ; 2 uses
  %i.jz = add i16 %i.jy, -3329                    ; 2 uses
  %isneg.i26.3 = icmp slt i16 %i.jz, 0
  %i.ka = select i1 %isneg.i26.3, i16 %i.jy, i16 0
  %i.kb = tail call i16 @llvm.smax.i16(i16 %i.jz, i16 0)
  %i.kc = or i16 %i.ka, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %.121.3, i64 2 ; 2 uses
  store i16 %i.kc, ptr %.121.3, align 2, !tbaa !38
  %i.ke = icmp ult ptr %i.kd, %.ptr25.3
  br i1 %i.ke, label %scalar.ph82, label %.loopexit138, !llvm.loop !107

.loopexit138:                                     ; preds = %scalar.ph82, %middle.block95
  %.022.idx.3.lcssa = phi i64 [ %ind.escape96, %middle.block95 ], [ %.022.idx.3, %scalar.ph82 ]
  %.022.add.3.lcssa = phi i64 [ %i.hz, %middle.block95 ], [ %.022.add.3, %scalar.ph82 ]
  %i.kf = icmp slt i64 %.022.idx.3.lcssa, 510
  br i1 %i.kf, label %.preheader36, label %vector.memcheck, !llvm.loop !101

vector.memcheck:                                  ; preds = %.loopexit138
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 2 uses
  %i.kg = getelementptr i8, ptr %.1.3, i64 4
  %i.kh = getelementptr i8, ptr %.1.3, i64 36
  %bound0 = icmp ult ptr %0, %i.kh
  %bound1 = icmp ult ptr %i.kg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph100, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck
  %i.ki = getelementptr i8, ptr %.1.3, i64 34
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph101
  %index103 = phi i64 [ 0, %vector.ph101 ], [ %index.next106, %vector.body102 ] ; 3 uses
  %i.kj = shl nuw i64 %index103, 5                ; 8 uses
  %i.kk = shl i64 %index103, 1
  %next.gep104 = getelementptr i8, ptr %i.hm, i64 %i.kk
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 17 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 16 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 16 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 64 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 16 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 96 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 16 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 128 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 16 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 160 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 16 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 192 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj ; 16 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 224 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ko, i64 80 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kq, i64 112 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 144 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 176 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 208 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 240 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %next.gep104, i64 2
  %wide.load105 = load <8 x i16>, ptr %i.li, align 2, !tbaa !38, !alias.scope !108
  %i.lj = zext <8 x i16> %wide.load105 to <8 x i32> ; 8 uses
  %i.lk = load i16, ptr %i.kl, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ll = load i16, ptr %i.kn, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lm = load i16, ptr %i.kp, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ln = load i16, ptr %i.kr, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lo = load i16, ptr %i.kt, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lp = load i16, ptr %i.kv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lq = load i16, ptr %i.kx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lr = load i16, ptr %i.kz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ls = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %i.lt = insertelement <8 x i16> %i.ls, i16 %i.ll, i64 1
  %i.lu = insertelement <8 x i16> %i.lt, i16 %i.lm, i64 2
  %i.lv = insertelement <8 x i16> %i.lu, i16 %i.ln, i64 3
  %i.lw = insertelement <8 x i16> %i.lv, i16 %i.lo, i64 4
  %i.lx = insertelement <8 x i16> %i.lw, i16 %i.lp, i64 5
  %i.ly = insertelement <8 x i16> %i.lx, i16 %i.lq, i64 6
  %i.lz = insertelement <8 x i16> %i.ly, i16 %i.lr, i64 7 ; 2 uses
  %i.ma = load i16, ptr %i.la, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.mb = load i16, ptr %i.lb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.mc = load i16, ptr %i.lc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.md = load i16, ptr %i.ld, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.me = load i16, ptr %i.le, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.mf = load i16, ptr %i.lf, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.mg = load i16, ptr %i.lg, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.mh = load i16, ptr %i.lh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.mi = insertelement <8 x i16> poison, i16 %i.ma, i64 0
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 1
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 2
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 3
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 4
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 5
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 6
  %i.mp = insertelement <8 x i16> %i.mo, i16 %i.mh, i64 7
  %i.mq = zext <8 x i16> %i.mp to <8 x i32>
  %i.mr = mul nuw <8 x i32> %i.mq, %i.lj          ; 2 uses
  %i.ms = zext <8 x i32> %i.mr to <8 x i64>
  %i.mt = mul nuw nsw <8 x i64> %i.ms, splat (i64 5039)
  %i.mu = lshr <8 x i64> %i.mt, splat (i64 24)
  %i.mv = trunc nuw nsw <8 x i64> %i.mu to <8 x i32>
  %i.mw = mul <8 x i32> %i.mv, splat (i32 62207)
  %i.mx = add <8 x i32> %i.mw, %i.mr
  %i.my = trunc <8 x i32> %i.mx to <8 x i16>      ; 2 uses
  %i.mz = add <8 x i16> %i.my, splat (i16 -3329)  ; 2 uses
  %i.na = icmp slt <8 x i16> %i.mz, zeroinitializer
  %i.nb = select <8 x i1> %i.na, <8 x i16> %i.my, <8 x i16> zeroinitializer
  %i.nc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mz, <8 x i16> zeroinitializer)
  %i.nd = or <8 x i16> %i.nb, %i.nc               ; 2 uses
  %i.ne = sub <8 x i16> %i.lz, %i.nd              ; 3 uses
  %i.nf = add <8 x i16> %i.ne, splat (i16 3329)
  %i.ng = icmp slt <8 x i16> %i.ne, zeroinitializer
  %i.nh = select <8 x i1> %i.ng, <8 x i16> %i.nf, <8 x i16> zeroinitializer
  %i.ni = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ne, <8 x i16> zeroinitializer)
  %i.nj = or <8 x i16> %i.nh, %i.ni               ; 8 uses
  %i.nk = extractelement <8 x i16> %i.nj, i64 4
  store i16 %i.nk, ptr %i.le, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nl = extractelement <8 x i16> %i.nj, i64 5
  store i16 %i.nl, ptr %i.lf, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nm = extractelement <8 x i16> %i.nj, i64 6
  store i16 %i.nm, ptr %i.lg, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nn = extractelement <8 x i16> %i.nj, i64 7
  store i16 %i.nn, ptr %i.lh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.no = add <8 x i16> %i.nd, %i.lz              ; 2 uses
  %i.np = add <8 x i16> %i.no, splat (i16 -3329)  ; 2 uses
  %i.nq = icmp slt <8 x i16> %i.np, zeroinitializer
  %i.nr = select <8 x i1> %i.nq, <8 x i16> %i.no, <8 x i16> zeroinitializer
  %i.ns = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.np, <8 x i16> zeroinitializer)
  %i.nt = or <8 x i16> %i.nr, %i.ns               ; 8 uses
  %i.nu = extractelement <8 x i16> %i.nt, i64 4
  store i16 %i.nu, ptr %i.kt, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nv = extractelement <8 x i16> %i.nt, i64 5
  store i16 %i.nv, ptr %i.kv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nw = extractelement <8 x i16> %i.nt, i64 6
  store i16 %i.nw, ptr %i.kx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nx = extractelement <8 x i16> %i.nt, i64 7
  store i16 %i.nx, ptr %i.kz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.nz = getelementptr inbounds nuw i8, ptr %i.km, i64 34
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ko, i64 66
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kq, i64 98
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ks, i64 130 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ku, i64 162 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kw, i64 194 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.ky, i64 226 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.kl, i64 18
  %i.oh = getelementptr inbounds nuw i8, ptr %i.km, i64 50
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ko, i64 82
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kq, i64 114
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ks, i64 146 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ku, i64 178 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.kw, i64 210 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ky, i64 242 ; 2 uses
  %i.oo = load i16, ptr %i.ny, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.op = load i16, ptr %i.nz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.oq = load i16, ptr %i.oa, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.or = load i16, ptr %i.ob, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.os = load i16, ptr %i.oc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ot = load i16, ptr %i.od, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ou = load i16, ptr %i.oe, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ov = load i16, ptr %i.of, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ow = insertelement <8 x i16> poison, i16 %i.oo, i64 0
  %i.ox = insertelement <8 x i16> %i.ow, i16 %i.op, i64 1
  %i.oy = insertelement <8 x i16> %i.ox, i16 %i.oq, i64 2
  %i.oz = insertelement <8 x i16> %i.oy, i16 %i.or, i64 3
  %i.pa = insertelement <8 x i16> %i.oz, i16 %i.os, i64 4
  %i.pb = insertelement <8 x i16> %i.pa, i16 %i.ot, i64 5
  %i.pc = insertelement <8 x i16> %i.pb, i16 %i.ou, i64 6
  %i.pd = insertelement <8 x i16> %i.pc, i16 %i.ov, i64 7 ; 2 uses
  %i.pe = load i16, ptr %i.og, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pf = load i16, ptr %i.oh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pg = load i16, ptr %i.oi, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ph = load i16, ptr %i.oj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pi = load i16, ptr %i.ok, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pj = load i16, ptr %i.ol, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pk = load i16, ptr %i.om, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pl = load i16, ptr %i.on, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = zext <8 x i16> %i.pt to <8 x i32>
  %i.pv = mul nuw <8 x i32> %i.pu, %i.lj          ; 2 uses
  %i.pw = zext <8 x i32> %i.pv to <8 x i64>
  %i.px = mul nuw nsw <8 x i64> %i.pw, splat (i64 5039)
  %i.py = lshr <8 x i64> %i.px, splat (i64 24)
  %i.pz = trunc nuw nsw <8 x i64> %i.py to <8 x i32>
  %i.qa = mul <8 x i32> %i.pz, splat (i32 62207)
  %i.qb = add <8 x i32> %i.qa, %i.pv
  %i.qc = trunc <8 x i32> %i.qb to <8 x i16>      ; 2 uses
  %i.qd = add <8 x i16> %i.qc, splat (i16 -3329)  ; 2 uses
  %i.qe = icmp slt <8 x i16> %i.qd, zeroinitializer
  %i.qf = select <8 x i1> %i.qe, <8 x i16> %i.qc, <8 x i16> zeroinitializer
  %i.qg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qd, <8 x i16> zeroinitializer)
  %i.qh = or <8 x i16> %i.qf, %i.qg               ; 2 uses
  %i.qi = sub <8 x i16> %i.pd, %i.qh              ; 3 uses
  %i.qj = add <8 x i16> %i.qi, splat (i16 3329)
  %i.qk = icmp slt <8 x i16> %i.qi, zeroinitializer
  %i.ql = select <8 x i1> %i.qk, <8 x i16> %i.qj, <8 x i16> zeroinitializer
  %i.qm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qi, <8 x i16> zeroinitializer)
  %i.qn = or <8 x i16> %i.ql, %i.qm               ; 8 uses
  %i.qo = extractelement <8 x i16> %i.qn, i64 4
  store i16 %i.qo, ptr %i.ok, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qp = extractelement <8 x i16> %i.qn, i64 5
  store i16 %i.qp, ptr %i.ol, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qq = extractelement <8 x i16> %i.qn, i64 6
  store i16 %i.qq, ptr %i.om, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qr = extractelement <8 x i16> %i.qn, i64 7
  store i16 %i.qr, ptr %i.on, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qs = add <8 x i16> %i.qh, %i.pd              ; 2 uses
  %i.qt = add <8 x i16> %i.qs, splat (i16 -3329)  ; 2 uses
  %i.qu = icmp slt <8 x i16> %i.qt, zeroinitializer
  %i.qv = select <8 x i1> %i.qu, <8 x i16> %i.qs, <8 x i16> zeroinitializer
  %i.qw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qt, <8 x i16> zeroinitializer)
  %i.qx = or <8 x i16> %i.qv, %i.qw               ; 8 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.km, i64 36
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ko, i64 68
  %i.rb = getelementptr inbounds nuw i8, ptr %i.kq, i64 100
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ks, i64 132 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ku, i64 164 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.kw, i64 196 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ky, i64 228 ; 2 uses
  %i.rg = extractelement <8 x i16> %i.qx, i64 4
  store i16 %i.rg, ptr %i.oc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rh = extractelement <8 x i16> %i.qx, i64 5
  store i16 %i.rh, ptr %i.od, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ri = extractelement <8 x i16> %i.qx, i64 6
  store i16 %i.ri, ptr %i.oe, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rj = extractelement <8 x i16> %i.qx, i64 7
  store i16 %i.rj, ptr %i.of, align 2, !tbaa !38, !alias.scope !111, !noalias !108
end_hunk_1
begin_hunk_2_@scalar_ntt:bb.a
  store i16 %i.aip, ptr %i.afh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aiq = extractelement <8 x i16> %i.aif, i64 6
  store i16 %i.aiq, ptr %i.afi, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.air = extractelement <8 x i16> %i.aif, i64 7
  store i16 %i.air, ptr %i.afj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ais = getelementptr inbounds nuw i8, ptr %i.kl, i64 30
  %i.ait = getelementptr inbounds nuw i8, ptr %i.km, i64 62
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ko, i64 94
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.kq, i64 126
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ks, i64 158 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ku, i64 190 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.kw, i64 222 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ky, i64 254 ; 2 uses
  %i.aja = load i16, ptr %i.aig, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajb = load i16, ptr %i.aih, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajc = load i16, ptr %i.aii, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajd = load i16, ptr %i.aij, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aje = load i16, ptr %i.aik, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajf = load i16, ptr %i.ail, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajg = load i16, ptr %i.aim, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajh = load i16, ptr %i.ain, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aji = insertelement <8 x i16> poison, i16 %i.aja, i64 0
  %i.ajj = insertelement <8 x i16> %i.aji, i16 %i.ajb, i64 1
  %i.ajk = insertelement <8 x i16> %i.ajj, i16 %i.ajc, i64 2
  %i.ajl = insertelement <8 x i16> %i.ajk, i16 %i.ajd, i64 3
  %i.ajm = insertelement <8 x i16> %i.ajl, i16 %i.aje, i64 4
  %i.ajn = insertelement <8 x i16> %i.ajm, i16 %i.ajf, i64 5
  %i.ajo = insertelement <8 x i16> %i.ajn, i16 %i.ajg, i64 6
  %i.ajp = insertelement <8 x i16> %i.ajo, i16 %i.ajh, i64 7 ; 2 uses
  %i.ajq = load i16, ptr %i.ais, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajr = load i16, ptr %i.ait, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajs = load i16, ptr %i.aiu, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajt = load i16, ptr %i.aiv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aju = load i16, ptr %i.aiw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajv = load i16, ptr %i.aix, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajw = load i16, ptr %i.aiy, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajx = load i16, ptr %i.aiz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajy = insertelement <8 x i16> poison, i16 %i.ajq, i64 0
  %i.ajz = insertelement <8 x i16> %i.ajy, i16 %i.ajr, i64 1
  %i.aka = insertelement <8 x i16> %i.ajz, i16 %i.ajs, i64 2
  %i.akb = insertelement <8 x i16> %i.aka, i16 %i.ajt, i64 3
  %i.akc = insertelement <8 x i16> %i.akb, i16 %i.aju, i64 4
  %i.akd = insertelement <8 x i16> %i.akc, i16 %i.ajv, i64 5
  %i.ake = insertelement <8 x i16> %i.akd, i16 %i.ajw, i64 6
  %i.akf = insertelement <8 x i16> %i.ake, i16 %i.ajx, i64 7
  %i.akg = zext <8 x i16> %i.akf to <8 x i32>
  %i.akh = mul nuw <8 x i32> %i.akg, %i.lj        ; 2 uses
  %i.aki = zext <8 x i32> %i.akh to <8 x i64>
  %i.akj = mul nuw nsw <8 x i64> %i.aki, splat (i64 5039)
  %i.akk = lshr <8 x i64> %i.akj, splat (i64 24)
  %i.akl = trunc nuw nsw <8 x i64> %i.akk to <8 x i32>
  %i.akm = mul <8 x i32> %i.akl, splat (i32 62207)
  %i.akn = add <8 x i32> %i.akm, %i.akh
  %i.ako = trunc <8 x i32> %i.akn to <8 x i16>    ; 2 uses
  %i.akp = add <8 x i16> %i.ako, splat (i16 -3329) ; 2 uses
  %i.akq = icmp slt <8 x i16> %i.akp, zeroinitializer
  %i.akr = select <8 x i1> %i.akq, <8 x i16> %i.ako, <8 x i16> zeroinitializer
  %i.aks = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akp, <8 x i16> zeroinitializer)
  %i.akt = or <8 x i16> %i.akr, %i.aks            ; 2 uses
  %i.aku = sub <8 x i16> %i.ajp, %i.akt           ; 3 uses
  %i.akv = add <8 x i16> %i.aku, splat (i16 3329)
  %i.akw = icmp slt <8 x i16> %i.aku, zeroinitializer
  %i.akx = select <8 x i1> %i.akw, <8 x i16> %i.akv, <8 x i16> zeroinitializer
  %i.aky = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aku, <8 x i16> zeroinitializer)
  %i.akz = or <8 x i16> %i.akx, %i.aky            ; 8 uses
  %i.ala = shufflevector <8 x i16> %i.abn, <8 x i16> %i.aer, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.alb = shufflevector <8 x i16> %i.ahv, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alc = shufflevector <4 x i16> %i.ala, <4 x i16> %i.alb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ald = shufflevector <8 x i16> %i.akz, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ale = shufflevector <4 x i16> %i.alc, <4 x i16> %i.ald, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.ale, ptr %i.zg, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alf = shufflevector <8 x i16> %i.abn, <8 x i16> %i.aer, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.alg = shufflevector <8 x i16> %i.ahv, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.alh = shufflevector <4 x i16> %i.alf, <4 x i16> %i.alg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ali = shufflevector <8 x i16> %i.akz, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.alj = shufflevector <4 x i16> %i.alh, <4 x i16> %i.ali, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.alj, ptr %i.zh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alk = shufflevector <8 x i16> %i.abn, <8 x i16> %i.aer, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.all = shufflevector <8 x i16> %i.ahv, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.alm = shufflevector <4 x i16> %i.alk, <4 x i16> %i.all, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aln = shufflevector <8 x i16> %i.akz, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.alo = shufflevector <4 x i16> %i.alm, <4 x i16> %i.aln, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.alo, ptr %i.zi, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alp = shufflevector <8 x i16> %i.abn, <8 x i16> %i.aer, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.alq = shufflevector <8 x i16> %i.ahv, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.alr = shufflevector <4 x i16> %i.alp, <4 x i16> %i.alq, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.als = shufflevector <8 x i16> %i.akz, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.alt = shufflevector <4 x i16> %i.alr, <4 x i16> %i.als, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.alt, ptr %i.zj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alu = extractelement <8 x i16> %i.akz, i64 4
  store i16 %i.alu, ptr %i.aiw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alv = extractelement <8 x i16> %i.akz, i64 5
  store i16 %i.alv, ptr %i.aix, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alw = extractelement <8 x i16> %i.akz, i64 6
  store i16 %i.alw, ptr %i.aiy, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alx = extractelement <8 x i16> %i.akz, i64 7
  store i16 %i.alx, ptr %i.aiz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aly = add <8 x i16> %i.akt, %i.ajp           ; 2 uses
  %i.alz = add <8 x i16> %i.aly, splat (i16 -3329) ; 2 uses
  %i.ama = icmp slt <8 x i16> %i.alz, zeroinitializer
  %i.amb = select <8 x i1> %i.ama, <8 x i16> %i.aly, <8 x i16> zeroinitializer
  %i.amc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.alz, <8 x i16> zeroinitializer)
  %i.amd = or <8 x i16> %i.amb, %i.amc            ; 8 uses
  %i.ame = shufflevector <8 x i16> %i.abx, <8 x i16> %i.afb, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.amf = shufflevector <8 x i16> %i.aif, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.amg = shufflevector <4 x i16> %i.ame, <4 x i16> %i.amf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.amh = shufflevector <8 x i16> %i.amd, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ami = shufflevector <4 x i16> %i.amg, <4 x i16> %i.amh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.ami, ptr %i.ya, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amj = shufflevector <8 x i16> %i.abx, <8 x i16> %i.afb, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.amk = shufflevector <8 x i16> %i.aif, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aml = shufflevector <4 x i16> %i.amj, <4 x i16> %i.amk, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.amm = shufflevector <8 x i16> %i.amd, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.amn = shufflevector <4 x i16> %i.aml, <4 x i16> %i.amm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.amn, ptr %i.yb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amo = shufflevector <8 x i16> %i.abx, <8 x i16> %i.afb, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.amp = shufflevector <8 x i16> %i.aif, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.amq = shufflevector <4 x i16> %i.amo, <4 x i16> %i.amp, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.amr = shufflevector <8 x i16> %i.amd, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ams = shufflevector <4 x i16> %i.amq, <4 x i16> %i.amr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.ams, ptr %i.yc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amt = shufflevector <8 x i16> %i.abx, <8 x i16> %i.afb, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.amu = shufflevector <8 x i16> %i.aif, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.amv = shufflevector <4 x i16> %i.amt, <4 x i16> %i.amu, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.amw = shufflevector <8 x i16> %i.amd, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.amx = shufflevector <4 x i16> %i.amv, <4 x i16> %i.amw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.amx, ptr %i.yd, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amy = extractelement <8 x i16> %i.amd, i64 4
  store i16 %i.amy, ptr %i.aik, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amz = extractelement <8 x i16> %i.amd, i64 5
  store i16 %i.amz, ptr %i.ail, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ana = extractelement <8 x i16> %i.amd, i64 6
  store i16 %i.ana, ptr %i.aim, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.anb = extractelement <8 x i16> %i.amd, i64 7
  store i16 %i.anb, ptr %i.ain, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %index.next106 = add nuw i64 %index103, 8       ; 2 uses
  %i.anc = icmp eq i64 %index.next106, 16
  br i1 %i.anc, label %vector.memcheck108, label %vector.body102, !llvm.loop !113

scalar.ph100:                                     ; preds = %vector.memcheck, %scalar.ph100
  %.020.idx.4 = phi i64 [ %.022.add.4.7, %scalar.ph100 ], [ 0, %vector.memcheck ] ; 4 uses
  %.1.4 = phi ptr [ %i.ane, %scalar.ph100 ], [ %i.hm, %vector.memcheck ]
  %.020.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.4 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.4
  %.ptr25.4 = getelementptr inbounds nuw i8, ptr %i.and, i64 16 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.1.4, i64 2 ; 3 uses
  %i.anf = load i16, ptr %i.ane, align 2, !tbaa !38
  %i.ang = zext i16 %i.anf to i32
  %.022.add.4.7 = add nuw nsw i64 %.020.idx.4, 32
  %i.anh = load <8 x i16>, ptr %.ptr25.4, align 2, !tbaa !38
  %i.ani = zext <8 x i16> %i.anh to <8 x i32>
  %i.anj = insertelement <8 x i32> poison, i32 %i.ang, i64 0
  %i.ank = shufflevector <8 x i32> %i.anj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.anl = mul nuw <8 x i32> %i.ank, %i.ani       ; 2 uses
  %i.anm = load <8 x i16>, ptr %.020.ptr.4, align 2, !tbaa !38 ; 2 uses
  %i.ann = zext <8 x i32> %i.anl to <8 x i64>
  %i.ano = mul nuw nsw <8 x i64> %i.ann, splat (i64 5039)
  %i.anp = lshr <8 x i64> %i.ano, splat (i64 24)
  %i.anq = trunc nuw nsw <8 x i64> %i.anp to <8 x i32>
  %i.anr = mul <8 x i32> %i.anq, splat (i32 62207)
  %i.ans = add <8 x i32> %i.anr, %i.anl
  %i.ant = trunc <8 x i32> %i.ans to <8 x i16>    ; 2 uses
  %i.anu = add <8 x i16> %i.ant, splat (i16 -3329) ; 2 uses
  %i.anv = icmp slt <8 x i16> %i.anu, zeroinitializer
  %i.anw = select <8 x i1> %i.anv, <8 x i16> %i.ant, <8 x i16> zeroinitializer
  %i.anx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anu, <8 x i16> zeroinitializer)
  %i.any = or <8 x i16> %i.anw, %i.anx            ; 2 uses
  %i.anz = sub <8 x i16> %i.anm, %i.any           ; 3 uses
  %i.aoa = add <8 x i16> %i.anz, splat (i16 3329)
  %i.aob = icmp slt <8 x i16> %i.anz, zeroinitializer
  %i.aoc = select <8 x i1> %i.aob, <8 x i16> %i.aoa, <8 x i16> zeroinitializer
  %i.aod = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anz, <8 x i16> zeroinitializer)
  %i.aoe = or <8 x i16> %i.aoc, %i.aod
  store <8 x i16> %i.aoe, ptr %.ptr25.4, align 2, !tbaa !38
  %i.aof = add <8 x i16> %i.any, %i.anm           ; 2 uses
  %i.aog = add <8 x i16> %i.aof, splat (i16 -3329) ; 2 uses
  %i.aoh = icmp slt <8 x i16> %i.aog, zeroinitializer
  %i.aoi = select <8 x i1> %i.aoh, <8 x i16> %i.aof, <8 x i16> zeroinitializer
  %i.aoj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aog, <8 x i16> zeroinitializer)
  %i.aok = or <8 x i16> %i.aoi, %i.aoj
  store <8 x i16> %i.aok, ptr %.020.ptr.4, align 2, !tbaa !38
  %i.aol = icmp samesign ult i64 %.020.idx.4, 480
  br i1 %i.aol, label %scalar.ph100, label %vector.memcheck108, !llvm.loop !114

vector.memcheck108:                               ; preds = %vector.body102, %scalar.ph100
  %.lcssa39 = phi ptr [ %i.ane, %scalar.ph100 ], [ %i.ki, %vector.body102 ] ; 5 uses
  %scevgep109 = getelementptr i8, ptr %0, i64 512
  %scevgep110 = getelementptr nuw i8, ptr %.lcssa39, i64 2
  %scevgep111 = getelementptr i8, ptr %.lcssa39, i64 66
  %bound0112 = icmp ult ptr %0, %scevgep111
  %bound1113 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %scalar.ph115, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck108
  %i.aom = getelementptr i8, ptr %.lcssa39, i64 64
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph116
  %index118 = phi i64 [ 0, %vector.ph116 ], [ %index.next121, %vector.body117 ] ; 3 uses
  %i.aon = shl nuw i64 %index118, 4               ; 8 uses
  %i.aoo = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr %.lcssa39, i64 %i.aoo
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 9 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 8 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 8 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 32
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 8 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 48
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 8 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 64
  %i.aoy = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 8 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 80
  %i.apa = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 8 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 96
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 %i.aon ; 8 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 112
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aoq, i64 24
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aos, i64 40
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aou, i64 56
  %i.api = getelementptr inbounds nuw i8, ptr %i.aow, i64 72
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aoy, i64 88
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apa, i64 104
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apc, i64 120
  %i.apm = getelementptr inbounds nuw i8, ptr %next.gep119, i64 2
  %wide.load120 = load <8 x i16>, ptr %i.apm, align 2, !tbaa !38, !alias.scope !115
  %i.apn = zext <8 x i16> %wide.load120 to <8 x i32> ; 4 uses
  %i.apo = load i16, ptr %i.aop, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.app = load i16, ptr %i.aor, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apq = load i16, ptr %i.aot, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apr = load i16, ptr %i.aov, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aps = load i16, ptr %i.aox, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apt = load i16, ptr %i.aoz, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apu = load i16, ptr %i.apb, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apv = load i16, ptr %i.apd, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apw = insertelement <8 x i16> poison, i16 %i.apo, i64 0
  %i.apx = insertelement <8 x i16> %i.apw, i16 %i.app, i64 1
  %i.apy = insertelement <8 x i16> %i.apx, i16 %i.apq, i64 2
  %i.apz = insertelement <8 x i16> %i.apy, i16 %i.apr, i64 3
  %i.aqa = insertelement <8 x i16> %i.apz, i16 %i.aps, i64 4
  %i.aqb = insertelement <8 x i16> %i.aqa, i16 %i.apt, i64 5
  %i.aqc = insertelement <8 x i16> %i.aqb, i16 %i.apu, i64 6
  %i.aqd = insertelement <8 x i16> %i.aqc, i16 %i.apv, i64 7 ; 2 uses
  %i.aqe = load i16, ptr %i.ape, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqf = load i16, ptr %i.apf, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqg = load i16, ptr %i.apg, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqh = load i16, ptr %i.aph, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqi = load i16, ptr %i.api, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqj = load i16, ptr %i.apj, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqk = load i16, ptr %i.apk, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aql = load i16, ptr %i.apl, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqm = insertelement <8 x i16> poison, i16 %i.aqe, i64 0
  %i.aqn = insertelement <8 x i16> %i.aqm, i16 %i.aqf, i64 1
  %i.aqo = insertelement <8 x i16> %i.aqn, i16 %i.aqg, i64 2
  %i.aqp = insertelement <8 x i16> %i.aqo, i16 %i.aqh, i64 3
  %i.aqq = insertelement <8 x i16> %i.aqp, i16 %i.aqi, i64 4
  %i.aqr = insertelement <8 x i16> %i.aqq, i16 %i.aqj, i64 5
  %i.aqs = insertelement <8 x i16> %i.aqr, i16 %i.aqk, i64 6
  %i.aqt = insertelement <8 x i16> %i.aqs, i16 %i.aql, i64 7
  %i.aqu = zext <8 x i16> %i.aqt to <8 x i32>
  %i.aqv = mul nuw <8 x i32> %i.aqu, %i.apn       ; 2 uses
  %i.aqw = zext <8 x i32> %i.aqv to <8 x i64>
  %i.aqx = mul nuw nsw <8 x i64> %i.aqw, splat (i64 5039)
  %i.aqy = lshr <8 x i64> %i.aqx, splat (i64 24)
  %i.aqz = trunc nuw nsw <8 x i64> %i.aqy to <8 x i32>
  %i.ara = mul <8 x i32> %i.aqz, splat (i32 62207)
  %i.arb = add <8 x i32> %i.ara, %i.aqv
  %i.arc = trunc <8 x i32> %i.arb to <8 x i16>    ; 2 uses
  %i.ard = add <8 x i16> %i.arc, splat (i16 -3329) ; 2 uses
  %i.are = icmp slt <8 x i16> %i.ard, zeroinitializer
  %i.arf = select <8 x i1> %i.are, <8 x i16> %i.arc, <8 x i16> zeroinitializer
  %i.arg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ard, <8 x i16> zeroinitializer)
  %i.arh = or <8 x i16> %i.arf, %i.arg            ; 2 uses
  %i.ari = sub <8 x i16> %i.aqd, %i.arh           ; 3 uses
  %i.arj = add <8 x i16> %i.arh, %i.aqd           ; 2 uses
  %i.ark = add <8 x i16> %i.arj, splat (i16 -3329) ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aop, i64 2
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aoq, i64 18
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aos, i64 34
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aou, i64 50
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aow, i64 66
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aoy, i64 82
  %i.arr = getelementptr inbounds nuw i8, ptr %i.apa, i64 98
  %i.ars = getelementptr inbounds nuw i8, ptr %i.apc, i64 114
  %i.art = getelementptr inbounds nuw i8, ptr %i.aop, i64 10
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aoq, i64 26
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aos, i64 42
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aou, i64 58
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aow, i64 74
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aoy, i64 90
  %i.arz = getelementptr inbounds nuw i8, ptr %i.apa, i64 106
  %i.asa = getelementptr inbounds nuw i8, ptr %i.apc, i64 122
  %i.asb = load i16, ptr %i.arl, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asc = load i16, ptr %i.arm, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asd = load i16, ptr %i.arn, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ase = load i16, ptr %i.aro, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asf = load i16, ptr %i.arp, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asg = load i16, ptr %i.arq, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ash = load i16, ptr %i.arr, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asi = load i16, ptr %i.ars, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asj = insertelement <8 x i16> poison, i16 %i.asb, i64 0
  %i.ask = insertelement <8 x i16> %i.asj, i16 %i.asc, i64 1
  %i.asl = insertelement <8 x i16> %i.ask, i16 %i.asd, i64 2
  %i.asm = insertelement <8 x i16> %i.asl, i16 %i.ase, i64 3
  %i.asn = insertelement <8 x i16> %i.asm, i16 %i.asf, i64 4
  %i.aso = insertelement <8 x i16> %i.asn, i16 %i.asg, i64 5
  %i.asp = insertelement <8 x i16> %i.aso, i16 %i.ash, i64 6
  %i.asq = insertelement <8 x i16> %i.asp, i16 %i.asi, i64 7 ; 2 uses
  %i.asr = load i16, ptr %i.art, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ass = load i16, ptr %i.aru, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ast = load i16, ptr %i.arv, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asu = load i16, ptr %i.arw, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asv = load i16, ptr %i.arx, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asw = load i16, ptr %i.ary, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asx = load i16, ptr %i.arz, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asy = load i16, ptr %i.asa, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asz = insertelement <8 x i16> poison, i16 %i.asr, i64 0
  %i.ata = insertelement <8 x i16> %i.asz, i16 %i.ass, i64 1
  %i.atb = insertelement <8 x i16> %i.ata, i16 %i.ast, i64 2
  %i.atc = insertelement <8 x i16> %i.atb, i16 %i.asu, i64 3
  %i.atd = insertelement <8 x i16> %i.atc, i16 %i.asv, i64 4
  %i.ate = insertelement <8 x i16> %i.atd, i16 %i.asw, i64 5
  %i.atf = insertelement <8 x i16> %i.ate, i16 %i.asx, i64 6
  %i.atg = insertelement <8 x i16> %i.atf, i16 %i.asy, i64 7
  %i.ath = zext <8 x i16> %i.atg to <8 x i32>
  %i.ati = mul nuw <8 x i32> %i.ath, %i.apn       ; 2 uses
  %i.atj = zext <8 x i32> %i.ati to <8 x i64>
  %i.atk = mul nuw nsw <8 x i64> %i.atj, splat (i64 5039)
  %i.atl = lshr <8 x i64> %i.atk, splat (i64 24)
  %i.atm = trunc nuw nsw <8 x i64> %i.atl to <8 x i32>
  %i.atn = mul <8 x i32> %i.atm, splat (i32 62207)
  %i.ato = add <8 x i32> %i.atn, %i.ati
  %i.atp = trunc <8 x i32> %i.ato to <8 x i16>    ; 2 uses
  %i.atq = add <8 x i16> %i.atp, splat (i16 -3329) ; 2 uses
  %i.atr = icmp slt <8 x i16> %i.atq, zeroinitializer
  %i.ats = select <8 x i1> %i.atr, <8 x i16> %i.atp, <8 x i16> zeroinitializer
  %i.att = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.atq, <8 x i16> zeroinitializer)
  %i.atu = or <8 x i16> %i.ats, %i.att            ; 2 uses
  %i.atv = sub <8 x i16> %i.asq, %i.atu           ; 3 uses
  %i.atw = add <8 x i16> %i.atu, %i.asq           ; 2 uses
  %i.atx = add <8 x i16> %i.atw, splat (i16 -3329) ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aoq, i64 20
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aos, i64 36
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aou, i64 52
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aow, i64 68
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aoy, i64 84
  %i.aue = getelementptr inbounds nuw i8, ptr %i.apa, i64 100
  %i.auf = getelementptr inbounds nuw i8, ptr %i.apc, i64 116
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aoq, i64 28
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aos, i64 44
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aou, i64 60
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aow, i64 76
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aoy, i64 92
  %i.aum = getelementptr inbounds nuw i8, ptr %i.apa, i64 108
  %i.aun = getelementptr inbounds nuw i8, ptr %i.apc, i64 124
  %i.auo = load i16, ptr %i.aty, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aup = load i16, ptr %i.atz, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.auq = load i16, ptr %i.aua, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aur = load i16, ptr %i.aub, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aus = load i16, ptr %i.auc, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aut = load i16, ptr %i.aud, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.auu = load i16, ptr %i.aue, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.auv = load i16, ptr %i.auf, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.auw = insertelement <8 x i16> poison, i16 %i.auo, i64 0
  %i.aux = insertelement <8 x i16> %i.auw, i16 %i.aup, i64 1
  %i.auy = insertelement <8 x i16> %i.aux, i16 %i.auq, i64 2
  %i.auz = insertelement <8 x i16> %i.auy, i16 %i.aur, i64 3
  %i.ava = insertelement <8 x i16> %i.auz, i16 %i.aus, i64 4
  %i.avb = insertelement <8 x i16> %i.ava, i16 %i.aut, i64 5
  %i.avc = insertelement <8 x i16> %i.avb, i16 %i.auu, i64 6
  %i.avd = insertelement <8 x i16> %i.avc, i16 %i.auv, i64 7 ; 2 uses
  %i.ave = load i16, ptr %i.aug, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avf = load i16, ptr %i.auh, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avg = load i16, ptr %i.aui, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avh = load i16, ptr %i.auj, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avi = load i16, ptr %i.auk, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avj = load i16, ptr %i.aul, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avk = load i16, ptr %i.aum, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avl = load i16, ptr %i.aun, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.avm = insertelement <8 x i16> poison, i16 %i.ave, i64 0
  %i.avn = insertelement <8 x i16> %i.avm, i16 %i.avf, i64 1
  %i.avo = insertelement <8 x i16> %i.avn, i16 %i.avg, i64 2
  %i.avp = insertelement <8 x i16> %i.avo, i16 %i.avh, i64 3
  %i.avq = insertelement <8 x i16> %i.avp, i16 %i.avi, i64 4
  %i.avr = insertelement <8 x i16> %i.avq, i16 %i.avj, i64 5
  %i.avs = insertelement <8 x i16> %i.avr, i16 %i.avk, i64 6
  %i.avt = insertelement <8 x i16> %i.avs, i16 %i.avl, i64 7
  %i.avu = zext <8 x i16> %i.avt to <8 x i32>
  %i.avv = mul nuw <8 x i32> %i.avu, %i.apn       ; 2 uses
  %i.avw = zext <8 x i32> %i.avv to <8 x i64>
  %i.avx = mul nuw nsw <8 x i64> %i.avw, splat (i64 5039)
  %i.avy = lshr <8 x i64> %i.avx, splat (i64 24)
  %i.avz = trunc nuw nsw <8 x i64> %i.avy to <8 x i32>
  %i.awa = mul <8 x i32> %i.avz, splat (i32 62207)
  %i.awb = add <8 x i32> %i.awa, %i.avv
  %i.awc = trunc <8 x i32> %i.awb to <8 x i16>    ; 2 uses
  %i.awd = add <8 x i16> %i.awc, splat (i16 -3329) ; 2 uses
  %i.awe = icmp slt <8 x i16> %i.awd, zeroinitializer
  %i.awf = select <8 x i1> %i.awe, <8 x i16> %i.awc, <8 x i16> zeroinitializer
  %i.awg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awd, <8 x i16> zeroinitializer)
  %i.awh = or <8 x i16> %i.awf, %i.awg            ; 2 uses
  %i.awi = sub <8 x i16> %i.avd, %i.awh           ; 3 uses
  %i.awj = add <8 x i16> %i.awh, %i.avd           ; 2 uses
  %i.awk = add <8 x i16> %i.awj, splat (i16 -3329) ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.aop, i64 6
  %i.awm = getelementptr inbounds nuw i8, ptr %i.aoq, i64 22
  %i.awn = getelementptr inbounds nuw i8, ptr %i.aos, i64 38
  %i.awo = getelementptr inbounds nuw i8, ptr %i.aou, i64 54
  %i.awp = getelementptr inbounds nuw i8, ptr %i.aow, i64 70
  %i.awq = getelementptr inbounds nuw i8, ptr %i.aoy, i64 86
  %i.awr = getelementptr inbounds nuw i8, ptr %i.apa, i64 102
  %i.aws = getelementptr inbounds nuw i8, ptr %i.apc, i64 118
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aop, i64 14
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aoq, i64 30
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aos, i64 46
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aou, i64 62
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aow, i64 78
  %i.awy = getelementptr inbounds nuw i8, ptr %i.aoy, i64 94
  %i.awz = getelementptr inbounds nuw i8, ptr %i.apa, i64 110
  %i.axa = getelementptr inbounds nuw i8, ptr %i.apc, i64 126
  %i.axb = load i16, ptr %i.awl, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axc = load i16, ptr %i.awm, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axd = load i16, ptr %i.awn, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axe = load i16, ptr %i.awo, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axf = load i16, ptr %i.awp, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axg = load i16, ptr %i.awq, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axh = load i16, ptr %i.awr, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axi = load i16, ptr %i.aws, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axj = insertelement <8 x i16> poison, i16 %i.axb, i64 0
  %i.axk = insertelement <8 x i16> %i.axj, i16 %i.axc, i64 1
  %i.axl = insertelement <8 x i16> %i.axk, i16 %i.axd, i64 2
  %i.axm = insertelement <8 x i16> %i.axl, i16 %i.axe, i64 3
  %i.axn = insertelement <8 x i16> %i.axm, i16 %i.axf, i64 4
  %i.axo = insertelement <8 x i16> %i.axn, i16 %i.axg, i64 5
  %i.axp = insertelement <8 x i16> %i.axo, i16 %i.axh, i64 6
  %i.axq = insertelement <8 x i16> %i.axp, i16 %i.axi, i64 7 ; 2 uses
  %i.axr = load i16, ptr %i.awt, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axs = load i16, ptr %i.awu, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axt = load i16, ptr %i.awv, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axu = load i16, ptr %i.aww, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axv = load i16, ptr %i.awx, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axw = load i16, ptr %i.awy, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axx = load i16, ptr %i.awz, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axy = load i16, ptr %i.axa, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.axz = insertelement <8 x i16> poison, i16 %i.axr, i64 0
  %i.aya = insertelement <8 x i16> %i.axz, i16 %i.axs, i64 1
  %i.ayb = insertelement <8 x i16> %i.aya, i16 %i.axt, i64 2
  %i.ayc = insertelement <8 x i16> %i.ayb, i16 %i.axu, i64 3
  %i.ayd = insertelement <8 x i16> %i.ayc, i16 %i.axv, i64 4
  %i.aye = insertelement <8 x i16> %i.ayd, i16 %i.axw, i64 5
  %i.ayf = insertelement <8 x i16> %i.aye, i16 %i.axx, i64 6
  %i.ayg = insertelement <8 x i16> %i.ayf, i16 %i.axy, i64 7
  %i.ayh = zext <8 x i16> %i.ayg to <8 x i32>
  %i.ayi = mul nuw <8 x i32> %i.ayh, %i.apn       ; 2 uses
  %i.ayj = zext <8 x i32> %i.ayi to <8 x i64>
  %i.ayk = mul nuw nsw <8 x i64> %i.ayj, splat (i64 5039)
  %i.ayl = lshr <8 x i64> %i.ayk, splat (i64 24)
  %i.aym = trunc nuw nsw <8 x i64> %i.ayl to <8 x i32>
  %i.ayn = mul <8 x i32> %i.aym, splat (i32 62207)
  %i.ayo = add <8 x i32> %i.ayn, %i.ayi
  %i.ayp = trunc <8 x i32> %i.ayo to <8 x i16>    ; 2 uses
  %i.ayq = add <8 x i16> %i.ayp, splat (i16 -3329) ; 2 uses
  %i.ayr = icmp slt <8 x i16> %i.ayq, zeroinitializer
  %i.ays = select <8 x i1> %i.ayr, <8 x i16> %i.ayp, <8 x i16> zeroinitializer
  %i.ayt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ayq, <8 x i16> zeroinitializer)
  %i.ayu = or <8 x i16> %i.ays, %i.ayt            ; 2 uses
  %i.ayv = sub <8 x i16> %i.axq, %i.ayu           ; 3 uses
  %i.ayw = add <8 x i16> %i.ayu, %i.axq           ; 2 uses
  %i.ayx = add <8 x i16> %i.ayw, splat (i16 -3329) ; 2 uses
  %i.ayy = shufflevector <8 x i16> %i.ark, <8 x i16> %i.atx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayz = shufflevector <8 x i16> %i.awk, <8 x i16> %i.ayx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aza = shufflevector <16 x i16> %i.ayy, <16 x i16> %i.ayz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azb = icmp slt <32 x i16> %i.aza, zeroinitializer
  %i.azc = shufflevector <8 x i16> %i.arj, <8 x i16> %i.atw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azd = shufflevector <8 x i16> %i.awj, <8 x i16> %i.ayw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aze = shufflevector <16 x i16> %i.azc, <16 x i16> %i.azd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azf = select <32 x i1> %i.azb, <32 x i16> %i.aze, <32 x i16> zeroinitializer
  %i.azg = shufflevector <8 x i16> %i.ark, <8 x i16> %i.atx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azh = shufflevector <8 x i16> %i.awk, <8 x i16> %i.ayx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azi = shufflevector <16 x i16> %i.azg, <16 x i16> %i.azh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azj = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.azi, <32 x i16> zeroinitializer)
  %i.azk = or <32 x i16> %i.azf, %i.azj
  %i.azl = shufflevector <8 x i16> %i.ari, <8 x i16> %i.atv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azm = shufflevector <8 x i16> %i.awi, <8 x i16> %i.ayv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azn = shufflevector <16 x i16> %i.azl, <16 x i16> %i.azm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azo = icmp slt <32 x i16> %i.azn, zeroinitializer
  %i.azp = shufflevector <8 x i16> %i.ari, <8 x i16> %i.atv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azq = shufflevector <8 x i16> %i.awi, <8 x i16> %i.ayv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azr = shufflevector <16 x i16> %i.azp, <16 x i16> %i.azq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azs = add <32 x i16> %i.azr, splat (i16 3329)
  %i.azt = select <32 x i1> %i.azo, <32 x i16> %i.azs, <32 x i16> zeroinitializer
  %i.azu = shufflevector <8 x i16> %i.ari, <8 x i16> %i.atv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azv = shufflevector <8 x i16> %i.awi, <8 x i16> %i.ayv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azw = shufflevector <16 x i16> %i.azu, <16 x i16> %i.azv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azx = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.azw, <32 x i16> zeroinitializer)
  %i.azy = or <32 x i16> %i.azt, %i.azx
  %interleaved.vec = shufflevector <32 x i16> %i.azk, <32 x i16> %i.azy, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.aop, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %index.next121 = add nuw i64 %index118, 8       ; 2 uses
  %i.azz = icmp eq i64 %index.next121, 32
  br i1 %i.azz, label %vector.memcheck123, label %vector.body117, !llvm.loop !120

scalar.ph115:                                     ; preds = %vector.memcheck108, %scalar.ph115
  %.020.idx.5 = phi i64 [ %.022.add.5.3, %scalar.ph115 ], [ 0, %vector.memcheck108 ] ; 7 uses
  %.1.5 = phi ptr [ %i.bab, %scalar.ph115 ], [ %.lcssa39, %vector.memcheck108 ]
  %.020.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.5 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.5
  %.ptr25.5 = getelementptr inbounds nuw i8, ptr %i.baa, i64 8
  %i.bab = getelementptr inbounds nuw i8, ptr %.1.5, i64 2 ; 3 uses
  %i.bac = load i16, ptr %i.bab, align 2, !tbaa !38
  %i.bad = zext i16 %i.bac to i32                 ; 4 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.5
  %.022.ptr.5.1 = getelementptr inbounds nuw i8, ptr %i.bae, i64 10
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.5
  %.022.ptr.5.2 = getelementptr inbounds nuw i8, ptr %i.baf, i64 12
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.5
  %.022.ptr.5.3 = getelementptr inbounds nuw i8, ptr %i.bag, i64 14
  %.022.add.5.3 = add nuw nsw i64 %.020.idx.5, 16
  %i.bah = load <4 x i16>, ptr %.020.ptr.5, align 2, !tbaa !38 ; 2 uses
  %i.bai = load i16, ptr %.022.ptr.5.3, align 2, !tbaa !38
  %i.baj = load i16, ptr %.022.ptr.5.2, align 2, !tbaa !38
  %i.bak = load i16, ptr %.022.ptr.5.1, align 2, !tbaa !38
  %i.bal = load i16, ptr %.ptr25.5, align 2, !tbaa !38
  %i.bam = zext i16 %i.bai to i32
  %i.ban = zext i16 %i.baj to i32
  %i.bao = zext i16 %i.bak to i32
  %i.bap = zext i16 %i.bal to i32
  %i.baq = mul nuw i32 %i.bam, %i.bad             ; 2 uses
  %i.bar = mul nuw i32 %i.ban, %i.bad             ; 2 uses
  %i.bas = mul nuw i32 %i.bao, %i.bad             ; 2 uses
  %i.bat = mul nuw i32 %i.bap, %i.bad             ; 2 uses
  %i.bau = zext i32 %i.baq to i64
  %i.bav = zext i32 %i.bar to i64
  %i.baw = zext i32 %i.bas to i64
  %i.bax = zext i32 %i.bat to i64
  %i.bay = mul nuw nsw i64 %i.bau, 5039
  %i.baz = mul nuw nsw i64 %i.bav, 5039
  %i.bba = mul nuw nsw i64 %i.baw, 5039
  %i.bbb = mul nuw nsw i64 %i.bax, 5039
  %i.bbc = lshr i64 %i.bay, 24
  %i.bbd = lshr i64 %i.baz, 24
  %i.bbe = lshr i64 %i.bba, 24
  %i.bbf = lshr i64 %i.bbb, 24
  %i.bbg = trunc nuw nsw i64 %i.bbc to i32
  %i.bbh = trunc nuw nsw i64 %i.bbd to i32
  %i.bbi = trunc nuw nsw i64 %i.bbe to i32
  %i.bbj = trunc nuw nsw i64 %i.bbf to i32
  %.neg.i.5.3 = mul i32 %i.bbg, 62207
  %.neg.i.5.2 = mul i32 %i.bbh, 62207
  %.neg.i.5.1 = mul i32 %i.bbi, 62207
  %.neg.i.5 = mul i32 %i.bbj, 62207
  %i.bbk = insertelement <4 x i32> poison, i32 %.neg.i.5, i64 0
  %i.bbl = insertelement <4 x i32> %i.bbk, i32 %.neg.i.5.1, i64 1
  %i.bbm = insertelement <4 x i32> %i.bbl, i32 %.neg.i.5.2, i64 2
  %i.bbn = insertelement <4 x i32> %i.bbm, i32 %.neg.i.5.3, i64 3
  %i.bbo = insertelement <4 x i32> poison, i32 %i.bat, i64 0
  %i.bbp = insertelement <4 x i32> %i.bbo, i32 %i.bas, i64 1
  %i.bbq = insertelement <4 x i32> %i.bbp, i32 %i.bar, i64 2
  %i.bbr = insertelement <4 x i32> %i.bbq, i32 %i.baq, i64 3
  %i.bbs = add <4 x i32> %i.bbn, %i.bbr
  %i.bbt = trunc <4 x i32> %i.bbs to <4 x i16>    ; 2 uses
  %i.bbu = add <4 x i16> %i.bbt, splat (i16 -3329) ; 2 uses
  %i.bbv = icmp slt <4 x i16> %i.bbu, zeroinitializer
  %i.bbw = select <4 x i1> %i.bbv, <4 x i16> %i.bbt, <4 x i16> zeroinitializer
  %i.bbx = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bbu, <4 x i16> zeroinitializer)
  %i.bby = or <4 x i16> %i.bbw, %i.bbx            ; 2 uses
  %i.bbz = add <4 x i16> %i.bby, %i.bah           ; 2 uses
  %i.bca = shufflevector <4 x i16> %i.bbz, <4 x i16> %i.bah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bcb = shufflevector <4 x i16> %i.bby, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcc = shufflevector <8 x i16> <i16 3329, i16 3329, i16 3329, i16 3329, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bcb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bcd = sub <8 x i16> %i.bca, %i.bcc           ; 3 uses
  %i.bce = shufflevector <8 x i16> %i.bcd, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bcf = add <4 x i16> %i.bce, splat (i16 3329)
  %i.bcg = icmp slt <8 x i16> %i.bcd, zeroinitializer
  %i.bch = shufflevector <4 x i16> %i.bbz, <4 x i16> %i.bcf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bci = select <8 x i1> %i.bcg, <8 x i16> %i.bch, <8 x i16> zeroinitializer
  %i.bcj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bcd, <8 x i16> zeroinitializer)
  %i.bck = or <8 x i16> %i.bci, %i.bcj
  store <8 x i16> %i.bck, ptr %.020.ptr.5, align 2, !tbaa !38
  %i.bcl = icmp samesign ult i64 %.020.idx.5, 496
  br i1 %i.bcl, label %scalar.ph115, label %vector.memcheck123, !llvm.loop !121

vector.memcheck123:                               ; preds = %vector.body117, %scalar.ph115
  %.lcssa = phi ptr [ %i.bab, %scalar.ph115 ], [ %i.aom, %vector.body117 ] ; 4 uses
  %scevgep124 = getelementptr nuw i8, ptr %.lcssa, i64 2
  %scevgep125 = getelementptr i8, ptr %.lcssa, i64 130
  %bound0126 = icmp ult ptr %0, %scevgep125
  %bound1127 = icmp ult ptr %scevgep124, %scevgep
  %found.conflict128 = and i1 %bound0126, %bound1127
  br i1 %found.conflict128, label %scalar.ph129, label %vector.body131

vector.body131:                                   ; preds = %vector.memcheck123, %vector.body131
  %index132 = phi i64 [ %index.next136, %vector.body131 ], [ 0, %vector.memcheck123 ] ; 3 uses
  %i.bcm = shl nuw i64 %index132, 3               ; 8 uses
  %i.bcn = shl i64 %index132, 1
  %next.gep133 = getelementptr i8, ptr %.lcssa, i64 %i.bcn
  %i.bco = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 5 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 4 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %i.bcr = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 4 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 16
  %i.bct = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 4 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 24
  %i.bcv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 4 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 32
  %i.bcx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 4 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 40
  %i.bcz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 4 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 48
  %i.bdb = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 4 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 56
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bco, i64 4
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bcp, i64 12
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bcr, i64 20
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bct, i64 28
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bcv, i64 36
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bcx, i64 44
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bcz, i64 52
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdb, i64 60
  %i.bdl = getelementptr inbounds nuw i8, ptr %next.gep133, i64 2
  %wide.load134 = load <8 x i16>, ptr %i.bdl, align 2, !tbaa !38, !alias.scope !122
  %i.bdm = zext <8 x i16> %wide.load134 to <8 x i32> ; 2 uses
  %i.bdn = load i16, ptr %i.bco, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bdo = load i16, ptr %i.bcq, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bdp = load i16, ptr %i.bcs, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bdq = load i16, ptr %i.bcu, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bdr = load i16, ptr %i.bcw, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bds = load i16, ptr %i.bcy, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bdt = load i16, ptr %i.bda, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bdu = load i16, ptr %i.bdc, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bdv = insertelement <8 x i16> poison, i16 %i.bdn, i64 0
  %i.bdw = insertelement <8 x i16> %i.bdv, i16 %i.bdo, i64 1
  %i.bdx = insertelement <8 x i16> %i.bdw, i16 %i.bdp, i64 2
  %i.bdy = insertelement <8 x i16> %i.bdx, i16 %i.bdq, i64 3
  %i.bdz = insertelement <8 x i16> %i.bdy, i16 %i.bdr, i64 4
  %i.bea = insertelement <8 x i16> %i.bdz, i16 %i.bds, i64 5
  %i.beb = insertelement <8 x i16> %i.bea, i16 %i.bdt, i64 6
  %i.bec = insertelement <8 x i16> %i.beb, i16 %i.bdu, i64 7 ; 2 uses
  %i.bed = load i16, ptr %i.bdd, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bee = load i16, ptr %i.bde, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bef = load i16, ptr %i.bdf, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.beg = load i16, ptr %i.bdg, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.beh = load i16, ptr %i.bdh, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bei = load i16, ptr %i.bdi, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bej = load i16, ptr %i.bdj, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bek = load i16, ptr %i.bdk, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bel = insertelement <8 x i16> poison, i16 %i.bed, i64 0
  %i.bem = insertelement <8 x i16> %i.bel, i16 %i.bee, i64 1
  %i.ben = insertelement <8 x i16> %i.bem, i16 %i.bef, i64 2
  %i.beo = insertelement <8 x i16> %i.ben, i16 %i.beg, i64 3
  %i.bep = insertelement <8 x i16> %i.beo, i16 %i.beh, i64 4
  %i.beq = insertelement <8 x i16> %i.bep, i16 %i.bei, i64 5
  %i.ber = insertelement <8 x i16> %i.beq, i16 %i.bej, i64 6
  %i.bes = insertelement <8 x i16> %i.ber, i16 %i.bek, i64 7
  %i.bet = zext <8 x i16> %i.bes to <8 x i32>
  %i.beu = mul nuw <8 x i32> %i.bet, %i.bdm       ; 2 uses
  %i.bev = zext <8 x i32> %i.beu to <8 x i64>
  %i.bew = mul nuw nsw <8 x i64> %i.bev, splat (i64 5039)
  %i.bex = lshr <8 x i64> %i.bew, splat (i64 24)
  %i.bey = trunc nuw nsw <8 x i64> %i.bex to <8 x i32>
  %i.bez = mul <8 x i32> %i.bey, splat (i32 62207)
  %i.bfa = add <8 x i32> %i.bez, %i.beu
  %i.bfb = trunc <8 x i32> %i.bfa to <8 x i16>    ; 2 uses
  %i.bfc = add <8 x i16> %i.bfb, splat (i16 -3329) ; 2 uses
  %i.bfd = icmp slt <8 x i16> %i.bfc, zeroinitializer
  %i.bfe = select <8 x i1> %i.bfd, <8 x i16> %i.bfb, <8 x i16> zeroinitializer
  %i.bff = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bfc, <8 x i16> zeroinitializer)
  %i.bfg = or <8 x i16> %i.bfe, %i.bff            ; 2 uses
  %i.bfh = sub <8 x i16> %i.bec, %i.bfg           ; 3 uses
  %i.bfi = add <8 x i16> %i.bfg, %i.bec           ; 2 uses
  %i.bfj = add <8 x i16> %i.bfi, splat (i16 -3329) ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bco, i64 2
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bcp, i64 10
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bcr, i64 18
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bct, i64 26
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bcv, i64 34
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bcx, i64 42
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bcz, i64 50
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bdb, i64 58
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bco, i64 6
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bcp, i64 14
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bcr, i64 22
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bct, i64 30
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 38
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bcx, i64 46
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bcz, i64 54
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bdb, i64 62
  %i.bga = load i16, ptr %i.bfk, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgb = load i16, ptr %i.bfl, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgc = load i16, ptr %i.bfm, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgd = load i16, ptr %i.bfn, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bge = load i16, ptr %i.bfo, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgf = load i16, ptr %i.bfp, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgg = load i16, ptr %i.bfq, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgh = load i16, ptr %i.bfr, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgi = insertelement <8 x i16> poison, i16 %i.bga, i64 0
  %i.bgj = insertelement <8 x i16> %i.bgi, i16 %i.bgb, i64 1
  %i.bgk = insertelement <8 x i16> %i.bgj, i16 %i.bgc, i64 2
  %i.bgl = insertelement <8 x i16> %i.bgk, i16 %i.bgd, i64 3
  %i.bgm = insertelement <8 x i16> %i.bgl, i16 %i.bge, i64 4
  %i.bgn = insertelement <8 x i16> %i.bgm, i16 %i.bgf, i64 5
  %i.bgo = insertelement <8 x i16> %i.bgn, i16 %i.bgg, i64 6
  %i.bgp = insertelement <8 x i16> %i.bgo, i16 %i.bgh, i64 7 ; 2 uses
  %i.bgq = load i16, ptr %i.bfs, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgr = load i16, ptr %i.bft, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgs = load i16, ptr %i.bfu, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgt = load i16, ptr %i.bfv, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgu = load i16, ptr %i.bfw, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgv = load i16, ptr %i.bfx, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgw = load i16, ptr %i.bfy, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgx = load i16, ptr %i.bfz, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgy = insertelement <8 x i16> poison, i16 %i.bgq, i64 0
  %i.bgz = insertelement <8 x i16> %i.bgy, i16 %i.bgr, i64 1
  %i.bha = insertelement <8 x i16> %i.bgz, i16 %i.bgs, i64 2
  %i.bhb = insertelement <8 x i16> %i.bha, i16 %i.bgt, i64 3
  %i.bhc = insertelement <8 x i16> %i.bhb, i16 %i.bgu, i64 4
  %i.bhd = insertelement <8 x i16> %i.bhc, i16 %i.bgv, i64 5
  %i.bhe = insertelement <8 x i16> %i.bhd, i16 %i.bgw, i64 6
  %i.bhf = insertelement <8 x i16> %i.bhe, i16 %i.bgx, i64 7
  %i.bhg = zext <8 x i16> %i.bhf to <8 x i32>
  %i.bhh = mul nuw <8 x i32> %i.bhg, %i.bdm       ; 2 uses
  %i.bhi = zext <8 x i32> %i.bhh to <8 x i64>
  %i.bhj = mul nuw nsw <8 x i64> %i.bhi, splat (i64 5039)
  %i.bhk = lshr <8 x i64> %i.bhj, splat (i64 24)
  %i.bhl = trunc nuw nsw <8 x i64> %i.bhk to <8 x i32>
  %i.bhm = mul <8 x i32> %i.bhl, splat (i32 62207)
  %i.bhn = add <8 x i32> %i.bhm, %i.bhh
  %i.bho = trunc <8 x i32> %i.bhn to <8 x i16>    ; 2 uses
  %i.bhp = add <8 x i16> %i.bho, splat (i16 -3329) ; 2 uses
  %i.bhq = icmp slt <8 x i16> %i.bhp, zeroinitializer
  %i.bhr = select <8 x i1> %i.bhq, <8 x i16> %i.bho, <8 x i16> zeroinitializer
  %i.bhs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bhp, <8 x i16> zeroinitializer)
  %i.bht = or <8 x i16> %i.bhr, %i.bhs            ; 2 uses
  %i.bhu = sub <8 x i16> %i.bgp, %i.bht           ; 3 uses
  %i.bhv = add <8 x i16> %i.bht, %i.bgp           ; 2 uses
  %i.bhw = add <8 x i16> %i.bhv, splat (i16 -3329) ; 2 uses
  %i.bhx = shufflevector <8 x i16> %i.bfj, <8 x i16> %i.bhw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhy = icmp slt <16 x i16> %i.bhx, zeroinitializer
  %i.bhz = shufflevector <8 x i16> %i.bfi, <8 x i16> %i.bhv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bia = select <16 x i1> %i.bhy, <16 x i16> %i.bhz, <16 x i16> zeroinitializer
  %i.bib = shufflevector <8 x i16> %i.bfj, <8 x i16> %i.bhw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bic = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bib, <16 x i16> zeroinitializer)
  %i.bid = or <16 x i16> %i.bia, %i.bic
  %i.bie = shufflevector <8 x i16> %i.bfh, <8 x i16> %i.bhu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bif = icmp slt <16 x i16> %i.bie, zeroinitializer
  %i.big = shufflevector <8 x i16> %i.bfh, <8 x i16> %i.bhu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bih = add <16 x i16> %i.big, splat (i16 3329)
  %i.bii = select <16 x i1> %i.bif, <16 x i16> %i.bih, <16 x i16> zeroinitializer
  %i.bij = shufflevector <8 x i16> %i.bfh, <8 x i16> %i.bhu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bik = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bij, <16 x i16> zeroinitializer)
  %i.bil = or <16 x i16> %i.bii, %i.bik
  %interleaved.vec135 = shufflevector <16 x i16> %i.bid, <16 x i16> %i.bil, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec135, ptr %i.bco, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.bim = icmp eq i64 %index.next136, 64
  br i1 %i.bim, label %middle.block137, label %vector.body131, !llvm.loop !127

scalar.ph129:                                     ; preds = %vector.memcheck123, %scalar.ph129
  %.020.idx.6 = phi i64 [ %.022.add.6.1, %scalar.ph129 ], [ 0, %vector.memcheck123 ] ; 5 uses
  %.1.6 = phi ptr [ %i.bio, %scalar.ph129 ], [ %.lcssa, %vector.memcheck123 ]
  %.020.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.6 ; 4 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.6
  %.ptr25.6 = getelementptr inbounds nuw i8, ptr %i.bin, i64 4
  %i.bio = getelementptr inbounds nuw i8, ptr %.1.6, i64 2 ; 2 uses
  %i.bip = load i16, ptr %i.bio, align 2, !tbaa !38
  %i.biq = zext i16 %i.bip to i32                 ; 2 uses
  %i.bir = load i16, ptr %.ptr25.6, align 2, !tbaa !38
  %i.bis = zext i16 %i.bir to i32
  %i.bit = mul nuw i32 %i.bis, %i.biq             ; 2 uses
  %i.biu = zext i32 %i.bit to i64
  %i.biv = mul nuw nsw i64 %i.biu, 5039
  %i.biw = lshr i64 %i.biv, 24
  %i.bix = trunc nuw nsw i64 %i.biw to i32
  %.neg.i.6 = mul i32 %i.bix, 62207
  %i.biy = add i32 %.neg.i.6, %i.bit
  %i.biz = trunc i32 %i.biy to i16                ; 2 uses
  %i.bja = add i16 %i.biz, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bja, 0
  %i.bjb = select i1 %isneg.i.i.6, i16 %i.biz, i16 0
  %i.bjc = tail call i16 @llvm.smax.i16(i16 %i.bja, i16 0)
  %i.bjd = or i16 %i.bjb, %i.bjc                  ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %.020.ptr.6, i64 2
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.6
  %.022.ptr.6.1 = getelementptr inbounds nuw i8, ptr %i.bjf, i64 6
  %i.bjg = load i16, ptr %.022.ptr.6.1, align 2, !tbaa !38
  %i.bjh = zext i16 %i.bjg to i32
  %i.bji = mul nuw i32 %i.bjh, %i.biq             ; 2 uses
  %i.bjj = zext i32 %i.bji to i64
  %i.bjk = mul nuw nsw i64 %i.bjj, 5039
  %i.bjl = lshr i64 %i.bjk, 24
  %i.bjm = trunc nuw nsw i64 %i.bjl to i32
  %.neg.i.6.1 = mul i32 %i.bjm, 62207
  %i.bjn = add i32 %.neg.i.6.1, %i.bji
  %i.bjo = trunc i32 %i.bjn to i16                ; 2 uses
end_hunk_2
begin_hunk_3_@encrypt_cpa:bb.a
  %i.gi = icmp ne i4 %i.gh, 0
  %op.rdx = or i1 %i.gi, %found.conflict121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit.i
  %.124.i = phi ptr [ %.1.i, %scalar_mult_add.exit.i ], [ %.121.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0.in23.i = phi i32 [ %.0.i51, %scalar_mult_add.exit.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01322.i = phi ptr [ %i.gj, %scalar_mult_add.exit.i ], [ %3, %.lr.ph.i.preheader ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.01322.i, i64 512 ; 3 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.gk = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.gk
  %i.gl = shl i64 %index, 2                       ; 3 uses
  %next.gep139 = getelementptr i8, ptr %i.gj, i64 %i.gl
  %next.gep140 = getelementptr i8, ptr %.124.i, i64 %i.gl
  %i.gm = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.gl ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !38, !alias.scope !136
  %i.gn = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.go = bitcast <8 x i16> %i.gn to <4 x i32>
  %i.gp = bitcast <8 x i16> %i.gn to <4 x i32>
  %i.gq = and <4 x i32> %i.gp, splat (i32 65535)  ; 2 uses
  %i.gr = lshr <4 x i32> %i.go, splat (i32 16)    ; 2 uses
  %wide.vec142 = load <8 x i16>, ptr %next.gep139, align 2, !tbaa !38
  %i.gs = freeze <8 x i16> %wide.vec142           ; 2 uses
  %i.gt = bitcast <8 x i16> %i.gs to <4 x i32>
  %i.gu = bitcast <8 x i16> %i.gs to <4 x i32>
  %i.gv = and <4 x i32> %i.gu, splat (i32 65535)  ; 2 uses
  %i.gw = lshr <4 x i32> %i.gt, splat (i32 16)    ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !38, !alias.scope !139
  %i.gx = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec145 = load <8 x i16>, ptr %i.gm, align 2, !tbaa !38
  %i.gy = freeze <8 x i16> %wide.vec145           ; 2 uses
  %i.gz = bitcast <8 x i16> %i.gy to <4 x i32>
  %i.ha = bitcast <8 x i16> %i.gy to <4 x i32>
  %i.hb = and <4 x i32> %i.ha, splat (i32 65535)
  %i.hc = lshr <4 x i32> %i.gz, splat (i32 16)
  %i.hd = mul nuw <4 x i32> %i.gv, %i.gq
  %i.he = add nuw <4 x i32> %i.hd, %i.hb
  %i.hf = mul nuw <4 x i32> %i.gw, %i.gr          ; 2 uses
  %i.hg = zext <4 x i32> %i.hf to <4 x i64>
  %i.hh = mul nuw nsw <4 x i64> %i.hg, splat (i64 5039)
  %i.hi = lshr <4 x i64> %i.hh, splat (i64 24)
  %i.hj = trunc nuw nsw <4 x i64> %i.hi to <4 x i32>
  %i.hk = mul <4 x i32> %i.hj, splat (i32 62207)
  %i.hl = add <4 x i32> %i.hk, %i.hf
  %i.hm = trunc <4 x i32> %i.hl to <4 x i16>      ; 2 uses
  %i.hn = add <4 x i16> %i.hm, splat (i16 -3329)  ; 2 uses
  %i.ho = icmp slt <4 x i16> %i.hn, zeroinitializer
  %i.hp = select <4 x i1> %i.ho, <4 x i16> %i.hm, <4 x i16> zeroinitializer
  %i.hq = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hn, <4 x i16> zeroinitializer)
  %i.hr = or <4 x i16> %i.hp, %i.hq
  %i.hs = zext <4 x i16> %i.hr to <4 x i32>
  %i.ht = mul nuw <4 x i32> %i.hs, %i.gx
  %i.hu = add <4 x i32> %i.he, %i.ht              ; 2 uses
  %i.hv = zext <4 x i32> %i.hu to <4 x i64>
  %i.hw = mul nuw nsw <4 x i64> %i.hv, splat (i64 5039)
  %i.hx = lshr <4 x i64> %i.hw, splat (i64 24)
  %i.hy = trunc nuw nsw <4 x i64> %i.hx to <4 x i32>
  %i.hz = mul <4 x i32> %i.hy, splat (i32 62207)
  %i.ia = add <4 x i32> %i.hz, %i.hu
  %i.ib = trunc <4 x i32> %i.ia to <4 x i16>      ; 2 uses
  %i.ic = add <4 x i16> %i.ib, splat (i16 -3329)  ; 2 uses
  %i.id = icmp slt <4 x i16> %i.ic, zeroinitializer
  %i.ie = select <4 x i1> %i.id, <4 x i16> %i.ib, <4 x i16> zeroinitializer
  %i.if = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ic, <4 x i16> zeroinitializer)
  %i.ig = or <4 x i16> %i.ie, %i.if
  %i.ih = mul nuw <4 x i32> %i.gw, %i.gq
  %i.ii = mul nuw <4 x i32> %i.gr, %i.gv
  %i.ij = add <4 x i32> %i.ih, %i.ii
  %i.ik = add <4 x i32> %i.ij, %i.hc              ; 2 uses
  %i.il = zext <4 x i32> %i.ik to <4 x i64>
  %i.im = mul nuw nsw <4 x i64> %i.il, splat (i64 5039)
  %i.in = lshr <4 x i64> %i.im, splat (i64 24)
  %i.io = trunc nuw nsw <4 x i64> %i.in to <4 x i32>
  %i.ip = mul <4 x i32> %i.io, splat (i32 62207)
  %i.iq = add <4 x i32> %i.ip, %i.ik
  %i.ir = trunc <4 x i32> %i.iq to <4 x i16>      ; 2 uses
  %i.is = add <4 x i16> %i.ir, splat (i16 -3329)  ; 2 uses
  %i.it = icmp slt <4 x i16> %i.is, zeroinitializer
  %i.iu = select <4 x i1> %i.it, <4 x i16> %i.ir, <4 x i16> zeroinitializer
  %i.iv = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.is, <4 x i16> zeroinitializer)
  %i.iw = or <4 x i16> %i.iu, %i.iv
  %interleaved.vec = shufflevector <4 x i16> %i.ig, <4 x i16> %i.iw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.gm, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ix = icmp eq i64 %index.next, 128
  br i1 %i.ix, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !141

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %i.jh, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.jd, %scalar.ph ], [ %i.gj, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.jc, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i17.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.iz = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.ja = load i16, ptr %.026.i.i, align 2, !tbaa !38
  %i.jb = zext i16 %i.ja to i32                   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.je = load i16, ptr %i.iz, align 2, !tbaa !38
  %i.jf = zext i16 %i.je to i32                   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.ptr.i17.i, i64 2
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.ji = load i16, ptr %.027.i.i, align 2, !tbaa !38
  %i.jj = zext i16 %i.ji to i32
  %i.jk = load i16, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.jl = zext i16 %i.jk to i32
  %i.jm = load i16, ptr %i.jg, align 2, !tbaa !38
  %i.jn = zext i16 %i.jm to i32
  %i.jo = load i16, ptr %i.iy, align 2, !tbaa !38
  %i.jp = load i16, ptr %.025.i.i, align 2, !tbaa !38
  %i.jq = zext i16 %i.jo to i32                   ; 2 uses
  %i.jr = zext i16 %i.jp to i32                   ; 2 uses
  %i.js = mul nuw i32 %i.jf, %i.jq                ; 2 uses
  %i.jt = zext i32 %i.js to i64
  %i.ju = mul nuw nsw i64 %i.jt, 5039
  %i.jv = lshr i64 %i.ju, 24
  %i.jw = trunc nuw nsw i64 %i.jv to i32
  %.neg.i.i19.i = mul i32 %i.jw, 62207
  %i.jx = add i32 %.neg.i.i19.i, %i.js
  %i.jy = trunc i32 %i.jx to i16                  ; 2 uses
  %i.jz = add i16 %i.jy, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.jz, 0
  %i.ka = select i1 %isneg.i.i.i20.i, i16 %i.jy, i16 0
  %i.kb = call i16 @llvm.smax.i16(i16 %i.jz, i16 0)
  %i.kc = or i16 %i.ka, %i.kb
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw i32 %i.kd, %i.jj
  %i.kf = mul nuw i32 %i.jf, %i.jr
  %i.kg = mul nuw i32 %i.jq, %i.jb
  %i.kh = mul nuw i32 %i.jb, %i.jr
  %i.ki = add i32 %i.kf, %i.kg
  %i.kj = add nuw i32 %i.kh, %i.jl
  %i.kk = add i32 %i.ki, %i.jn                    ; 2 uses
  %i.kl = add i32 %i.kj, %i.ke                    ; 2 uses
  %i.km = zext i32 %i.kk to i64
  %i.kn = zext i32 %i.kl to i64
  %i.ko = mul nuw nsw i64 %i.km, 5039
  %i.kp = mul nuw nsw i64 %i.kn, 5039
  %i.kq = lshr i64 %i.ko, 24
  %i.kr = lshr i64 %i.kp, 24
  %i.ks = trunc nuw nsw i64 %i.kq to i32
  %i.kt = trunc nuw nsw i64 %i.kr to i32
  %.neg.i30.i.i = mul i32 %i.ks, 62207
  %.neg.i28.i.i = mul i32 %i.kt, 62207
  %i.ku = insertelement <2 x i32> poison, i32 %.neg.i28.i.i, i64 0
  %i.kv = insertelement <2 x i32> %i.ku, i32 %.neg.i30.i.i, i64 1
  %i.kw = insertelement <2 x i32> poison, i32 %i.kl, i64 0
  %i.kx = insertelement <2 x i32> %i.kw, i32 %i.kk, i64 1
  %i.ky = add <2 x i32> %i.kv, %i.kx
  %i.kz = trunc <2 x i32> %i.ky to <2 x i16>      ; 2 uses
  %i.la = add <2 x i16> %i.kz, splat (i16 -3329)  ; 2 uses
  %i.lb = icmp slt <2 x i16> %i.la, zeroinitializer
  %i.lc = select <2 x i1> %i.lb, <2 x i16> %i.kz, <2 x i16> zeroinitializer
  %i.ld = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.la, <2 x i16> zeroinitializer)
  %i.le = or <2 x i16> %i.lc, %i.ld
  store <2 x i16> %i.le, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.lf = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.lf, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !142

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.lg = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.lg, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !143

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.lh = getelementptr i8, ptr %.01426.i, i64 512
  %i.li = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.li, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !144

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lk = getelementptr i8, ptr %5, i64 24        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %middle.block215, %matrix_mult_intt.exit
  %.1 = phi i8 [ %i.u, %matrix_mult_intt.exit ], [ %i.ll, %middle.block215 ] ; 2 uses
  %.08.i52 = phi i32 [ %i.l, %matrix_mult_intt.exit ], [ %i.mu, %middle.block215 ] ; 2 uses
  %.07.i = phi ptr [ %3, %matrix_mult_intt.exit ], [ %i.mt, %middle.block215 ] ; 2 uses
  %i.ll = add i8 %.1, 1                           ; 2 uses
  store i8 %.1, ptr %i.lj, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.val.i.i = load ptr, ptr %i.lk, align 8, !tbaa !24
  %i.lm = call fastcc i32 @prf(ptr noundef %i.b, i64 noundef 128, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val.i.i)
  %.not.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not.i.i, label %gencbd_vector.exit.thread, label %vector.body210

vector.body210:                                   ; preds = %bb.e, %vector.body210
  %index211 = phi i64 [ %index.next214, %vector.body210 ], [ 0, %bb.e ] ; 3 uses
  %i.ln = shl nuw i64 %index211, 2
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 %index211
  %i.lp = getelementptr inbounds nuw i8, ptr %.07.i, i64 %i.ln
  %wide.load212 = load <4 x i8>, ptr %i.lo, align 4, !tbaa !44
  %i.lq = zext <4 x i8> %wide.load212 to <4 x i32> ; 8 uses
  %i.lr = and <4 x i32> %i.lq, splat (i32 1)
  %i.ls = lshr <4 x i32> %i.lq, splat (i32 1)
  %i.lt = and <4 x i32> %i.ls, splat (i32 1)
  %i.lu = shl <4 x i32> %i.lq, splat (i32 29)
  %i.lv = ashr <4 x i32> %i.lu, splat (i32 31)
  %i.lw = shl <4 x i32> %i.lq, splat (i32 28)
  %i.lx = ashr <4 x i32> %i.lw, splat (i32 31)
  %i.ly = add nsw <4 x i32> %i.lx, %i.lr
  %i.lz = add nsw <4 x i32> %i.ly, %i.lv
  %i.ma = add nsw <4 x i32> %i.lz, %i.lt          ; 2 uses
  %i.mb = icmp slt <4 x i32> %i.ma, zeroinitializer
  %i.mc = select <4 x i1> %i.mb, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.md = add nsw <4 x i32> %i.mc, %i.ma
  %i.me = lshr <4 x i32> %i.lq, splat (i32 4)
  %i.mf = and <4 x i32> %i.me, splat (i32 1)
  %i.mg = lshr <4 x i32> %i.lq, splat (i32 5)
  %i.mh = and <4 x i32> %i.mg, splat (i32 1)
  %i.mi = shl <4 x i32> %i.lq, splat (i32 25)
  %i.mj = ashr <4 x i32> %i.mi, splat (i32 31)
  %i.mk = lshr <4 x i32> %i.lq, splat (i32 7)
  %i.ml = sub nsw <4 x i32> %i.mh, %i.mk
  %i.mm = add nsw <4 x i32> %i.ml, %i.mf
  %i.mn = add nsw <4 x i32> %i.mm, %i.mj          ; 2 uses
  %i.mo = icmp slt <4 x i32> %i.mn, zeroinitializer
  %i.mp = select <4 x i1> %i.mo, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.mq = add nsw <4 x i32> %i.mp, %i.mn
  %i.mr = shufflevector <4 x i32> %i.md, <4 x i32> %i.mq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec213 = trunc nsw <8 x i32> %i.mr to <8 x i16>
  store <8 x i16> %interleaved.vec213, ptr %i.lp, align 2, !tbaa !38
  %index.next214 = add nuw i64 %index211, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next214, 128
  br i1 %i.ms, label %middle.block215, label %vector.body210, !llvm.loop !145

gencbd_vector.exit.thread:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %scalar_encode.exit

middle.block215:                                  ; preds = %vector.body210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.mt = getelementptr inbounds nuw i8, ptr %.07.i, i64 512
  %i.mu = add nsw i32 %.08.i52, -1
  %i.mv = icmp sgt i32 %.08.i52, 1
  br i1 %i.mv, label %bb.e, label %bb.f, !llvm.loop !146

bb.f:                                             ; preds = %middle.block215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %smin217 = call i32 @llvm.smin.i32(i32 %i.l, i32 1)
  %i.mw = sub i32 %i.l, %smin217
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %i.my = shl nuw nsw i64 %i.mx, 9
  %i.mz = add nsw i64 %i.m, %i.mx
  %i.na = shl nsw i64 %i.mz, 9
  %i.nb = getelementptr i8, ptr %3, i64 %i.na
  %scevgep218 = getelementptr i8, ptr %i.nb, i64 512
  %i.nc = getelementptr i8, ptr %3, i64 %i.my
  %scevgep219 = getelementptr i8, ptr %i.nc, i64 512
  %bound0220 = icmp ult ptr %i.n, %scevgep219
  %bound1221 = icmp ult ptr %3, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  br label %vector.memcheck216

vector.memcheck216:                               ; preds = %bb.f, %scalar_add.exit.i
  %.03.i = phi ptr [ %i.n, %bb.f ], [ %i.om, %scalar_add.exit.i ] ; 4 uses
  %.02.i = phi ptr [ %3, %bb.f ], [ %i.on, %scalar_add.exit.i ] ; 4 uses
  %.0.i54 = phi i32 [ %i.l, %bb.f ], [ %i.oo, %scalar_add.exit.i ] ; 2 uses
  br i1 %found.conflict222, label %scalar.ph223, label %vector.body225

vector.body225:                                   ; preds = %vector.memcheck216, %vector.body225
  %index226 = phi i64 [ %index.next231, %vector.body225 ], [ 0, %vector.memcheck216 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %index226 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 2 uses
  %wide.load227 = load <8 x i16>, ptr %i.nd, align 2, !tbaa !38, !alias.scope !147, !noalias !150
  %wide.load228 = load <8 x i16>, ptr %i.ne, align 2, !tbaa !38, !alias.scope !147, !noalias !150
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %index226 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %wide.load229 = load <8 x i16>, ptr %i.nf, align 2, !tbaa !38, !alias.scope !150
  %wide.load230 = load <8 x i16>, ptr %i.ng, align 2, !tbaa !38, !alias.scope !150
  %i.nh = add <8 x i16> %wide.load229, %wide.load227 ; 2 uses
  %i.ni = add <8 x i16> %wide.load230, %wide.load228 ; 2 uses
  %i.nj = add <8 x i16> %i.nh, splat (i16 -3329)  ; 2 uses
  %i.nk = add <8 x i16> %i.ni, splat (i16 -3329)  ; 2 uses
  %i.nl = icmp slt <8 x i16> %i.nj, zeroinitializer
  %i.nm = icmp slt <8 x i16> %i.nk, zeroinitializer
  %i.nn = select <8 x i1> %i.nl, <8 x i16> %i.nh, <8 x i16> zeroinitializer
  %i.no = select <8 x i1> %i.nm, <8 x i16> %i.ni, <8 x i16> zeroinitializer
  %i.np = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nj, <8 x i16> zeroinitializer)
  %i.nq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nk, <8 x i16> zeroinitializer)
  %i.nr = or <8 x i16> %i.nn, %i.np
  %i.ns = or <8 x i16> %i.no, %i.nq
  store <8 x i16> %i.nr, ptr %i.nd, align 2, !tbaa !38, !alias.scope !147, !noalias !150
  store <8 x i16> %i.ns, ptr %i.ne, align 2, !tbaa !38, !alias.scope !147, !noalias !150
  %index.next231 = add nuw i64 %index226, 16      ; 2 uses
  %i.nt = icmp eq i64 %index.next231, 256
  br i1 %i.nt, label %scalar_add.exit.i, label %vector.body225, !llvm.loop !152

scalar.ph223:                                     ; preds = %vector.memcheck216, %scalar.ph223
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph223 ], [ 0, %vector.memcheck216 ] ; 4 uses
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.i.i ; 2 uses
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !38
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.i.i
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !38
  %i.ny = add i16 %i.nx, %i.nv                    ; 2 uses
  %i.nz = add i16 %i.ny, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.nz, 0
  %i.oa = select i1 %isneg.i.i.i, i16 %i.ny, i16 0
  %i.ob = call i16 @llvm.smax.i16(i16 %i.nz, i16 0)
  %i.oc = or i16 %i.oa, %i.ob
  store i16 %i.oc, ptr %i.nu, align 2, !tbaa !38
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !38
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.next.i.i
  %i.og = load i16, ptr %i.of, align 2, !tbaa !38
  %i.oh = add i16 %i.og, %i.oe                    ; 2 uses
  %i.oi = add i16 %i.oh, -3329                    ; 2 uses
  %isneg.i.i.i.1 = icmp slt i16 %i.oi, 0
  %i.oj = select i1 %isneg.i.i.i.1, i16 %i.oh, i16 0
  %i.ok = call i16 @llvm.smax.i16(i16 %i.oi, i16 0)
  %i.ol = or i16 %i.oj, %i.ok
  store i16 %i.ol, ptr %i.od, align 2, !tbaa !38
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i55.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i55.1, label %scalar_add.exit.i, label %scalar.ph223, !llvm.loop !153

scalar_add.exit.i:                                ; preds = %vector.body225, %scalar.ph223
  %i.om = getelementptr inbounds nuw i8, ptr %.03.i, i64 512
  %i.on = getelementptr inbounds nuw i8, ptr %.02.i, i64 512
  %i.oo = add nsw i32 %.0.i54, -1
  %i.op = icmp sgt i32 %.0.i54, 1
  br i1 %i.op, label %vector.memcheck216, label %vector_add.exit, !llvm.loop !154

vector_add.exit:                                  ; preds = %scalar_add.exit.i
  %notmask.i.i.i = shl nsw i32 -1, %i.p
  %i.oq = xor i32 %notmask.i.i.i, -1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert235 = insertelement <8 x i32> poison, i32 %i.oq, i64 0
  %broadcast.splat236 = shufflevector <8 x i32> %broadcast.splatinsert235, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.ph234

vector.ph234:                                     ; preds = %vector_add.exit, %scalar_compress.exit.i
  %.02.i56 = phi ptr [ %i.n, %vector_add.exit ], [ %i.pl, %scalar_compress.exit.i ] ; 2 uses
  %.0.i57 = phi i32 [ %i.l, %vector_add.exit ], [ %i.pm, %scalar_compress.exit.i ] ; 2 uses
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph234
  %index238 = phi i64 [ 0, %vector.ph234 ], [ %index.next240, %vector.body237 ] ; 2 uses
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %.02.i56, i64 %index238 ; 2 uses
  %wide.load239 = load <8 x i16>, ptr %i.or, align 2, !tbaa !38
  %i.os = zext <8 x i16> %wide.load239 to <8 x i32>
  %i.ot = shl <8 x i32> %i.os, %broadcast.splat   ; 2 uses
  %i.ou = zext <8 x i32> %i.ot to <8 x i64>
  %i.ov = mul nuw nsw <8 x i64> %i.ou, splat (i64 5039)
  %i.ow = lshr <8 x i64> %i.ov, splat (i64 24)
  %i.ox = trunc nuw nsw <8 x i64> %i.ow to <8 x i32> ; 2 uses
  %i.oy = mul <8 x i32> %i.ox, splat (i32 -3329)
  %i.oz = add <8 x i32> %i.oy, %i.ot              ; 4 uses
  %i.pa = sub <8 x i32> splat (i32 1664), %i.oz
  %i.pb = or <8 x i32> %i.pa, %i.oz
  %i.pc = lshr <8 x i32> %i.pb, splat (i32 31)
  %i.pd = add nuw nsw <8 x i32> %i.pc, %i.ox
  %i.pe = sub <8 x i32> splat (i32 4993), %i.oz
  %i.pf = or <8 x i32> %i.pe, %i.oz
  %i.pg = lshr <8 x i32> %i.pf, splat (i32 31)
  %i.ph = add nuw nsw <8 x i32> %i.pd, %i.pg
  %i.pi = and <8 x i32> %i.ph, %broadcast.splat236
  %i.pj = trunc <8 x i32> %i.pi to <8 x i16>
  store <8 x i16> %i.pj, ptr %i.or, align 2, !tbaa !38
  %index.next240 = add nuw i64 %index238, 8       ; 2 uses
  %i.pk = icmp eq i64 %index.next240, 256
  br i1 %i.pk, label %scalar_compress.exit.i, label %vector.body237, !llvm.loop !155

scalar_compress.exit.i:                           ; preds = %vector.body237
  %i.pl = getelementptr inbounds nuw i8, ptr %.02.i56, i64 512
  %i.pm = add nsw i32 %.0.i57, -1
  %i.pn = icmp sgt i32 %.0.i57, 1
  br i1 %i.pn, label %vector.ph234, label %vector_compress.exit, !llvm.loop !156

vector_compress.exit:                             ; preds = %scalar_compress.exit.i
  br i1 %i.aa, label %.lr.ph.i62, label %vector_encode.exit

.lr.ph.i62:                                       ; preds = %vector_compress.exit
  %i.po = shl nsw i32 %i.p, 5
  %i.pp = sext i32 %i.po to i64
  br label %bb.g

bb.g:                                             ; preds = %scalar_encode.exit.i, %.lr.ph.i62
  %.010.i = phi ptr [ %0, %.lr.ph.i62 ], [ %i.qi, %scalar_encode.exit.i ] ; 2 uses
  %.069.i = phi i32 [ %i.l, %.lr.ph.i62 ], [ %i.qg, %scalar_encode.exit.i ] ; 2 uses
  %.078.i = phi ptr [ %i.n, %.lr.ph.i62 ], [ %i.qh, %scalar_encode.exit.i ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.029.idx.i.i = phi i64 [ 0, %bb.g ], [ %.029.add.i.i, %bb.l ] ; 3 uses
  %.027.i.i63 = phi i64 [ 0, %bb.g ], [ %.128.i.i, %bb.l ] ; 2 uses
  %.025.i.i64 = phi ptr [ %.010.i, %bb.g ], [ %.126.i.i, %bb.l ] ; 3 uses
  %.0.i.i = phi i32 [ 0, %bb.g ], [ %.1.i.i, %bb.l ] ; 4 uses
  %.029.ptr.i.i = getelementptr inbounds nuw i8, ptr %.078.i, i64 %.029.idx.i.i
  %.029.add.i.i = add nuw nsw i64 %.029.idx.i.i, 2
  %i.pq = load i16, ptr %.029.ptr.i.i, align 2, !tbaa !38
  %i.pr = zext i16 %i.pq to i64                   ; 3 uses
  %i.ps = add nsw i32 %.0.i.i, %i.p               ; 4 uses
  %i.pt = icmp slt i32 %i.ps, 64
  br i1 %i.pt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.pu = zext nneg i32 %.0.i.i to i64
  %i.pv = shl i64 %i.pr, %i.pu
  %i.pw = or i64 %i.pv, %.027.i.i63
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not.i.i65 = icmp eq i32 %i.ps, 64
  %i.px = zext nneg i32 %.0.i.i to i64
  %i.py = shl i64 %i.pr, %i.px
  %i.pz = or i64 %i.py, %.027.i.i63
  store i64 %i.pz, ptr %.025.i.i64, align 1
  %i.qa = getelementptr inbounds nuw i8, ptr %.025.i.i64, i64 8 ; 2 uses
  br i1 %.not.i.i65, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.qb = sub nsw i32 64, %.0.i.i
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = lshr i64 %i.pr, %i.qc
  %i.qe = add nsw i32 %i.ps, -64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.128.i.i = phi i64 [ %i.pw, %bb.i ], [ %i.qd, %bb.k ], [ 0, %bb.j ]
  %.126.i.i = phi ptr [ %.025.i.i64, %bb.i ], [ %i.qa, %bb.k ], [ %i.qa, %bb.j ]
  %.1.i.i = phi i32 [ %i.ps, %bb.i ], [ %i.qe, %bb.k ], [ 0, %bb.j ]
  %i.qf = icmp samesign ult i64 %.029.idx.i.i, 510
  br i1 %i.qf, label %bb.h, label %scalar_encode.exit.i, !llvm.loop !40

scalar_encode.exit.i:                             ; preds = %bb.l
  %i.qg = add nsw i32 %.069.i, -1
  %i.qh = getelementptr inbounds nuw i8, ptr %.078.i, i64 512
  %i.qi = getelementptr inbounds i8, ptr %.010.i, i64 %i.pp
  %i.qj = icmp sgt i32 %.069.i, 1
  br i1 %i.qj, label %bb.g, label %vector_encode.exit, !llvm.loop !42

vector_encode.exit:                               ; preds = %scalar_encode.exit.i, %vector_compress.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.qk = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 %i.ll, ptr %i.qk, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.val.i = load ptr, ptr %i.lk, align 8, !tbaa !24
  %i.ql = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr %.val.i)
  %.not.i66 = icmp eq i32 %i.ql, 0
  br i1 %.not.i66, label %cbd_2.exit.thread, label %vector.body244

vector.body244:                                   ; preds = %vector_encode.exit, %vector.body244
  %index245 = phi i64 [ %index.next248, %vector.body244 ], [ 0, %vector_encode.exit ] ; 3 uses
  %i.qm = shl nuw i64 %index245, 2
  %i.qn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index245
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 %i.qm
  %wide.load246 = load <4 x i8>, ptr %i.qn, align 4, !tbaa !44
  %i.qp = zext <4 x i8> %wide.load246 to <4 x i32> ; 8 uses
  %i.qq = and <4 x i32> %i.qp, splat (i32 1)
  %i.qr = lshr <4 x i32> %i.qp, splat (i32 1)
  %i.qs = and <4 x i32> %i.qr, splat (i32 1)
  %i.qt = shl <4 x i32> %i.qp, splat (i32 29)
  %i.qu = ashr <4 x i32> %i.qt, splat (i32 31)
  %i.qv = shl <4 x i32> %i.qp, splat (i32 28)
  %i.qw = ashr <4 x i32> %i.qv, splat (i32 31)
  %i.qx = add nsw <4 x i32> %i.qw, %i.qq
  %i.qy = add nsw <4 x i32> %i.qx, %i.qu
  %i.qz = add nsw <4 x i32> %i.qy, %i.qs          ; 2 uses
  %i.ra = icmp slt <4 x i32> %i.qz, zeroinitializer
  %i.rb = select <4 x i1> %i.ra, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.rc = add nsw <4 x i32> %i.rb, %i.qz
  %i.rd = lshr <4 x i32> %i.qp, splat (i32 4)
  %i.re = and <4 x i32> %i.rd, splat (i32 1)
  %i.rf = lshr <4 x i32> %i.qp, splat (i32 5)
  %i.rg = and <4 x i32> %i.rf, splat (i32 1)
  %i.rh = shl <4 x i32> %i.qp, splat (i32 25)
  %i.ri = ashr <4 x i32> %i.rh, splat (i32 31)
  %i.rj = lshr <4 x i32> %i.qp, splat (i32 7)
  %i.rk = sub nsw <4 x i32> %i.rg, %i.rj
  %i.rl = add nsw <4 x i32> %i.rk, %i.re
  %i.rm = add nsw <4 x i32> %i.rl, %i.ri          ; 2 uses
  %i.rn = icmp slt <4 x i32> %i.rm, zeroinitializer
  %i.ro = select <4 x i1> %i.rn, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.rp = add nsw <4 x i32> %i.ro, %i.rm
  %i.rq = shufflevector <4 x i32> %i.rc, <4 x i32> %i.rp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec247 = trunc nsw <8 x i32> %i.rq to <8 x i16>
  store <8 x i16> %interleaved.vec247, ptr %i.qo, align 2, !tbaa !38
  %index.next248 = add nuw i64 %index245, 4       ; 2 uses
  %i.rr = icmp eq i64 %index.next248, 128
  br i1 %i.rr, label %middle.block249, label %vector.body244, !llvm.loop !157

cbd_2.exit.thread:                                ; preds = %vector_encode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %scalar_encode.exit

middle.block249:                                  ; preds = %vector.body244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %middle.block249
  %index253 = phi i64 [ 0, %middle.block249 ], [ %index.next258, %vector.body252 ] ; 3 uses
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index253 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 2 uses
  %wide.load254 = load <8 x i16>, ptr %i.rs, align 2, !tbaa !38
  %wide.load255 = load <8 x i16>, ptr %i.rt, align 2, !tbaa !38
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index253 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %wide.load256 = load <8 x i16>, ptr %i.ru, align 2, !tbaa !38
  %wide.load257 = load <8 x i16>, ptr %i.rv, align 2, !tbaa !38
  %i.rw = add <8 x i16> %wide.load256, %wide.load254 ; 2 uses
  %i.rx = add <8 x i16> %wide.load257, %wide.load255 ; 2 uses
  %i.ry = add <8 x i16> %i.rw, splat (i16 -3329)  ; 2 uses
  %i.rz = add <8 x i16> %i.rx, splat (i16 -3329)  ; 2 uses
  %i.sa = icmp slt <8 x i16> %i.ry, zeroinitializer
  %i.sb = icmp slt <8 x i16> %i.rz, zeroinitializer
  %i.sc = select <8 x i1> %i.sa, <8 x i16> %i.rw, <8 x i16> zeroinitializer
  %i.sd = select <8 x i1> %i.sb, <8 x i16> %i.rx, <8 x i16> zeroinitializer
  %i.se = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ry, <8 x i16> zeroinitializer)
  %i.sf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rz, <8 x i16> zeroinitializer)
  %i.sg = or <8 x i16> %i.sc, %i.se
  %i.sh = or <8 x i16> %i.sd, %i.sf
  store <8 x i16> %i.sg, ptr %i.rs, align 2, !tbaa !38
  store <8 x i16> %i.sh, ptr %i.rt, align 2, !tbaa !38
  %index.next258 = add nuw i64 %index253, 16      ; 2 uses
  %i.si = icmp eq i64 %index.next258, 256
  br i1 %i.si, label %vector.body262, label %vector.body252, !llvm.loop !158

vector.body262:                                   ; preds = %vector.body252, %vector.body262
  %index263 = phi i64 [ %index.next267, %vector.body262 ], [ 0, %vector.body252 ] ; 3 uses
  %i.sj = shl nuw i64 %index263, 4                ; 8 uses
  %next.gep264 = getelementptr i8, ptr %1, i64 %index263
  %i.sk = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 9 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 8 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 8 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 8 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  %i.sr = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 8 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 64
  %i.st = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 8 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 80
  %i.sv = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 8 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 96
  %i.sx = getelementptr inbounds nuw i8, ptr %6, i64 %i.sj ; 8 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 112
  %wide.load265 = load <8 x i8>, ptr %next.gep264, align 1, !tbaa !44 ; 8 uses
  %i.sz = and <8 x i8> %wide.load265, splat (i8 1)
  %i.ta = zext nneg <8 x i8> %i.sz to <8 x i16>
  %i.tb = sub nsw <8 x i16> zeroinitializer, %i.ta
  %i.tc = load i16, ptr %i.sk, align 2, !tbaa !38
  %i.td = load i16, ptr %i.sm, align 2, !tbaa !38
  %i.te = load i16, ptr %i.so, align 2, !tbaa !38
  %i.tf = load i16, ptr %i.sq, align 2, !tbaa !38
  %i.tg = load i16, ptr %i.ss, align 2, !tbaa !38
  %i.th = load i16, ptr %i.su, align 2, !tbaa !38
  %i.ti = load i16, ptr %i.sw, align 2, !tbaa !38
  %i.tj = load i16, ptr %i.sy, align 2, !tbaa !38
  %i.tk = insertelement <8 x i16> poison, i16 %i.tc, i64 0
  %i.tl = insertelement <8 x i16> %i.tk, i16 %i.td, i64 1
  %i.tm = insertelement <8 x i16> %i.tl, i16 %i.te, i64 2
  %i.tn = insertelement <8 x i16> %i.tm, i16 %i.tf, i64 3
  %i.to = insertelement <8 x i16> %i.tn, i16 %i.tg, i64 4
  %i.tp = insertelement <8 x i16> %i.to, i16 %i.th, i64 5
  %i.tq = insertelement <8 x i16> %i.tp, i16 %i.ti, i64 6
  %i.tr = insertelement <8 x i16> %i.tq, i16 %i.tj, i64 7
  %i.ts = and <8 x i16> %i.tb, splat (i16 1665)
  %i.tt = add <8 x i16> %i.ts, %i.tr              ; 2 uses
  %i.tu = add <8 x i16> %i.tt, splat (i16 -3329)  ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sl, i64 18
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sn, i64 34
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sp, i64 50
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sr, i64 66
  %i.ua = getelementptr inbounds nuw i8, ptr %i.st, i64 82
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sv, i64 98
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sx, i64 114
  %i.ud = lshr <8 x i8> %wide.load265, splat (i8 1)
  %i.ue = and <8 x i8> %i.ud, splat (i8 1)
  %i.uf = zext nneg <8 x i8> %i.ue to <8 x i16>
  %i.ug = sub nsw <8 x i16> zeroinitializer, %i.uf
  %i.uh = load i16, ptr %i.tv, align 2, !tbaa !38
  %i.ui = load i16, ptr %i.tw, align 2, !tbaa !38
  %i.uj = load i16, ptr %i.tx, align 2, !tbaa !38
  %i.uk = load i16, ptr %i.ty, align 2, !tbaa !38
  %i.ul = load i16, ptr %i.tz, align 2, !tbaa !38
  %i.um = load i16, ptr %i.ua, align 2, !tbaa !38
  %i.un = load i16, ptr %i.ub, align 2, !tbaa !38
  %i.uo = load i16, ptr %i.uc, align 2, !tbaa !38
  %i.up = insertelement <8 x i16> poison, i16 %i.uh, i64 0
  %i.uq = insertelement <8 x i16> %i.up, i16 %i.ui, i64 1
  %i.ur = insertelement <8 x i16> %i.uq, i16 %i.uj, i64 2
  %i.us = insertelement <8 x i16> %i.ur, i16 %i.uk, i64 3
  %i.ut = insertelement <8 x i16> %i.us, i16 %i.ul, i64 4
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 5
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 6
  %i.uw = insertelement <8 x i16> %i.uv, i16 %i.uo, i64 7
  %i.ux = and <8 x i16> %i.ug, splat (i16 1665)
  %i.uy = add <8 x i16> %i.ux, %i.uw              ; 2 uses
  %i.uz = add <8 x i16> %i.uy, splat (i16 -3329)  ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.sl, i64 20
  %i.vc = getelementptr inbounds nuw i8, ptr %i.sn, i64 36
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sp, i64 52
  %i.ve = getelementptr inbounds nuw i8, ptr %i.sr, i64 68
  %i.vf = getelementptr inbounds nuw i8, ptr %i.st, i64 84
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sv, i64 100
  %i.vh = getelementptr inbounds nuw i8, ptr %i.sx, i64 116
  %i.vi = lshr <8 x i8> %wide.load265, splat (i8 2)
  %i.vj = and <8 x i8> %i.vi, splat (i8 1)
  %i.vk = zext nneg <8 x i8> %i.vj to <8 x i16>
  %i.vl = sub nsw <8 x i16> zeroinitializer, %i.vk
  %i.vm = load i16, ptr %i.va, align 2, !tbaa !38
  %i.vn = load i16, ptr %i.vb, align 2, !tbaa !38
  %i.vo = load i16, ptr %i.vc, align 2, !tbaa !38
  %i.vp = load i16, ptr %i.vd, align 2, !tbaa !38
  %i.vq = load i16, ptr %i.ve, align 2, !tbaa !38
  %i.vr = load i16, ptr %i.vf, align 2, !tbaa !38
  %i.vs = load i16, ptr %i.vg, align 2, !tbaa !38
  %i.vt = load i16, ptr %i.vh, align 2, !tbaa !38
  %i.vu = insertelement <8 x i16> poison, i16 %i.vm, i64 0
  %i.vv = insertelement <8 x i16> %i.vu, i16 %i.vn, i64 1
  %i.vw = insertelement <8 x i16> %i.vv, i16 %i.vo, i64 2
  %i.vx = insertelement <8 x i16> %i.vw, i16 %i.vp, i64 3
  %i.vy = insertelement <8 x i16> %i.vx, i16 %i.vq, i64 4
  %i.vz = insertelement <8 x i16> %i.vy, i16 %i.vr, i64 5
  %i.wa = insertelement <8 x i16> %i.vz, i16 %i.vs, i64 6
  %i.wb = insertelement <8 x i16> %i.wa, i16 %i.vt, i64 7
  %i.wc = and <8 x i16> %i.vl, splat (i16 1665)
  %i.wd = add <8 x i16> %i.wb, %i.wc              ; 2 uses
  %i.we = add <8 x i16> %i.wd, splat (i16 -3329)  ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.sk, i64 6
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sl, i64 22
  %i.wh = getelementptr inbounds nuw i8, ptr %i.sn, i64 38
  %i.wi = getelementptr inbounds nuw i8, ptr %i.sp, i64 54
  %i.wj = getelementptr inbounds nuw i8, ptr %i.sr, i64 70
  %i.wk = getelementptr inbounds nuw i8, ptr %i.st, i64 86
  %i.wl = getelementptr inbounds nuw i8, ptr %i.sv, i64 102
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sx, i64 118
  %i.wn = lshr <8 x i8> %wide.load265, splat (i8 3)
  %i.wo = and <8 x i8> %i.wn, splat (i8 1)
  %i.wp = zext nneg <8 x i8> %i.wo to <8 x i16>
  %i.wq = sub nsw <8 x i16> zeroinitializer, %i.wp
  %i.wr = load i16, ptr %i.wf, align 2, !tbaa !38
  %i.ws = load i16, ptr %i.wg, align 2, !tbaa !38
  %i.wt = load i16, ptr %i.wh, align 2, !tbaa !38
  %i.wu = load i16, ptr %i.wi, align 2, !tbaa !38
  %i.wv = load i16, ptr %i.wj, align 2, !tbaa !38
  %i.ww = load i16, ptr %i.wk, align 2, !tbaa !38
  %i.wx = load i16, ptr %i.wl, align 2, !tbaa !38
  %i.wy = load i16, ptr %i.wm, align 2, !tbaa !38
  %i.wz = insertelement <8 x i16> poison, i16 %i.wr, i64 0
  %i.xa = insertelement <8 x i16> %i.wz, i16 %i.ws, i64 1
  %i.xb = insertelement <8 x i16> %i.xa, i16 %i.wt, i64 2
  %i.xc = insertelement <8 x i16> %i.xb, i16 %i.wu, i64 3
  %i.xd = insertelement <8 x i16> %i.xc, i16 %i.wv, i64 4
  %i.xe = insertelement <8 x i16> %i.xd, i16 %i.ww, i64 5
  %i.xf = insertelement <8 x i16> %i.xe, i16 %i.wx, i64 6
  %i.xg = insertelement <8 x i16> %i.xf, i16 %i.wy, i64 7
  %i.xh = and <8 x i16> %i.wq, splat (i16 1665)
  %i.xi = add <8 x i16> %i.xg, %i.xh              ; 2 uses
  %i.xj = add <8 x i16> %i.xi, splat (i16 -3329)  ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.xm = getelementptr inbounds nuw i8, ptr %i.sn, i64 40
  %i.xn = getelementptr inbounds nuw i8, ptr %i.sp, i64 56
  %i.xo = getelementptr inbounds nuw i8, ptr %i.sr, i64 72
  %i.xp = getelementptr inbounds nuw i8, ptr %i.st, i64 88
  %i.xq = getelementptr inbounds nuw i8, ptr %i.sv, i64 104
  %i.xr = getelementptr inbounds nuw i8, ptr %i.sx, i64 120
  %i.xs = lshr <8 x i8> %wide.load265, splat (i8 4)
  %i.xt = and <8 x i8> %i.xs, splat (i8 1)
  %i.xu = zext nneg <8 x i8> %i.xt to <8 x i16>
  %i.xv = sub nsw <8 x i16> zeroinitializer, %i.xu
  %i.xw = load i16, ptr %i.xk, align 2, !tbaa !38
  %i.xx = load i16, ptr %i.xl, align 2, !tbaa !38
  %i.xy = load i16, ptr %i.xm, align 2, !tbaa !38
  %i.xz = load i16, ptr %i.xn, align 2, !tbaa !38
  %i.ya = load i16, ptr %i.xo, align 2, !tbaa !38
  %i.yb = load i16, ptr %i.xp, align 2, !tbaa !38
  %i.yc = load i16, ptr %i.xq, align 2, !tbaa !38
  %i.yd = load i16, ptr %i.xr, align 2, !tbaa !38
  %i.ye = insertelement <8 x i16> poison, i16 %i.xw, i64 0
  %i.yf = insertelement <8 x i16> %i.ye, i16 %i.xx, i64 1
  %i.yg = insertelement <8 x i16> %i.yf, i16 %i.xy, i64 2
  %i.yh = insertelement <8 x i16> %i.yg, i16 %i.xz, i64 3
  %i.yi = insertelement <8 x i16> %i.yh, i16 %i.ya, i64 4
  %i.yj = insertelement <8 x i16> %i.yi, i16 %i.yb, i64 5
  %i.yk = insertelement <8 x i16> %i.yj, i16 %i.yc, i64 6
  %i.yl = insertelement <8 x i16> %i.yk, i16 %i.yd, i64 7
  %i.ym = and <8 x i16> %i.xv, splat (i16 1665)
  %i.yn = add <8 x i16> %i.yl, %i.ym              ; 2 uses
  %i.yo = add <8 x i16> %i.yn, splat (i16 -3329)  ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.sk, i64 10
  %i.yq = getelementptr inbounds nuw i8, ptr %i.sl, i64 26
  %i.yr = getelementptr inbounds nuw i8, ptr %i.sn, i64 42
  %i.ys = getelementptr inbounds nuw i8, ptr %i.sp, i64 58
  %i.yt = getelementptr inbounds nuw i8, ptr %i.sr, i64 74
  %i.yu = getelementptr inbounds nuw i8, ptr %i.st, i64 90
  %i.yv = getelementptr inbounds nuw i8, ptr %i.sv, i64 106
  %i.yw = getelementptr inbounds nuw i8, ptr %i.sx, i64 122
  %i.yx = lshr <8 x i8> %wide.load265, splat (i8 5)
  %i.yy = and <8 x i8> %i.yx, splat (i8 1)
  %i.yz = zext nneg <8 x i8> %i.yy to <8 x i16>
  %i.za = sub nsw <8 x i16> zeroinitializer, %i.yz
  %i.zb = load i16, ptr %i.yp, align 2, !tbaa !38
  %i.zc = load i16, ptr %i.yq, align 2, !tbaa !38
  %i.zd = load i16, ptr %i.yr, align 2, !tbaa !38
  %i.ze = load i16, ptr %i.ys, align 2, !tbaa !38
  %i.zf = load i16, ptr %i.yt, align 2, !tbaa !38
  %i.zg = load i16, ptr %i.yu, align 2, !tbaa !38
  %i.zh = load i16, ptr %i.yv, align 2, !tbaa !38
  %i.zi = load i16, ptr %i.yw, align 2, !tbaa !38
  %i.zj = insertelement <8 x i16> poison, i16 %i.zb, i64 0
  %i.zk = insertelement <8 x i16> %i.zj, i16 %i.zc, i64 1
  %i.zl = insertelement <8 x i16> %i.zk, i16 %i.zd, i64 2
  %i.zm = insertelement <8 x i16> %i.zl, i16 %i.ze, i64 3
  %i.zn = insertelement <8 x i16> %i.zm, i16 %i.zf, i64 4
  %i.zo = insertelement <8 x i16> %i.zn, i16 %i.zg, i64 5
  %i.zp = insertelement <8 x i16> %i.zo, i16 %i.zh, i64 6
  %i.zq = insertelement <8 x i16> %i.zp, i16 %i.zi, i64 7
  %i.zr = and <8 x i16> %i.za, splat (i16 1665)
  %i.zs = add <8 x i16> %i.zq, %i.zr              ; 2 uses
  %i.zt = add <8 x i16> %i.zs, splat (i16 -3329)  ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  %i.zv = getelementptr inbounds nuw i8, ptr %i.sl, i64 28
  %i.zw = getelementptr inbounds nuw i8, ptr %i.sn, i64 44
  %i.zx = getelementptr inbounds nuw i8, ptr %i.sp, i64 60
  %i.zy = getelementptr inbounds nuw i8, ptr %i.sr, i64 76
  %i.zz = getelementptr inbounds nuw i8, ptr %i.st, i64 92
end_hunk_3
begin_hunk_4_@inner_product:vector.memcheck
  %i.dl = shl nuw nsw i64 %i.dk, 9
  %i.dm = add nuw nsw i64 %i.dl, 1024             ; 2 uses
  %scevgep35 = getelementptr i8, ptr %1, i64 %i.dm
  %scevgep36 = getelementptr i8, ptr %2, i64 512
  %scevgep37 = getelementptr i8, ptr %2, i64 %i.dm
  %bound038 = icmp ult ptr %0, %scevgep35
  %bound139 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict40 = and i1 %bound038, %bound139
  %bound041 = icmp ult ptr %0, %scevgep37
  %bound142 = icmp ult ptr %scevgep36, %scevgep33
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %found.conflict40, %found.conflict43
  %bound045 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound146 = icmp ugt ptr %scevgep33, @kModRoots
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %scalar_mult_add.exit
  %.016 = phi i32 [ %i.il, %scalar_mult_add.exit ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.0615 = phi ptr [ %i.do, %scalar_mult_add.exit ], [ %2, %.lr.ph.preheader ]
  %.0714 = phi ptr [ %i.dn, %scalar_mult_add.exit ], [ %1, %.lr.ph.preheader ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0714, i64 512 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0615, i64 512 ; 3 uses
  br i1 %conflict.rdx48, label %scalar.ph49, label %vector.body51

vector.body51:                                    ; preds = %.lr.ph, %vector.body51
  %index52 = phi i64 [ %index.next67, %vector.body51 ], [ 0, %.lr.ph ] ; 3 uses
  %i.dp = shl i64 %index52, 1
  %next.gep53 = getelementptr i8, ptr @kModRoots, i64 %i.dp
  %i.dq = shl i64 %index52, 2                     ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.do, i64 %i.dq
  %next.gep55 = getelementptr i8, ptr %i.dn, i64 %i.dq
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq ; 2 uses
  %wide.vec56 = load <8 x i16>, ptr %next.gep55, align 2, !tbaa !38, !alias.scope !173
  %i.ds = freeze <8 x i16> %wide.vec56            ; 2 uses
  %i.dt = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.du = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.dv = and <4 x i32> %i.du, splat (i32 65535)  ; 2 uses
  %i.dw = lshr <4 x i32> %i.dt, splat (i32 16)    ; 2 uses
  %wide.vec59 = load <8 x i16>, ptr %next.gep54, align 2, !tbaa !38, !alias.scope !176
  %i.dx = freeze <8 x i16> %wide.vec59            ; 2 uses
  %i.dy = bitcast <8 x i16> %i.dx to <4 x i32>
  %i.dz = bitcast <8 x i16> %i.dx to <4 x i32>
  %i.ea = and <4 x i32> %i.dz, splat (i32 65535)  ; 2 uses
  %i.eb = lshr <4 x i32> %i.dy, splat (i32 16)    ; 2 uses
  %wide.load62 = load <4 x i16>, ptr %next.gep53, align 8, !tbaa !38, !alias.scope !178
  %i.ec = zext <4 x i16> %wide.load62 to <4 x i32>
  %wide.vec63 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !38, !alias.scope !180, !noalias !182
  %i.ed = freeze <8 x i16> %wide.vec63            ; 2 uses
  %i.ee = bitcast <8 x i16> %i.ed to <4 x i32>
  %i.ef = bitcast <8 x i16> %i.ed to <4 x i32>
  %i.eg = and <4 x i32> %i.ef, splat (i32 65535)
  %i.eh = lshr <4 x i32> %i.ee, splat (i32 16)
  %i.ei = mul nuw <4 x i32> %i.ea, %i.dv
  %i.ej = add nuw <4 x i32> %i.ei, %i.eg
  %i.ek = mul nuw <4 x i32> %i.eb, %i.dw          ; 2 uses
  %i.el = zext <4 x i32> %i.ek to <4 x i64>
  %i.em = mul nuw nsw <4 x i64> %i.el, splat (i64 5039)
  %i.en = lshr <4 x i64> %i.em, splat (i64 24)
  %i.eo = trunc nuw nsw <4 x i64> %i.en to <4 x i32>
  %i.ep = mul <4 x i32> %i.eo, splat (i32 62207)
  %i.eq = add <4 x i32> %i.ep, %i.ek
  %i.er = trunc <4 x i32> %i.eq to <4 x i16>      ; 2 uses
  %i.es = add <4 x i16> %i.er, splat (i16 -3329)  ; 2 uses
  %i.et = icmp slt <4 x i16> %i.es, zeroinitializer
  %i.eu = select <4 x i1> %i.et, <4 x i16> %i.er, <4 x i16> zeroinitializer
  %i.ev = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.es, <4 x i16> zeroinitializer)
  %i.ew = or <4 x i16> %i.eu, %i.ev
  %i.ex = zext <4 x i16> %i.ew to <4 x i32>
  %i.ey = mul nuw <4 x i32> %i.ex, %i.ec
  %i.ez = add <4 x i32> %i.ej, %i.ey              ; 2 uses
  %i.fa = zext <4 x i32> %i.ez to <4 x i64>
  %i.fb = mul nuw nsw <4 x i64> %i.fa, splat (i64 5039)
  %i.fc = lshr <4 x i64> %i.fb, splat (i64 24)
  %i.fd = trunc nuw nsw <4 x i64> %i.fc to <4 x i32>
  %i.fe = mul <4 x i32> %i.fd, splat (i32 62207)
  %i.ff = add <4 x i32> %i.fe, %i.ez
  %i.fg = trunc <4 x i32> %i.ff to <4 x i16>      ; 2 uses
  %i.fh = add <4 x i16> %i.fg, splat (i16 -3329)  ; 2 uses
  %i.fi = icmp slt <4 x i16> %i.fh, zeroinitializer
  %i.fj = select <4 x i1> %i.fi, <4 x i16> %i.fg, <4 x i16> zeroinitializer
  %i.fk = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fh, <4 x i16> zeroinitializer)
  %i.fl = or <4 x i16> %i.fj, %i.fk
  %i.fm = mul nuw <4 x i32> %i.eb, %i.dv
  %i.fn = mul nuw <4 x i32> %i.dw, %i.ea
  %i.fo = add <4 x i32> %i.fm, %i.fn
  %i.fp = add <4 x i32> %i.fo, %i.eh              ; 2 uses
  %i.fq = zext <4 x i32> %i.fp to <4 x i64>
  %i.fr = mul nuw nsw <4 x i64> %i.fq, splat (i64 5039)
  %i.fs = lshr <4 x i64> %i.fr, splat (i64 24)
  %i.ft = trunc nuw nsw <4 x i64> %i.fs to <4 x i32>
  %i.fu = mul <4 x i32> %i.ft, splat (i32 62207)
  %i.fv = add <4 x i32> %i.fu, %i.fp
  %i.fw = trunc <4 x i32> %i.fv to <4 x i16>      ; 2 uses
  %i.fx = add <4 x i16> %i.fw, splat (i16 -3329)  ; 2 uses
  %i.fy = icmp slt <4 x i16> %i.fx, zeroinitializer
  %i.fz = select <4 x i1> %i.fy, <4 x i16> %i.fw, <4 x i16> zeroinitializer
  %i.ga = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fx, <4 x i16> zeroinitializer)
  %i.gb = or <4 x i16> %i.fz, %i.ga
  %interleaved.vec66 = shufflevector <4 x i16> %i.fl, <4 x i16> %i.gb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec66, ptr %i.dr, align 2, !tbaa !38, !alias.scope !180, !noalias !182
  %index.next67 = add nuw i64 %index52, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next67, 128
  br i1 %i.gc, label %scalar_mult_add.exit, label %vector.body51, !llvm.loop !183

scalar.ph49:                                      ; preds = %.lr.ph, %scalar.ph49
  %.027.i = phi ptr [ %i.gm, %scalar.ph49 ], [ @kModRoots, %.lr.ph ] ; 2 uses
  %.026.i = phi ptr [ %i.gi, %scalar.ph49 ], [ %i.do, %.lr.ph ] ; 3 uses
  %.025.i = phi ptr [ %i.gh, %scalar.ph49 ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.0.idx.i9 = phi i64 [ %.0.add.i11, %scalar.ph49 ], [ 0, %.lr.ph ] ; 3 uses
  %.0.ptr.i10 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.i9 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.025.i, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %.026.i, i64 2
  %i.gf = load i16, ptr %.026.i, align 2, !tbaa !38
  %i.gg = zext i16 %i.gf to i32                   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.gj = load i16, ptr %i.ge, align 2, !tbaa !38
  %i.gk = zext i16 %i.gj to i32                   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.ptr.i10, i64 2
  %.0.add.i11 = add nuw nsw i64 %.0.idx.i9, 4
  %i.gm = getelementptr inbounds nuw i8, ptr %.027.i, i64 2
  %i.gn = load i16, ptr %.027.i, align 2, !tbaa !38
  %i.go = zext i16 %i.gn to i32
  %i.gp = load i16, ptr %.0.ptr.i10, align 2, !tbaa !38
  %i.gq = zext i16 %i.gp to i32
  %i.gr = load i16, ptr %i.gl, align 2, !tbaa !38
  %i.gs = zext i16 %i.gr to i32
  %i.gt = load i16, ptr %i.gd, align 2, !tbaa !38
  %i.gu = load i16, ptr %.025.i, align 2, !tbaa !38
  %i.gv = zext i16 %i.gt to i32                   ; 2 uses
  %i.gw = zext i16 %i.gu to i32                   ; 2 uses
  %i.gx = mul nuw i32 %i.gk, %i.gv                ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = mul nuw nsw i64 %i.gy, 5039
  %i.ha = lshr i64 %i.gz, 24
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %.neg.i.i12 = mul i32 %i.hb, 62207
  %i.hc = add i32 %.neg.i.i12, %i.gx
  %i.hd = trunc i32 %i.hc to i16                  ; 2 uses
  %i.he = add i16 %i.hd, -3329                    ; 2 uses
  %isneg.i.i.i13 = icmp slt i16 %i.he, 0
  %i.hf = select i1 %isneg.i.i.i13, i16 %i.hd, i16 0
  %i.hg = tail call i16 @llvm.smax.i16(i16 %i.he, i16 0)
  %i.hh = or i16 %i.hf, %i.hg
  %i.hi = zext i16 %i.hh to i32
  %i.hj = mul nuw i32 %i.hi, %i.go
  %i.hk = mul nuw i32 %i.gk, %i.gw
  %i.hl = mul nuw i32 %i.gv, %i.gg
  %i.hm = mul nuw i32 %i.gg, %i.gw
  %i.hn = add i32 %i.hk, %i.hl
  %i.ho = add nuw i32 %i.hm, %i.gq
  %i.hp = add i32 %i.hn, %i.gs                    ; 2 uses
  %i.hq = add i32 %i.ho, %i.hj                    ; 2 uses
  %i.hr = zext i32 %i.hp to i64
  %i.hs = zext i32 %i.hq to i64
  %i.ht = mul nuw nsw i64 %i.hr, 5039
  %i.hu = mul nuw nsw i64 %i.hs, 5039
  %i.hv = lshr i64 %i.ht, 24
  %i.hw = lshr i64 %i.hu, 24
  %i.hx = trunc nuw nsw i64 %i.hv to i32
  %i.hy = trunc nuw nsw i64 %i.hw to i32
  %.neg.i30.i = mul i32 %i.hx, 62207
  %.neg.i28.i = mul i32 %i.hy, 62207
  %i.hz = insertelement <2 x i32> poison, i32 %.neg.i28.i, i64 0
  %i.ia = insertelement <2 x i32> %i.hz, i32 %.neg.i30.i, i64 1
  %i.ib = insertelement <2 x i32> poison, i32 %i.hq, i64 0
  %i.ic = insertelement <2 x i32> %i.ib, i32 %i.hp, i64 1
  %i.id = add <2 x i32> %i.ia, %i.ic
  %i.ie = trunc <2 x i32> %i.id to <2 x i16>      ; 2 uses
  %i.if = add <2 x i16> %i.ie, splat (i16 -3329)  ; 2 uses
  %i.ig = icmp slt <2 x i16> %i.if, zeroinitializer
  %i.ih = select <2 x i1> %i.ig, <2 x i16> %i.ie, <2 x i16> zeroinitializer
  %i.ii = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.if, <2 x i16> zeroinitializer)
  %i.ij = or <2 x i16> %i.ih, %i.ii
  store <2 x i16> %i.ij, ptr %.0.ptr.i10, align 2, !tbaa !38
  %i.ik = icmp samesign ult i64 %.0.idx.i9, 508
  br i1 %i.ik, label %scalar.ph49, label %scalar_mult_add.exit, !llvm.loop !184

scalar_mult_add.exit:                             ; preds = %vector.body51, %scalar.ph49
  %i.il = add nsw i32 %.016, -1
  %i.im = icmp sgt i32 %.016, 2
  br i1 %i.im, label %.lr.ph, label %scalar_mult.exit._crit_edge, !llvm.loop !185

scalar_mult.exit._crit_edge:                      ; preds = %scalar_mult_add.exit, %scalar_mult.exit.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_inverse_ntt(ptr nofree noundef nonnull captures(address) %0) unnamed_addr #9 {
vector.memcheck:
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 2 uses
  %bound0 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 130)
  %bound1 = icmp ugt ptr %scevgep, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 2)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.a = shl nuw i64 %index, 3                    ; 8 uses
  %i.b = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kInverseNTTRoots, i64 %i.b
  %i.c = getelementptr i8, ptr %0, i64 %i.a       ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 48
  %i.p = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 56
  %i.r = getelementptr i8, ptr %i.c, i64 4
  %i.s = getelementptr i8, ptr %i.d, i64 12
  %i.t = getelementptr i8, ptr %i.f, i64 20
  %i.u = getelementptr i8, ptr %i.h, i64 28
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.l, i64 44
  %i.x = getelementptr i8, ptr %i.n, i64 52
  %i.y = getelementptr i8, ptr %i.p, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.z, align 2, !tbaa !38, !alias.scope !186
  %i.aa = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.ab = load i16, ptr %i.c, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ac = load i16, ptr %i.e, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ad = load i16, ptr %i.g, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.af = load i16, ptr %i.k, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ag = load i16, ptr %i.m, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ah = load i16, ptr %i.o, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ai = load i16, ptr %i.q, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.aj = insertelement <8 x i16> poison, i16 %i.ab, i64 0
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 1
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 2
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 3
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 4
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 5
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 6
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 7 ; 2 uses
  %i.ar = load i16, ptr %i.r, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.as = load i16, ptr %i.s, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.at = load i16, ptr %i.t, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.au = load i16, ptr %i.u, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.av = load i16, ptr %i.v, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.aw = load i16, ptr %i.w, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ax = load i16, ptr %i.x, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ay = load i16, ptr %i.y, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.az = insertelement <8 x i16> poison, i16 %i.ar, i64 0
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 1
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 2
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 3
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 4
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 5
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 6
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 7 ; 2 uses
  %i.bh = zext <8 x i16> %i.aq to <8 x i32>
  %i.bi = zext <8 x i16> %i.bg to <8 x i32>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 3329)
  %i.bk = sub nsw <8 x i32> %i.bj, %i.bi
  %i.bl = mul <8 x i32> %i.bk, %i.aa              ; 2 uses
  %i.bm = zext <8 x i32> %i.bl to <8 x i64>
  %i.bn = mul nuw nsw <8 x i64> %i.bm, splat (i64 5039)
  %i.bo = lshr <8 x i64> %i.bn, splat (i64 24)
  %i.bp = trunc nuw nsw <8 x i64> %i.bo to <8 x i32>
  %i.bq = mul <8 x i32> %i.bp, splat (i32 62207)
  %i.br = add <8 x i32> %i.bq, %i.bl
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>      ; 2 uses
  %i.bt = add <8 x i16> %i.bs, splat (i16 -3329)  ; 2 uses
  %i.bu = add <8 x i16> %i.bg, %i.aq              ; 2 uses
  %i.bv = add <8 x i16> %i.bu, splat (i16 -3329)  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bx = getelementptr i8, ptr %i.d, i64 10
  %i.by = getelementptr i8, ptr %i.f, i64 18
  %i.bz = getelementptr i8, ptr %i.h, i64 26
  %i.ca = getelementptr i8, ptr %i.j, i64 34
  %i.cb = getelementptr i8, ptr %i.l, i64 42
  %i.cc = getelementptr i8, ptr %i.n, i64 50
  %i.cd = getelementptr i8, ptr %i.p, i64 58
  %i.ce = getelementptr i8, ptr %i.c, i64 6
  %i.cf = getelementptr i8, ptr %i.d, i64 14
  %i.cg = getelementptr i8, ptr %i.f, i64 22
  %i.ch = getelementptr i8, ptr %i.h, i64 30
  %i.ci = getelementptr i8, ptr %i.j, i64 38
  %i.cj = getelementptr i8, ptr %i.l, i64 46
  %i.ck = getelementptr i8, ptr %i.n, i64 54
  %i.cl = getelementptr i8, ptr %i.p, i64 62
  %i.cm = load i16, ptr %i.bw, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cn = load i16, ptr %i.bx, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.co = load i16, ptr %i.by, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cu = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 1
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 2
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 3
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 4
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 5
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 6
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 7 ; 2 uses
  %i.dc = load i16, ptr %i.ce, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dd = load i16, ptr %i.cf, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.de = load i16, ptr %i.cg, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.df = load i16, ptr %i.ch, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dg = load i16, ptr %i.ci, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dk = insertelement <8 x i16> poison, i16 %i.dc, i64 0
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 1
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 2
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 3
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 4
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 5
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 6
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 7 ; 2 uses
  %i.ds = zext <8 x i16> %i.db to <8 x i32>
  %i.dt = zext <8 x i16> %i.dr to <8 x i32>
  %i.du = add nuw nsw <8 x i32> %i.ds, splat (i32 3329)
  %i.dv = sub nsw <8 x i32> %i.du, %i.dt
  %i.dw = mul <8 x i32> %i.dv, %i.aa              ; 2 uses
  %i.dx = zext <8 x i32> %i.dw to <8 x i64>
  %i.dy = mul nuw nsw <8 x i64> %i.dx, splat (i64 5039)
  %i.dz = lshr <8 x i64> %i.dy, splat (i64 24)
  %i.ea = trunc nuw nsw <8 x i64> %i.dz to <8 x i32>
  %i.eb = mul <8 x i32> %i.ea, splat (i32 62207)
  %i.ec = add <8 x i32> %i.eb, %i.dw
  %i.ed = trunc <8 x i32> %i.ec to <8 x i16>      ; 2 uses
  %i.ee = add <8 x i16> %i.ed, splat (i16 -3329)  ; 2 uses
  %i.ef = add <8 x i16> %i.dr, %i.db              ; 2 uses
  %i.eg = add <8 x i16> %i.ef, splat (i16 -3329)  ; 2 uses
  %i.eh = shufflevector <8 x i16> %i.bv, <8 x i16> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = icmp slt <16 x i16> %i.eh, zeroinitializer
  %i.ej = shufflevector <8 x i16> %i.bu, <8 x i16> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = select <16 x i1> %i.ei, <16 x i16> %i.ej, <16 x i16> zeroinitializer
  %i.el = shufflevector <8 x i16> %i.bv, <8 x i16> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.el, <16 x i16> zeroinitializer)
  %i.en = or <16 x i16> %i.ek, %i.em
  %i.eo = shufflevector <8 x i16> %i.bt, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ep = icmp slt <16 x i16> %i.eo, zeroinitializer
  %i.eq = shufflevector <8 x i16> %i.bs, <8 x i16> %i.ed, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = select <16 x i1> %i.ep, <16 x i16> %i.eq, <16 x i16> zeroinitializer
  %i.es = shufflevector <8 x i16> %i.bt, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.et = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.es, <16 x i16> zeroinitializer)
  %i.eu = or <16 x i16> %i.er, %i.et
  %interleaved.vec = shufflevector <16 x i16> %i.en, <16 x i16> %i.eu, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.c, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, 64
  br i1 %i.ev, label %vector.memcheck50, label %vector.body, !llvm.loop !191

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.021.idx = phi i64 [ %.023.add.130, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %.1 = phi ptr [ %i.ex, %scalar.ph ], [ @kInverseNTTRoots, %vector.memcheck ]
  %.021.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.021.idx ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 %.021.idx
  %.ptr26 = getelementptr i8, ptr %i.ew, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !38
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  %.023.add.130 = add nuw nsw i64 %.021.idx, 8
  %i.fa = load <2 x i16>, ptr %.021.ptr, align 2, !tbaa !38 ; 3 uses
  %i.fb = extractelement <2 x i16> %i.fa, i64 0
  %i.fc = zext i16 %i.fb to i32
  %i.fd = load <2 x i16>, ptr %.ptr26, align 2, !tbaa !38 ; 3 uses
  %i.fe = extractelement <2 x i16> %i.fd, i64 0
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add nuw nsw i32 %i.fc, 3329
  %i.fh = sub nsw i32 %i.fg, %i.ff
  %i.fi = mul i32 %i.fh, %i.ez                    ; 2 uses
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul nuw nsw i64 %i.fj, 5039
  %i.fl = lshr i64 %i.fk, 24
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %.neg.i = mul i32 %i.fm, 62207
  %i.fn = add i32 %.neg.i, %i.fi
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = extractelement <2 x i16> %i.fa, i64 1
  %i.fq = zext i16 %i.fp to i32
  %i.fr = extractelement <2 x i16> %i.fd, i64 1
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fq, 3329
  %i.fu = sub nsw i32 %i.ft, %i.fs
  %i.fv = mul i32 %i.fu, %i.ez                    ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = mul nuw nsw i64 %i.fw, 5039
  %i.fy = lshr i64 %i.fx, 24
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %.neg.i.128 = mul i32 %i.fz, 62207
  %i.ga = add i32 %.neg.i.128, %i.fv
  %i.gb = trunc i32 %i.ga to i16
  %i.gc = add <2 x i16> %i.fd, %i.fa
  %i.gd = shufflevector <2 x i16> %i.gc, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = insertelement <4 x i16> %i.gd, i16 %i.fo, i64 2
  %i.gf = insertelement <4 x i16> %i.ge, i16 %i.gb, i64 3 ; 2 uses
  %i.gg = add <4 x i16> %i.gf, splat (i16 -3329)  ; 2 uses
  %i.gh = icmp slt <4 x i16> %i.gg, zeroinitializer
  %i.gi = select <4 x i1> %i.gh, <4 x i16> %i.gf, <4 x i16> zeroinitializer
  %i.gj = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gg, <4 x i16> zeroinitializer)
  %i.gk = or <4 x i16> %i.gi, %i.gj
  store <4 x i16> %i.gk, ptr %.021.ptr, align 2, !tbaa !38
  %i.gl = icmp samesign ult i64 %.021.idx, 504
  br i1 %i.gl, label %scalar.ph, label %vector.memcheck50, !llvm.loop !192

vector.memcheck50:                                ; preds = %vector.body, %scalar.ph
  %.lcssa49 = phi ptr [ %i.ex, %scalar.ph ], [ getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 128), %vector.body ] ; 5 uses
  %scevgep51 = getelementptr i8, ptr %0, i64 512
  %scevgep52 = getelementptr nuw i8, ptr %.lcssa49, i64 2
  %scevgep53 = getelementptr nuw i8, ptr %.lcssa49, i64 66
  %bound054 = icmp ult ptr %0, %scevgep53
  %bound155 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %scalar.ph57, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck50
  %i.gm = getelementptr i8, ptr %.lcssa49, i64 64
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph58
  %index60 = phi i64 [ 0, %vector.ph58 ], [ %index.next64, %vector.body59 ] ; 3 uses
  %i.gn = shl nuw i64 %index60, 4                 ; 8 uses
  %i.go = shl i64 %index60, 1
  %next.gep61 = getelementptr i8, ptr %.lcssa49, i64 %i.go
  %i.gp = getelementptr i8, ptr %0, i64 %i.gn     ; 9 uses
  %i.gq = getelementptr i8, ptr %0, i64 %i.gn     ; 8 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  %i.gs = getelementptr i8, ptr %0, i64 %i.gn     ; 8 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 32
  %i.gu = getelementptr i8, ptr %0, i64 %i.gn     ; 8 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 48
  %i.gw = getelementptr i8, ptr %0, i64 %i.gn     ; 8 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 64
  %i.gy = getelementptr i8, ptr %0, i64 %i.gn     ; 8 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 80
  %i.ha = getelementptr i8, ptr %0, i64 %i.gn     ; 8 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 96
  %i.hc = getelementptr i8, ptr %0, i64 %i.gn     ; 8 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 112
  %i.he = getelementptr i8, ptr %i.gp, i64 8
  %i.hf = getelementptr i8, ptr %i.gq, i64 24
  %i.hg = getelementptr i8, ptr %i.gs, i64 40
  %i.hh = getelementptr i8, ptr %i.gu, i64 56
  %i.hi = getelementptr i8, ptr %i.gw, i64 72
  %i.hj = getelementptr i8, ptr %i.gy, i64 88
  %i.hk = getelementptr i8, ptr %i.ha, i64 104
  %i.hl = getelementptr i8, ptr %i.hc, i64 120
  %i.hm = getelementptr inbounds nuw i8, ptr %next.gep61, i64 2
  %wide.load62 = load <8 x i16>, ptr %i.hm, align 2, !tbaa !38, !alias.scope !193
  %i.hn = zext <8 x i16> %wide.load62 to <8 x i32> ; 4 uses
  %i.ho = load i16, ptr %i.gp, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.hp = load i16, ptr %i.gr, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.hq = load i16, ptr %i.gt, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.hr = load i16, ptr %i.gv, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.hs = load i16, ptr %i.gx, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ht = load i16, ptr %i.gz, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.hu = load i16, ptr %i.hb, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.hv = load i16, ptr %i.hd, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.hw = insertelement <8 x i16> poison, i16 %i.ho, i64 0
  %i.hx = insertelement <8 x i16> %i.hw, i16 %i.hp, i64 1
  %i.hy = insertelement <8 x i16> %i.hx, i16 %i.hq, i64 2
  %i.hz = insertelement <8 x i16> %i.hy, i16 %i.hr, i64 3
  %i.ia = insertelement <8 x i16> %i.hz, i16 %i.hs, i64 4
  %i.ib = insertelement <8 x i16> %i.ia, i16 %i.ht, i64 5
  %i.ic = insertelement <8 x i16> %i.ib, i16 %i.hu, i64 6
  %i.id = insertelement <8 x i16> %i.ic, i16 %i.hv, i64 7 ; 2 uses
  %i.ie = load i16, ptr %i.he, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.if = load i16, ptr %i.hf, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ig = load i16, ptr %i.hg, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ih = load i16, ptr %i.hh, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ii = load i16, ptr %i.hi, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ij = load i16, ptr %i.hj, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ik = load i16, ptr %i.hk, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.il = load i16, ptr %i.hl, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.im = insertelement <8 x i16> poison, i16 %i.ie, i64 0
  %i.in = insertelement <8 x i16> %i.im, i16 %i.if, i64 1
  %i.io = insertelement <8 x i16> %i.in, i16 %i.ig, i64 2
  %i.ip = insertelement <8 x i16> %i.io, i16 %i.ih, i64 3
  %i.iq = insertelement <8 x i16> %i.ip, i16 %i.ii, i64 4
  %i.ir = insertelement <8 x i16> %i.iq, i16 %i.ij, i64 5
  %i.is = insertelement <8 x i16> %i.ir, i16 %i.ik, i64 6
  %i.it = insertelement <8 x i16> %i.is, i16 %i.il, i64 7 ; 2 uses
  %i.iu = zext <8 x i16> %i.id to <8 x i32>
  %i.iv = zext <8 x i16> %i.it to <8 x i32>
  %i.iw = add nuw nsw <8 x i32> %i.iu, splat (i32 3329)
  %i.ix = sub nsw <8 x i32> %i.iw, %i.iv
  %i.iy = mul <8 x i32> %i.ix, %i.hn              ; 2 uses
  %i.iz = zext <8 x i32> %i.iy to <8 x i64>
  %i.ja = mul nuw nsw <8 x i64> %i.iz, splat (i64 5039)
  %i.jb = lshr <8 x i64> %i.ja, splat (i64 24)
  %i.jc = trunc nuw nsw <8 x i64> %i.jb to <8 x i32>
  %i.jd = mul <8 x i32> %i.jc, splat (i32 62207)
  %i.je = add <8 x i32> %i.jd, %i.iy
  %i.jf = trunc <8 x i32> %i.je to <8 x i16>      ; 2 uses
  %i.jg = add <8 x i16> %i.jf, splat (i16 -3329)  ; 2 uses
  %i.jh = add <8 x i16> %i.it, %i.id              ; 2 uses
  %i.ji = add <8 x i16> %i.jh, splat (i16 -3329)  ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.jk = getelementptr i8, ptr %i.gq, i64 18
  %i.jl = getelementptr i8, ptr %i.gs, i64 34
  %i.jm = getelementptr i8, ptr %i.gu, i64 50
  %i.jn = getelementptr i8, ptr %i.gw, i64 66
  %i.jo = getelementptr i8, ptr %i.gy, i64 82
  %i.jp = getelementptr i8, ptr %i.ha, i64 98
  %i.jq = getelementptr i8, ptr %i.hc, i64 114
  %i.jr = getelementptr i8, ptr %i.gp, i64 10
  %i.js = getelementptr i8, ptr %i.gq, i64 26
  %i.jt = getelementptr i8, ptr %i.gs, i64 42
  %i.ju = getelementptr i8, ptr %i.gu, i64 58
  %i.jv = getelementptr i8, ptr %i.gw, i64 74
  %i.jw = getelementptr i8, ptr %i.gy, i64 90
  %i.jx = getelementptr i8, ptr %i.ha, i64 106
  %i.jy = getelementptr i8, ptr %i.hc, i64 122
  %i.jz = load i16, ptr %i.jj, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ka = load i16, ptr %i.jk, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kb = load i16, ptr %i.jl, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kc = load i16, ptr %i.jm, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kd = load i16, ptr %i.jn, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ke = load i16, ptr %i.jo, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kf = load i16, ptr %i.jp, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kg = load i16, ptr %i.jq, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kh = insertelement <8 x i16> poison, i16 %i.jz, i64 0
  %i.ki = insertelement <8 x i16> %i.kh, i16 %i.ka, i64 1
  %i.kj = insertelement <8 x i16> %i.ki, i16 %i.kb, i64 2
  %i.kk = insertelement <8 x i16> %i.kj, i16 %i.kc, i64 3
  %i.kl = insertelement <8 x i16> %i.kk, i16 %i.kd, i64 4
  %i.km = insertelement <8 x i16> %i.kl, i16 %i.ke, i64 5
  %i.kn = insertelement <8 x i16> %i.km, i16 %i.kf, i64 6
  %i.ko = insertelement <8 x i16> %i.kn, i16 %i.kg, i64 7 ; 2 uses
  %i.kp = load i16, ptr %i.jr, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kq = load i16, ptr %i.js, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kr = load i16, ptr %i.jt, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ks = load i16, ptr %i.ju, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kt = load i16, ptr %i.jv, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ku = load i16, ptr %i.jw, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kv = load i16, ptr %i.jx, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kw = load i16, ptr %i.jy, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.kx = insertelement <8 x i16> poison, i16 %i.kp, i64 0
  %i.ky = insertelement <8 x i16> %i.kx, i16 %i.kq, i64 1
  %i.kz = insertelement <8 x i16> %i.ky, i16 %i.kr, i64 2
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.ks, i64 3
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 4
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 5
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 6
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 7 ; 2 uses
  %i.lf = zext <8 x i16> %i.ko to <8 x i32>
  %i.lg = zext <8 x i16> %i.le to <8 x i32>
  %i.lh = add nuw nsw <8 x i32> %i.lf, splat (i32 3329)
  %i.li = sub nsw <8 x i32> %i.lh, %i.lg
  %i.lj = mul <8 x i32> %i.li, %i.hn              ; 2 uses
  %i.lk = zext <8 x i32> %i.lj to <8 x i64>
  %i.ll = mul nuw nsw <8 x i64> %i.lk, splat (i64 5039)
  %i.lm = lshr <8 x i64> %i.ll, splat (i64 24)
  %i.ln = trunc nuw nsw <8 x i64> %i.lm to <8 x i32>
  %i.lo = mul <8 x i32> %i.ln, splat (i32 62207)
  %i.lp = add <8 x i32> %i.lo, %i.lj
  %i.lq = trunc <8 x i32> %i.lp to <8 x i16>      ; 2 uses
  %i.lr = add <8 x i16> %i.lq, splat (i16 -3329)  ; 2 uses
  %i.ls = add <8 x i16> %i.le, %i.ko              ; 2 uses
  %i.lt = add <8 x i16> %i.ls, splat (i16 -3329)  ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.lv = getelementptr i8, ptr %i.gq, i64 20
  %i.lw = getelementptr i8, ptr %i.gs, i64 36
  %i.lx = getelementptr i8, ptr %i.gu, i64 52
  %i.ly = getelementptr i8, ptr %i.gw, i64 68
  %i.lz = getelementptr i8, ptr %i.gy, i64 84
  %i.ma = getelementptr i8, ptr %i.ha, i64 100
  %i.mb = getelementptr i8, ptr %i.hc, i64 116
  %i.mc = getelementptr i8, ptr %i.gp, i64 12
  %i.md = getelementptr i8, ptr %i.gq, i64 28
  %i.me = getelementptr i8, ptr %i.gs, i64 44
  %i.mf = getelementptr i8, ptr %i.gu, i64 60
  %i.mg = getelementptr i8, ptr %i.gw, i64 76
  %i.mh = getelementptr i8, ptr %i.gy, i64 92
  %i.mi = getelementptr i8, ptr %i.ha, i64 108
  %i.mj = getelementptr i8, ptr %i.hc, i64 124
  %i.mk = load i16, ptr %i.lu, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ml = load i16, ptr %i.lv, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.mm = load i16, ptr %i.lw, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.mn = load i16, ptr %i.lx, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.mo = load i16, ptr %i.ly, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.mp = load i16, ptr %i.lz, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.mq = load i16, ptr %i.ma, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.mr = load i16, ptr %i.mb, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ms = insertelement <8 x i16> poison, i16 %i.mk, i64 0
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 1
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 2
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 3
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 4
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 5
  %i.my = insertelement <8 x i16> %i.mx, i16 %i.mq, i64 6
  %i.mz = insertelement <8 x i16> %i.my, i16 %i.mr, i64 7 ; 2 uses
  %i.na = load i16, ptr %i.mc, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.nb = load i16, ptr %i.md, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.nc = load i16, ptr %i.me, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.nd = load i16, ptr %i.mf, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ne = load i16, ptr %i.mg, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.nf = load i16, ptr %i.mh, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ng = load i16, ptr %i.mi, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.nh = load i16, ptr %i.mj, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ni = insertelement <8 x i16> poison, i16 %i.na, i64 0
  %i.nj = insertelement <8 x i16> %i.ni, i16 %i.nb, i64 1
  %i.nk = insertelement <8 x i16> %i.nj, i16 %i.nc, i64 2
  %i.nl = insertelement <8 x i16> %i.nk, i16 %i.nd, i64 3
  %i.nm = insertelement <8 x i16> %i.nl, i16 %i.ne, i64 4
  %i.nn = insertelement <8 x i16> %i.nm, i16 %i.nf, i64 5
  %i.no = insertelement <8 x i16> %i.nn, i16 %i.ng, i64 6
  %i.np = insertelement <8 x i16> %i.no, i16 %i.nh, i64 7 ; 2 uses
  %i.nq = zext <8 x i16> %i.mz to <8 x i32>
  %i.nr = zext <8 x i16> %i.np to <8 x i32>
  %i.ns = add nuw nsw <8 x i32> %i.nq, splat (i32 3329)
  %i.nt = sub nsw <8 x i32> %i.ns, %i.nr
  %i.nu = mul <8 x i32> %i.nt, %i.hn              ; 2 uses
  %i.nv = zext <8 x i32> %i.nu to <8 x i64>
  %i.nw = mul nuw nsw <8 x i64> %i.nv, splat (i64 5039)
  %i.nx = lshr <8 x i64> %i.nw, splat (i64 24)
  %i.ny = trunc nuw nsw <8 x i64> %i.nx to <8 x i32>
  %i.nz = mul <8 x i32> %i.ny, splat (i32 62207)
  %i.oa = add <8 x i32> %i.nz, %i.nu
  %i.ob = trunc <8 x i32> %i.oa to <8 x i16>      ; 2 uses
  %i.oc = add <8 x i16> %i.ob, splat (i16 -3329)  ; 2 uses
  %i.od = add <8 x i16> %i.np, %i.mz              ; 2 uses
  %i.oe = add <8 x i16> %i.od, splat (i16 -3329)  ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.gp, i64 6
  %i.og = getelementptr i8, ptr %i.gq, i64 22
  %i.oh = getelementptr i8, ptr %i.gs, i64 38
  %i.oi = getelementptr i8, ptr %i.gu, i64 54
  %i.oj = getelementptr i8, ptr %i.gw, i64 70
  %i.ok = getelementptr i8, ptr %i.gy, i64 86
  %i.ol = getelementptr i8, ptr %i.ha, i64 102
  %i.om = getelementptr i8, ptr %i.hc, i64 118
  %i.on = getelementptr i8, ptr %i.gp, i64 14
  %i.oo = getelementptr i8, ptr %i.gq, i64 30
  %i.op = getelementptr i8, ptr %i.gs, i64 46
  %i.oq = getelementptr i8, ptr %i.gu, i64 62
  %i.or = getelementptr i8, ptr %i.gw, i64 78
  %i.os = getelementptr i8, ptr %i.gy, i64 94
  %i.ot = getelementptr i8, ptr %i.ha, i64 110
  %i.ou = getelementptr i8, ptr %i.hc, i64 126
  %i.ov = load i16, ptr %i.of, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ow = load i16, ptr %i.og, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ox = load i16, ptr %i.oh, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.oy = load i16, ptr %i.oi, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.oz = load i16, ptr %i.oj, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pa = load i16, ptr %i.ok, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pb = load i16, ptr %i.ol, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pc = load i16, ptr %i.om, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pd = insertelement <8 x i16> poison, i16 %i.ov, i64 0
  %i.pe = insertelement <8 x i16> %i.pd, i16 %i.ow, i64 1
  %i.pf = insertelement <8 x i16> %i.pe, i16 %i.ox, i64 2
  %i.pg = insertelement <8 x i16> %i.pf, i16 %i.oy, i64 3
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 4
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 5
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 6
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 7 ; 2 uses
  %i.pl = load i16, ptr %i.on, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pm = load i16, ptr %i.oo, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pn = load i16, ptr %i.op, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.po = load i16, ptr %i.oq, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pp = load i16, ptr %i.or, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pq = load i16, ptr %i.os, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pr = load i16, ptr %i.ot, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.ps = load i16, ptr %i.ou, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %i.pt = insertelement <8 x i16> poison, i16 %i.pl, i64 0
  %i.pu = insertelement <8 x i16> %i.pt, i16 %i.pm, i64 1
  %i.pv = insertelement <8 x i16> %i.pu, i16 %i.pn, i64 2
  %i.pw = insertelement <8 x i16> %i.pv, i16 %i.po, i64 3
  %i.px = insertelement <8 x i16> %i.pw, i16 %i.pp, i64 4
  %i.py = insertelement <8 x i16> %i.px, i16 %i.pq, i64 5
  %i.pz = insertelement <8 x i16> %i.py, i16 %i.pr, i64 6
  %i.qa = insertelement <8 x i16> %i.pz, i16 %i.ps, i64 7 ; 2 uses
  %i.qb = zext <8 x i16> %i.pk to <8 x i32>
  %i.qc = zext <8 x i16> %i.qa to <8 x i32>
  %i.qd = add nuw nsw <8 x i32> %i.qb, splat (i32 3329)
  %i.qe = sub nsw <8 x i32> %i.qd, %i.qc
  %i.qf = mul <8 x i32> %i.qe, %i.hn              ; 2 uses
  %i.qg = zext <8 x i32> %i.qf to <8 x i64>
  %i.qh = mul nuw nsw <8 x i64> %i.qg, splat (i64 5039)
  %i.qi = lshr <8 x i64> %i.qh, splat (i64 24)
  %i.qj = trunc nuw nsw <8 x i64> %i.qi to <8 x i32>
  %i.qk = mul <8 x i32> %i.qj, splat (i32 62207)
  %i.ql = add <8 x i32> %i.qk, %i.qf
  %i.qm = trunc <8 x i32> %i.ql to <8 x i16>      ; 2 uses
  %i.qn = add <8 x i16> %i.qm, splat (i16 -3329)  ; 2 uses
  %i.qo = add <8 x i16> %i.qa, %i.pk              ; 2 uses
  %i.qp = add <8 x i16> %i.qo, splat (i16 -3329)  ; 2 uses
  %i.qq = shufflevector <8 x i16> %i.ji, <8 x i16> %i.lt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qr = shufflevector <8 x i16> %i.oe, <8 x i16> %i.qp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qs = shufflevector <16 x i16> %i.qq, <16 x i16> %i.qr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qt = icmp slt <32 x i16> %i.qs, zeroinitializer
  %i.qu = shufflevector <8 x i16> %i.jh, <8 x i16> %i.ls, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qv = shufflevector <8 x i16> %i.od, <8 x i16> %i.qo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qw = shufflevector <16 x i16> %i.qu, <16 x i16> %i.qv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qx = select <32 x i1> %i.qt, <32 x i16> %i.qw, <32 x i16> zeroinitializer
  %i.qy = shufflevector <8 x i16> %i.ji, <8 x i16> %i.lt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qz = shufflevector <8 x i16> %i.oe, <8 x i16> %i.qp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ra = shufflevector <16 x i16> %i.qy, <16 x i16> %i.qz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rb = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ra, <32 x i16> zeroinitializer)
  %i.rc = or <32 x i16> %i.qx, %i.rb
  %i.rd = shufflevector <8 x i16> %i.jg, <8 x i16> %i.lr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.re = shufflevector <8 x i16> %i.oc, <8 x i16> %i.qn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rf = shufflevector <16 x i16> %i.rd, <16 x i16> %i.re, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rg = icmp slt <32 x i16> %i.rf, zeroinitializer
  %i.rh = shufflevector <8 x i16> %i.jf, <8 x i16> %i.lq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ri = shufflevector <8 x i16> %i.ob, <8 x i16> %i.qm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rj = shufflevector <16 x i16> %i.rh, <16 x i16> %i.ri, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rk = select <32 x i1> %i.rg, <32 x i16> %i.rj, <32 x i16> zeroinitializer
  %i.rl = shufflevector <8 x i16> %i.jg, <8 x i16> %i.lr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rm = shufflevector <8 x i16> %i.oc, <8 x i16> %i.qn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rn = shufflevector <16 x i16> %i.rl, <16 x i16> %i.rm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ro = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.rn, <32 x i16> zeroinitializer)
  %i.rp = or <32 x i16> %i.rk, %i.ro
  %interleaved.vec63 = shufflevector <32 x i16> %i.rc, <32 x i16> %i.rp, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec63, ptr %i.gp, align 2, !tbaa !38, !alias.scope !196, !noalias !193
  %index.next64 = add nuw i64 %index60, 8         ; 2 uses
  %i.rq = icmp eq i64 %index.next64, 32
  br i1 %i.rq, label %vector.memcheck66, label %vector.body59, !llvm.loop !198

scalar.ph57:                                      ; preds = %vector.memcheck50, %scalar.ph57
  %.021.idx.1 = phi i64 [ %.023.add.1.3, %scalar.ph57 ], [ 0, %vector.memcheck50 ] ; 4 uses
  %.1.1 = phi ptr [ %i.rs, %scalar.ph57 ], [ %.lcssa49, %vector.memcheck50 ]
  %.021.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.021.idx.1 ; 2 uses
  %i.rr = getelementptr i8, ptr %0, i64 %.021.idx.1
  %.ptr26.1 = getelementptr i8, ptr %i.rr, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %.1.1, i64 2 ; 3 uses
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !38
  %i.ru = zext i16 %i.rt to i32
  %.023.add.1.3 = add nuw nsw i64 %.021.idx.1, 16
  %i.rv = load <4 x i16>, ptr %.021.ptr.1, align 2, !tbaa !38 ; 2 uses
  %i.rw = load <4 x i16>, ptr %.ptr26.1, align 2, !tbaa !38 ; 2 uses
  %i.rx = zext <4 x i16> %i.rv to <4 x i32>
  %i.ry = zext <4 x i16> %i.rw to <4 x i32>
  %i.rz = add nuw nsw <4 x i32> %i.rx, splat (i32 3329)
  %i.sa = sub nsw <4 x i32> %i.rz, %i.ry
  %i.sb = insertelement <4 x i32> poison, i32 %i.ru, i64 0
  %i.sc = shufflevector <4 x i32> %i.sb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.sd = mul <4 x i32> %i.sa, %i.sc              ; 2 uses
  %i.se = zext <4 x i32> %i.sd to <4 x i64>
  %i.sf = mul nuw nsw <4 x i64> %i.se, splat (i64 5039)
  %i.sg = lshr <4 x i64> %i.sf, splat (i64 24)
  %i.sh = trunc nuw nsw <4 x i64> %i.sg to <4 x i32>
  %i.si = mul <4 x i32> %i.sh, splat (i32 62207)
  %i.sj = add <4 x i32> %i.si, %i.sd
  %i.sk = trunc <4 x i32> %i.sj to <4 x i16>
  %i.sl = add <4 x i16> %i.rw, %i.rv
  %i.sm = shufflevector <4 x i16> %i.sl, <4 x i16> %i.sk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.sn = add <8 x i16> %i.sm, splat (i16 -3329)  ; 2 uses
  %i.so = icmp slt <8 x i16> %i.sn, zeroinitializer
  %i.sp = select <8 x i1> %i.so, <8 x i16> %i.sm, <8 x i16> zeroinitializer
  %i.sq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sn, <8 x i16> zeroinitializer)
  %i.sr = or <8 x i16> %i.sp, %i.sq
  store <8 x i16> %i.sr, ptr %.021.ptr.1, align 2, !tbaa !38
  %i.ss = icmp samesign ult i64 %.021.idx.1, 496
  br i1 %i.ss, label %scalar.ph57, label %vector.memcheck66, !llvm.loop !199

vector.memcheck66:                                ; preds = %vector.body59, %scalar.ph57
  %.lcssa48 = phi ptr [ %i.rs, %scalar.ph57 ], [ %i.gm, %vector.body59 ] ; 5 uses
  %scevgep67 = getelementptr nuw i8, ptr %.lcssa48, i64 2
  %scevgep68 = getelementptr nuw i8, ptr %.lcssa48, i64 34
  %bound069 = icmp ult ptr %0, %scevgep68
  %bound170 = icmp ult ptr %scevgep67, %scevgep
  %found.conflict71 = and i1 %bound069, %bound170
  br i1 %found.conflict71, label %scalar.ph72, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck66
  %i.st = getelementptr i8, ptr %.lcssa48, i64 32
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph73
  %index75 = phi i64 [ 0, %vector.ph73 ], [ %index.next78, %vector.body74 ] ; 3 uses
  %i.su = shl nuw i64 %index75, 5                 ; 8 uses
  %i.sv = shl i64 %index75, 1
  %next.gep76 = getelementptr i8, ptr %.lcssa48, i64 %i.sv
  %i.sw = getelementptr i8, ptr %0, i64 %i.su     ; 17 uses
  %i.sx = getelementptr i8, ptr %0, i64 %i.su     ; 16 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 32     ; 2 uses
  %i.sz = getelementptr i8, ptr %0, i64 %i.su     ; 16 uses
  %i.ta = getelementptr i8, ptr %i.sz, i64 64     ; 2 uses
  %i.tb = getelementptr i8, ptr %0, i64 %i.su     ; 16 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 96     ; 2 uses
  %i.td = getelementptr i8, ptr %0, i64 %i.su     ; 16 uses
  %i.te = getelementptr i8, ptr %i.td, i64 128    ; 2 uses
  %i.tf = getelementptr i8, ptr %0, i64 %i.su     ; 16 uses
  %i.tg = getelementptr i8, ptr %i.tf, i64 160    ; 2 uses
  %i.th = getelementptr i8, ptr %0, i64 %i.su     ; 16 uses
  %i.ti = getelementptr i8, ptr %i.th, i64 192    ; 2 uses
  %i.tj = getelementptr i8, ptr %0, i64 %i.su     ; 16 uses
  %i.tk = getelementptr i8, ptr %i.tj, i64 224    ; 2 uses
  %i.tl = getelementptr i8, ptr %i.sw, i64 16     ; 2 uses
  %i.tm = getelementptr i8, ptr %i.sx, i64 48     ; 2 uses
  %i.tn = getelementptr i8, ptr %i.sz, i64 80     ; 2 uses
  %i.to = getelementptr i8, ptr %i.tb, i64 112    ; 2 uses
  %i.tp = getelementptr i8, ptr %i.td, i64 144    ; 2 uses
  %i.tq = getelementptr i8, ptr %i.tf, i64 176    ; 2 uses
  %i.tr = getelementptr i8, ptr %i.th, i64 208    ; 2 uses
  %i.ts = getelementptr i8, ptr %i.tj, i64 240    ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %next.gep76, i64 2
  %wide.load77 = load <8 x i16>, ptr %i.tt, align 2, !tbaa !38, !alias.scope !200
  %i.tu = zext <8 x i16> %wide.load77 to <8 x i32> ; 8 uses
  %i.tv = load i16, ptr %i.sw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.tw = load i16, ptr %i.sy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.tx = load i16, ptr %i.ta, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ty = load i16, ptr %i.tc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.tz = load i16, ptr %i.te, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ua = load i16, ptr %i.tg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ub = load i16, ptr %i.ti, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.uc = load i16, ptr %i.tk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ud = insertelement <8 x i16> poison, i16 %i.tv, i64 0
  %i.ue = insertelement <8 x i16> %i.ud, i16 %i.tw, i64 1
  %i.uf = insertelement <8 x i16> %i.ue, i16 %i.tx, i64 2
  %i.ug = insertelement <8 x i16> %i.uf, i16 %i.ty, i64 3
  %i.uh = insertelement <8 x i16> %i.ug, i16 %i.tz, i64 4
  %i.ui = insertelement <8 x i16> %i.uh, i16 %i.ua, i64 5
  %i.uj = insertelement <8 x i16> %i.ui, i16 %i.ub, i64 6
  %i.uk = insertelement <8 x i16> %i.uj, i16 %i.uc, i64 7 ; 2 uses
  %i.ul = load i16, ptr %i.tl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.um = load i16, ptr %i.tm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.un = load i16, ptr %i.tn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.uo = load i16, ptr %i.to, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.up = load i16, ptr %i.tp, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.uq = load i16, ptr %i.tq, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ur = load i16, ptr %i.tr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.us = load i16, ptr %i.ts, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ut = insertelement <8 x i16> poison, i16 %i.ul, i64 0
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 1
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 2
  %i.uw = insertelement <8 x i16> %i.uv, i16 %i.uo, i64 3
  %i.ux = insertelement <8 x i16> %i.uw, i16 %i.up, i64 4
  %i.uy = insertelement <8 x i16> %i.ux, i16 %i.uq, i64 5
  %i.uz = insertelement <8 x i16> %i.uy, i16 %i.ur, i64 6
  %i.va = insertelement <8 x i16> %i.uz, i16 %i.us, i64 7 ; 2 uses
  %i.vb = zext <8 x i16> %i.uk to <8 x i32>
  %i.vc = zext <8 x i16> %i.va to <8 x i32>
  %i.vd = add nuw nsw <8 x i32> %i.vb, splat (i32 3329)
  %i.ve = sub nsw <8 x i32> %i.vd, %i.vc
  %i.vf = mul <8 x i32> %i.ve, %i.tu              ; 2 uses
  %i.vg = zext <8 x i32> %i.vf to <8 x i64>
  %i.vh = mul nuw nsw <8 x i64> %i.vg, splat (i64 5039)
  %i.vi = lshr <8 x i64> %i.vh, splat (i64 24)
  %i.vj = trunc nuw nsw <8 x i64> %i.vi to <8 x i32>
  %i.vk = mul <8 x i32> %i.vj, splat (i32 62207)
  %i.vl = add <8 x i32> %i.vk, %i.vf
  %i.vm = trunc <8 x i32> %i.vl to <8 x i16>      ; 2 uses
  %i.vn = add <8 x i16> %i.vm, splat (i16 -3329)  ; 2 uses
  %i.vo = icmp slt <8 x i16> %i.vn, zeroinitializer
  %i.vp = select <8 x i1> %i.vo, <8 x i16> %i.vm, <8 x i16> zeroinitializer
  %i.vq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vn, <8 x i16> zeroinitializer)
  %i.vr = or <8 x i16> %i.vp, %i.vq               ; 8 uses
  %i.vs = extractelement <8 x i16> %i.vr, i64 4
  store i16 %i.vs, ptr %i.tp, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vt = extractelement <8 x i16> %i.vr, i64 5
  store i16 %i.vt, ptr %i.tq, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vu = extractelement <8 x i16> %i.vr, i64 6
  store i16 %i.vu, ptr %i.tr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vv = extractelement <8 x i16> %i.vr, i64 7
  store i16 %i.vv, ptr %i.ts, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vw = add <8 x i16> %i.va, %i.uk              ; 2 uses
  %i.vx = add <8 x i16> %i.vw, splat (i16 -3329)  ; 2 uses
  %i.vy = icmp slt <8 x i16> %i.vx, zeroinitializer
  %i.vz = select <8 x i1> %i.vy, <8 x i16> %i.vw, <8 x i16> zeroinitializer
  %i.wa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vx, <8 x i16> zeroinitializer)
  %i.wb = or <8 x i16> %i.vz, %i.wa               ; 8 uses
  %i.wc = extractelement <8 x i16> %i.wb, i64 4
  store i16 %i.wc, ptr %i.te, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wd = extractelement <8 x i16> %i.wb, i64 5
  store i16 %i.wd, ptr %i.tg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.we = extractelement <8 x i16> %i.wb, i64 6
  store i16 %i.we, ptr %i.ti, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wf = extractelement <8 x i16> %i.wb, i64 7
  store i16 %i.wf, ptr %i.tk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sw, i64 2
  %i.wh = getelementptr i8, ptr %i.sx, i64 34
  %i.wi = getelementptr i8, ptr %i.sz, i64 66
  %i.wj = getelementptr i8, ptr %i.tb, i64 98
  %i.wk = getelementptr i8, ptr %i.td, i64 130    ; 2 uses
  %i.wl = getelementptr i8, ptr %i.tf, i64 162    ; 2 uses
  %i.wm = getelementptr i8, ptr %i.th, i64 194    ; 2 uses
  %i.wn = getelementptr i8, ptr %i.tj, i64 226    ; 2 uses
  %i.wo = getelementptr i8, ptr %i.sw, i64 18
  %i.wp = getelementptr i8, ptr %i.sx, i64 50
  %i.wq = getelementptr i8, ptr %i.sz, i64 82
  %i.wr = getelementptr i8, ptr %i.tb, i64 114
  %i.ws = getelementptr i8, ptr %i.td, i64 146    ; 2 uses
  %i.wt = getelementptr i8, ptr %i.tf, i64 178    ; 2 uses
  %i.wu = getelementptr i8, ptr %i.th, i64 210    ; 2 uses
  %i.wv = getelementptr i8, ptr %i.tj, i64 242    ; 2 uses
  %i.ww = load i16, ptr %i.wg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wx = load i16, ptr %i.wh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wy = load i16, ptr %i.wi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wz = load i16, ptr %i.wj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xa = load i16, ptr %i.wk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xb = load i16, ptr %i.wl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xc = load i16, ptr %i.wm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xd = load i16, ptr %i.wn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xe = insertelement <8 x i16> poison, i16 %i.ww, i64 0
  %i.xf = insertelement <8 x i16> %i.xe, i16 %i.wx, i64 1
  %i.xg = insertelement <8 x i16> %i.xf, i16 %i.wy, i64 2
  %i.xh = insertelement <8 x i16> %i.xg, i16 %i.wz, i64 3
  %i.xi = insertelement <8 x i16> %i.xh, i16 %i.xa, i64 4
  %i.xj = insertelement <8 x i16> %i.xi, i16 %i.xb, i64 5
  %i.xk = insertelement <8 x i16> %i.xj, i16 %i.xc, i64 6
  %i.xl = insertelement <8 x i16> %i.xk, i16 %i.xd, i64 7 ; 2 uses
  %i.xm = load i16, ptr %i.wo, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xn = load i16, ptr %i.wp, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xo = load i16, ptr %i.wq, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xp = load i16, ptr %i.wr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xq = load i16, ptr %i.ws, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xr = load i16, ptr %i.wt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xs = load i16, ptr %i.wu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xt = load i16, ptr %i.wv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xu = insertelement <8 x i16> poison, i16 %i.xm, i64 0
  %i.xv = insertelement <8 x i16> %i.xu, i16 %i.xn, i64 1
  %i.xw = insertelement <8 x i16> %i.xv, i16 %i.xo, i64 2
  %i.xx = insertelement <8 x i16> %i.xw, i16 %i.xp, i64 3
  %i.xy = insertelement <8 x i16> %i.xx, i16 %i.xq, i64 4
  %i.xz = insertelement <8 x i16> %i.xy, i16 %i.xr, i64 5
  %i.ya = insertelement <8 x i16> %i.xz, i16 %i.xs, i64 6
  %i.yb = insertelement <8 x i16> %i.ya, i16 %i.xt, i64 7 ; 2 uses
  %i.yc = zext <8 x i16> %i.xl to <8 x i32>
  %i.yd = zext <8 x i16> %i.yb to <8 x i32>
  %i.ye = add nuw nsw <8 x i32> %i.yc, splat (i32 3329)
  %i.yf = sub nsw <8 x i32> %i.ye, %i.yd
  %i.yg = mul <8 x i32> %i.yf, %i.tu              ; 2 uses
  %i.yh = zext <8 x i32> %i.yg to <8 x i64>
  %i.yi = mul nuw nsw <8 x i64> %i.yh, splat (i64 5039)
  %i.yj = lshr <8 x i64> %i.yi, splat (i64 24)
  %i.yk = trunc nuw nsw <8 x i64> %i.yj to <8 x i32>
  %i.yl = mul <8 x i32> %i.yk, splat (i32 62207)
  %i.ym = add <8 x i32> %i.yl, %i.yg
  %i.yn = trunc <8 x i32> %i.ym to <8 x i16>      ; 2 uses
  %i.yo = add <8 x i16> %i.yn, splat (i16 -3329)  ; 2 uses
  %i.yp = icmp slt <8 x i16> %i.yo, zeroinitializer
  %i.yq = select <8 x i1> %i.yp, <8 x i16> %i.yn, <8 x i16> zeroinitializer
  %i.yr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yo, <8 x i16> zeroinitializer)
  %i.ys = or <8 x i16> %i.yq, %i.yr               ; 8 uses
  %i.yt = extractelement <8 x i16> %i.ys, i64 4
  store i16 %i.yt, ptr %i.ws, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yu = extractelement <8 x i16> %i.ys, i64 5
  store i16 %i.yu, ptr %i.wt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yv = extractelement <8 x i16> %i.ys, i64 6
  store i16 %i.yv, ptr %i.wu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yw = extractelement <8 x i16> %i.ys, i64 7
  store i16 %i.yw, ptr %i.wv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yx = add <8 x i16> %i.yb, %i.xl              ; 2 uses
  %i.yy = add <8 x i16> %i.yx, splat (i16 -3329)  ; 2 uses
  %i.yz = icmp slt <8 x i16> %i.yy, zeroinitializer
  %i.za = select <8 x i1> %i.yz, <8 x i16> %i.yx, <8 x i16> zeroinitializer
  %i.zb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yy, <8 x i16> zeroinitializer)
  %i.zc = or <8 x i16> %i.za, %i.zb               ; 8 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.ze = getelementptr i8, ptr %i.sx, i64 36
  %i.zf = getelementptr i8, ptr %i.sz, i64 68
  %i.zg = getelementptr i8, ptr %i.tb, i64 100
  %i.zh = getelementptr i8, ptr %i.td, i64 132    ; 2 uses
  %i.zi = getelementptr i8, ptr %i.tf, i64 164    ; 2 uses
  %i.zj = getelementptr i8, ptr %i.th, i64 196    ; 2 uses
  %i.zk = getelementptr i8, ptr %i.tj, i64 228    ; 2 uses
  %i.zl = extractelement <8 x i16> %i.zc, i64 4
  store i16 %i.zl, ptr %i.wk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zm = extractelement <8 x i16> %i.zc, i64 5
  store i16 %i.zm, ptr %i.wl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zn = extractelement <8 x i16> %i.zc, i64 6
  store i16 %i.zn, ptr %i.wm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zo = extractelement <8 x i16> %i.zc, i64 7
  store i16 %i.zo, ptr %i.wn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zp = getelementptr i8, ptr %i.sw, i64 20
  %i.zq = getelementptr i8, ptr %i.sx, i64 52
  %i.zr = getelementptr i8, ptr %i.sz, i64 84
  %i.zs = getelementptr i8, ptr %i.tb, i64 116
  %i.zt = getelementptr i8, ptr %i.td, i64 148    ; 2 uses
  %i.zu = getelementptr i8, ptr %i.tf, i64 180    ; 2 uses
end_hunk_4
begin_hunk_5_@scalar_inverse_ntt:vector.memcheck
  %i.bcb = mul nuw nsw <8 x i64> %i.bca, splat (i64 5039)
  %i.bcc = lshr <8 x i64> %i.bcb, splat (i64 24)
  %i.bcd = trunc nuw nsw <8 x i64> %i.bcc to <8 x i32>
  %i.bce = mul <8 x i32> %i.bcd, splat (i32 62207)
  %i.bcf = add <8 x i32> %i.bce, %i.bbz
  %i.bcg = trunc <8 x i32> %i.bcf to <8 x i16>    ; 2 uses
  %i.bch = add <8 x i16> %i.bcg, splat (i16 -3329) ; 2 uses
  %i.bci = icmp slt <8 x i16> %i.bch, zeroinitializer
  %i.bcj = select <8 x i1> %i.bci, <8 x i16> %i.bcg, <8 x i16> zeroinitializer
  %i.bck = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bch, <8 x i16> zeroinitializer)
  %i.bcl = or <8 x i16> %i.bcj, %i.bck
  store <8 x i16> %i.bcl, ptr %i.bbu, align 2, !tbaa !38
  %i.bcm = add <8 x i16> %wide.load119, %wide.load118 ; 2 uses
  %i.bcn = add <8 x i16> %i.bcm, splat (i16 -3329) ; 2 uses
  %i.bco = icmp slt <8 x i16> %i.bcn, zeroinitializer
  %i.bcp = select <8 x i1> %i.bco, <8 x i16> %i.bcm, <8 x i16> zeroinitializer
  %i.bcq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bcn, <8 x i16> zeroinitializer)
  %i.bcr = or <8 x i16> %i.bcp, %i.bcq
  store <8 x i16> %i.bcr, ptr %next.gep117, align 2, !tbaa !38
  %index.next120 = add nuw i64 %index116, 8       ; 2 uses
  %i.bcs = icmp eq i64 %index.next120, %n.vec112
  br i1 %i.bcs, label %middle.block121, label %vector.body115, !llvm.loop !212

middle.block121:                                  ; preds = %vector.body115
  %ind.escape122 = add i64 %i.bbq, -2
  %cmp.n123 = icmp eq i64 %i.bbo, %n.vec112
  br i1 %cmp.n123, label %.loopexit151, label %scalar.ph108.preheader

scalar.ph108.preheader:                           ; preds = %.preheader40, %middle.block121
  %.023.idx.5.ph = phi i64 [ %.021.add.5, %.preheader40 ], [ %i.bbq, %middle.block121 ]
  %.122.5.ph = phi ptr [ %.021.ptr.5, %.preheader40 ], [ %i.bbr, %middle.block121 ]
  br label %scalar.ph108

scalar.ph108:                                     ; preds = %scalar.ph108.preheader, %scalar.ph108
  %.023.idx.5 = phi i64 [ %.023.add.5, %scalar.ph108 ], [ %.023.idx.5.ph, %scalar.ph108.preheader ] ; 3 uses
  %.122.5 = phi ptr [ %i.bdp, %scalar.ph108 ], [ %.122.5.ph, %scalar.ph108.preheader ] ; 3 uses
  %.023.ptr.5 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.5 ; 2 uses
  %i.bct = load i16, ptr %.122.5, align 2, !tbaa !38 ; 2 uses
  %i.bcu = load i16, ptr %.023.ptr.5, align 2, !tbaa !38 ; 2 uses
  %i.bcv = zext i16 %i.bct to i32
  %i.bcw = zext i16 %i.bcu to i32
  %i.bcx = add nuw nsw i32 %i.bcv, 3329
  %i.bcy = sub nsw i32 %i.bcx, %i.bcw
  %i.bcz = mul i32 %i.bcy, %i.bbf                 ; 2 uses
  %i.bda = zext i32 %i.bcz to i64
  %i.bdb = mul nuw nsw i64 %i.bda, 5039
  %i.bdc = lshr i64 %i.bdb, 24
  %i.bdd = trunc nuw nsw i64 %i.bdc to i32
  %.neg.i.5 = mul i32 %i.bdd, 62207
  %i.bde = add i32 %.neg.i.5, %i.bcz
  %i.bdf = trunc i32 %i.bde to i16                ; 2 uses
  %i.bdg = add i16 %i.bdf, -3329                  ; 2 uses
  %isneg.i.i.5 = icmp slt i16 %i.bdg, 0
  %i.bdh = select i1 %isneg.i.i.5, i16 %i.bdf, i16 0
  %i.bdi = tail call i16 @llvm.smax.i16(i16 %i.bdg, i16 0)
  %i.bdj = or i16 %i.bdh, %i.bdi
  %.023.add.5 = add nsw i64 %.023.idx.5, 2        ; 2 uses
  store i16 %i.bdj, ptr %.023.ptr.5, align 2, !tbaa !38
  %i.bdk = add i16 %i.bcu, %i.bct                 ; 2 uses
  %i.bdl = add i16 %i.bdk, -3329                  ; 2 uses
  %isneg.i.5 = icmp slt i16 %i.bdl, 0
  %i.bdm = select i1 %isneg.i.5, i16 %i.bdk, i16 0
  %i.bdn = tail call i16 @llvm.smax.i16(i16 %i.bdl, i16 0)
  %i.bdo = or i16 %i.bdm, %i.bdn
  %i.bdp = getelementptr inbounds nuw i8, ptr %.122.5, i64 2 ; 2 uses
  store i16 %i.bdo, ptr %.122.5, align 2, !tbaa !38
  %i.bdq = icmp ult ptr %i.bdp, %.ptr26.5
  br i1 %i.bdq, label %scalar.ph108, label %.loopexit151, !llvm.loop !213

.loopexit151:                                     ; preds = %scalar.ph108, %middle.block121
  %.023.idx.5.lcssa = phi i64 [ %ind.escape122, %middle.block121 ], [ %.023.idx.5, %scalar.ph108 ]
  %.023.add.5.lcssa = phi i64 [ %i.bbq, %middle.block121 ], [ %.023.add.5, %scalar.ph108 ]
  %i.bdr = icmp slt i64 %.023.idx.5.lcssa, 510
  br i1 %i.bdr, label %.preheader40, label %.preheader39.preheader, !llvm.loop !209

.preheader39.preheader:                           ; preds = %.loopexit151
  %i.bds = ptrtoint ptr %0 to i64                 ; 2 uses
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader39.preheader, %.loopexit
  %.021.idx.6 = phi i64 [ %.023.add.6.lcssa, %.loopexit ], [ 0, %.preheader39.preheader ] ; 4 uses
  %.1.6 = phi ptr [ %i.bdt, %.loopexit ], [ %i.bbd, %.preheader39.preheader ]
  %.021.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.6 ; 3 uses
  %.021.add.6 = add nsw i64 %.021.idx.6, 256      ; 4 uses
  %.ptr26.6 = getelementptr inbounds i8, ptr %0, i64 %.021.add.6
  %i.bdt = getelementptr inbounds nuw i8, ptr %.1.6, i64 2 ; 2 uses
  %i.bdu = load i16, ptr %i.bdt, align 2, !tbaa !38
  %i.bdv = zext i16 %i.bdu to i32                 ; 2 uses
  %i.bdw = add i64 %.021.idx.6, %i.bds            ; 2 uses
  %i.bdx = add i64 %i.bdw, 256
  %i.bdy = add i64 %i.bdw, 2
  %i.bdz = tail call i64 @llvm.umax.i64(i64 %i.bdx, i64 %i.bdy)
  %i.bea = add i64 %.021.idx.6, %i.bds
  %i.beb = xor i64 %i.bea, -1
  %i.bec = add i64 %i.bdz, %i.beb                 ; 2 uses
  %i.bed = lshr i64 %i.bec, 1
  %i.bee = add nuw i64 %i.bed, 1                  ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.bec, 14
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %.preheader39
  %n.vec130 = and i64 %i.bee, -8                  ; 3 uses
  %i.bef = shl i64 %n.vec130, 1                   ; 2 uses
  %i.beg = add i64 %.021.add.6, %i.bef            ; 3 uses
  %i.beh = getelementptr i8, ptr %.021.ptr.6, i64 %i.bef
  %broadcast.splatinsert131 = insertelement <8 x i32> poison, i32 %i.bdv, i64 0
  %broadcast.splat132 = shufflevector <8 x i32> %broadcast.splatinsert131, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bei = getelementptr i8, ptr %0, i64 %.021.add.6
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next138, %vector.body133 ] ; 2 uses
  %i.bej = shl i64 %index134, 1                   ; 2 uses
  %next.gep135 = getelementptr i8, ptr %.021.ptr.6, i64 %i.bej ; 2 uses
  %i.bek = getelementptr i8, ptr %i.bei, i64 %i.bej ; 2 uses
  %wide.load136 = load <8 x i16>, ptr %next.gep135, align 2, !tbaa !38 ; 2 uses
  %wide.load137 = load <8 x i16>, ptr %i.bek, align 2, !tbaa !38 ; 2 uses
  %i.bel = zext <8 x i16> %wide.load136 to <8 x i32>
  %i.bem = zext <8 x i16> %wide.load137 to <8 x i32>
  %i.ben = add nuw nsw <8 x i32> %i.bel, splat (i32 3329)
  %i.beo = sub nsw <8 x i32> %i.ben, %i.bem
  %i.bep = mul <8 x i32> %i.beo, %broadcast.splat132 ; 2 uses
  %i.beq = zext <8 x i32> %i.bep to <8 x i64>
  %i.ber = mul nuw nsw <8 x i64> %i.beq, splat (i64 5039)
  %i.bes = lshr <8 x i64> %i.ber, splat (i64 24)
  %i.bet = trunc nuw nsw <8 x i64> %i.bes to <8 x i32>
  %i.beu = mul <8 x i32> %i.bet, splat (i32 62207)
  %i.bev = add <8 x i32> %i.beu, %i.bep
  %i.bew = trunc <8 x i32> %i.bev to <8 x i16>    ; 2 uses
  %i.bex = add <8 x i16> %i.bew, splat (i16 -3329) ; 2 uses
  %i.bey = icmp slt <8 x i16> %i.bex, zeroinitializer
  %i.bez = select <8 x i1> %i.bey, <8 x i16> %i.bew, <8 x i16> zeroinitializer
  %i.bfa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bex, <8 x i16> zeroinitializer)
  %i.bfb = or <8 x i16> %i.bez, %i.bfa
  store <8 x i16> %i.bfb, ptr %i.bek, align 2, !tbaa !38
  %i.bfc = add <8 x i16> %wide.load137, %wide.load136 ; 2 uses
  %i.bfd = add <8 x i16> %i.bfc, splat (i16 -3329) ; 2 uses
  %i.bfe = icmp slt <8 x i16> %i.bfd, zeroinitializer
  %i.bff = select <8 x i1> %i.bfe, <8 x i16> %i.bfc, <8 x i16> zeroinitializer
  %i.bfg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bfd, <8 x i16> zeroinitializer)
  %i.bfh = or <8 x i16> %i.bff, %i.bfg
  store <8 x i16> %i.bfh, ptr %next.gep135, align 2, !tbaa !38
  %index.next138 = add nuw i64 %index134, 8       ; 2 uses
  %i.bfi = icmp eq i64 %index.next138, %n.vec130
  br i1 %i.bfi, label %middle.block139, label %vector.body133, !llvm.loop !214

middle.block139:                                  ; preds = %vector.body133
  %ind.escape140 = add i64 %i.beg, -2
  %cmp.n141 = icmp eq i64 %i.bee, %n.vec130
  br i1 %cmp.n141, label %.loopexit, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %.preheader39, %middle.block139
  %.023.idx.6.ph = phi i64 [ %.021.add.6, %.preheader39 ], [ %i.beg, %middle.block139 ]
  %.122.6.ph = phi ptr [ %.021.ptr.6, %.preheader39 ], [ %i.beh, %middle.block139 ]
  br label %scalar.ph126

scalar.ph126:                                     ; preds = %scalar.ph126.preheader, %scalar.ph126
  %.023.idx.6 = phi i64 [ %.023.add.6, %scalar.ph126 ], [ %.023.idx.6.ph, %scalar.ph126.preheader ] ; 3 uses
  %.122.6 = phi ptr [ %i.bgf, %scalar.ph126 ], [ %.122.6.ph, %scalar.ph126.preheader ] ; 3 uses
  %.023.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.6 ; 2 uses
  %i.bfj = load i16, ptr %.122.6, align 2, !tbaa !38 ; 2 uses
  %i.bfk = load i16, ptr %.023.ptr.6, align 2, !tbaa !38 ; 2 uses
  %i.bfl = zext i16 %i.bfj to i32
  %i.bfm = zext i16 %i.bfk to i32
  %i.bfn = add nuw nsw i32 %i.bfl, 3329
  %i.bfo = sub nsw i32 %i.bfn, %i.bfm
  %i.bfp = mul i32 %i.bfo, %i.bdv                 ; 2 uses
  %i.bfq = zext i32 %i.bfp to i64
  %i.bfr = mul nuw nsw i64 %i.bfq, 5039
  %i.bfs = lshr i64 %i.bfr, 24
  %i.bft = trunc nuw nsw i64 %i.bfs to i32
  %.neg.i.6 = mul i32 %i.bft, 62207
  %i.bfu = add i32 %.neg.i.6, %i.bfp
  %i.bfv = trunc i32 %i.bfu to i16                ; 2 uses
  %i.bfw = add i16 %i.bfv, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bfw, 0
  %i.bfx = select i1 %isneg.i.i.6, i16 %i.bfv, i16 0
  %i.bfy = tail call i16 @llvm.smax.i16(i16 %i.bfw, i16 0)
  %i.bfz = or i16 %i.bfx, %i.bfy
  %.023.add.6 = add nsw i64 %.023.idx.6, 2        ; 2 uses
  store i16 %i.bfz, ptr %.023.ptr.6, align 2, !tbaa !38
  %i.bga = add i16 %i.bfk, %i.bfj                 ; 2 uses
  %i.bgb = add i16 %i.bga, -3329                  ; 2 uses
  %isneg.i.6 = icmp slt i16 %i.bgb, 0
  %i.bgc = select i1 %isneg.i.6, i16 %i.bga, i16 0
  %i.bgd = tail call i16 @llvm.smax.i16(i16 %i.bgb, i16 0)
  %i.bge = or i16 %i.bgc, %i.bgd
  %i.bgf = getelementptr inbounds nuw i8, ptr %.122.6, i64 2 ; 2 uses
  store i16 %i.bge, ptr %.122.6, align 2, !tbaa !38
  %i.bgg = icmp ult ptr %i.bgf, %.ptr26.6
  br i1 %i.bgg, label %scalar.ph126, label %.loopexit, !llvm.loop !215

.loopexit:                                        ; preds = %scalar.ph126, %middle.block139
  %.023.idx.6.lcssa = phi i64 [ %ind.escape140, %middle.block139 ], [ %.023.idx.6, %scalar.ph126 ]
  %.023.add.6.lcssa = phi i64 [ %i.beg, %middle.block139 ], [ %.023.add.6, %scalar.ph126 ]
  %i.bgh = icmp slt i64 %.023.idx.6.lcssa, 510
  br i1 %i.bgh, label %.preheader39, label %vector.body146, !llvm.loop !209

vector.body146:                                   ; preds = %.loopexit, %vector.body146
  %index147 = phi i64 [ %index.next149, %vector.body146 ], [ 0, %.loopexit ] ; 2 uses
  %i.bgi = shl nuw i64 %index147, 1
  %i.bgj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bgi ; 2 uses
  %wide.load148 = load <8 x i16>, ptr %i.bgj, align 2, !tbaa !38
  %i.bgk = zext <8 x i16> %wide.load148 to <8 x i32>
  %i.bgl = mul nuw nsw <8 x i32> %i.bgk, splat (i32 3303) ; 2 uses
  %i.bgm = zext nneg <8 x i32> %i.bgl to <8 x i64>
  %i.bgn = mul nuw nsw <8 x i64> %i.bgm, splat (i64 5039)
  %i.bgo = lshr <8 x i64> %i.bgn, splat (i64 24)
  %i.bgp = trunc nuw nsw <8 x i64> %i.bgo to <8 x i32>
  %i.bgq = mul nuw <8 x i32> %i.bgp, splat (i32 62207)
  %i.bgr = add nuw <8 x i32> %i.bgq, %i.bgl
  %i.bgs = trunc <8 x i32> %i.bgr to <8 x i16>    ; 2 uses
  %i.bgt = add <8 x i16> %i.bgs, splat (i16 -3329) ; 2 uses
  %i.bgu = icmp slt <8 x i16> %i.bgt, zeroinitializer
  %i.bgv = select <8 x i1> %i.bgu, <8 x i16> %i.bgs, <8 x i16> zeroinitializer
  %i.bgw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bgt, <8 x i16> zeroinitializer)
  %i.bgx = or <8 x i16> %i.bgv, %i.bgw
  store <8 x i16> %i.bgx, ptr %i.bgj, align 2, !tbaa !38
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.bgy = icmp eq i64 %index.next149, 256
  br i1 %i.bgy, label %scalar_mult_const.exit, label %vector.body146, !llvm.loop !216

scalar_mult_const.exit:                           ; preds = %vector.body146
  ret void
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.smax.v32i16(<32 x i16>, <32 x i16>) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !15, i64 64}
!10 = !{!"ossl_ml_kem_key_st", !11, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !14, i64 48, !14, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !14, i64 88, !14, i64 96, !6, i64 104, !7, i64 108, !14, i64 176}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!13 = !{!"p1 _ZTS9evp_md_st", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS21ossl_ml_kem_scalar_st", !11, i64 0}
!16 = !{!10, !15, i64 80}
!17 = !{!10, !11, i64 0}
!18 = !{!19, !6, i64 72}
!19 = !{!"", !14, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84}
!20 = !{!"long", !7, i64 0}
!21 = !{!10, !12, i64 8}
!22 = !{!10, !6, i64 104}
!23 = !{!10, !13, i64 16}
!24 = !{!10, !13, i64 24}
!25 = !{!10, !13, i64 32}
!26 = !{!10, !13, i64 40}
!27 = !{!10, !14, i64 176}
!28 = !{!19, !14, i64 0}
!29 = !{!10, !14, i64 96}
!30 = !{!19, !20, i64 8}
!31 = !{!19, !20, i64 32}
!32 = !{!10, !15, i64 72}
!33 = !{!10, !14, i64 48}
!34 = !{!10, !14, i64 56}
!35 = !{!19, !20, i64 16}
!36 = !{!10, !14, i64 88}
!37 = !{!19, !20, i64 24}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !7, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!19, !20, i64 48}
!44 = !{!7, !7, i64 0}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !41}
!47 = !{!19, !6, i64 84}
!48 = !{!19, !6, i64 64}
!49 = !{ptr @cbd_2, ptr @cbd_3}
!50 = distinct !{null}
!51 = distinct !{!51, !41}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = !{!58}
!58 = distinct !{!58, !54}
!59 = !{!60}
!60 = distinct !{!60, !54}
!61 = !{!53, !56, !58}
!62 = distinct !{!62, !41, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !41, !63}
!66 = !{!67}
!67 = distinct !{!67, !68}
!68 = distinct !{!68, !"LVerDomain"}
!69 = !{!70}
!70 = distinct !{!70, !68}
!71 = !{!72}
!72 = distinct !{!72, !68}
!73 = !{!74}
!74 = distinct !{!74, !68}
!75 = !{!67, !70, !72}
!76 = distinct !{!76, !41, !63, !64}
!77 = distinct !{!77, !41, !63}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = !{!19, !20, i64 40}
!82 = !{!19, !6, i64 76}
!83 = !{!19, !6, i64 80}
!84 = distinct !{!84, !41}
!85 = distinct !{!85, !41, !63, !64}
!86 = distinct !{!86, !41}
!87 = !{!19, !20, i64 56}
!88 = distinct !{!88, !41, !63, !64}
!89 = distinct !{!89, !41, !63, !64}
!90 = distinct !{!90, !41, !63, !64}
!91 = distinct !{!91, !41, !63, !64}
!92 = !{i64 2233007}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41, !63, !64}
!98 = distinct !{!98, !41, !63, !64}
!99 = distinct !{!99, !41, !63, !64}
!100 = distinct !{!100, !41, !64, !63}
!101 = distinct !{!101, !41}
!102 = distinct !{!102, !41, !63, !64}
!103 = distinct !{!103, !41, !64, !63}
!104 = distinct !{!104, !41, !63, !64}
!105 = distinct !{!105, !41, !64, !63}
!106 = distinct !{!106, !41, !63, !64}
!107 = distinct !{!107, !41, !64, !63}
!108 = !{!109}
!109 = distinct !{!109, !110}
!110 = distinct !{!110, !"LVerDomain"}
!111 = !{!112}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !41, !63, !64}
!114 = distinct !{!114, !41, !63}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!119}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !41, !63, !64}
!121 = distinct !{!121, !41, !63}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !41, !63, !64}
!128 = distinct !{!128, !41, !63}
!129 = !{!130}
end_hunk_5
