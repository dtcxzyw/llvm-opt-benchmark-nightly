Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/imc?download=true
inline.NumInlined: 34
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@imc_decode_frame:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 15648 ; 2 uses
  store ptr %0, ptr %i.m, align 16, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = shl nsw i32 %i.o, 6
  %i.q = icmp slt i32 %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #10
  br label %imc_decode_block.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 256, ptr %i.r, align 8, !tbaa !59
  %i.s = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #10 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %imc_decode_block.exit.thread, label %.preheader43

.preheader43:                                     ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 4, !tbaa !35
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader43
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 14296 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 14272
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 14232 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 14244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 14248 ; 10 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 14240   ; 24 uses
  %i.ad = getelementptr i8, ptr %i.k, i64 15328   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 15332
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 15396 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 15364
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 15520
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 15640
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 15636
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 15632
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 15628
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 15624
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 15620
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 15616
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 15612
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 15608
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 15604
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 15600
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 15596
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 15592
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 15588
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 15584
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 15580
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 15576
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 15572
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 15568
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 15564
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 15560
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 15556
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 15552
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 15548
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 15544
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 15540
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 15536
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 15532
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 15528
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 15524
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 14112 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 14288
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 14280
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 14304 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 14256
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 13088
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 14816
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.gt
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.gt ] ; 3 uses
  %.03567 = phi ptr [ %i.g, %.lr.ph ], [ %i.bys, %bb.gt ] ; 2 uses
  %i.fl = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !65
  store ptr %i.fn, ptr %i.x, align 8, !tbaa !66
  %i.fo = load ptr, ptr %i.y, align 16, !tbaa !67
  call void %i.fo(ptr noundef nonnull %i.e, ptr noundef %.03567, i32 noundef 32) #10
  store ptr %i.e, ptr %i.z, align 8, !tbaa !68
  store i32 512, ptr %i.aa, align 4, !tbaa !69
  store i32 520, ptr %i.ab, align 8, !tbaa !70
  %i.fp = getelementptr inbounds nuw [6544 x i8], ptr %i.k, i64 %indvars.iv ; 256 uses
  %i.fq = load i32, ptr %i.e, align 16, !tbaa !33
  %i.fr = call i32 @llvm.bswap.i32(i32 %i.fq)     ; 2 uses
  store i32 9, ptr %i.ac, align 16, !tbaa !71
  %i.fs = and i32 %i.fr, 201326592
  %.not.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ft = lshr i32 %i.fr, 23
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.ft) #10
  br label %imc_decode_block.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.fu = load i32, ptr %i.fj, align 1            ; 2 uses
  %i.fv = call i32 @llvm.bswap.i32(i32 %i.fu)     ; 7 uses
  %i.fw = shl i32 %i.fv, 1                        ; 5 uses
  %.not177.i = icmp sgt i32 %i.fw, -1             ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 6016 ; 4 uses
  br i1 %.not177.i, label %bb.g, label %.preheader253.preheader.i

bb.g:                                             ; preds = %bb.f
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16, !tbaa !36
  %i.fx = icmp eq i32 %.pre.i, 0
  br i1 %i.fx, label %bb.h, label %.preheader253.preheader.i

