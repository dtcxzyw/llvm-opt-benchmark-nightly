Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3dec_float?download=true
inline.NumInlined: 130
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ac3_decode_frame:bb.a
  %i.aj = tail call i32 @av_lfg_init_from_data(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i32 noundef %i.ai) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 104080 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 31 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 40 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 156 uses
  %or.cond.i684 = icmp ugt i32 %i.s, 268435455
  %i.ap = shl nuw nsw i32 %i.s, 3
  %i.aq = select i1 %or.cond.i684, i32 -8, i32 %i.ap ; 2 uses
  %or.cond.i.i685 = icmp ult i32 %i.aq, 2147483135 ; 3 uses
  %.014.i.i686 = select i1 %or.cond.i.i685, ptr %i.ak, ptr null
  %.013.i.i687 = select i1 %or.cond.i.i685, i32 %i.aq, i32 0 ; 2 uses
  store ptr %.014.i.i686, ptr %i.al, align 8, !tbaa !50
  store i32 %.013.i.i687, ptr %i.am, align 4, !tbaa !165
  %i.ar = add nuw nsw i32 %.013.i.i687, 8
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !51
  store i32 0, ptr %i.ao, align 8, !tbaa !52
  br i1 %or.cond.i.i685, label %.lr.ph693, label %.thread553

.lr.ph693:                                        ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 47448 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 380 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 384 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 388 ; 14 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 392 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 47452 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 372 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 368 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 45328 ; 15 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 45324 ; 27 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 45332 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 364 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 416 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 420 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 428 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 424 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 432 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 436 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 376 ; 13 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 352 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 356 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 456 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 460 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 464 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 45380 ; 12 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 45408 ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 45460 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 576 ; 11 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 444 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 448 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 20 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 57 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 396 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 488 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 59 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 492 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 61 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 45372 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 412 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 69
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 63
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 440
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 65
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 66
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 70
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 452 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 500 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 504 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 54832 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 508 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 54544 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 512 ; 2 uses
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_slow_decay_tab, i64 2), align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 47460 ; 2 uses
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_fast_decay_tab, i64 1), align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 47464 ; 2 uses
  %i.dp = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_slow_gain_tab, i64 2), align 2
  %i.dq = zext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 47456 ; 2 uses
  %i.ds = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_db_per_bit_tab, i64 4), align 2
  %i.dt = zext i16 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 47468 ; 2 uses
  %i.dv = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_floor_tab, i64 14), align 2
  %i.dw = sext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 47472 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 516 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 520 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 524 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 528 ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 552 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 47280 ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 2288 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 556
  %i.eg = getelementptr inbounds nuw i8, ptr %i.n, i64 560
  %i.eh = getelementptr inbounds nuw i8, ptr %i.n, i64 564
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 568
  %i.ej = getelementptr inbounds nuw i8, ptr %i.n, i64 572
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 47488 ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 1267 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 1326 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 724 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 47484 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 404 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 45348 ; 12 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 45340 ; 13 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 312 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 480
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 484
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 472
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 476
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 468
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 336 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 344 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 18 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 87696 ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 54864 ; 22 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 136912 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 54836 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 45364 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 45356 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 1256 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 1260 ; 11 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 1261
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 1284 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 1276 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 1280 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 1288 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 1309 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 1292
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 1336 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 1812 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 580
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 584
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 604 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 680 ; 7 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 702 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.n, i64 684
  %i.gj = getelementptr inbounds nuw i8, ptr %i.n, i64 752 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.n, i64 608 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.n, i64 45440 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.n, i64 45444 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 45488 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.n, i64 47516 ; 6 uses
  %i.gp = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_fast_gain_tab, i64 8), align 8
  %i.gq = zext i16 %i.gp to i32                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.n, i64 47476 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.n, i64 47480 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 54320 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.n, i64 54348 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 54376 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.n, i64 54432 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.n, i64 54488 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 49336 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 52920 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.n, i64 53620 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.hc = getelementptr inbounds nuw i8, ptr %i.n, i64 47544 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.hg = getelementptr inbounds nuw i8, ptr %i.n, i64 54928 ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.n, i64 56976 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.n, i64 45412
  %i.hj = getelementptr inbounds nuw i8, ptr %i.n, i64 45416
  %i.hk = getelementptr inbounds nuw i8, ptr %i.n, i64 55952 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 45368
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.hn = getelementptr inbounds nuw i8, ptr %i.n, i64 62096 ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 54572 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.n, i64 54828 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 45336 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.hu = getelementptr inbounds nuw i8, ptr %i.n, i64 73360
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 72336 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.n, i64 71312 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 70288 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 69264 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 86672 ; 8 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 87184 ; 22 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 168 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 85648 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %10, i64 9
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 38
  %i.ik = getelementptr inbounds nuw i8, ptr %i.n, i64 45344 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.n, i64 45352 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.n, i64 54872
  %i.io = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.n, i64 54880
  %i.iq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.n, i64 54888
  %i.is = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.n, i64 54896
  %i.iu = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.iv = getelementptr inbounds nuw i8, ptr %i.n, i64 54904
  %i.iw = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.n, i64 54912
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %i.gq, i64 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph693, %bb.mk
  %i.iy = phi i1 [ false, %.lr.ph693 ], [ true, %bb.mk ]
  %.0391690 = phi i32 [ %i.s, %.lr.ph693 ], [ %i.dst, %bb.mk ] ; 5 uses
  %.0393688 = phi ptr [ %i.ak, %.lr.ph693 ], [ %i.dss, %bb.mk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.iz = call i32 @ff_ac3_parse_header(ptr noundef nonnull %i.al, ptr noundef nonnull %7) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.iz, 0
  br i1 %.not.i, label %bb.j, label %bb.bp

bb.j:                                             ; preds = %bb.i
  %i.ja = load i8, ptr %i.as, align 4, !tbaa !167
  %i.jb = zext i8 %i.ja to i32
  store i32 %i.jb, ptr %i.at, align 8, !tbaa !168
  %i.jc = load <4 x i8>, ptr %i.au, align 1, !tbaa !44 ; 3 uses
  %i.jd = extractelement <4 x i8> %i.jc, i64 3    ; 2 uses
  %i.je = extractelement <4 x i8> %i.jc, i64 0    ; 2 uses
  %i.jf = load i8, ptr %i.aw, align 2, !tbaa !169
  %i.jg = zext i8 %i.jd to i32
  %i.jh = zext i8 %i.jf to i32
  %i.ji = zext i8 %i.je to i32
  %i.jj = zext <4 x i8> %i.jc to <4 x i32>
  store <4 x i32> %i.jj, ptr %i.av, align 4, !tbaa !43
  %i.jk = load i8, ptr %i.ba, align 4, !tbaa !170
  %i.jl = zext i8 %i.jk to i32
  store i32 %i.jl, ptr %i.bb, align 4, !tbaa !171
  %i.jm = load i16, ptr %i.bc, align 2, !tbaa !172
  %i.jn = zext i16 %i.jm to i32
  store i32 %i.jn, ptr %i.bd, align 4, !tbaa !173
  %i.jo = load i32, ptr %i.be, align 8, !tbaa !174
  store i32 %i.jo, ptr %i.bf, align 16, !tbaa !175
  %i.jp = load i8, ptr %i.bg, align 4, !tbaa !176
  %i.jq = zext i8 %i.jp to i32                    ; 2 uses
  store i32 %i.jq, ptr %i.bh, align 16, !tbaa !177
  %i.jr = sub nsw i32 %i.jq, %i.jg                ; 2 uses
  store i32 %i.jr, ptr %i.bi, align 4, !tbaa !178
  %i.js = add nsw i32 %i.jr, 1                    ; 2 uses
  store i32 %i.js, ptr %i.bj, align 4, !tbaa !179
  %i.jt = load i16, ptr %i.bk, align 2, !tbaa !180
  %i.ju = zext i16 %i.jt to i32                   ; 2 uses
  store i32 %i.ju, ptr %i.bl, align 4, !tbaa !181
  %i.jv = load i32, ptr %i.o, align 8, !tbaa !162
  %i.jw = add nsw i32 %i.jv, %i.ju
  store i32 %i.jw, ptr %i.o, align 8, !tbaa !162
  store i32 0, ptr %i.bm, align 16, !tbaa !182
  %i.jx = icmp ult i8 %i.je, 11
  br i1 %i.jx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.jy = load i32, ptr %i.bn, align 8, !tbaa !183
  store i32 %i.jy, ptr %i.bo, align 4, !tbaa !184
  %i.jz = load i32, ptr %i.bp, align 4, !tbaa !185
  store i32 %i.jz, ptr %i.bq, align 4, !tbaa !186
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 4, ptr %i.br, align 8, !tbaa !187
  store i32 4, ptr %i.bs, align 16, !tbaa !188
  store i32 0, ptr %i.bt, align 4, !tbaa !189
  %i.ka = load i32, ptr %i.bu, align 4, !tbaa !190
  store i32 %i.ka, ptr %i.bv, align 8, !tbaa !191
  %i.kb = load i8, ptr %i.bw, align 1, !tbaa !192
  %i.kc = zext i8 %i.kb to i32
  store i32 %i.kc, ptr %i.bx, align 16, !tbaa !193
  %i.kd = load i32, ptr %i.by, align 4, !tbaa !194
  store i32 %i.kd, ptr %i.bz, align 4, !tbaa !195
  %i.ke = load i32, ptr %i.ca, align 8, !tbaa !196 ; 2 uses
  store i32 %i.ke, ptr %i.cb, align 8, !tbaa !197
  store i32 0, ptr %i.cc, align 4, !tbaa !198
  store i32 0, ptr %i.cd, align 16, !tbaa !199
  %.not80.i = icmp eq i8 %i.jd, 0
  br i1 %.not80.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kf = sext i32 %i.js to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.kf
  store i32 0, ptr %i.kg, align 4, !tbaa !43
  %i.kh = load i32, ptr %i.bj, align 4, !tbaa !179
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ki
  store i32 7, ptr %i.kj, align 4, !tbaa !43
  %i.kk = load i32, ptr %i.bj, align 4, !tbaa !179
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.kl
  store i32 2, ptr %i.km, align 4, !tbaa !43
  %i.kn = load i32, ptr %i.bj, align 4, !tbaa !179
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ko
  store i32 0, ptr %i.kp, align 4, !tbaa !43
  %.pre.i = load i32, ptr %i.av, align 4, !tbaa !200
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.kq = phi i32 [ %.pre.i, %bb.m ], [ %i.ji, %bb.l ]
  %i.kr = icmp slt i32 %i.kq, 11
  br i1 %i.kr, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ci, align 4, !tbaa !201
  store <4 x i32> <i32 2, i32 1, i32 1, i32 1>, ptr %i.dd, align 4, !tbaa !43
  store i32 0, ptr %i.dy, align 4, !tbaa !202
  store i32 0, ptr %i.eo, align 4, !tbaa !203
  store i32 1, ptr %i.dz, align 8, !tbaa !204
  store i32 1, ptr %i.ea, align 4, !tbaa !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ee, i8 0, i64 28, i1 false)
  %i.ks = load i32, ptr %i.ay, align 4, !tbaa !206
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.t ] ; 9 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !44  ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.kw = icmp eq i8 %i.ku, 0
  %narrow.i = select i1 %i.kw, i8 -31, i8 %i.ku
  %spec.select.i = sext i8 %narrow.i to i32       ; 2 uses
  store i32 %spec.select.i, ptr %i.kv, align 4, !tbaa !43
  %i.kx = load i32, ptr %i.cn, align 8, !tbaa !207 ; 2 uses
  %.not82.i = icmp eq i32 %i.kx, 0
  br i1 %.not82.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ky = sub nsw i32 %i.kx, %spec.select.i
  %i.kz = sitofp nsz i32 %i.ky to float
  %i.la = fdiv nsz float %i.kz, 6.000000e+00
  %exp2.i = call nsz float @llvm.exp2.f32(float %i.la)
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i
  store float %exp2.i, ptr %i.lb, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.lc = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.i
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !44  ; 2 uses
  %i.le = zext i8 %i.ld to i32
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !43
  %.not83.i = icmp eq i8 %i.ld, 0
  br i1 %.not83.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !44
  %i.li = zext i8 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr @ff_ac3_heavy_dynamic_range_tab, i64 %i.li
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !29
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i
  store float %i.lk, ptr %i.ll, align 4, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.lm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ln = or i32 %i.ks, %i.lm
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.p, label %.loopexit580, !llvm.loop !65

