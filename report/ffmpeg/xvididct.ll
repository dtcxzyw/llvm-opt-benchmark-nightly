Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xvididct?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TAB04 = internal constant [7 x i32] [i32 22725, i32 21407, i32 19266, i32 16384, i32 12873, i32 8867, i32 4520], align 16
@TAB17 = internal constant [7 x i32] [i32 31521, i32 29692, i32 26722, i32 22725, i32 17855, i32 12299, i32 6270], align 16
@TAB26 = internal constant [7 x i32] [i32 29692, i32 27969, i32 25172, i32 21407, i32 16819, i32 11585, i32 5906], align 16
@TAB35 = internal constant [7 x i32] [i32 26722, i32 25172, i32 22654, i32 19266, i32 15137, i32 10426, i32 5315], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_xvid_idct(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @idct_row(ptr noundef %0, ptr noundef nonnull @TAB04, i32 noundef 65536) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.b, ptr noundef nonnull @TAB17, i32 noundef 3597) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.d, ptr noundef nonnull @TAB26, i32 noundef 2260) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.f, ptr noundef nonnull @TAB35, i32 noundef 1203)
  %.not = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not, i32 7, i32 15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.h, ptr noundef nonnull @TAB04, i32 noundef 0)
  %.not29 = icmp eq i32 %i.i, 0
  %i.j = or disjoint i32 %spec.select, 16
  %.1 = select i1 %.not29, i32 %spec.select, i32 %i.j ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.k, ptr noundef nonnull @TAB35, i32 noundef 120)
  %.not30 = icmp eq i32 %i.l, 0
  %i.m = or disjoint i32 %.1, 32
  %.2 = select i1 %.not30, i32 %.1, i32 %i.m      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.n, ptr noundef nonnull @TAB26, i32 noundef 512)
  %.not31 = icmp eq i32 %i.o, 0
  %i.p = or disjoint i32 %.2, 64
  %.3 = select i1 %.not31, i32 %.2, i32 %i.p      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.q, ptr noundef nonnull @TAB17, i32 noundef 512)
  %.not32 = icmp eq i32 %i.r, 0
  %i.s = or i32 %.3, 128
  %.4 = select i1 %.not32, i32 %.3, i32 %i.s      ; 2 uses
  %1 = and i32 %.4, 240
  %.not33 = icmp eq i32 %1, 0
  br i1 %.not33, label %bb.b, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !10
  %i.u = sext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load57 = load <8 x i16>, ptr %i.v, align 2, !tbaa !10
  %i.w = sext <8 x i16> %wide.load57 to <8 x i32> ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load58 = load <8 x i16>, ptr %i.x, align 2, !tbaa !10
  %i.y = sext <8 x i16> %wide.load58 to <8 x i32> ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load59 = load <8 x i16>, ptr %i.z, align 2, !tbaa !10
  %i.aa = sext <8 x i16> %wide.load59 to <8 x i32> ; 2 uses
  %i.ab = mul nsw <8 x i32> %i.u, splat (i32 13036)
  %i.ac = ashr <8 x i32> %i.ab, splat (i32 16)
  %i.ad = add nsw <8 x i32> %i.ac, %i.aa          ; 2 uses
  %i.ae = mul nsw <8 x i32> %i.aa, splat (i32 13036)
  %i.af = ashr <8 x i32> %i.ae, splat (i32 16)
  %i.ag = sub nsw <8 x i32> %i.af, %i.u           ; 2 uses
  %i.ah = mul nsw <8 x i32> %i.w, splat (i32 43790)
  %i.ai = ashr <8 x i32> %i.ah, splat (i32 16)
  %i.aj = add nsw <8 x i32> %i.ai, %i.y           ; 2 uses
  %i.ak = mul nsw <8 x i32> %i.y, splat (i32 43790)
  %i.al = ashr <8 x i32> %i.ak, splat (i32 16)
  %i.am = sub nsw <8 x i32> %i.al, %i.w           ; 2 uses
  %i.an = add nsw <8 x i32> %i.ad, %i.aj          ; 2 uses
  %i.ao = sub nsw <8 x i32> %i.ag, %i.am          ; 2 uses
  %i.ap = sub nsw <8 x i32> %i.ad, %i.aj          ; 2 uses
  %i.aq = add nsw <8 x i32> %i.ag, %i.am          ; 2 uses
  %i.ar = add nsw <8 x i32> %i.aq, %i.ap
  %i.as = sub nsw <8 x i32> %i.ap, %i.aq
  %i.at = mul <8 x i32> %i.as, splat (i32 23170)
  %i.au = ashr <8 x i32> %i.at, splat (i32 15)
  %i.av = and <8 x i32> %i.au, splat (i32 -2)     ; 2 uses
  %i.aw = mul <8 x i32> %i.ar, splat (i32 23170)
  %i.ax = ashr <8 x i32> %i.aw, splat (i32 15)
  %i.ay = and <8 x i32> %i.ax, splat (i32 -2)     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load60 = load <8 x i16>, ptr %i.az, align 2, !tbaa !10
  %i.ba = sext <8 x i16> %wide.load60 to <8 x i32> ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %wide.load61 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !10
  %i.bc = sext <8 x i16> %wide.load61 to <8 x i32> ; 2 uses
  %i.bd = mul nsw <8 x i32> %i.bc, splat (i32 27146)
  %i.be = ashr <8 x i32> %i.bd, splat (i32 16)
  %i.bf = add nsw <8 x i32> %i.be, %i.ba          ; 2 uses
  %i.bg = mul nsw <8 x i32> %i.ba, splat (i32 27146)
  %i.bh = ashr <8 x i32> %i.bg, splat (i32 16)
  %i.bi = sub nsw <8 x i32> %i.bh, %i.bc          ; 2 uses
  %wide.load62 = load <8 x i16>, ptr %0, align 2, !tbaa !10
  %i.bj = sext <8 x i16> %wide.load62 to <8 x i32> ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %wide.load63 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !10
  %i.bl = sext <8 x i16> %wide.load63 to <8 x i32> ; 2 uses
  %i.bm = add nsw <8 x i32> %i.bl, %i.bj          ; 2 uses
  %i.bn = sub nsw <8 x i32> %i.bj, %i.bl          ; 2 uses
  %i.bo = add nsw <8 x i32> %i.bm, %i.bf          ; 2 uses
  %i.bp = sub nsw <8 x i32> %i.bm, %i.bf          ; 2 uses
  %i.bq = add nsw <8 x i32> %i.bo, %i.an
  %i.br = sub nsw <8 x i32> %i.bo, %i.an
  %i.bs = lshr <8 x i32> %i.bq, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  store <8 x i16> %i.bt, ptr %0, align 2, !tbaa !10
  %i.bu = lshr <8 x i32> %i.br, splat (i32 6)
  %i.bv = trunc <8 x i32> %i.bu to <8 x i16>
  store <8 x i16> %i.bv, ptr %i.t, align 2, !tbaa !10
  %i.bw = add nsw <8 x i32> %i.bp, %i.ao
  %i.bx = sub nsw <8 x i32> %i.bp, %i.ao
  %i.by = lshr <8 x i32> %i.bw, splat (i32 6)
  %i.bz = trunc <8 x i32> %i.by to <8 x i16>
  store <8 x i16> %i.bz, ptr %i.x, align 2, !tbaa !10
  %i.ca = lshr <8 x i32> %i.bx, splat (i32 6)
  %i.cb = trunc <8 x i32> %i.ca to <8 x i16>
  store <8 x i16> %i.cb, ptr %i.bk, align 2, !tbaa !10
  %i.cc = add nsw <8 x i32> %i.bn, %i.bi          ; 2 uses
  %i.cd = sub nsw <8 x i32> %i.bn, %i.bi          ; 2 uses
  %i.ce = add nsw <8 x i32> %i.ay, %i.cc
  %i.cf = sub nsw <8 x i32> %i.cc, %i.ay
  %i.cg = lshr <8 x i32> %i.ce, splat (i32 6)
  %i.ch = trunc <8 x i32> %i.cg to <8 x i16>
  store <8 x i16> %i.ch, ptr %i.z, align 2, !tbaa !10
  %i.ci = lshr <8 x i32> %i.cf, splat (i32 6)
  %i.cj = trunc <8 x i32> %i.ci to <8 x i16>
  store <8 x i16> %i.cj, ptr %i.bb, align 2, !tbaa !10
  %i.ck = add nsw <8 x i32> %i.av, %i.cd
  %i.cl = sub nsw <8 x i32> %i.cd, %i.av
  %i.cm = lshr <8 x i32> %i.ck, splat (i32 6)
  %i.cn = trunc <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %i.cn, ptr %i.az, align 2, !tbaa !10
  %i.co = lshr <8 x i32> %i.cl, splat (i32 6)
  %i.cp = trunc <8 x i32> %i.co to <8 x i16>
  store <8 x i16> %i.cp, ptr %i.v, align 2, !tbaa !10
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %2 = and i32 %.4, 8
  %.not34 = icmp eq i32 %2, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.load73 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !10
  %i.cr = sext <8 x i16> %wide.load73 to <8 x i32> ; 8 uses
  br i1 %.not34, label %vector.body72, label %vector.body65