.preheader253.preheader.i:                        ; preds = %bb.g, %bb.f
  store <4 x float> splat (float 1.000000e+00), ptr %i.fp, align 4, !tbaa !29
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.fy, align 4, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store <4 x float> splat (float 1.000000e+00), ptr %i.fz, align 4, !tbaa !29
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.ga, align 4, !tbaa !29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  store <4 x float> splat (float 1.000000e+00), ptr %i.gb, align 4, !tbaa !29
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.gc, align 4, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 96
  store <4 x float> splat (float 1.000000e+00), ptr %i.gd, align 4, !tbaa !29
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.ge, align 4, !tbaa !29
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fp, i64 896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.gf, i8 0, i64 1024, i1 false), !tbaa !29
  store i32 0, ptr %.phi.trans.insert.i, align 16, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %.preheader253.preheader.i, %bb.g
  %i.gg = lshr i32 %i.fu, 3
  store i32 13, ptr %i.ac, align 16, !tbaa !71
  %i.gh = and i32 %i.gg, 1
  %i.gi = and i32 %i.fv, 268435456
  %.not179.i = icmp eq i32 %i.gi, 0               ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 3200 ; 8 uses
  br i1 %.not179.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gk = lshr i32 %i.fv, 22
  %i.gl = and i32 %i.gk, 31
  store i32 %i.gl, ptr %i.ad, align 16, !tbaa !72
  %i.gm = load i32, ptr %i.fk, align 2, !tbaa !33
  %i.gn = call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = lshr i32 %i.gn, 23
  %i.gp = and i32 %i.go, 127                      ; 2 uses
  store i32 25, ptr %i.ac, align 16, !tbaa !71
  store i32 %i.gp, ptr %i.gj, align 4, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i.i = phi i64 [ 1, %bb.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 2 uses
  %i.gq = load i32, ptr %i.ac, align 16, !tbaa !71 ; 3 uses
  %i.gr = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.gs = lshr i32 %i.gq, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 1, !tbaa !33
  %i.gw = call i32 @llvm.bswap.i32(i32 %i.gv)
  %i.gx = and i32 %i.gq, 7
  %i.gy = shl i32 %i.gw, %i.gx
  %i.gz = lshr i32 %i.gy, 28
  %i.ha = add i32 %i.gq, 4
  %i.hb = call i32 @llvm.umin.i32(i32 %i.gr, i32 %i.ha)
  store i32 %i.hb, ptr %i.ac, align 16, !tbaa !71
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i.i
  store i32 %i.gz, ptr %i.hc, align 4, !tbaa !32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 32
  br i1 %exitcond.not.i.i, label %imc_read_level_coeffs_raw.exit.thread.i, label %bb.j, !llvm.loop !73

bb.k:                                             ; preds = %bb.h
  %i.hd = lshr i32 %i.fw, 30
  %i.he = zext nneg i32 %i.hd to i64              ; 2 uses
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr @huffman_vlc, i64 %i.he
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr @imc_cb_select, i64 %i.he
  br i1 %.not177.i, label %.lr.ph.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hh = lshr i32 %i.fv, 20
  %i.hi = and i32 %i.hh, 127
  store i32 20, ptr %i.ac, align 16, !tbaa !71
  store i32 %i.hi, ptr %i.gj, align 4, !tbaa !32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.k
  %i.hj = lshr i32 %i.fw, 31
  %i.hk = zext nneg i32 %i.hj to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i.i
  %indvars.iv.i184.i = phi i64 [ %i.hk, %.lr.ph.i.i ], [ %indvars.iv.next.i185.i, %bb.p ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv.i184.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !33
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !74 ; 2 uses
  %i.hq = load i32, ptr %i.ac, align 16, !tbaa !71 ; 4 uses
  %i.hr = load i32, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %i.hs = lshr i32 %i.hq, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 1, !tbaa !33
  %i.hw = call i32 @llvm.bswap.i32(i32 %i.hv)
  %i.hx = and i32 %i.hq, 7
  %i.hy = shl i32 %i.hw, %i.hx
  %i.hz = lshr i32 %i.hy, 23
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !33
  %i.id = sext i16 %i.ic to i32                   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !33 ; 2 uses
  %i.ig = sext i16 %i.if to i32                   ; 2 uses
  %i.ih = icmp slt i16 %i.if, 0
  br i1 %i.ih, label %bb.n, label %get_vlc2.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ii = add i32 %i.hq, 9
  %i.ij = call i32 @llvm.umin.i32(i32 %i.hr, i32 %i.ii) ; 3 uses
  %i.ik = lshr i32 %i.ij, 3
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.il
  %i.in = load i32, ptr %i.im, align 1, !tbaa !33
  %i.io = call i32 @llvm.bswap.i32(i32 %i.in)
  %i.ip = and i32 %i.ij, 7
  %i.iq = shl i32 %i.io, %i.ip
  %i.ir = add nsw i32 %i.ig, 32
  %i.is = lshr i32 %i.iq, %i.ir
  %i.it = add i32 %i.is, %i.id
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !33
  %i.iy = sext i16 %i.ix to i32
  %i.iz = load i16, ptr %i.iv, align 2, !tbaa !33
  %i.ja = sext i16 %i.iz to i32
  br label %get_vlc2.exit.i.i

get_vlc2.exit.i.i:                                ; preds = %bb.n, %bb.m
  %.167.i.i.i = phi i32 [ %i.ja, %bb.n ], [ %i.id, %bb.m ] ; 2 uses
  %.165.i.i.i = phi i32 [ %i.ij, %bb.n ], [ %i.hq, %bb.m ]
  %.1.i.i.i = phi i32 [ %i.iy, %bb.n ], [ %i.ig, %bb.m ]
  %i.jb = add i32 %.1.i.i.i, %.165.i.i.i
  %i.jc = call i32 @llvm.umin.i32(i32 %i.hr, i32 %i.jb)
  store i32 %i.jc, ptr %i.ac, align 16, !tbaa !71
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i184.i ; 3 uses
  store i32 %.167.i.i.i, ptr %i.jd, align 4, !tbaa !32
  %i.je = icmp eq i32 %.167.i.i.i, 17
  br i1 %i.je, label %bb.o, label %bb.p

bb.o:                                             ; preds = %get_vlc2.exit.i.i
  %i.jf = load i32, ptr %i.ac, align 16, !tbaa !71 ; 3 uses
  %i.jg = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.jh = lshr i32 %i.jf, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 1, !tbaa !33
  %i.jl = call i32 @llvm.bswap.i32(i32 %i.jk)
  %i.jm = and i32 %i.jf, 7
  %i.jn = shl i32 %i.jl, %i.jm
  %i.jo = lshr i32 %i.jn, 28
  %i.jp = add i32 %i.jf, 4
  %i.jq = call i32 @llvm.umin.i32(i32 %i.jg, i32 %i.jp)
  store i32 %i.jq, ptr %i.ac, align 16, !tbaa !71
  %i.jr = load i32, ptr %i.jd, align 4, !tbaa !32
  %i.js = add i32 %i.jo, %i.jr
  store i32 %i.js, ptr %i.jd, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %get_vlc2.exit.i.i
  %indvars.iv.next.i185.i = add nuw nsw i64 %indvars.iv.i184.i, 1 ; 2 uses
  %exitcond.not.i186.i = icmp eq i64 %indvars.iv.next.i185.i, 32
  br i1 %exitcond.not.i186.i, label %imc_read_level_coeffs_raw.exit.i, label %bb.m, !llvm.loop !76

imc_read_level_coeffs_raw.exit.thread.i:          ; preds = %bb.j
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fp, i64 128 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fp, i64 256 ; 2 uses
  %.val.i = load i32, ptr %i.ad, align 16, !tbaa !72 ; 2 uses
  %i.jv = uitofp nneg i32 %i.gp to double
  %i.jw = fmul nnan nsz double %i.jv, 1.894500e-01
  %exp2.i.i = call nsz double @llvm.exp2.f64(double %i.jw)
  %i.jx = fdiv nsz double 2.000000e+04, %exp2.i.i
  %i.jy = fptrunc nsz double %i.jx to float       ; 3 uses
  %i.jz = sext i32 %.val.i to i64                 ; 2 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.jz
  store float %i.jy, ptr %i.ka, align 4, !tbaa !29
  %i.kb = call nsz float @llvm.log2.f32(float %i.jy) ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.jz
  store float %i.kb, ptr %i.kc, align 4, !tbaa !29
  %i.kd = getelementptr inbounds nuw i8, ptr %i.fp, i64 3204
  %i.ke = fpext nsz float %i.kb to double
  %i.kf = zext i32 %.val.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %imc_read_level_coeffs_raw.exit.thread.i
  %indvars.iv.i187.i = phi i64 [ 0, %imc_read_level_coeffs_raw.exit.thread.i ], [ %indvars.iv.next.i188.i, %bb.s ] ; 4 uses
  %.0251.i.i = phi ptr [ %i.kd, %imc_read_level_coeffs_raw.exit.thread.i ], [ %.1.i.i, %bb.s ] ; 3 uses
end_hunk_0
begin_hunk_1_@imc_decode_frame:bb.a
  %i.ann = call nsz float @llvm.log2.f32(float %i.anj)
  %i.ano = fsub nsz float %i.anm, %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.fp, i64 584
  store float %i.ano, ptr %i.anp, align 4, !tbaa !29
  %i.anq = getelementptr inbounds nuw i8, ptr %i.fp, i64 716
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !29 ; 3 uses
  %i.ans = fcmp nsz ugt float %i.anr, 0.000000e+00
  br i1 %i.ans, label %bb.cq, label %bb.bw

bb.cq:                                            ; preds = %bb.cp
  %i.ant = getelementptr inbounds nuw i8, ptr %i.fp, i64 460
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !29
  %i.anv = call nsz float @llvm.log2.f32(float %i.anr)
  %i.anw = fsub nsz float %i.anu, %i.anv
  %i.anx = getelementptr inbounds nuw i8, ptr %i.fp, i64 588
  store float %i.anw, ptr %i.anx, align 4, !tbaa !29
  %i.any = getelementptr inbounds nuw i8, ptr %i.fp, i64 720
  %i.anz = load float, ptr %i.any, align 4, !tbaa !29 ; 3 uses
  %i.aoa = fcmp nsz ugt float %i.anz, 0.000000e+00
  br i1 %i.aoa, label %bb.cr, label %bb.bw

bb.cr:                                            ; preds = %bb.cq
  %i.aob = getelementptr inbounds nuw i8, ptr %i.fp, i64 464
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !29
  %i.aod = call nsz float @llvm.log2.f32(float %i.anz)
  %i.aoe = fsub nsz float %i.aoc, %i.aod
  %i.aof = getelementptr inbounds nuw i8, ptr %i.fp, i64 592
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !29
  %i.aog = getelementptr inbounds nuw i8, ptr %i.fp, i64 724
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !29 ; 3 uses
  %i.aoi = fcmp nsz ugt float %i.aoh, 0.000000e+00
  br i1 %i.aoi, label %bb.cs, label %bb.bw

bb.cs:                                            ; preds = %bb.cr
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.fp, i64 468
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !29
  %i.aol = call nsz float @llvm.log2.f32(float %i.aoh)
  %i.aom = fsub nsz float %i.aok, %i.aol
  %i.aon = getelementptr inbounds nuw i8, ptr %i.fp, i64 596
  store float %i.aom, ptr %i.aon, align 4, !tbaa !29
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.fp, i64 728
  %i.aop = load float, ptr %i.aoo, align 4, !tbaa !29 ; 3 uses
  %i.aoq = fcmp nsz ugt float %i.aop, 0.000000e+00
  br i1 %i.aoq, label %bb.ct, label %bb.bw

bb.ct:                                            ; preds = %bb.cs
  %i.aor = getelementptr inbounds nuw i8, ptr %i.fp, i64 472
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !29
  %i.aot = call nsz float @llvm.log2.f32(float %i.aop)
  %i.aou = fsub nsz float %i.aos, %i.aot
  %i.aov = getelementptr inbounds nuw i8, ptr %i.fp, i64 600
  store float %i.aou, ptr %i.aov, align 4, !tbaa !29
  %i.aow = getelementptr inbounds nuw i8, ptr %i.fp, i64 732
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !29 ; 3 uses
  %i.aoy = fcmp nsz ugt float %i.aox, 0.000000e+00
  br i1 %i.aoy, label %bb.cu, label %bb.bw

bb.cu:                                            ; preds = %bb.ct
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.fp, i64 476
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !29
  %i.apb = call nsz float @llvm.log2.f32(float %i.aox)
  %i.apc = fsub nsz float %i.apa, %i.apb
  %i.apd = getelementptr inbounds nuw i8, ptr %i.fp, i64 604
  store float %i.apc, ptr %i.apd, align 4, !tbaa !29
  %i.ape = getelementptr inbounds nuw i8, ptr %i.fp, i64 736
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !29 ; 3 uses
  %i.apg = fcmp nsz ugt float %i.apf, 0.000000e+00
  br i1 %i.apg, label %bb.cv, label %bb.bw

bb.cv:                                            ; preds = %bb.cu
  %i.aph = getelementptr inbounds nuw i8, ptr %i.fp, i64 480
  %i.api = load float, ptr %i.aph, align 4, !tbaa !29
  %i.apj = call nsz float @llvm.log2.f32(float %i.apf)
  %i.apk = fsub nsz float %i.api, %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %i.fp, i64 608
  store float %i.apk, ptr %i.apl, align 4, !tbaa !29
  %i.apm = getelementptr inbounds nuw i8, ptr %i.fp, i64 740
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !29 ; 3 uses
  %i.apo = fcmp nsz ugt float %i.apn, 0.000000e+00
  br i1 %i.apo, label %bb.cw, label %bb.bw

bb.cw:                                            ; preds = %bb.cv
  %i.app = getelementptr inbounds nuw i8, ptr %i.fp, i64 484
  %i.apq = load float, ptr %i.app, align 4, !tbaa !29
  %i.apr = call nsz float @llvm.log2.f32(float %i.apn)
  %i.aps = fsub nsz float %i.apq, %i.apr
  %i.apt = getelementptr inbounds nuw i8, ptr %i.fp, i64 612
  store float %i.aps, ptr %i.apt, align 4, !tbaa !29
  %i.apu = getelementptr inbounds nuw i8, ptr %i.fp, i64 744
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !29 ; 3 uses
  %i.apw = fcmp nsz ugt float %i.apv, 0.000000e+00
  br i1 %i.apw, label %bb.cx, label %bb.bw

bb.cx:                                            ; preds = %bb.cw
  %i.apx = getelementptr inbounds nuw i8, ptr %i.fp, i64 488
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !29
  %i.apz = call nsz float @llvm.log2.f32(float %i.apv)
  %i.aqa = fsub nsz float %i.apy, %i.apz
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.fp, i64 616
  store float %i.aqa, ptr %i.aqb, align 4, !tbaa !29
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.fp, i64 748
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !29 ; 3 uses
  %i.aqe = fcmp nsz ugt float %i.aqd, 0.000000e+00
  br i1 %i.aqe, label %bb.cy, label %bb.bw

bb.cy:                                            ; preds = %bb.cx
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.fp, i64 492
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !29
  %i.aqh = call nsz float @llvm.log2.f32(float %i.aqd)
  %i.aqi = fsub nsz float %i.aqg, %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.fp, i64 620
  store float %i.aqi, ptr %i.aqj, align 4, !tbaa !29
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.fp, i64 752
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !29 ; 3 uses
  %i.aqm = fcmp nsz ugt float %i.aql, 0.000000e+00
  br i1 %i.aqm, label %bb.cz, label %bb.bw

bb.cz:                                            ; preds = %bb.cy
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.fp, i64 496
  %i.aqo = load float, ptr %i.aqn, align 4, !tbaa !29
  %i.aqp = call nsz float @llvm.log2.f32(float %i.aql)
  %i.aqq = fsub nsz float %i.aqo, %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store float %i.aqq, ptr %i.aqr, align 4, !tbaa !29
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.fp, i64 756
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !29 ; 3 uses
  %i.aqu = fcmp nsz ugt float %i.aqt, 0.000000e+00
  br i1 %i.aqu, label %bb.da, label %bb.bw

bb.da:                                            ; preds = %bb.cz
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.fp, i64 500
  %i.aqw = load float, ptr %i.aqv, align 4, !tbaa !29
  %i.aqx = call nsz float @llvm.log2.f32(float %i.aqt)
  %i.aqy = fsub nsz float %i.aqw, %i.aqx
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.fp, i64 628
  store float %i.aqy, ptr %i.aqz, align 4, !tbaa !29
  %i.ara = getelementptr inbounds nuw i8, ptr %i.fp, i64 760
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !29 ; 3 uses
  %i.arc = fcmp nsz ugt float %i.arb, 0.000000e+00
  br i1 %i.arc, label %bb.db, label %bb.bw

bb.db:                                            ; preds = %bb.da
  %i.ard = getelementptr inbounds nuw i8, ptr %i.fp, i64 504
  %i.are = load float, ptr %i.ard, align 4, !tbaa !29
  %i.arf = call nsz float @llvm.log2.f32(float %i.arb)
  %i.arg = fsub nsz float %i.are, %i.arf
  %i.arh = getelementptr inbounds nuw i8, ptr %i.fp, i64 632
  store float %i.arg, ptr %i.arh, align 4, !tbaa !29
  %i.ari = getelementptr inbounds nuw i8, ptr %i.fp, i64 636
  store float -1.000000e+20, ptr %i.ari, align 4, !tbaa !29
  %i.arj = fmul nsz float %.0202..31.i.i, 2.500000e-01
  %i.ark = getelementptr inbounds nuw i8, ptr %i.fp, i64 1920 ; 6 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dd, %bb.db
  %i.arl = phi i16 [ 0, %bb.db ], [ %i.arn, %bb.dd ]
  %indvars.iv.i203.i = phi i64 [ 0, %bb.db ], [ %indvars.iv.next.i204.i, %bb.dd ] ; 4 uses
  %indvars.iv.next.i204.i = add nuw nsw i64 %indvars.iv.i203.i, 1 ; 3 uses
  %i.arm = getelementptr inbounds nuw [2 x i8], ptr @band_tab, i64 %indvars.iv.next.i204.i
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !86 ; 2 uses
  %i.aro = zext i16 %i.arn to i32
  %i.arp = zext i16 %i.arl to i32
  %i.arq = sub nsw i32 %i.aro, %i.arp             ; 2 uses
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %indvars.iv.i203.i
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !32 ; 2 uses
  %.1200.i.i = call i32 @llvm.scmp.i32.i32(i32 %i.arq, i32 %i.ars)
  %i.art = sdiv i32 %i.arq, 2
  %.not234.i.i = icmp slt i32 %i.art, %i.ars
  %.2201.i.i = select i1 %.not234.i.i, i32 %.1200.i.i, i32 2 ; 2 uses
  %i.aru = icmp eq i32 %.2201.i.i, -1
  br i1 %i.aru, label %.loopexit244.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.i203.i
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !29
  %i.arx = fcmp nsz olt float %i.arw, %i.arj
  %i.ary = shl nuw nsw i32 %.2201.i.i, 2
  %i.arz = select i1 %i.arx, i32 2, i32 0
  %i.asa = or disjoint i32 %i.arz, %i.ary
  %i.asb = or disjoint i32 %i.asa, %i.gh
  %i.asc = zext nneg i32 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr @xTab, i64 %i.asc
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !29
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %indvars.iv.i203.i ; 2 uses
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !29
  %i.ash = fadd nsz float %i.ase, %i.asg
  store float %i.ash, ptr %i.asf, align 4, !tbaa !29
  %exitcond.not.i205.i = icmp eq i64 %indvars.iv.next.i204.i, 32
  br i1 %exitcond.not.i205.i, label %bb.de, label %bb.dc, !llvm.loop !88

bb.de:                                            ; preds = %bb.dd
  br i1 %.not181421.i, label %.lr.ph.i207.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  store <4 x float> splat (float -1.000000e+20), ptr %i.aht, align 16, !tbaa !29
  br label %.lr.ph.i207.i

.lr.ph.i207.i:                                    ; preds = %bb.df, %bb.de
  %i.asi = lshr i32 %i.fw, 28
  %i.asj = and i32 %i.asi, 4
  %i.ask = zext nneg i32 %i.asj to i64            ; 5 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph.i207.i
  %indvars.iv307.i.i = phi i64 [ %i.ask, %.lr.ph.i207.i ], [ %indvars.iv.next308.i.i, %bb.dg ] ; 3 uses
  %.0191257.i.i = phi i32 [ 0, %.lr.ph.i207.i ], [ %i.asn, %bb.dg ]
  %.0194256.i.i = phi float [ 0.000000e+00, %.lr.ph.i207.i ], [ %i.asr, %bb.dg ]
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %indvars.iv307.i.i
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !32 ; 2 uses
  %i.asn = add nsw i32 %i.asm, %.0191257.i.i      ; 3 uses
  %i.aso = sitofp nsz i32 %i.asm to float
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %indvars.iv307.i.i
  %i.asq = load float, ptr %i.asp, align 4, !tbaa !29
  %i.asr = call nsz float @llvm.fmuladd.f32(float %i.aso, float %i.asq, float %.0194256.i.i) ; 2 uses
  %indvars.iv.next308.i.i = add nuw nsw i64 %indvars.iv307.i.i, 1 ; 2 uses
  %exitcond310.not.i.i = icmp eq i64 %indvars.iv.next308.i.i, 31
  br i1 %exitcond310.not.i.i, label %._crit_edge.i208.i, label %bb.dg, !llvm.loop !89

._crit_edge.i208.i:                               ; preds = %bb.dg
  %.not230.i.i = icmp eq i32 %i.asn, 0
  br i1 %.not230.i.i, label %.loopexit244.i, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge.i208.i
  %i.ass = getelementptr inbounds nuw i8, ptr %i.fp, i64 2044
  store i32 0, ptr %i.ass, align 4, !tbaa !32
  %i.ast = fpext nsz float %i.asr to double
  %i.asu = sitofp nsz i32 %i.aff to double
  %i.asv = fneg nsz double %i.asu
  %i.asw = call nsz double @llvm.fmuladd.f64(double %i.ast, double 5.000000e-01, double %i.asv)
  %i.asx = sitofp nsz i32 %i.asn to double
  %i.asy = fdiv nsz double %i.asw, %i.asx
  %i.asz = fptrunc nsz double %i.asy to float
  %i.ata = getelementptr inbounds nuw i8, ptr %i.fp, i64 2048 ; 9 uses
  %reass.sub.i.i = add i32 %i.afe, -504
  %4 = lshr i32 %i.fv, 27
  %5 = and i32 %4, 4
  %narrow = sub nuw nsw i32 32, %5
  %6 = zext nneg i32 %narrow to i64               ; 2 uses
  %n.vec250 = and i64 %6, 56                      ; 3 uses
  %i.atb = or disjoint i64 %n.vec250, %i.ask
  %cmp.n265 = icmp eq i64 %n.vec250, %6
  br label %bb.di

bb.di:                                            ; preds = %._crit_edge263.i.i, %bb.dh
  %.0189270.i.i = phi i32 [ 0, %bb.dh ], [ %.lcssa218, %._crit_edge263.i.i ] ; 2 uses
  %.1195269.i.i = phi float [ %i.asz, %bb.dh ], [ %i.avq, %._crit_edge263.i.i ] ; 2 uses
  %.0196268.i.i = phi i32 [ 1, %bb.dh ], [ %spec.store.select.i.i, %._crit_edge263.i.i ]
  %.0197267.i.i = phi i32 [ 0, %bb.dh ], [ %.1198.i.i, %._crit_edge263.i.i ]
  %.4214266.i.i = phi i32 [ 0, %bb.dh ], [ %i.avr, %._crit_edge263.i.i ] ; 2 uses
  %.reass.i.i = add i32 %reass.sub.i.i, %.0189270.i.i
  %or.cond.i.i = icmp ult i32 %.reass.i.i, 17
  br i1 %or.cond.i.i, label %.lr.ph277.i.i, label %.lr.ph262.i.i

.lr.ph262.i.i:                                    ; preds = %bb.di
  %i.atc = fpext nsz float %.1195269.i.i to double
  %i.atd = fneg nsz double %i.atc                 ; 2 uses
  %broadcast.splatinsert251 = insertelement <4 x double> poison, double %i.atd, i64 0
  %broadcast.splat252 = shufflevector <4 x double> %broadcast.splatinsert251, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %.lr.ph262.i.i
  %index254 = phi i64 [ 0, %.lr.ph262.i.i ], [ %index.next262, %vector.body253 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %.lr.ph262.i.i ], [ %i.auf, %vector.body253 ]
  %vec.phi255 = phi <4 x i32> [ zeroinitializer, %.lr.ph262.i.i ], [ %i.aug, %vector.body253 ]
  %vec.phi256 = phi <4 x i32> [ zeroinitializer, %.lr.ph262.i.i ], [ %i.aul, %vector.body253 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %.lr.ph262.i.i ], [ %i.aum, %vector.body253 ]
  %i.ate = or disjoint i64 %index254, %i.ask      ; 3 uses
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ate ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 16
  %wide.load258 = load <4 x float>, ptr %i.atf, align 4, !tbaa !29
  %wide.load259 = load <4 x float>, ptr %i.atg, align 4, !tbaa !29
  %i.ath = fpext nsz <4 x float> %wide.load258 to <4 x double>
  %i.ati = fpext nsz <4 x float> %wide.load259 to <4 x double>
  %i.atj = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ath, <4 x double> splat (double 5.000000e-01), <4 x double> %broadcast.splat252)
  %i.atk = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ati, <4 x double> splat (double 5.000000e-01), <4 x double> %broadcast.splat252)
  %i.atl = fadd nsz <4 x double> %i.atj, splat (double 5.000000e-01)
  %i.atm = fadd nsz <4 x double> %i.atk, splat (double 5.000000e-01)
  %i.atn = fptrunc nsz <4 x double> %i.atl to <4 x float> ; 2 uses
  %i.ato = fptrunc nsz <4 x double> %i.atm to <4 x float> ; 2 uses
  %i.atp = fcmp nsz ogt <4 x float> %i.atn, zeroinitializer
  %i.atq = fcmp nsz ogt <4 x float> %i.ato, zeroinitializer
  %i.atr = select nsz <4 x i1> %i.atp, <4 x float> %i.atn, <4 x float> zeroinitializer ; 2 uses
  %i.ats = select nsz <4 x i1> %i.atq, <4 x float> %i.ato, <4 x float> zeroinitializer ; 2 uses
  %i.att = fcmp nsz ogt <4 x float> %i.atr, splat (float 6.000000e+00)
  %i.atu = fcmp nsz ogt <4 x float> %i.ats, splat (float 6.000000e+00)
  %i.atv = select nsz <4 x i1> %i.att, <4 x float> splat (float 6.000000e+00), <4 x float> %i.atr
  %i.atw = select nsz <4 x i1> %i.atu, <4 x float> splat (float 6.000000e+00), <4 x float> %i.ats
  %i.atx = fptosi <4 x float> %i.atv to <4 x i32> ; 3 uses
  %i.aty = fptosi <4 x float> %i.atw to <4 x i32> ; 3 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %i.ate ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 16
  store <4 x i32> %i.atx, ptr %i.atz, align 4, !tbaa !32
  store <4 x i32> %i.aty, ptr %i.aua, align 4, !tbaa !32
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %i.ate ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 16
  %wide.load260 = load <4 x i32>, ptr %i.aub, align 4, !tbaa !32 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.auc, align 4, !tbaa !32 ; 2 uses
  %i.aud = mul nsw <4 x i32> %wide.load260, %i.atx
  %i.aue = mul nsw <4 x i32> %wide.load261, %i.aty
  %i.auf = add <4 x i32> %i.aud, %vec.phi         ; 2 uses
  %i.aug = add <4 x i32> %i.aue, %vec.phi255      ; 2 uses
  %i.auh = icmp sgt <4 x i32> %i.atx, zeroinitializer
  %i.aui = icmp sgt <4 x i32> %i.aty, zeroinitializer
  %i.auj = select <4 x i1> %i.auh, <4 x i32> %wide.load260, <4 x i32> zeroinitializer
  %i.auk = select <4 x i1> %i.aui, <4 x i32> %wide.load261, <4 x i32> zeroinitializer
  %i.aul = add <4 x i32> %i.auj, %vec.phi256      ; 2 uses
  %i.aum = add <4 x i32> %i.auk, %vec.phi257      ; 2 uses
  %index.next262 = add nuw i64 %index254, 8       ; 2 uses
  %i.aun = icmp eq i64 %index.next262, %n.vec250
  br i1 %i.aun, label %middle.block263, label %vector.body253, !llvm.loop !90

