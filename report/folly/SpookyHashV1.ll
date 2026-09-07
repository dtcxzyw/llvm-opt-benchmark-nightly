Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SpookyHashV1?download=true
inline.NumInlined: 65
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5folly4hash12SpookyHashV15ShortEPKvmPmS4_(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %1, 31                           ; 4 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !13     ; 3 uses
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %1, -32                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.0.0186 = phi ptr [ %i.bb, %.lr.ph ], [ %0, %bb.b ] ; 5 uses
  %.0185 = phi i64 [ %i.au, %.lr.ph ], [ -2401053088876216593, %bb.b ]
  %.0170184 = phi i64 [ %i.ar, %.lr.ph ], [ -2401053088876216593, %bb.b ]
  %.0178183 = phi i64 [ %i.ba, %.lr.ph ], [ %i.c, %bb.b ]
  %.0180182 = phi i64 [ %i.ax, %.lr.ph ], [ %i.b, %bb.b ]
  %i.g = load i64, ptr %.sroa.0.0186, align 8, !tbaa !13
  %i.h = add i64 %i.g, %.0170184                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0186, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = add i64 %i.j, %.0185                     ; 3 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 50)
  %i.m = add i64 %i.k, %i.l                       ; 2 uses
  %i.n = xor i64 %i.m, %.0180182                  ; 3 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 52)
  %i.p = add i64 %i.n, %i.o                       ; 2 uses
  %i.q = xor i64 %i.p, %.0178183                  ; 3 uses
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 30)
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = xor i64 %i.s, %i.m                       ; 3 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 41)
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = xor i64 %i.v, %i.p                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 54)
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = xor i64 %i.y, %i.s                       ; 3 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 48)
  %i.ab = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = xor i64 %i.ab, %i.v                     ; 3 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 38)
  %i.ae = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = xor i64 %i.ae, %i.y                     ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 37)
  %i.ah = add i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = xor i64 %i.ah, %i.ab                    ; 3 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 62)
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = xor i64 %i.ak, %i.ae                    ; 3 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 34)
  %i.an = add i64 %i.al, %i.am                    ; 2 uses
  %i.ao = xor i64 %i.an, %i.ah                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 5)
  %i.aq = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = xor i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 36)
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = xor i64 %i.at, %i.an                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0186, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ax = add i64 %i.aq, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0186, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13
  %i.ba = add i64 %i.at, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0186, i64 32 ; 3 uses
  %i.bc = icmp ult ptr %i.bb, %i.f
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0180.lcssa = phi i64 [ %i.b, %bb.b ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.0178.lcssa = phi i64 [ %i.c, %bb.b ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.0170.lcssa = phi i64 [ -2401053088876216593, %bb.b ], [ %i.ar, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ -2401053088876216593, %bb.b ], [ %i.au, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.b ], [ %i.bb, %.lr.ph ] ; 4 uses
  %i.bd = icmp samesign ugt i64 %i.a, 15
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.be = load i64, ptr %.sroa.0.0.lcssa, align 8, !tbaa !13
  %i.bf = add i64 %i.be, %.0170.lcssa             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %i.bi = add i64 %i.bh, %.0.lcssa                ; 3 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 50)
  %i.bk = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = xor i64 %i.bk, %.0180.lcssa             ; 3 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 52)
  %i.bn = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = xor i64 %i.bn, %.0178.lcssa             ; 3 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 30)
  %i.bq = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bk                    ; 3 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 41)
  %i.bt = add i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = xor i64 %i.bt, %i.bn                    ; 3 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 54)
  %i.bw = add i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = xor i64 %i.bw, %i.bq                    ; 3 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 48)
  %i.bz = add i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = xor i64 %i.bz, %i.bt                    ; 3 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 38)
  %i.cc = add i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = xor i64 %i.cc, %i.bw                    ; 3 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 37)
  %i.cf = add i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = xor i64 %i.cf, %i.bz                    ; 3 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 62)
  %i.ci = add i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = xor i64 %i.ci, %i.cc                    ; 3 uses
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 34)
  %i.cl = add i64 %i.cj, %i.ck
  %i.cm = xor i64 %i.cl, %i.cf                    ; 3 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 5)
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = xor i64 %i.co, %i.ci                    ; 2 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 36)
  %i.cr = add i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 16
  %i.ct = add nsw i64 %i.a, -16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.a
  %.1181 = phi i64 [ %i.co, %bb.c ], [ %.0180.lcssa, %._crit_edge ], [ %i.b, %bb.a ]
  %.1179 = phi i64 [ %i.cr, %bb.c ], [ %.0178.lcssa, %._crit_edge ], [ %i.c, %bb.a ]
  %.1171 = phi i64 [ %i.cp, %bb.c ], [ %.0170.lcssa, %._crit_edge ], [ -2401053088876216593, %bb.a ] ; 11 uses
  %.sroa.0.2 = phi ptr [ %i.cs, %bb.c ], [ %.sroa.0.0.lcssa, %._crit_edge ], [ %0, %bb.a ] ; 16 uses
  %.1 = phi i64 [ %i.ct, %bb.c ], [ %i.a, %._crit_edge ], [ %i.a, %bb.a ]
  %i.cu = shl i64 %1, 56                          ; 12 uses
  switch i64 %.1, label %bb.u [
    i64 15, label %bb.e
    i64 14, label %bb.f
    i64 13, label %bb.g
    i64 12, label %bb.h
    i64 11, label %bb.i
    i64 10, label %bb.j
    i64 9, label %bb.k
    i64 8, label %bb.l
    i64 7, label %bb.m
    i64 6, label %bb.n
    i64 5, label %bb.o
    i64 4, label %bb.p
    i64 3, label %bb.q
    i64 2, label %bb.r
    i64 1, label %bb.s
    i64 0, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !15
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 48
  %i.cz = or disjoint i64 %i.cy, %i.cu
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1169 = phi i64 [ %i.cz, %bb.e ], [ %i.cu, %bb.d ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 13
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 40
  %i.de = add i64 %i.dd, %.1169
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.2 = phi i64 [ %i.de, %bb.f ], [ %i.cu, %bb.d ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 12
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 32
  %i.dj = add i64 %i.di, %.2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.3 = phi i64 [ %i.dj, %bb.g ], [ %i.cu, %bb.d ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !20
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add i64 %.3, %i.dm
  %i.do = load i64, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.dp = add i64 %i.do, %.1171
  br label %bb.u

bb.i:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 10
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  %i.ds = zext i8 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 16
  %i.du = or disjoint i64 %i.dt, %i.cu
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.4 = phi i64 [ %i.du, %bb.i ], [ %i.cu, %bb.d ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 9
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = zext i8 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 8
  %i.dz = add nuw i64 %i.dy, %.4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.5 = phi i64 [ %i.dz, %bb.j ], [ %i.cu, %bb.d ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !15
  %i.ec = zext i8 %i.eb to i64
  %i.ed = add nuw i64 %.5, %i.ec
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.6 = phi i64 [ %i.ed, %bb.k ], [ %i.cu, %bb.d ]
  %i.ee = load i64, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.ef = add i64 %i.ee, %.1171
  br label %bb.u

bb.m:                                             ; preds = %bb.d
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 6
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15
  %i.ei = zext i8 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 48
  %i.ek = add i64 %i.ej, %.1171
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.2172 = phi i64 [ %i.ek, %bb.m ], [ %.1171, %bb.d ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 5
  %i.em = load i8, ptr %i.el, align 1, !tbaa !15
  %i.en = zext i8 %i.em to i64
  %i.eo = shl nuw nsw i64 %i.en, 40
  %i.ep = add i64 %i.eo, %.2172
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d
  %.3173 = phi i64 [ %i.ep, %bb.n ], [ %.1171, %bb.d ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !15
  %i.es = zext i8 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 32
  %i.eu = add i64 %i.et, %.3173
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %.4174 = phi i64 [ %i.eu, %bb.o ], [ %.1171, %bb.d ]
  %i.ev = load i32, ptr %.sroa.0.2, align 4, !tbaa !20
  %i.ew = zext i32 %i.ev to i64
  %i.ex = add i64 %.4174, %i.ew
  br label %bb.u

bb.q:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 16
  %i.fc = add i64 %i.fb, %.1171
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %.5175 = phi i64 [ %i.fc, %bb.q ], [ %.1171, %bb.d ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !15
  %i.ff = zext i8 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 8
  %i.fh = add i64 %i.fg, %.5175
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %.6176 = phi i64 [ %i.fh, %bb.r ], [ %.1171, %bb.d ]
  %i.fi = load i8, ptr %.sroa.0.2, align 1, !tbaa !15
  %i.fj = zext i8 %i.fi to i64
  %i.fk = add i64 %.6176, %i.fj
  br label %bb.u

bb.t:                                             ; preds = %bb.d
  %i.fl = add i64 %.1171, -2401053088876216593
  %i.fm = add i64 %i.cu, -2401053088876216593
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p, %bb.l, %bb.h, %bb.d
  %.7177 = phi i64 [ %.1171, %bb.d ], [ %i.dp, %bb.h ], [ %i.ef, %bb.l ], [ %i.ex, %bb.p ], [ %i.fk, %bb.s ], [ %i.fl, %bb.t ] ; 3 uses
  %.7 = phi i64 [ %i.cu, %bb.d ], [ %i.dn, %bb.h ], [ %.6, %bb.l ], [ %i.cu, %bb.p ], [ %i.cu, %bb.s ], [ %i.fm, %bb.t ]
  %i.fn = xor i64 %.7, %.7177
  %i.fo = tail call i64 @llvm.fshl.i64(i64 %.7177, i64 %.7177, i64 15) ; 2 uses
  %i.fp = add i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = xor i64 %i.fp, %.1181
  %i.fr = tail call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 52) ; 2 uses
  %i.fs = add i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = xor i64 %i.fs, %.1179
  %i.fu = tail call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 26) ; 2 uses
  %i.fv = add i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = xor i64 %i.fv, %i.fo
  %i.fx = tail call i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 51) ; 2 uses
  %i.fy = add i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = xor i64 %i.fy, %i.fr
  %i.ga = tail call i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 28) ; 2 uses
  %i.gb = add i64 %i.fz, %i.ga                    ; 3 uses
  %i.gc = xor i64 %i.gb, %i.fu
  %i.gd = tail call i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 9) ; 2 uses
  %i.ge = add i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = xor i64 %i.ge, %i.fx
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 47) ; 2 uses
  %i.gh = add i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = xor i64 %i.gh, %i.ga
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 54) ; 2 uses
  %i.gk = add i64 %i.gi, %i.gj                    ; 3 uses
  %i.gl = xor i64 %i.gk, %i.gd
  %i.gm = tail call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 32)
  %i.gn = add i64 %i.gl, %i.gm                    ; 3 uses
  %i.go = xor i64 %i.gn, %i.gg
  %i.gp = tail call i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 25)
  %i.gq = add i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = xor i64 %i.gq, %i.gj
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %i.gq, i64 %i.gq, i64 63) ; 2 uses
  %i.gt = add i64 %i.gr, %i.gs
  store i64 %i.gs, ptr %2, align 8, !tbaa !13
  store i64 %i.gt, ptr %3, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5folly4hash12SpookyHashV17Hash128EPKvmPmS4_(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [12 x i64], align 16              ; 17 uses
  %i.b = icmp ult i64 %1, 192
  br i1 %i.b, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly4hash12SpookyHashV15ShortEPKvmPmS4_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.c

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = urem i64 %1, 96                          ; 5 uses
  %.idx = sub nuw i64 %1, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !13     ; 4 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !13     ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.0383 = phi ptr [ %i.cl, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 13 uses
  %.0382 = phi i64 [ %i.cj, %.lr.ph ], [ -2401053088876216593, %.lr.ph.preheader ]
  %.0360381 = phi i64 [ %i.ck, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0361380 = phi i64 [ %i.cd, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %.0362379 = phi i64 [ %i.bw, %.lr.ph ], [ -2401053088876216593, %.lr.ph.preheader ]
  %.0363378 = phi i64 [ %i.bp, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %.0364377 = phi i64 [ %i.bi, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %.0365376 = phi i64 [ %i.bb, %.lr.ph ], [ -2401053088876216593, %.lr.ph.preheader ]
  %.0366375 = phi i64 [ %i.au, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %.0367374 = phi i64 [ %i.an, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %.0368373 = phi i64 [ %i.ag, %.lr.ph ], [ -2401053088876216593, %.lr.ph.preheader ]
  %.0369372 = phi i64 [ %i.ch, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0370371 = phi i64 [ %i.ca, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %i.g = load i64, ptr %.sroa.0.0383, align 8, !tbaa !13
  %i.h = add i64 %i.g, %.0370371                  ; 3 uses
  %i.i = xor i64 %.0360381, %.0368373             ; 2 uses
  %i.j = xor i64 %i.h, %.0382
  %i.k = tail call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 11)
  %i.l = add i64 %i.j, %.0369372                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0383, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = add i64 %i.n, %.0369372                  ; 3 uses
  %i.p = xor i64 %i.l, %.0367374                  ; 2 uses
  %i.q = xor i64 %i.k, %i.o
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.s = add i64 %i.q, %i.i                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0383, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13
  %i.v = add i64 %i.u, %i.i                       ; 3 uses
  %i.w = xor i64 %i.s, %.0366375                  ; 2 uses
  %i.x = xor i64 %i.r, %i.v
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 43)
  %i.z = add i64 %i.x, %i.p                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0383, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
end_hunk_0