vector.body65:                                    ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load67 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !10
  %i.ct = sext <8 x i16> %wide.load67 to <8 x i32> ; 3 uses
  %i.cu = mul nsw <8 x i32> %i.cr, splat (i32 13036)
  %i.cv = ashr <8 x i32> %i.cu, splat (i32 16)    ; 2 uses
  %i.cw = mul nsw <8 x i32> %i.ct, splat (i32 43790)
  %i.cx = ashr <8 x i32> %i.cw, splat (i32 16)    ; 2 uses
  %i.cy = add nsw <8 x i32> %i.ct, %i.cr          ; 2 uses
  %i.cz = sub nsw <8 x i32> %i.cv, %i.cx          ; 2 uses
  %i.da = sub nsw <8 x i32> %i.cr, %i.ct          ; 2 uses
  %i.db = add nsw <8 x i32> %i.cx, %i.cv          ; 2 uses
  %i.dc = add nsw <8 x i32> %i.db, %i.da
  %i.dd = sub nsw <8 x i32> %i.da, %i.db
  %i.de = mul <8 x i32> %i.dc, splat (i32 23170)
  %i.df = ashr <8 x i32> %i.de, splat (i32 15)
  %i.dg = and <8 x i32> %i.df, splat (i32 -2)     ; 2 uses
  %i.dh = mul <8 x i32> %i.dd, splat (i32 23170)
  %i.di = ashr <8 x i32> %i.dh, splat (i32 15)
  %i.dj = and <8 x i32> %i.di, splat (i32 -2)     ; 2 uses
  %wide.load68 = load <8 x i16>, ptr %0, align 2, !tbaa !10
  %i.dk = sext <8 x i16> %wide.load68 to <8 x i32> ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load69 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !10
  %i.dm = sext <8 x i16> %wide.load69 to <8 x i32> ; 3 uses
  %i.dn = mul nsw <8 x i32> %i.dm, splat (i32 27146)
  %i.do = ashr <8 x i32> %i.dn, splat (i32 16)    ; 2 uses
  %i.dp = add nsw <8 x i32> %i.dm, %i.dk          ; 2 uses
  %i.dq = sub nsw <8 x i32> %i.dk, %i.dm          ; 2 uses
  %i.dr = add nsw <8 x i32> %i.dp, %i.cy
  %i.ds = sub nsw <8 x i32> %i.dp, %i.cy
  %i.dt = lshr <8 x i32> %i.dr, splat (i32 6)
  %i.du = trunc <8 x i32> %i.dt to <8 x i16>
  store <8 x i16> %i.du, ptr %0, align 2, !tbaa !10
  %i.dv = lshr <8 x i32> %i.ds, splat (i32 6)
  %i.dw = trunc <8 x i32> %i.dv to <8 x i16>
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <8 x i16> %i.dw, ptr %i.dx, align 2, !tbaa !10
  %i.dy = add nsw <8 x i32> %i.dq, %i.cz
  %i.dz = sub nsw <8 x i32> %i.dq, %i.cz
  %i.ea = lshr <8 x i32> %i.dy, splat (i32 6)
  %i.eb = trunc <8 x i32> %i.ea to <8 x i16>
  store <8 x i16> %i.eb, ptr %i.cs, align 2, !tbaa !10
  %i.ec = lshr <8 x i32> %i.dz, splat (i32 6)
  %i.ed = trunc <8 x i32> %i.ec to <8 x i16>
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.ed, ptr %i.ee, align 2, !tbaa !10
  %i.ef = add nsw <8 x i32> %i.do, %i.dk          ; 2 uses
  %i.eg = sub nsw <8 x i32> %i.dk, %i.do          ; 2 uses
  %i.eh = add nsw <8 x i32> %i.dg, %i.ef
  %i.ei = sub nsw <8 x i32> %i.ef, %i.dg
  %i.ej = lshr <8 x i32> %i.eh, splat (i32 6)
  %i.ek = trunc <8 x i32> %i.ej to <8 x i16>
  store <8 x i16> %i.ek, ptr %i.cq, align 2, !tbaa !10
  %i.el = lshr <8 x i32> %i.ei, splat (i32 6)
  %i.em = trunc <8 x i32> %i.el to <8 x i16>
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.em, ptr %i.en, align 2, !tbaa !10
  %i.eo = add nsw <8 x i32> %i.dj, %i.eg
  %i.ep = sub nsw <8 x i32> %i.eg, %i.dj
  %i.eq = lshr <8 x i32> %i.eo, splat (i32 6)
  %i.er = trunc <8 x i32> %i.eq to <8 x i16>
  store <8 x i16> %i.er, ptr %i.dl, align 2, !tbaa !10
  %i.es = lshr <8 x i32> %i.ep, splat (i32 6)
  %i.et = trunc <8 x i32> %i.es to <8 x i16>
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.et, ptr %i.eu, align 2, !tbaa !10
  br label %.loopexit