middle.block263:                                  ; preds = %vector.body253
  %bin.rdx = add <4 x i32> %i.aug, %i.auf
  %i.auo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx264 = add <4 x i32> %i.aum, %i.aul
  %i.aup = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264) ; 2 uses
  br i1 %cmp.n265, label %._crit_edge263.i.i, label %scalar.ph247

scalar.ph247:                                     ; preds = %middle.block263, %scalar.ph247
  %indvars.iv311.i.i = phi i64 [ %indvars.iv.next312.i.i, %scalar.ph247 ], [ %i.atb, %middle.block263 ] ; 4 uses
  %.1190261.i.i = phi i32 [ %i.ave, %scalar.ph247 ], [ %i.auo, %middle.block263 ]
  %.1192260.i.i = phi i32 [ %spec.select235.i.i, %scalar.ph247 ], [ %i.aup, %middle.block263 ]
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %indvars.iv311.i.i
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !29
  %i.aus = fpext nsz float %i.aur to double
  %i.aut = call nsz double @llvm.fmuladd.f64(double %i.aus, double 5.000000e-01, double %i.atd)
  %i.auu = fadd nsz double %i.aut, 5.000000e-01
  %i.auv = fptrunc nsz double %i.auu to float     ; 2 uses
  %i.auw = fcmp nsz ogt float %i.auv, 0.000000e+00
  %i.aux = select nsz i1 %i.auw, float %i.auv, float 0.000000e+00 ; 2 uses
  %i.auy = fcmp nsz ogt float %i.aux, 6.000000e+00
  %..i.i.i = select nsz i1 %i.auy, float 6.000000e+00, float %i.aux
  %i.auz = fptosi float %..i.i.i to i32           ; 3 uses
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv311.i.i
  store i32 %i.auz, ptr %i.ava, align 4, !tbaa !32
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %indvars.iv311.i.i
  %i.avc = load i32, ptr %i.avb, align 4, !tbaa !32 ; 2 uses
  %i.avd = mul nsw i32 %i.avc, %i.auz
  %i.ave = add nsw i32 %i.avd, %.1190261.i.i      ; 2 uses
  %i.avf = icmp sgt i32 %i.auz, 0
  %i.avg = select i1 %i.avf, i32 %i.avc, i32 0
  %spec.select235.i.i = add nsw i32 %i.avg, %.1192260.i.i ; 2 uses
  %indvars.iv.next312.i.i = add nuw nsw i64 %indvars.iv311.i.i, 1 ; 2 uses
  %exitcond314.not.i.i = icmp eq i64 %indvars.iv.next312.i.i, 32
  br i1 %exitcond314.not.i.i, label %._crit_edge263.i.i, label %scalar.ph247, !llvm.loop !91

