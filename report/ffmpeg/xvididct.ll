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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.h, ptr noundef nonnull @TAB04, i32 noundef 0)
  %1 = shl nuw nsw i32 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.j, ptr noundef nonnull @TAB35, i32 noundef 120)
  %2 = shl nuw nsw i32 %i.k, 5
  %i.l = or disjoint i32 %2, %1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.m, ptr noundef nonnull @TAB26, i32 noundef 512)
  %3 = shl nuw nsw i32 %i.n, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = tail call fastcc i32 @idct_row(ptr noundef nonnull %i.o, ptr noundef nonnull @TAB17, i32 noundef 512)
  %4 = shl nuw nsw i32 %i.p, 7
  %i.q = or disjoint i32 %4, %3
  %.4 = or disjoint i32 %i.q, %i.l
  %.not33 = icmp eq i32 %.4, 0
  br i1 %.not33, label %bb.b, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !10
  %i.s = sext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load57 = load <8 x i16>, ptr %i.t, align 2, !tbaa !10
  %i.u = sext <8 x i16> %wide.load57 to <8 x i32> ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load58 = load <8 x i16>, ptr %i.v, align 2, !tbaa !10
  %i.w = sext <8 x i16> %wide.load58 to <8 x i32> ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load59 = load <8 x i16>, ptr %i.x, align 2, !tbaa !10
  %i.y = sext <8 x i16> %wide.load59 to <8 x i32> ; 2 uses
  %i.z = mul nsw <8 x i32> %i.s, splat (i32 13036)
  %i.aa = ashr <8 x i32> %i.z, splat (i32 16)
  %i.ab = add nsw <8 x i32> %i.aa, %i.y           ; 2 uses
  %i.ac = mul nsw <8 x i32> %i.y, splat (i32 13036)
  %i.ad = ashr <8 x i32> %i.ac, splat (i32 16)
  %i.ae = sub nsw <8 x i32> %i.ad, %i.s           ; 2 uses
  %i.af = mul nsw <8 x i32> %i.u, splat (i32 43790)
  %i.ag = ashr <8 x i32> %i.af, splat (i32 16)
  %i.ah = add nsw <8 x i32> %i.ag, %i.w           ; 2 uses
  %i.ai = mul nsw <8 x i32> %i.w, splat (i32 43790)
  %i.aj = ashr <8 x i32> %i.ai, splat (i32 16)
  %i.ak = sub nsw <8 x i32> %i.aj, %i.u           ; 2 uses
  %i.al = add nsw <8 x i32> %i.ab, %i.ah          ; 2 uses
  %i.am = sub nsw <8 x i32> %i.ae, %i.ak          ; 2 uses
  %i.an = sub nsw <8 x i32> %i.ab, %i.ah          ; 2 uses
  %i.ao = add nsw <8 x i32> %i.ae, %i.ak          ; 2 uses
  %i.ap = add nsw <8 x i32> %i.ao, %i.an
  %i.aq = sub nsw <8 x i32> %i.an, %i.ao
  %i.ar = mul <8 x i32> %i.aq, splat (i32 23170)
  %i.as = ashr <8 x i32> %i.ar, splat (i32 15)
  %i.at = and <8 x i32> %i.as, splat (i32 -2)     ; 2 uses
  %i.au = mul <8 x i32> %i.ap, splat (i32 23170)
  %i.av = ashr <8 x i32> %i.au, splat (i32 15)
  %i.aw = and <8 x i32> %i.av, splat (i32 -2)     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load60 = load <8 x i16>, ptr %i.ax, align 2, !tbaa !10
  %i.ay = sext <8 x i16> %wide.load60 to <8 x i32> ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %wide.load61 = load <8 x i16>, ptr %i.az, align 2, !tbaa !10
  %i.ba = sext <8 x i16> %wide.load61 to <8 x i32> ; 2 uses
  %i.bb = mul nsw <8 x i32> %i.ba, splat (i32 27146)
  %i.bc = ashr <8 x i32> %i.bb, splat (i32 16)
  %i.bd = add nsw <8 x i32> %i.bc, %i.ay          ; 2 uses
  %i.be = mul nsw <8 x i32> %i.ay, splat (i32 27146)
  %i.bf = ashr <8 x i32> %i.be, splat (i32 16)
  %i.bg = sub nsw <8 x i32> %i.bf, %i.ba          ; 2 uses
  %wide.load62 = load <8 x i16>, ptr %0, align 2, !tbaa !10
  %i.bh = sext <8 x i16> %wide.load62 to <8 x i32> ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %wide.load63 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !10
  %i.bj = sext <8 x i16> %wide.load63 to <8 x i32> ; 2 uses
  %i.bk = add nsw <8 x i32> %i.bj, %i.bh          ; 2 uses
  %i.bl = sub nsw <8 x i32> %i.bh, %i.bj          ; 2 uses
  %i.bm = add nsw <8 x i32> %i.bk, %i.bd          ; 2 uses
  %i.bn = sub nsw <8 x i32> %i.bk, %i.bd          ; 2 uses
  %i.bo = add nsw <8 x i32> %i.bm, %i.al
  %i.bp = sub nsw <8 x i32> %i.bm, %i.al
  %i.bq = lshr <8 x i32> %i.bo, splat (i32 6)
  %i.br = trunc <8 x i32> %i.bq to <8 x i16>
  store <8 x i16> %i.br, ptr %0, align 2, !tbaa !10
  %i.bs = lshr <8 x i32> %i.bp, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  store <8 x i16> %i.bt, ptr %i.r, align 2, !tbaa !10
  %i.bu = add nsw <8 x i32> %i.bn, %i.am
  %i.bv = sub nsw <8 x i32> %i.bn, %i.am
  %i.bw = lshr <8 x i32> %i.bu, splat (i32 6)
  %i.bx = trunc <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %i.v, align 2, !tbaa !10
  %i.by = lshr <8 x i32> %i.bv, splat (i32 6)
  %i.bz = trunc <8 x i32> %i.by to <8 x i16>
  store <8 x i16> %i.bz, ptr %i.bi, align 2, !tbaa !10
  %i.ca = add nsw <8 x i32> %i.bl, %i.bg          ; 2 uses
  %i.cb = sub nsw <8 x i32> %i.bl, %i.bg          ; 2 uses
  %i.cc = add nsw <8 x i32> %i.aw, %i.ca
  %i.cd = sub nsw <8 x i32> %i.ca, %i.aw
  %i.ce = lshr <8 x i32> %i.cc, splat (i32 6)
  %i.cf = trunc <8 x i32> %i.ce to <8 x i16>
  store <8 x i16> %i.cf, ptr %i.x, align 2, !tbaa !10
  %i.cg = lshr <8 x i32> %i.cd, splat (i32 6)
  %i.ch = trunc <8 x i32> %i.cg to <8 x i16>
  store <8 x i16> %i.ch, ptr %i.az, align 2, !tbaa !10
  %i.ci = add nsw <8 x i32> %i.at, %i.cb
  %i.cj = sub nsw <8 x i32> %i.cb, %i.at
  %i.ck = lshr <8 x i32> %i.ci, splat (i32 6)
  %i.cl = trunc <8 x i32> %i.ck to <8 x i16>
  store <8 x i16> %i.cl, ptr %i.ax, align 2, !tbaa !10
  %i.cm = lshr <8 x i32> %i.cj, splat (i32 6)
  %i.cn = trunc <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %i.cn, ptr %i.t, align 2, !tbaa !10
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq i32 %i.g, 0
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.load73 = load <8 x i16>, ptr %i.co, align 2, !tbaa !10
  %i.cp = sext <8 x i16> %wide.load73 to <8 x i32> ; 8 uses
  br i1 %.not34, label %vector.body72, label %vector.body65

