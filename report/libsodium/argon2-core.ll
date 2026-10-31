Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/argon2-core?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@argon2_initialize:bb.a
bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bp = getelementptr i8, ptr %1, i64 56        ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8
  store i32 %i.bq, ptr %i.c, align 4
  %i.br = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.bs = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not39.i = icmp eq ptr %i.bt, null
  br i1 %.not39.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.bp, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.bt, i64 noundef %i.bv) #9 ; 0 uses
  %i.bx = getelementptr i8, ptr %1, i64 92
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, 2
  %.not40.i = icmp eq i32 %i.bz, 0
  br i1 %.not40.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bs, align 8
  %i.cb = load i32, ptr %i.bp, align 8
  %i.cc = zext i32 %i.cb to i64
  call void @sodium_memzero(ptr noundef %i.ca, i64 noundef %i.cc) #9
  store i32 0, ptr %i.bp, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cd = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  store i32 %i.ce, ptr %i.c, align 4
  %i.cf = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.cg = getelementptr i8, ptr %1, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not41.i = icmp eq ptr %i.ch, null
  br i1 %.not41.i, label %argon2_initial_hash.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load i32, ptr %i.cd, align 8
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.ch, i64 noundef %i.cj) #9 ; 0 uses
  br label %argon2_initial_hash.exit

argon2_initial_hash.exit:                         ; preds = %bb.p, %bb.q
  %i.cl = call i32 @crypto_generichash_blake2b_final(ptr noundef nonnull %2, ptr noundef nonnull %i.d, i64 noundef 64) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  call void @sodium_memzero(ptr noundef nonnull %i.cm, i64 noundef 8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.cn = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4
  %.not.i17 = icmp eq i32 %i.co, 0
  br i1 %.not.i17, label %argon2_fill_first_blocks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %argon2_initial_hash.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  br label %vector.memcheck30

vector.memcheck30:                                ; preds = %load_block.exit17.i, %.lr.ph.i
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.om, %load_block.exit17.i ] ; 4 uses
  store i32 0, ptr %i.cm, align 16
  store i32 %.018.i, ptr %i.cp, align 4
  %i.hn = call i32 @blake2b_long(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.d, i64 noundef 72) #9 ; 0 uses
  %i.ho = load ptr, ptr %0, align 8
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %i.hr = load i32, ptr %i.cq, align 8
  %i.hs = mul i32 %i.hr, %.018.i
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr [1024 x i8], ptr %i.hq, i64 %i.ht ; 68 uses
  %i.hv = ptrtoaddr ptr %i.hq to i64
  %3 = sub i64 %i.hv, %i.b
  %i.hw = shl nuw nsw i64 %i.ht, 10
  %i.hx = add i64 %3, %i.hw
  %4 = add i64 %i.hx, -1
  %diff.check31 = icmp ult i64 %4, 31
  br i1 %diff.check31, label %scalar.ph32, label %vector.body34