._crit_edge263.i.i:                               ; preds = %scalar.ph247, %middle.block263
  %.lcssa218 = phi i32 [ %i.auo, %middle.block263 ], [ %i.ave, %scalar.ph247 ] ; 4 uses
  %spec.select235.i.i.lcssa = phi i32 [ %i.aup, %middle.block263 ], [ %spec.select235.i.i, %scalar.ph247 ]
  %i.avh = icmp slt i32 %i.aff, %.lcssa218
  %spec.store.select.i.i = select i1 %i.avh, i32 -1, i32 1 ; 2 uses
  %i.avi = icmp ne i32 %.4214266.i.i, 0
  %.not231237.i.i = icmp ne i32 %.0196268.i.i, %spec.store.select.i.i
  %.not231.not.i.i = select i1 %i.avi, i1 %.not231237.i.i, i1 false
  %i.avj = zext i1 %.not231.not.i.i to i32
  %.1198.i.i = add nuw nsw i32 %.0197267.i.i, %i.avj ; 2 uses
  %i.avk = sub nsw i32 %.lcssa218, %i.aff
  %i.avl = sitofp nsz i32 %i.avk to float
  %i.avm = add nuw nsw i32 %.1198.i.i, 1
  %i.avn = mul nsw i32 %i.avm, %spec.select235.i.i.lcssa
  %i.avo = sitofp nsz i32 %i.avn to float
  %i.avp = fdiv nsz float %i.avl, %i.avo
  %i.avq = fadd nsz float %.1195269.i.i, %i.avp
  %i.avr = add nuw nsw i32 %.4214266.i.i, 1       ; 2 uses
  %exitcond315.not.i.i = icmp eq i32 %i.avr, 16
  br i1 %exitcond315.not.i.i, label %.lr.ph277.i.i, label %bb.di, !llvm.loop !92

