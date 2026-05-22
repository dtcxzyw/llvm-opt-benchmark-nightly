inline.NumInlined: 41
inline.NumDeleted: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN6duckdb10MD5ContextC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb10MD5ContextC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb10MD5ContextC2Ev(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(88) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb10MD5Context9MD5UpdateEPKhm(ptr noundef nonnull align 4 captures(none) dereferenceable(88) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
._crit_edge46:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.c = trunc i64 %2 to i32
  %i.d = shl i32 %i.c, 3
  %i.e = add i32 %i.b, %i.d                       ; 2 uses
  store i32 %i.e, ptr %i.a, align 4, !tbaa !3
  %i.f = icmp ult i32 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = zext i1 %i.f to i32
  %i.j = add i32 %i.h, %i.i
  %i.k = lshr i64 %2, 29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = trunc i64 %i.k to i32
  %i.n = add i32 %i.j, %i.m
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3
  %i.o = lshr i32 %i.b, 3
  %i.p = and i32 %i.o, 63                         ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %._crit_edge46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = sub nuw nsw i32 64, %i.p
  %i.u = zext nneg i32 %i.t to i64                ; 4 uses
  %.not35 = icmp ult i64 %2, %i.u
  br i1 %.not35, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.u, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef %0, ptr noundef %i.q)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = sub nuw i64 %2, %i.u
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge46
  %.129 = phi i64 [ %i.w, %bb.b ], [ %2, %._crit_edge46 ] ; 3 uses
  %.1 = phi ptr [ %i.v, %bb.b ], [ %1, %._crit_edge46 ] ; 2 uses
  %i.x = icmp ugt i64 %.129, 63
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN6duckdbL11ByteReverseEPhj.exit39

_ZN6duckdbL11ByteReverseEPhj.exit39:              ; preds = %.lr.ph, %_ZN6duckdbL11ByteReverseEPhj.exit39
  %.243 = phi ptr [ %.1, %.lr.ph ], [ %i.z, %_ZN6duckdbL11ByteReverseEPhj.exit39 ] ; 2 uses
  %.23042 = phi i64 [ %.129, %.lr.ph ], [ %i.aa, %_ZN6duckdbL11ByteReverseEPhj.exit39 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.y, ptr noundef nonnull align 1 dereferenceable(64) %.243, i64 64, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef %0, ptr noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.243, i64 64 ; 2 uses
  %i.aa = add i64 %.23042, -64                    ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 63
  br i1 %i.ab, label %_ZN6duckdbL11ByteReverseEPhj.exit39, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit39, %bb.c
  %.230.lcssa = phi i64 [ %.129, %bb.c ], [ %i.aa, %_ZN6duckdbL11ByteReverseEPhj.exit39 ]
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.z, %_ZN6duckdbL11ByteReverseEPhj.exit39 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 1 %.2.lcssa, i64 %.230.lcssa, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull captures(none) %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 4 uses
  %i.h = xor i32 %i.g, %i.e
  %i.i = and i32 %i.h, %i.c
  %i.j = xor i32 %i.i, %i.g
  %i.k = load i32, ptr %1, align 4, !tbaa !3      ; 4 uses
  %i.l = add i32 %i.a, -680876936
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %i.j                       ; 2 uses
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 7)
  %i.p = add i32 %i.o, %i.c                       ; 6 uses
  %i.q = xor i32 %i.e, %i.c
  %i.r = and i32 %i.p, %i.q
  %i.s = xor i32 %i.r, %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3    ; 4 uses
  %i.v = add i32 %i.g, -389564586
  %i.w = add i32 %i.v, %i.u
  %i.x = add i32 %i.w, %i.s                       ; 2 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 12)
  %i.z = add i32 %i.y, %i.p                       ; 6 uses
  %i.aa = xor i32 %i.p, %i.c
  %i.ab = and i32 %i.z, %i.aa
  %i.ac = xor i32 %i.ab, %i.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 4 uses
  %i.af = add i32 %i.e, 606105819
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = add i32 %i.ag, %i.ac                    ; 2 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 17)
  %i.aj = add i32 %i.ai, %i.z                     ; 6 uses
  %i.ak = xor i32 %i.z, %i.p
  %i.al = and i32 %i.aj, %i.ak
  %i.am = xor i32 %i.al, %i.p
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3  ; 4 uses
  %i.ap = add i32 %i.c, -1044525330
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = add i32 %i.aq, %i.am                    ; 2 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 22)
  %i.at = add i32 %i.as, %i.aj                    ; 6 uses
  %i.au = xor i32 %i.aj, %i.z
  %i.av = and i32 %i.at, %i.au
  %i.aw = xor i32 %i.av, %i.z
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 4 uses
  %i.az = add i32 %i.ay, -176418897
  %i.ba = add i32 %i.az, %i.p
  %i.bb = add i32 %i.ba, %i.aw                    ; 2 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 7)
  %i.bd = add i32 %i.bc, %i.at                    ; 6 uses
  %i.be = xor i32 %i.at, %i.aj
  %i.bf = and i32 %i.bd, %i.be
  %i.bg = xor i32 %i.bf, %i.aj
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 4 uses
  %i.bj = add i32 %i.bi, 1200080426
  %i.bk = add i32 %i.bj, %i.z
  %i.bl = add i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 12)
  %i.bn = add i32 %i.bm, %i.bd                    ; 6 uses
  %i.bo = xor i32 %i.bd, %i.at
  %i.bp = and i32 %i.bn, %i.bo
  %i.bq = xor i32 %i.bp, %i.at
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3  ; 4 uses
  %i.bt = add i32 %i.bs, -1473231341
  %i.bu = add i32 %i.bt, %i.aj
  %i.bv = add i32 %i.bu, %i.bq                    ; 2 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 17)
  %i.bx = add i32 %i.bw, %i.bn                    ; 6 uses
  %i.by = xor i32 %i.bn, %i.bd
  %i.bz = and i32 %i.bx, %i.by
  %i.ca = xor i32 %i.bz, %i.bd
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 4 uses
  %i.cd = add i32 %i.cc, -45705983
  %i.ce = add i32 %i.cd, %i.at
  %i.cf = add i32 %i.ce, %i.ca                    ; 2 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.cf, i32 22)
  %i.ch = add i32 %i.cg, %i.bx                    ; 6 uses
  %i.ci = xor i32 %i.bx, %i.bn
  %i.cj = and i32 %i.ch, %i.ci
  %i.ck = xor i32 %i.cj, %i.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 4 uses
  %i.cn = add i32 %i.cm, 1770035416
  %i.co = add i32 %i.cn, %i.bd
  %i.cp = add i32 %i.co, %i.ck                    ; 2 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 7)
  %i.cr = add i32 %i.cq, %i.ch                    ; 6 uses
  %i.cs = xor i32 %i.ch, %i.bx
  %i.ct = and i32 %i.cr, %i.cs
  %i.cu = xor i32 %i.ct, %i.bx
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 4 uses
  %i.cx = add i32 %i.cw, -1958414417
  %i.cy = add i32 %i.cx, %i.bn
  %i.cz = add i32 %i.cy, %i.cu                    ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 12)
  %i.db = add i32 %i.da, %i.cr                    ; 6 uses
  %i.dc = xor i32 %i.cr, %i.ch
  %i.dd = and i32 %i.db, %i.dc
  %i.de = xor i32 %i.dd, %i.ch
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 4 uses
  %i.dh = add i32 %i.dg, -42063
  %i.di = add i32 %i.dh, %i.bx
  %i.dj = add i32 %i.di, %i.de                    ; 2 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 17)
  %i.dl = add i32 %i.dk, %i.db                    ; 6 uses
  %i.dm = xor i32 %i.db, %i.cr
  %i.dn = and i32 %i.dl, %i.dm
  %i.do = xor i32 %i.dn, %i.cr
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3  ; 4 uses
  %i.dr = add i32 %i.dq, -1990404162
  %i.ds = add i32 %i.dr, %i.ch
  %i.dt = add i32 %i.ds, %i.do                    ; 2 uses
  %i.du = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 22)
  %i.dv = add i32 %i.du, %i.dl                    ; 6 uses
  %i.dw = xor i32 %i.dl, %i.db
  %i.dx = and i32 %i.dv, %i.dw
  %i.dy = xor i32 %i.dx, %i.db
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 4 uses
  %i.eb = add i32 %i.ea, 1804603682
  %i.ec = add i32 %i.eb, %i.cr
  %i.ed = add i32 %i.ec, %i.dy                    ; 2 uses
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 7)
  %i.ef = add i32 %i.ee, %i.dv                    ; 6 uses
  %i.eg = xor i32 %i.dv, %i.dl
  %i.eh = and i32 %i.ef, %i.eg
  %i.ei = xor i32 %i.eh, %i.dl
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3  ; 4 uses
  %i.el = add i32 %i.ek, -40341101
  %i.em = add i32 %i.el, %i.db
  %i.en = add i32 %i.em, %i.ei                    ; 2 uses
  %i.eo = tail call i32 @llvm.fshl.i32(i32 %i.en, i32 %i.en, i32 12)
  %i.ep = add i32 %i.eo, %i.ef                    ; 5 uses
  %i.eq = xor i32 %i.ef, %i.dv
  %i.er = and i32 %i.ep, %i.eq
  %i.es = xor i32 %i.er, %i.dv
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 4 uses
  %i.ev = add i32 %i.eu, -1502002290
  %i.ew = add i32 %i.ev, %i.dl
  %i.ex = add i32 %i.ew, %i.es                    ; 2 uses
  %i.ey = tail call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 17)
  %i.ez = add i32 %i.ey, %i.ep                    ; 6 uses
  %i.fa = xor i32 %i.ep, %i.ef
  %i.fb = and i32 %i.ez, %i.fa
  %i.fc = xor i32 %i.fb, %i.ef
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 4 uses
  %i.ff = add i32 %i.fe, 1236535329
  %i.fg = add i32 %i.ff, %i.dv
  %i.fh = add i32 %i.fg, %i.fc                    ; 2 uses
  %i.fi = tail call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 22)
  %i.fj = add i32 %i.fi, %i.ez                    ; 6 uses
  %i.fk = xor i32 %i.fj, %i.ez
  %i.fl = and i32 %i.fk, %i.ep
  %i.fm = xor i32 %i.fl, %i.ez
  %i.fn = add i32 %i.u, -165796510
  %i.fo = add i32 %i.fn, %i.ef
  %i.fp = add i32 %i.fo, %i.fm                    ; 2 uses
  %i.fq = tail call i32 @llvm.fshl.i32(i32 %i.fp, i32 %i.fp, i32 5)
  %i.fr = add i32 %i.fq, %i.fj                    ; 6 uses
  %i.fs = xor i32 %i.fr, %i.fj
  %i.ft = and i32 %i.fs, %i.ez
  %i.fu = xor i32 %i.ft, %i.fj
  %i.fv = add i32 %i.bs, -1069501632
  %i.fw = add i32 %i.fv, %i.ep
  %i.fx = add i32 %i.fw, %i.fu                    ; 2 uses
  %i.fy = tail call i32 @llvm.fshl.i32(i32 %i.fx, i32 %i.fx, i32 9)
  %i.fz = add i32 %i.fy, %i.fr                    ; 6 uses
  %i.ga = xor i32 %i.fz, %i.fr
  %i.gb = and i32 %i.ga, %i.fj
  %i.gc = xor i32 %i.gb, %i.fr
  %i.gd = add i32 %i.dq, 643717713
  %i.ge = add i32 %i.gd, %i.ez
  %i.gf = add i32 %i.ge, %i.gc                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdbL12MD5TransformEPjPKj:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb10MD5Context6FinishEPh(ptr noundef nonnull align 4 captures(none) dereferenceable(88) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store i8 -128, ptr %i.g, align 1, !tbaa !9
  %i.i = xor i32 %i.d, 63                         ; 2 uses
  %i.j = icmp samesign ult i32 %i.i, 8
  br i1 %i.j, label %_ZN6duckdbL11ByteReverseEPhj.exit, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit:                ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.k, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef %0, ptr noundef %i.e)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %_ZN6duckdbL11ByteReverseEPhj.exit12