vector.body34:                                    ; preds = %vector.memcheck30
  %wide.load36 = load <2 x i64>, ptr %i.a, align 16
  %wide.load37 = load <2 x i64>, ptr %i.cr, align 16
  %i.hy = getelementptr i8, ptr %i.hu, i64 16
  store <2 x i64> %wide.load36, ptr %i.hu, align 8
  store <2 x i64> %wide.load37, ptr %i.hy, align 8
  %wide.load36.1 = load <2 x i64>, ptr %i.cs, align 16
  %wide.load37.1 = load <2 x i64>, ptr %i.ct, align 16
  %i.hz = getelementptr i8, ptr %i.hu, i64 32
  %i.ia = getelementptr i8, ptr %i.hu, i64 48
  store <2 x i64> %wide.load36.1, ptr %i.hz, align 8
  store <2 x i64> %wide.load37.1, ptr %i.ia, align 8
  %wide.load36.2 = load <2 x i64>, ptr %i.cu, align 16
  %wide.load37.2 = load <2 x i64>, ptr %i.cv, align 16
  %i.ib = getelementptr i8, ptr %i.hu, i64 64
  %i.ic = getelementptr i8, ptr %i.hu, i64 80
  store <2 x i64> %wide.load36.2, ptr %i.ib, align 8
  store <2 x i64> %wide.load37.2, ptr %i.ic, align 8
  %wide.load36.3 = load <2 x i64>, ptr %i.cw, align 16
  %wide.load37.3 = load <2 x i64>, ptr %i.cx, align 16
  %i.id = getelementptr i8, ptr %i.hu, i64 96
  %i.ie = getelementptr i8, ptr %i.hu, i64 112
  store <2 x i64> %wide.load36.3, ptr %i.id, align 8
  store <2 x i64> %wide.load37.3, ptr %i.ie, align 8
  %wide.load36.4 = load <2 x i64>, ptr %i.cy, align 16
  %wide.load37.4 = load <2 x i64>, ptr %i.cz, align 16
  %i.if = getelementptr i8, ptr %i.hu, i64 128
  %i.ig = getelementptr i8, ptr %i.hu, i64 144
  store <2 x i64> %wide.load36.4, ptr %i.if, align 8
  store <2 x i64> %wide.load37.4, ptr %i.ig, align 8
  %wide.load36.5 = load <2 x i64>, ptr %i.da, align 16
  %wide.load37.5 = load <2 x i64>, ptr %i.db, align 16
  %i.ih = getelementptr i8, ptr %i.hu, i64 160
  %i.ii = getelementptr i8, ptr %i.hu, i64 176
  store <2 x i64> %wide.load36.5, ptr %i.ih, align 8
  store <2 x i64> %wide.load37.5, ptr %i.ii, align 8
  %wide.load36.6 = load <2 x i64>, ptr %i.dc, align 16
  %wide.load37.6 = load <2 x i64>, ptr %i.dd, align 16
  %i.ij = getelementptr i8, ptr %i.hu, i64 192
  %i.ik = getelementptr i8, ptr %i.hu, i64 208
  store <2 x i64> %wide.load36.6, ptr %i.ij, align 8
  store <2 x i64> %wide.load37.6, ptr %i.ik, align 8
  %wide.load36.7 = load <2 x i64>, ptr %i.de, align 16
  %wide.load37.7 = load <2 x i64>, ptr %i.df, align 16
  %i.il = getelementptr i8, ptr %i.hu, i64 224
  %i.im = getelementptr i8, ptr %i.hu, i64 240
  store <2 x i64> %wide.load36.7, ptr %i.il, align 8
  store <2 x i64> %wide.load37.7, ptr %i.im, align 8
  %wide.load36.8 = load <2 x i64>, ptr %i.dg, align 16
  %wide.load37.8 = load <2 x i64>, ptr %i.dh, align 16
  %i.in = getelementptr i8, ptr %i.hu, i64 256
  %i.io = getelementptr i8, ptr %i.hu, i64 272
  store <2 x i64> %wide.load36.8, ptr %i.in, align 8
  store <2 x i64> %wide.load37.8, ptr %i.io, align 8
  %wide.load36.9 = load <2 x i64>, ptr %i.di, align 16
  %wide.load37.9 = load <2 x i64>, ptr %i.dj, align 16
  %i.ip = getelementptr i8, ptr %i.hu, i64 288
  %i.iq = getelementptr i8, ptr %i.hu, i64 304
  store <2 x i64> %wide.load36.9, ptr %i.ip, align 8
  store <2 x i64> %wide.load37.9, ptr %i.iq, align 8
  %wide.load36.10 = load <2 x i64>, ptr %i.dk, align 16
  %wide.load37.10 = load <2 x i64>, ptr %i.dl, align 16
  %i.ir = getelementptr i8, ptr %i.hu, i64 320
  %i.is = getelementptr i8, ptr %i.hu, i64 336
  store <2 x i64> %wide.load36.10, ptr %i.ir, align 8
  store <2 x i64> %wide.load37.10, ptr %i.is, align 8
  %wide.load36.11 = load <2 x i64>, ptr %i.dm, align 16
  %wide.load37.11 = load <2 x i64>, ptr %i.dn, align 16
  %i.it = getelementptr i8, ptr %i.hu, i64 352
  %i.iu = getelementptr i8, ptr %i.hu, i64 368
  store <2 x i64> %wide.load36.11, ptr %i.it, align 8
  store <2 x i64> %wide.load37.11, ptr %i.iu, align 8
  %wide.load36.12 = load <2 x i64>, ptr %i.do, align 16
  %wide.load37.12 = load <2 x i64>, ptr %i.dp, align 16
  %i.iv = getelementptr i8, ptr %i.hu, i64 384
  %i.iw = getelementptr i8, ptr %i.hu, i64 400
  store <2 x i64> %wide.load36.12, ptr %i.iv, align 8
  store <2 x i64> %wide.load37.12, ptr %i.iw, align 8
  %wide.load36.13 = load <2 x i64>, ptr %i.dq, align 16
  %wide.load37.13 = load <2 x i64>, ptr %i.dr, align 16
  %i.ix = getelementptr i8, ptr %i.hu, i64 416
  %i.iy = getelementptr i8, ptr %i.hu, i64 432
  store <2 x i64> %wide.load36.13, ptr %i.ix, align 8
  store <2 x i64> %wide.load37.13, ptr %i.iy, align 8
  %wide.load36.14 = load <2 x i64>, ptr %i.ds, align 16
  %wide.load37.14 = load <2 x i64>, ptr %i.dt, align 16
  %i.iz = getelementptr i8, ptr %i.hu, i64 448
  %i.ja = getelementptr i8, ptr %i.hu, i64 464
  store <2 x i64> %wide.load36.14, ptr %i.iz, align 8
  store <2 x i64> %wide.load37.14, ptr %i.ja, align 8
  %wide.load36.15 = load <2 x i64>, ptr %i.du, align 16
  %wide.load37.15 = load <2 x i64>, ptr %i.dv, align 16
  %i.jb = getelementptr i8, ptr %i.hu, i64 480
  %i.jc = getelementptr i8, ptr %i.hu, i64 496
  store <2 x i64> %wide.load36.15, ptr %i.jb, align 8
  store <2 x i64> %wide.load37.15, ptr %i.jc, align 8
  %wide.load36.16 = load <2 x i64>, ptr %i.dw, align 16
  %wide.load37.16 = load <2 x i64>, ptr %i.dx, align 16
  %i.jd = getelementptr i8, ptr %i.hu, i64 512
  %i.je = getelementptr i8, ptr %i.hu, i64 528
  store <2 x i64> %wide.load36.16, ptr %i.jd, align 8
  store <2 x i64> %wide.load37.16, ptr %i.je, align 8
  %wide.load36.17 = load <2 x i64>, ptr %i.dy, align 16
  %wide.load37.17 = load <2 x i64>, ptr %i.dz, align 16
  %i.jf = getelementptr i8, ptr %i.hu, i64 544
  %i.jg = getelementptr i8, ptr %i.hu, i64 560
  store <2 x i64> %wide.load36.17, ptr %i.jf, align 8
  store <2 x i64> %wide.load37.17, ptr %i.jg, align 8
  %wide.load36.18 = load <2 x i64>, ptr %i.ea, align 16
  %wide.load37.18 = load <2 x i64>, ptr %i.eb, align 16
  %i.jh = getelementptr i8, ptr %i.hu, i64 576
  %i.ji = getelementptr i8, ptr %i.hu, i64 592
  store <2 x i64> %wide.load36.18, ptr %i.jh, align 8
  store <2 x i64> %wide.load37.18, ptr %i.ji, align 8
  %wide.load36.19 = load <2 x i64>, ptr %i.ec, align 16
  %wide.load37.19 = load <2 x i64>, ptr %i.ed, align 16
  %i.jj = getelementptr i8, ptr %i.hu, i64 608
  %i.jk = getelementptr i8, ptr %i.hu, i64 624
  store <2 x i64> %wide.load36.19, ptr %i.jj, align 8
  store <2 x i64> %wide.load37.19, ptr %i.jk, align 8
  %wide.load36.20 = load <2 x i64>, ptr %i.ee, align 16
  %wide.load37.20 = load <2 x i64>, ptr %i.ef, align 16
  %i.jl = getelementptr i8, ptr %i.hu, i64 640
  %i.jm = getelementptr i8, ptr %i.hu, i64 656
  store <2 x i64> %wide.load36.20, ptr %i.jl, align 8
  store <2 x i64> %wide.load37.20, ptr %i.jm, align 8
  %wide.load36.21 = load <2 x i64>, ptr %i.eg, align 16
  %wide.load37.21 = load <2 x i64>, ptr %i.eh, align 16
  %i.jn = getelementptr i8, ptr %i.hu, i64 672
  %i.jo = getelementptr i8, ptr %i.hu, i64 688
  store <2 x i64> %wide.load36.21, ptr %i.jn, align 8
  store <2 x i64> %wide.load37.21, ptr %i.jo, align 8
  %wide.load36.22 = load <2 x i64>, ptr %i.ei, align 16
  %wide.load37.22 = load <2 x i64>, ptr %i.ej, align 16
  %i.jp = getelementptr i8, ptr %i.hu, i64 704
  %i.jq = getelementptr i8, ptr %i.hu, i64 720
  store <2 x i64> %wide.load36.22, ptr %i.jp, align 8
  store <2 x i64> %wide.load37.22, ptr %i.jq, align 8
  %wide.load36.23 = load <2 x i64>, ptr %i.ek, align 16
  %wide.load37.23 = load <2 x i64>, ptr %i.el, align 16
  %i.jr = getelementptr i8, ptr %i.hu, i64 736
  %i.js = getelementptr i8, ptr %i.hu, i64 752
  store <2 x i64> %wide.load36.23, ptr %i.jr, align 8
  store <2 x i64> %wide.load37.23, ptr %i.js, align 8
  %wide.load36.24 = load <2 x i64>, ptr %i.em, align 16
  %wide.load37.24 = load <2 x i64>, ptr %i.en, align 16
  %i.jt = getelementptr i8, ptr %i.hu, i64 768
  %i.ju = getelementptr i8, ptr %i.hu, i64 784
  store <2 x i64> %wide.load36.24, ptr %i.jt, align 8
  store <2 x i64> %wide.load37.24, ptr %i.ju, align 8
  %wide.load36.25 = load <2 x i64>, ptr %i.eo, align 16
  %wide.load37.25 = load <2 x i64>, ptr %i.ep, align 16
  %i.jv = getelementptr i8, ptr %i.hu, i64 800
  %i.jw = getelementptr i8, ptr %i.hu, i64 816
  store <2 x i64> %wide.load36.25, ptr %i.jv, align 8
  store <2 x i64> %wide.load37.25, ptr %i.jw, align 8
  %wide.load36.26 = load <2 x i64>, ptr %i.eq, align 16
  %wide.load37.26 = load <2 x i64>, ptr %i.er, align 16
  %i.jx = getelementptr i8, ptr %i.hu, i64 832
  %i.jy = getelementptr i8, ptr %i.hu, i64 848
  store <2 x i64> %wide.load36.26, ptr %i.jx, align 8
  store <2 x i64> %wide.load37.26, ptr %i.jy, align 8
  %wide.load36.27 = load <2 x i64>, ptr %i.es, align 16
  %wide.load37.27 = load <2 x i64>, ptr %i.et, align 16
  %i.jz = getelementptr i8, ptr %i.hu, i64 864
  %i.ka = getelementptr i8, ptr %i.hu, i64 880
  store <2 x i64> %wide.load36.27, ptr %i.jz, align 8
  store <2 x i64> %wide.load37.27, ptr %i.ka, align 8
  %wide.load36.28 = load <2 x i64>, ptr %i.eu, align 16
  %wide.load37.28 = load <2 x i64>, ptr %i.ev, align 16
  %i.kb = getelementptr i8, ptr %i.hu, i64 896
  %i.kc = getelementptr i8, ptr %i.hu, i64 912
  store <2 x i64> %wide.load36.28, ptr %i.kb, align 8
  store <2 x i64> %wide.load37.28, ptr %i.kc, align 8
  %wide.load36.29 = load <2 x i64>, ptr %i.ew, align 16
  %wide.load37.29 = load <2 x i64>, ptr %i.ex, align 16
  %i.kd = getelementptr i8, ptr %i.hu, i64 928
  %i.ke = getelementptr i8, ptr %i.hu, i64 944
  store <2 x i64> %wide.load36.29, ptr %i.kd, align 8
  store <2 x i64> %wide.load37.29, ptr %i.ke, align 8
  %wide.load36.30 = load <2 x i64>, ptr %i.ey, align 16
  %wide.load37.30 = load <2 x i64>, ptr %i.ez, align 16
  %i.kf = getelementptr i8, ptr %i.hu, i64 960
  %i.kg = getelementptr i8, ptr %i.hu, i64 976
  store <2 x i64> %wide.load36.30, ptr %i.kf, align 8
  store <2 x i64> %wide.load37.30, ptr %i.kg, align 8
  %wide.load36.31 = load <2 x i64>, ptr %i.fa, align 16
  %wide.load37.31 = load <2 x i64>, ptr %i.fb, align 16
  %i.kh = getelementptr i8, ptr %i.hu, i64 992
  %i.ki = getelementptr i8, ptr %i.hu, i64 1008
  store <2 x i64> %wide.load36.31, ptr %i.kh, align 8
  store <2 x i64> %wide.load37.31, ptr %i.ki, align 8
  br label %load_block.exit.i

