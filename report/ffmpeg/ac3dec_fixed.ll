Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3dec_fixed?download=true
inline.NumInlined: 135
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ac3_decode_frame:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 95888
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.s, i32 32768)
  %i.aj = tail call i32 @av_lfg_init_from_data(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i32 noundef %i.ai) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 95888 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 31 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 43 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 159 uses
  %or.cond.i695 = icmp ugt i32 %i.s, 268435455
  %i.ap = shl nuw nsw i32 %i.s, 3
  %i.aq = select i1 %or.cond.i695, i32 -8, i32 %i.ap ; 2 uses
  %or.cond.i.i696 = icmp ult i32 %i.aq, 2147483135 ; 3 uses
  %.014.i.i697 = select i1 %or.cond.i.i696, ptr %i.ak, ptr null
  %.013.i.i698 = select i1 %or.cond.i.i696, i32 %i.aq, i32 0 ; 2 uses
  store ptr %.014.i.i697, ptr %i.al, align 8, !tbaa !48
  store i32 %.013.i.i698, ptr %i.am, align 4, !tbaa !171
  %i.ar = add nuw nsw i32 %.013.i.i698, 8
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !49
  store i32 0, ptr %i.ao, align 8, !tbaa !50
  br i1 %or.cond.i.i696, label %.lr.ph704, label %.thread554

.lr.ph704:                                        ; preds = %bb.h
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
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 45328 ; 14 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 45324 ; 25 uses
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
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 488 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 59 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 492 ; 2 uses
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
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 336 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 344 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 16 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 87696 ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 54864 ; 31 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 128720 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 54836 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 45356 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 1256 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 1260 ; 11 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 1261
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 1280 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 1284 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 1276 ; 9 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 1288 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 1309 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 1292
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 1336 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 1812 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 580
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 584
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 604 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 680 ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 702 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 684
  %i.gi = getelementptr inbounds nuw i8, ptr %i.n, i64 752 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.n, i64 608 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.n, i64 45440 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.n, i64 45444 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.n, i64 45488 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 47516 ; 6 uses
  %i.go = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_fast_gain_tab, i64 8), align 8
  %i.gp = zext i16 %i.go to i32                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.n, i64 47476 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.n, i64 47480 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.n, i64 54320 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 54348 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.n, i64 54376 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 54432 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.n, i64 54488 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.n, i64 49336 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 52920 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 53620 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.hb = getelementptr inbounds nuw i8, ptr %i.n, i64 47544 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.hf = getelementptr inbounds nuw i8, ptr %i.n, i64 54928 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.n, i64 56976 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.n, i64 45412
  %i.hi = getelementptr inbounds nuw i8, ptr %i.n, i64 45416
  %i.hj = getelementptr inbounds nuw i8, ptr %i.n, i64 55952 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.n, i64 45368
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 62096 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 54572 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.n, i64 54828 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 45336 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 73360
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 72336 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.n, i64 71312 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 70288 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.n, i64 69264 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 86672 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 87184 ; 22 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 168 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 85648 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.n, i64 54872
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 9
  %i.ih = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 38
  %i.ij = getelementptr inbounds nuw i8, ptr %i.n, i64 45344 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.n, i64 45352 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 54872
  %i.in = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.n, i64 54880
  %i.ip = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.n, i64 54888
  %i.ir = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.n, i64 54896
  %i.it = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.iu = getelementptr inbounds nuw i8, ptr %i.n, i64 54904
  %i.iv = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 54912
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %i.gp, i64 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph704, %bb.nh
  %i.ix = phi i1 [ false, %.lr.ph704 ], [ true, %bb.nh ]
  %.0391701 = phi i32 [ %i.s, %.lr.ph704 ], [ %i.ejy, %bb.nh ] ; 5 uses
  %.0393699 = phi ptr [ %i.ak, %.lr.ph704 ], [ %i.ejx, %bb.nh ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.iy = call i32 @ff_ac3_parse_header(ptr noundef nonnull %i.al, ptr noundef nonnull %7) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.iy, 0
  br i1 %.not.i, label %bb.j, label %bb.bp

bb.j:                                             ; preds = %bb.i
  %i.iz = load i8, ptr %i.as, align 4, !tbaa !173
  %i.ja = zext i8 %i.iz to i32
  store i32 %i.ja, ptr %i.at, align 8, !tbaa !174
  %i.jb = load <4 x i8>, ptr %i.au, align 1, !tbaa !44 ; 3 uses
  %i.jc = extractelement <4 x i8> %i.jb, i64 3    ; 2 uses
  %i.jd = extractelement <4 x i8> %i.jb, i64 0    ; 2 uses
  %i.je = load i8, ptr %i.aw, align 2, !tbaa !175
  %i.jf = zext i8 %i.jc to i32
  %i.jg = zext i8 %i.je to i32
  %i.jh = zext i8 %i.jd to i32
  %i.ji = zext <4 x i8> %i.jb to <4 x i32>
  store <4 x i32> %i.ji, ptr %i.av, align 4, !tbaa !43
  %i.jj = load i8, ptr %i.ba, align 4, !tbaa !176
  %i.jk = zext i8 %i.jj to i32
  store i32 %i.jk, ptr %i.bb, align 4, !tbaa !177
  %i.jl = load i16, ptr %i.bc, align 2, !tbaa !178
  %i.jm = zext i16 %i.jl to i32
  store i32 %i.jm, ptr %i.bd, align 4, !tbaa !179
  %i.jn = load i32, ptr %i.be, align 8, !tbaa !180
  store i32 %i.jn, ptr %i.bf, align 16, !tbaa !181
  %i.jo = load i8, ptr %i.bg, align 4, !tbaa !182
  %i.jp = zext i8 %i.jo to i32                    ; 2 uses
  store i32 %i.jp, ptr %i.bh, align 16, !tbaa !183
  %i.jq = sub nsw i32 %i.jp, %i.jf                ; 2 uses
  store i32 %i.jq, ptr %i.bi, align 4, !tbaa !184
  %i.jr = add nsw i32 %i.jq, 1                    ; 2 uses
  store i32 %i.jr, ptr %i.bj, align 4, !tbaa !185
  %i.js = load i16, ptr %i.bk, align 2, !tbaa !186
  %i.jt = zext i16 %i.js to i32                   ; 2 uses
  store i32 %i.jt, ptr %i.bl, align 4, !tbaa !187
  %i.ju = load i32, ptr %i.o, align 8, !tbaa !168
  %i.jv = add nsw i32 %i.ju, %i.jt
  store i32 %i.jv, ptr %i.o, align 8, !tbaa !168
  store i32 0, ptr %i.bm, align 16, !tbaa !188
  %i.jw = icmp ult i8 %i.jd, 11
  br i1 %i.jw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.jx = load i32, ptr %i.bn, align 8, !tbaa !189
  store i32 %i.jx, ptr %i.bo, align 4, !tbaa !190
  %i.jy = load i32, ptr %i.bp, align 4, !tbaa !191
  store i32 %i.jy, ptr %i.bq, align 4, !tbaa !192
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 4, ptr %i.br, align 8, !tbaa !193
  store i32 4, ptr %i.bs, align 16, !tbaa !194
  store i32 0, ptr %i.bt, align 4, !tbaa !195
  %i.jz = load i32, ptr %i.bu, align 4, !tbaa !196
  store i32 %i.jz, ptr %i.bv, align 8, !tbaa !197
  %i.ka = load i8, ptr %i.bw, align 1, !tbaa !198
  %i.kb = zext i8 %i.ka to i32
  store i32 %i.kb, ptr %i.bx, align 16, !tbaa !199
  %i.kc = load i32, ptr %i.by, align 4, !tbaa !200
  store i32 %i.kc, ptr %i.bz, align 4, !tbaa !201
  %i.kd = load i32, ptr %i.ca, align 8, !tbaa !202 ; 2 uses
  store i32 %i.kd, ptr %i.cb, align 8, !tbaa !203
  store i32 0, ptr %i.cc, align 4, !tbaa !204
  store i32 0, ptr %i.cd, align 16, !tbaa !205
  %.not80.i = icmp eq i8 %i.jc, 0
  br i1 %.not80.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ke = sext i32 %i.jr to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ke
  store i32 0, ptr %i.kf, align 4, !tbaa !43
  %i.kg = load i32, ptr %i.bj, align 4, !tbaa !185
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.kh
  store i32 7, ptr %i.ki, align 4, !tbaa !43
  %i.kj = load i32, ptr %i.bj, align 4, !tbaa !185
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.kk
  store i32 2, ptr %i.kl, align 4, !tbaa !43
  %i.km = load i32, ptr %i.bj, align 4, !tbaa !185
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.kn
  store i32 0, ptr %i.ko, align 4, !tbaa !43
  %.pre.i = load i32, ptr %i.av, align 4, !tbaa !206
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.kp = phi i32 [ %.pre.i, %bb.m ], [ %i.jh, %bb.l ]
  %i.kq = icmp slt i32 %i.kp, 11
  br i1 %i.kq, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ci, align 4, !tbaa !207
  store <4 x i32> <i32 2, i32 1, i32 1, i32 1>, ptr %i.dd, align 4, !tbaa !43
  store i32 0, ptr %i.dy, align 4, !tbaa !208
  store i32 0, ptr %i.eo, align 4, !tbaa !209
  store i32 1, ptr %i.dz, align 8, !tbaa !210
  store i32 1, ptr %i.ea, align 4, !tbaa !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ee, i8 0, i64 28, i1 false)
  %i.kr = load i32, ptr %i.ay, align 4, !tbaa !212
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.t ] ; 9 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !44  ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.kv = icmp eq i8 %i.kt, 0
  %narrow.i = select i1 %i.kv, i8 -31, i8 %i.kt
  %spec.select.i = sext i8 %narrow.i to i32       ; 2 uses
  store i32 %spec.select.i, ptr %i.ku, align 4, !tbaa !43
  %i.kw = load i32, ptr %i.cn, align 8, !tbaa !213 ; 2 uses
  %.not82.i = icmp eq i32 %i.kw, 0
  br i1 %.not82.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kx = sub nsw i32 %i.kw, %spec.select.i
  %i.ky = sitofp nsz i32 %i.kx to float
  %i.kz = fdiv nsz float %i.ky, 6.000000e+00
  %exp2.i = call nsz float @llvm.exp2.f32(float %i.kz)
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i
  store float %exp2.i, ptr %i.la, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.lb = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.i
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !44  ; 2 uses
  %i.ld = zext i8 %i.lc to i32
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !43
  %.not83.i = icmp eq i8 %i.lc, 0
  br i1 %.not83.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lf = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !44
  %i.lh = zext i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 1
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.lk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ll = or i32 %i.kr, %i.lk
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.p, label %.loopexit585, !llvm.loop !63