vector.body65:                                    ; preds = %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load67 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !10
  %i.cr = sext <8 x i16> %wide.load67 to <8 x i32> ; 3 uses
  %i.cs = mul nsw <8 x i32> %i.cp, splat (i32 13036)
  %i.ct = ashr <8 x i32> %i.cs, splat (i32 16)    ; 2 uses
  %i.cu = mul nsw <8 x i32> %i.cr, splat (i32 43790)
  %i.cv = ashr <8 x i32> %i.cu, splat (i32 16)    ; 2 uses
  %i.cw = add nsw <8 x i32> %i.cr, %i.cp          ; 2 uses
  %i.cx = sub nsw <8 x i32> %i.ct, %i.cv          ; 2 uses
  %i.cy = sub nsw <8 x i32> %i.cp, %i.cr          ; 2 uses
  %i.cz = add nsw <8 x i32> %i.cv, %i.ct          ; 2 uses
  %i.da = add nsw <8 x i32> %i.cz, %i.cy
  %i.db = sub nsw <8 x i32> %i.cy, %i.cz
  %i.dc = mul <8 x i32> %i.da, splat (i32 23170)
  %i.dd = ashr <8 x i32> %i.dc, splat (i32 15)
  %i.de = and <8 x i32> %i.dd, splat (i32 -2)     ; 2 uses
  %i.df = mul <8 x i32> %i.db, splat (i32 23170)
  %i.dg = ashr <8 x i32> %i.df, splat (i32 15)
  %i.dh = and <8 x i32> %i.dg, splat (i32 -2)     ; 2 uses
  %wide.load68 = load <8 x i16>, ptr %0, align 2, !tbaa !10
  %i.di = sext <8 x i16> %wide.load68 to <8 x i32> ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load69 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !10
  %i.dk = sext <8 x i16> %wide.load69 to <8 x i32> ; 3 uses
  %i.dl = mul nsw <8 x i32> %i.dk, splat (i32 27146)
  %i.dm = ashr <8 x i32> %i.dl, splat (i32 16)    ; 2 uses
  %i.dn = add nsw <8 x i32> %i.dk, %i.di          ; 2 uses
  %i.do = sub nsw <8 x i32> %i.di, %i.dk          ; 2 uses
  %i.dp = add nsw <8 x i32> %i.dn, %i.cw
  %i.dq = sub nsw <8 x i32> %i.dn, %i.cw
  %i.dr = lshr <8 x i32> %i.dp, splat (i32 6)
  %i.ds = trunc <8 x i32> %i.dr to <8 x i16>
  store <8 x i16> %i.ds, ptr %0, align 2, !tbaa !10
  %i.dt = lshr <8 x i32> %i.dq, splat (i32 6)
  %i.du = trunc <8 x i32> %i.dt to <8 x i16>
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <8 x i16> %i.du, ptr %i.dv, align 2, !tbaa !10
  %i.dw = add nsw <8 x i32> %i.do, %i.cx
  %i.dx = sub nsw <8 x i32> %i.do, %i.cx
  %i.dy = lshr <8 x i32> %i.dw, splat (i32 6)
  %i.dz = trunc <8 x i32> %i.dy to <8 x i16>
  store <8 x i16> %i.dz, ptr %i.cq, align 2, !tbaa !10
  %i.ea = lshr <8 x i32> %i.dx, splat (i32 6)
  %i.eb = trunc <8 x i32> %i.ea to <8 x i16>
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.eb, ptr %i.ec, align 2, !tbaa !10
  %i.ed = add nsw <8 x i32> %i.dm, %i.di          ; 2 uses
  %i.ee = sub nsw <8 x i32> %i.di, %i.dm          ; 2 uses
  %i.ef = add nsw <8 x i32> %i.de, %i.ed
  %i.eg = sub nsw <8 x i32> %i.ed, %i.de
  %i.eh = lshr <8 x i32> %i.ef, splat (i32 6)
  %i.ei = trunc <8 x i32> %i.eh to <8 x i16>
  store <8 x i16> %i.ei, ptr %i.co, align 2, !tbaa !10
  %i.ej = lshr <8 x i32> %i.eg, splat (i32 6)
  %i.ek = trunc <8 x i32> %i.ej to <8 x i16>
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.ek, ptr %i.el, align 2, !tbaa !10
  %i.em = add nsw <8 x i32> %i.dh, %i.ee
  %i.en = sub nsw <8 x i32> %i.ee, %i.dh
  %i.eo = lshr <8 x i32> %i.em, splat (i32 6)
  %i.ep = trunc <8 x i32> %i.eo to <8 x i16>
  store <8 x i16> %i.ep, ptr %i.dj, align 2, !tbaa !10
  %i.eq = lshr <8 x i32> %i.en, splat (i32 6)
  %i.er = trunc <8 x i32> %i.eq to <8 x i16>
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.er, ptr %i.es, align 2, !tbaa !10
  br label %.loopexit

