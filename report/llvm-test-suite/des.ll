Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/des?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@des_main_ks:bb.a
  %i.eb = and i64 %i.ea, 262144
  %i.ec = shl nuw nsw i64 %.1100, 2
  %i.ed = and i64 %i.ec, 131072
  %i.ee = lshr i64 %i.di, 10
  %i.ef = and i64 %i.ee, 65536
  %i.eg = lshr i64 %i.dk, 13
  %i.eh = and i64 %i.eg, 8192
  %i.ei = lshr i64 %i.dk, 4
  %i.ej = and i64 %i.ei, 4096
  %i.ek = shl nuw nsw i64 %.1, 6
  %i.el = and i64 %i.ek, 2048
  %i.em = lshr exact i64 %i.dk, 1
  %i.en = and i64 %i.em, 1024
  %i.eo = lshr i64 %.1, 14                        ; 2 uses
  %i.ep = and i64 %i.eo, 512
  %i.eq = and i64 %i.dk, 256
  %i.er = lshr i64 %i.dk, 5
  %i.es = and i64 %i.er, 32
  %i.et = lshr i64 %i.dk, 10
  %i.eu = and i64 %i.et, 16
  %i.ev = lshr i64 %.1, 3                         ; 2 uses
  %i.ew = and i64 %i.ev, 8
  %i.ex = lshr i64 %i.dk, 18
  %i.ey = and i64 %i.ex, 4
  %i.ez = lshr i64 %i.dk, 26
  %i.fa = and i64 %i.ez, 2
  %i.fb = lshr i64 %i.dk, 24
  %i.fc = and i64 %i.fb, 1
  %i.fd = or disjoint i64 %i.ef, %i.dz
  %i.fe = or disjoint i64 %i.fd, %i.eq
  %i.ff = or disjoint i64 %i.fe, %i.dp
  %i.fg = or disjoint i64 %i.ff, %i.dn
  %i.fh = or disjoint i64 %i.fg, %i.dr
  %i.fi = or i64 %i.fh, %i.dt
  %i.fj = or i64 %i.fi, %i.dv
  %i.fk = or i64 %i.fj, %i.dx
  %i.fl = or i64 %i.fk, %i.eb
  %i.fm = or i64 %i.fl, %i.ed
  %i.fn = or i64 %i.fm, %i.eh
  %i.fo = or i64 %i.fn, %i.ej
  %i.fp = or i64 %i.fo, %i.en
  %i.fq = or i64 %i.fp, %i.es
  %i.fr = or i64 %i.fq, %i.eu
  %i.fs = or i64 %i.fr, %i.ey
  %i.ft = or i64 %i.fs, %i.fa
  %i.fu = or i64 %i.ft, %i.fc
  %i.fv = or i64 %i.fu, %i.el
  %i.fw = or i64 %i.fv, %i.ep
  %i.fx = or i64 %i.fw, %i.ew
  %i.fy = getelementptr inbounds nuw i8, ptr %.0102103, i64 8
  store i64 %i.fx, ptr %.0102103, align 8, !tbaa !11
  %i.fz = shl nuw nsw i64 %.1100, 15              ; 2 uses
  %i.ga = and i64 %i.fz, 536870912
  %i.gb = shl nuw nsw i64 %.1100, 17
  %i.gc = and i64 %i.gb, 268435456
  %i.gd = and i64 %i.ea, 134217728
  %i.ge = shl nuw nsw i64 %.1100, 22
  %i.gf = and i64 %i.ge, 67108864
  %i.gg = lshr i64 %i.di, 2
  %i.gh = and i64 %i.gg, 33554432
  %i.gi = shl nuw nsw i64 %.1100, 1
  %i.gj = and i64 %i.gi, 16777216
  %i.gk = shl nuw nsw i64 %.1100, 16
  %i.gl = and i64 %i.gk, 2097152
  %i.gm = shl nuw nsw i64 %.1100, 11
  %i.gn = and i64 %i.gm, 1048576
  %i.go = shl nuw nsw i64 %.1100, 3
  %i.gp = and i64 %i.go, 524288
  %i.gq = lshr i64 %i.di, 6
  %i.gr = and i64 %i.gq, 262144
  %i.gs = and i64 %i.fz, 131072
  %i.gt = lshr i64 %i.di, 4
  %i.gu = and i64 %i.gt, 65536
  %i.gv = lshr i64 %i.dk, 2
  %i.gw = and i64 %i.gv, 8192
  %i.gx = shl nuw nsw i64 %.1, 8
  %i.gy = and i64 %i.gx, 4096
  %i.gz = and i64 %i.eo, 2056
  %i.ha = lshr i64 %i.dk, 9
  %i.hb = and i64 %i.ha, 1024
  %i.hc = and i64 %i.dk, 512
  %i.hd = shl nuw nsw i64 %.1, 7
  %i.he = and i64 %i.hd, 256
  %i.hf = lshr i64 %i.dk, 7
  %i.hg = and i64 %i.hf, 32
  %i.hh = and i64 %i.ev, 17
  %i.hi = shl nuw nsw i64 %i.dl, 2
  %i.hj = and i64 %i.hi, 4
  %i.hk = lshr i64 %i.dk, 21
  %i.hl = and i64 %i.hk, 2
  %i.hm = or disjoint i64 %i.gr, %i.gh
  %i.hn = or disjoint i64 %i.hm, %i.gu
  %i.ho = or disjoint i64 %i.hn, %i.hc
  %i.hp = or disjoint i64 %i.ho, %i.gc
  %i.hq = or disjoint i64 %i.hp, %i.ga
  %i.hr = or i64 %i.hq, %i.gd
  %i.hs = or i64 %i.hr, %i.gf
  %i.ht = or i64 %i.hs, %i.gj
  %i.hu = or i64 %i.ht, %i.gl
  %i.hv = or i64 %i.hu, %i.gn
  %i.hw = or i64 %i.hv, %i.gp
  %i.hx = or i64 %i.hw, %i.gs
  %i.hy = or i64 %i.hx, %i.gw
  %i.hz = or i64 %i.hy, %i.hb
  %i.ia = or i64 %i.hz, %i.hg
  %i.ib = or i64 %i.ia, %i.hl
  %i.ic = or i64 %i.ib, %i.gy
  %i.id = or i64 %i.ic, %i.gz
  %i.ie = or i64 %i.id, %i.he
  %i.if = or i64 %i.ie, %i.hh
  %i.ig = or i64 %i.if, %i.hj
  %i.ih = getelementptr inbounds nuw i8, ptr %.0102103, i64 16
  store i64 %i.ig, ptr %i.fy, align 8, !tbaa !11
  %i.ii = add nuw nsw i32 %.0101104, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ii, 16
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !13