bb.u:                                             ; preds = %bb.n
  store i32 1, ptr %i.ci, align 4, !tbaa !207
  %i.ln = load i32, ptr %i.bx, align 16, !tbaa !199
  %i.lo = icmp eq i32 %i.ln, 3
  br i1 %i.lo, label %bb.v, label %bb.w
end_hunk_0
begin_hunk_1_@ac3_decode_frame:bb.a
  %i.dkn = load i32, ptr %i.hh, align 4, !tbaa !43
  %i.dko = load i32, ptr %i.hi, align 8, !tbaa !43
  %..i.i = call i32 @llvm.smin.i32(i32 %i.dkn, i32 %i.dko)
  %i.dkp = load i32, ptr %i.gk, align 16, !tbaa !259 ; 2 uses
  %i.dkq = icmp sgt i32 %i.dkp, 0
  br i1 %i.dkq, label %.lr.ph34.i.i, label %do_rematrixing.exit.i

.lr.ph34.i.i:                                     ; preds = %bb.kt
  %wide.trip.count39.i.i = zext nneg i32 %i.dkp to i64
  br label %bb.ku

bb.ku:                                            ; preds = %.loopexit.i669.i, %.lr.ph34.i.i
  %indvars.iv36.i.i = phi i64 [ 0, %.lr.ph34.i.i ], [ %indvars.iv.next37.i.i, %.loopexit.i669.i ] ; 3 uses
  %i.dkr = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv36.i.i
  %i.dks = load i32, ptr %i.dkr, align 4, !tbaa !43
  %.not.i668.i = icmp eq i32 %i.dks, 0
  br i1 %.not.i668.i, label %.loopexit.i669.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.dkt = getelementptr inbounds nuw i8, ptr @ff_ac3_rematrix_band_tab, i64 %indvars.iv36.i.i ; 2 uses
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkt, i64 1
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !44
  %i.dkw = zext i8 %i.dkv to i32
  %...i.i = call i32 @llvm.smin.i32(i32 %..i.i, i32 %i.dkw) ; 2 uses
  %i.dkx = load i8, ptr %i.dkt, align 1, !tbaa !44 ; 2 uses
  %i.dky = zext i8 %i.dkx to i32
  %i.dkz = icmp sgt i32 %...i.i, %i.dky
  br i1 %i.dkz, label %.lr.ph.preheader.i.i, label %.loopexit.i669.i

.lr.ph.preheader.i.i:                             ; preds = %bb.kv
  %i.dla = zext i8 %i.dkx to i64                  ; 4 uses
  %wide.trip.count.i670.i = zext nneg i32 %...i.i to i64 ; 2 uses
  %i.dlb = sub nsw i64 %wide.trip.count.i670.i, %i.dla ; 3 uses
  %min.iters.check = icmp ult i64 %i.dlb, 4
  br i1 %min.iters.check, label %.lr.ph.i671.i.preheader, label %vector.ph1114

vector.ph1114:                                    ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.dlb, -4                     ; 3 uses
  %i.dlc = add nsw i64 %n.vec, %i.dla
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %vector.ph1114
  %index1116 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1118, %vector.body1115 ] ; 2 uses
  %i.dld = add nuw i64 %index1116, %i.dla         ; 2 uses
  %i.dle = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.dld ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dle, align 4, !tbaa !43 ; 2 uses
  %i.dlf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.dld ; 2 uses
  %wide.load1117 = load <4 x i32>, ptr %i.dlf, align 4, !tbaa !43 ; 2 uses
  %i.dlg = add nsw <4 x i32> %wide.load1117, %wide.load
  store <4 x i32> %i.dlg, ptr %i.dle, align 4, !tbaa !43
  %i.dlh = sub nsw <4 x i32> %wide.load, %wide.load1117
  store <4 x i32> %i.dlh, ptr %i.dlf, align 4, !tbaa !43
  %index.next1118 = add nuw i64 %index1116, 4     ; 2 uses
  %i.dli = icmp eq i64 %index.next1118, %n.vec
  br i1 %i.dli, label %middle.block1119, label %vector.body1115, !llvm.loop !130

middle.block1119:                                 ; preds = %vector.body1115
  %cmp.n = icmp eq i64 %i.dlb, %n.vec
  br i1 %cmp.n, label %.loopexit.i669.i, label %.lr.ph.i671.i.preheader

.lr.ph.i671.i.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block1119
  %indvars.iv.i672.i.ph = phi i64 [ %i.dla, %.lr.ph.preheader.i.i ], [ %i.dlc, %middle.block1119 ]
  br label %.lr.ph.i671.i

.lr.ph.i671.i:                                    ; preds = %.lr.ph.i671.i.preheader, %.lr.ph.i671.i
  %indvars.iv.i672.i = phi i64 [ %indvars.iv.next.i673.i, %.lr.ph.i671.i ], [ %indvars.iv.i672.i.ph, %.lr.ph.i671.i.preheader ] ; 3 uses
  %i.dlj = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i672.i ; 2 uses
  %i.dlk = load i32, ptr %i.dlj, align 4, !tbaa !43 ; 2 uses
  %i.dll = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i672.i ; 2 uses
  %i.dlm = load i32, ptr %i.dll, align 4, !tbaa !43 ; 2 uses
  %i.dln = add nsw i32 %i.dlm, %i.dlk
  store i32 %i.dln, ptr %i.dlj, align 4, !tbaa !43
  %i.dlo = sub nsw i32 %i.dlk, %i.dlm
  store i32 %i.dlo, ptr %i.dll, align 4, !tbaa !43
  %indvars.iv.next.i673.i = add nuw nsw i64 %indvars.iv.i672.i, 1 ; 2 uses
  %exitcond.not.i674.i = icmp eq i64 %indvars.iv.next.i673.i, %wide.trip.count.i670.i
  br i1 %exitcond.not.i674.i, label %.loopexit.i669.i, label %.lr.ph.i671.i, !llvm.loop !131

.loopexit.i669.i:                                 ; preds = %.lr.ph.i671.i, %middle.block1119, %bb.kv, %bb.ku
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %indvars.iv.next37.i.i, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i, label %do_rematrixing.exit.i, label %bb.ku, !llvm.loop !132

do_rematrixing.exit.i:                            ; preds = %.loopexit.i669.i, %bb.kt, %decode_transform_coeffs.exit.i
  %i.dlp = load i32, ptr %i.bh, align 16, !tbaa !183 ; 4 uses
  %.not573857.i = icmp slt i32 %i.dlp, 1
  br i1 %.not573857.i, label %._crit_edge860.i, label %.lr.ph859.i

.lr.ph859.i:                                      ; preds = %do_rematrixing.exit.i
  %i.dlq = icmp eq i32 %i.dkl, 0
  %i.dlr = load i32, ptr %i.hk, align 8, !tbaa !265
  %.not580.i = icmp eq i32 %i.dlr, 0
  %i.dls = add nuw i32 %i.dlp, 1
  %wide.trip.count966.i = zext i32 %i.dls to i64
  br label %bb.kw