bb.u:                                             ; preds = %bb.n
  store i32 1, ptr %i.ci, align 4, !tbaa !201
  %i.lp = load i32, ptr %i.bx, align 16, !tbaa !193
  %i.lq = icmp eq i32 %i.lp, 3
  br i1 %i.lq, label %bb.v, label %bb.w
end_hunk_0
begin_hunk_1_@ac3_decode_frame:bb.a
  %.not243320.i.i = icmp slt i32 %i.abt, 0
  br i1 %.not243320.i.i, label %.loopexit280.i.i, label %.lr.ph323.i.i

.lr.ph323.i.i:                                    ; preds = %bb.bf
  %i.abu = add nuw i32 %i.abt, 1
  %wide.trip.count389.i.i = zext i32 %i.abu to i64 ; 3 uses
  %min.iters.check1190 = icmp ult i32 %i.abt, 7
  br i1 %min.iters.check1190, label %scalar.ph1189.preheader, label %vector.ph1191

vector.ph1191:                                    ; preds = %.lr.ph323.i.i
  %n.vec1192 = and i64 %wide.trip.count389.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %i.abs, i64 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1191
  %index1196 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1197, %vector.body1195 ] ; 2 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index1196 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store <4 x i32> %broadcast.splat1194, ptr %i.abv, align 4, !tbaa !43
  store <4 x i32> %broadcast.splat1194, ptr %i.abw, align 4, !tbaa !43
  %index.next1197 = add nuw i64 %index1196, 8     ; 2 uses
  %i.abx = icmp eq i64 %index.next1197, %n.vec1192
  br i1 %i.abx, label %middle.block1198, label %vector.body1195, !llvm.loop !75

middle.block1198:                                 ; preds = %vector.body1195
  %cmp.n1199 = icmp eq i64 %n.vec1192, %wide.trip.count389.i.i
  br i1 %cmp.n1199, label %.loopexit280.i.i, label %scalar.ph1189.preheader

scalar.ph1189.preheader:                          ; preds = %.lr.ph323.i.i, %middle.block1198
  %indvars.iv386.i.i.ph = phi i64 [ 0, %.lr.ph323.i.i ], [ %n.vec1192, %middle.block1198 ]
  br label %scalar.ph1189

scalar.ph1189:                                    ; preds = %scalar.ph1189.preheader, %scalar.ph1189
  %indvars.iv386.i.i = phi i64 [ %indvars.iv.next387.i.i, %scalar.ph1189 ], [ %indvars.iv386.i.i.ph, %scalar.ph1189.preheader ] ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv386.i.i
  store i32 %i.abs, ptr %i.aby, align 4, !tbaa !43
  %indvars.iv.next387.i.i = add nuw nsw i64 %indvars.iv386.i.i, 1 ; 2 uses
  %exitcond390.not.i.i = icmp eq i64 %indvars.iv.next387.i.i, %wide.trip.count389.i.i
  br i1 %exitcond390.not.i.i, label %.loopexit280.i.i, label %scalar.ph1189, !llvm.loop !76

.loopexit280.i.i:                                 ; preds = %scalar.ph1189, %middle.block1198, %bb.bf, %.loopexit283.i.i
  %i.abz = lshr exact i32 128, %i.pg
  %i.aca = and i32 %i.abz, %i.pf
  %.not244.i.i = icmp eq i32 %i.aca, 0
  %.pre412.i.i = load i32, ptr %i.bi, align 4, !tbaa !178 ; 5 uses
  br i1 %.not244.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit280.i.i
  %.not245324.i.i = icmp slt i32 %.pre412.i.i, 1
  br i1 %.not245324.i.i, label %._crit_edge333.i.i, label %.lr.ph326.i.i

.lr.ph326.i.i:                                    ; preds = %.preheader.i.i
  %i.acb = load i32, ptr %i.an, align 16, !tbaa !51 ; 3 uses
  %.promoted327.i.i = load i32, ptr %i.ao, align 8, !tbaa !52
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.lr.ph326.i.i
  %storemerge328.i.i = phi i32 [ %.promoted327.i.i, %.lr.ph326.i.i ], [ %storemerge.i.i, %bb.bi ] ; 4 uses
  %.5325.i.i = phi i32 [ 1, %.lr.ph326.i.i ], [ %i.acq, %bb.bi ] ; 2 uses
  %i.acc = lshr i32 %storemerge328.i.i, 3
  %i.acd = zext nneg i32 %i.acc to i64
  %i.ace = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.acd
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !44
  %i.acg = icmp slt i32 %storemerge328.i.i, %i.acb
  %i.ach = zext i1 %i.acg to i32
  %spec.select.i277.i.i = add i32 %storemerge328.i.i, %i.ach ; 2 uses
  %i.aci = zext i8 %i.acf to i32
  %i.acj = and i32 %storemerge328.i.i, 7
  %i.ack = lshr exact i32 128, %i.acj
  %i.acl = and i32 %i.ack, %i.aci
  %.not251.i.i = icmp eq i32 %i.acl, 0
  br i1 %.not251.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.acm = add i32 %spec.select.i277.i.i, 10
  %i.acn = call i32 @llvm.umin.i32(i32 %i.acb, i32 %i.acm)
  %i.aco = add i32 %i.acn, 8
  %i.acp = call i32 @llvm.umin.i32(i32 %i.acb, i32 %i.aco)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %storemerge.i.i = phi i32 [ %i.acp, %bb.bh ], [ %spec.select.i277.i.i, %bb.bg ] ; 2 uses
  store i32 %storemerge.i.i, ptr %i.ao, align 8, !tbaa !52
  %i.acq = add nuw i32 %.5325.i.i, 1
  %exitcond391.not.i.i = icmp eq i32 %.5325.i.i, %.pre412.i.i
  br i1 %exitcond391.not.i.i, label %.loopexit.i.i, label %bb.bg, !llvm.loop !77

.loopexit.i.i:                                    ; preds = %bb.bi, %.loopexit280.i.i
  %.not246329.i.i = icmp slt i32 %.pre412.i.i, 1
  br i1 %.not246329.i.i, label %._crit_edge333.i.i, label %.lr.ph332.i.i

.lr.ph332.i.i:                                    ; preds = %.loopexit.i.i
  %i.acr = lshr exact i32 128, %i.sq
  %i.acs = and i32 %i.acr, %i.sp
  %.not249.i.i = icmp eq i32 %i.acs, 0
  br i1 %.not249.i.i, label %.lr.ph332.split.us.i.i, label %.lr.ph332.split.i.i

.lr.ph332.split.us.i.i:                           ; preds = %.lr.ph332.i.i, %.lr.ph332.split.us.i.i
  %indvars.iv395.i.i = phi i64 [ %indvars.iv.next396.i.i, %.lr.ph332.split.us.i.i ], [ 1, %.lr.ph332.i.i ] ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv395.i.i
  store i8 -1, ptr %i.act, align 1, !tbaa !44
  %indvars.iv.next396.i.i = add nuw nsw i64 %indvars.iv395.i.i, 1
  %i.acu = load i32, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.acv = sext i32 %i.acu to i64
  %.not246.us.not.i.i = icmp slt i64 %indvars.iv395.i.i, %i.acv
  br i1 %.not246.us.not.i.i, label %.lr.ph332.split.us.i.i, label %._crit_edge333.i.i, !llvm.loop !78

.lr.ph332.split.i.i:                              ; preds = %.lr.ph332.i.i
  %i.acw = load i32, ptr %i.an, align 16, !tbaa !51 ; 2 uses
  %.promoted334.i.i = load i32, ptr %i.ao, align 8, !tbaa !52
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.lr.ph332.split.i.i
  %indvars.iv392.i.i = phi i64 [ 1, %.lr.ph332.split.i.i ], [ %indvars.iv.next393.i.i, %bb.bl ] ; 3 uses
  %spec.select.i278336.i.i = phi i32 [ %.promoted334.i.i, %.lr.ph332.split.i.i ], [ %spec.select.i278335.i.i, %bb.bl ] ; 4 uses
  %i.acx = lshr i32 %spec.select.i278336.i.i, 3
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !44
  %i.adb = icmp slt i32 %spec.select.i278336.i.i, %i.acw
  %i.adc = zext i1 %i.adb to i32
  %spec.select.i278.i.i = add i32 %spec.select.i278336.i.i, %i.adc ; 5 uses
  %i.add = zext i8 %i.ada to i32
  %i.ade = and i32 %spec.select.i278336.i.i, 7
  store i32 %spec.select.i278.i.i, ptr %i.ao, align 8, !tbaa !52
  %i.adf = lshr exact i32 128, %i.ade
  %i.adg = and i32 %i.adf, %i.add
  %.not250.i.i = icmp eq i32 %i.adg, 0
  br i1 %.not250.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.adh = lshr i32 %spec.select.i278.i.i, 3
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.adi
  %i.adk = load i32, ptr %i.adj, align 1, !tbaa !44
  %i.adl = call i32 @llvm.bswap.i32(i32 %i.adk)
  %i.adm = and i32 %spec.select.i278.i.i, 7
  %i.adn = shl i32 %i.adl, %i.adm
  %i.ado = lshr i32 %i.adn, 27
  %i.adp = add i32 %spec.select.i278.i.i, 5
  %i.adq = call i32 @llvm.umin.i32(i32 %i.acw, i32 %i.adp) ; 2 uses
  store i32 %i.adq, ptr %i.ao, align 8, !tbaa !52
  %i.adr = trunc nuw nsw i32 %i.ado to i8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sink.i.i = phi i8 [ %i.adr, %bb.bk ], [ -1, %bb.bj ]
  %spec.select.i278335.i.i = phi i32 [ %i.adq, %bb.bk ], [ %spec.select.i278.i.i, %bb.bj ]
  %i.ads = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv392.i.i
  store i8 %.sink.i.i, ptr %i.ads, align 1, !tbaa !44
  %indvars.iv.next393.i.i = add nuw nsw i64 %indvars.iv392.i.i, 1
  %i.adt = load i32, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.adu = sext i32 %i.adt to i64
  %.not246.not.i.i = icmp slt i64 %indvars.iv392.i.i, %i.adu
  br i1 %.not246.not.i.i, label %bb.bj, label %._crit_edge333.i.i, !llvm.loop !78