vector.body72:                                    ; preds = %bb.b
  %i.et = mul nsw <8 x i32> %i.cp, splat (i32 13036)
  %i.eu = ashr <8 x i32> %i.et, splat (i32 16)    ; 4 uses
  %i.ev = add nsw <8 x i32> %i.eu, %i.cp
  %i.ew = sub nsw <8 x i32> %i.cp, %i.eu
  %i.ex = mul nsw <8 x i32> %i.ev, splat (i32 23170)
  %i.ey = ashr <8 x i32> %i.ex, splat (i32 15)
  %i.ez = and <8 x i32> %i.ey, splat (i32 -2)     ; 2 uses
  %i.fa = mul nsw <8 x i32> %i.ew, splat (i32 23170)
  %i.fb = ashr <8 x i32> %i.fa, splat (i32 15)
  %i.fc = and <8 x i32> %i.fb, splat (i32 -2)     ; 2 uses
  %wide.load74 = load <8 x i16>, ptr %0, align 2, !tbaa !10
  %i.fd = sext <8 x i16> %wide.load74 to <8 x i32> ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load75 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !10
  %i.ff = sext <8 x i16> %wide.load75 to <8 x i32> ; 3 uses
  %i.fg = mul nsw <8 x i32> %i.ff, splat (i32 27146)
  %i.fh = ashr <8 x i32> %i.fg, splat (i32 16)    ; 2 uses
  %i.fi = add nsw <8 x i32> %i.ff, %i.fd          ; 2 uses
  %i.fj = sub nsw <8 x i32> %i.fd, %i.ff          ; 2 uses
  %i.fk = add nsw <8 x i32> %i.fi, %i.cp
  %i.fl = sub nsw <8 x i32> %i.fi, %i.cp
  %i.fm = lshr <8 x i32> %i.fk, splat (i32 6)
  %i.fn = trunc <8 x i32> %i.fm to <8 x i16>
  store <8 x i16> %i.fn, ptr %0, align 2, !tbaa !10
  %i.fo = lshr <8 x i32> %i.fl, splat (i32 6)
  %i.fp = trunc <8 x i32> %i.fo to <8 x i16>
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <8 x i16> %i.fp, ptr %i.fq, align 2, !tbaa !10
  %i.fr = add nsw <8 x i32> %i.fj, %i.eu
  %i.fs = sub nsw <8 x i32> %i.fj, %i.eu
  %i.ft = lshr <8 x i32> %i.fr, splat (i32 6)
  %i.fu = trunc <8 x i32> %i.ft to <8 x i16>
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.fu, ptr %i.fv, align 2, !tbaa !10
  %i.fw = lshr <8 x i32> %i.fs, splat (i32 6)
  %i.fx = trunc <8 x i32> %i.fw to <8 x i16>
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.fx, ptr %i.fy, align 2, !tbaa !10
  %i.fz = add nsw <8 x i32> %i.fh, %i.fd          ; 2 uses
  %i.ga = sub nsw <8 x i32> %i.fd, %i.fh          ; 2 uses
  %i.gb = add nsw <8 x i32> %i.ez, %i.fz
  %i.gc = sub nsw <8 x i32> %i.fz, %i.ez
  %i.gd = lshr <8 x i32> %i.gb, splat (i32 6)
  %i.ge = trunc <8 x i32> %i.gd to <8 x i16>
  store <8 x i16> %i.ge, ptr %i.co, align 2, !tbaa !10
  %i.gf = lshr <8 x i32> %i.gc, splat (i32 6)
  %i.gg = trunc <8 x i32> %i.gf to <8 x i16>
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.gg, ptr %i.gh, align 2, !tbaa !10
  %i.gi = add nsw <8 x i32> %i.fc, %i.ga
  %i.gj = sub nsw <8 x i32> %i.ga, %i.fc
  %i.gk = lshr <8 x i32> %i.gi, splat (i32 6)
  %i.gl = trunc <8 x i32> %i.gk to <8 x i16>
  store <8 x i16> %i.gl, ptr %i.fe, align 2, !tbaa !10
  %i.gm = lshr <8 x i32> %i.gj, splat (i32 6)
  %i.gn = trunc <8 x i32> %i.gm to <8 x i16>
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.gn, ptr %i.go, align 2, !tbaa !10
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