bb.b:                                             ; preds = %bb.a
  %i.l = sub nsw i32 55, %i.d
  %i.m = zext nneg i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.m, i1 false)
  br label %_ZN6duckdbL11ByteReverseEPhj.exit12

_ZN6duckdbL11ByteReverseEPhj.exit12:              ; preds = %bb.b, %_ZN6duckdbL11ByteReverseEPhj.exit
  %i.n = phi i32 [ %i.b, %bb.b ], [ %.pre, %_ZN6duckdbL11ByteReverseEPhj.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.n, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef %0, ptr noundef %i.e)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10MD5Context9FinishHexEPc(ptr noundef nonnull align 4 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 63                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store i8 -128, ptr %i.h, align 1, !tbaa !9
  %i.j = xor i32 %i.e, 63                         ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 8
  br i1 %i.k, label %_ZN6duckdbL11ByteReverseEPhj.exit.i, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit.i:              ; preds = %bb.a
  %i.l = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.l, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.f)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %_ZN6duckdb10MD5Context6FinishEPh.exit

bb.b:                                             ; preds = %bb.a
  %i.m = sub nsw i32 55, %i.e
  %i.n = zext nneg i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.n, i1 false)
  br label %_ZN6duckdb10MD5Context6FinishEPh.exit

_ZN6duckdb10MD5Context6FinishEPh.exit:            ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit.i, %bb.b
  %i.o = phi i32 [ %i.c, %bb.b ], [ %.pre.i, %_ZN6duckdbL11ByteReverseEPhj.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.o, ptr %i.p, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.r, ptr %i.s, align 4, !tbaa !3
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(88) %0, i64 16, i1 false)
  call void @_ZN14duckdb_mbedtls14MbedTlsWrapper8ToBase16EPcS1_m(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @_ZN14duckdb_mbedtls14MbedTlsWrapper8ToBase16EPcS1_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10MD5Context9FinishHexB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 captures(none) dereferenceable(88) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 63                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store i8 -128, ptr %i.j, align 1, !tbaa !9
  %i.l = xor i32 %i.g, 63                         ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 8
  br i1 %i.m, label %_ZN6duckdbL11ByteReverseEPhj.exit.i.i, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit.i.i:            ; preds = %bb.a
  %i.n = zext nneg i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.n, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %1, ptr noundef %i.h)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.h, i8 0, i64 56, i1 false)
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  br label %_ZN6duckdb10MD5Context9FinishHexEPc.exit

