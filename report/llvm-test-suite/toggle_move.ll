inline.NumInlined: 22
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Basic_Info = type { i32, i32, i32 }
%struct.Move = type { i32, i32, i32 }

@g_board = external local_unnamed_addr global [2 x [32 x i32]], align 16
@g_board_size = external local_unnamed_addr global [2 x i32], align 4
@.str = private unnamed_addr constant [95 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/obsequi/toggle_move.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"No maximum\0A\00", align 1
@g_info = external local_unnamed_addr global [2 x [32 x %struct.Basic_Info]], align 16
@g_info_totals = external local_unnamed_addr global [2 x %struct.Basic_Info], align 16
@move_table16 = external local_unnamed_addr global [65536 x i32], align 16
@g_first_move = external local_unnamed_addr global [2 x [32 x [32 x i32]]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_safe(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr [4 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = and i32 %i.h, %i.f                       ; 2 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = or i32 %i.k, %i.j
  %i.m = xor i32 %i.l, -1
  %i.n = shl i32 %i.i, 1
  %i.o = and i32 %i.n, %i.m
  %i.p = and i32 %i.o, %i.i                       ; 2 uses
  %i.q = and i32 %i.p, 65534
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !4    ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.t, 268435456
  %i.u = lshr i32 %i.p, 16
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = add i32 %i.x, %i.t
  %..i.i.i = select i1 %.not.i.i.i, i32 65535, i32 65534
  %i.z = and i32 %i.y, %..i.i.i                   ; 2 uses
  %i.aa = getelementptr inbounds [384 x i8], ptr @g_info, i64 %i.a
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.aa, i64 %i.c ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = sub i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds [12 x i8], ptr @g_info_totals, i64 %i.a ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.ad, %i.af
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !8
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_real(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = or i32 %i.f, %i.e
  %i.h = xor i32 %i.g, -1                         ; 2 uses
  %i.i = and i32 %i.h, 65535
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.l, 268435456
  %i.m = lshr i32 %i.h, 16
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = add i32 %i.p, %i.l
  %..i.i.i = select i1 %.not.i.i.i, i32 65535, i32 65534
  %i.r = and i32 %i.q, %..i.i.i                   ; 2 uses
  %i.s = getelementptr inbounds [384 x i8], ptr @g_info, i64 %i.a
  %i.t = getelementptr inbounds [12 x i8], ptr %i.s, i64 %i.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10
  %i.w = sub i32 %i.r, %i.v
  %i.x = getelementptr inbounds [12 x i8], ptr @g_info_totals, i64 %i.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10
  %i.aa = add nsw i32 %i.w, %i.z
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !10
  store i32 %i.r, ptr %i.u, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @toggle_move(i64 %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.033.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %.sroa.234.0.extract.shift = lshr i64 %0, 32
  %.sroa.234.0.extract.trunc = trunc nuw i64 %.sroa.234.0.extract.shift to i32 ; 3 uses
  %i.a = and i32 %2, 1
  %i.b = xor i32 %2, 1
  %i.c = shl i32 3, %.sroa.234.0.extract.trunc
  %i.d = zext nneg i32 %i.a to i64                ; 7 uses
  %i.e = getelementptr inbounds nuw [128 x i8], ptr @g_board, i64 %i.d ; 4 uses
  %sext = shl i64 %0, 32                          ; 3 uses
  %i.f = ashr exact i64 %sext, 30
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = xor i32 %i.h, %i.c
  store i32 %i.i, ptr %i.g, align 4, !tbaa !4
  %i.j = shl nuw i32 1, %.sroa.033.0.extract.trunc ; 2 uses
  %i.k = sext i32 %i.b to i64                     ; 8 uses
  %i.l = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.k ; 4 uses
  %i.m = ashr i64 %0, 32                          ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = xor i32 %i.o, %i.j
  store i32 %i.p, ptr %i.n, align 4, !tbaa !4
  %i.q = add nsw i32 %.sroa.234.0.extract.trunc, 1 ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = xor i32 %i.t, %i.j                       ; 3 uses
  store i32 %i.u, ptr %i.s, align 4, !tbaa !4
  %i.v = add nsw i32 %.sroa.033.0.extract.trunc, -1 ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.d
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.e, i64 %i.w ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = and i32 %i.ab, %i.z                     ; 2 uses
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !4   ; 2 uses
  %i.ae = shl i32 %i.ad, 1
  %i.af = or i32 %i.ae, %i.ad
  %i.ag = xor i32 %i.af, -1
  %i.ah = shl i32 %i.ac, 1
  %i.ai = and i32 %i.ah, %i.ag
  %i.aj = and i32 %i.ai, %i.ac                    ; 2 uses
  %i.ak = and i32 %i.aj, 65534
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.al
  %i.an = load i32, ptr %i.am, align 8, !tbaa !4  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.an, 268435456
  %i.ao = lshr i32 %i.aj, 16
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = add i32 %i.ar, %i.an
  %..i.i.i = select i1 %.not.i.i.i, i32 65535, i32 65534
  %i.at = and i32 %i.as, %..i.i.i                 ; 2 uses
  %i.au = getelementptr inbounds nuw [384 x i8], ptr @g_info, i64 %i.d
  %i.av = getelementptr inbounds [12 x i8], ptr %i.au, i64 %i.w ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = sub i32 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.d
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = add nsw i32 %i.ax, %i.az
  store i32 %i.at, ptr %i.av, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.bb = phi i32 [ %.pre, %._crit_edge ], [ %i.ba, %bb.b ]
  %i.bc = ashr exact i64 %sext, 32                ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.e, i64 %i.bc ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr i8, ptr %i.bd, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = and i32 %i.bh, %i.bf                    ; 2 uses
  %i.bj = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bk = shl i32 %i.bj, 1
  %i.bl = or i32 %i.bk, %i.bj
  %i.bm = xor i32 %i.bl, -1                       ; 3 uses
  %i.bn = shl i32 %i.bi, 1
  %i.bo = and i32 %i.bn, %i.bi
  %i.bp = and i32 %i.bo, %i.bm                    ; 2 uses
  %i.bq = and i32 %i.bp, 65534
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !4  ; 2 uses
  %.not.i.i.i40 = icmp ult i32 %i.bt, 268435456
  %i.bu = lshr i32 %i.bp, 16
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = add i32 %i.bx, %i.bt
  %..i.i.i41 = select i1 %.not.i.i.i40, i32 65535, i32 65534
  %i.bz = and i32 %i.by, %..i.i.i41               ; 2 uses
  %i.ca = getelementptr inbounds nuw [384 x i8], ptr @g_info, i64 %i.d ; 2 uses
  %i.cb = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.bc ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = sub i32 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.d ; 3 uses
end_hunk_0
begin_hunk_1_@toggle_move:bb.a

bb.d:                                             ; preds = %bb.c
  %sext55 = add i64 %sext, 4294967296
  %i.ci = ashr exact i64 %sext55, 32              ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.e, i64 %i.ci ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = getelementptr i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = and i32 %i.cn, %i.cl                    ; 2 uses
  %i.cp = load i32, ptr %i.cj, align 4, !tbaa !4  ; 2 uses
  %i.cq = shl i32 %i.cp, 1
  %i.cr = or i32 %i.cq, %i.cp
  %i.cs = xor i32 %i.cr, -1
  %i.ct = shl i32 %i.co, 1
  %i.cu = and i32 %i.ct, %i.cs
  %i.cv = and i32 %i.cu, %i.co                    ; 2 uses
  %i.cw = and i32 %i.cv, 65534
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !4  ; 2 uses
  %.not.i.i.i42 = icmp ult i32 %i.cz, 268435456
  %i.da = lshr i32 %i.cv, 16
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = add i32 %i.dd, %i.cz
  %..i.i.i43 = select i1 %.not.i.i.i42, i32 65535, i32 65534
  %i.df = and i32 %i.de, %..i.i.i43               ; 2 uses
  %i.dg = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = sub i32 %i.cf, %i.dh
  %i.dj = add i32 %i.di, %i.df
  store i32 %i.dj, ptr %i.ce, align 4, !tbaa !8
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dk = add nsw i32 %.sroa.234.0.extract.trunc, -1 ; 2 uses
  %.not38 = icmp eq i32 %i.dk, 0
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.l, i64 %i.dl ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = getelementptr i8, ptr %i.dm, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = and i32 %i.dq, %i.do                    ; 2 uses
  %i.ds = load i32, ptr %i.dm, align 4, !tbaa !4  ; 2 uses
  %i.dt = shl i32 %i.ds, 1
  %i.du = or i32 %i.dt, %i.ds
  %i.dv = xor i32 %i.du, -1
  %i.dw = shl i32 %i.dr, 1
  %i.dx = and i32 %i.dw, %i.dv
  %i.dy = and i32 %i.dx, %i.dr                    ; 2 uses
  %i.dz = and i32 %i.dy, 65534
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !4  ; 2 uses
  %.not.i.i.i44 = icmp ult i32 %i.ec, 268435456
  %i.ed = lshr i32 %i.dy, 16
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = add i32 %i.eg, %i.ec
  %..i.i.i45 = select i1 %.not.i.i.i44, i32 65535, i32 65534
  %i.ei = and i32 %i.eh, %..i.i.i45               ; 2 uses
  %i.ej = getelementptr inbounds [384 x i8], ptr @g_info, i64 %i.k
  %i.ek = getelementptr inbounds [12 x i8], ptr %i.ej, i64 %i.dl ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = sub i32 %i.ei, %i.el
  %i.en = getelementptr inbounds [12 x i8], ptr @g_info_totals, i64 %i.k ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = add nsw i32 %i.em, %i.eo
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !8
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eq = getelementptr inbounds [4 x i8], ptr @g_board_size, i64 %i.k
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4
  %.not39 = icmp eq i32 %i.q, %i.er
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext56 = add i64 %0, 8589934592
  %i.es = ashr i64 %sext56, 32                    ; 2 uses
  %i.et = getelementptr [4 x i8], ptr %i.l, i64 %i.es ; 3 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  %i.ew = getelementptr i8, ptr %i.et, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = and i32 %i.ex, %i.ev                    ; 2 uses
  %i.ez = load i32, ptr %i.et, align 4, !tbaa !4  ; 2 uses
  %i.fa = shl i32 %i.ez, 1
  %i.fb = or i32 %i.fa, %i.ez
  %i.fc = xor i32 %i.fb, -1
  %i.fd = shl i32 %i.ey, 1
  %i.fe = and i32 %i.fd, %i.fc
  %i.ff = and i32 %i.fe, %i.ey                    ; 2 uses
  %i.fg = and i32 %i.ff, 65534
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !4  ; 2 uses
  %.not.i.i.i46 = icmp ult i32 %i.fj, 268435456
  %i.fk = lshr i32 %i.ff, 16
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = add i32 %i.fn, %i.fj
  %..i.i.i47 = select i1 %.not.i.i.i46, i32 65535, i32 65534
  %i.fp = and i32 %i.fo, %..i.i.i47               ; 2 uses
  %i.fq = getelementptr inbounds [384 x i8], ptr @g_info, i64 %i.k
  %i.fr = getelementptr inbounds [12 x i8], ptr %i.fq, i64 %i.es ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8
  %i.ft = sub i32 %i.fp, %i.fs
  %i.fu = getelementptr inbounds [12 x i8], ptr @g_info_totals, i64 %i.k ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8
  %i.fw = add nsw i32 %i.ft, %i.fv
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !8
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.fx = and i32 %i.bm, 65535
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4  ; 2 uses
  %.not.i.i.i48 = icmp ult i32 %i.ga, 268435456
  %i.gb = lshr i32 %i.bm, 16
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gf = add i32 %i.ge, %i.ga
  %..i.i.i49 = select i1 %.not.i.i.i48, i32 65535, i32 65534
  %i.gg = and i32 %i.gf, %..i.i.i49               ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !10
  %i.gj = sub i32 %i.gg, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !10
  %i.gm = add nsw i32 %i.gj, %i.gl
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !10
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !10
  %i.gn = load i32, ptr %i.n, align 4, !tbaa !4   ; 2 uses
  %i.go = shl i32 %i.gn, 1
  %i.gp = or i32 %i.go, %i.gn
  %i.gq = xor i32 %i.gp, -1                       ; 2 uses
  %i.gr = and i32 %i.gq, 65535
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4  ; 2 uses
  %.not.i.i.i50 = icmp ult i32 %i.gu, 268435456
  %i.gv = lshr i32 %i.gq, 16
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = add i32 %i.gy, %i.gu
  %..i.i.i51 = select i1 %.not.i.i.i50, i32 65535, i32 65534
  %i.ha = and i32 %i.gz, %..i.i.i51               ; 2 uses
  %i.hb = getelementptr inbounds [384 x i8], ptr @g_info, i64 %i.k ; 2 uses
  %i.hc = getelementptr inbounds [12 x i8], ptr %i.hb, i64 %i.m
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !10
  %i.hf = getelementptr inbounds [12 x i8], ptr @g_info_totals, i64 %i.k
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !10
  store i32 %i.ha, ptr %i.hd, align 4, !tbaa !10
  %i.hi = shl i32 %i.u, 1
  %i.hj = or i32 %i.hi, %i.u
  %i.hk = xor i32 %i.hj, -1                       ; 2 uses
  %i.hl = and i32 %i.hk, 65535
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4  ; 2 uses
  %.not.i.i.i52 = icmp ult i32 %i.ho, 268435456
  %i.hp = lshr i32 %i.hk, 16
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = add i32 %i.hs, %i.ho
  %..i.i.i53 = select i1 %.not.i.i.i52, i32 65535, i32 65534
  %i.hu = and i32 %i.ht, %..i.i.i53               ; 2 uses
  %i.hv = getelementptr inbounds [12 x i8], ptr %i.hb, i64 %i.r
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !10
  %i.hy = add i32 %i.ha, %i.hh
  %i.hz = add i32 %i.he, %i.hx
  %i.ia = sub i32 %i.hy, %i.hz
  %i.ib = add i32 %i.ia, %i.hu
  store i32 %i.ib, ptr %i.hg, align 4, !tbaa !10
  store i32 %i.hu, ptr %i.hw, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @score_and_get_first(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 %3, i32 %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.Move, align 4               ; 4 uses
  %.sroa.044.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.not = icmp eq i32 %.sroa.044.0.extract.trunc, -1
  %i.a = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit.thread

.lr.ph.preheader:                                 ; preds = %.preheader53
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.a, label %.lr.ph61.preheader, label %.loopexit.thread

.lr.ph61.preheader:                               ; preds = %.preheader
  %wide.trip.count70 = zext nneg i32 %1 to i64
  br label %.lr.ph61

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.04855 = phi i32 [ -1, %.lr.ph.preheader ], [ %.149, %bb.e ]
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = icmp eq i32 %i.c, %.sroa.044.0.extract.trunc
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10
  %i.g = icmp eq i32 %i.f, %.sroa.3.0.extract.trunc
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 450000, ptr %i.h, align 4, !tbaa !11
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.01.0.copyload = load i64, ptr %i.b, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = tail call fastcc i32 @score_move(i64 %.sroa.01.0.copyload, i32 noundef %2)
  store i32 %i.j, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.149 = phi i32 [ %i.i, %bb.c ], [ %.04855, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %indvars.iv67 = phi i64 [ 0, %.lr.ph61.preheader ], [ %indvars.iv.next68, %.lr.ph61 ] ; 3 uses
  %.04659 = phi i32 [ -50000, %.lr.ph61.preheader ], [ %spec.select52, %.lr.ph61 ] ; 2 uses
  %.25058 = phi i32 [ -1, %.lr.ph61.preheader ], [ %spec.select, %.lr.ph61 ]
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv67 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.l = tail call fastcc i32 @score_move(i64 %.sroa.0.0.copyload, i32 noundef %2) ; 3 uses
  store i32 %i.l, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !11
  %i.m = icmp sgt i32 %i.l, %.04659
  %i.n = trunc nuw nsw i64 %indvars.iv67 to i32
  %spec.select = select i1 %i.m, i32 %i.n, i32 %.25058 ; 2 uses
  %spec.select52 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %.04659)
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %.loopexit, label %.lr.ph61, !llvm.loop !14

.loopexit:                                        ; preds = %bb.e, %.lr.ph61
  %.4 = phi i32 [ %spec.select, %.lr.ph61 ], [ %.149, %bb.e ] ; 2 uses
  %i.o = icmp eq i32 %.4, -1
  br i1 %i.o, label %.loopexit.thread, label %bb.f

.loopexit.thread:                                 ; preds = %.preheader53, %.preheader, %.loopexit
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 1, ptr noundef nonnull @.str.1) #6
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.thread, %.loopexit
  %.477 = phi i32 [ -1, %.loopexit.thread ], [ %.4, %.loopexit ] ; 4 uses
  %i.p = icmp sgt i32 %1, 1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.q = sext i32 %.477 to i64
  %i.r = getelementptr inbounds [12 x i8], ptr %0, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !tbaa.struct !15
  %i.s = icmp sgt i32 %.477, 0
  br i1 %i.s, label %.lr.ph64.preheader, label %._crit_edge

.lr.ph64.preheader:                               ; preds = %bb.g
  %i.t = zext nneg i32 %.477 to i64               ; 3 uses
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

.lr.ph64.prol:                                    ; preds = %.lr.ph64.preheader, %.lr.ph64.prol
  %indvars.iv73.prol = phi i64 [ %indvars.iv.next74.prol, %.lr.ph64.prol ], [ %i.t, %.lr.ph64.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph64.prol ], [ 0, %.lr.ph64.preheader ]
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv73.prol ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false), !tbaa.struct !15
  %indvars.iv.next74.prol = add nsw i64 %indvars.iv73.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol, !llvm.loop !16

.lr.ph64.prol.loopexit:                           ; preds = %.lr.ph64.prol, %.lr.ph64.preheader
  %indvars.iv73.unr = phi i64 [ %i.t, %.lr.ph64.preheader ], [ %indvars.iv.next74.prol, %.lr.ph64.prol ]
  %i.w = icmp ult i32 %.477, 4
  br i1 %i.w, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %.lr.ph64 ], [ %indvars.iv73.unr, %.lr.ph64.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv73 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !15
  %i.z = getelementptr [12 x i8], ptr %0, i64 %indvars.iv73 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false), !tbaa.struct !15
  %i.ac = getelementptr [12 x i8], ptr %0, i64 %indvars.iv73 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = getelementptr i8, ptr %i.ac, i64 -36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !15
  %i.af = getelementptr [12 x i8], ptr %0, i64 %indvars.iv73 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -36
  %i.ah = getelementptr i8, ptr %i.af, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !15
  %indvars.iv.next74.3 = add nsw i64 %indvars.iv73, -4
  %i.ai = icmp sgt i64 %indvars.iv73, 4
  br i1 %i.ai, label %.lr.ph64, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @score_move(i64 %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %.sroa.071.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %.sroa.272.0.extract.shift = lshr i64 %0, 32
  %.sroa.272.0.extract.trunc = trunc nuw i64 %.sroa.272.0.extract.shift to i32 ; 3 uses
  %i.a = and i32 %1, 1
  %i.b = xor i32 %1, 1
  %i.c = shl i32 3, %.sroa.272.0.extract.trunc    ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 3 uses
  %i.e = getelementptr inbounds nuw [128 x i8], ptr @g_board, i64 %i.d ; 4 uses
  %sext = shl i64 %0, 32                          ; 3 uses
  %i.f = ashr exact i64 %sext, 32                 ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = xor i32 %i.h, %i.c
  store i32 %i.i, ptr %i.g, align 4, !tbaa !4
  %i.j = shl nuw i32 1, %.sroa.071.0.extract.trunc ; 4 uses
  %i.k = sext i32 %i.b to i64                     ; 3 uses
  %i.l = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.k ; 4 uses
  %i.m = ashr i64 %0, 32                          ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m ; 5 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = xor i32 %i.o, %i.j
  store i32 %i.p, ptr %i.n, align 4, !tbaa !4
  %i.q = add nsw i32 %.sroa.272.0.extract.trunc, 1 ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = xor i32 %i.t, %i.j                       ; 3 uses
  store i32 %i.u, ptr %i.s, align 4, !tbaa !4
  %i.v = ashr exact i64 %sext, 30
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 %i.v ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.y = shl i32 %i.x, 1
  %i.z = or i32 %i.y, %i.x
  %i.aa = xor i32 %i.z, -1                        ; 3 uses
  %i.ab = and i32 %i.aa, 65535
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %.not.i.i = icmp ult i32 %i.ae, 268435456
  %i.af = lshr i32 %i.aa, 16
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add i32 %i.ai, %i.ae
  %..i.i = select i1 %.not.i.i, i32 65535, i32 65534
  %i.ak = and i32 %i.aj, %..i.i
  %i.al = getelementptr inbounds nuw [384 x i8], ptr @g_info, i64 %i.d ; 3 uses
  %i.am = getelementptr inbounds [12 x i8], ptr %i.al, i64 %i.f ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !10
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !4   ; 2 uses
  %i.aq = shl i32 %i.ap, 1
  %i.ar = or i32 %i.aq, %i.ap
  %i.as = xor i32 %i.ar, -1                       ; 2 uses
  %i.at = and i32 %i.as, 65535
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %.not.i.i82 = icmp ult i32 %i.aw, 268435456
  %i.ax = lshr i32 %i.as, 16
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = add i32 %i.ba, %i.aw
  %..i.i83 = select i1 %.not.i.i82, i32 65535, i32 65534
  %i.bc = and i32 %i.bb, %..i.i83
  %i.bd = getelementptr inbounds [384 x i8], ptr @g_info, i64 %i.k ; 4 uses
  %i.be = getelementptr inbounds [12 x i8], ptr %i.bd, i64 %i.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  %i.bh = shl i32 %i.u, 1
  %i.bi = or i32 %i.bh, %i.u
  %i.bj = xor i32 %i.bi, -1                       ; 2 uses
  %i.bk = and i32 %i.bj, 65535
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4  ; 2 uses
  %.not.i.i84 = icmp ult i32 %i.bn, 268435456
  %i.bo = lshr i32 %i.bj, 16
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = add i32 %i.br, %i.bn
  %..i.i85 = select i1 %.not.i.i84, i32 65535, i32 65534
  %i.bt = and i32 %i.bs, %..i.i85
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.bd, i64 %i.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10
  %.neg76 = sub i32 %i.bw, %i.bt
  %i.bx = add i32 %i.ak, %i.bg
  %i.by = add i32 %i.ao, %i.bc
  %i.bz = sub i32 %i.bx, %i.by
  %i.ca = add i32 %i.bz, %.neg76                  ; 2 uses
  %i.cb = add nsw i32 %.sroa.071.0.extract.trunc, -1 ; 2 uses
  %.not = icmp eq i32 %i.cb, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.e, i64 %i.cc ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = and i32 %i.ch, %i.cf                    ; 2 uses
  %i.cj = load i32, ptr %i.cd, align 4, !tbaa !4  ; 2 uses
  %i.ck = shl i32 %i.cj, 1
  %i.cl = or i32 %i.ck, %i.cj
  %i.cm = xor i32 %i.cl, -1
  %i.cn = shl i32 %i.ci, 1
  %i.co = and i32 %i.cn, %i.cm
  %i.cp = and i32 %i.co, %i.ci                    ; 2 uses
  %i.cq = and i32 %i.cp, 65534
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !4  ; 2 uses
  %.not.i.i86 = icmp ult i32 %i.ct, 268435456
  %i.cu = lshr i32 %i.cp, 16
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = add i32 %i.cx, %i.ct
  %..i.i87 = select i1 %.not.i.i86, i32 65535, i32 65534
  %i.cz = and i32 %i.cy, %..i.i87
  %i.da = getelementptr inbounds [12 x i8], ptr %i.al, i64 %i.cc
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = sub i32 %i.ca, %i.db
  %i.dd = add i32 %i.dc, %i.cz
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.dd, %bb.b ], [ %i.ca, %bb.a ]
  %i.de = getelementptr i8, ptr %i.w, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = getelementptr i8, ptr %i.w, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = and i32 %i.dh, %i.df                    ; 2 uses
  %i.dj = shl i32 %i.di, 1
  %i.dk = and i32 %i.dj, %i.aa
  %i.dl = and i32 %i.dk, %i.di                    ; 2 uses
  %i.dm = and i32 %i.dl, 65534
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !4  ; 2 uses
  %.not.i.i88 = icmp ult i32 %i.dp, 268435456
  %i.dq = lshr i32 %i.dl, 16
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.du = add i32 %i.dt, %i.dp
  %..i.i89 = select i1 %.not.i.i88, i32 65535, i32 65534
  %i.dv = and i32 %i.du, %..i.i89
  %i.dw = load i32, ptr %i.am, align 4, !tbaa !8
  %i.dx = sub nsw i32 %i.dv, %i.dw
  %i.dy = add nsw i32 %i.dx, %.0                  ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @g_board_size, i64 %i.d
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %.not77 = icmp eq i32 %i.ea, %.sroa.071.0.extract.trunc
  br i1 %.not77, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %sext98 = add i64 %sext, 4294967296
  %i.eb = ashr exact i64 %sext98, 32              ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.e, i64 %i.eb ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.ef = getelementptr i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = and i32 %i.eg, %i.ee                    ; 2 uses
  %i.ei = load i32, ptr %i.ec, align 4, !tbaa !4  ; 2 uses
  %i.ej = shl i32 %i.ei, 1
  %i.ek = or i32 %i.ej, %i.ei
  %i.el = xor i32 %i.ek, -1
  %i.em = shl i32 %i.eh, 1
  %i.en = and i32 %i.em, %i.el
  %i.eo = and i32 %i.en, %i.eh                    ; 2 uses
  %i.ep = and i32 %i.eo, 65534
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 8, !tbaa !4  ; 2 uses
  %.not.i.i90 = icmp ult i32 %i.es, 268435456
  %i.et = lshr i32 %i.eo, 16
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = add i32 %i.ew, %i.es
  %..i.i91 = select i1 %.not.i.i90, i32 65535, i32 65534
  %i.ey = and i32 %i.ex, %..i.i91
  %i.ez = getelementptr inbounds [12 x i8], ptr %i.al, i64 %i.eb
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = sub i32 %i.dy, %i.fa
end_hunk_1
