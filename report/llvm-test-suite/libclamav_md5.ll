begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cli_md5_init(ptr noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1732584194, ptr %i.a, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 271733878, ptr %i.b, align 4, !tbaa !10
  store <4 x i32> <i32 0, i32 0, i32 1732584193, i32 -271733879>, ptr %0, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cli_md5_update(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
._crit_edge:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.b = trunc i64 %2 to i32
  %i.c = add i32 %i.a, %i.b
  %i.d = and i32 %i.c, 536870911                  ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !11
  %i.e = icmp ult i32 %i.d, %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = zext i1 %i.e to i32
  %i.i = add i32 %i.g, %i.h
  %i.j = lshr i64 %2, 29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = trunc i64 %i.j to i32
  %i.m = add i32 %i.i, %i.l
  store i32 %i.m, ptr %i.k, align 4, !tbaa !12
  %i.n = and i32 %i.a, 63                         ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = sub nuw nsw i64 64, %i.o                 ; 4 uses
  %i.q = icmp ult i64 %2, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  br i1 %i.q, label %3, label %bb.b

3:                                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.p, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.u = sub nuw i64 %2, %i.p
  %i.v = tail call fastcc ptr @body(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i64 noundef 64) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.034 = phi i64 [ %i.u, %bb.b ], [ %2, %._crit_edge ] ; 4 uses
  %.0 = phi ptr [ %i.t, %bb.b ], [ %1, %._crit_edge ] ; 2 uses
  %i.w = icmp ugt i64 %.034, 63
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = and i64 %.034, -64
  %i.y = tail call fastcc ptr @body(ptr noundef nonnull %0, ptr noundef %.0, i64 noundef %i.x)
  %i.z = and i64 %.034, 63
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.135 = phi i64 [ %i.z, %bb.d ], [ %.034, %bb.c ]
  %.1 = phi ptr [ %i.y, %bb.d ], [ %.0, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 1 %.1, i64 %.135, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @body(ptr noundef captures(none) %0, ptr noundef readonly captures(ret: address, provenance) %1, i64 noundef range(i64 64, -63) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0639 = phi i32 [ %i.f, %bb.a ], [ %i.tq, %bb.b ] ; 5 uses
  %.0638 = phi i32 [ %i.h, %bb.a ], [ %i.tr, %bb.b ] ; 4 uses
  %.0637 = phi i32 [ %i.d, %bb.a ], [ %i.tp, %bb.b ] ; 7 uses
  %.0636 = phi i32 [ %i.b, %bb.a ], [ %i.tn, %bb.b ] ; 2 uses
  %.0635 = phi ptr [ %1, %bb.a ], [ %i.ts, %bb.b ] ; 17 uses
  %.0 = phi i64 [ %2, %bb.a ], [ %i.tt, %bb.b ]
  %i.i = xor i32 %.0638, %.0639
  %i.j = and i32 %.0637, %i.i
  %i.k = xor i32 %i.j, %.0638
  %i.l = load i32, ptr %.0635, align 4, !tbaa !4  ; 4 uses
  %i.m = add i32 %.0636, -680876936
  %i.n = add i32 %i.m, %i.k
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 7)
  %i.q = add i32 %i.p, %.0637                     ; 6 uses
  %i.r = xor i32 %.0637, %.0639
  %i.s = and i32 %i.q, %i.r
  %i.t = xor i32 %i.s, %.0639
  %i.u = getelementptr inbounds nuw i8, ptr %.0635, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 4 uses
  %i.w = add i32 %.0638, -389564586
  %i.x = add i32 %i.w, %i.v
  %i.y = add i32 %i.x, %i.t                       ; 2 uses
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 12)
  %i.aa = add i32 %i.z, %i.q                      ; 6 uses
  %i.ab = xor i32 %i.q, %.0637
  %i.ac = and i32 %i.aa, %i.ab
  %i.ad = xor i32 %i.ac, %.0637
  %i.ae = getelementptr inbounds nuw i8, ptr %.0635, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4  ; 4 uses
  %i.ag = add i32 %.0639, 606105819
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = add i32 %i.ah, %i.ad                    ; 2 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 17)
  %i.ak = add i32 %i.aj, %i.aa                    ; 6 uses
  %i.al = xor i32 %i.aa, %i.q
  %i.am = and i32 %i.ak, %i.al
  %i.an = xor i32 %i.am, %i.q
  %i.ao = getelementptr inbounds nuw i8, ptr %.0635, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 4 uses
  %i.aq = add i32 %.0637, -1044525330
  %i.ar = add i32 %i.aq, %i.ap
  %i.as = add i32 %i.ar, %i.an                    ; 2 uses
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 22)
  %i.au = add i32 %i.at, %i.ak                    ; 6 uses
  %i.av = xor i32 %i.ak, %i.aa
  %i.aw = and i32 %i.au, %i.av
  %i.ax = xor i32 %i.aw, %i.aa
  %i.ay = getelementptr inbounds nuw i8, ptr %.0635, i64 16
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 4 uses
  %i.ba = add i32 %i.az, -176418897
  %i.bb = add i32 %i.ba, %i.q
  %i.bc = add i32 %i.bb, %i.ax                    ; 2 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 7)
  %i.be = add i32 %i.bd, %i.au                    ; 6 uses
  %i.bf = xor i32 %i.au, %i.ak
  %i.bg = and i32 %i.be, %i.bf
  %i.bh = xor i32 %i.bg, %i.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %.0635, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4  ; 4 uses
  %i.bk = add i32 %i.bj, 1200080426
  %i.bl = add i32 %i.bk, %i.aa
  %i.bm = add i32 %i.bl, %i.bh                    ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 12)
  %i.bo = add i32 %i.bn, %i.be                    ; 6 uses
  %i.bp = xor i32 %i.be, %i.au
  %i.bq = and i32 %i.bo, %i.bp
  %i.br = xor i32 %i.bq, %i.au
  %i.bs = getelementptr inbounds nuw i8, ptr %.0635, i64 24
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 4 uses
  %i.bu = add i32 %i.bt, -1473231341
  %i.bv = add i32 %i.bu, %i.ak
  %i.bw = add i32 %i.bv, %i.br                    ; 2 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 17)
  %i.by = add i32 %i.bx, %i.bo                    ; 6 uses
  %i.bz = xor i32 %i.bo, %i.be
  %i.ca = and i32 %i.by, %i.bz
  %i.cb = xor i32 %i.ca, %i.be
  %i.cc = getelementptr inbounds nuw i8, ptr %.0635, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 4 uses
  %i.ce = add i32 %i.cd, -45705983
  %i.cf = add i32 %i.ce, %i.au
  %i.cg = add i32 %i.cf, %i.cb                    ; 2 uses
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 22)
  %i.ci = add i32 %i.ch, %i.by                    ; 6 uses
  %i.cj = xor i32 %i.by, %i.bo
  %i.ck = and i32 %i.ci, %i.cj
  %i.cl = xor i32 %i.ck, %i.bo
  %i.cm = getelementptr inbounds nuw i8, ptr %.0635, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4  ; 4 uses
  %i.co = add i32 %i.cn, 1770035416
  %i.cp = add i32 %i.co, %i.be
  %i.cq = add i32 %i.cp, %i.cl                    ; 2 uses
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 7)
  %i.cs = add i32 %i.cr, %i.ci                    ; 6 uses
  %i.ct = xor i32 %i.ci, %i.by
  %i.cu = and i32 %i.cs, %i.ct
  %i.cv = xor i32 %i.cu, %i.by
  %i.cw = getelementptr inbounds nuw i8, ptr %.0635, i64 36
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4  ; 4 uses
  %i.cy = add i32 %i.cx, -1958414417
  %i.cz = add i32 %i.cy, %i.bo
  %i.da = add i32 %i.cz, %i.cv                    ; 2 uses
  %i.db = tail call i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 12)
  %i.dc = add i32 %i.db, %i.cs                    ; 6 uses
  %i.dd = xor i32 %i.cs, %i.ci
  %i.de = and i32 %i.dc, %i.dd
  %i.df = xor i32 %i.de, %i.ci
  %i.dg = getelementptr inbounds nuw i8, ptr %.0635, i64 40
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4  ; 4 uses
  %i.di = add i32 %i.dh, -42063
  %i.dj = add i32 %i.di, %i.by
  %i.dk = add i32 %i.dj, %i.df                    ; 2 uses
  %i.dl = tail call i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 17)
  %i.dm = add i32 %i.dl, %i.dc                    ; 6 uses
  %i.dn = xor i32 %i.dc, %i.cs
  %i.do = and i32 %i.dm, %i.dn
  %i.dp = xor i32 %i.do, %i.cs
  %i.dq = getelementptr inbounds nuw i8, ptr %.0635, i64 44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4  ; 4 uses
  %i.ds = add i32 %i.dr, -1990404162
  %i.dt = add i32 %i.ds, %i.ci
  %i.du = add i32 %i.dt, %i.dp                    ; 2 uses
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 22)
  %i.dw = add i32 %i.dv, %i.dm                    ; 6 uses
  %i.dx = xor i32 %i.dm, %i.dc
  %i.dy = and i32 %i.dw, %i.dx
  %i.dz = xor i32 %i.dy, %i.dc
  %i.ea = getelementptr inbounds nuw i8, ptr %.0635, i64 48
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 4 uses
  %i.ec = add i32 %i.eb, 1804603682
  %i.ed = add i32 %i.ec, %i.cs
  %i.ee = add i32 %i.ed, %i.dz                    ; 2 uses
  %i.ef = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 7)
  %i.eg = add i32 %i.ef, %i.dw                    ; 6 uses
  %i.eh = xor i32 %i.dw, %i.dm
  %i.ei = and i32 %i.eg, %i.eh
  %i.ej = xor i32 %i.ei, %i.dm
  %i.ek = getelementptr inbounds nuw i8, ptr %.0635, i64 52
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4  ; 4 uses
  %i.em = add i32 %i.el, -40341101
  %i.en = add i32 %i.em, %i.dc
  %i.eo = add i32 %i.en, %i.ej                    ; 2 uses
  %i.ep = tail call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 12)
  %i.eq = add i32 %i.ep, %i.eg                    ; 5 uses
  %i.er = xor i32 %i.eg, %i.dw
  %i.es = and i32 %i.eq, %i.er
  %i.et = xor i32 %i.es, %i.dw
  %i.eu = getelementptr inbounds nuw i8, ptr %.0635, i64 56
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4  ; 4 uses
  %i.ew = add i32 %i.ev, -1502002290
  %i.ex = add i32 %i.ew, %i.dm
  %i.ey = add i32 %i.ex, %i.et                    ; 2 uses
  %i.ez = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 17)
  %i.fa = add i32 %i.ez, %i.eq                    ; 6 uses
  %i.fb = xor i32 %i.eq, %i.eg
  %i.fc = and i32 %i.fa, %i.fb
  %i.fd = xor i32 %i.fc, %i.eg
  %i.fe = getelementptr inbounds nuw i8, ptr %.0635, i64 60
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4  ; 4 uses
  %i.fg = add i32 %i.ff, 1236535329
  %i.fh = add i32 %i.fg, %i.dw
  %i.fi = add i32 %i.fh, %i.fd                    ; 2 uses
  %i.fj = tail call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 22)
  %i.fk = add i32 %i.fj, %i.fa                    ; 6 uses
  %i.fl = xor i32 %i.fk, %i.fa
  %i.fm = and i32 %i.fl, %i.eq
  %i.fn = xor i32 %i.fm, %i.fa
  %i.fo = add i32 %i.v, -165796510
  %i.fp = add i32 %i.fo, %i.eg
  %i.fq = add i32 %i.fp, %i.fn                    ; 2 uses
  %i.fr = tail call i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 5)
  %i.fs = add i32 %i.fr, %i.fk                    ; 6 uses
  %i.ft = xor i32 %i.fs, %i.fk
  %i.fu = and i32 %i.ft, %i.fa
  %i.fv = xor i32 %i.fu, %i.fk
  %i.fw = add i32 %i.bt, -1069501632
  %i.fx = add i32 %i.fw, %i.eq
  %i.fy = add i32 %i.fx, %i.fv                    ; 2 uses
  %i.fz = tail call i32 @llvm.fshl.i32(i32 %i.fy, i32 %i.fy, i32 9)
end_hunk_0