bb.kw:                                            ; preds = %scale_coefs.exit.i, %.lr.ph859.i
  %indvars.iv963.i = phi i64 [ 1, %.lr.ph859.i ], [ %indvars.iv.next964.i, %scale_coefs.exit.i ] ; 5 uses
  %i.dlt = icmp samesign ult i64 %indvars.iv963.i, 3
  %or.cond12.i = select i1 %i.dlq, i1 %i.dlt, i1 false
  %i.dlu = sub nuw nsw i64 2, %indvars.iv963.i
  %.0486.i = select i1 %or.cond12.i, i64 %i.dlu, i64 0 ; 2 uses
  br i1 %.not580.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.dlv = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.0486.i
  %i.dlw = load i32, ptr %i.dlv, align 4, !tbaa !43
  %.not581.i = icmp eq i32 %i.dlw, 0
  br i1 %.not581.i, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.dlx = phi i64 [ 45356, %bb.ky ], [ 45372, %bb.kx ]
  %i.dly = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dlx
  %.0.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.dly, i64 %.0486.i
  %.0.i480 = load i32, ptr %.0.in.i, align 4, !tbaa !43 ; 2 uses
  %i.dlz = getelementptr inbounds nuw [1024 x i8], ptr %i.hl, i64 %indvars.iv963.i ; 4 uses
  %i.dma = getelementptr inbounds nuw [1024 x i8], ptr %i.hf, i64 %indvars.iv963.i ; 4 uses
  %i.dmb = shl i32 %.0.i480, 23
  %i.dmc = ashr i32 %i.dmb, 28                    ; 4 uses
  %i.dmd = and i32 %.0.i480, 31
  %i.dme = or disjoint i32 %i.dmd, 32             ; 2 uses
  %i.dmf = icmp slt i32 %i.dmc, 4
  br i1 %i.dmf, label %bb.la, label %bb.lc

bb.la:                                            ; preds = %bb.kz
  %i.dmg = sub nsw i32 4, %i.dmc
  %i.dmh = sub nsw i32 3, %i.dmc
  %i.dmi = shl nuw nsw i32 1, %i.dmh
  %i.dmj = insertelement <4 x i32> poison, i32 %i.dme, i64 0
  %i.dmk = shufflevector <4 x i32> %i.dmj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dml = insertelement <4 x i32> poison, i32 %i.dmi, i64 0
  %i.dmm = shufflevector <4 x i32> %i.dml, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dmn = insertelement <4 x i32> poison, i32 %i.dmg, i64 0
  %i.dmo = shufflevector <4 x i32> %i.dmn, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.lb

bb.lb:                                            ; preds = %bb.lb, %bb.la
  %indvars.iv131.i.i = phi i64 [ 0, %bb.la ], [ %indvars.iv.next132.i.i, %bb.lb ] ; 5 uses
  %i.dmp = getelementptr inbounds nuw [4 x i8], ptr %i.dma, i64 %indvars.iv131.i.i
  %i.dmq = getelementptr inbounds nuw [4 x i8], ptr %i.dlz, i64 %indvars.iv131.i.i
  %i.dmr = or disjoint i64 %indvars.iv131.i.i, 4  ; 2 uses
  %i.dms = getelementptr inbounds nuw [4 x i8], ptr %i.dma, i64 %i.dmr
  %i.dmt = load <4 x i32>, ptr %i.dmp, align 4, !tbaa !43
  %i.dmu = mul <4 x i32> %i.dmt, %i.dmk
  %i.dmv = add <4 x i32> %i.dmu, %i.dmm
  %i.dmw = ashr <4 x i32> %i.dmv, %i.dmo
  store <4 x i32> %i.dmw, ptr %i.dmq, align 4, !tbaa !43
  %i.dmx = getelementptr inbounds nuw [4 x i8], ptr %i.dlz, i64 %i.dmr
  %i.dmy = load <4 x i32>, ptr %i.dms, align 4, !tbaa !43
  %i.dmz = mul <4 x i32> %i.dmy, %i.dmk
  %i.dna = add <4 x i32> %i.dmz, %i.dmm
  %i.dnb = ashr <4 x i32> %i.dna, %i.dmo
  store <4 x i32> %i.dnb, ptr %i.dmx, align 4, !tbaa !43
  %indvars.iv.next132.i.i = add nuw nsw i64 %indvars.iv131.i.i, 8
  %i.dnc = icmp samesign ult i64 %indvars.iv131.i.i, 248
  br i1 %i.dnc, label %bb.lb, label %scale_coefs.exit.i, !llvm.loop !133

bb.lc:                                            ; preds = %bb.kz
  %.neg.i675.i = add nsw i32 %i.dmc, -4
  %i.dnd = shl nuw nsw i32 %i.dme, %.neg.i675.i
  %i.dne = insertelement <4 x i32> poison, i32 %i.dnd, i64 0
  %i.dnf = shufflevector <4 x i32> %i.dne, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.ld

bb.ld:                                            ; preds = %bb.ld, %bb.lc
  %indvars.iv.i676.i = phi i64 [ 0, %bb.lc ], [ %indvars.iv.next.i677.i, %bb.ld ] ; 5 uses
  %i.dng = getelementptr inbounds nuw [4 x i8], ptr %i.dma, i64 %indvars.iv.i676.i
  %i.dnh = getelementptr inbounds nuw [4 x i8], ptr %i.dlz, i64 %indvars.iv.i676.i
  %i.dni = load <4 x i32>, ptr %i.dng, align 4, !tbaa !43
  %i.dnj = mul <4 x i32> %i.dni, %i.dnf
  store <4 x i32> %i.dnj, ptr %i.dnh, align 4, !tbaa !43
  %i.dnk = or disjoint i64 %indvars.iv.i676.i, 4  ; 2 uses
  %i.dnl = getelementptr inbounds nuw [4 x i8], ptr %i.dma, i64 %i.dnk
  %i.dnm = getelementptr inbounds nuw [4 x i8], ptr %i.dlz, i64 %i.dnk
  %i.dnn = load <4 x i32>, ptr %i.dnl, align 4, !tbaa !43
  %i.dno = mul <4 x i32> %i.dnn, %i.dnf
  store <4 x i32> %i.dno, ptr %i.dnm, align 4, !tbaa !43
  %indvars.iv.next.i677.i = add nuw nsw i64 %indvars.iv.i676.i, 8
  %i.dnp = icmp samesign ult i64 %indvars.iv.i676.i, 248
  br i1 %i.dnp, label %bb.ld, label %scale_coefs.exit.i, !llvm.loop !134

scale_coefs.exit.i:                               ; preds = %bb.ld, %bb.lb
  %indvars.iv.next964.i = add nuw nsw i64 %indvars.iv963.i, 1 ; 2 uses
  %exitcond967.not.i = icmp eq i64 %indvars.iv.next964.i, %wide.trip.count966.i
  br i1 %exitcond967.not.i, label %._crit_edge860.i, label %bb.kw, !llvm.loop !135

._crit_edge860.i:                                 ; preds = %scale_coefs.exit.i, %do_rematrixing.exit.i
  %i.dnq = load i32, ptr %i.fr, align 8, !tbaa !251
  %.not574.i = icmp eq i32 %i.dnq, 0
  br i1 %.not574.i, label %bb.lr, label %bb.le

bb.le:                                            ; preds = %._crit_edge860.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, ptr noundef nonnull align 16 dereferenceable(17) @__const.ff_eac3_apply_spectral_extension.wrapflag, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.dnr = load i32, ptr %i.fv, align 4, !tbaa !253 ; 7 uses
  %i.dns = load i32, ptr %i.fx, align 8, !tbaa !256 ; 2 uses
  %i.dnt = icmp sgt i32 %i.dns, 0
  br i1 %i.dnt, label %.lr.ph154.i.i, label %._crit_edge155.i.i

.lr.ph154.i.i:                                    ; preds = %bb.le
  %i.dnu = load i32, ptr %i.fw, align 4, !tbaa !254 ; 4 uses
  %wide.trip.count.i682.i = zext nneg i32 %i.dns to i64
  %i.dnv = sub nsw i32 %i.dnu, %i.dnr             ; 2 uses
  %i.dnw = trunc i32 %i.dnv to i8
  br label %bb.lf