._crit_edge333.i.i:                               ; preds = %bb.bl, %.lr.ph332.split.us.i.i, %.loopexit.i.i, %.preheader.i.i
  %i.adv = phi i32 [ %.pre412.i.i, %.preheader.i.i ], [ %i.acu, %.lr.ph332.split.us.i.i ], [ %.pre412.i.i, %.loopexit.i.i ], [ %i.adt, %bb.bl ] ; 2 uses
  %i.adw = load i32, ptr %i.bv, align 8, !tbaa !191 ; 2 uses
  %i.adx = icmp sgt i32 %i.adw, 1
  br i1 %i.adx, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %._crit_edge333.i.i
  %i.ady = load i32, ptr %i.ao, align 8, !tbaa !52 ; 4 uses
  %i.adz = lshr i32 %i.ady, 3
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.aea
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !44
  %i.aed = load i32, ptr %i.an, align 16, !tbaa !51 ; 2 uses
  %i.aee = icmp slt i32 %i.ady, %i.aed
  %i.aef = zext i1 %i.aee to i32
  %spec.select.i279.i.i = add i32 %i.ady, %i.aef  ; 4 uses
  %i.aeg = zext i8 %i.aec to i32
  %i.aeh = and i32 %i.ady, 7
  store i32 %spec.select.i279.i.i, ptr %i.ao, align 8, !tbaa !52
  %i.aei = lshr exact i32 128, %i.aeh
  %i.aej = and i32 %i.aei, %i.aeg
  %.not247.i.i = icmp eq i32 %i.aej, 0
  br i1 %.not247.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aek = add nsw i32 %i.adw, -1
  %i.ael = load i32, ptr %i.bl, align 4, !tbaa !181
  %i.aem = add nsw i32 %i.ael, -2                 ; 3 uses
  %i.aen = icmp ugt i32 %i.aem, 65535             ; 2 uses
  %i.aeo = lshr i32 %i.aem, 16
  %spec.select.i.i.i = select i1 %i.aen, i32 %i.aeo, i32 %i.aem ; 3 uses
  %spec.select11.i.i.i = select i1 %i.aen, i32 16, i32 0 ; 2 uses
  %.not.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.aep = lshr i32 %spec.select.i.i.i, 8
  %i.aeq = or disjoint i32 %spec.select11.i.i.i, 8
  %.110.i.i.i = select i1 %.not.i.i.i, i32 %spec.select.i.i.i, i32 %i.aep
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %spec.select11.i.i.i, i32 %i.aeq
  %i.aer = zext nneg i32 %.110.i.i.i to i64
  %i.aes = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aer
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !44
  %i.aeu = zext i8 %i.aet to i32
  %i.aev = add nuw nsw i32 %i.aeu, 4
  %i.aew = add nuw nsw i32 %i.aev, %.1.i.i.i
  %i.aex = mul nuw nsw i32 %i.aew, %i.aek         ; 2 uses
  %i.aey = sub nsw i32 0, %spec.select.i279.i.i   ; 2 uses
  %i.aez = sub nsw i32 %i.aed, %spec.select.i279.i.i
  %i.afa = icmp slt i32 %i.aex, %i.aey
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.aex, i32 %i.aez)
  %.0.i.i.i.i = select i1 %i.afa, i32 %i.aey, i32 %..i.i.i.i
  %i.afb = add nsw i32 %.0.i.i.i.i, %spec.select.i279.i.i
  store i32 %i.afb, ptr %i.ao, align 8, !tbaa !52
  %i.afc = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.afc, ptr noundef nonnull @.str.50) #11
  %.pre413.i.i = load i32, ptr %i.bi, align 4, !tbaa !178
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %._crit_edge333.i.i
  %i.afd = phi i32 [ %.pre413.i.i, %bb.bn ], [ %i.adv, %bb.bm ], [ %i.adv, %._crit_edge333.i.i ]
  %.not248337.i.i = icmp slt i32 %i.afd, 1
  br i1 %.not248337.i.i, label %._crit_edge341.i.i, label %.lr.ph340.i.i

.lr.ph340.i.i:                                    ; preds = %bb.bo, %.lr.ph340.i.i
  %indvars.iv398.i.i = phi i64 [ %indvars.iv.next399.i.i, %.lr.ph340.i.i ], [ 1, %bb.bo ] ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv398.i.i
  store i8 1, ptr %i.afe, align 1, !tbaa !44
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv398.i.i
  store i32 1, ptr %i.aff, align 4, !tbaa !43
  %indvars.iv.next399.i.i = add nuw nsw i64 %indvars.iv398.i.i, 1
  %i.afg = load i32, ptr %i.bi, align 4, !tbaa !178
  %i.afh = sext i32 %i.afg to i64
  %.not248.not.i.i = icmp slt i64 %indvars.iv398.i.i, %i.afh
  br i1 %.not248.not.i.i, label %.lr.ph340.i.i, label %._crit_edge341.i.i, !llvm.loop !79

._crit_edge341.i.i:                               ; preds = %.lr.ph340.i.i, %bb.bo
  store i32 1, ptr %i.eo, align 4, !tbaa !203
  br label %.loopexit580

bb.bp:                                            ; preds = %bb.x, %bb.i, %bb.v, %bb.aa, %bb.y
  %.077.i.ph = phi i32 [ -84085770, %bb.y ], [ -1163346256, %bb.aa ], [ -84085770, %bb.v ], [ %i.iz, %bb.i ], [ -84085770, %bb.x ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.afi = add i32 %.077.i.ph, 117640202          ; 2 uses
  %i.afj = call i32 @llvm.fshl.i32(i32 %i.afi, i32 %i.afi, i32 8)
  switch i32 %i.afj, label %bb.bw [
    i32 6, label %bb.bq
    i32 5, label %.sink.split
    i32 4, label %bb.br
    i32 3, label %bb.bs
    i32 2, label %bb.bt
    i32 0, label %bb.bv
    i32 1, label %bb.ca
  ]

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.28) #11
  br label %.thread553

bb.br:                                            ; preds = %bb.bp
  br label %.sink.split

bb.bs:                                            ; preds = %bb.bp
  br label %.sink.split

bb.bt:                                            ; preds = %bb.bp
  %i.afk = load i32, ptr %i.bz, align 4, !tbaa !195 ; 2 uses
  %.not427 = icmp eq i32 %i.afk, 0
  br i1 %.not427, label %.sink.split, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.32, i32 noundef %i.afk) #11
  store i32 0, ptr %2, align 4, !tbaa !43
  br label %.thread553

bb.bv:                                            ; preds = %bb.bp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.34) #11
  br label %.thread553

bb.bw:                                            ; preds = %bb.bp
  store i32 0, ptr %2, align 4, !tbaa !43
  br label %.thread553

.loopexit580:                                     ; preds = %bb.t, %._crit_edge341.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.afl = load i32, ptr %i.bl, align 4, !tbaa !181
  %i.afm = icmp sgt i32 %i.afl, %.0391690
  br i1 %i.afm, label %.sink.split, label %bb.bx

bb.bx:                                            ; preds = %.loopexit580
  %i.afn = load i32, ptr %i.eq, align 8, !tbaa !230
  %i.afo = and i32 %i.afn, 65537
  %.not424 = icmp eq i32 %i.afo, 0
  br i1 %.not424, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.afp = call ptr @av_crc_get_table(i32 noundef 1) #11
  %i.afq = getelementptr inbounds nuw i8, ptr %.0393688, i64 2
  %i.afr = load i32, ptr %i.bl, align 4, !tbaa !181
  %i.afs = add nsw i32 %i.afr, -2
  %i.aft = sext i32 %i.afs to i64
  %i.afu = call i32 @av_crc(ptr noundef %i.afp, i32 noundef 0, ptr noundef nonnull %i.afq, i64 noundef %i.aft) #12
  %.not425 = icmp eq i32 %i.afu, 0
  br i1 %.not425, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.36) #11
  %i.afv = load i32, ptr %i.eq, align 8, !tbaa !230
  %i.afw = and i32 %i.afv, 8
  %.not426 = icmp eq i32 %i.afw, 0
  br i1 %.not426, label %bb.ca, label %.thread553

.sink.split:                                      ; preds = %.loopexit580, %bb.bt, %bb.bp, %bb.bs, %bb.br
  %.str.35.sink = phi ptr [ @.str.33, %bb.bt ], [ @.str.29, %bb.bp ], [ @.str.30, %bb.br ], [ @.str.31, %bb.bs ], [ @.str.35, %.loopexit580 ]
  %.0377.ph = phi i32 [ %.077.i.ph, %bb.bt ], [ %.077.i.ph, %bb.bp ], [ %.077.i.ph, %bb.br ], [ %.077.i.ph, %bb.bs ], [ -67308554, %.loopexit580 ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.35.sink) #11
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split, %bb.bz, %bb.by, %bb.bx, %bb.bp
  %.0377 = phi i32 [ %.077.i.ph, %bb.bp ], [ -100862986, %bb.bz ], [ 0, %bb.bx ], [ 0, %bb.by ], [ %.0377.ph, %.sink.split ] ; 3 uses
  %i.afx = load i32, ptr %i.bx, align 16, !tbaa !193
  %i.afy = icmp ne i32 %i.afx, 1
  %or.cond5 = or i1 %i.iy, %i.afy
  br i1 %or.cond5, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.37) #11
  store i32 0, ptr %2, align 4, !tbaa !43
  %i.afz = load i32, ptr %i.bl, align 4, !tbaa !181
  %. = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.afz)
  br label %.thread553

bb.cc:                                            ; preds = %bb.ca
  %.not428 = icmp eq i32 %.0377, 0
  %.pre = load i32, ptr %i.bh, align 16, !tbaa !177 ; 4 uses
  br i1 %.not428, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not429 = icmp eq i32 %.pre, 0
  br i1 %.not429, label %bb.db, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aga = load i32, ptr %i.er, align 4, !tbaa !231
  %.not430 = icmp eq i32 %i.aga, %.pre
  br i1 %.not430, label %.preheader579, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  store i32 %.pre, ptr %i.er, align 4, !tbaa !231
  %i.agb = load i32, ptr %i.ay, align 4, !tbaa !206 ; 2 uses
  store i32 %i.agb, ptr %i.es, align 4, !tbaa !232
  %i.agc = load i32, ptr %i.az, align 8, !tbaa !229
  %.not432 = icmp eq i32 %i.agc, 0
  br i1 %.not432, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.agd = or i32 %i.agb, 8
  store i32 %i.agd, ptr %i.es, align 4, !tbaa !232
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.age = icmp sgt i32 %.pre, 1
  br i1 %i.age, label %bb.ci, label %.thread

bb.ci:                                            ; preds = %bb.ch
  store i32 1, ptr %8, align 8, !tbaa !233
  store i32 1, ptr %i.eu, align 4, !tbaa !234
  store i64 4, ptr %i.ev, align 8, !tbaa !44
  store ptr null, ptr %i.ew, align 8, !tbaa !235
  %i.agf = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.et, ptr noundef nonnull %8) #11
  %.not433 = icmp eq i32 %i.agf, 0
  br i1 %.not433, label %.thread.sink.split, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.pre806 = load i32, ptr %i.bh, align 16, !tbaa !177
  %i.agg = icmp sgt i32 %.pre806, 2
  br i1 %i.agg, label %bb.ck, label %.thread