scalar.ph32:                                      ; preds = %vector.memcheck30, %scalar.ph32
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph32 ], [ 0, %vector.memcheck30 ] ; 6 uses
  %i.kj = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.kk = getelementptr i8, ptr %i.a, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 16
  %i.km = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.i.i
  store i64 %i.kl, ptr %i.km, align 8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kn = shl nuw nsw i64 %indvars.iv.next.i.i, 3
  %i.ko = getelementptr i8, ptr %i.a, i64 %i.kn
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.next.i.i
  store i64 %i.kp, ptr %i.kq, align 8
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.kr = shl nuw nsw i64 %indvars.iv.next.i.i.1, 3
  %i.ks = getelementptr i8, ptr %i.a, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 16
  %i.ku = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.next.i.i.1
  store i64 %i.kt, ptr %i.ku, align 8
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.kv = shl nuw nsw i64 %indvars.iv.next.i.i.2, 3
  %i.kw = getelementptr i8, ptr %i.a, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.next.i.i.2
  store i64 %i.kx, ptr %i.ky, align 8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 128
  br i1 %exitcond.not.i.i.3, label %load_block.exit.i, label %scalar.ph32, !llvm.loop !16

load_block.exit.i:                                ; preds = %scalar.ph32, %vector.body34
  store i32 1, ptr %i.cm, align 16
  %i.kz = call i32 @blake2b_long(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.d, i64 noundef 72) #9 ; 0 uses
  %i.la = load ptr, ptr %0, align 8
  %i.lb = getelementptr i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8            ; 2 uses
  %i.ld = load i32, ptr %i.cq, align 8
  %i.le = mul i32 %i.ld, %.018.i
  %i.lf = add i32 %i.le, 1
  %i.lg = zext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr [1024 x i8], ptr %i.lc, i64 %i.lg ; 68 uses
  %i.li = ptrtoaddr ptr %i.lc to i64
  %5 = sub i64 %i.li, %i.b
  %i.lj = shl nuw nsw i64 %i.lg, 10
  %i.lk = add i64 %5, %i.lj
  %6 = add i64 %i.lk, -1
  %diff.check = icmp ult i64 %6, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %load_block.exit.i
  %wide.load = load <2 x i64>, ptr %i.a, align 16
  %wide.load29 = load <2 x i64>, ptr %i.fc, align 16
  %i.ll = getelementptr i8, ptr %i.lh, i64 16
  store <2 x i64> %wide.load, ptr %i.lh, align 8
  store <2 x i64> %wide.load29, ptr %i.ll, align 8
  %wide.load.1 = load <2 x i64>, ptr %i.fd, align 16
  %wide.load29.1 = load <2 x i64>, ptr %i.fe, align 16
  %i.lm = getelementptr i8, ptr %i.lh, i64 32
  %i.ln = getelementptr i8, ptr %i.lh, i64 48
  store <2 x i64> %wide.load.1, ptr %i.lm, align 8
  store <2 x i64> %wide.load29.1, ptr %i.ln, align 8
  %wide.load.2 = load <2 x i64>, ptr %i.ff, align 16
  %wide.load29.2 = load <2 x i64>, ptr %i.fg, align 16
  %i.lo = getelementptr i8, ptr %i.lh, i64 64
  %i.lp = getelementptr i8, ptr %i.lh, i64 80
  store <2 x i64> %wide.load.2, ptr %i.lo, align 8
  store <2 x i64> %wide.load29.2, ptr %i.lp, align 8
  %wide.load.3 = load <2 x i64>, ptr %i.fh, align 16
  %wide.load29.3 = load <2 x i64>, ptr %i.fi, align 16
  %i.lq = getelementptr i8, ptr %i.lh, i64 96
  %i.lr = getelementptr i8, ptr %i.lh, i64 112
  store <2 x i64> %wide.load.3, ptr %i.lq, align 8
  store <2 x i64> %wide.load29.3, ptr %i.lr, align 8
  %wide.load.4 = load <2 x i64>, ptr %i.fj, align 16
  %wide.load29.4 = load <2 x i64>, ptr %i.fk, align 16
  %i.ls = getelementptr i8, ptr %i.lh, i64 128
  %i.lt = getelementptr i8, ptr %i.lh, i64 144
  store <2 x i64> %wide.load.4, ptr %i.ls, align 8
  store <2 x i64> %wide.load29.4, ptr %i.lt, align 8
  %wide.load.5 = load <2 x i64>, ptr %i.fl, align 16
  %wide.load29.5 = load <2 x i64>, ptr %i.fm, align 16
  %i.lu = getelementptr i8, ptr %i.lh, i64 160
  %i.lv = getelementptr i8, ptr %i.lh, i64 176
  store <2 x i64> %wide.load.5, ptr %i.lu, align 8
  store <2 x i64> %wide.load29.5, ptr %i.lv, align 8
  %wide.load.6 = load <2 x i64>, ptr %i.fn, align 16
  %wide.load29.6 = load <2 x i64>, ptr %i.fo, align 16
  %i.lw = getelementptr i8, ptr %i.lh, i64 192
  %i.lx = getelementptr i8, ptr %i.lh, i64 208
  store <2 x i64> %wide.load.6, ptr %i.lw, align 8
  store <2 x i64> %wide.load29.6, ptr %i.lx, align 8
  %wide.load.7 = load <2 x i64>, ptr %i.fp, align 16
  %wide.load29.7 = load <2 x i64>, ptr %i.fq, align 16
  %i.ly = getelementptr i8, ptr %i.lh, i64 224
  %i.lz = getelementptr i8, ptr %i.lh, i64 240
  store <2 x i64> %wide.load.7, ptr %i.ly, align 8
  store <2 x i64> %wide.load29.7, ptr %i.lz, align 8
  %wide.load.8 = load <2 x i64>, ptr %i.fr, align 16
  %wide.load29.8 = load <2 x i64>, ptr %i.fs, align 16
  %i.ma = getelementptr i8, ptr %i.lh, i64 256
  %i.mb = getelementptr i8, ptr %i.lh, i64 272
  store <2 x i64> %wide.load.8, ptr %i.ma, align 8
  store <2 x i64> %wide.load29.8, ptr %i.mb, align 8
  %wide.load.9 = load <2 x i64>, ptr %i.ft, align 16
  %wide.load29.9 = load <2 x i64>, ptr %i.fu, align 16
  %i.mc = getelementptr i8, ptr %i.lh, i64 288
  %i.md = getelementptr i8, ptr %i.lh, i64 304
  store <2 x i64> %wide.load.9, ptr %i.mc, align 8
  store <2 x i64> %wide.load29.9, ptr %i.md, align 8
  %wide.load.10 = load <2 x i64>, ptr %i.fv, align 16
  %wide.load29.10 = load <2 x i64>, ptr %i.fw, align 16
  %i.me = getelementptr i8, ptr %i.lh, i64 320
  %i.mf = getelementptr i8, ptr %i.lh, i64 336
  store <2 x i64> %wide.load.10, ptr %i.me, align 8
  store <2 x i64> %wide.load29.10, ptr %i.mf, align 8
  %wide.load.11 = load <2 x i64>, ptr %i.fx, align 16
  %wide.load29.11 = load <2 x i64>, ptr %i.fy, align 16
  %i.mg = getelementptr i8, ptr %i.lh, i64 352
  %i.mh = getelementptr i8, ptr %i.lh, i64 368
  store <2 x i64> %wide.load.11, ptr %i.mg, align 8
  store <2 x i64> %wide.load29.11, ptr %i.mh, align 8
  %wide.load.12 = load <2 x i64>, ptr %i.fz, align 16
  %wide.load29.12 = load <2 x i64>, ptr %i.ga, align 16
  %i.mi = getelementptr i8, ptr %i.lh, i64 384
  %i.mj = getelementptr i8, ptr %i.lh, i64 400
  store <2 x i64> %wide.load.12, ptr %i.mi, align 8
  store <2 x i64> %wide.load29.12, ptr %i.mj, align 8
  %wide.load.13 = load <2 x i64>, ptr %i.gb, align 16
  %wide.load29.13 = load <2 x i64>, ptr %i.gc, align 16
  %i.mk = getelementptr i8, ptr %i.lh, i64 416
  %i.ml = getelementptr i8, ptr %i.lh, i64 432
  store <2 x i64> %wide.load.13, ptr %i.mk, align 8
  store <2 x i64> %wide.load29.13, ptr %i.ml, align 8
  %wide.load.14 = load <2 x i64>, ptr %i.gd, align 16
  %wide.load29.14 = load <2 x i64>, ptr %i.ge, align 16
  %i.mm = getelementptr i8, ptr %i.lh, i64 448
  %i.mn = getelementptr i8, ptr %i.lh, i64 464
  store <2 x i64> %wide.load.14, ptr %i.mm, align 8
  store <2 x i64> %wide.load29.14, ptr %i.mn, align 8
  %wide.load.15 = load <2 x i64>, ptr %i.gf, align 16
  %wide.load29.15 = load <2 x i64>, ptr %i.gg, align 16
  %i.mo = getelementptr i8, ptr %i.lh, i64 480
  %i.mp = getelementptr i8, ptr %i.lh, i64 496
  store <2 x i64> %wide.load.15, ptr %i.mo, align 8
  store <2 x i64> %wide.load29.15, ptr %i.mp, align 8
  %wide.load.16 = load <2 x i64>, ptr %i.gh, align 16
  %wide.load29.16 = load <2 x i64>, ptr %i.gi, align 16
  %i.mq = getelementptr i8, ptr %i.lh, i64 512
  %i.mr = getelementptr i8, ptr %i.lh, i64 528
  store <2 x i64> %wide.load.16, ptr %i.mq, align 8
  store <2 x i64> %wide.load29.16, ptr %i.mr, align 8
  %wide.load.17 = load <2 x i64>, ptr %i.gj, align 16
  %wide.load29.17 = load <2 x i64>, ptr %i.gk, align 16
  %i.ms = getelementptr i8, ptr %i.lh, i64 544
  %i.mt = getelementptr i8, ptr %i.lh, i64 560
  store <2 x i64> %wide.load.17, ptr %i.ms, align 8
  store <2 x i64> %wide.load29.17, ptr %i.mt, align 8
  %wide.load.18 = load <2 x i64>, ptr %i.gl, align 16
  %wide.load29.18 = load <2 x i64>, ptr %i.gm, align 16
  %i.mu = getelementptr i8, ptr %i.lh, i64 576
  %i.mv = getelementptr i8, ptr %i.lh, i64 592
  store <2 x i64> %wide.load.18, ptr %i.mu, align 8
  store <2 x i64> %wide.load29.18, ptr %i.mv, align 8
  %wide.load.19 = load <2 x i64>, ptr %i.gn, align 16
  %wide.load29.19 = load <2 x i64>, ptr %i.go, align 16
  %i.mw = getelementptr i8, ptr %i.lh, i64 608
  %i.mx = getelementptr i8, ptr %i.lh, i64 624
  store <2 x i64> %wide.load.19, ptr %i.mw, align 8
  store <2 x i64> %wide.load29.19, ptr %i.mx, align 8
  %wide.load.20 = load <2 x i64>, ptr %i.gp, align 16
  %wide.load29.20 = load <2 x i64>, ptr %i.gq, align 16
  %i.my = getelementptr i8, ptr %i.lh, i64 640
  %i.mz = getelementptr i8, ptr %i.lh, i64 656
  store <2 x i64> %wide.load.20, ptr %i.my, align 8
  store <2 x i64> %wide.load29.20, ptr %i.mz, align 8
  %wide.load.21 = load <2 x i64>, ptr %i.gr, align 16
  %wide.load29.21 = load <2 x i64>, ptr %i.gs, align 16
  %i.na = getelementptr i8, ptr %i.lh, i64 672
  %i.nb = getelementptr i8, ptr %i.lh, i64 688
  store <2 x i64> %wide.load.21, ptr %i.na, align 8
  store <2 x i64> %wide.load29.21, ptr %i.nb, align 8
  %wide.load.22 = load <2 x i64>, ptr %i.gt, align 16
  %wide.load29.22 = load <2 x i64>, ptr %i.gu, align 16
  %i.nc = getelementptr i8, ptr %i.lh, i64 704
  %i.nd = getelementptr i8, ptr %i.lh, i64 720
  store <2 x i64> %wide.load.22, ptr %i.nc, align 8
  store <2 x i64> %wide.load29.22, ptr %i.nd, align 8
  %wide.load.23 = load <2 x i64>, ptr %i.gv, align 16
  %wide.load29.23 = load <2 x i64>, ptr %i.gw, align 16
  %i.ne = getelementptr i8, ptr %i.lh, i64 736
  %i.nf = getelementptr i8, ptr %i.lh, i64 752
  store <2 x i64> %wide.load.23, ptr %i.ne, align 8
  store <2 x i64> %wide.load29.23, ptr %i.nf, align 8
  %wide.load.24 = load <2 x i64>, ptr %i.gx, align 16
  %wide.load29.24 = load <2 x i64>, ptr %i.gy, align 16
  %i.ng = getelementptr i8, ptr %i.lh, i64 768
  %i.nh = getelementptr i8, ptr %i.lh, i64 784
  store <2 x i64> %wide.load.24, ptr %i.ng, align 8
  store <2 x i64> %wide.load29.24, ptr %i.nh, align 8
  %wide.load.25 = load <2 x i64>, ptr %i.gz, align 16
  %wide.load29.25 = load <2 x i64>, ptr %i.ha, align 16
  %i.ni = getelementptr i8, ptr %i.lh, i64 800
  %i.nj = getelementptr i8, ptr %i.lh, i64 816
  store <2 x i64> %wide.load.25, ptr %i.ni, align 8
  store <2 x i64> %wide.load29.25, ptr %i.nj, align 8
  %wide.load.26 = load <2 x i64>, ptr %i.hb, align 16
  %wide.load29.26 = load <2 x i64>, ptr %i.hc, align 16
  %i.nk = getelementptr i8, ptr %i.lh, i64 832
  %i.nl = getelementptr i8, ptr %i.lh, i64 848
  store <2 x i64> %wide.load.26, ptr %i.nk, align 8
  store <2 x i64> %wide.load29.26, ptr %i.nl, align 8
  %wide.load.27 = load <2 x i64>, ptr %i.hd, align 16
  %wide.load29.27 = load <2 x i64>, ptr %i.he, align 16
  %i.nm = getelementptr i8, ptr %i.lh, i64 864
  %i.nn = getelementptr i8, ptr %i.lh, i64 880
  store <2 x i64> %wide.load.27, ptr %i.nm, align 8
  store <2 x i64> %wide.load29.27, ptr %i.nn, align 8
  %wide.load.28 = load <2 x i64>, ptr %i.hf, align 16
  %wide.load29.28 = load <2 x i64>, ptr %i.hg, align 16
  %i.no = getelementptr i8, ptr %i.lh, i64 896
  %i.np = getelementptr i8, ptr %i.lh, i64 912
  store <2 x i64> %wide.load.28, ptr %i.no, align 8
  store <2 x i64> %wide.load29.28, ptr %i.np, align 8
  %wide.load.29 = load <2 x i64>, ptr %i.hh, align 16
  %wide.load29.29 = load <2 x i64>, ptr %i.hi, align 16
  %i.nq = getelementptr i8, ptr %i.lh, i64 928
  %i.nr = getelementptr i8, ptr %i.lh, i64 944
  store <2 x i64> %wide.load.29, ptr %i.nq, align 8
  store <2 x i64> %wide.load29.29, ptr %i.nr, align 8
  %wide.load.30 = load <2 x i64>, ptr %i.hj, align 16
  %wide.load29.30 = load <2 x i64>, ptr %i.hk, align 16
  %i.ns = getelementptr i8, ptr %i.lh, i64 960
  %i.nt = getelementptr i8, ptr %i.lh, i64 976
  store <2 x i64> %wide.load.30, ptr %i.ns, align 8
  store <2 x i64> %wide.load29.30, ptr %i.nt, align 8
  %wide.load.31 = load <2 x i64>, ptr %i.hl, align 16
  %wide.load29.31 = load <2 x i64>, ptr %i.hm, align 16
  %i.nu = getelementptr i8, ptr %i.lh, i64 992
  %i.nv = getelementptr i8, ptr %i.lh, i64 1008
  store <2 x i64> %wide.load.31, ptr %i.nu, align 8
  store <2 x i64> %wide.load29.31, ptr %i.nv, align 8
  br label %load_block.exit17.i

scalar.ph:                                        ; preds = %load_block.exit.i, %scalar.ph
  %indvars.iv.i14.i = phi i64 [ %indvars.iv.next.i15.i.3, %scalar.ph ], [ 0, %load_block.exit.i ] ; 6 uses
  %i.nw = shl nuw nsw i64 %indvars.iv.i14.i, 3
  %i.nx = getelementptr i8, ptr %i.a, i64 %i.nw
end_hunk_0
