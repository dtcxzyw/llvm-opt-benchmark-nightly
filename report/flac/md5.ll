Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/md5?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @FLAC__MD5Init(ptr nofree noundef writeonly captures(none) initializes((64, 104)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden void @FLAC__MD5Final(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = and i32 %i.b, 63                         ; 4 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store i8 -128, ptr %i.e, align 1, !tbaa !9
  %i.g = sub nuw nsw i32 55, %i.c
  %i.h = icmp samesign ugt i32 %i.c, 55
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = xor i32 %i.c, 63
  %i.j = zext nneg i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.f, i8 noundef 0, i64 noundef range(i64 0, 105) %i.j, i1 noundef false) #10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call fastcc void @FLAC__MD5Transform(ptr noundef nonnull %i.k, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026 = phi i32 [ 56, %bb.b ], [ %i.g, %bb.a ]
  %.0 = phi ptr [ %1, %bb.b ], [ %i.f, %bb.a ]
  %i.l = zext nneg i32 %.026 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.0, i8 noundef 0, i64 noundef range(i64 0, 105) %i.l, i1 noundef false) #10
  %i.m = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.n = shl i32 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.n, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.q, i32 %i.m, i32 3)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.r, ptr %2, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call fastcc void @FLAC__MD5Transform(ptr noundef nonnull %i.s, ptr noundef nonnull %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef 16, i1 noundef false) #10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.u) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef 0, i64 noundef 104, i1 noundef false) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @FLAC__MD5Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 4 uses
  %i.h = xor i32 %i.g, %i.e
  %i.i = and i32 %i.h, %i.c
  %i.j = xor i32 %i.i, %i.g
  %i.k = load i32, ptr %1, align 4, !tbaa !8      ; 4 uses
  %i.l = add i32 %i.a, -680876936
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %i.j                       ; 2 uses
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 7)
  %i.p = add i32 %i.o, %i.c                       ; 6 uses
  %i.q = xor i32 %i.e, %i.c
  %i.r = and i32 %i.p, %i.q
  %i.s = xor i32 %i.r, %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 4 uses
  %i.v = add i32 %i.g, -389564586
  %i.w = add i32 %i.v, %i.u
  %i.x = add i32 %i.w, %i.s                       ; 2 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 12)
  %i.z = add i32 %i.y, %i.p                       ; 6 uses
  %i.aa = xor i32 %i.p, %i.c
  %i.ab = and i32 %i.z, %i.aa
  %i.ac = xor i32 %i.ab, %i.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 4 uses
  %i.af = add i32 %i.e, 606105819
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = add i32 %i.ag, %i.ac                    ; 2 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 17)
  %i.aj = add i32 %i.ai, %i.z                     ; 6 uses
  %i.ak = xor i32 %i.z, %i.p
  %i.al = and i32 %i.aj, %i.ak
  %i.am = xor i32 %i.al, %i.p
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8  ; 4 uses
  %i.ap = add i32 %i.c, -1044525330
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = add i32 %i.aq, %i.am                    ; 2 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 22)
  %i.at = add i32 %i.as, %i.aj                    ; 6 uses
  %i.au = xor i32 %i.aj, %i.z
  %i.av = and i32 %i.at, %i.au
  %i.aw = xor i32 %i.av, %i.z
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8  ; 4 uses
  %i.az = add i32 %i.ay, -176418897
  %i.ba = add i32 %i.az, %i.p
  %i.bb = add i32 %i.ba, %i.aw                    ; 2 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 7)
  %i.bd = add i32 %i.bc, %i.at                    ; 6 uses
  %i.be = xor i32 %i.at, %i.aj
  %i.bf = and i32 %i.bd, %i.be
  %i.bg = xor i32 %i.bf, %i.aj
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8  ; 4 uses
  %i.bj = add i32 %i.bi, 1200080426
  %i.bk = add i32 %i.bj, %i.z
  %i.bl = add i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 12)
  %i.bn = add i32 %i.bm, %i.bd                    ; 6 uses
  %i.bo = xor i32 %i.bd, %i.at
  %i.bp = and i32 %i.bn, %i.bo
  %i.bq = xor i32 %i.bp, %i.at
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8  ; 4 uses
  %i.bt = add i32 %i.bs, -1473231341
  %i.bu = add i32 %i.bt, %i.aj
  %i.bv = add i32 %i.bu, %i.bq                    ; 2 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 17)
  %i.bx = add i32 %i.bw, %i.bn                    ; 6 uses
  %i.by = xor i32 %i.bn, %i.bd
  %i.bz = and i32 %i.bx, %i.by
  %i.ca = xor i32 %i.bz, %i.bd
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 4 uses
  %i.cd = add i32 %i.cc, -45705983
  %i.ce = add i32 %i.cd, %i.at
  %i.cf = add i32 %i.ce, %i.ca                    ; 2 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.cf, i32 22)
  %i.ch = add i32 %i.cg, %i.bx                    ; 6 uses
  %i.ci = xor i32 %i.bx, %i.bn
  %i.cj = and i32 %i.ch, %i.ci
  %i.ck = xor i32 %i.cj, %i.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8  ; 4 uses
  %i.cn = add i32 %i.cm, 1770035416
  %i.co = add i32 %i.cn, %i.bd
  %i.cp = add i32 %i.co, %i.ck                    ; 2 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 7)
  %i.cr = add i32 %i.cq, %i.ch                    ; 6 uses
  %i.cs = xor i32 %i.ch, %i.bx
  %i.ct = and i32 %i.cr, %i.cs
  %i.cu = xor i32 %i.ct, %i.bx
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8  ; 4 uses
  %i.cx = add i32 %i.cw, -1958414417
  %i.cy = add i32 %i.cx, %i.bn
  %i.cz = add i32 %i.cy, %i.cu                    ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 12)
  %i.db = add i32 %i.da, %i.cr                    ; 6 uses
  %i.dc = xor i32 %i.cr, %i.ch
  %i.dd = and i32 %i.db, %i.dc
  %i.de = xor i32 %i.dd, %i.ch
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8  ; 4 uses
  %i.dh = add i32 %i.dg, -42063
  %i.di = add i32 %i.dh, %i.bx
  %i.dj = add i32 %i.di, %i.de                    ; 2 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 17)
  %i.dl = add i32 %i.dk, %i.db                    ; 6 uses
  %i.dm = xor i32 %i.db, %i.cr
  %i.dn = and i32 %i.dl, %i.dm
  %i.do = xor i32 %i.dn, %i.cr
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !8  ; 4 uses
  %i.dr = add i32 %i.dq, -1990404162
  %i.ds = add i32 %i.dr, %i.ch
  %i.dt = add i32 %i.ds, %i.do                    ; 2 uses
  %i.du = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 22)
  %i.dv = add i32 %i.du, %i.dl                    ; 6 uses
  %i.dw = xor i32 %i.dl, %i.db
  %i.dx = and i32 %i.dv, %i.dw
  %i.dy = xor i32 %i.dx, %i.db
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8  ; 4 uses
  %i.eb = add i32 %i.ea, 1804603682
  %i.ec = add i32 %i.eb, %i.cr
  %i.ed = add i32 %i.ec, %i.dy                    ; 2 uses
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 7)
  %i.ef = add i32 %i.ee, %i.dv                    ; 6 uses
  %i.eg = xor i32 %i.dv, %i.dl
  %i.eh = and i32 %i.ef, %i.eg
  %i.ei = xor i32 %i.eh, %i.dl
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8  ; 4 uses
  %i.el = add i32 %i.ek, -40341101
  %i.em = add i32 %i.el, %i.db
  %i.en = add i32 %i.em, %i.ei                    ; 2 uses
  %i.eo = tail call i32 @llvm.fshl.i32(i32 %i.en, i32 %i.en, i32 12)
  %i.ep = add i32 %i.eo, %i.ef                    ; 5 uses
  %i.eq = xor i32 %i.ef, %i.dv
  %i.er = and i32 %i.ep, %i.eq
  %i.es = xor i32 %i.er, %i.dv
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8  ; 4 uses
  %i.ev = add i32 %i.eu, -1502002290
  %i.ew = add i32 %i.ev, %i.dl
  %i.ex = add i32 %i.ew, %i.es                    ; 2 uses
  %i.ey = tail call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 17)
  %i.ez = add i32 %i.ey, %i.ep                    ; 6 uses
  %i.fa = xor i32 %i.ep, %i.ef
  %i.fb = and i32 %i.ez, %i.fa
  %i.fc = xor i32 %i.fb, %i.ef
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8  ; 4 uses
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
end_hunk_0