bb.ck:                                            ; preds = %bb.cj
  store i32 1, ptr %9, align 8, !tbaa !233
  store i32 2, ptr %i.ex, align 4, !tbaa !234
  store i64 3, ptr %i.ey, align 8, !tbaa !44
  store ptr null, ptr %i.ez, align 8, !tbaa !235
  %i.agh = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.et, ptr noundef nonnull %9) #11
  %.not434 = icmp eq i32 %i.agh, 0
  br i1 %.not434, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.ck, %bb.ci
  %.sink999.a = phi i32 [ 1, %bb.ci ], [ 2, %bb.ck ] ; 2 uses
  store i32 %.sink999.a, ptr %i.er, align 4, !tbaa !231
  store i32 %.sink999.a, ptr %i.es, align 4, !tbaa !232
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ch, %bb.cj, %bb.ck
  %i.agi = load i32, ptr %i.bo, align 4, !tbaa !184
  %i.agj = sext i32 %i.agi to i64
  %i.agk = getelementptr inbounds [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.agj
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !29 ; 3 uses
  store float %i.agl, ptr %i.fa, align 16, !tbaa !236
  %i.agm = load i32, ptr %i.bq, align 4, !tbaa !186
  %i.agn = sext i32 %i.agm to i64
  %i.ago = getelementptr inbounds [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.agn
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !29 ; 4 uses
  store float %i.agp, ptr %i.fb, align 4, !tbaa !237
  %i.agq = load i32, ptr %i.br, align 8, !tbaa !187
  %i.agr = sext i32 %i.agq to i64
  %i.ags = getelementptr inbounds [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.agr
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !29
end_hunk_1
begin_hunk_2_@ac3_decode_frame:bb.a

bb.jw:                                            ; preds = %bb.jv
  %i.dbr = load i32, ptr %i.ce, align 4, !tbaa !43 ; 2 uses
  %i.dbs = load i32, ptr %i.cf, align 16, !tbaa !43 ; 2 uses
  %i.dbt = icmp slt i32 %i.dbr, %i.dbs
  br i1 %i.dbt, label %.lr.ph.i24.i.i, label %.loopexit.i.i.i

.lr.ph.i24.i.i:                                   ; preds = %bb.jw
  %i.dbu = getelementptr inbounds nuw [1024 x i8], ptr %i.hg, i64 %indvars.iv24.i.i.i
  %i.dbv = sext i32 %i.dbr to i64
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jz, %.lr.ph.i24.i.i
  %i.dbw = phi i32 [ %i.dbs, %.lr.ph.i24.i.i ], [ %i.dca, %bb.jz ]
  %indvars.iv.i25.i.i = phi i64 [ %i.dbv, %.lr.ph.i24.i.i ], [ %indvars.iv.next.i26.i.i, %bb.jz ] ; 3 uses
  %i.dbx = getelementptr inbounds i8, ptr %i.hc, i64 %indvars.iv.i25.i.i
  %i.dby = load i8, ptr %i.dbx, align 1, !tbaa !44
  %.not18.i.i.i = icmp eq i8 %i.dby, 0
  br i1 %.not18.i.i.i, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.dbz = getelementptr inbounds [4 x i8], ptr %i.dbu, i64 %indvars.iv.i25.i.i
  store i32 0, ptr %i.dbz, align 4, !tbaa !43
  %.pre.i27.i.i = load i32, ptr %i.cf, align 16, !tbaa !43
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.dca = phi i32 [ %i.dbw, %bb.jx ], [ %.pre.i27.i.i, %bb.jy ] ; 2 uses
  %indvars.iv.next.i26.i.i = add nsw i64 %indvars.iv.i25.i.i, 1 ; 2 uses
  %i.dcb = sext i32 %i.dca to i64
  %i.dcc = icmp slt i64 %indvars.iv.next.i26.i.i, %i.dcb
  br i1 %i.dcc, label %bb.jx, label %.loopexit.loopexit.i.i.i, !llvm.loop !130

.loopexit.loopexit.i.i.i:                         ; preds = %bb.jz
  %.pre27.i.i.i = load i32, ptr %i.bi, align 4, !tbaa !178
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %bb.jw, %bb.jv, %.lr.ph22.i.i.i
  %i.dcd = phi i32 [ %.pre27.i.i.i, %.loopexit.loopexit.i.i.i ], [ %i.dbm, %bb.jw ], [ %i.dbm, %.lr.ph22.i.i.i ], [ %i.dbm, %bb.jv ] ; 2 uses
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 1
  %i.dce = sext i32 %i.dcd to i64
  %.not.not.i.i.i = icmp slt i64 %indvars.iv24.i.i.i, %i.dce
  br i1 %.not.not.i.i.i, label %.lr.ph22.i.i.i, label %decode_transform_coeffs.exit.i, !llvm.loop !131

decode_transform_coeffs.exit.i:                   ; preds = %.loopexit.i.i.i, %._crit_edge.i677.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.dcf = load i32, ptr %i.ay, align 4, !tbaa !206
  %i.dcg = icmp eq i32 %i.dcf, 2
  br i1 %i.dcg, label %bb.ka, label %do_rematrixing.exit.i

bb.ka:                                            ; preds = %decode_transform_coeffs.exit.i
  %i.dch = load i32, ptr %i.hi, align 4, !tbaa !43
  %i.dci = load i32, ptr %i.hj, align 8, !tbaa !43
  %..i.i = call i32 @llvm.smin.i32(i32 %i.dch, i32 %i.dci)
  %i.dcj = load i32, ptr %i.gl, align 16, !tbaa !252 ; 2 uses
  %i.dck = icmp sgt i32 %i.dcj, 0
  br i1 %i.dck, label %.lr.ph34.i.i, label %do_rematrixing.exit.i

.lr.ph34.i.i:                                     ; preds = %bb.ka
  %wide.trip.count39.i.i = zext nneg i32 %i.dcj to i64
  br label %bb.kb

bb.kb:                                            ; preds = %.loopexit.i680.i, %.lr.ph34.i.i
  %indvars.iv36.i.i = phi i64 [ 0, %.lr.ph34.i.i ], [ %indvars.iv.next37.i.i, %.loopexit.i680.i ] ; 3 uses
  %i.dcl = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv36.i.i
  %i.dcm = load i32, ptr %i.dcl, align 4, !tbaa !43
  %.not.i679.i = icmp eq i32 %i.dcm, 0
  br i1 %.not.i679.i, label %.loopexit.i680.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.dcn = getelementptr inbounds nuw i8, ptr @ff_ac3_rematrix_band_tab, i64 %indvars.iv36.i.i ; 2 uses
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcn, i64 1
  %i.dcp = load i8, ptr %i.dco, align 1, !tbaa !44
  %i.dcq = zext i8 %i.dcp to i32
  %...i.i = call i32 @llvm.smin.i32(i32 %..i.i, i32 %i.dcq) ; 2 uses
  %i.dcr = load i8, ptr %i.dcn, align 1, !tbaa !44 ; 2 uses
  %i.dcs = zext i8 %i.dcr to i32
  %i.dct = icmp sgt i32 %...i.i, %i.dcs
  br i1 %i.dct, label %.lr.ph.preheader.i.i, label %.loopexit.i680.i

.lr.ph.preheader.i.i:                             ; preds = %bb.kc
  %i.dcu = zext i8 %i.dcr to i64                  ; 4 uses
  %wide.trip.count.i681.i = zext nneg i32 %...i.i to i64 ; 2 uses
  %i.dcv = sub nsw i64 %wide.trip.count.i681.i, %i.dcu ; 3 uses
  %min.iters.check = icmp ult i64 %i.dcv, 4
  br i1 %min.iters.check, label %.lr.ph.i682.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.dcv, -4                     ; 3 uses
  %i.dcw = add nsw i64 %n.vec, %i.dcu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dcx = add nuw i64 %index, %i.dcu             ; 2 uses
  %i.dcy = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.dcx ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dcy, align 4, !tbaa !43 ; 2 uses
  %i.dcz = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.dcx ; 2 uses
  %wide.load1061 = load <4 x i32>, ptr %i.dcz, align 4, !tbaa !43 ; 2 uses
  %i.dda = add nsw <4 x i32> %wide.load1061, %wide.load
  store <4 x i32> %i.dda, ptr %i.dcy, align 4, !tbaa !43
  %i.ddb = sub nsw <4 x i32> %wide.load, %wide.load1061
  store <4 x i32> %i.ddb, ptr %i.dcz, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ddc = icmp eq i64 %index.next, %n.vec
  br i1 %i.ddc, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dcv, %n.vec
  br i1 %cmp.n, label %.loopexit.i680.i, label %.lr.ph.i682.i.preheader

.lr.ph.i682.i.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i683.i.ph = phi i64 [ %i.dcu, %.lr.ph.preheader.i.i ], [ %i.dcw, %middle.block ]
  br label %.lr.ph.i682.i

.lr.ph.i682.i:                                    ; preds = %.lr.ph.i682.i.preheader, %.lr.ph.i682.i
  %indvars.iv.i683.i = phi i64 [ %indvars.iv.next.i684.i, %.lr.ph.i682.i ], [ %indvars.iv.i683.i.ph, %.lr.ph.i682.i.preheader ] ; 3 uses
  %i.ddd = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i683.i ; 2 uses
  %i.dde = load i32, ptr %i.ddd, align 4, !tbaa !43 ; 2 uses
  %i.ddf = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i683.i ; 2 uses
  %i.ddg = load i32, ptr %i.ddf, align 4, !tbaa !43 ; 2 uses
  %i.ddh = add nsw i32 %i.ddg, %i.dde
  store i32 %i.ddh, ptr %i.ddd, align 4, !tbaa !43
  %i.ddi = sub nsw i32 %i.dde, %i.ddg
  store i32 %i.ddi, ptr %i.ddf, align 4, !tbaa !43
  %indvars.iv.next.i684.i = add nuw nsw i64 %indvars.iv.i683.i, 1 ; 2 uses
  %exitcond.not.i685.i = icmp eq i64 %indvars.iv.next.i684.i, %wide.trip.count.i681.i
  br i1 %exitcond.not.i685.i, label %.loopexit.i680.i, label %.lr.ph.i682.i, !llvm.loop !133

.loopexit.i680.i:                                 ; preds = %.lr.ph.i682.i, %middle.block, %bb.kc, %bb.kb
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %indvars.iv.next37.i.i, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i, label %do_rematrixing.exit.i, label %bb.kb, !llvm.loop !134

do_rematrixing.exit.i:                            ; preds = %.loopexit.i680.i, %bb.ka, %decode_transform_coeffs.exit.i
  %i.ddj = load i32, ptr %i.bh, align 16, !tbaa !177 ; 2 uses
  %.not581847.i = icmp slt i32 %i.ddj, 1
  br i1 %.not581847.i, label %._crit_edge850.i, label %.lr.ph849.i

.lr.ph849.i:                                      ; preds = %do_rematrixing.exit.i, %bb.kh
  %indvars.iv944.i = phi i64 [ %indvars.iv.next945.i, %bb.kh ], [ 1, %do_rematrixing.exit.i ] ; 6 uses
  %i.ddk = load i32, ptr %i.ay, align 4, !tbaa !206
  %i.ddl = icmp eq i32 %i.ddk, 0
  %i.ddm = icmp samesign ult i64 %indvars.iv944.i, 3
  %or.cond12.i = select i1 %i.ddl, i1 %i.ddm, i1 false
  %i.ddn = sub nuw nsw i64 2, %indvars.iv944.i
  %.0493.i = select i1 %or.cond12.i, i64 %i.ddn, i64 0 ; 3 uses
  %i.ddo = load i32, ptr %i.hl, align 8, !tbaa !258
  %.not588.i = icmp eq i32 %i.ddo, 0
  br i1 %.not588.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %.lr.ph849.i
  %i.ddp = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.0493.i
  %i.ddq = load i32, ptr %i.ddp, align 4, !tbaa !43
  %.not589.i = icmp eq i32 %i.ddq, 0
  br i1 %.not589.i, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd, %.lr.ph849.i
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %i.ddr = phi i64 [ 45356, %bb.ke ], [ 45372, %bb.kd ]
  %i.dds = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ddr
  %.0.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.dds, i64 %.0493.i
  %.0.i480 = load float, ptr %.0.in.i, align 4, !tbaa !29 ; 2 uses
  %i.ddt = load i32, ptr %i.cn, align 8, !tbaa !207
  %.not590.i = icmp eq i32 %i.ddt, 0
  br i1 %.not590.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.ddu = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.0493.i
  %i.ddv = load float, ptr %i.ddu, align 4, !tbaa !29
  %i.ddw = fmul nsz float %.0.i480, %i.ddv
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %.1.i = phi nsz float [ %i.ddw, %bb.kg ], [ %.0.i480, %bb.kf ]
  %i.ddx = fmul nsz float %.1.i, f0x34800000
  %i.ddy = load ptr, ptr %i.hm, align 8, !tbaa !259
  %i.ddz = getelementptr inbounds nuw [1024 x i8], ptr %i.hn, i64 %indvars.iv944.i
  %i.dea = getelementptr inbounds nuw [1024 x i8], ptr %i.hg, i64 %indvars.iv944.i
  call void %i.ddy(ptr noundef nonnull %i.ddz, ptr noundef nonnull %i.dea, float noundef %i.ddx, i32 noundef 256) #11, !inline_history !121
  %indvars.iv.next945.i = add nuw nsw i64 %indvars.iv944.i, 1
  %i.deb = load i32, ptr %i.bh, align 16, !tbaa !177 ; 2 uses
  %i.dec = sext i32 %i.deb to i64
  %.not581.not.i = icmp slt i64 %indvars.iv944.i, %i.dec
  br i1 %.not581.not.i, label %.lr.ph849.i, label %._crit_edge850.i, !llvm.loop !135

._crit_edge850.i:                                 ; preds = %bb.kh, %do_rematrixing.exit.i
  %.lcssa768.i = phi i32 [ %i.ddj, %do_rematrixing.exit.i ], [ %i.deb, %bb.kh ] ; 2 uses
  %i.ded = load i32, ptr %i.fs, align 8, !tbaa !244
  %.not582.i = icmp eq i32 %i.ded, 0
  br i1 %.not582.i, label %bb.kv, label %bb.ki

bb.ki:                                            ; preds = %._crit_edge850.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, ptr noundef nonnull align 16 dereferenceable(17) @__const.ff_eac3_apply_spectral_extension.wrapflag, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.dee = load i32, ptr %i.fv, align 4, !tbaa !245 ; 7 uses
  %i.def = load i32, ptr %i.fy, align 8, !tbaa !249 ; 2 uses
  %i.deg = icmp sgt i32 %i.def, 0
  br i1 %i.deg, label %.lr.ph152.i.i, label %._crit_edge153.i.i

.lr.ph152.i.i:                                    ; preds = %bb.ki
  %i.deh = load i32, ptr %i.fw, align 4, !tbaa !246 ; 4 uses
  %wide.trip.count.i689.i = zext nneg i32 %i.def to i64
  %i.dei = sub nsw i32 %i.deh, %i.dee             ; 2 uses
  %i.dej = trunc i32 %i.dei to i8
  br label %bb.kj

bb.kj:                                            ; preds = %._crit_edge.i696.i, %.lr.ph152.i.i
  %indvars.iv.i690.i = phi i64 [ 0, %.lr.ph152.i.i ], [ %indvars.iv.next.i697.i, %._crit_edge.i696.i ] ; 3 uses
  %.0150.i.i = phi i32 [ %i.dee, %.lr.ph152.i.i ], [ %.2.lcssa.i.i, %._crit_edge.i696.i ] ; 3 uses
  %.0128148.i.i = phi i8 [ 0, %.lr.ph152.i.i ], [ %.2130.lcssa.i.i, %._crit_edge.i696.i ] ; 3 uses
  %i.dek = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv.i690.i
  %i.del = load i8, ptr %i.dek, align 1, !tbaa !44 ; 2 uses
  %i.dem = zext i8 %i.del to i32                  ; 3 uses
  %i.den = add nsw i32 %.0150.i.i, %i.dem
  %i.deo = icmp sgt i32 %i.den, %i.deh
  br i1 %i.deo, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.dep = sub nsw i32 %.0150.i.i, %i.dee
  %i.deq = trunc i32 %i.dep to i8
  %i.der = add nuw i8 %.0128148.i.i, 1
  %i.des = zext i8 %.0128148.i.i to i64
  %i.det = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.des
  store i8 %i.deq, ptr %i.det, align 1, !tbaa !44
  %i.deu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i690.i
  store i8 1, ptr %i.deu, align 1, !tbaa !44
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %.1129.i.i = phi i8 [ %i.der, %bb.kk ], [ %.0128148.i.i, %bb.kj ] ; 2 uses
  %.1.i691.i = phi i32 [ %i.dee, %bb.kk ], [ %.0150.i.i, %bb.kj ] ; 2 uses
  %.not194.i.i = icmp eq i8 %i.del, 0
  br i1 %.not194.i.i, label %._crit_edge.i696.i, label %.lr.ph.i692.i

.lr.ph.i692.i:                                    ; preds = %bb.kl, %bb.kn
  %.2146.i.i = phi i32 [ %i.dfa, %bb.kn ], [ %.1.i691.i, %bb.kl ] ; 3 uses
  %.2130145.i.i = phi i8 [ %.3131.i.i, %bb.kn ], [ %.1129.i.i, %bb.kl ] ; 3 uses
  %.0132144.i.i = phi i32 [ %i.dfb, %bb.kn ], [ 0, %bb.kl ] ; 2 uses
  %i.dev = icmp eq i32 %.2146.i.i, %i.deh
  br i1 %i.dev, label %bb.km, label %.lr.ph._crit_edge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %.lr.ph.i692.i
  %.pre234.i.i = sub nsw i32 %i.deh, %.2146.i.i
  br label %bb.kn

bb.km:                                            ; preds = %.lr.ph.i692.i
  %i.dew = add nuw i8 %.2130145.i.i, 1
  %i.dex = zext i8 %.2130145.i.i to i64
  %i.dey = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dex
  store i8 %i.dej, ptr %i.dey, align 1, !tbaa !44
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %.lr.ph._crit_edge.i.i
  %.pre-phi.i693.i = phi i32 [ %.pre234.i.i, %.lr.ph._crit_edge.i.i ], [ %i.dei, %bb.km ]
  %.3131.i.i = phi i8 [ %.2130145.i.i, %.lr.ph._crit_edge.i.i ], [ %i.dew, %bb.km ] ; 2 uses
  %.3.i694.i = phi i32 [ %.2146.i.i, %.lr.ph._crit_edge.i.i ], [ %i.dee, %bb.km ]
  %i.dez = sub nsw i32 %i.dem, %.0132144.i.i
  %..i695.i = call i32 @llvm.smin.i32(i32 %i.dez, i32 %.pre-phi.i693.i) ; 2 uses
  %i.dfa = add nsw i32 %.3.i694.i, %..i695.i      ; 2 uses
  %i.dfb = add nsw i32 %..i695.i, %.0132144.i.i   ; 2 uses
  %i.dfc = icmp slt i32 %i.dfb, %i.dem
  br i1 %i.dfc, label %.lr.ph.i692.i, label %._crit_edge.i696.i, !llvm.loop !136

._crit_edge.i696.i:                               ; preds = %bb.kn, %bb.kl
  %.2130.lcssa.i.i = phi i8 [ %.1129.i.i, %bb.kl ], [ %.3131.i.i, %bb.kn ] ; 2 uses
  %.2.lcssa.i.i = phi i32 [ %.1.i691.i, %bb.kl ], [ %i.dfa, %bb.kn ] ; 2 uses
  %indvars.iv.next.i697.i = add nuw nsw i64 %indvars.iv.i690.i, 1 ; 2 uses
  %exitcond.not.i698.i = icmp eq i64 %indvars.iv.next.i697.i, %wide.trip.count.i689.i
  br i1 %exitcond.not.i698.i, label %._crit_edge153.i.i, label %bb.kj, !llvm.loop !137

._crit_edge153.i.i:                               ; preds = %._crit_edge.i696.i, %bb.ki
  %.0128.lcssa.i.i = phi i8 [ 0, %bb.ki ], [ %.2130.lcssa.i.i, %._crit_edge.i696.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %i.dee, %bb.ki ], [ %.2.lcssa.i.i, %._crit_edge.i696.i ]
  %i.dfd = sub nsw i32 %.0.lcssa.i.i, %i.dee
  %i.dfe = trunc i32 %i.dfd to i8
  %i.dff = zext i8 %.0128.lcssa.i.i to i64
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dff
  store i8 %i.dfe, ptr %i.dfg, align 1, !tbaa !44
  %i.dfh = load i32, ptr %i.bi, align 4, !tbaa !178
  %.not189.i.i = icmp slt i32 %i.dfh, 1
  br i1 %.not189.i.i, label %ff_eac3_apply_spectral_extension.exit.i, label %.lr.ph192.i.i

.lr.ph192.i.i:                                    ; preds = %._crit_edge153.i.i
  %i.dfi = add i8 %.0128.lcssa.i.i, 1             ; 2 uses
  %wide.trip.count204.i.i = zext i8 %i.dfi to i64 ; 2 uses
  %xtraiter1335 = and i64 %wide.trip.count204.i.i, 1
  %i.dfj = icmp eq i8 %.0128.lcssa.i.i, 0
  %unroll_iter1339 = and i64 %wide.trip.count204.i.i, 254
  %lcmp.mod1337.not = icmp eq i64 %xtraiter1335, 0
  %lcmp.mod1338 = trunc i8 %i.dfi to i1
  br label %bb.ko

bb.ko:                                            ; preds = %.loopexit.i687.i, %.lr.ph192.i.i
  %indvars.iv228.i.i = phi i64 [ 1, %.lr.ph192.i.i ], [ %indvars.iv.next229.i.i, %.loopexit.i687.i ] ; 7 uses
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvars.iv228.i.i
  %i.dfl = load i8, ptr %i.dfk, align 1, !tbaa !44
  %.not140.i.i = icmp eq i8 %i.dfl, 0
  br i1 %.not140.i.i, label %.loopexit.i687.i, label %.lr.ph159.i.i

.lr.ph159.i.i:                                    ; preds = %bb.ko
  %11 = load i32, ptr %i.fw, align 4, !tbaa !246  ; 2 uses
  %i.dfm = getelementptr inbounds nuw [1024 x i8], ptr %i.hn, i64 %indvars.iv228.i.i ; 13 uses
  br i1 %i.dfj, label %.epil.preheader1334, label %.lr.ph159.i.i.new

.lr.ph159.i.i.new:                                ; preds = %.lr.ph159.i.i, %.lr.ph159.i.i.new
  %indvars.iv201.i.i = phi i64 [ %indvars.iv.next202.i.i.1, %.lr.ph159.i.i.new ], [ 0, %.lr.ph159.i.i ] ; 3 uses
  %.4157.i.i = phi i32 [ %i.dgj, %.lr.ph159.i.i.new ], [ %11, %.lr.ph159.i.i ] ; 2 uses
  %niter1340 = phi i64 [ %niter1340.next.1, %.lr.ph159.i.i.new ], [ 0, %.lr.ph159.i.i ]
  %i.dfn = sext i32 %.4157.i.i to i64
  %i.dfo = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %i.dfn
  %i.dfp = load i32, ptr %i.fv, align 4, !tbaa !245
  %i.dfq = sext i32 %i.dfp to i64
  %i.dfr = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %i.dfq
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv201.i.i
  %i.dft = load i8, ptr %i.dfs, align 2, !tbaa !44 ; 2 uses
  %i.dfu = zext i8 %i.dft to i64
  %i.dfv = shl nuw nsw i64 %i.dfu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dfo, ptr nonnull align 4 %i.dfr, i64 %i.dfv, i1 false)
  %i.dfw = zext i8 %i.dft to i32
  %i.dfx = add nsw i32 %.4157.i.i, %i.dfw         ; 2 uses
  %i.dfy = sext i32 %i.dfx to i64
  %i.dfz = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %i.dfy
  %i.dga = load i32, ptr %i.fv, align 4, !tbaa !245
  %i.dgb = sext i32 %i.dga to i64
  %i.dgc = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %i.dgb
  %i.dgd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv201.i.i
  %i.dge = getelementptr inbounds nuw i8, ptr %i.dgd, i64 1
  %i.dgf = load i8, ptr %i.dge, align 1, !tbaa !44 ; 2 uses
  %i.dgg = zext i8 %i.dgf to i64
  %i.dgh = shl nuw nsw i64 %i.dgg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dfz, ptr nonnull align 4 %i.dgc, i64 %i.dgh, i1 false)
  %i.dgi = zext i8 %i.dgf to i32
  %i.dgj = add nsw i32 %i.dfx, %i.dgi             ; 2 uses
  %indvars.iv.next202.i.i.1 = add nuw nsw i64 %indvars.iv201.i.i, 2 ; 2 uses
  %niter1340.next.1 = add i64 %niter1340, 2       ; 2 uses
  %niter1340.ncmp.1 = icmp eq i64 %niter1340.next.1, %unroll_iter1339
  br i1 %niter1340.ncmp.1, label %._crit_edge160.loopexit.i.i.unr-lcssa, label %.lr.ph159.i.i.new, !llvm.loop !138

._crit_edge160.loopexit.i.i.unr-lcssa:            ; preds = %.lr.ph159.i.i.new
  br i1 %lcmp.mod1337.not, label %._crit_edge160.i.i, label %.epil.preheader1334

.epil.preheader1334:                              ; preds = %._crit_edge160.loopexit.i.i.unr-lcssa, %.lr.ph159.i.i
  %indvars.iv201.i.i.epil.init = phi i64 [ 0, %.lr.ph159.i.i ], [ %indvars.iv.next202.i.i.1, %._crit_edge160.loopexit.i.i.unr-lcssa ]
  %.4157.i.i.epil.init = phi i32 [ %11, %.lr.ph159.i.i ], [ %i.dgj, %._crit_edge160.loopexit.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1338)
  %i.dgk = sext i32 %.4157.i.i.epil.init to i64
  %i.dgl = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %i.dgk
  %i.dgm = load i32, ptr %i.fv, align 4, !tbaa !245
  %i.dgn = sext i32 %i.dgm to i64
  %i.dgo = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %i.dgn
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv201.i.i.epil.init
  %i.dgq = load i8, ptr %i.dgp, align 1, !tbaa !44
  %i.dgr = zext i8 %i.dgq to i64
  %i.dgs = shl nuw nsw i64 %i.dgr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dgl, ptr nonnull align 4 %i.dgo, i64 %i.dgs, i1 false)
  br label %._crit_edge160.i.i

