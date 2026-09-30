Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp4_unpack_dct_coeffs:bb.a
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = and i32 %.val, 7
  %i.s = shl i32 %i.q, %i.r
  %i.t = lshr i32 %i.s, 28
  %i.u = add i32 %.val, 4
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.u) ; 4 uses
  store i32 %i.v, ptr %i.f, align 8, !tbaa !48
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 1, !tbaa !49
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = and i32 %i.v, 7
  %i.ac = shl i32 %i.aa, %i.ab
  %i.ad = lshr i32 %i.ac, 28
  %i.ae = add i32 %i.v, 4
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.ae) ; 4 uses
  store i32 %i.af, ptr %i.f, align 8, !tbaa !48
  %i.ag = lshr i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !49
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = and i32 %i.af, 7
  %i.am = shl i32 %i.ak, %i.al
  %i.an = lshr i32 %i.am, 28
  %i.ao = add i32 %i.af, 4
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.ao) ; 4 uses
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !48
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 1, !tbaa !49
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = and i32 %i.ap, 7
  %i.aw = shl i32 %i.au, %i.av
  %i.ax = lshr i32 %i.aw, 28
  %i.ay = add i32 %i.ap, 4
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.ay)
  store i32 %i.az, ptr %i.f, align 8, !tbaa !48
  %i.ba = zext nneg i32 %i.t to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !71
  store ptr %i.bc, ptr %i.a, align 16, !tbaa !71
  %i.bd = zext nneg i32 %i.ad to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 16, !tbaa !71
  %i.bh = zext nneg i32 %i.an to i64
  %i.bi = getelementptr [8 x i8], ptr %i.e, i64 %i.bh ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71 ; 2 uses
  %i.bl = zext nneg i32 %i.ax to i64
  %i.bm = getelementptr [8 x i8], ptr %i.e, i64 %i.bl ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bk, ptr %i.bp, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !71
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.bt = insertelement <4 x ptr> poison, ptr %i.bk, i64 0
  %i.bu = shufflevector <4 x ptr> %i.bt, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.bu, ptr %i.br, align 16, !tbaa !71
  %i.bv = insertelement <4 x ptr> poison, ptr %i.bo, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.bw, ptr %i.bs, align 16, !tbaa !71
  %i.bx = getelementptr i8, ptr %i.bi, i64 256
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !71 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bm, i64 256
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !71 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.cd = insertelement <4 x ptr> poison, ptr %i.by, i64 0
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x ptr> %i.ce, ptr %i.cb, align 16, !tbaa !71
  %i.cf = insertelement <4 x ptr> poison, ptr %i.ca, i64 0
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x ptr> %i.cg, ptr %i.cc, align 16, !tbaa !71
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store <4 x ptr> %i.ce, ptr %i.ch, align 16, !tbaa !71
  store <4 x ptr> %i.cg, ptr %i.ci, align 16, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.by, ptr %i.cj, align 16, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store ptr %i.ca, ptr %i.ck, align 16, !tbaa !71
  %i.cl = getelementptr i8, ptr %i.bi, i64 384
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !71 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bm, i64 384
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !71 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !71
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.ct = insertelement <4 x ptr> poison, ptr %i.cm, i64 0
  %i.cu = shufflevector <4 x ptr> %i.ct, <4 x ptr> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x ptr> %i.cu, ptr %i.cr, align 16, !tbaa !71
  %i.cv = insertelement <4 x ptr> poison, ptr %i.co, i64 0
  %i.cw = shufflevector <4 x ptr> %i.cv, <4 x ptr> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x ptr> %i.cw, ptr %i.cs, align 16, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store <4 x ptr> %i.cu, ptr %i.cx, align 16, !tbaa !71
  store <4 x ptr> %i.cw, ptr %i.cy, align 16, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store <4 x ptr> %i.cu, ptr %i.cz, align 16, !tbaa !71
  store <4 x ptr> %i.cw, ptr %i.da, align 16, !tbaa !71
  %i.db = getelementptr i8, ptr %i.bi, i64 512
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !71
  %i.dd = getelementptr i8, ptr %i.bm, i64 512
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.dh = insertelement <4 x ptr> poison, ptr %i.dc, i64 0
  %i.di = shufflevector <4 x ptr> %i.dh, <4 x ptr> poison, <4 x i32> zeroinitializer ; 9 uses
  store <4 x ptr> %i.di, ptr %i.df, align 16, !tbaa !71
  %i.dj = insertelement <4 x ptr> poison, ptr %i.de, i64 0
  %i.dk = shufflevector <4 x ptr> %i.dj, <4 x ptr> poison, <4 x i32> zeroinitializer ; 9 uses
  store <4 x ptr> %i.dk, ptr %i.dg, align 16, !tbaa !71
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  store <4 x ptr> %i.di, ptr %i.dl, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.dm, align 16, !tbaa !71
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store <4 x ptr> %i.di, ptr %i.dn, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.do, align 16, !tbaa !71
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  store <4 x ptr> %i.di, ptr %i.dp, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.dq, align 16, !tbaa !71
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  store <4 x ptr> %i.di, ptr %i.dr, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.ds, align 16, !tbaa !71
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  store <4 x ptr> %i.di, ptr %i.dt, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.du, align 16, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  store <4 x ptr> %i.di, ptr %i.dv, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.dw, align 16, !tbaa !71
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  store <4 x ptr> %i.di, ptr %i.dx, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.dy, align 16, !tbaa !71
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store <4 x ptr> %i.di, ptr %i.dz, align 16, !tbaa !71
  store <4 x ptr> %i.dk, ptr %i.ea, align 16, !tbaa !71
  tail call fastcc void @vp4_set_tokens_base(ptr noundef nonnull %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 38272 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 27240
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.b

bb.b:                                             ; preds = %.preheader166, %.critedge151
  %indvars.iv256 = phi i64 [ 0, %.preheader166 ], [ %indvars.iv.next257, %.critedge151 ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.fn = icmp ne i64 %indvars.iv256, 0           ; 2 uses
  %i.fo = zext i1 %i.fn to i64                    ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.fo ; 5 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !29
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph, label %.preheader163

.lr.ph:                                           ; preds = %bb.b
  %i.fs = load ptr, ptr %i.ed, align 16, !tbaa !98
  br label %bb.c

.preheader163:                                    ; preds = %bb.c, %bb.b
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %2, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.ef, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.eh, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.ez, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fc, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fd, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fa, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fe, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.ff, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fb, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fg, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fh, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.ey, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fi, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fj, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fk, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fl, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.fm, align 16, !tbaa !29
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !29 ; 2 uses
  %.not146212 = icmp sgt i32 %i.fu, 0
  br i1 %.not146212, label %.preheader.lr.ph, label %.critedge151

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.fv, align 4, !tbaa !219
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 3, ptr %i.fw, align 4, !tbaa !220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fx = load i32, ptr %i.fp, align 4, !tbaa !29
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next, %i.fy
  br i1 %i.fz, label %bb.c, label %.preheader163, !llvm.loop !212

.preheader.lr.ph:                                 ; preds = %.preheader163
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv256
  %.sroa.sel = select i1 %i.fn, ptr %i.bg, ptr %i.a
  %i.gb = getelementptr inbounds nuw [512 x i8], ptr %i.ex, i64 %indvars.iv256 ; 3 uses
  %i.gc = load i32, ptr %i.fp, align 4, !tbaa !29 ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.preheader, label %.critedge151

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge149
  %i.ge = phi i32 [ %i.pz, %.critedge149 ], [ %i.fu, %.preheader.lr.ph ]
  %i.gf = phi i32 [ %i.qa, %.critedge149 ], [ %i.gc, %.preheader.lr.ph ] ; 2 uses
  %i.gg = phi i32 [ %i.qc, %.critedge149 ], [ 0, %.preheader.lr.ph ]
  %.0123213 = phi i32 [ %i.qb, %.critedge149 ], [ 0, %.preheader.lr.ph ]
  %.not147209 = icmp sgt i32 %i.gf, 0
  br i1 %.not147209, label %.lr.ph211.preheader, label %.critedge149

.lr.ph211.preheader:                              ; preds = %.preheader
  %.pre = load ptr, ptr %i.ed, align 16, !tbaa !98
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %.critedge
  %i.gh = phi ptr [ %.pre, %.lr.ph211.preheader ], [ %i.pl, %.critedge ]
  %indvars.iv253 = phi i64 [ 0, %.lr.ph211.preheader ], [ %indvars.iv.next254.a, %.critedge ]
  %i.gi = phi i32 [ 0, %.lr.ph211.preheader ], [ %i.py, %.critedge ] ; 2 uses
  %i.gj = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gj ; 4 uses
  %i.gl = load i64, ptr %i.gk, align 4, !tbaa !29
  store i64 %i.gl, ptr %i.ee, align 8, !tbaa !29
  %i.gm = getelementptr i8, ptr %i.gk, i64 8
  %i.gn = load i64, ptr %i.gm, align 4, !tbaa !29
  store i64 %i.gn, ptr %i.ef, align 16, !tbaa !29
  %i.go = getelementptr i8, ptr %i.gk, i64 16
  %i.gp = load i64, ptr %i.go, align 4, !tbaa !29
  store i64 %i.gp, ptr %i.eg, align 8, !tbaa !29
  %i.gq = getelementptr i8, ptr %i.gk, i64 24
  %i.gr = load i64, ptr %i.gq, align 4, !tbaa !29
  store i64 %i.gr, ptr %i.eh, align 16, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.ei, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.ej, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.el, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.em, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.eo, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.ep, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.er, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 3, i32 0, i32 3>, ptr %i.et, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph211, %bb.ab
  %indvars.iv250 = phi i64 [ 0, %.lr.ph211 ], [ %indvars.iv.next251.a, %bb.ab ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr @hilbert_offset, i64 %indvars.iv250 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !49  ; 2 uses
  %i.gu = zext i8 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !49  ; 2 uses
  %i.gx = zext i8 %i.gw to i32
  %i.gy = add nuw nsw i32 %i.gi, %i.gu            ; 2 uses
  %i.gz = add nuw nsw i32 %i.gg, %i.gx            ; 2 uses
  %i.ha = zext i8 %i.gw to i64
  %i.hb = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.ha
  %i.hc = zext i8 %i.gt to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hc ; 11 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56 ; 2 uses
  %i.hf = load i32, ptr %i.fp, align 4, !tbaa !29 ; 2 uses
  %.not143.a = icmp slt i32 %i.gy, %i.hf
  br i1 %.not143.a, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.hg = load i32, ptr %i.ft, align 4, !tbaa !29
  %.not144.a = icmp slt i32 %i.gz, %i.hg
  br i1 %.not144.a, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %bb.e
  %i.hh = load i32, ptr %i.ga, align 4, !tbaa !29
  %i.hi = mul nsw i32 %i.gz, %i.hf
  %i.hj = add i32 %i.hi, %i.gy
  %i.hk = add i32 %i.hj, %i.hh
  %i.hl = load ptr, ptr %i.ew, align 8, !tbaa !53
  %i.hm = sext i32 %i.hk to i64                   ; 3 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !68
  %i.hq = icmp eq i8 %i.hp, 8
  br i1 %i.hq, label %bb.ab, label %.preheader217

.preheader217:                                    ; preds = %bb.f, %bb.x
  %.0.i = phi i32 [ %i.nj, %bb.x ], [ 0, %bb.f ]  ; 5 uses
  %i.hr = sext i32 %.0.i to i64                   ; 7 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !29 ; 2 uses
  %.not.i = icmp eq i32 %i.ht, 0
  br i1 %.not.i, label %bb.g, label %bb.z

bb.g:                                             ; preds = %.preheader217
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !48 ; 5 uses
  %.val54.i = load i32, ptr %i.g, align 4, !tbaa !46
  %.not59.i = icmp sgt i32 %.val54.i, %.val.i
  br i1 %.not59.i, label %bb.h, label %vp4_unpack_vlcs.exit

bb.h:                                             ; preds = %bb.g
  %i.hu = getelementptr inbounds [8 x i8], ptr %.sroa.sel, i64 %i.hr
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !71 ; 3 uses
  %i.hw = load i32, ptr %i.j, align 8, !tbaa !47  ; 6 uses
  %i.hx = load ptr, ptr %1, align 8, !tbaa !45    ; 6 uses
  %i.hy = lshr i32 %.val.i, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 1, !tbaa !49
  %i.ic = tail call i32 @llvm.bswap.i32(i32 %i.ib)
  %i.id = and i32 %.val.i, 7
  %i.ie = shl i32 %i.ic, %i.id
  %i.if = lshr i32 %i.ie, 21
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ig ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !49
  %i.ij = sext i16 %i.ii to i32                   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !49 ; 2 uses
  %i.im = sext i16 %i.il to i32                   ; 3 uses
  %i.in = icmp slt i16 %i.il, 0
  br i1 %i.in, label %bb.i, label %get_vlc2.exit.i

bb.i:                                             ; preds = %bb.h
  %i.io = add i32 %.val.i, 11
  %i.ip = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 %i.io) ; 4 uses
  %i.iq = lshr i32 %i.ip, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !49
  %i.iu = tail call i32 @llvm.bswap.i32(i32 %i.it)
  %i.iv = and i32 %i.ip, 7
  %i.iw = shl i32 %i.iu, %i.iv
  %i.ix = add nsw i32 %i.im, 32
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = add i32 %i.iy, %i.ij
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ja ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !49
  %i.jd = sext i16 %i.jc to i32                   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !49 ; 2 uses
  %i.jg = sext i16 %i.jf to i32                   ; 2 uses
  %i.jh = icmp slt i16 %i.jf, 0
  br i1 %i.jh, label %bb.j, label %get_vlc2.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ji = sub i32 %i.ip, %i.im
  %i.jj = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 %i.ji) ; 3 uses
  %i.jk = lshr i32 %i.jj, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 1, !tbaa !49
  %i.jo = tail call i32 @llvm.bswap.i32(i32 %i.jn)
end_hunk_0
begin_hunk_1_@vp4_unpack_dct_coeffs:bb.a
bb.r:                                             ; preds = %get_coeff.exit.i
  %i.ms = add nsw i32 %.0.i56.i, %.0.i            ; 2 uses
  %i.mt = icmp sgt i32 %i.ms, 64
  br i1 %i.mt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.mu = load ptr, ptr %0, align 16, !tbaa !51
  %i.mv = sub nsw i32 64, %.0.i                   ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mu, i32 noundef 48, ptr noundef nonnull @.str.44, i32 noundef %.0.i56.i, i32 noundef %i.mv) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre-phi.i = phi i32 [ 64, %bb.s ], [ %i.ms, %bb.r ]
  %.046.i = phi i32 [ %i.mv, %bb.s ], [ %.0.i56.i, %bb.r ]
  %i.mw = sext i16 %i.lx to i32
  %i.mx = shl nsw i32 %i.mw, 9
  %i.my = shl i32 %.046.i, 2
  %i.mz = add nsw i32 %i.my, %i.mx
  %i.na = trunc i32 %i.mz to i16
  %i.nb = or disjoint i16 %i.na, 1
  br label %bb.x