bb.b:                                             ; preds = %bb.a
  %i.o = sub nsw i32 55, %i.g
  %i.p = zext nneg i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.p, i1 false)
  br label %_ZN6duckdb10MD5Context9FinishHexEPc.exit

_ZN6duckdb10MD5Context9FinishHexEPc.exit:         ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit.i.i, %bb.b
  %i.q = phi i32 [ %i.e, %bb.b ], [ %.pre.i.i, %_ZN6duckdbL11ByteReverseEPhj.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.t, ptr %i.u, align 4, !tbaa !3
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %1, ptr noundef %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(88) %1, i64 16, i1 false)
  call void @_ZN14duckdb_mbedtls14MbedTlsWrapper8ToBase16EPcS1_m(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 32, ptr %i.a, align 8, !tbaa !14
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !16
  %i.x = load i64, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !18
  %i.z = load ptr, ptr %0, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb10MD5Context3AddEPKc(ptr noundef nonnull align 4 captures(none) dereferenceable(88) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 3 uses
  %i.d = trunc i64 %i.a to i32
  %i.e = shl i32 %i.d, 3
  %i.f = add i32 %i.e, %i.c                       ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !3
  %i.g = icmp ult i32 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i1 %i.g to i32
  %i.k = lshr i64 %i.a, 29
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.i, %i.l
  %i.n = add i32 %i.m, %i.j
  store i32 %i.n, ptr %i.h, align 4, !tbaa !3
  %i.o = lshr i32 %i.c, 3
  %i.p = and i32 %i.o, 63                         ; 3 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = sub nuw nsw i32 64, %i.p
  %i.u = zext nneg i32 %i.t to i64                ; 4 uses
  %.not35.i = icmp ult i64 %i.a, %i.u
  br i1 %.not35.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %i.a, i1 false)
  br label %_ZN6duckdb10MD5Context9MD5UpdateEPKhm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.u, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.q)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = sub nuw i64 %i.a, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.129.i = phi i64 [ %i.w, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %.1.i = phi ptr [ %i.v, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %i.x = icmp ugt i64 %.129.i, 63
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN6duckdbL11ByteReverseEPhj.exit39.i

_ZN6duckdbL11ByteReverseEPhj.exit39.i:            ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit39.i, %.lr.ph.i
  %.243.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.z, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ] ; 2 uses
  %.23042.i = phi i64 [ %.129.i, %.lr.ph.i ], [ %i.aa, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.y, ptr noundef nonnull align 1 dereferenceable(64) %.243.i, i64 64, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.243.i, i64 64 ; 2 uses
  %i.aa = add i64 %.23042.i, -64                  ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 63
  br i1 %i.ab, label %_ZN6duckdbL11ByteReverseEPhj.exit39.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit39.i, %bb.d
  %.230.lcssa.i = phi i64 [ %.129.i, %bb.d ], [ %i.aa, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ]
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.d ], [ %i.z, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull align 1 %.2.lcssa.i, i64 %.230.lcssa.i, i1 false)
  br label %_ZN6duckdb10MD5Context9MD5UpdateEPKhm.exit

_ZN6duckdb10MD5Context9MD5UpdateEPKhm.exit:       ; preds = %.thread.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!17, !12, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !15, i64 8, !5, i64 16}
!18 = !{!17, !15, i64 8}
end_hunk_1