._crit_edge160.i.i:                               ; preds = %._crit_edge160.loopexit.i.i.unr-lcssa, %.epil.preheader1334
  %12 = load i32, ptr %i.fw, align 4, !tbaa !246  ; 3 uses
  %13 = load i32, ptr %i.fy, align 8, !tbaa !249  ; 2 uses
  %i.dgt = icmp sgt i32 %13, 0
  br i1 %i.dgt, label %.lr.ph172.i.i, label %.loopexit.i687.i

.lr.ph172.i.i:                                    ; preds = %._crit_edge160.i.i
  %wide.trip.count213.i.i = zext nneg i32 %13 to i64 ; 3 uses
  br label %bb.kp

bb.kp:                                            ; preds = %._crit_edge166.i.i, %.lr.ph172.i.i
  %indvars.iv210.i.i = phi i64 [ 0, %.lr.ph172.i.i ], [ %indvars.iv.next211.i.i, %._crit_edge166.i.i ] ; 3 uses
  %.5170.i.i = phi i32 [ %12, %.lr.ph172.i.i ], [ %.6.lcssa.i.i, %._crit_edge166.i.i ] ; 3 uses
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv210.i.i
  %i.dgv = load i8, ptr %i.dgu, align 1, !tbaa !44 ; 4 uses
  %i.dgw = zext i8 %i.dgv to i32                  ; 3 uses
  %.not196.i.i = icmp eq i8 %i.dgv, 0
  br i1 %.not196.i.i, label %._crit_edge166.i.i, label %.lr.ph165.preheader.i.i