bb.u:                                             ; preds = %get_coeff.exit.i
  %.not53.i = icmp eq i32 %.0.i, 0
  br i1 %.not53.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nc = load ptr, ptr %i.ew, align 8, !tbaa !53
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.hm
  store i16 %i.lx, ptr %i.nd, align 2, !tbaa !86
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ne = shl i16 %i.lx, 2
  %i.nf = or disjoint i16 %i.ne, 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.sink.i = phi i16 [ %i.nf, %bb.w ], [ %i.nb, %bb.t ]
  %.1.i = phi i32 [ %.0.i, %bb.w ], [ %.pre-phi.i, %bb.t ] ; 2 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.hr ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !85 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 2
  store ptr %i.ni, ptr %i.ng, align 8, !tbaa !85
  store i16 %.sink.i, ptr %i.nh, align 2, !tbaa !56
  %i.nj = add nsw i32 %.1.i, 1
  %i.nk = icmp sgt i32 %.1.i, 62
  br i1 %i.nk, label %.loopexit, label %.preheader217, !llvm.loop !213

bb.y:                                             ; preds = %bb.m
  %i.nl = load ptr, ptr %0, align 16, !tbaa !51
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nl, i32 noundef 16, ptr noundef nonnull @.str.45, i32 noundef %.167.i.i) #11
  br label %vp4_unpack_vlcs.exit