bb.lf:                                            ; preds = %._crit_edge.i689.i, %.lr.ph154.i.i
  %indvars.iv.i683.i = phi i64 [ 0, %.lr.ph154.i.i ], [ %indvars.iv.next.i690.i, %._crit_edge.i689.i ] ; 3 uses
  %.0152.i.i = phi i32 [ %i.dnr, %.lr.ph154.i.i ], [ %.2.lcssa.i.i, %._crit_edge.i689.i ] ; 3 uses
  %.0131150.i.i = phi i8 [ 0, %.lr.ph154.i.i ], [ %.2133.lcssa.i.i, %._crit_edge.i689.i ] ; 3 uses
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv.i683.i
  %i.dny = load i8, ptr %i.dnx, align 1, !tbaa !44 ; 2 uses
  %i.dnz = zext i8 %i.dny to i32                  ; 3 uses
  %i.doa = add nsw i32 %.0152.i.i, %i.dnz
  %i.dob = icmp sgt i32 %i.doa, %i.dnu
  br i1 %i.dob, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.doc = sub nsw i32 %.0152.i.i, %i.dnr
  %i.dod = trunc i32 %i.doc to i8
  %i.doe = add nuw i8 %.0131150.i.i, 1
  %i.dof = zext i8 %.0131150.i.i to i64
  %i.dog = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dof
  store i8 %i.dod, ptr %i.dog, align 1, !tbaa !44
  %i.doh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i683.i
  store i8 1, ptr %i.doh, align 1, !tbaa !44
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.1132.i.i = phi i8 [ %i.doe, %bb.lg ], [ %.0131150.i.i, %bb.lf ] ; 2 uses
  %.1.i684.i = phi i32 [ %i.dnr, %bb.lg ], [ %.0152.i.i, %bb.lf ] ; 2 uses
  %.not195.i.i = icmp eq i8 %i.dny, 0
  br i1 %.not195.i.i, label %._crit_edge.i689.i, label %.lr.ph.i685.i

.lr.ph.i685.i:                                    ; preds = %bb.lh, %bb.lj
  %.2148.i.i = phi i32 [ %i.don, %bb.lj ], [ %.1.i684.i, %bb.lh ] ; 3 uses
  %.2133147.i.i = phi i8 [ %.3134.i.i, %bb.lj ], [ %.1132.i.i, %bb.lh ] ; 3 uses
  %.0135146.i.i = phi i32 [ %i.doo, %bb.lj ], [ 0, %bb.lh ] ; 2 uses
  %i.doi = icmp eq i32 %.2148.i.i, %i.dnu
  br i1 %i.doi, label %bb.li, label %.lr.ph._crit_edge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %.lr.ph.i685.i
  %.pre232.i.i = sub nsw i32 %i.dnu, %.2148.i.i
  br label %bb.lj

bb.li:                                            ; preds = %.lr.ph.i685.i
  %i.doj = add nuw i8 %.2133147.i.i, 1
  %i.dok = zext i8 %.2133147.i.i to i64
  %i.dol = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dok
  store i8 %i.dnw, ptr %i.dol, align 1, !tbaa !44
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %.lr.ph._crit_edge.i.i
  %.pre-phi.i686.i = phi i32 [ %.pre232.i.i, %.lr.ph._crit_edge.i.i ], [ %i.dnv, %bb.li ]
  %.3134.i.i = phi i8 [ %.2133147.i.i, %.lr.ph._crit_edge.i.i ], [ %i.doj, %bb.li ] ; 2 uses
  %.3.i687.i = phi i32 [ %.2148.i.i, %.lr.ph._crit_edge.i.i ], [ %i.dnr, %bb.li ]
  %i.dom = sub nsw i32 %i.dnz, %.0135146.i.i
  %..i688.i = call i32 @llvm.smin.i32(i32 %i.dom, i32 %.pre-phi.i686.i) ; 2 uses
  %i.don = add nsw i32 %.3.i687.i, %..i688.i      ; 2 uses
  %i.doo = add nsw i32 %..i688.i, %.0135146.i.i   ; 2 uses
  %i.dop = icmp slt i32 %i.doo, %i.dnz
  br i1 %i.dop, label %.lr.ph.i685.i, label %._crit_edge.i689.i, !llvm.loop !136

._crit_edge.i689.i:                               ; preds = %bb.lj, %bb.lh
  %.2133.lcssa.i.i = phi i8 [ %.1132.i.i, %bb.lh ], [ %.3134.i.i, %bb.lj ] ; 2 uses
  %.2.lcssa.i.i = phi i32 [ %.1.i684.i, %bb.lh ], [ %i.don, %bb.lj ] ; 2 uses
  %indvars.iv.next.i690.i = add nuw nsw i64 %indvars.iv.i683.i, 1 ; 2 uses
  %exitcond.not.i691.i = icmp eq i64 %indvars.iv.next.i690.i, %wide.trip.count.i682.i
  br i1 %exitcond.not.i691.i, label %._crit_edge155.i.i, label %bb.lf, !llvm.loop !137

._crit_edge155.i.i:                               ; preds = %._crit_edge.i689.i, %bb.le
  %.0131.lcssa.i.i = phi i8 [ 0, %bb.le ], [ %.2133.lcssa.i.i, %._crit_edge.i689.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %i.dnr, %bb.le ], [ %.2.lcssa.i.i, %._crit_edge.i689.i ]
  %i.doq = sub nsw i32 %.0.lcssa.i.i, %i.dnr
  %i.dor = trunc i32 %i.doq to i8
  %i.dos = zext i8 %.0131.lcssa.i.i to i64
  %i.dot = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dos
  store i8 %i.dor, ptr %i.dot, align 1, !tbaa !44
  %.not190.i.i = icmp slt i32 %i.dkk, 1
  br i1 %.not190.i.i, label %ff_eac3_apply_spectral_extension.exit.i, label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %._crit_edge155.i.i
  %i.dou = add i8 %.0131.lcssa.i.i, 1             ; 2 uses
  %wide.trip.count205.i.i = zext i8 %i.dou to i64 ; 2 uses
  %xtraiter1400 = and i64 %wide.trip.count205.i.i, 1
  %i.dov = icmp eq i8 %.0131.lcssa.i.i, 0
  %unroll_iter1404 = and i64 %wide.trip.count205.i.i, 254
  %lcmp.mod1402.not = icmp eq i64 %xtraiter1400, 0
  %lcmp.mod1403 = trunc i8 %i.dou to i1
  br label %bb.lk

bb.lk:                                            ; preds = %.loopexit.i680.i, %.lr.ph193.i.i
  %indvars.iv225.i.i = phi i64 [ 1, %.lr.ph193.i.i ], [ %indvars.iv.next226.i.i, %.loopexit.i680.i ] ; 7 uses
  %i.dow = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv225.i.i
  %i.dox = load i8, ptr %i.dow, align 1, !tbaa !44
  %.not143.i.i = icmp eq i8 %i.dox, 0
  br i1 %.not143.i.i, label %.loopexit.i680.i, label %.lr.ph161.i.i

.lr.ph161.i.i:                                    ; preds = %bb.lk
  %11 = load i32, ptr %i.fw, align 4, !tbaa !254  ; 2 uses
  %i.doy = getelementptr inbounds nuw [1024 x i8], ptr %i.hl, i64 %indvars.iv225.i.i ; 13 uses
  br i1 %i.dov, label %.epil.preheader1399, label %.lr.ph161.i.i.new

.lr.ph161.i.i.new:                                ; preds = %.lr.ph161.i.i, %.lr.ph161.i.i.new
  %indvars.iv202.i.i = phi i64 [ %indvars.iv.next203.i.i.1, %.lr.ph161.i.i.new ], [ 0, %.lr.ph161.i.i ] ; 3 uses
  %.4159.i.i = phi i32 [ %i.dpv, %.lr.ph161.i.i.new ], [ %11, %.lr.ph161.i.i ] ; 2 uses
  %niter1405 = phi i64 [ %niter1405.next.1, %.lr.ph161.i.i.new ], [ 0, %.lr.ph161.i.i ]
  %i.doz = sext i32 %.4159.i.i to i64
  %i.dpa = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.doz
  %i.dpb = load i32, ptr %i.fv, align 4, !tbaa !253
  %i.dpc = sext i32 %i.dpb to i64
  %i.dpd = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.dpc
  %i.dpe = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv202.i.i
  %i.dpf = load i8, ptr %i.dpe, align 2, !tbaa !44 ; 2 uses
  %i.dpg = zext i8 %i.dpf to i64
  %i.dph = shl nuw nsw i64 %i.dpg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dpa, ptr nonnull align 4 %i.dpd, i64 %i.dph, i1 false)
  %i.dpi = zext i8 %i.dpf to i32
  %i.dpj = add nsw i32 %.4159.i.i, %i.dpi         ; 2 uses
  %i.dpk = sext i32 %i.dpj to i64
  %i.dpl = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.dpk
  %i.dpm = load i32, ptr %i.fv, align 4, !tbaa !253
  %i.dpn = sext i32 %i.dpm to i64
  %i.dpo = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.dpn
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv202.i.i
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpp, i64 1
  %i.dpr = load i8, ptr %i.dpq, align 1, !tbaa !44 ; 2 uses
  %i.dps = zext i8 %i.dpr to i64
  %i.dpt = shl nuw nsw i64 %i.dps, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dpl, ptr nonnull align 4 %i.dpo, i64 %i.dpt, i1 false)
  %i.dpu = zext i8 %i.dpr to i32
  %i.dpv = add nsw i32 %i.dpj, %i.dpu             ; 2 uses
  %indvars.iv.next203.i.i.1 = add nuw nsw i64 %indvars.iv202.i.i, 2 ; 2 uses
  %niter1405.next.1 = add i64 %niter1405, 2       ; 2 uses
  %niter1405.ncmp.1 = icmp eq i64 %niter1405.next.1, %unroll_iter1404
  br i1 %niter1405.ncmp.1, label %._crit_edge162.loopexit.i.i.unr-lcssa, label %.lr.ph161.i.i.new, !llvm.loop !138

