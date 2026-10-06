Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/sha256?download=true
inline.NumInlined: 275
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_sha256_init.s = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@SHA256_K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_init(ptr nofree noundef writeonly captures(none) initializes((64, 104)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @lzma_sha256_init.s, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.b, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_update(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %.not20 = icmp eq i64 %1, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %.pre23 = load i64, ptr %i.a, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %3 = phi i64 [ %.pre23, %.lr.ph ], [ %4, %bb.d ]
  %.01722 = phi ptr [ %0, %.lr.ph ], [ %i.e, %bb.d ] ; 2 uses
  %.01821 = phi i64 [ %1, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = and i64 %3, 63                           ; 2 uses
  %i.c = sub nuw nsw i64 64, %i.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %.01821) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %.01722, i64 %spec.select, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %.01722, i64 %spec.select
  %i.f = sub nuw i64 %.01821, %spec.select        ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !9
  %i.h = add i64 %spec.select, %i.g               ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !9
  %i.i = and i64 %i.h, 63
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @process(ptr noundef nonnull %2)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %4 = phi i64 [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4 ; 11 uses
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.sroa.92.0.copyload.i = load i32, ptr %.sroa.92.0..sroa_idx.i, align 4 ; 6 uses
  %.sroa.181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.181.0.copyload.i = load i32, ptr %.sroa.181.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %.sroa.270.0.copyload.i = load i32, ptr %.sroa.270.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.359.0.copyload.i = load i32, ptr %.sroa.359.0..sroa_idx.i, align 4 ; 10 uses
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.sroa.448.0.copyload.i = load i32, ptr %.sroa.448.0..sroa_idx.i, align 4 ; 5 uses
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.537.0.copyload.i = load i32, ptr %.sroa.537.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %.sroa.626.0.copyload.i = load i32, ptr %.sroa.626.0..sroa_idx.i, align 4 ; 2 uses
  %i.b = tail call i32 @llvm.fshl.i32(i32 %.sroa.359.0.copyload.i, i32 %.sroa.359.0.copyload.i, i32 18)
  %i.c = xor i32 %i.b, %.sroa.359.0.copyload.i    ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 27)
  %i.e = xor i32 %i.d, %.sroa.359.0.copyload.i    ; 2 uses
  %i.f = tail call i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 26)
  %i.g = xor i32 %.sroa.537.0.copyload.i, %.sroa.448.0.copyload.i
  %i.h = and i32 %i.g, %.sroa.359.0.copyload.i
  %i.i = xor i32 %i.h, %.sroa.537.0.copyload.i
  %i.j = load i32, ptr %0, align 4, !tbaa !13
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %i.j) ; 2 uses
  %i.l = add i32 %.sroa.626.0.copyload.i, 1116352408
  %i.m = add i32 %i.l, %i.i
  %i.n = add i32 %i.m, %i.f
  %i.o = add i32 %i.n, %i.k                       ; 2 uses
  %i.p = add i32 %i.o, %.sroa.270.0.copyload.i    ; 9 uses
  %i.q = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i, i32 23)
  %i.r = xor i32 %i.q, %.sroa.0.0.copyload.i      ; 2 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 21)
  %i.t = xor i32 %i.s, %.sroa.0.0.copyload.i      ; 2 uses
  %i.u = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 30)
  %i.v = xor i32 %.sroa.181.0.copyload.i, %.sroa.92.0.copyload.i
  %i.w = and i32 %i.v, %.sroa.0.0.copyload.i
  %i.x = and i32 %.sroa.181.0.copyload.i, %.sroa.92.0.copyload.i
  %i.y = add i32 %i.w, %i.x
  %i.z = add i32 %i.y, %i.u
  %i.aa = add i32 %i.z, %i.o                      ; 10 uses
  %i.ab = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 18)
  %i.ac = xor i32 %i.ab, %i.p                     ; 2 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 27)
  %i.ae = xor i32 %i.ad, %i.p                     ; 2 uses
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 26)
  %i.ag = xor i32 %.sroa.448.0.copyload.i, %.sroa.359.0.copyload.i
  %i.ah = and i32 %i.p, %i.ag
  %i.ai = xor i32 %i.ah, %.sroa.448.0.copyload.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak) ; 2 uses
  %i.am = add i32 %.sroa.537.0.copyload.i, 1899447441
  %i.an = add i32 %i.am, %i.al
  %i.ao = add i32 %i.an, %i.ai
  %i.ap = add i32 %i.ao, %i.af                    ; 2 uses
  %i.aq = add i32 %i.ap, %.sroa.181.0.copyload.i  ; 9 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.aa, i32 23)
  %i.as = xor i32 %i.ar, %i.aa                    ; 2 uses
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 21)
  %i.au = xor i32 %i.at, %i.aa                    ; 2 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 30)
  %i.aw = xor i32 %.sroa.92.0.copyload.i, %.sroa.0.0.copyload.i
  %i.ax = and i32 %i.aa, %i.aw
  %i.ay = and i32 %.sroa.92.0.copyload.i, %.sroa.0.0.copyload.i
  %i.az = add i32 %i.ax, %i.ay
  %i.ba = add i32 %i.az, %i.av
  %i.bb = add i32 %i.ba, %i.ap                    ; 10 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 18)
  %i.bd = xor i32 %i.bc, %i.aq                    ; 2 uses
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 27)
  %i.bf = xor i32 %i.be, %i.aq                    ; 2 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 26)
  %i.bh = xor i32 %i.p, %.sroa.359.0.copyload.i
  %i.bi = and i32 %i.aq, %i.bh
  %i.bj = xor i32 %i.bi, %.sroa.359.0.copyload.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !13
  %i.bm = tail call noundef i32 @llvm.bswap.i32(i32 %i.bl) ; 2 uses
  %i.bn = add i32 %.sroa.448.0.copyload.i, -1245643825
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = add i32 %i.bo, %i.bj
  %i.bq = add i32 %i.bp, %i.bg                    ; 2 uses
  %i.br = add i32 %i.bq, %.sroa.92.0.copyload.i   ; 9 uses
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 23)
  %i.bt = xor i32 %i.bs, %i.bb                    ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 21)
  %i.bv = xor i32 %i.bu, %i.bb                    ; 2 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 30)
  %i.bx = xor i32 %i.aa, %.sroa.0.0.copyload.i
  %i.by = and i32 %i.bb, %i.bx
  %i.bz = and i32 %i.aa, %.sroa.0.0.copyload.i
  %i.ca = add i32 %i.by, %i.bz
  %i.cb = add i32 %i.ca, %i.bw
  %i.cc = add i32 %i.cb, %i.bq                    ; 10 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 18)
  %i.ce = xor i32 %i.cd, %i.br                    ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 27)
  %i.cg = xor i32 %i.cf, %i.br                    ; 2 uses
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 26)
  %i.ci = xor i32 %i.aq, %i.p
  %i.cj = and i32 %i.br, %i.ci
  %i.ck = xor i32 %i.cj, %i.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13
  %i.cn = tail call noundef i32 @llvm.bswap.i32(i32 %i.cm) ; 2 uses
  %i.co = add i32 %.sroa.359.0.copyload.i, -373957723
  %i.cp = add i32 %i.co, %i.cn
  %i.cq = add i32 %i.cp, %i.ck
  %i.cr = add i32 %i.cq, %i.ch                    ; 2 uses
  %i.cs = add i32 %i.cr, %.sroa.0.0.copyload.i    ; 9 uses
  %i.ct = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 23)
  %i.cu = xor i32 %i.ct, %i.cc                    ; 2 uses
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 21)
  %i.cw = xor i32 %i.cv, %i.cc                    ; 2 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 30)
  %i.cy = xor i32 %i.bb, %i.aa
  %i.cz = and i32 %i.cc, %i.cy
  %i.da = and i32 %i.bb, %i.aa
  %i.db = add i32 %i.cz, %i.da
  %i.dc = add i32 %i.db, %i.cx
  %i.dd = add i32 %i.dc, %i.cr                    ; 10 uses
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 18)
  %i.df = xor i32 %i.de, %i.cs                    ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 27)
  %i.dh = xor i32 %i.dg, %i.cs                    ; 2 uses
  %i.di = tail call i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dh, i32 26)
  %i.dj = xor i32 %i.br, %i.aq
  %i.dk = and i32 %i.cs, %i.dj
  %i.dl = xor i32 %i.dk, %i.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = tail call noundef i32 @llvm.bswap.i32(i32 %i.dn) ; 2 uses
  %i.dp = add i32 %i.do, 961987163
  %i.dq = add i32 %i.dp, %i.p
  %i.dr = add i32 %i.dq, %i.dl
  %i.ds = add i32 %i.dr, %i.di                    ; 2 uses
  %i.dt = add i32 %i.ds, %i.aa                    ; 9 uses
  %i.du = tail call i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 23)
  %i.dv = xor i32 %i.du, %i.dd                    ; 2 uses
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 21)
  %i.dx = xor i32 %i.dw, %i.dd                    ; 2 uses
  %i.dy = tail call i32 @llvm.fshl.i32(i32 %i.dx, i32 %i.dx, i32 30)
  %i.dz = xor i32 %i.cc, %i.bb
  %i.ea = and i32 %i.dd, %i.dz
  %i.eb = and i32 %i.cc, %i.bb
  %i.ec = add i32 %i.ea, %i.eb
  %i.ed = add i32 %i.ec, %i.dy
  %i.ee = add i32 %i.ed, %i.ds                    ; 10 uses
  %i.ef = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 18)
  %i.eg = xor i32 %i.ef, %i.dt                    ; 2 uses
  %i.eh = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 27)
  %i.ei = xor i32 %i.eh, %i.dt                    ; 2 uses
  %i.ej = tail call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 26)
  %i.ek = xor i32 %i.cs, %i.br
  %i.el = and i32 %i.dt, %i.ek
  %i.em = xor i32 %i.el, %i.br
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !13
  %i.ep = tail call noundef i32 @llvm.bswap.i32(i32 %i.eo) ; 2 uses
  %i.eq = add i32 %i.ep, 1508970993
  %i.er = add i32 %i.eq, %i.aq
  %i.es = add i32 %i.er, %i.em
  %i.et = add i32 %i.es, %i.ej                    ; 2 uses
  %i.eu = add i32 %i.et, %i.bb                    ; 9 uses
  %i.ev = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 23)
  %i.ew = xor i32 %i.ev, %i.ee                    ; 2 uses
  %i.ex = tail call i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 21)
  %i.ey = xor i32 %i.ex, %i.ee                    ; 2 uses
  %i.ez = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 30)
  %i.fa = xor i32 %i.dd, %i.cc
  %i.fb = and i32 %i.ee, %i.fa
  %i.fc = and i32 %i.dd, %i.cc
  %i.fd = add i32 %i.fb, %i.fc
  %i.fe = add i32 %i.fd, %i.ez
  %i.ff = add i32 %i.fe, %i.et                    ; 10 uses
  %i.fg = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 18)
  %i.fh = xor i32 %i.fg, %i.eu                    ; 2 uses
  %i.fi = tail call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 27)
  %i.fj = xor i32 %i.fi, %i.eu                    ; 2 uses
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.fj, i32 %i.fj, i32 26)
  %i.fl = xor i32 %i.dt, %i.cs
  %i.fm = and i32 %i.eu, %i.fl
  %i.fn = xor i32 %i.fm, %i.cs
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !13
  %i.fq = tail call noundef i32 @llvm.bswap.i32(i32 %i.fp) ; 2 uses
  %i.fr = add i32 %i.fq, -1841331548
  %i.fs = add i32 %i.fr, %i.br
end_hunk_0