vector.body72:                                    ; preds = %bb.b
  %i.ev = mul nsw <8 x i32> %i.cr, splat (i32 13036)
  %i.ew = ashr <8 x i32> %i.ev, splat (i32 16)    ; 4 uses
  %i.ex = add nsw <8 x i32> %i.ew, %i.cr
  %i.ey = sub nsw <8 x i32> %i.cr, %i.ew
  %i.ez = mul nsw <8 x i32> %i.ex, splat (i32 23170)
  %i.fa = ashr <8 x i32> %i.ez, splat (i32 15)
  %i.fb = and <8 x i32> %i.fa, splat (i32 -2)     ; 2 uses
  %i.fc = mul nsw <8 x i32> %i.ey, splat (i32 23170)
  %i.fd = ashr <8 x i32> %i.fc, splat (i32 15)
  %i.fe = and <8 x i32> %i.fd, splat (i32 -2)     ; 2 uses
  %wide.load74 = load <8 x i16>, ptr %0, align 2, !tbaa !10
  %i.ff = sext <8 x i16> %wide.load74 to <8 x i32> ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load75 = load <8 x i16>, ptr %i.fg, align 2, !tbaa !10
  %i.fh = sext <8 x i16> %wide.load75 to <8 x i32> ; 3 uses
  %i.fi = mul nsw <8 x i32> %i.fh, splat (i32 27146)
  %i.fj = ashr <8 x i32> %i.fi, splat (i32 16)    ; 2 uses
  %i.fk = add nsw <8 x i32> %i.fh, %i.ff          ; 2 uses
  %i.fl = sub nsw <8 x i32> %i.ff, %i.fh          ; 2 uses
  %i.fm = add nsw <8 x i32> %i.fk, %i.cr
  %i.fn = sub nsw <8 x i32> %i.fk, %i.cr
  %i.fo = lshr <8 x i32> %i.fm, splat (i32 6)
  %i.fp = trunc <8 x i32> %i.fo to <8 x i16>
  store <8 x i16> %i.fp, ptr %0, align 2, !tbaa !10
  %i.fq = lshr <8 x i32> %i.fn, splat (i32 6)
  %i.fr = trunc <8 x i32> %i.fq to <8 x i16>
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <8 x i16> %i.fr, ptr %i.fs, align 2, !tbaa !10
  %i.ft = add nsw <8 x i32> %i.fl, %i.ew
  %i.fu = sub nsw <8 x i32> %i.fl, %i.ew
  %i.fv = lshr <8 x i32> %i.ft, splat (i32 6)
  %i.fw = trunc <8 x i32> %i.fv to <8 x i16>
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.fw, ptr %i.fx, align 2, !tbaa !10
  %i.fy = lshr <8 x i32> %i.fu, splat (i32 6)
  %i.fz = trunc <8 x i32> %i.fy to <8 x i16>
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.fz, ptr %i.ga, align 2, !tbaa !10
  %i.gb = add nsw <8 x i32> %i.fj, %i.ff          ; 2 uses
  %i.gc = sub nsw <8 x i32> %i.ff, %i.fj          ; 2 uses
  %i.gd = add nsw <8 x i32> %i.fb, %i.gb
  %i.ge = sub nsw <8 x i32> %i.gb, %i.fb
  %i.gf = lshr <8 x i32> %i.gd, splat (i32 6)
  %i.gg = trunc <8 x i32> %i.gf to <8 x i16>
  store <8 x i16> %i.gg, ptr %i.cq, align 2, !tbaa !10
  %i.gh = lshr <8 x i32> %i.ge, splat (i32 6)
  %i.gi = trunc <8 x i32> %i.gh to <8 x i16>
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.gi, ptr %i.gj, align 2, !tbaa !10
  %i.gk = add nsw <8 x i32> %i.fe, %i.gc
  %i.gl = sub nsw <8 x i32> %i.gc, %i.fe
  %i.gm = lshr <8 x i32> %i.gk, splat (i32 6)
  %i.gn = trunc <8 x i32> %i.gm to <8 x i16>
  store <8 x i16> %i.gn, ptr %i.fg, align 2, !tbaa !10
  %i.go = lshr <8 x i32> %i.gl, splat (i32 6)
  %i.gp = trunc <8 x i32> %i.go to <8 x i16>
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.gp, ptr %i.gq, align 2, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %vector.body65, %vector.body72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @idct_row(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 65537) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !11     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !10
  %i.p = sext i16 %i.o to i32                     ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = or i32 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 3 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !10
  %i.w = sext i16 %i.v to i32                     ; 5 uses
  %i.x = or i32 %i.t, %i.w                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !10
  %i.aa = sext i16 %i.z to i32                    ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = sext i16 %i.ac to i32                   ; 5 uses
  %i.ae = or i32 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ah = sext i16 %i.ag to i32                   ; 9 uses
  %i.ai = or i32 %i.ae, %i.ah                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !10
  %i.al = sext i16 %i.ak to i32                   ; 4 uses
  %i.am = or i32 %i.x, %i.al
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.an = load i16, ptr %0, align 2, !tbaa !10
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul i32 %i.g, %i.ao
  %i.aq = add i32 %i.ap, %2                       ; 5 uses
  %.not200 = icmp eq i32 %i.ai, 0
  br i1 %.not200, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = mul i32 %i.c, %i.ad                     ; 2 uses
  %i.as = add i32 %i.aq, %i.ar                    ; 2 uses
  %i.at = mul i32 %i.k, %i.ad                     ; 2 uses
  %i.au = add i32 %i.aq, %i.at                    ; 2 uses
  %i.av = sub i32 %i.aq, %i.at                    ; 2 uses
  %i.aw = sub i32 %i.aq, %i.ar                    ; 2 uses
  %i.ax = mul i32 %i.a, %i.aa
end_hunk_0