._crit_edge162.loopexit.i.i.unr-lcssa:            ; preds = %.lr.ph161.i.i.new
  br i1 %lcmp.mod1402.not, label %._crit_edge162.i.i, label %.epil.preheader1399

.epil.preheader1399:                              ; preds = %._crit_edge162.loopexit.i.i.unr-lcssa, %.lr.ph161.i.i
  %indvars.iv202.i.i.epil.init = phi i64 [ 0, %.lr.ph161.i.i ], [ %indvars.iv.next203.i.i.1, %._crit_edge162.loopexit.i.i.unr-lcssa ]
  %.4159.i.i.epil.init = phi i32 [ %11, %.lr.ph161.i.i ], [ %i.dpv, %._crit_edge162.loopexit.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1403)
  %i.dpw = sext i32 %.4159.i.i.epil.init to i64
  %i.dpx = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.dpw
  %i.dpy = load i32, ptr %i.fv, align 4, !tbaa !253
  %i.dpz = sext i32 %i.dpy to i64
  %i.dqa = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.dpz
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv202.i.i.epil.init
  %i.dqc = load i8, ptr %i.dqb, align 1, !tbaa !44
  %i.dqd = zext i8 %i.dqc to i64
  %i.dqe = shl nuw nsw i64 %i.dqd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dpx, ptr nonnull align 4 %i.dqa, i64 %i.dqe, i1 false)
  br label %._crit_edge162.i.i

._crit_edge162.i.i:                               ; preds = %._crit_edge162.loopexit.i.i.unr-lcssa, %.epil.preheader1399
  %12 = load i32, ptr %i.fw, align 4, !tbaa !254  ; 2 uses
  %13 = load i32, ptr %i.fx, align 8, !tbaa !256  ; 4 uses
  %i.dqf = icmp sgt i32 %13, 0
  br i1 %i.dqf, label %.lr.ph174.i.i, label %.loopexit.i680.i

.lr.ph174.i.i:                                    ; preds = %._crit_edge162.i.i
  %wide.trip.count214.i.i = zext nneg i32 %13 to i64
  br label %bb.ll

bb.ll:                                            ; preds = %._crit_edge168.i.i, %.lr.ph174.i.i
  %indvars.iv211.i.i = phi i64 [ 0, %.lr.ph174.i.i ], [ %indvars.iv.next212.i.i, %._crit_edge168.i.i ] ; 3 uses
  %.5172.i.i = phi i32 [ %12, %.lr.ph174.i.i ], [ %.6.lcssa.i.i, %._crit_edge168.i.i ] ; 3 uses
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv211.i.i
  %i.dqh = load i8, ptr %i.dqg, align 1, !tbaa !44 ; 4 uses
  %i.dqi = zext i8 %i.dqh to i32                  ; 3 uses
  %.not197.i.i = icmp eq i8 %i.dqh, 0
  br i1 %.not197.i.i, label %._crit_edge168.i.i, label %.lr.ph167.preheader.i.i

.lr.ph167.preheader.i.i:                          ; preds = %bb.ll
  %i.dqj = sext i32 %.5172.i.i to i64             ; 2 uses
  %xtraiter1406 = and i32 %i.dqi, 3               ; 3 uses
  %i.dqk = icmp ult i8 %i.dqh, 4
  br i1 %i.dqk, label %.lr.ph167.i.i.epil.preheader, label %.lr.ph167.preheader.i.i.new

.lr.ph167.preheader.i.i.new:                      ; preds = %.lr.ph167.preheader.i.i
  %unroll_iter1411 = and i32 %i.dqi, 252
  br label %.lr.ph167.i.i

.lr.ph167.i.i:                                    ; preds = %.lr.ph167.i.i, %.lr.ph167.preheader.i.i.new
  %indvars.iv207.i.i = phi i64 [ %i.dqj, %.lr.ph167.preheader.i.i.new ], [ %indvars.iv.next208.i.i.3, %.lr.ph167.i.i ] ; 5 uses
  %.0130164.i.i = phi float [ 0.000000e+00, %.lr.ph167.preheader.i.i.new ], [ %i.drd, %.lr.ph167.i.i ]
  %niter1412 = phi i32 [ 0, %.lr.ph167.preheader.i.i.new ], [ %niter1412.next.3, %.lr.ph167.i.i ]
  %i.dql = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %indvars.iv207.i.i
  %i.dqm = load i32, ptr %i.dql, align 4, !tbaa !43
  %i.dqn = sitofp nsz i32 %i.dqm to float         ; 2 uses
  %i.dqo = call nsz float @llvm.fmuladd.f32(float %i.dqn, float %i.dqn, float %.0130164.i.i)
  %i.dqp = getelementptr [4 x i8], ptr %i.doy, i64 %indvars.iv207.i.i
  %i.dqq = getelementptr i8, ptr %i.dqp, i64 4
  %i.dqr = load i32, ptr %i.dqq, align 4, !tbaa !43
  %i.dqs = sitofp nsz i32 %i.dqr to float         ; 2 uses
  %i.dqt = call nsz float @llvm.fmuladd.f32(float %i.dqs, float %i.dqs, float %i.dqo)
  %i.dqu = getelementptr [4 x i8], ptr %i.doy, i64 %indvars.iv207.i.i
  %i.dqv = getelementptr i8, ptr %i.dqu, i64 8
  %i.dqw = load i32, ptr %i.dqv, align 4, !tbaa !43
  %i.dqx = sitofp nsz i32 %i.dqw to float         ; 2 uses
  %i.dqy = call nsz float @llvm.fmuladd.f32(float %i.dqx, float %i.dqx, float %i.dqt)
  %indvars.iv.next208.i.i.3 = add nsw i64 %indvars.iv207.i.i, 4 ; 2 uses
  %i.dqz = getelementptr [4 x i8], ptr %i.doy, i64 %indvars.iv207.i.i
  %i.dra = getelementptr i8, ptr %i.dqz, i64 12
  %i.drb = load i32, ptr %i.dra, align 4, !tbaa !43
  %i.drc = sitofp nsz i32 %i.drb to float         ; 2 uses
  %i.drd = call nsz float @llvm.fmuladd.f32(float %i.drc, float %i.drc, float %i.dqy) ; 3 uses
  %niter1412.next.3 = add i32 %niter1412, 4       ; 2 uses
  %niter1412.ncmp.3 = icmp eq i32 %niter1412.next.3, %unroll_iter1411
  br i1 %niter1412.ncmp.3, label %._crit_edge168.loopexit.i.i.unr-lcssa, label %.lr.ph167.i.i, !llvm.loop !139

._crit_edge168.loopexit.i.i.unr-lcssa:            ; preds = %.lr.ph167.i.i
  %lcmp.mod1408.not = icmp eq i32 %xtraiter1406, 0
  br i1 %lcmp.mod1408.not, label %._crit_edge168.loopexit.i.i, label %.lr.ph167.i.i.epil.preheader

.lr.ph167.i.i.epil.preheader:                     ; preds = %._crit_edge168.loopexit.i.i.unr-lcssa, %.lr.ph167.preheader.i.i
  %indvars.iv207.i.i.epil.init = phi i64 [ %i.dqj, %.lr.ph167.preheader.i.i ], [ %indvars.iv.next208.i.i.3, %._crit_edge168.loopexit.i.i.unr-lcssa ]
  %.0130164.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph167.preheader.i.i ], [ %i.drd, %._crit_edge168.loopexit.i.i.unr-lcssa ]
  %lcmp.mod1410 = icmp ne i32 %xtraiter1406, 0
  call void @llvm.assume(i1 %lcmp.mod1410)
  br label %.lr.ph167.i.i.epil