.lr.ph165.preheader.i.i:                          ; preds = %bb.kp
  %i.dgx = sext i32 %.5170.i.i to i64             ; 2 uses
  %xtraiter1341 = and i32 %i.dgw, 3               ; 3 uses
  %i.dgy = icmp ult i8 %i.dgv, 4
  br i1 %i.dgy, label %.lr.ph165.i.i.epil.preheader, label %.lr.ph165.preheader.i.i.new

.lr.ph165.preheader.i.i.new:                      ; preds = %.lr.ph165.preheader.i.i
  %unroll_iter1346 = and i32 %i.dgw, 252
  br label %.lr.ph165.i.i

.lr.ph165.i.i:                                    ; preds = %.lr.ph165.i.i, %.lr.ph165.preheader.i.i.new
  %indvars.iv206.i.i = phi i64 [ %i.dgx, %.lr.ph165.preheader.i.i.new ], [ %indvars.iv.next207.i.i.3, %.lr.ph165.i.i ] ; 5 uses
  %.0127162.i.i = phi float [ 0.000000e+00, %.lr.ph165.preheader.i.i.new ], [ %i.dhn, %.lr.ph165.i.i ]
  %niter1347 = phi i32 [ 0, %.lr.ph165.preheader.i.i.new ], [ %niter1347.next.3, %.lr.ph165.i.i ]
  %i.dgz = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %indvars.iv206.i.i
  %i.dha = load float, ptr %i.dgz, align 4, !tbaa !29 ; 2 uses
  %i.dhb = call nsz float @llvm.fmuladd.f32(float %i.dha, float %i.dha, float %.0127162.i.i)
  %i.dhc = getelementptr [4 x i8], ptr %i.dfm, i64 %indvars.iv206.i.i
  %i.dhd = getelementptr i8, ptr %i.dhc, i64 4
  %i.dhe = load float, ptr %i.dhd, align 4, !tbaa !29 ; 2 uses
  %i.dhf = call nsz float @llvm.fmuladd.f32(float %i.dhe, float %i.dhe, float %i.dhb)
  %i.dhg = getelementptr [4 x i8], ptr %i.dfm, i64 %indvars.iv206.i.i
  %i.dhh = getelementptr i8, ptr %i.dhg, i64 8
  %i.dhi = load float, ptr %i.dhh, align 4, !tbaa !29 ; 2 uses
  %i.dhj = call nsz float @llvm.fmuladd.f32(float %i.dhi, float %i.dhi, float %i.dhf)
  %indvars.iv.next207.i.i.3 = add nsw i64 %indvars.iv206.i.i, 4 ; 2 uses
  %i.dhk = getelementptr [4 x i8], ptr %i.dfm, i64 %indvars.iv206.i.i
  %i.dhl = getelementptr i8, ptr %i.dhk, i64 12
  %i.dhm = load float, ptr %i.dhl, align 4, !tbaa !29 ; 2 uses
  %i.dhn = call nsz float @llvm.fmuladd.f32(float %i.dhm, float %i.dhm, float %i.dhj) ; 3 uses
  %niter1347.next.3 = add i32 %niter1347, 4       ; 2 uses
  %niter1347.ncmp.3 = icmp eq i32 %niter1347.next.3, %unroll_iter1346
  br i1 %niter1347.ncmp.3, label %._crit_edge166.loopexit.i.i.unr-lcssa, label %.lr.ph165.i.i, !llvm.loop !139

._crit_edge166.loopexit.i.i.unr-lcssa:            ; preds = %.lr.ph165.i.i
  %lcmp.mod1343.not = icmp eq i32 %xtraiter1341, 0
  br i1 %lcmp.mod1343.not, label %._crit_edge166.loopexit.i.i, label %.lr.ph165.i.i.epil.preheader

.lr.ph165.i.i.epil.preheader:                     ; preds = %._crit_edge166.loopexit.i.i.unr-lcssa, %.lr.ph165.preheader.i.i
  %indvars.iv206.i.i.epil.init = phi i64 [ %i.dgx, %.lr.ph165.preheader.i.i ], [ %indvars.iv.next207.i.i.3, %._crit_edge166.loopexit.i.i.unr-lcssa ]
  %.0127162.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph165.preheader.i.i ], [ %i.dhn, %._crit_edge166.loopexit.i.i.unr-lcssa ]
  %lcmp.mod1345 = icmp ne i32 %xtraiter1341, 0
  call void @llvm.assume(i1 %lcmp.mod1345)
  br label %.lr.ph165.i.i.epil

.lr.ph165.i.i.epil:                               ; preds = %.lr.ph165.i.i.epil, %.lr.ph165.i.i.epil.preheader
  %indvars.iv206.i.i.epil = phi i64 [ %indvars.iv206.i.i.epil.init, %.lr.ph165.i.i.epil.preheader ], [ %indvars.iv.next207.i.i.epil, %.lr.ph165.i.i.epil ] ; 2 uses
  %.0127162.i.i.epil = phi float [ %.0127162.i.i.epil.init, %.lr.ph165.i.i.epil.preheader ], [ %i.dhq, %.lr.ph165.i.i.epil ]
  %epil.iter1342 = phi i32 [ 0, %.lr.ph165.i.i.epil.preheader ], [ %epil.iter1342.next, %.lr.ph165.i.i.epil ]
  %indvars.iv.next207.i.i.epil = add nsw i64 %indvars.iv206.i.i.epil, 1
  %i.dho = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %indvars.iv206.i.i.epil
  %i.dhp = load float, ptr %i.dho, align 4, !tbaa !29 ; 2 uses
  %i.dhq = call nsz float @llvm.fmuladd.f32(float %i.dhp, float %i.dhp, float %.0127162.i.i.epil) ; 2 uses
  %epil.iter1342.next = add i32 %epil.iter1342, 1 ; 2 uses
  %epil.iter1342.cmp.not = icmp eq i32 %epil.iter1342.next, %xtraiter1341
  br i1 %epil.iter1342.cmp.not, label %._crit_edge166.loopexit.i.i, label %.lr.ph165.i.i.epil, !llvm.loop !140

._crit_edge166.loopexit.i.i:                      ; preds = %.lr.ph165.i.i.epil, %._crit_edge166.loopexit.i.i.unr-lcssa
  %.lcssa1244 = phi float [ %i.dhn, %._crit_edge166.loopexit.i.i.unr-lcssa ], [ %i.dhq, %.lr.ph165.i.i.epil ]
  %i.dhr = add i32 %.5170.i.i, %i.dgw
  br label %._crit_edge166.i.i