bb.d:                                             ; preds = %bb.c
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @des_set_key(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @des_main_ks(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !11
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !11
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !11
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !11
  store <2 x i64> %i.m, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load <2 x i64>, ptr %i.n, align 8, !tbaa !11
  store <2 x i64> %i.p, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.s = load <2 x i64>, ptr %i.q, align 8, !tbaa !11
  store <2 x i64> %i.s, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !11
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = load <2 x i64>, ptr %i.w, align 8, !tbaa !11
  store <2 x i64> %i.y, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !11
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !11
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !11
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !11
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !11
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !11
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !11
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.av = load <2 x i64>, ptr %0, align 8, !tbaa !11
  store <2 x i64> %i.av, ptr %i.au, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @des_crypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #2 {
bb.a:
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 16
  %10 = or disjoint i64 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 8
  %15 = or disjoint i64 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %i.a = zext i8 %17 to i64
  %18 = or disjoint i64 %15, %i.a                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %19 = load i8, ptr %i.b, align 1, !tbaa !9
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 16
  %26 = or disjoint i64 %25, %21
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 8
  %31 = or disjoint i64 %26, %30
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %i.c = zext i8 %33 to i64
  %34 = or disjoint i64 %31, %i.c                 ; 2 uses
  %i.d = lshr i64 %18, 4
  %i.e = xor i64 %34, %i.d
  %i.f = and i64 %i.e, 252645135                  ; 2 uses
  %i.g = xor i64 %i.f, %34                        ; 2 uses
  %i.h = shl nuw nsw i64 %i.f, 4
  %i.i = xor i64 %i.h, %18                        ; 2 uses
  %i.j = lshr i64 %i.i, 16
  %35 = xor i64 %i.j, %i.g
  %36 = and i64 %35, 65535                        ; 2 uses
  %i.k = xor i64 %36, %i.g                        ; 2 uses
  %i.l = shl nuw nsw i64 %36, 16
  %i.m = xor i64 %i.l, %i.i                       ; 2 uses
  %i.n = lshr i64 %i.k, 2
  %i.o = xor i64 %i.n, %i.m
  %i.p = and i64 %i.o, 858993459                  ; 2 uses
  %i.q = xor i64 %i.p, %i.m                       ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = xor i64 %i.r, %i.k                       ; 2 uses
  %i.t = lshr i64 %i.s, 8
  %i.u = xor i64 %i.t, %i.q
  %i.v = and i64 %i.u, 16711935                   ; 2 uses
  %i.w = xor i64 %i.v, %i.q                       ; 2 uses
  %i.x = shl nuw nsw i64 %i.v, 8
  %i.y = xor i64 %i.x, %i.s                       ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = lshr i64 %i.y, 31
  %37 = or i64 %i.z, %i.aa                        ; 2 uses
  %i.ab = and i64 %37, 4294967295
  %i.ac = xor i64 %37, %i.w
  %i.ad = and i64 %i.ac, 2863311530               ; 2 uses
  %i.ae = xor i64 %i.ad, %i.ab                    ; 4 uses
  %i.af = xor i64 %i.ad, %i.w                     ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = lshr i64 %i.af, 31
  %i.ai = or i64 %i.ag, %i.ah
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %0, align 8, !tbaa !11
  %i.am = xor i64 %i.ae, %i.al                    ; 4 uses
  %i.an = and i64 %i.am, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.aq = lshr i64 %i.am, 8
  %i.ar = and i64 %i.aq, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = xor i64 %i.at, %i.ap
  %i.av = lshr i64 %i.am, 16
  %i.aw = and i64 %i.av, 63
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = lshr i64 %i.am, 24
  %i.bb = and i64 %i.ba, 63
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = xor i64 %i.az, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.bh = shl nuw nsw i64 %i.ae, 28
  %i.bi = lshr i64 %i.ae, 4
  %i.bj = or disjoint i64 %i.bh, %i.bi
  %i.bk = xor i64 %i.bj, %i.bg                    ; 4 uses
  %i.bl = and i64 %i.bk, 63
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = lshr i64 %i.bk, 8
  %i.bp = and i64 %i.bo, 63
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = lshr i64 %i.bk, 16
  %i.bt = and i64 %i.bs, 63
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = lshr i64 %i.bk, 24
  %i.bx = and i64 %i.bw, 63
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = xor i64 %i.be, %i.bn
  %i.cb = xor i64 %i.ca, %i.br
  %i.cc = xor i64 %i.cb, %i.bv
  %i.cd = xor i64 %i.cc, %i.bz
  %i.ce = xor i64 %i.cd, %i.aj                    ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.ch = xor i64 %i.ce, %i.cg                    ; 4 uses
  %i.ci = and i64 %i.ch, 63
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11
  %i.cl = lshr i64 %i.ch, 8
  %i.cm = and i64 %i.cl, 63
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !11
  %i.cp = lshr i64 %i.ch, 16
  %i.cq = and i64 %i.cp, 63
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = lshr i64 %i.ch, 24
  %i.cu = and i64 %i.ct, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load i64, ptr %i.cf, align 8, !tbaa !11
  %i.cz = shl i64 %i.ce, 28
  %i.da = lshr i64 %i.ce, 4
  %i.db = or i64 %i.cz, %i.da
  %i.dc = xor i64 %i.db, %i.cy                    ; 4 uses
  %i.dd = and i64 %i.dc, 63
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11
  %i.dg = lshr i64 %i.dc, 8
  %i.dh = and i64 %i.dg, 63
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dk = lshr i64 %i.dc, 16
  %i.dl = and i64 %i.dk, 63
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = lshr i64 %i.dc, 24
  %i.dp = and i64 %i.do, 63
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.ds = xor i64 %i.co, %i.ck
  %i.dt = xor i64 %i.ds, %i.cs
  %i.du = xor i64 %i.dt, %i.cw
  %i.dv = xor i64 %i.du, %i.df
  %i.dw = xor i64 %i.dv, %i.dj
  %i.dx = xor i64 %i.dw, %i.dn
  %i.dy = xor i64 %i.dx, %i.dr
  %i.dz = xor i64 %i.dy, %i.ae                    ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = load i64, ptr %i.cx, align 8, !tbaa !11
  %i.ec = xor i64 %i.dz, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 63
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !11
  %i.eg = lshr i64 %i.ec, 8
  %i.eh = and i64 %i.eg, 63
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !11
  %i.ek = lshr i64 %i.ec, 16
  %i.el = and i64 %i.ek, 63
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11
  %i.eo = lshr i64 %i.ec, 24
  %i.ep = and i64 %i.eo, 63
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !11
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.et = load i64, ptr %i.ea, align 8, !tbaa !11
  %i.eu = shl i64 %i.dz, 28
  %i.ev = lshr i64 %i.dz, 4
  %i.ew = or i64 %i.eu, %i.ev
  %i.ex = xor i64 %i.ew, %i.et                    ; 4 uses
  %i.ey = and i64 %i.ex, 63
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !11
  %i.fb = lshr i64 %i.ex, 8
  %i.fc = and i64 %i.fb, 63
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !11
  %i.ff = lshr i64 %i.ex, 16
  %i.fg = and i64 %i.ff, 63
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !11
  %i.fj = lshr i64 %i.ex, 24
  %i.fk = and i64 %i.fj, 63
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !11
  %i.fn = xor i64 %i.ej, %i.ef
  %i.fo = xor i64 %i.fn, %i.en
  %i.fp = xor i64 %i.fo, %i.er
  %i.fq = xor i64 %i.fp, %i.fa
  %i.fr = xor i64 %i.fq, %i.fe
  %i.fs = xor i64 %i.fr, %i.fi
  %i.ft = xor i64 %i.fs, %i.fm
  %i.fu = xor i64 %i.ft, %i.ce                    ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fw = load i64, ptr %i.es, align 8, !tbaa !11
  %i.fx = xor i64 %i.fu, %i.fw                    ; 4 uses
  %i.fy = and i64 %i.fx, 63
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !11
  %i.gb = lshr i64 %i.fx, 8
  %i.gc = and i64 %i.gb, 63
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !11
  %i.gf = lshr i64 %i.fx, 16
  %i.gg = and i64 %i.gf, 63
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !11
  %i.gj = lshr i64 %i.fx, 24
  %i.gk = and i64 %i.gj, 63
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.go = load i64, ptr %i.fv, align 8, !tbaa !11
  %i.gp = shl i64 %i.fu, 28
  %i.gq = lshr i64 %i.fu, 4
  %i.gr = or i64 %i.gp, %i.gq
  %i.gs = xor i64 %i.go, %i.gr                    ; 4 uses
  %i.gt = and i64 %i.gs, 63
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !11
  %i.gw = lshr i64 %i.gs, 8
  %i.gx = and i64 %i.gw, 63
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !11
  %i.ha = lshr i64 %i.gs, 16
  %i.hb = and i64 %i.ha, 63
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.hb
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !11
  %i.he = lshr i64 %i.gs, 24
  %i.hf = and i64 %i.he, 63
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !11
  %i.hi = xor i64 %i.ga, %i.ge
  %i.hj = xor i64 %i.hi, %i.gi
  %i.hk = xor i64 %i.hj, %i.gm
  %i.hl = xor i64 %i.hk, %i.gv
  %i.hm = xor i64 %i.hl, %i.gz
  %i.hn = xor i64 %i.hm, %i.hd
  %i.ho = xor i64 %i.hn, %i.hh
  %i.hp = xor i64 %i.ho, %i.dz                    ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load i64, ptr %i.gn, align 8, !tbaa !11
  %i.hs = xor i64 %i.hp, %i.hr                    ; 4 uses
  %i.ht = and i64 %i.hs, 63
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.ht
end_hunk_0
begin_hunk_1_@des3_set_3keys:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !tbaa !11
  store <2 x i64> %i.ba, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !11
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !tbaa !11
  store <2 x i64> %i.bm, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !tbaa !11
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !tbaa !11
  store <2 x i64> %i.by, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !tbaa !11
  store <2 x i64> %i.cb, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !tbaa !11
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !tbaa !11
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.cw = load <2 x i64>, ptr %i.cu, align 8, !tbaa !11
  store <2 x i64> %i.cw, ptr %i.cv, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.cz = load <2 x i64>, ptr %i.cx, align 8, !tbaa !11
  store <2 x i64> %i.cz, ptr %i.cy, align 8, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.db = load i64, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.de, ptr %i.df, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.di = load <2 x i64>, ptr %i.dg, align 8, !tbaa !11
  store <2 x i64> %i.di, ptr %i.dh, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dl = load <2 x i64>, ptr %i.dj, align 8, !tbaa !11
  store <2 x i64> %i.dl, ptr %i.dk, align 8, !tbaa !11
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.du = load <2 x i64>, ptr %i.ds, align 8, !tbaa !11
  store <2 x i64> %i.du, ptr %i.dt, align 8, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.dx = load <2 x i64>, ptr %i.dv, align 8, !tbaa !11
  store <2 x i64> %i.dx, ptr %i.dw, align 8, !tbaa !11
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.eg = load <2 x i64>, ptr %i.ee, align 8, !tbaa !11
  store <2 x i64> %i.eg, ptr %i.ef, align 8, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ej = load <2 x i64>, ptr %i.eh, align 8, !tbaa !11
  store <2 x i64> %i.ej, ptr %i.ei, align 8, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %i.el, ptr %i.em, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.es = load <2 x i64>, ptr %i.eq, align 8, !tbaa !11
  store <2 x i64> %i.es, ptr %i.er, align 8, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ev = load <2 x i64>, ptr %i.et, align 8, !tbaa !11
  store <2 x i64> %i.ev, ptr %i.eu, align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !11
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !11
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.fe = load <2 x i64>, ptr %i.fc, align 8, !tbaa !11
  store <2 x i64> %i.fe, ptr %i.fd, align 8, !tbaa !11
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.fh = load <2 x i64>, ptr %i.ff, align 8, !tbaa !11
  store <2 x i64> %i.fh, ptr %i.fg, align 8, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !11
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.fq = load <2 x i64>, ptr %i.fo, align 8, !tbaa !11
  store <2 x i64> %i.fq, ptr %i.fp, align 8, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ft = load <2 x i64>, ptr %i.fr, align 8, !tbaa !11
  store <2 x i64> %i.ft, ptr %i.fs, align 8, !tbaa !11
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !11
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !11
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.gc = load <2 x i64>, ptr %i.ga, align 8, !tbaa !11
  store <2 x i64> %i.gc, ptr %i.gb, align 8, !tbaa !11
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.gf = load <2 x i64>, ptr %i.gd, align 8, !tbaa !11
  store <2 x i64> %i.gf, ptr %i.ge, align 8, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !11
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.gn = load <2 x i64>, ptr %0, align 8, !tbaa !11
  store <2 x i64> %i.gn, ptr %i.gm, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @des3_crypt(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #2 {
bb.a:
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 16
  %10 = or disjoint i64 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 8
  %15 = or disjoint i64 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %i.a = zext i8 %17 to i64
  %18 = or disjoint i64 %15, %i.a                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %19 = load i8, ptr %i.b, align 1, !tbaa !9
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 16
  %26 = or disjoint i64 %25, %21
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 8
  %31 = or disjoint i64 %26, %30
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %i.c = zext i8 %33 to i64
  %34 = or disjoint i64 %31, %i.c                 ; 2 uses
  %i.d = lshr i64 %18, 4
  %i.e = xor i64 %34, %i.d
  %i.f = and i64 %i.e, 252645135                  ; 2 uses
  %i.g = xor i64 %i.f, %34                        ; 2 uses
  %i.h = shl nuw nsw i64 %i.f, 4
  %i.i = xor i64 %i.h, %18                        ; 2 uses
  %i.j = lshr i64 %i.i, 16
  %35 = xor i64 %i.j, %i.g
  %36 = and i64 %35, 65535                        ; 2 uses
  %i.k = xor i64 %36, %i.g                        ; 2 uses
  %i.l = shl nuw nsw i64 %36, 16
  %i.m = xor i64 %i.l, %i.i                       ; 2 uses
  %i.n = lshr i64 %i.k, 2
  %i.o = xor i64 %i.n, %i.m
  %i.p = and i64 %i.o, 858993459                  ; 2 uses
  %i.q = xor i64 %i.p, %i.m                       ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = xor i64 %i.r, %i.k                       ; 2 uses
  %i.t = lshr i64 %i.s, 8
  %i.u = xor i64 %i.t, %i.q
  %i.v = and i64 %i.u, 16711935                   ; 2 uses
  %i.w = xor i64 %i.v, %i.q                       ; 2 uses
  %i.x = shl nuw nsw i64 %i.v, 8
  %i.y = xor i64 %i.x, %i.s                       ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = lshr i64 %i.y, 31
  %37 = or i64 %i.z, %i.aa                        ; 2 uses
  %i.ab = and i64 %37, 4294967295
  %i.ac = xor i64 %37, %i.w
  %i.ad = and i64 %i.ac, 2863311530               ; 2 uses
  %i.ae = xor i64 %i.ad, %i.ab                    ; 4 uses
  %i.af = xor i64 %i.ad, %i.w                     ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = lshr i64 %i.af, 31
  %i.ai = or i64 %i.ag, %i.ah
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %0, align 8, !tbaa !11
  %i.am = xor i64 %i.ae, %i.al                    ; 4 uses
  %i.an = and i64 %i.am, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.aq = lshr i64 %i.am, 8
  %i.ar = and i64 %i.aq, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = xor i64 %i.at, %i.ap
  %i.av = lshr i64 %i.am, 16
  %i.aw = and i64 %i.av, 63
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = lshr i64 %i.am, 24
  %i.bb = and i64 %i.ba, 63
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = xor i64 %i.az, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.bh = shl nuw nsw i64 %i.ae, 28
  %i.bi = lshr i64 %i.ae, 4
  %i.bj = or disjoint i64 %i.bh, %i.bi
  %i.bk = xor i64 %i.bj, %i.bg                    ; 4 uses
  %i.bl = and i64 %i.bk, 63
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = lshr i64 %i.bk, 8
  %i.bp = and i64 %i.bo, 63
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = lshr i64 %i.bk, 16
  %i.bt = and i64 %i.bs, 63
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = lshr i64 %i.bk, 24
  %i.bx = and i64 %i.bw, 63
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = xor i64 %i.be, %i.bn
  %i.cb = xor i64 %i.ca, %i.br
  %i.cc = xor i64 %i.cb, %i.bv
  %i.cd = xor i64 %i.cc, %i.bz
  %i.ce = xor i64 %i.cd, %i.aj                    ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.ch = xor i64 %i.ce, %i.cg                    ; 4 uses
  %i.ci = and i64 %i.ch, 63
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11
  %i.cl = lshr i64 %i.ch, 8
  %i.cm = and i64 %i.cl, 63
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !11
  %i.cp = lshr i64 %i.ch, 16
  %i.cq = and i64 %i.cp, 63
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = lshr i64 %i.ch, 24
  %i.cu = and i64 %i.ct, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load i64, ptr %i.cf, align 8, !tbaa !11
  %i.cz = shl i64 %i.ce, 28
  %i.da = lshr i64 %i.ce, 4
  %i.db = or i64 %i.cz, %i.da
  %i.dc = xor i64 %i.db, %i.cy                    ; 4 uses
  %i.dd = and i64 %i.dc, 63
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11
  %i.dg = lshr i64 %i.dc, 8
  %i.dh = and i64 %i.dg, 63
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dk = lshr i64 %i.dc, 16
  %i.dl = and i64 %i.dk, 63
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = lshr i64 %i.dc, 24
  %i.dp = and i64 %i.do, 63
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.ds = xor i64 %i.co, %i.ck
  %i.dt = xor i64 %i.ds, %i.cs
  %i.du = xor i64 %i.dt, %i.cw
  %i.dv = xor i64 %i.du, %i.df
  %i.dw = xor i64 %i.dv, %i.dj
  %i.dx = xor i64 %i.dw, %i.dn
  %i.dy = xor i64 %i.dx, %i.dr
  %i.dz = xor i64 %i.dy, %i.ae                    ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = load i64, ptr %i.cx, align 8, !tbaa !11
  %i.ec = xor i64 %i.dz, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 63
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !11
  %i.eg = lshr i64 %i.ec, 8
  %i.eh = and i64 %i.eg, 63
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !11
  %i.ek = lshr i64 %i.ec, 16
  %i.el = and i64 %i.ek, 63
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11
  %i.eo = lshr i64 %i.ec, 24
  %i.ep = and i64 %i.eo, 63
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !11
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.et = load i64, ptr %i.ea, align 8, !tbaa !11
  %i.eu = shl i64 %i.dz, 28
  %i.ev = lshr i64 %i.dz, 4
  %i.ew = or i64 %i.eu, %i.ev
  %i.ex = xor i64 %i.ew, %i.et                    ; 4 uses
  %i.ey = and i64 %i.ex, 63
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !11
  %i.fb = lshr i64 %i.ex, 8
  %i.fc = and i64 %i.fb, 63
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !11
  %i.ff = lshr i64 %i.ex, 16
  %i.fg = and i64 %i.ff, 63
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !11
  %i.fj = lshr i64 %i.ex, 24
  %i.fk = and i64 %i.fj, 63
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !11
  %i.fn = xor i64 %i.ej, %i.ef
  %i.fo = xor i64 %i.fn, %i.en
  %i.fp = xor i64 %i.fo, %i.er
  %i.fq = xor i64 %i.fp, %i.fa
  %i.fr = xor i64 %i.fq, %i.fe
  %i.fs = xor i64 %i.fr, %i.fi
  %i.ft = xor i64 %i.fs, %i.fm
  %i.fu = xor i64 %i.ft, %i.ce                    ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fw = load i64, ptr %i.es, align 8, !tbaa !11
  %i.fx = xor i64 %i.fu, %i.fw                    ; 4 uses
  %i.fy = and i64 %i.fx, 63
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !11
  %i.gb = lshr i64 %i.fx, 8
  %i.gc = and i64 %i.gb, 63
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr @SB6, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !11
  %i.gf = lshr i64 %i.fx, 16
  %i.gg = and i64 %i.gf, 63
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @SB4, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !11
  %i.gj = lshr i64 %i.fx, 24
  %i.gk = and i64 %i.gj, 63
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr @SB2, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.go = load i64, ptr %i.fv, align 8, !tbaa !11
  %i.gp = shl i64 %i.fu, 28
  %i.gq = lshr i64 %i.fu, 4
  %i.gr = or i64 %i.gp, %i.gq
  %i.gs = xor i64 %i.go, %i.gr                    ; 4 uses
  %i.gt = and i64 %i.gs, 63
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr @SB7, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !11
  %i.gw = lshr i64 %i.gs, 8
  %i.gx = and i64 %i.gw, 63
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @SB5, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !11
  %i.ha = lshr i64 %i.gs, 16
  %i.hb = and i64 %i.ha, 63
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr @SB3, i64 %i.hb
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !11
  %i.he = lshr i64 %i.gs, 24
  %i.hf = and i64 %i.he, 63
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @SB1, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !11
  %i.hi = xor i64 %i.ga, %i.ge
  %i.hj = xor i64 %i.hi, %i.gi
  %i.hk = xor i64 %i.hj, %i.gm
  %i.hl = xor i64 %i.hk, %i.gv
  %i.hm = xor i64 %i.hl, %i.gz
  %i.hn = xor i64 %i.hm, %i.hd
  %i.ho = xor i64 %i.hn, %i.hh
  %i.hp = xor i64 %i.ho, %i.dz                    ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load i64, ptr %i.gn, align 8, !tbaa !11
  %i.hs = xor i64 %i.hp, %i.hr                    ; 4 uses
  %i.ht = and i64 %i.hs, 63
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr @SB8, i64 %i.ht
end_hunk_1