.lr.ph167.i.i.epil:                               ; preds = %.lr.ph167.i.i.epil, %.lr.ph167.i.i.epil.preheader
  %indvars.iv207.i.i.epil = phi i64 [ %indvars.iv207.i.i.epil.init, %.lr.ph167.i.i.epil.preheader ], [ %indvars.iv.next208.i.i.epil, %.lr.ph167.i.i.epil ] ; 2 uses
  %.0130164.i.i.epil = phi float [ %.0130164.i.i.epil.init, %.lr.ph167.i.i.epil.preheader ], [ %i.drh, %.lr.ph167.i.i.epil ]
  %epil.iter1407 = phi i32 [ 0, %.lr.ph167.i.i.epil.preheader ], [ %epil.iter1407.next, %.lr.ph167.i.i.epil ]
  %indvars.iv.next208.i.i.epil = add nsw i64 %indvars.iv207.i.i.epil, 1
  %i.dre = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %indvars.iv207.i.i.epil
  %i.drf = load i32, ptr %i.dre, align 4, !tbaa !43
  %i.drg = sitofp nsz i32 %i.drf to float         ; 2 uses
  %i.drh = call nsz float @llvm.fmuladd.f32(float %i.drg, float %i.drg, float %.0130164.i.i.epil) ; 2 uses
  %epil.iter1407.next = add i32 %epil.iter1407, 1 ; 2 uses
  %epil.iter1407.cmp.not = icmp eq i32 %epil.iter1407.next, %xtraiter1406
  br i1 %epil.iter1407.cmp.not, label %._crit_edge168.loopexit.i.i, label %.lr.ph167.i.i.epil, !llvm.loop !140

._crit_edge168.loopexit.i.i:                      ; preds = %.lr.ph167.i.i.epil, %._crit_edge168.loopexit.i.i.unr-lcssa
  %.lcssa1305 = phi float [ %i.drd, %._crit_edge168.loopexit.i.i.unr-lcssa ], [ %i.drh, %.lr.ph167.i.i.epil ]
  %i.dri = add i32 %.5172.i.i, %i.dqi
  br label %._crit_edge168.i.i

._crit_edge168.i.i:                               ; preds = %._crit_edge168.loopexit.i.i, %bb.ll
  %.0130.lcssa.i.i = phi float [ 0.000000e+00, %bb.ll ], [ %.lcssa1305, %._crit_edge168.loopexit.i.i ]
  %.6.lcssa.i.i = phi i32 [ %.5172.i.i, %bb.ll ], [ %i.dri, %._crit_edge168.loopexit.i.i ]
  %i.drj = uitofp i8 %i.dqh to float
  %i.drk = fdiv nsz float %.0130.lcssa.i.i, %i.drj
  %i.drl = call nsz float @llvm.sqrt.f32(float %i.drk)
  %i.drm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv211.i.i
  store float %i.drl, ptr %i.drm, align 4, !tbaa !29
  %indvars.iv.next212.i.i = add nuw nsw i64 %indvars.iv211.i.i, 1 ; 2 uses
  %exitcond215.not.i.i = icmp eq i64 %indvars.iv.next212.i.i, %wide.trip.count214.i.i
  br i1 %exitcond215.not.i.i, label %._crit_edge175.i.i, label %bb.ll, !llvm.loop !141

._crit_edge175.i.i:                               ; preds = %._crit_edge168.i.i
  %i.drn = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv225.i.i
  %i.dro = load i8, ptr %i.drn, align 1, !tbaa !44 ; 2 uses
  %i.drp = icmp sgt i8 %i.dro, -1
  br i1 %i.drp, label %bb.lm, label %.loopexit145.i.i

bb.lm:                                            ; preds = %._crit_edge175.i.i
  %i.drq = zext nneg i8 %i.dro to i64
  %i.drr = getelementptr inbounds nuw [12 x i8], ptr @ff_eac3_spx_atten_tab, i64 %i.drq
  %i.drs = add nsw i32 %12, -2
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lp, %bb.lm
  %i.drt = phi i32 [ %13, %bb.lm ], [ %i.dsk, %bb.lp ]
  %indvars.iv216.i.i = phi i64 [ 0, %bb.lm ], [ %indvars.iv.next217.i.i, %bb.lp ] ; 3 uses
  %.7177.i.i = phi i32 [ %i.drs, %bb.lm ], [ %i.dso, %bb.lp ] ; 2 uses
  %i.dru = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv216.i.i
  %i.drv = load i8, ptr %i.dru, align 1, !tbaa !44
  %.not144.i.i = icmp eq i8 %i.drv, 0
  br i1 %.not144.i.i, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.drw = sext i32 %.7177.i.i to i64
  %i.drx = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.drw ; 3 uses
  %i.dry = load <3 x float>, ptr %i.drr, align 4, !tbaa !29 ; 2 uses
  %i.drz = shufflevector <3 x float> %i.dry, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dsa = load <4 x i32>, ptr %i.drx, align 4, !tbaa !43
  %i.dsb = sitofp <4 x i32> %i.dsa to <4 x float>
  %i.dsc = fmul nsz <4 x float> %i.drz, %i.dsb
  %i.dsd = fptosi <4 x float> %i.dsc to <4 x i32>
  store <4 x i32> %i.dsd, ptr %i.drx, align 4, !tbaa !43
  %i.dse = getelementptr inbounds nuw i8, ptr %i.drx, i64 16 ; 2 uses
  %i.dsf = load i32, ptr %i.dse, align 4, !tbaa !43
  %i.dsg = sitofp nsz i32 %i.dsf to float
  %i.dsh = extractelement <3 x float> %i.dry, i64 0
  %i.dsi = fmul nsz float %i.dsh, %i.dsg
  %i.dsj = fptosi float %i.dsi to i32
  store i32 %i.dsj, ptr %i.dse, align 4, !tbaa !43
  %.pre230.i.i = load i32, ptr %i.fx, align 8, !tbaa !256
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %i.dsk = phi i32 [ %.pre230.i.i, %bb.lo ], [ %i.drt, %bb.ln ] ; 3 uses
  %i.dsl = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv216.i.i
  %i.dsm = load i8, ptr %i.dsl, align 1, !tbaa !44
  %i.dsn = zext i8 %i.dsm to i32
  %i.dso = add nsw i32 %.7177.i.i, %i.dsn
  %indvars.iv.next217.i.i = add nuw nsw i64 %indvars.iv216.i.i, 1 ; 2 uses
  %i.dsp = sext i32 %i.dsk to i64
  %i.dsq = icmp slt i64 %indvars.iv.next217.i.i, %i.dsp
  br i1 %i.dsq, label %bb.ln, label %.loopexit145.i.i, !llvm.loop !142

.loopexit145.i.i:                                 ; preds = %bb.lp, %._crit_edge175.i.i
  %14 = phi i32 [ %13, %._crit_edge175.i.i ], [ %i.dsk, %bb.lp ] ; 2 uses
  %i.dsr = icmp sgt i32 %14, 0
  br i1 %i.dsr, label %.lr.ph189.i.i, label %.loopexit.i680.i

.lr.ph189.i.i:                                    ; preds = %.loopexit145.i.i
  %i.dss = load i32, ptr %i.fw, align 4, !tbaa !254
  %i.dst = getelementptr inbounds nuw [68 x i8], ptr %i.ga, i64 %indvars.iv225.i.i
  %i.dsu = getelementptr inbounds nuw [68 x i8], ptr %i.gb, i64 %indvars.iv225.i.i
  br label %bb.lq

bb.lq:                                            ; preds = %._crit_edge184.i.i, %.lr.ph189.i.i
  %i.dsv = phi i32 [ %14, %.lr.ph189.i.i ], [ %i.duq, %._crit_edge184.i.i ]
  %indvars.iv222.i.i = phi i64 [ 0, %.lr.ph189.i.i ], [ %indvars.iv.next223.i.i, %._crit_edge184.i.i ] ; 5 uses
  %.8187.i.i = phi i32 [ %i.dss, %.lr.ph189.i.i ], [ %.9.lcssa.i.i, %._crit_edge184.i.i ] ; 2 uses
  %i.dsw = getelementptr inbounds nuw [4 x i8], ptr %i.dst, i64 %indvars.iv222.i.i
  %i.dsx = load i32, ptr %i.dsw, align 4, !tbaa !43
  %i.dsy = sitofp nsz i32 %i.dsx to float
  %i.dsz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv222.i.i
  %i.dta = load float, ptr %i.dsz, align 4, !tbaa !29
  %i.dtb = fmul nsz float %i.dta, %i.dsy
  %i.dtc = fmul nsz float %i.dtb, f0xB0000000
  %i.dtd = getelementptr inbounds nuw [4 x i8], ptr %i.dsu, i64 %indvars.iv222.i.i
  %i.dte = load i32, ptr %i.dtd, align 4, !tbaa !43
  %i.dtf = sitofp nsz i32 %i.dte to float
  %i.dtg = fmul nsz float %i.dtc, f0x34000000     ; 2 uses
  %i.dth = fmul nnan nsz float %i.dtf, f0x34000000
  %i.dti = fcmp nsz olt float %i.dtg, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.dti, float -1.000000e+00, float %i.dtg
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv222.i.i ; 2 uses
  %i.dtk = load i8, ptr %i.dtj, align 1, !tbaa !44
  %.not198.i.i = icmp eq i8 %i.dtk, 0
  br i1 %.not198.i.i, label %._crit_edge184.i.i, label %.lr.ph183.preheader.i.i