._crit_edge166.i.i:                               ; preds = %._crit_edge166.loopexit.i.i, %bb.kp
  %.0127.lcssa.i.i = phi float [ 0.000000e+00, %bb.kp ], [ %.lcssa1244, %._crit_edge166.loopexit.i.i ]
  %.6.lcssa.i.i = phi i32 [ %.5170.i.i, %bb.kp ], [ %i.dhr, %._crit_edge166.loopexit.i.i ]
  %i.dhs = uitofp i8 %i.dgv to float
  %i.dht = fdiv nsz float %.0127.lcssa.i.i, %i.dhs
  %i.dhu = call nsz float @llvm.sqrt.f32(float %i.dht)
  %i.dhv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv210.i.i
  store float %i.dhu, ptr %i.dhv, align 4, !tbaa !29
  %indvars.iv.next211.i.i = add nuw nsw i64 %indvars.iv210.i.i, 1 ; 2 uses
  %exitcond214.not.i.i = icmp eq i64 %indvars.iv.next211.i.i, %wide.trip.count213.i.i
  br i1 %exitcond214.not.i.i, label %._crit_edge173.i.i, label %bb.kp, !llvm.loop !141

._crit_edge173.i.i:                               ; preds = %._crit_edge166.i.i
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv228.i.i
  %i.dhx = load i8, ptr %i.dhw, align 1, !tbaa !44 ; 2 uses
  %i.dhy = icmp sgt i8 %i.dhx, -1
  br i1 %i.dhy, label %bb.kq, label %.loopexit142.i.i

bb.kq:                                            ; preds = %._crit_edge173.i.i
  %i.dhz = zext nneg i8 %i.dhx to i64
  %i.dia = getelementptr inbounds nuw [12 x i8], ptr @ff_eac3_spx_atten_tab, i64 %i.dhz ; 3 uses
  %i.dib = add nsw i32 %12, -2
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dia, i64 4
  %i.did = getelementptr inbounds nuw i8, ptr %i.dia, i64 8
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kt, %bb.kq
  %indvars.iv215.i.i = phi i64 [ 0, %bb.kq ], [ %indvars.iv.next216.i.i, %bb.kt ] ; 3 uses
  %.7176.i.i = phi i32 [ %i.dib, %bb.kq ], [ %i.djb, %bb.kt ] ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv215.i.i
  %i.dif = load i8, ptr %i.die, align 1, !tbaa !44
  %.not141.i.i = icmp eq i8 %i.dif, 0
  br i1 %.not141.i.i, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.dig = sext i32 %.7176.i.i to i64
  %i.dih = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %i.dig ; 5 uses
  %i.dii = load float, ptr %i.dia, align 4, !tbaa !29 ; 2 uses
  %i.dij = load float, ptr %i.dih, align 4, !tbaa !29
  %i.dik = fmul nsz float %i.dii, %i.dij
  store float %i.dik, ptr %i.dih, align 4, !tbaa !29
  %i.dil = getelementptr inbounds nuw i8, ptr %i.dih, i64 4 ; 2 uses
  %i.dim = load float, ptr %i.dil, align 4, !tbaa !29
  %i.din = getelementptr inbounds nuw i8, ptr %i.dih, i64 8 ; 2 uses
  %i.dio = load float, ptr %i.dic, align 4, !tbaa !29 ; 2 uses
  %i.dip = fmul nsz float %i.dio, %i.dim
  store float %i.dip, ptr %i.dil, align 4, !tbaa !29
  %i.diq = load float, ptr %i.did, align 4, !tbaa !29
  %i.dir = load <2 x float>, ptr %i.din, align 4, !tbaa !29
  %i.dis = insertelement <2 x float> poison, float %i.diq, i64 0
  %i.dit = insertelement <2 x float> %i.dis, float %i.dio, i64 1
  %i.diu = fmul nsz <2 x float> %i.dit, %i.dir
  store <2 x float> %i.diu, ptr %i.din, align 4, !tbaa !29
  %i.div = getelementptr inbounds nuw i8, ptr %i.dih, i64 16 ; 2 uses
  %i.diw = load float, ptr %i.div, align 4, !tbaa !29
  %i.dix = fmul nsz float %i.dii, %i.diw
  store float %i.dix, ptr %i.div, align 4, !tbaa !29
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %i.diy = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv215.i.i
  %i.diz = load i8, ptr %i.diy, align 1, !tbaa !44
  %i.dja = zext i8 %i.diz to i32
  %i.djb = add nsw i32 %.7176.i.i, %i.dja
  %indvars.iv.next216.i.i = add nuw nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %exitcond219.not.i.i = icmp eq i64 %indvars.iv.next216.i.i, %wide.trip.count213.i.i
  br i1 %exitcond219.not.i.i, label %.loopexit142.i.i, label %bb.kr, !llvm.loop !142

.loopexit142.i.i:                                 ; preds = %bb.kt, %._crit_edge173.i.i
  %i.djc = getelementptr inbounds nuw [68 x i8], ptr %i.gb, i64 %indvars.iv228.i.i
  %i.djd = getelementptr inbounds nuw [68 x i8], ptr %i.gc, i64 %indvars.iv228.i.i
  br label %bb.ku

bb.ku:                                            ; preds = %._crit_edge183.i.i, %.loopexit142.i.i
  %indvars.iv223.i.i = phi i64 [ 0, %.loopexit142.i.i ], [ %indvars.iv.next224.i.i, %._crit_edge183.i.i ] ; 5 uses
  %.8186.i.i = phi i32 [ %12, %.loopexit142.i.i ], [ %.9.lcssa.i.i, %._crit_edge183.i.i ] ; 2 uses
  %i.dje = getelementptr inbounds nuw [4 x i8], ptr %i.djc, i64 %indvars.iv223.i.i
  %i.djf = load float, ptr %i.dje, align 4, !tbaa !29
  %i.djg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv223.i.i
  %i.djh = load float, ptr %i.djg, align 4, !tbaa !29
  %i.dji = fmul nsz float %i.djf, %i.djh
  %i.djj = fmul nsz float %i.dji, f0x30000000
  %i.djk = getelementptr inbounds nuw [4 x i8], ptr %i.djd, i64 %indvars.iv223.i.i
  %i.djl = load float, ptr %i.djk, align 4, !tbaa !29
  %i.djm = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv223.i.i ; 2 uses
  %i.djn = load i8, ptr %i.djm, align 1, !tbaa !44
  %.not197.i.i = icmp eq i8 %i.djn, 0
  br i1 %.not197.i.i, label %._crit_edge183.i.i, label %.lr.ph182.preheader.i.i

.lr.ph182.preheader.i.i:                          ; preds = %bb.ku
  %i.djo = sext i32 %.8186.i.i to i64
  %.pre233.i.i = load i32, ptr %i.hp, align 4, !tbaa !61
  br label %.lr.ph182.i.i

.lr.ph182.i.i:                                    ; preds = %.lr.ph182.i.i, %.lr.ph182.preheader.i.i
  %i.djp = phi i32 [ %.pre233.i.i, %.lr.ph182.preheader.i.i ], [ %i.dke, %.lr.ph182.i.i ] ; 4 uses
  %indvars.iv220.i.i = phi i64 [ %i.djo, %.lr.ph182.preheader.i.i ], [ %indvars.iv.next221.i.i, %.lr.ph182.i.i ] ; 2 uses
  %.3135179.i.i = phi i32 [ 0, %.lr.ph182.preheader.i.i ], [ %i.dkl, %.lr.ph182.i.i ]
  %i.djq = add i32 %i.djp, 40
  %i.djr = and i32 %i.djq, 63
  %i.djs = zext nneg i32 %i.djr to i64
  %i.djt = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.djs
  %i.dju = load i32, ptr %i.djt, align 4, !tbaa !43
  %i.djv = add i32 %i.djp, 9
  %i.djw = and i32 %i.djv, 63
  %i.djx = zext nneg i32 %i.djw to i64
  %i.djy = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.djx
  %i.djz = load i32, ptr %i.djy, align 4, !tbaa !43
  %i.dka = add i32 %i.djz, %i.dju                 ; 2 uses
  %i.dkb = and i32 %i.djp, 63
  %i.dkc = zext nneg i32 %i.dkb to i64
  %i.dkd = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.dkc
  store i32 %i.dka, ptr %i.dkd, align 4, !tbaa !43
  %i.dke = add i32 %i.djp, 1                      ; 2 uses
  store i32 %i.dke, ptr %i.hp, align 4, !tbaa !61
  %i.dkf = sitofp nsz i32 %i.dka to float
  %i.dkg = fmul nsz float %i.djj, %i.dkf
  %i.dkh = getelementptr inbounds [4 x i8], ptr %i.dfm, i64 %indvars.iv220.i.i ; 2 uses
  %i.dki = load float, ptr %i.dkh, align 4, !tbaa !29
  %i.dkj = fmul nsz float %i.djl, %i.dki
  %indvars.iv.next221.i.i = add nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.dkk = fsub nsz float %i.dkj, %i.dkg
  store float %i.dkk, ptr %i.dkh, align 4, !tbaa !29
  %i.dkl = add nuw nsw i32 %.3135179.i.i, 1       ; 2 uses
  %i.dkm = load i8, ptr %i.djm, align 1, !tbaa !44
  %i.dkn = zext i8 %i.dkm to i32
  %i.dko = icmp samesign ult i32 %i.dkl, %i.dkn
  br i1 %i.dko, label %.lr.ph182.i.i, label %._crit_edge183.loopexit.i.i, !llvm.loop !143

._crit_edge183.loopexit.i.i:                      ; preds = %.lr.ph182.i.i
  %i.dkp = trunc nsw i64 %indvars.iv.next221.i.i to i32
  br label %._crit_edge183.i.i

._crit_edge183.i.i:                               ; preds = %._crit_edge183.loopexit.i.i, %bb.ku
  %.9.lcssa.i.i = phi i32 [ %.8186.i.i, %bb.ku ], [ %i.dkp, %._crit_edge183.loopexit.i.i ]
  %indvars.iv.next224.i.i = add nuw nsw i64 %indvars.iv223.i.i, 1 ; 2 uses
  %exitcond227.not.i.i = icmp eq i64 %indvars.iv.next224.i.i, %wide.trip.count213.i.i
  br i1 %exitcond227.not.i.i, label %.loopexit.i687.i, label %bb.ku, !llvm.loop !144

.loopexit.i687.i:                                 ; preds = %._crit_edge183.i.i, %._crit_edge160.i.i, %bb.ko
  %indvars.iv.next229.i.i = add nuw nsw i64 %indvars.iv228.i.i, 1
  %i.dkq = load i32, ptr %i.bi, align 4, !tbaa !178
  %i.dkr = sext i32 %i.dkq to i64
  %.not.not.i688.i = icmp slt i64 %indvars.iv228.i.i, %i.dkr
  br i1 %.not.not.i688.i, label %bb.ko, label %ff_eac3_apply_spectral_extension.exit.loopexit.i, !llvm.loop !145

ff_eac3_apply_spectral_extension.exit.loopexit.i: ; preds = %.loopexit.i687.i
  %.pr742.pre.i = load i32, ptr %i.bh, align 16, !tbaa !177
  br label %ff_eac3_apply_spectral_extension.exit.i

