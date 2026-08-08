inline.NumInlined: 19
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumUnrolled: 63
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@scan8 = internal unnamed_addr constant [51 x i8] c"\0C\0D\14\15\0E\0F\16\17\1C\1D$%\1E\1F&'45<=67>?DELMFGNO\\]de^_fglmtunovw\00(P", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_h264_idct_add_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.p = load <4 x i16>, ptr %1, align 2, !tbaa !9
  %i.q = add <4 x i16> %i.p, <i16 32, i16 0, i16 0, i16 0>
  %i.r = zext <4 x i16> %i.q to <4 x i32>         ; 2 uses
  %i.s = load <4 x i16>, ptr %i.a, align 2, !tbaa !9
  %i.t = zext <4 x i16> %i.s to <4 x i32>         ; 2 uses
  %i.u = add nuw nsw <4 x i32> %i.t, %i.r         ; 2 uses
  %i.v = sub nsw <4 x i32> %i.r, %i.t             ; 2 uses
  %3 = shufflevector <4 x i32> %i.u, <4 x i32> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.w = load <4 x i16>, ptr %i.b, align 2, !tbaa !9
  %i.x = sext <4 x i16> %i.w to <4 x i32>         ; 2 uses
  %i.y = ashr <4 x i32> %i.x, splat (i32 1)
  %i.z = load <4 x i16>, ptr %i.c, align 2, !tbaa !9
  %i.aa = sext <4 x i16> %i.z to <4 x i32>        ; 2 uses
  %i.ab = sub nsw <4 x i32> %i.y, %i.aa           ; 2 uses
  %i.ac = ashr <4 x i32> %i.aa, splat (i32 1)
  %i.ad = add nsw <4 x i32> %i.ac, %i.x           ; 2 uses
  %4 = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ab, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = add nsw <8 x i32> %4, %3                   ; 4 uses
  %i.ae = shufflevector <4 x i32> %i.v, <4 x i32> %i.u, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <4 x i32> %i.ab, <4 x i32> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = sub nsw <8 x i32> %i.ae, %6
  %i.af = shufflevector <8 x i32> %5, <8 x i32> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = trunc <16 x i32> %i.af to <16 x i16>    ; 16 uses
  %i.ah = extractelement <16 x i16> %i.ag, i64 0
  store i16 %i.ah, ptr %1, align 2, !tbaa !9
  %i.ai = extractelement <16 x i16> %i.ag, i64 4
  store i16 %i.ai, ptr %i.b, align 2, !tbaa !9
  %i.aj = extractelement <16 x i16> %i.ag, i64 8
  store i16 %i.aj, ptr %i.a, align 2, !tbaa !9
  %i.ak = extractelement <16 x i16> %i.ag, i64 12
  store i16 %i.ak, ptr %i.c, align 2, !tbaa !9
  %i.al = extractelement <16 x i16> %i.ag, i64 1
  store i16 %i.al, ptr %i.d, align 2, !tbaa !9
  %i.am = extractelement <16 x i16> %i.ag, i64 5
  store i16 %i.am, ptr %i.f, align 2, !tbaa !9
  %i.an = extractelement <16 x i16> %i.ag, i64 9
  store i16 %i.an, ptr %i.e, align 2, !tbaa !9
  %i.ao = extractelement <16 x i16> %i.ag, i64 13
  store i16 %i.ao, ptr %i.g, align 2, !tbaa !9
  %i.ap = extractelement <16 x i16> %i.ag, i64 2
  store i16 %i.ap, ptr %i.h, align 2, !tbaa !9
  %i.aq = extractelement <16 x i16> %i.ag, i64 6
  store i16 %i.aq, ptr %i.j, align 2, !tbaa !9
  %i.ar = extractelement <16 x i16> %i.ag, i64 10
  store i16 %i.ar, ptr %i.i, align 2, !tbaa !9
  %i.as = extractelement <16 x i16> %i.ag, i64 14
  store i16 %i.as, ptr %i.k, align 2, !tbaa !9
  %i.at = extractelement <16 x i16> %i.ag, i64 3
  store i16 %i.at, ptr %i.l, align 2, !tbaa !9
  %i.au = extractelement <16 x i16> %i.ag, i64 7
  store i16 %i.au, ptr %i.n, align 2, !tbaa !9
  %i.av = extractelement <16 x i16> %i.ag, i64 11
  store i16 %i.av, ptr %i.m, align 2, !tbaa !9
  %i.aw = extractelement <16 x i16> %i.ag, i64 15
  store i16 %i.aw, ptr %i.o, align 2, !tbaa !9
  %i.ax = shl nsw i32 %2, 1
  %i.ay = mul nsw i32 %2, 3
  %i.az = sext i32 %2 to i64                      ; 4 uses
  %i.ba = sext i32 %i.ax to i64                   ; 4 uses
  %i.bb = sext i32 %i.ay to i64                   ; 4 uses
  %i.bc = load i16, ptr %1, align 2, !tbaa !9
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = extractelement <8 x i32> %5, i64 2
  %sext = shl i32 %i.be, 16
  %i.bf = ashr exact i32 %sext, 16                ; 2 uses
  %i.bg = add nsw i32 %i.bf, %i.bd                ; 2 uses
  %i.bh = sub nsw i32 %i.bd, %i.bf                ; 2 uses
  %i.bi = extractelement <8 x i32> %5, i64 1
  %sext98 = shl i32 %i.bi, 16                     ; 2 uses
  %i.bj = ashr exact i32 %sext98, 16
  %i.bk = ashr i32 %sext98, 17
  %i.bl = extractelement <8 x i32> %5, i64 3
  %sext99 = shl i32 %i.bl, 16                     ; 2 uses
  %i.bm = ashr exact i32 %sext99, 16
  %i.bn = sub nsw i32 %i.bk, %i.bm                ; 2 uses
  %i.bo = ashr i32 %sext99, 17
  %i.bp = add nsw i32 %i.bo, %i.bj                ; 2 uses
  %i.bq = load i8, ptr %0, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.bp, %i.bg
  %i.bt = ashr i32 %i.bs, 6
  %i.bu = add nsw i32 %i.bt, %i.br                ; 3 uses
  %i.bv = icmp ugt i32 %i.bu, 255
  %isnotneg.i92 = icmp sgt i32 %i.bu, -1
  %i.bw = sext i1 %isnotneg.i92 to i8
  %i.bx = trunc nuw i32 %i.bu to i8
  %.0.i93 = select i1 %i.bv, i8 %i.bw, i8 %i.bx
  store i8 %.0.i93, ptr %0, align 1, !tbaa !11
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.az ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.bn, %i.bh
  %i.cc = ashr i32 %i.cb, 6
  %i.cd = add nsw i32 %i.cc, %i.ca                ; 3 uses
  %i.ce = icmp ugt i32 %i.cd, 255
  %isnotneg.i90 = icmp sgt i32 %i.cd, -1
  %i.cf = sext i1 %isnotneg.i90 to i8
  %i.cg = trunc nuw i32 %i.cd to i8
  %.0.i91 = select i1 %i.ce, i8 %i.cf, i8 %i.cg
  store i8 %.0.i91, ptr %i.by, align 1, !tbaa !11
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %i.ba ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !11
  %i.cj = zext i8 %i.ci to i32
  %i.ck = sub nsw i32 %i.bh, %i.bn
  %i.cl = ashr i32 %i.ck, 6
  %i.cm = add nsw i32 %i.cl, %i.cj                ; 3 uses
  %i.cn = icmp ugt i32 %i.cm, 255
  %isnotneg.i88 = icmp sgt i32 %i.cm, -1
  %i.co = sext i1 %isnotneg.i88 to i8
  %i.cp = trunc nuw i32 %i.cm to i8
  %.0.i89 = select i1 %i.cn, i8 %i.co, i8 %i.cp
  store i8 %.0.i89, ptr %i.ch, align 1, !tbaa !11
  %i.cq = getelementptr inbounds i8, ptr %0, i64 %i.bb ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = zext i8 %i.cr to i32
  %i.ct = sub nsw i32 %i.bg, %i.bp
  %i.cu = ashr i32 %i.ct, 6
  %i.cv = add nsw i32 %i.cu, %i.cs                ; 3 uses
  %i.cw = icmp ugt i32 %i.cv, 255
  %isnotneg.i = icmp sgt i32 %i.cv, -1
  %i.cx = sext i1 %isnotneg.i to i8
  %i.cy = trunc nuw i32 %i.cv to i8
  %.0.i = select i1 %i.cw, i8 %i.cx, i8 %i.cy
  store i8 %.0.i, ptr %i.cq, align 1, !tbaa !11
  %i.cz = load i16, ptr %i.b, align 2, !tbaa !9
  %i.da = sext i16 %i.cz to i32                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !9
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.da                ; 2 uses
  %i.df = sub nsw i32 %i.da, %i.dd                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !9
  %i.di = sext i16 %i.dh to i32                   ; 2 uses
  %i.dj = ashr i32 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !9
  %i.dm = sext i16 %i.dl to i32                   ; 2 uses
  %i.dn = sub nsw i32 %i.dj, %i.dm                ; 2 uses
  %i.do = ashr i32 %i.dm, 1
  %i.dp = add nsw i32 %i.do, %i.di                ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !11
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nsw i32 %i.dp, %i.de
  %i.du = ashr i32 %i.dt, 6
  %i.dv = add nsw i32 %i.du, %i.ds                ; 3 uses
  %i.dw = icmp ugt i32 %i.dv, 255
  %isnotneg.i92.1 = icmp sgt i32 %i.dv, -1
  %i.dx = sext i1 %isnotneg.i92.1 to i8
  %i.dy = trunc nuw i32 %i.dv to i8
  %.0.i93.1 = select i1 %i.dw, i8 %i.dx, i8 %i.dy
  store i8 %.0.i93.1, ptr %i.dq, align 1, !tbaa !11
  %i.dz = getelementptr i8, ptr %0, i64 %i.az
  %i.ea = getelementptr i8, ptr %i.dz, i64 1      ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.dn, %i.df
  %i.ee = ashr i32 %i.ed, 6
  %i.ef = add nsw i32 %i.ee, %i.ec                ; 3 uses
  %i.eg = icmp ugt i32 %i.ef, 255
  %isnotneg.i90.1 = icmp sgt i32 %i.ef, -1
  %i.eh = sext i1 %isnotneg.i90.1 to i8
  %i.ei = trunc nuw i32 %i.ef to i8
  %.0.i91.1 = select i1 %i.eg, i8 %i.eh, i8 %i.ei
  store i8 %.0.i91.1, ptr %i.ea, align 1, !tbaa !11
  %i.ej = getelementptr i8, ptr %0, i64 %i.ba
  %i.ek = getelementptr i8, ptr %i.ej, i64 1      ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !11
  %i.em = zext i8 %i.el to i32
  %i.en = sub nsw i32 %i.df, %i.dn
  %i.eo = ashr i32 %i.en, 6
  %i.ep = add nsw i32 %i.eo, %i.em                ; 3 uses
  %i.eq = icmp ugt i32 %i.ep, 255
  %isnotneg.i88.1 = icmp sgt i32 %i.ep, -1
  %i.er = sext i1 %isnotneg.i88.1 to i8
  %i.es = trunc nuw i32 %i.ep to i8
  %.0.i89.1 = select i1 %i.eq, i8 %i.er, i8 %i.es
  store i8 %.0.i89.1, ptr %i.ek, align 1, !tbaa !11
  %i.et = getelementptr i8, ptr %0, i64 %i.bb
  %i.eu = getelementptr i8, ptr %i.et, i64 1      ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.ew = zext i8 %i.ev to i32
  %i.ex = sub nsw i32 %i.de, %i.dp
  %i.ey = ashr i32 %i.ex, 6
  %i.ez = add nsw i32 %i.ey, %i.ew                ; 3 uses
  %i.fa = icmp ugt i32 %i.ez, 255
  %isnotneg.i.1 = icmp sgt i32 %i.ez, -1
  %i.fb = sext i1 %isnotneg.i.1 to i8
  %i.fc = trunc nuw i32 %i.ez to i8
  %.0.i.1 = select i1 %i.fa, i8 %i.fb, i8 %i.fc
  store i8 %.0.i.1, ptr %i.eu, align 1, !tbaa !11
  %i.fd = load i16, ptr %i.a, align 2, !tbaa !9
  %i.fe = sext i16 %i.fd to i32                   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !9
  %i.fh = sext i16 %i.fg to i32                   ; 2 uses
  %i.fi = add nsw i32 %i.fh, %i.fe                ; 2 uses
  %i.fj = sub nsw i32 %i.fe, %i.fh                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !9
  %i.fm = sext i16 %i.fl to i32                   ; 2 uses
  %i.fn = ashr i32 %i.fm, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !9
  %i.fq = sext i16 %i.fp to i32                   ; 2 uses
  %i.fr = sub nsw i32 %i.fn, %i.fq                ; 2 uses
  %i.fs = ashr i32 %i.fq, 1
  %i.ft = add nsw i32 %i.fs, %i.fm                ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !11
  %i.fw = zext i8 %i.fv to i32
  %i.fx = add nsw i32 %i.ft, %i.fi
  %i.fy = ashr i32 %i.fx, 6
  %i.fz = add nsw i32 %i.fy, %i.fw                ; 3 uses
  %i.ga = icmp ugt i32 %i.fz, 255
  %isnotneg.i92.2 = icmp sgt i32 %i.fz, -1
  %i.gb = sext i1 %isnotneg.i92.2 to i8
  %i.gc = trunc nuw i32 %i.fz to i8
  %.0.i93.2 = select i1 %i.ga, i8 %i.gb, i8 %i.gc
  store i8 %.0.i93.2, ptr %i.fu, align 1, !tbaa !11
  %i.gd = getelementptr i8, ptr %0, i64 %i.az
  %i.ge = getelementptr i8, ptr %i.gd, i64 2      ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gg = zext i8 %i.gf to i32
  %i.gh = add nsw i32 %i.fr, %i.fj
  %i.gi = ashr i32 %i.gh, 6
  %i.gj = add nsw i32 %i.gi, %i.gg                ; 3 uses
  %i.gk = icmp ugt i32 %i.gj, 255
  %isnotneg.i90.2 = icmp sgt i32 %i.gj, -1
  %i.gl = sext i1 %isnotneg.i90.2 to i8
  %i.gm = trunc nuw i32 %i.gj to i8
  %.0.i91.2 = select i1 %i.gk, i8 %i.gl, i8 %i.gm
  store i8 %.0.i91.2, ptr %i.ge, align 1, !tbaa !11
  %i.gn = getelementptr i8, ptr %0, i64 %i.ba
  %i.go = getelementptr i8, ptr %i.gn, i64 2      ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11
  %i.gq = zext i8 %i.gp to i32
  %i.gr = sub nsw i32 %i.fj, %i.fr
  %i.gs = ashr i32 %i.gr, 6
  %i.gt = add nsw i32 %i.gs, %i.gq                ; 3 uses
  %i.gu = icmp ugt i32 %i.gt, 255
  %isnotneg.i88.2 = icmp sgt i32 %i.gt, -1
  %i.gv = sext i1 %isnotneg.i88.2 to i8
  %i.gw = trunc nuw i32 %i.gt to i8
  %.0.i89.2 = select i1 %i.gu, i8 %i.gv, i8 %i.gw
  store i8 %.0.i89.2, ptr %i.go, align 1, !tbaa !11
  %i.gx = getelementptr i8, ptr %0, i64 %i.bb
  %i.gy = getelementptr i8, ptr %i.gx, i64 2      ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !11
  %i.ha = zext i8 %i.gz to i32
  %i.hb = sub nsw i32 %i.fi, %i.ft
  %i.hc = ashr i32 %i.hb, 6
  %i.hd = add nsw i32 %i.hc, %i.ha                ; 3 uses
  %i.he = icmp ugt i32 %i.hd, 255
  %isnotneg.i.2 = icmp sgt i32 %i.hd, -1
  %i.hf = sext i1 %isnotneg.i.2 to i8
  %i.hg = trunc nuw i32 %i.hd to i8
  %.0.i.2 = select i1 %i.he, i8 %i.hf, i8 %i.hg
  store i8 %.0.i.2, ptr %i.gy, align 1, !tbaa !11
  %i.hh = load i16, ptr %i.c, align 2, !tbaa !9
  %i.hi = sext i16 %i.hh to i32                   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !9
  %i.hl = sext i16 %i.hk to i32                   ; 2 uses
  %i.hm = add nsw i32 %i.hl, %i.hi                ; 2 uses
  %i.hn = sub nsw i32 %i.hi, %i.hl                ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !9
  %i.hq = sext i16 %i.hp to i32                   ; 2 uses
  %i.hr = ashr i32 %i.hq, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 30
end_hunk_0