.lr.ph183.preheader.i.i:                          ; preds = %bb.lq
  %i.dtl = sext i32 %.8187.i.i to i64
  br label %.lr.ph183.i.i

.lr.ph183.i.i:                                    ; preds = %.lr.ph183.i.i, %.lr.ph183.preheader.i.i
  %indvars.iv219.i.i = phi i64 [ %i.dtl, %.lr.ph183.preheader.i.i ], [ %indvars.iv.next220.i.i, %.lr.ph183.i.i ] ; 2 uses
  %.3138180.i.i = phi i32 [ 0, %.lr.ph183.preheader.i.i ], [ %i.dul, %.lr.ph183.i.i ]
  %i.dtm = load i32, ptr %i.hn, align 4, !tbaa !58 ; 4 uses
  %i.dtn = add i32 %i.dtm, 40
  %i.dto = and i32 %i.dtn, 63
  %i.dtp = zext nneg i32 %i.dto to i64
  %i.dtq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.dtp
  %i.dtr = load i32, ptr %i.dtq, align 4, !tbaa !43
  %i.dts = add i32 %i.dtm, 9
  %i.dtt = and i32 %i.dts, 63
  %i.dtu = zext nneg i32 %i.dtt to i64
  %i.dtv = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.dtu
  %i.dtw = load i32, ptr %i.dtv, align 4, !tbaa !43
  %i.dtx = add i32 %i.dtw, %i.dtr                 ; 2 uses
  %i.dty = and i32 %i.dtm, 63
  %i.dtz = zext nneg i32 %i.dty to i64
  %i.dua = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.dtz
  store i32 %i.dtx, ptr %i.dua, align 4, !tbaa !43
  %i.dub = add i32 %i.dtm, 1
  store i32 %i.dub, ptr %i.hn, align 4, !tbaa !58
  %i.duc = sitofp nsz i32 %i.dtx to float
  %i.dud = fmul nsz float %spec.store.select.i.i, %i.duc
  %i.due = fptosi float %i.dud to i32
  %i.duf = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %indvars.iv219.i.i ; 2 uses
  %i.dug = load i32, ptr %i.duf, align 4, !tbaa !43
  %i.duh = sitofp nsz i32 %i.dug to float
  %i.dui = fmul nsz float %i.dth, %i.duh
  %i.duj = fptosi float %i.dui to i32
  %indvars.iv.next220.i.i = add nsw i64 %indvars.iv219.i.i, 1 ; 2 uses
  %i.duk = add i32 %i.duj, %i.due
  store i32 %i.duk, ptr %i.duf, align 4, !tbaa !43
  %i.dul = add nuw nsw i32 %.3138180.i.i, 1       ; 2 uses
  %i.dum = load i8, ptr %i.dtj, align 1, !tbaa !44
  %i.dun = zext i8 %i.dum to i32
  %i.duo = icmp samesign ult i32 %i.dul, %i.dun
  br i1 %i.duo, label %.lr.ph183.i.i, label %._crit_edge184.loopexit.i.i, !llvm.loop !143

._crit_edge184.loopexit.i.i:                      ; preds = %.lr.ph183.i.i
  %i.dup = trunc nsw i64 %indvars.iv.next220.i.i to i32
  %.pre231.i.i = load i32, ptr %i.fx, align 8, !tbaa !256
  br label %._crit_edge184.i.i

._crit_edge184.i.i:                               ; preds = %._crit_edge184.loopexit.i.i, %bb.lq
  %i.duq = phi i32 [ %i.dsv, %bb.lq ], [ %.pre231.i.i, %._crit_edge184.loopexit.i.i ] ; 2 uses
  %.9.lcssa.i.i = phi i32 [ %.8187.i.i, %bb.lq ], [ %i.dup, %._crit_edge184.loopexit.i.i ]
  %indvars.iv.next223.i.i = add nuw nsw i64 %indvars.iv222.i.i, 1 ; 2 uses
  %i.dur = sext i32 %i.duq to i64
  %i.dus = icmp slt i64 %indvars.iv.next223.i.i, %i.dur
  br i1 %i.dus, label %bb.lq, label %.loopexit.i680.i, !llvm.loop !144

.loopexit.i680.i:                                 ; preds = %._crit_edge184.i.i, %.loopexit145.i.i, %._crit_edge162.i.i, %bb.lk
  %indvars.iv.next226.i.i = add nuw nsw i64 %indvars.iv225.i.i, 1
  %i.dut = load i32, ptr %i.bi, align 4, !tbaa !184 ; 2 uses
  %i.duu = sext i32 %i.dut to i64
  %.not.not.i681.i = icmp slt i64 %indvars.iv225.i.i, %i.duu
  br i1 %.not.not.i681.i, label %bb.lk, label %ff_eac3_apply_spectral_extension.exit.loopexit.i, !llvm.loop !145

ff_eac3_apply_spectral_extension.exit.loopexit.i: ; preds = %.loopexit.i680.i
  %.pr743.pre.i = load i32, ptr %i.bh, align 16, !tbaa !183
  br label %ff_eac3_apply_spectral_extension.exit.i

ff_eac3_apply_spectral_extension.exit.i:          ; preds = %ff_eac3_apply_spectral_extension.exit.loopexit.i, %._crit_edge155.i.i
  %i.duv = phi i32 [ %i.dut, %ff_eac3_apply_spectral_extension.exit.loopexit.i ], [ %i.dkk, %._crit_edge155.i.i ]
  %.pr743.i = phi i32 [ %.pr743.pre.i, %ff_eac3_apply_spectral_extension.exit.loopexit.i ], [ %i.dlp, %._crit_edge155.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.lr

bb.lr:                                            ; preds = %ff_eac3_apply_spectral_extension.exit.i, %._crit_edge860.i
  %i.duw = phi i32 [ %i.duv, %ff_eac3_apply_spectral_extension.exit.i ], [ %i.dkk, %._crit_edge860.i ] ; 3 uses
  %i.dux = phi i32 [ %.pr743.i, %ff_eac3_apply_spectral_extension.exit.i ], [ %i.dlp, %._crit_edge860.i ] ; 4 uses
  %i.duy = load i32, ptr %i.er, align 4, !tbaa !239 ; 4 uses
  %.not575.i = icmp eq i32 %i.dux, %i.duy
  br i1 %.not575.i, label %.thread744.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.duz = load i32, ptr %i.es, align 4, !tbaa !240
  %i.dva = and i32 %i.duz, 8
  %.not576.i = icmp eq i32 %i.dva, 0
  br i1 %.not576.i, label %.thread1057.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.dvb = icmp ne i32 %i.duw, %i.duy             ; 2 uses
  br i1 %.2494.i, label %bb.mm, label %bb.lu

.thread1057.i:                                    ; preds = %bb.ls
  br i1 %.2494.i, label %.thread1058.i, label %bb.lu

.thread744.i:                                     ; preds = %bb.lr
  br i1 %.2494.i, label %.critedge607.i, label %bb.lu

bb.lu:                                            ; preds = %.thread744.i, %.thread1057.i, %bb.lt
  %i.dvc = phi i1 [ false, %.thread744.i ], [ %i.dvb, %bb.lt ], [ true, %.thread1057.i ]
  %i.dvd = load i32, ptr %i.hq, align 8, !tbaa !46
  %.not579.i = icmp eq i32 %i.dvd, 0
  br i1 %.not579.i, label %ac3_upmix_delay.exit.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  store i32 0, ptr %i.hq, align 8, !tbaa !46
  %i.dve = load i32, ptr %i.ay, align 4, !tbaa !212
  switch i32 %i.dve, label %ac3_upmix_delay.exit.i [
    i32 0, label %bb.lw
    i32 2, label %bb.lw
    i32 6, label %bb.lx
    i32 4, label %bb.ly
    i32 7, label %bb.lz
    i32 5, label %bb.ma
    i32 3, label %bb.mb
  ]

bb.lw:                                            ; preds = %bb.lv, %bb.lv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, ptr noundef nonnull align 16 dereferenceable(1024) %i.hw, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

bb.lx:                                            ; preds = %bb.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.ht, i8 0, i64 1024, i1 false)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hu, i8 0, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

bb.lz:                                            ; preds = %bb.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hs, i8 0, i64 1024, i1 false)
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.ht, i8 0, i64 1024, i1 false)
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hu, ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.hv, i8 0, i64 1024, i1 false)
  br label %ac3_upmix_delay.exit.i

ac3_upmix_delay.exit.i:                           ; preds = %bb.mb, %bb.ly, %bb.lw, %bb.lv, %bb.lu
  %.not58.i.i = icmp slt i32 %i.dux, 1
  br i1 %.not58.i.i, label %do_imdct.exit.i, label %.lr.ph.i692.i