.lr.ph277.i.i:                                    ; preds = %._crit_edge263.i.i, %bb.di
  %.0189.lcssa.i.i = phi i32 [ %.0189270.i.i, %bb.di ], [ %.lcssa218, %._crit_edge263.i.i ] ; 3 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.fp, i64 2176 ; 19 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [2 x i8], ptr @band_tab, i64 %i.ask
  %.pre346.i.i = load i16, ptr %.phi.trans.insert.i.i, align 8, !tbaa !86
  br label %bb.dj

.loopexit246.i.i:                                 ; preds = %scalar.ph237, %middle.block244, %bb.dj
  %exitcond323.not.i.i = icmp eq i64 %indvars.iv.next321.i.i, 32
  br i1 %exitcond323.not.i.i, label %._crit_edge278.i.i, label %bb.dj, !llvm.loop !93

bb.dj:                                            ; preds = %.loopexit246.i.i, %.lr.ph277.i.i
  %i.avt = phi i16 [ %.pre346.i.i, %.lr.ph277.i.i ], [ %i.avv, %.loopexit246.i.i ] ; 2 uses
  %indvars.iv320.i.i = phi i64 [ %i.ask, %.lr.ph277.i.i ], [ %indvars.iv.next321.i.i, %.loopexit246.i.i ] ; 2 uses
  %indvars.iv.next321.i.i = add nuw nsw i64 %indvars.iv320.i.i, 1 ; 3 uses
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr @band_tab, i64 %indvars.iv.next321.i.i
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !86 ; 3 uses
  %i.avw = icmp ult i16 %i.avt, %i.avv
  br i1 %i.avw, label %.lr.ph273.i.i, label %.loopexit246.i.i