bb.z:                                             ; preds = %.preheader217
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hr
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.hr ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !85 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  store ptr %i.np, ptr %i.nn, align 8, !tbaa !85
  store i16 0, ptr %i.no, align 2, !tbaa !56
  %i.nq = add nsw i32 %i.ht, -1
  store i32 %i.nq, ptr %i.nm, align 4, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.z, %get_eob_run.exit.i
  %i.nr = load ptr, ptr %i.ew, align 8, !tbaa !53
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.hm ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  %i.nu = load i8, ptr %i.nt, align 2, !tbaa !68
  %i.nv = zext i8 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr @vp4_pred_block_type_map, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !49  ; 3 uses
  %i.ny = zext i8 %i.nx to i32                    ; 7 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !220
  %i.ob = icmp eq i32 %i.oa, %i.ny
  br i1 %i.ob, label %bb.aa, label %.thread20.i

bb.aa:                                            ; preds = %.loopexit
  %i.oc = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !219 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.hd, i64 108
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !220
  %i.og = icmp eq i32 %i.of, %i.ny
  br i1 %i.og, label %.thread16.i, label %.thread.i

.thread20.i:                                      ; preds = %.loopexit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.hd, i64 108
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !220
  %i.oj = icmp eq i32 %i.oi, %i.ny
  br i1 %i.oj, label %.thread24.i, label %.thread.thread.i