.lr.ph.i692.i:                                    ; preds = %ac3_upmix_delay.exit.i
  %i.dvf = add nuw i32 %i.dux, 1
  %wide.trip.count.i693.i = zext i32 %i.dvf to i64
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mj, %.lr.ph.i692.i
  %indvars.iv65.i.i = phi i64 [ 1, %.lr.ph.i692.i ], [ %indvars.iv.next66.i.i, %bb.mj ] ; 7 uses
  %i.dvg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv65.i.i
  %i.dvh = load i32, ptr %i.dvg, align 4, !tbaa !43
  %.not55.i694.i = icmp eq i32 %i.dvh, 0
  br i1 %.not55.i694.i, label %bb.mi, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.dvi = getelementptr inbounds nuw [1024 x i8], ptr %i.hl, i64 %indvars.iv65.i.i ; 4 uses
  br label %bb.me

bb.me:                                            ; preds = %bb.me, %bb.md
  %indvars.iv.i695.i = phi i64 [ 0, %bb.md ], [ %indvars.iv.next.i696.i.3, %bb.me ] ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i695.i, 3
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dvi, i64 %.idx.i.i
  %i.dvk = load i32, ptr %i.dvj, align 4, !tbaa !43
  %i.dvl = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.i695.i
  store i32 %i.dvk, ptr %i.dvl, align 4, !tbaa !43
  %indvars.iv.next.i696.i = or disjoint i64 %indvars.iv.i695.i, 1 ; 2 uses
  %.idx.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i696.i, 3
  %i.dvm = getelementptr inbounds nuw i8, ptr %i.dvi, i64 %.idx.i.i.1
  %i.dvn = load i32, ptr %i.dvm, align 4, !tbaa !43
  %i.dvo = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next.i696.i
  store i32 %i.dvn, ptr %i.dvo, align 4, !tbaa !43
  %indvars.iv.next.i696.i.1 = or disjoint i64 %indvars.iv.i695.i, 2 ; 2 uses
  %.idx.i.i.2 = shl nuw nsw i64 %indvars.iv.next.i696.i.1, 3
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvi, i64 %.idx.i.i.2
  %i.dvq = load i32, ptr %i.dvp, align 4, !tbaa !43
  %i.dvr = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next.i696.i.1
  store i32 %i.dvq, ptr %i.dvr, align 4, !tbaa !43
  %indvars.iv.next.i696.i.2 = or disjoint i64 %indvars.iv.i695.i, 3 ; 2 uses
  %.idx.i.i.3 = shl nuw nsw i64 %indvars.iv.next.i696.i.2, 3
  %i.dvs = getelementptr inbounds nuw i8, ptr %i.dvi, i64 %.idx.i.i.3
  %i.dvt = load i32, ptr %i.dvs, align 4, !tbaa !43
  %i.dvu = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next.i696.i.2
  store i32 %i.dvt, ptr %i.dvu, align 4, !tbaa !43
  %indvars.iv.next.i696.i.3 = add nuw nsw i64 %indvars.iv.i695.i, 4 ; 2 uses
  %exitcond.not.i697.i.3 = icmp eq i64 %indvars.iv.next.i696.i.3, 128
  br i1 %exitcond.not.i697.i.3, label %bb.mf, label %bb.me, !llvm.loop !146

bb.mf:                                            ; preds = %bb.me
  %i.dvv = load ptr, ptr %i.hz, align 8, !tbaa !266
  %i.dvw = load ptr, ptr %i.ia, align 8, !tbaa !267
  call void %i.dvv(ptr noundef %i.dvw, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hy, i64 noundef 4) #11, !inline_history !147
  %i.dvx = load ptr, ptr %i.ib, align 8, !tbaa !41
  %i.dvy = load ptr, ptr %i.dvx, align 8, !tbaa !269
  %i.dvz = add nsw i64 %indvars.iv65.i.i, -1      ; 2 uses
  %i.dwa = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.dvz
  %i.dwb = load ptr, ptr %i.dwa, align 8, !tbaa !52
  %gep.i.i = getelementptr [1024 x i8], ptr %invariant.gep.i.i481, i64 %i.dvz ; 2 uses
  call void %i.dvy(ptr noundef %i.dwb, ptr noundef nonnull %gep.i.i, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.ic, i32 noundef 128, i8 noundef zeroext 8) #11, !inline_history !147
  %i.dwc = getelementptr inbounds nuw [1024 x i8], ptr %i.n, i64 %indvars.iv65.i.i ; 4 uses
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mg, %bb.mf
  %indvars.iv61.i.i = phi i64 [ 0, %bb.mf ], [ %indvars.iv.next62.i.i.3, %bb.mg ] ; 6 uses
  %.idx69.i.i = shl nuw nsw i64 %indvars.iv61.i.i, 3
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dwc, i64 %.idx69.i.i
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.dwd, i64 62100
  %i.dwf = load i32, ptr %i.dwe, align 4, !tbaa !43
  %i.dwg = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv61.i.i
  store i32 %i.dwf, ptr %i.dwg, align 4, !tbaa !43
  %indvars.iv.next62.i.i = or disjoint i64 %indvars.iv61.i.i, 1 ; 2 uses
  %.idx69.i.i.1 = shl nuw nsw i64 %indvars.iv.next62.i.i, 3
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dwc, i64 %.idx69.i.i.1
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dwh, i64 62100
  %i.dwj = load i32, ptr %i.dwi, align 4, !tbaa !43
  %i.dwk = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next62.i.i
  store i32 %i.dwj, ptr %i.dwk, align 4, !tbaa !43
  %indvars.iv.next62.i.i.1 = or disjoint i64 %indvars.iv61.i.i, 2 ; 2 uses
  %.idx69.i.i.2 = shl nuw nsw i64 %indvars.iv.next62.i.i.1, 3
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dwc, i64 %.idx69.i.i.2
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dwl, i64 62100
  %i.dwn = load i32, ptr %i.dwm, align 4, !tbaa !43
  %i.dwo = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next62.i.i.1
  store i32 %i.dwn, ptr %i.dwo, align 4, !tbaa !43
  %indvars.iv.next62.i.i.2 = or disjoint i64 %indvars.iv61.i.i, 3 ; 2 uses
  %.idx69.i.i.3 = shl nuw nsw i64 %indvars.iv.next62.i.i.2, 3
  %i.dwp = getelementptr inbounds nuw i8, ptr %i.dwc, i64 %.idx69.i.i.3
  %i.dwq = getelementptr inbounds nuw i8, ptr %i.dwp, i64 62100
  %i.dwr = load i32, ptr %i.dwq, align 4, !tbaa !43
  %i.dws = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next62.i.i.2
  store i32 %i.dwr, ptr %i.dws, align 4, !tbaa !43
  %indvars.iv.next62.i.i.3 = add nuw nsw i64 %indvars.iv61.i.i, 4 ; 2 uses
  %exitcond64.not.i.i.3 = icmp eq i64 %indvars.iv.next62.i.i.3, 128
  br i1 %exitcond64.not.i.i.3, label %bb.mh, label %bb.mg, !llvm.loop !148

bb.mh:                                            ; preds = %bb.mg
  %i.dwt = load ptr, ptr %i.hz, align 8, !tbaa !266
  %i.dwu = load ptr, ptr %i.ia, align 8, !tbaa !267
  call void %i.dwt(ptr noundef %i.dwu, ptr noundef nonnull %gep.i.i, ptr noundef nonnull %i.hy, i64 noundef 4) #11, !inline_history !147
  br label %bb.mj

bb.mi:                                            ; preds = %bb.mc
  %i.dwv = load ptr, ptr %i.id, align 16, !tbaa !270
  %i.dww = load ptr, ptr %i.ie, align 16, !tbaa !271
  %i.dwx = getelementptr inbounds nuw [1024 x i8], ptr %i.hl, i64 %indvars.iv65.i.i
  call void %i.dwv(ptr noundef %i.dww, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.dwx, i64 noundef 4) #11, !inline_history !147
  %i.dwy = load ptr, ptr %i.ib, align 8, !tbaa !41
  %i.dwz = load ptr, ptr %i.dwy, align 8, !tbaa !269
  %i.dxa = add nsw i64 %indvars.iv65.i.i, -1      ; 2 uses
  %i.dxb = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.dxa
  %i.dxc = load ptr, ptr %i.dxb, align 8, !tbaa !52
  %gep71.i.i = getelementptr [1024 x i8], ptr %invariant.gep.i.i481, i64 %i.dxa ; 2 uses
  call void %i.dwz(ptr noundef %i.dxc, ptr noundef nonnull %gep71.i.i, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.ic, i32 noundef 128, i8 noundef zeroext 8) #11, !inline_history !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %gep71.i.i, ptr noundef nonnull align 16 dereferenceable(512) %i.hy, i64 512, i1 false)
end_hunk_1