.lr.ph273.i.i:                                    ; preds = %bb.dj
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv320.i.i
  %i.avy = zext i16 %i.avt to i64                 ; 4 uses
  %wide.trip.count.i.i = zext i16 %i.avv to i64   ; 2 uses
  %.pre347.i.i = load i32, ptr %i.avx, align 4, !tbaa !32 ; 2 uses
  %i.avz = sub nsw i64 %wide.trip.count.i.i, %i.avy ; 3 uses
  %min.iters.check238 = icmp ult i64 %i.avz, 8
  br i1 %min.iters.check238, label %scalar.ph237.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph273.i.i
  %n.vec240 = and i64 %i.avz, -8                  ; 3 uses
  %i.awa = add nsw i64 %n.vec240, %i.avy
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre347.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.avs, i64 %i.avy
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next243, %vector.body241 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index242 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !32
  store <4 x i32> %broadcast.splat, ptr %i.awb, align 4, !tbaa !32
  %index.next243 = add nuw i64 %index242, 8       ; 2 uses
  %i.awc = icmp eq i64 %index.next243, %n.vec240
  br i1 %i.awc, label %middle.block244, label %vector.body241, !llvm.loop !94

middle.block244:                                  ; preds = %vector.body241
  %cmp.n245 = icmp eq i64 %i.avz, %n.vec240
  br i1 %cmp.n245, label %.loopexit246.i.i, label %scalar.ph237.preheader