.thread24.i:                                      ; preds = %.thread20.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.hd, i64 104
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !219
  br label %.thread.i

.thread.i:                                        ; preds = %.thread24.i, %bb.aa
  %.15.i = phi i32 [ %i.ol, %.thread24.i ], [ %i.od, %bb.aa ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.hd, i64 52
  %i.on = load i32, ptr %i.om, align 4, !tbaa !220
  %i.oo = icmp eq i32 %i.on, %i.ny
  br i1 %i.oo, label %.thread16.i, label %.thread10.i

.thread.thread.i:                                 ; preds = %.thread20.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.hd, i64 52
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !220
  %i.or = icmp eq i32 %i.oq, %i.ny
  br i1 %i.or, label %.thread30.i, label %.critedge.i

.thread30.i:                                      ; preds = %.thread.thread.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !219
  br label %.thread10.i

.thread10.i:                                      ; preds = %.thread30.i, %.thread.i
  %.215.i = phi i32 [ %i.ot, %.thread30.i ], [ %.15.i, %.thread.i ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.hd, i64 68
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !220
  %i.ow = icmp eq i32 %i.ov, %i.ny
  br i1 %i.ow, label %.thread16.i, label %.critedge.i

.thread16.i:                                      ; preds = %.thread10.i, %.thread.i, %bb.aa
  %.sink.i155 = phi i64 [ 48, %bb.aa ], [ -8, %.thread.i ], [ 8, %.thread10.i ]
  %.sink41.i = phi i32 [ %i.od, %bb.aa ], [ %.15.i, %.thread.i ], [ %.215.i, %.thread10.i ]
  %i.ox = getelementptr inbounds i8, ptr %i.he, i64 %.sink.i155
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !219
  %i.oz = add nsw i32 %i.oy, %.sink41.i
  %i.pa = sdiv i32 %i.oz, 2
  %.pre260 = zext i8 %i.nx to i64
  br label %vp4_dc_pred.exit

.critedge.i:                                      ; preds = %.thread10.i, %.thread.thread.i
  %i.pb = zext i8 %i.nx to i64                    ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !29
  br label %vp4_dc_pred.exit

vp4_dc_pred.exit:                                 ; preds = %.thread16.i, %.critedge.i
  %.pre-phi = phi i64 [ %.pre260, %.thread16.i ], [ %i.pb, %.critedge.i ]
  %i.pe = phi i32 [ %i.pa, %.thread16.i ], [ %i.pd, %.critedge.i ]
  %i.pf = load i16, ptr %i.ns, align 2, !tbaa !86
  %i.pg = trunc i32 %i.pe to i16
  %i.ph = add i16 %i.pf, %i.pg                    ; 2 uses
  store i16 %i.ph, ptr %i.ns, align 2, !tbaa !86
  %i.pi = getelementptr inbounds nuw i8, ptr %i.hd, i64 60
  store i32 %i.ny, ptr %i.pi, align 4, !tbaa !220
  %i.pj = sext i16 %i.ph to i32                   ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !29
  store i32 %i.pj, ptr %i.he, align 8, !tbaa !219
  br label %bb.ab

bb.ab:                                            ; preds = %vp4_dc_pred.exit, %bb.d, %bb.f, %bb.e
  %indvars.iv.next251.a = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next251.a, 16
  br i1 %exitcond, label %.critedge, label %bb.d, !llvm.loop !214

.critedge:                                        ; preds = %bb.ab
  %i.pl = load ptr, ptr %i.ed, align 16, !tbaa !98 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.gj ; 4 uses
  %i.pn = load i64, ptr %i.er, align 8, !tbaa !29
  store i64 %i.pn, ptr %i.pm, align 4, !tbaa !29
  %i.po = getelementptr i8, ptr %i.pm, i64 8
  %i.pp = load i64, ptr %i.es, align 16, !tbaa !29
  store i64 %i.pp, ptr %i.po, align 4, !tbaa !29
  %i.pq = getelementptr i8, ptr %i.pm, i64 16
  %i.pr = load i64, ptr %i.et, align 8, !tbaa !29
  store i64 %i.pr, ptr %i.pq, align 4, !tbaa !29
  %i.ps = getelementptr i8, ptr %i.pm, i64 24
  %i.pt = load i64, ptr %i.eu, align 16, !tbaa !29 ; 2 uses
  store i64 %i.pt, ptr %i.ps, align 4, !tbaa !29
  %i.pu = load i64, ptr %i.ek, align 16, !tbaa !29
  store i64 %i.pu, ptr %i.ez, align 16, !tbaa !29
  %i.pv = load i64, ptr %i.en, align 16, !tbaa !29
  store i64 %i.pv, ptr %i.fa, align 16, !tbaa !29
  %i.pw = load i64, ptr %i.eq, align 16, !tbaa !29
  store i64 %i.pw, ptr %i.fb, align 16, !tbaa !29
  store i64 %i.pt, ptr %i.ey, align 16, !tbaa !29
  %indvars.iv.next254.a = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.px = load i32, ptr %i.fp, align 4, !tbaa !29 ; 2 uses
  %indvars.iv.next254.tr = trunc nuw i64 %indvars.iv.next254.a to i32
  %i.py = shl nuw i32 %indvars.iv.next254.tr, 2   ; 2 uses
  %.not147 = icmp slt i32 %i.py, %i.px
  br i1 %.not147, label %.lr.ph211, label %.critedge149.loopexit, !llvm.loop !215

.critedge149.loopexit:                            ; preds = %.critedge
  %.pre259 = load i32, ptr %i.ft, align 4, !tbaa !29
  br label %.critedge149

.critedge149:                                     ; preds = %.critedge149.loopexit, %.preheader
  %i.pz = phi i32 [ %.pre259, %.critedge149.loopexit ], [ %i.ge, %.preheader ] ; 2 uses
  %i.qa = phi i32 [ %i.px, %.critedge149.loopexit ], [ %i.gf, %.preheader ]
  %i.qb = add nuw nsw i32 %.0123213, 1            ; 2 uses
  %i.qc = shl nuw nsw i32 %i.qb, 2                ; 2 uses
  %.not146 = icmp slt i32 %i.qc, %i.pz
  br i1 %.not146, label %.preheader, label %.critedge151, !llvm.loop !216

.critedge151:                                     ; preds = %.critedge149, %.preheader.lr.ph, %.preheader163
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.qd = load ptr, ptr %0, align 16, !tbaa !51
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !92
  %3 = lshr i32 %i.qf, 12
  %i.qg = and i32 %3, 2
  %4 = xor i32 %i.qg, 3
  %5 = zext nneg i32 %4 to i64
  %.not144 = icmp samesign ult i64 %indvars.iv.next257, %5
  br i1 %.not144, label %bb.b, label %.critedge153, !llvm.loop !217

.critedge153:                                     ; preds = %.critedge151
  tail call fastcc void @vp4_set_tokens_base(ptr noundef nonnull %0)
  br label %vp4_unpack_vlcs.exit

vp4_unpack_vlcs.exit:                             ; preds = %bb.g, %bb.y, %bb.a, %.critedge153
  %.9 = phi i32 [ -1094995529, %bb.a ], [ 0, %.critedge153 ], [ -1, %bb.y ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_loop_filter(ptr noundef %0, i32 noundef range(i32 -2147483648, 3) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37740 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = icmp ne i32 %1, 0
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29   ; 11 uses
  %i.g = sext i32 %1 to i64                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.g
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.o = load i32, ptr %i.n, align 16, !tbaa !77
  %.not = icmp eq i32 %i.o, 0
  %i.p = sub nsw i64 0, %i.m
  %spec.select = select i1 %.not, i64 %i.p, i64 %i.m ; 14 uses
  %i.q = icmp slt i32 %2, %3
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge76.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.d
  %i.t = load i32, ptr %i.s, align 4, !tbaa !29
  %i.u = icmp sgt i32 %i.f, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.y = add nsw i32 %i.t, -1
  %i.z = shl nsw i64 %spec.select, 3
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge76.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aa = add nsw i32 %i.f, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.g
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = mul nsw i32 %i.f, %2
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.ai = shl nsw i32 %2, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %spec.select, %i.aj
  %i.al = getelementptr i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.g
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.al, i64 %i.ap
  %i.ar = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.as = zext nneg i32 %i.f to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  %.not105 = icmp eq i32 %i.f, 1
  %exitcond.peel.not = icmp eq i32 %i.f, 1
  %wide.trip.count92 = zext nneg i32 %i.f to i64
  %.not106 = icmp eq i32 %i.f, 1
  %exitcond93.peel.not = icmp eq i32 %i.f, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.06375 = phi i32 [ %i.cx, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.06473 = phi ptr [ %invariant.gep, %._crit_edge ], [ %i.aq, %.preheader.preheader ] ; 11 uses
  %.06672 = phi i32 [ %.us-phi, %._crit_edge ], [ %i.af, %.preheader.preheader ] ; 2 uses
  %i.at = icmp sgt i32 %.06375, 0                 ; 4 uses
  %i.au = icmp slt i32 %.06375, %i.y
  %invariant.gep = getelementptr i8, ptr %.06473, i64 %i.z ; 3 uses
  %.fr = freeze i1 %i.au
  %i.av = sext i32 %.06672 to i64                 ; 6 uses
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !68
  %.not68.us.peel = icmp eq i8 %i.az, 8           ; 2 uses
  br i1 %.fr, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %.not68.us.peel, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.preheader
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %i.x, align 16, !tbaa !83
  tail call void %i.ba(ptr noundef %.06473, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not105, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.av
  %i.bd = getelementptr i8, ptr %i.bc, i64 6
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !68
  %i.bf = icmp eq i8 %i.be, 8
  br i1 %i.bf, label %bb.f, label %.lr.ph.split.preheader114

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.bh = getelementptr inbounds nuw i8, ptr %.06473, i64 8
  tail call void %i.bg(ptr noundef nonnull %i.bh, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11
  br label %.lr.ph.split.preheader114

bb.g:                                             ; preds = %.lr.ph.split.preheader
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.preheader114

.lr.ph.split.preheader114:                        ; preds = %bb.e, %bb.f, %bb.g
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.preheader
  br i1 %.not68.us.peel, label %bb.o, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.preheader
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.x, align 16, !tbaa !83
  tail call void %i.bi(ptr noundef %.06473, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11
  %.pre97.pre = load ptr, ptr %i.v, align 8, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre97 = phi ptr [ %.pre97.pre, %bb.i ], [ %i.aw, %bb.h ] ; 3 uses
  br i1 %.not106, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr [4 x i8], ptr %.pre97, i64 %i.av
  %i.bk = getelementptr i8, ptr %i.bj, i64 6
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !68
  %i.bm = icmp eq i8 %i.bl, 8
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %.06473, i64 8
  tail call void %i.bn(ptr noundef nonnull %i.bo, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bp = phi ptr [ %.pre, %bb.l ], [ %.pre97, %bb.k ], [ %.pre97, %bb.j ]
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.av
  %i.br = getelementptr [4 x i8], ptr %i.bq, i64 %i.as
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !68
  %i.bu = icmp eq i8 %i.bt, 8
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.x, align 16, !tbaa !83
  tail call void %i.bv(ptr noundef %invariant.gep, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.split.us.preheader
  br i1 %exitcond93.peel.not, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.o, %bb.w
  %indvars.iv87.in = phi i64 [ %indvars.iv87, %bb.w ], [ %i.av, %bb.o ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %bb.w ], [ 1, %bb.o ] ; 6 uses
  %indvars.iv87 = add nsw i64 %indvars.iv87.in, 1 ; 4 uses
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %indvars.iv87
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !68
  %.not68.us = icmp eq i8 %i.bz, 8
  br i1 %.not68.us, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.ca = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.cb = shl nuw nsw i64 %indvars.iv85, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %.06473, i64 %i.cb
  tail call void %i.ca(ptr noundef nonnull %i.cc, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.x, align 16, !tbaa !83
  %i.ce = shl nuw nsw i64 %indvars.iv85, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.06473, i64 %i.ce
  tail call void %i.cd(ptr noundef nonnull %i.cf, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11
  br label %bb.r

end_hunk_1