ff_eac3_apply_spectral_extension.exit.i:          ; preds = %ff_eac3_apply_spectral_extension.exit.loopexit.i, %._crit_edge153.i.i
  %.pr742.i = phi i32 [ %.pr742.pre.i, %ff_eac3_apply_spectral_extension.exit.loopexit.i ], [ %.lcssa768.i, %._crit_edge153.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.kv

bb.kv:                                            ; preds = %ff_eac3_apply_spectral_extension.exit.i, %._crit_edge850.i
  %i.dks = phi i32 [ %.pr742.i, %ff_eac3_apply_spectral_extension.exit.i ], [ %.lcssa768.i, %._crit_edge850.i ] ; 4 uses
  %i.dkt = load i32, ptr %i.er, align 4, !tbaa !231 ; 4 uses
  %.not583.i = icmp eq i32 %i.dks, %i.dkt
  br i1 %.not583.i, label %.thread743.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.dku = load i32, ptr %i.es, align 4, !tbaa !232
  %i.dkv = and i32 %i.dku, 8
  %.not584.i = icmp eq i32 %i.dkv, 0
  br i1 %.not584.i, label %.thread1034.i.a, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.dkw = load i32, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.dkx = icmp ne i32 %i.dkw, %i.dkt             ; 2 uses
  br i1 %.2502.i, label %bb.lp, label %bb.ky

.thread1034.i.a:                                  ; preds = %bb.kw
  br i1 %.2502.i, label %.thread1034.i..thread1035.i_crit_edge, label %bb.ky

.thread1034.i..thread1035.i_crit_edge:            ; preds = %.thread1034.i.a
  %.pre809 = load i32, ptr %i.bi, align 4, !tbaa !178
  br label %.thread1035.i

.thread743.i:                                     ; preds = %bb.kv
  br i1 %.2502.i, label %.critedge616.i, label %bb.ky

bb.ky:                                            ; preds = %.thread743.i, %.thread1034.i.a, %bb.kx
  %i.dky = phi i1 [ false, %.thread743.i ], [ %i.dkx, %bb.kx ], [ true, %.thread1034.i.a ]
  %i.dkz = load i32, ptr %i.hs, align 8, !tbaa !46
  %.not587.i = icmp eq i32 %i.dkz, 0
  br i1 %.not587.i, label %ac3_upmix_delay.exit.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  store i32 0, ptr %i.hs, align 8, !tbaa !46
  %i.dla = load i32, ptr %i.ay, align 4, !tbaa !206
  switch i32 %i.dla, label %ac3_upmix_delay.exit.i [
    i32 0, label %bb.la
    i32 2, label %bb.la
    i32 6, label %bb.lb
    i32 4, label %bb.lc
    i32 7, label %bb.ld
    i32 5, label %bb.le
    i32 3, label %bb.lf
  ]

bb.la:                                            ; preds = %bb.kz, %bb.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hx, ptr noundef nonnull align 16 dereferenceable(1024) %i.hy, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

bb.lb:                                            ; preds = %bb.kz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, i8 0, i64 1024, i1 false)
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.kz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hw, i8 0, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

bb.ld:                                            ; preds = %bb.kz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hu, i8 0, i64 1024, i1 false)
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.kz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, i8 0, i64 1024, i1 false)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hw, ptr noundef nonnull align 16 dereferenceable(1024) %i.hx, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hx, i8 0, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

ac3_upmix_delay.exit.i:                           ; preds = %bb.lf, %bb.lc, %bb.la, %bb.kz, %bb.ky
  %.not58.i699.i = icmp slt i32 %i.dks, 1
  br i1 %.not58.i699.i, label %do_imdct.exit.i, label %.lr.ph.i700.i

.lr.ph.i700.i:                                    ; preds = %ac3_upmix_delay.exit.i
  %i.dlb = add nuw i32 %i.dks, 1
  %wide.trip.count.i701.i = zext i32 %i.dlb to i64
  br label %bb.lg

bb.lg:                                            ; preds = %bb.ln, %.lr.ph.i700.i
  %indvars.iv65.i.i = phi i64 [ 1, %.lr.ph.i700.i ], [ %indvars.iv.next66.i.i, %bb.ln ] ; 7 uses
  %i.dlc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv65.i.i
  %i.dld = load i32, ptr %i.dlc, align 4, !tbaa !43
  %.not55.i702.i = icmp eq i32 %i.dld, 0
  br i1 %.not55.i702.i, label %bb.lm, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.dle = getelementptr inbounds nuw [1024 x i8], ptr %i.hn, i64 %indvars.iv65.i.i ; 4 uses
  br label %bb.li

bb.li:                                            ; preds = %bb.li, %bb.lh
  %indvars.iv.i703.i = phi i64 [ 0, %bb.lh ], [ %indvars.iv.next.i704.i.3, %bb.li ] ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i703.i, 3
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 %.idx.i.i
  %i.dlg = load float, ptr %i.dlf, align 4, !tbaa !29
  %i.dlh = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.i703.i
  store float %i.dlg, ptr %i.dlh, align 4, !tbaa !29
  %indvars.iv.next.i704.i = or disjoint i64 %indvars.iv.i703.i, 1 ; 2 uses
  %.idx.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i704.i, 3
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dle, i64 %.idx.i.i.1
  %i.dlj = load float, ptr %i.dli, align 4, !tbaa !29
  %i.dlk = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next.i704.i
  store float %i.dlj, ptr %i.dlk, align 4, !tbaa !29
  %indvars.iv.next.i704.i.1 = or disjoint i64 %indvars.iv.i703.i, 2 ; 2 uses
  %.idx.i.i.2 = shl nuw nsw i64 %indvars.iv.next.i704.i.1, 3
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dle, i64 %.idx.i.i.2
  %i.dlm = load float, ptr %i.dll, align 4, !tbaa !29
  %i.dln = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next.i704.i.1
  store float %i.dlm, ptr %i.dln, align 4, !tbaa !29
  %indvars.iv.next.i704.i.2 = or disjoint i64 %indvars.iv.i703.i, 3 ; 2 uses
  %.idx.i.i.3 = shl nuw nsw i64 %indvars.iv.next.i704.i.2, 3
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.dle, i64 %.idx.i.i.3
  %i.dlp = load float, ptr %i.dlo, align 4, !tbaa !29
  %i.dlq = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next.i704.i.2
  store float %i.dlp, ptr %i.dlq, align 4, !tbaa !29
  %indvars.iv.next.i704.i.3 = add nuw nsw i64 %indvars.iv.i703.i, 4 ; 2 uses
  %exitcond.not.i705.i.3 = icmp eq i64 %indvars.iv.next.i704.i.3, 128
  br i1 %exitcond.not.i705.i.3, label %bb.lj, label %bb.li, !llvm.loop !146

bb.lj:                                            ; preds = %bb.li
  %i.dlr = load ptr, ptr %i.ib, align 8, !tbaa !260
  %i.dls = load ptr, ptr %i.ic, align 8, !tbaa !261
  call void %i.dlr(ptr noundef %i.dls, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ia, i64 noundef 4) #11, !inline_history !147
  %i.dlt = load ptr, ptr %i.id, align 8, !tbaa !41
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlt, i64 40
  %i.dlv = load ptr, ptr %i.dlu, align 8, !tbaa !263
  %i.dlw = add nsw i64 %indvars.iv65.i.i, -1      ; 2 uses
  %i.dlx = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.dlw
  %i.dly = load ptr, ptr %i.dlx, align 8, !tbaa !48
  %gep.i.i = getelementptr [1024 x i8], ptr %invariant.gep.i.i481, i64 %i.dlw ; 2 uses
  call void %i.dlv(ptr noundef %i.dly, ptr noundef nonnull %gep.i.i, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ie, i32 noundef 128) #11, !inline_history !147
  %i.dlz = getelementptr inbounds nuw [1024 x i8], ptr %i.n, i64 %indvars.iv65.i.i ; 4 uses
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lk, %bb.lj
  %indvars.iv61.i.i = phi i64 [ 0, %bb.lj ], [ %indvars.iv.next62.i.i.3, %bb.lk ] ; 6 uses
  %.idx69.i.i = shl nuw nsw i64 %indvars.iv61.i.i, 3
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlz, i64 %.idx69.i.i
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 62100
  %i.dmc = load float, ptr %i.dmb, align 4, !tbaa !29
  %i.dmd = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv61.i.i
  store float %i.dmc, ptr %i.dmd, align 4, !tbaa !29
  %indvars.iv.next62.i.i = or disjoint i64 %indvars.iv61.i.i, 1 ; 2 uses
  %.idx69.i.i.1 = shl nuw nsw i64 %indvars.iv.next62.i.i, 3
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dlz, i64 %.idx69.i.i.1
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.dme, i64 62100
  %i.dmg = load float, ptr %i.dmf, align 4, !tbaa !29
  %i.dmh = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next62.i.i
  store float %i.dmg, ptr %i.dmh, align 4, !tbaa !29
  %indvars.iv.next62.i.i.1 = or disjoint i64 %indvars.iv61.i.i, 2 ; 2 uses
  %.idx69.i.i.2 = shl nuw nsw i64 %indvars.iv.next62.i.i.1, 3
  %i.dmi = getelementptr inbounds nuw i8, ptr %i.dlz, i64 %.idx69.i.i.2
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dmi, i64 62100
  %i.dmk = load float, ptr %i.dmj, align 4, !tbaa !29
  %i.dml = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next62.i.i.1
  store float %i.dmk, ptr %i.dml, align 4, !tbaa !29
  %indvars.iv.next62.i.i.2 = or disjoint i64 %indvars.iv61.i.i, 3 ; 2 uses
  %.idx69.i.i.3 = shl nuw nsw i64 %indvars.iv.next62.i.i.2, 3
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dlz, i64 %.idx69.i.i.3
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmm, i64 62100
  %i.dmo = load float, ptr %i.dmn, align 4, !tbaa !29
  %i.dmp = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next62.i.i.2
  store float %i.dmo, ptr %i.dmp, align 4, !tbaa !29
  %indvars.iv.next62.i.i.3 = add nuw nsw i64 %indvars.iv61.i.i, 4 ; 2 uses
  %exitcond64.not.i.i.3 = icmp eq i64 %indvars.iv.next62.i.i.3, 128
  br i1 %exitcond64.not.i.i.3, label %bb.ll, label %bb.lk, !llvm.loop !148

bb.ll:                                            ; preds = %bb.lk
  %i.dmq = load ptr, ptr %i.ib, align 8, !tbaa !260
  %i.dmr = load ptr, ptr %i.ic, align 8, !tbaa !261
  call void %i.dmq(ptr noundef %i.dmr, ptr noundef nonnull %gep.i.i, ptr noundef nonnull %i.ia, i64 noundef 4) #11, !inline_history !147
  br label %bb.ln

bb.lm:                                            ; preds = %bb.lg
  %i.dms = load ptr, ptr %i.if, align 16, !tbaa !264
  %i.dmt = load ptr, ptr %i.ig, align 16, !tbaa !265
  %i.dmu = getelementptr inbounds nuw [1024 x i8], ptr %i.hn, i64 %indvars.iv65.i.i
  call void %i.dms(ptr noundef %i.dmt, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.dmu, i64 noundef 4) #11, !inline_history !147
  %i.dmv = load ptr, ptr %i.id, align 8, !tbaa !41
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmv, i64 40
  %i.dmx = load ptr, ptr %i.dmw, align 8, !tbaa !263
  %i.dmy = add nsw i64 %indvars.iv65.i.i, -1      ; 2 uses
end_hunk_2