scalar.ph237.preheader:                           ; preds = %.lr.ph273.i.i, %middle.block244
  %indvars.iv316.i.i.ph = phi i64 [ %i.avy, %.lr.ph273.i.i ], [ %i.awa, %middle.block244 ]
  br label %scalar.ph237

scalar.ph237:                                     ; preds = %scalar.ph237.preheader, %scalar.ph237
  %indvars.iv316.i.i = phi i64 [ %indvars.iv.next317.i.i, %scalar.ph237 ], [ %indvars.iv316.i.i.ph, %scalar.ph237.preheader ] ; 2 uses
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %indvars.iv316.i.i
  store i32 %.pre347.i.i, ptr %i.awd, align 4, !tbaa !32
  %indvars.iv.next317.i.i = add nuw nsw i64 %indvars.iv316.i.i, 1 ; 2 uses
  %exitcond319.not.i.i = icmp eq i64 %indvars.iv.next317.i.i, %wide.trip.count.i.i
  br i1 %exitcond319.not.i.i, label %.loopexit246.i.i, label %scalar.ph237, !llvm.loop !95

._crit_edge278.i.i:                               ; preds = %.loopexit246.i.i
  %i.awe = icmp sgt i32 %i.aff, %.0189.lcssa.i.i
  br i1 %i.awe, label %.preheader245.i.i, label %.loopexit244.i.i

.preheader245.i.i:                                ; preds = %._crit_edge278.i.i, %bb.dl
  %indvars.iv324.i.i = phi i64 [ %indvars.iv.next325.i.i, %bb.dl ], [ 0, %._crit_edge278.i.i ] ; 4 uses
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv324.i.i
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !32 ; 2 uses
  %i.awh = icmp eq i32 %i.awg, 6
  br i1 %i.awh, label %bb.dl, label %bb.dk

end_hunk_1
