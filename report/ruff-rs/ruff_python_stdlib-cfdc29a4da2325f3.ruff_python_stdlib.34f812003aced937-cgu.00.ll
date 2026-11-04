Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_stdlib-cfdc29a4da2325f3.ruff_python_stdlib.34f812003aced937-cgu.00?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtNtCs4xX4QTdRF9r_18ruff_python_stdlib3sys12known_stdlib25is_known_standard_library(i8 noundef %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !guid !3 {
bb.a:
  switch i64 %2, label %bb.jo [
    i64 9, label %bb.b
    i64 10, label %bb.c
    i64 4, label %bb.d
    i64 8, label %bb.f
    i64 7, label %bb.g
    i64 15, label %bb.m
    i64 12, label %bb.q
    i64 16, label %bb.r
    i64 14, label %bb.s
    i64 13, label %bb.y
    i64 17, label %bb.ad
    i64 26, label %bb.ae
    i64 5, label %bb.ag
    i64 6, label %bb.ai
    i64 3, label %bb.ak
    i64 11, label %bb.ap
    i64 19, label %bb.bv
    i64 2, label %bb.eh
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = xor i64 %i.a, 6876834368831643487
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = xor i64 %i.e, 95
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.ln, label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %1, align 1
  %i.l = xor i64 %i.k, 8028911418494443359
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i64
  %i.p = xor i64 %i.o, 24415
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.ln, label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.u = load i32, ptr %1, align 1
  %i.v = icmp ne i32 %i.u, 1667391839
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.ln, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %1, align 1
  %i.z = icmp ne i32 %i.y, 1953718623
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.ln, label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %1, align 1
  %i.ad = icmp ne i64 %i.ac, 8028057136899776863
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.ln, label %bb.ab

bb.g:                                             ; preds = %bb.a
  %i.ag = load i32, ptr %1, align 1
  %i.ah = xor i32 %i.ag, 1936286303
  %i.ai = getelementptr i8, ptr %1, i64 3
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = xor i32 %i.aj, 1952671091
  %i.al = or i32 %i.ah, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.ln, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %1, align 1
  %i.aq = xor i32 %i.ap, 1634493023
  %i.ar = getelementptr i8, ptr %1, i64 3
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = xor i32 %i.as, 845507425
  %i.au = or i32 %i.aq, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.ln, label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %1, align 1
  %i.az = icmp ne i32 %i.ay, 846881375
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ln, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %1, align 1
  %i.bd = xor i32 %i.bc, 1685021535
  %i.be = getelementptr i8, ptr %1, i64 3
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1935893860
  %i.bh = or i32 %i.bd, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.ln, label %bb.v

bb.k:                                             ; preds = %bb.c
  %i.bl = load i64, ptr %1, align 1
  %i.bm = xor i64 %i.bl, 6877950343052747615
  %i.bn = getelementptr i8, ptr %1, i64 8
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i64
  %i.bq = xor i64 %i.bp, 28259
  %i.br = or i64 %i.bm, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ln, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load i64, ptr %1, align 1
  %i.bw = xor i64 %i.bv, 6877950343052747615
  %i.bx = getelementptr i8, ptr %1, i64 8
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = zext i16 %i.by to i64
  %i.ca = xor i64 %i.bz, 27496
  %i.cb = or i64 %i.bw, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ln, label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.cf = load i64, ptr %1, align 1
  %i.cg = xor i64 %i.cf, 6877950343052747615
  %i.ch = getelementptr i8, ptr %1, i64 7
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 %i.ci, 3617006443908262239
  %i.ck = or i64 %i.cg, %i.cj
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ln, label %bb.ar

bb.n:                                             ; preds = %bb.l
  %i.co = load i64, ptr %1, align 1
  %i.cp = xor i64 %i.co, 6877950343052747615
  %i.cq = getelementptr i8, ptr %1, i64 8
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i64
  %i.ct = xor i64 %i.cs, 28778
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ln, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load i64, ptr %1, align 1
  %i.cz = xor i64 %i.cy, 6877950343052747615
  %i.da = getelementptr i8, ptr %1, i64 8
  %i.db = load i16, ptr %i.da, align 1
  %i.dc = zext i16 %i.db to i64
  %i.dd = xor i64 %i.dc, 29291
  %i.de = or i64 %i.cz, %i.dd
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ln, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = load i64, ptr %1, align 1
  %i.dj = xor i64 %i.di, 6877950343052747615
  %i.dk = getelementptr i8, ptr %1, i64 8
  %i.dl = load i16, ptr %i.dk, align 1
  %i.dm = zext i16 %i.dl to i64
  %i.dn = xor i64 %i.dm, 30580
  %i.do = or i64 %i.dj, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ln, label %bb.af

bb.q:                                             ; preds = %bb.a
  %i.ds = load i64, ptr %1, align 1
  %i.dt = xor i64 %i.ds, 8386658447444108127
  %i.du = getelementptr i8, ptr %1, i64 8
  %i.dv = load i32, ptr %i.du, align 1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = xor i64 %i.dw, 1936617321
  %i.dy = or i64 %i.dt, %i.dx
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
end_hunk_0
begin_hunk_1_@_RNvNtNtCs4xX4QTdRF9r_18ruff_python_stdlib3sys12known_stdlib25is_known_standard_library:bb.a
  %i.hgg = icmp ne i64 %i.hgf, 0
  %i.hgh = zext i1 %i.hgg to i32
  %i.hgi = icmp eq i32 %i.hgh, 0
  br i1 %i.hgi, label %bb.ln, label %bb.zh

bb.yw:                                            ; preds = %bb.jx
  %i.hgj = load i128, ptr %1, align 1
  %i.hgk = xor i128 %i.hgj, 140137038154167655306741275254671635551
  %i.hgl = getelementptr i8, ptr %1, i64 3
  %i.hgm = load i128, ptr %i.hgl, align 1
  %i.hgn = xor i128 %i.hgm, 133449582673536007529157274920363979891
  %i.hgo = or i128 %i.hgk, %i.hgn
  %i.hgp = icmp ne i128 %i.hgo, 0
  %i.hgq = zext i1 %i.hgp to i32
  %i.hgr = icmp eq i32 %i.hgq, 0
  br label %bb.ln

bb.yx:                                            ; preds = %bb.yp
  %i.hgs = load i128, ptr %1, align 1
  %i.hgt = xor i128 %i.hgs, 149379204868534337115232318340408374367
  %i.hgu = getelementptr i8, ptr %1, i64 16
  %i.hgv = load i8, ptr %i.hgu, align 1
  %i.hgw = zext i8 %i.hgv to i128
  %i.hgx = xor i128 %i.hgw, 105
  %i.hgy = or i128 %i.hgt, %i.hgx
  %i.hgz = icmp ne i128 %i.hgy, 0
  %i.hha = zext i1 %i.hgz to i32
  %i.hhb = icmp eq i32 %i.hha, 0
  br label %bb.ln

bb.yy:                                            ; preds = %bb.yj
  %i.hhc = load i128, ptr %1, align 1
  %i.hhd = icmp ne i128 %i.hhc, 140152452073962862702715378470102594655
  %i.hhe = zext i1 %i.hhd to i32
  %i.hhf = icmp eq i32 %i.hhe, 0
  br i1 %i.hhf, label %bb.ln, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.hhg = load i128, ptr %1, align 1
  %i.hhh = icmp ne i128 %i.hhg, 134851117381253398567410284696424510559
  %i.hhi = zext i1 %i.hhh to i32
  %i.hhj = icmp eq i32 %i.hhi, 0
  br label %bb.ln

bb.za:                                            ; preds = %bb.yc
  %i.hhk = load i64, ptr %1, align 1
  %i.hhl = xor i64 %i.hhk, 8820702727055045727
  %i.hhm = getelementptr i8, ptr %1, i64 8
  %i.hhn = load i8, ptr %i.hhm, align 1
  %i.hho = zext i8 %i.hhn to i64
  %i.hhp = xor i64 %i.hho, 101
  %i.hhq = or i64 %i.hhl, %i.hhp
  %i.hhr = icmp ne i64 %i.hhq, 0
  %i.hhs = zext i1 %i.hhr to i32
  %i.hht = icmp eq i32 %i.hhs, 0
  br i1 %i.hht, label %bb.ln, label %bb.ze

bb.zb:                                            ; preds = %bb.jx
  %i.hhu = load i32, ptr %1, align 1
  %i.hhv = xor i32 %i.hhu, 1887007839
  %i.hhw = getelementptr i8, ptr %1, i64 4
  %i.hhx = load i16, ptr %i.hhw, align 1
  %i.hhy = zext i16 %i.hhx to i32
  %i.hhz = xor i32 %i.hhy, 29541
  %i.hia = or i32 %i.hhv, %i.hhz
  %i.hib = icmp ne i32 %i.hia, 0
  %i.hic = zext i1 %i.hib to i32
  %i.hid = icmp eq i32 %i.hic, 0
  br label %bb.ln

bb.zc:                                            ; preds = %bb.yo
  %i.hie = load i32, ptr %1, align 1
  %i.hif = xor i32 %i.hie, 1887007839
  %i.hig = getelementptr i8, ptr %1, i64 3
  %i.hih = load i32, ptr %i.hig, align 1
  %i.hii = xor i32 %i.hih, 1735289200
  %i.hij = or i32 %i.hif, %i.hii
  %i.hik = icmp ne i32 %i.hij, 0
  %i.hil = zext i1 %i.hik to i32
  %i.him = icmp eq i32 %i.hil, 0
  br i1 %i.him, label %bb.ln, label %bb.zk

bb.zd:                                            ; preds = %bb.jx
  %i.hin = load i32, ptr %1, align 1
  %i.hio = icmp ne i32 %i.hin, 1768781663
  %i.hip = zext i1 %i.hio to i32
  %i.hiq = icmp eq i32 %i.hip, 0
  br label %bb.ln

bb.ze:                                            ; preds = %bb.za
  %i.hir = load i64, ptr %1, align 1
  %i.his = xor i64 %i.hir, 7380952723672234591
  %i.hit = getelementptr i8, ptr %1, i64 8
  %i.hiu = load i8, ptr %i.hit, align 1
  %i.hiv = zext i8 %i.hiu to i64
  %i.hiw = xor i64 %i.hiv, 111
  %i.hix = or i64 %i.his, %i.hiw
  %i.hiy = icmp ne i64 %i.hix, 0
  %i.hiz = zext i1 %i.hiy to i32
  %i.hja = icmp eq i32 %i.hiz, 0
  br i1 %i.hja, label %bb.ln, label %bb.zj

bb.zf:                                            ; preds = %bb.yq
  %i.hjb = load i32, ptr %1, align 1
  %i.hjc = xor i32 %i.hjb, 1953725023
  %i.hjd = getelementptr i8, ptr %1, i64 4
  %i.hje = load i8, ptr %i.hjd, align 1
  %i.hjf = zext i8 %i.hje to i32
  %i.hjg = xor i32 %i.hjf, 100
  %i.hjh = or i32 %i.hjc, %i.hjg
  %i.hji = icmp ne i32 %i.hjh, 0
  %i.hjj = zext i1 %i.hji to i32
  %i.hjk = icmp eq i32 %i.hjj, 0
  br label %bb.ln

bb.zg:                                            ; preds = %bb.yi
  %i.hjl = load i64, ptr %1, align 1
  %i.hjm = xor i64 %i.hjl, 7598805623994478177
  %i.hjn = getelementptr i8, ptr %1, i64 5
  %i.hjo = load i64, ptr %i.hjn, align 1
  %i.hjp = xor i64 %i.hjo, 7091318309842941025
  %i.hjq = or i64 %i.hjm, %i.hjp
  %i.hjr = icmp ne i64 %i.hjq, 0
  %i.hjs = zext i1 %i.hjr to i32
  %i.hjt = icmp eq i32 %i.hjs, 0
  br label %bb.ln

bb.zh:                                            ; preds = %bb.yv
  %i.hju = load i64, ptr %1, align 1
  %i.hjv = xor i64 %i.hju, 8319104478870335331
  %i.hjw = getelementptr i8, ptr %1, i64 3
  %i.hjx = load i64, ptr %i.hjw, align 1
  %i.hjy = xor i64 %i.hjx, 7957695011165139568
  %i.hjz = or i64 %i.hjv, %i.hjy
  %i.hka = icmp ne i64 %i.hjz, 0
  %i.hkb = zext i1 %i.hka to i32
  %i.hkc = icmp eq i32 %i.hkb, 0
  br label %bb.ln

bb.zi:                                            ; preds = %bb.jx
  %i.hkd = load i64, ptr %1, align 1
  %i.hke = icmp ne i64 %i.hkd, 7091318284089389671
  %i.hkf = zext i1 %i.hke to i32
  %i.hkg = icmp eq i32 %i.hkf, 0
  br i1 %i.hkg, label %bb.ln, label %bb.zm

bb.zj:                                            ; preds = %bb.ze
  %i.hkh = load i64, ptr %1, align 1
  %i.hki = xor i64 %i.hkh, 7956009416672637552
  %i.hkj = getelementptr i8, ptr %1, i64 8
  %i.hkk = load i8, ptr %i.hkj, align 1
  %i.hkl = zext i8 %i.hkk to i64
  %i.hkm = xor i64 %i.hkl, 103
  %i.hkn = or i64 %i.hki, %i.hkm
  %i.hko = icmp ne i64 %i.hkn, 0
  %i.hkp = zext i1 %i.hko to i32
  %i.hkq = icmp eq i32 %i.hkp, 0
  br label %bb.ln

bb.zk:                                            ; preds = %bb.zc
  %i.hkr = load i32, ptr %1, align 1
  %i.hks = xor i32 %i.hkr, 1819111284
  %i.hkt = getelementptr i8, ptr %1, i64 3
  %i.hku = load i32, ptr %i.hkt, align 1
  %i.hkv = xor i32 %i.hku, 1651076204
  %i.hkw = or i32 %i.hks, %i.hkv
  %i.hkx = icmp ne i32 %i.hkw, 0
  %i.hky = zext i1 %i.hkx to i32
  %i.hkz = icmp eq i32 %i.hky, 0
  br label %bb.ln

bb.zl:                                            ; preds = %bb.ys
  %i.hla = load i64, ptr %1, align 1
  %i.hlb = xor i64 %i.hla, 7310584013770225784
  %i.hlc = getelementptr i8, ptr %1, i64 8
  %i.hld = load i32, ptr %i.hlc, align 1
  %i.hle = zext i32 %i.hld to i64
  %i.hlf = xor i64 %i.hle, 892559204
  %i.hlg = or i64 %i.hlb, %i.hlf
  %i.hlh = icmp ne i64 %i.hlg, 0
  %i.hli = zext i1 %i.hlh to i32
  %i.hlj = icmp eq i32 %i.hli, 0
  br label %bb.ln

bb.zm:                                            ; preds = %bb.zi
  %i.hlk = load i64, ptr %1, align 1
  %i.hll = icmp ne i64 %i.hlk, 8027224784786845562
  %i.hlm = zext i1 %i.hll to i32
  %i.hln = icmp eq i32 %i.hlm, 0
  br label %bb.ln
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -2151976010878063260}
end_hunk_1
