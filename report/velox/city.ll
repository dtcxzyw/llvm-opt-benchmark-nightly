inline.NumInlined: 141
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4absl12lts_2024011613hash_internal10CityHash32EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 25
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 13
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i64 %1, 5
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613hash_internalL13Hash32Len0to4EPKcm.exit, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa91 = phi i32 [ %i.h, %.lr.ph.i ], [ %i.n, %.lr.ph.i.1 ], [ %i.t, %.lr.ph.i.2 ], [ %i.z, %.lr.ph.i.3 ]
  %.lcssa = phi i32 [ %i.i, %.lr.ph.i ], [ %i.o, %.lr.ph.i.1 ], [ %i.u, %.lr.ph.i.2 ], [ %i.aa, %.lr.ph.i.3 ]
  %i.d = mul i32 %.lcssa91, -862048943            ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 15)
  %i.f = mul i32 %i.e, 461845907
  br label %_ZN4absl12lts_2024011613hash_internalL13Hash32Len0to4EPKcm.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.g = load i8, ptr %0, align 1, !tbaa !7
  %i.h = sext i8 %i.g to i32                      ; 3 uses
  %i.i = xor i32 %i.h, 9                          ; 2 uses
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = mul i32 %i.h, -862048943
  %i.m = sext i8 %i.k to i32
  %i.n = add i32 %i.l, %i.m                       ; 3 uses
  %i.o = xor i32 %i.n, %i.i                       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = mul i32 %i.n, -862048943
  %i.s = sext i8 %i.q to i32
  %i.t = add i32 %i.r, %i.s                       ; 3 uses
  %i.u = xor i32 %i.t, %i.o                       ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = mul i32 %i.t, -862048943
  %i.y = sext i8 %i.w to i32
  %i.z = add i32 %i.x, %i.y                       ; 2 uses
  %i.aa = xor i32 %i.z, %i.u
  br label %._crit_edge.loopexit.i

_ZN4absl12lts_2024011613hash_internalL13Hash32Len0to4EPKcm.exit: ; preds = %bb.d, %._crit_edge.loopexit.i
  %.012.lcssa.i = phi i32 [ 9, %bb.d ], [ %.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.f, %._crit_edge.loopexit.i ]
  %i.ab = trunc nuw nsw i64 %1 to i32
  %i.ac = mul i32 %i.ab, -862048943               ; 2 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 15)
  %i.ae = mul i32 %i.ad, 461845907
  %i.af = xor i32 %.012.lcssa.i, %i.ae            ; 2 uses
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 13)
  %i.ah = mul i32 %i.ag, 5
  %i.ai = add i32 %i.ah, -430675100
  %i.aj = xor i32 %i.ai, %.0.lcssa.i              ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 13)
  %i.al = mul i32 %i.ak, 5
  %i.am = add i32 %i.al, -430675100               ; 2 uses
  %i.an = lshr i32 %i.am, 16
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = mul i32 %i.ao, -2048144789              ; 2 uses
  %i.aq = lshr i32 %i.ap, 13
  %i.ar = xor i32 %i.aq, %i.ap
  %i.as = mul i32 %i.ar, -1028477387              ; 2 uses
  %i.at = lshr i32 %i.as, 16
  %i.au = xor i32 %i.at, %i.as
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.av = trunc nuw nsw i64 %1 to i32             ; 2 uses
  %i.aw = mul nuw nsw i32 %i.av, 5                ; 2 uses
  %.val15.i = load i32, ptr %0, align 1
  %i.ax = add i32 %.val15.i, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %.val14.i = load i32, ptr %i.az, align 1
  %i.ba = add i32 %.val14.i, %i.aw
  %i.bb = lshr i64 %1, 1
  %i.bc = and i64 %i.bb, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %.val.i = load i32, ptr %i.bd, align 1
  %i.be = mul i32 %i.ax, -862048943               ; 2 uses
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.be, i32 15)
  %i.bg = mul i32 %i.bf, 461845907
  %i.bh = xor i32 %i.bg, %i.aw                    ; 2 uses
  %i.bi = tail call i32 @llvm.fshl.i32(i32 %i.bh, i32 %i.bh, i32 13)
  %i.bj = mul i32 %i.bi, 5
  %i.bk = add i32 %i.bj, -430675100
  %i.bl = mul i32 %i.ba, -862048943               ; 2 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 15)
  %i.bn = mul i32 %i.bm, 461845907
  %i.bo = xor i32 %i.bk, %i.bn                    ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 13)
  %i.bq = mul i32 %i.bp, 5
  %i.br = add i32 %i.bq, -430675100
  %i.bs = mul i32 %.val.i, -862048943
  %i.bt = add i32 %i.bs, 831494105                ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 15)
  %i.bv = mul i32 %i.bu, 461845907
  %i.bw = xor i32 %i.br, %i.bv                    ; 2 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 13)
  %i.by = mul i32 %i.bx, 5
  %i.bz = add i32 %i.by, -430675100               ; 2 uses
  %i.ca = lshr i32 %i.bz, 16
  %i.cb = xor i32 %i.ca, %i.bz
  %i.cc = mul i32 %i.cb, -2048144789              ; 2 uses
  %i.cd = lshr i32 %i.cc, 13
  %i.ce = xor i32 %i.cd, %i.cc
  %i.cf = mul i32 %i.ce, -1028477387              ; 2 uses
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = xor i32 %i.cg, %i.cf
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds i8, ptr %0, i64 -4
  %i.cj = lshr i64 %1, 1                          ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %.val21.i = load i32, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val20.i = load i32, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %.val19.i = load i32, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %.val18.i = load i32, ptr %i.co, align 1
  %.val17.i = load i32, ptr %0, align 1
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %.val.i52 = load i32, ptr %i.cp, align 1
  %i.cq = trunc nuw nsw i64 %1 to i32
  %i.cr = mul i32 %.val21.i, -862048943           ; 2 uses
  %i.cs = tail call i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 15)
  %i.ct = mul i32 %i.cs, 461845907
  %i.cu = xor i32 %i.ct, %i.cq                    ; 2 uses
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 13)
  %i.cw = mul i32 %i.cv, 5
  %i.cx = add i32 %i.cw, -430675100
  %i.cy = mul i32 %.val20.i, -862048943           ; 2 uses
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 15)
  %i.da = mul i32 %i.cz, 461845907
  %i.db = xor i32 %i.cx, %i.da                    ; 2 uses
  %i.dc = tail call i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 13)
  %i.dd = mul i32 %i.dc, 5
  %i.de = add i32 %i.dd, -430675100
  %i.df = mul i32 %.val19.i, -862048943           ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 15)
  %i.dh = mul i32 %i.dg, 461845907
  %i.di = xor i32 %i.de, %i.dh                    ; 2 uses
  %i.dj = tail call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 13)
  %i.dk = mul i32 %i.dj, 5
  %i.dl = add i32 %i.dk, -430675100
  %i.dm = mul i32 %.val18.i, -862048943           ; 2 uses
  %i.dn = tail call i32 @llvm.fshl.i32(i32 %i.dm, i32 %i.dm, i32 15)
  %i.do = mul i32 %i.dn, 461845907
  %i.dp = xor i32 %i.dl, %i.do                    ; 2 uses
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 13)
  %i.dr = mul i32 %i.dq, 5
  %i.ds = add i32 %i.dr, -430675100
  %i.dt = mul i32 %.val17.i, -862048943           ; 2 uses
  %i.du = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 15)
  %i.dv = mul i32 %i.du, 461845907
  %i.dw = xor i32 %i.ds, %i.dv                    ; 2 uses
  %i.dx = tail call i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 13)
  %i.dy = mul i32 %i.dx, 5
  %i.dz = add i32 %i.dy, -430675100
  %i.ea = mul i32 %.val.i52, -862048943           ; 2 uses
  %i.eb = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 15)
  %i.ec = mul i32 %i.eb, 461845907
  %i.ed = xor i32 %i.dz, %i.ec                    ; 2 uses
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 13)
  %i.ef = mul i32 %i.ee, 5
  %i.eg = add i32 %i.ef, -430675100               ; 2 uses
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = xor i32 %i.eh, %i.eg
  %i.ej = mul i32 %i.ei, -2048144789              ; 2 uses
  %i.ek = lshr i32 %i.ej, 13
  %i.el = xor i32 %i.ek, %i.ej
  %i.em = mul i32 %i.el, -1028477387              ; 2 uses
  %i.en = lshr i32 %i.em, 16
  %i.eo = xor i32 %i.en, %i.em
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ep = trunc i64 %1 to i32                     ; 2 uses
  %i.eq = mul i32 %i.ep, -862048943               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4
  %.val51 = load i32, ptr %i.es, align 1
  %i.et = mul i32 %.val51, -862048943             ; 2 uses
  %i.eu = tail call i32 @llvm.fshl.i32(i32 %i.et, i32 %i.et, i32 15)
  %i.ev = mul i32 %i.eu, 461845907
  %i.ew = getelementptr inbounds i8, ptr %i.er, i64 -8
  %.val50 = load i32, ptr %i.ew, align 1
  %i.ex = mul i32 %.val50, -862048943             ; 2 uses
  %i.ey = tail call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 15)
  %i.ez = mul i32 %i.ey, 461845907
  %i.fa = getelementptr inbounds i8, ptr %i.er, i64 -16
  %.val49 = load i32, ptr %i.fa, align 1
  %i.fb = mul i32 %.val49, -862048943             ; 2 uses
  %i.fc = tail call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 15)
  %i.fd = mul i32 %i.fc, 461845907
  %i.fe = getelementptr inbounds i8, ptr %i.er, i64 -12
  %.val48 = load i32, ptr %i.fe, align 1
  %i.ff = mul i32 %.val48, -862048943             ; 2 uses
  %i.fg = tail call i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 15)
  %i.fh = mul i32 %i.fg, 461845907
  %i.fi = getelementptr inbounds i8, ptr %i.er, i64 -20
  %.val47 = load i32, ptr %i.fi, align 1
  %i.fj = mul i32 %.val47, -862048943             ; 2 uses
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.fj, i32 %i.fj, i32 15)
  %i.fl = mul i32 %i.fk, 461845907
  %i.fm = xor i32 %i.ev, %i.ep                    ; 2 uses
  %i.fn = tail call i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 13)
  %i.fo = mul i32 %i.fn, 5
  %i.fp = add i32 %i.fo, -430675100
  %i.fq = xor i32 %i.fp, %i.fd                    ; 2 uses
  %i.fr = tail call i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 13)
  %i.fs = mul i32 %i.fr, 5
  %i.ft = add i32 %i.fs, -430675100
  %i.fu = xor i32 %i.ez, %i.eq                    ; 2 uses
  %i.fv = tail call i32 @llvm.fshl.i32(i32 %i.fu, i32 %i.fu, i32 13)
  %i.fw = mul i32 %i.fv, 5
  %i.fx = add i32 %i.fw, -430675100
  %i.fy = xor i32 %i.fx, %i.fh                    ; 2 uses
  %i.fz = tail call i32 @llvm.fshl.i32(i32 %i.fy, i32 %i.fy, i32 13)
  %i.ga = mul i32 %i.fz, 5
  %i.gb = add i32 %i.ga, -430675100
  %i.gc = add i32 %i.fl, %i.eq                    ; 2 uses
  %i.gd = tail call i32 @llvm.fshl.i32(i32 %i.gc, i32 %i.gc, i32 13)
  %i.ge = mul i32 %i.gd, 5
  %i.gf = add i32 %i.ge, -430675100
  %i.gg = add i64 %1, -1
  %i.gh = udiv i64 %i.gg, 20
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.073 = phi i32 [ %i.ft, %bb.g ], [ %i.ho, %bb.h ]
  %.072 = phi i32 [ %i.gb, %bb.g ], [ %i.hn, %bb.h ]
  %.071 = phi i32 [ %i.gf, %bb.g ], [ %i.hl, %bb.h ]
  %.042 = phi i64 [ %i.gh, %bb.g ], [ %i.hq, %bb.h ]
  %.041 = phi ptr [ %0, %bb.g ], [ %i.hp, %bb.h ] ; 6 uses
  %.041.val = load i32, ptr %.041, align 1
  %i.gi = mul i32 %.041.val, -862048943           ; 2 uses
  %i.gj = tail call i32 @llvm.fshl.i32(i32 %i.gi, i32 %i.gi, i32 15)
  %i.gk = mul i32 %i.gj, 461845907                ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.041, i64 4
  %.val46 = load i32, ptr %i.gl, align 1          ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %.val45 = load i32, ptr %i.gm, align 1
  %i.gn = mul i32 %.val45, -862048943             ; 2 uses
  %i.go = tail call i32 @llvm.fshl.i32(i32 %i.gn, i32 %i.gn, i32 15)
  %i.gp = mul i32 %i.go, 461845907
  %i.gq = getelementptr inbounds nuw i8, ptr %.041, i64 12
  %.val44 = load i32, ptr %i.gq, align 1
  %i.gr = mul i32 %.val44, -862048943             ; 2 uses
  %i.gs = tail call i32 @llvm.fshl.i32(i32 %i.gr, i32 %i.gr, i32 15)
  %i.gt = mul i32 %i.gs, 461845907
  %i.gu = getelementptr inbounds nuw i8, ptr %.041, i64 16
  %.val = load i32, ptr %i.gu, align 1            ; 2 uses
  %i.gv = xor i32 %i.gk, %.073                    ; 2 uses
  %i.gw = tail call i32 @llvm.fshl.i32(i32 %i.gv, i32 %i.gv, i32 14)
  %i.gx = mul i32 %i.gw, 5
  %i.gy = add i32 %i.gx, -430675100
  %i.gz = add i32 %.val46, %.071                  ; 2 uses
  %i.ha = tail call i32 @llvm.fshl.i32(i32 %i.gz, i32 %i.gz, i32 13)
  %i.hb = mul i32 %i.ha, -862048943
  %i.hc = add i32 %i.gp, %.072                    ; 2 uses
  %i.hd = tail call i32 @llvm.fshl.i32(i32 %i.hc, i32 %i.hc, i32 14)
  %i.he = mul i32 %i.hd, 5
  %i.hf = add i32 %i.he, -430675100
  %i.hg = add i32 %i.gt, %.val46
  %i.hh = xor i32 %i.gy, %i.hg                    ; 2 uses
  %i.hi = tail call i32 @llvm.fshl.i32(i32 %i.hh, i32 %i.hh, i32 13)
  %i.hj = xor i32 %i.hf, %.val
  %i.hk = tail call noundef i32 @llvm.bswap.i32(i32 %i.hj)
  %i.hl = mul i32 %i.hk, 5                        ; 3 uses
  %reass.add = add i32 %i.hi, %.val
  %reass.mul = mul i32 %reass.add, 5
  %i.hm = add i32 %reass.mul, -430675100
  %i.hn = tail call noundef i32 @llvm.bswap.i32(i32 %i.hm) ; 3 uses
  %i.ho = add i32 %i.hb, %i.gk                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.041, i64 20
  %i.hq = add nsw i64 %.042, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hq, 0
  br i1 %.not, label %bb.i, label %bb.h, !llvm.loop !8

bb.i:                                             ; preds = %bb.h
  %i.hr = tail call i32 @llvm.fshl.i32(i32 %i.hn, i32 %i.hn, i32 21)
  %i.hs = mul i32 %i.hr, -862048943               ; 2 uses
  %i.ht = tail call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.hs, i32 15)
  %i.hu = mul i32 %i.ht, -862048943
  %i.hv = tail call i32 @llvm.fshl.i32(i32 %i.hl, i32 %i.hl, i32 21)
  %i.hw = mul i32 %i.hv, -862048943               ; 2 uses
  %i.hx = tail call i32 @llvm.fshl.i32(i32 %i.hw, i32 %i.hw, i32 15)
  %i.hy = add i32 %i.hu, %i.ho                    ; 2 uses
  %i.hz = tail call i32 @llvm.fshl.i32(i32 %i.hy, i32 %i.hy, i32 13)
  %i.ia = mul i32 %i.hz, 5
  %i.ib = add i32 %i.ia, -430675100               ; 2 uses
  %i.ic = tail call i32 @llvm.fshl.i32(i32 %i.ib, i32 %i.ib, i32 15)
  %i.id = add i32 %i.ic, %i.hx
  %i.ie = mul i32 %i.id, -862048943               ; 2 uses
  %i.if = tail call i32 @llvm.fshl.i32(i32 %i.ie, i32 %i.ie, i32 13)
  %i.ig = mul i32 %i.if, 5
  %i.ih = add i32 %i.ig, -430675100               ; 2 uses
  %i.ii = tail call i32 @llvm.fshl.i32(i32 %i.ih, i32 %i.ih, i32 15)
  %i.ij = mul i32 %i.ii, -862048943
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2024011613hash_internalL13Hash32Len0to4EPKcm.exit, %bb.i
  %.0 = phi i32 [ %i.ij, %bb.i ], [ %i.eo, %bb.f ], [ %i.au, %_ZN4absl12lts_2024011613hash_internalL13Hash32Len0to4EPKcm.exit ], [ %i.ch, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4absl12lts_2024011613hash_internal10CityHash64EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 33
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 17
  br i1 %i.b, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %1, 7
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = shl nuw nsw i64 %1, 1
  %i.e = add nuw nsw i64 %i.d, -7286425919675154353 ; 5 uses
  %.val37.i = load i64, ptr %0, align 1
  %i.f = add i64 %.val37.i, -7286425919675154353  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %.val36.i = load i64, ptr %i.h, align 1         ; 3 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.val36.i, i64 %.val36.i, i64 27)
  %i.j = mul i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.f
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 39)
  %i.m = add i64 %i.l, %.val36.i
  %i.n = mul i64 %i.m, %i.e                       ; 2 uses
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, %i.e                       ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %i.n, %i.q
  %i.s = xor i64 %i.r, %i.p
  %i.t = mul i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, %i.e
  br label %_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit

bb.e:                                             ; preds = %bb.c
  %i.x = icmp samesign ugt i64 %1, 3
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw nsw i64 %1, 1
  %i.z = add nuw nsw i64 %i.y, -7286425919675154353 ; 3 uses
  %.val35.i = load i32, ptr %0, align 1
  %i.aa = zext i32 %.val35.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = or disjoint i64 %i.ab, %1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %.val.i = load i32, ptr %i.ae, align 1
  %i.af = zext i32 %.val.i to i64                 ; 2 uses
  %i.ag = xor i64 %i.ac, %i.af
  %i.ah = mul i64 %i.ag, %i.z                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 47
  %i.aj = xor i64 %i.ai, %i.af
  %i.ak = xor i64 %i.aj, %i.ah
  %i.al = mul i64 %i.ak, %i.z                     ; 2 uses
  %i.am = lshr i64 %i.al, 47
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, %i.z
  br label %_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %0, align 1, !tbaa !7
  %i.aq = lshr i64 %1, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7
  %i.at = getelementptr i8, ptr %0, i64 %1
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !7
  %i.aw = zext i8 %i.ap to i64
  %i.ax = zext i8 %i.as to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = zext i8 %i.av to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = or disjoint i64 %i.bb, %1
  %i.bd = mul i64 %i.az, -7286425919675154353
  %i.be = mul i64 %i.bc, -4348849565147123417
  %i.bf = xor i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 47
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, -7286425919675154353
  br label %_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit

bb.i:                                             ; preds = %bb.b
  %i.bj = shl nuw nsw i64 %1, 1
  %i.bk = add nuw nsw i64 %i.bj, -7286425919675154353 ; 4 uses
  %.val17.i = load i64, ptr %0, align 1
  %i.bl = mul i64 %.val17.i, -5435081209227447693 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.i = load i64, ptr %i.bm, align 1        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.val15.i = load i64, ptr %i.bo, align 1
  %i.bp = mul i64 %.val15.i, %i.bk                ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.val.i55 = load i64, ptr %i.bq, align 1
  %i.br = mul i64 %.val.i55, -7286425919675154353
  %i.bs = add i64 %i.bl, %.val16.i                ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 34)
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = add i64 %i.bv, %i.br
  %i.bx = add i64 %.val16.i, -7286425919675154353 ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 46)
  %i.bz = add i64 %i.by, %i.bl
  %i.ca = add i64 %i.bz, %i.bp                    ; 2 uses
  %i.cb = xor i64 %i.bw, %i.ca
  %i.cc = mul i64 %i.cb, %i.bk                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 47
  %i.ce = xor i64 %i.ca, %i.cd
  %i.cf = xor i64 %i.ce, %i.cc
  %i.cg = mul i64 %i.cf, %i.bk                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 47
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = mul i64 %i.ci, %i.bk
  br label %_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit

bb.j:                                             ; preds = %bb.a
  %i.ck = icmp ult i64 %1, 65
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = shl nuw nsw i64 %1, 1
  %i.cm = add nuw nsw i64 %i.cl, -7286425919675154353 ; 6 uses
  %.val55.i = load i64, ptr %0, align 1
  %i.cn = mul i64 %.val55.i, -7286425919675154353
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val54.i = load i64, ptr %i.co, align 1        ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -24
  %.val53.i = load i64, ptr %i.cq, align 1        ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -32
  %.val52.i = load i64, ptr %i.cr, align 1        ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val51.i = load i64, ptr %i.cs, align 1
  %i.ct = mul i64 %.val51.i, -7286425919675154353
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val50.i = load i64, ptr %i.cu, align 1
  %i.cv = mul i64 %.val50.i, 9                    ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %.val49.i = load i64, ptr %i.cw, align 1        ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 -16
  %.val.i56 = load i64, ptr %i.cx, align 1
  %i.cy = mul i64 %.val.i56, %i.cm                ; 2 uses
  %i.cz = add i64 %.val49.i, %i.cn                ; 3 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 21)
  %i.db = tail call i64 @llvm.fshl.i64(i64 %.val54.i, i64 %.val54.i, i64 34)
  %i.dc = add i64 %i.db, %.val53.i
  %i.dd = mul i64 %i.dc, 9
  %i.de = add i64 %i.da, %i.dd
  %i.df = xor i64 %i.cz, %.val52.i
  %i.dg = add i64 %i.cv, 1
  %i.dh = add i64 %i.dg, %i.df                    ; 2 uses
  %i.di = add i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, %i.cm
  %i.dk = tail call noundef i64 @llvm.bswap.i64(i64 %i.dj)
  %i.dl = add i64 %i.cv, %i.ct                    ; 3 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 22)
  %i.dn = add i64 %i.dm, %.val53.i                ; 2 uses
  %i.do = add i64 %i.dh, %i.cy
  %i.dp = add i64 %i.do, %i.dk
  %i.dq = mul i64 %i.dp, %i.cm
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dq)
  %i.ds = add i64 %i.dl, %.val53.i                ; 2 uses
  %i.dt = add i64 %i.ds, %.val49.i
  %i.du = add i64 %i.dt, %i.dn
  %i.dv = add i64 %i.du, %i.dr
  %i.dw = mul i64 %i.dv, %i.cm
  %i.dx = tail call noundef i64 @llvm.bswap.i64(i64 %i.dw)
  %i.dy = add i64 %i.ds, %.val54.i
  %i.dz = add i64 %i.dy, %i.dx
  %i.ea = mul i64 %i.dz, %i.cm
  %i.eb = add i64 %i.cy, %.val52.i
  %i.ec = add i64 %i.eb, %i.ea                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 47
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = mul i64 %i.ee, %i.cm
  %i.eg = add i64 %i.ef, %i.dn
  br label %_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit

bb.l:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -40
  %.val54 = load i64, ptr %i.ei, align 1          ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -16
  %.val53 = load i64, ptr %i.ej, align 1          ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 -56
  %.val52 = load i64, ptr %i.ek, align 1          ; 2 uses
  %i.el = add i64 %.val52, %.val53                ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.eh, i64 -48
  %.val51 = load i64, ptr %i.em, align 1          ; 2 uses
  %i.en = add i64 %.val51, %1
  %i.eo = getelementptr inbounds i8, ptr %i.eh, i64 -24
  %.val50 = load i64, ptr %i.eo, align 1          ; 3 uses
  %i.ep = xor i64 %.val50, %i.en
  %i.eq = mul i64 %i.ep, -7070675565921424023     ; 2 uses
  %i.er = lshr i64 %i.eq, 47
  %i.es = xor i64 %.val50, %i.er
  %i.et = xor i64 %i.es, %i.eq
  %i.eu = mul i64 %i.et, -7070675565921424023     ; 2 uses
  %i.ev = lshr i64 %i.eu, 47
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = mul i64 %i.ew, -7070675565921424023     ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.eh, i64 -64
  %.val7.i = load i64, ptr %i.ey, align 1
  %i.ez = add i64 %.val7.i, %1                    ; 3 uses
  %i.fa = add i64 %.val54, %i.ez
  %i.fb = add i64 %i.fa, %i.ex                    ; 2 uses
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 43)
  %i.fd = add i64 %i.ez, %.val52
  %i.fe = add i64 %i.fd, %.val51                  ; 3 uses
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 20)
  %i.fg = add i64 %i.fe, %.val54
  %i.fh = add i64 %i.ff, %i.ez
  %i.fi = add i64 %i.fh, %i.fc
  %i.fj = getelementptr inbounds i8, ptr %i.eh, i64 -32
  %i.fk = add i64 %i.el, -5435081209227447693
  %.val7.i58 = load i64, ptr %i.fj, align 1
  %i.fl = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %.val.i61 = load i64, ptr %i.fl, align 1        ; 2 uses
  %i.fm = add i64 %i.fk, %.val7.i58               ; 3 uses
  %i.fn = add i64 %i.fm, %.val54
  %i.fo = add i64 %i.fn, %.val.i61                ; 2 uses
  %i.fp = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 43)
  %i.fq = add i64 %i.fm, %.val50
  %i.fr = add i64 %i.fq, %.val53                  ; 3 uses
  %i.fs = tail call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 20)
  %i.ft = add i64 %i.fr, %.val.i61
  %i.fu = add i64 %i.fs, %i.fm
  %i.fv = add i64 %i.fu, %i.fp
  %i.fw = mul i64 %.val54, -5435081209227447693
  %.val49 = load i64, ptr %0, align 1
  %i.fx = add i64 %.val49, %i.fw
  %i.fy = add i64 %1, -1
  %i.fz = and i64 %i.fy, -64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.7.0 = phi i64 [ %i.fv, %bb.l ], [ %i.ht, %bb.m ] ; 2 uses
  %.sroa.078.0 = phi i64 [ %i.ft, %bb.l ], [ %i.hr, %bb.m ] ; 2 uses
  %.sroa.083.0 = phi i64 [ %i.fg, %bb.l ], [ %i.hd, %bb.m ] ; 2 uses
  %.sroa.786.0 = phi i64 [ %i.fi, %bb.l ], [ %i.hf, %bb.m ] ; 2 uses
  %.0100 = phi i64 [ %i.ex, %bb.l ], [ %i.gl, %bb.m ]
  %.099 = phi i64 [ %i.fx, %bb.l ], [ %i.gr, %bb.m ]
  %.043 = phi ptr [ %0, %bb.l ], [ %i.hu, %bb.m ] ; 9 uses
  %.042 = phi i64 [ %i.fz, %bb.l ], [ %i.hv, %bb.m ]
  %.0 = phi i64 [ %i.el, %bb.l ], [ %i.go, %bb.m ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.043, i64 8
  %.val48 = load i64, ptr %i.ga, align 1          ; 2 uses
  %i.gb = add i64 %.099, %.sroa.083.0
  %i.gc = add i64 %i.gb, %.0
  %i.gd = add i64 %i.gc, %.val48                  ; 2 uses
  %i.ge = tail call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 27)
  %i.gf = mul i64 %i.ge, -5435081209227447693
  %i.gg = add i64 %.0, %.sroa.786.0
  %i.gh = getelementptr inbounds nuw i8, ptr %.043, i64 48
  %.val47 = load i64, ptr %i.gh, align 1          ; 2 uses
  %i.gi = add i64 %i.gg, %.val47                  ; 2 uses
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 22)
  %i.gk = mul i64 %i.gj, -5435081209227447693
  %i.gl = xor i64 %i.gf, %.sroa.7.0               ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.043, i64 40
  %.val46 = load i64, ptr %i.gm, align 1          ; 2 uses
  %i.gn = add i64 %.val46, %.sroa.083.0
  %i.go = add i64 %i.gn, %i.gk                    ; 4 uses
  %i.gp = add i64 %.0100, %.sroa.078.0            ; 2 uses
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 31)
  %i.gr = mul i64 %i.gq, -5435081209227447693     ; 3 uses
  %i.gs = mul i64 %.sroa.786.0, -5435081209227447693
  %.val7.i64 = load i64, ptr %.043, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.043, i64 16
  %.val5.i66 = load i64, ptr %i.gt, align 1       ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.043, i64 24
  %.val.i67 = load i64, ptr %i.gu, align 1        ; 2 uses
  %i.gv = add i64 %.val7.i64, %i.gs               ; 3 uses
  %i.gw = add i64 %i.gv, %.sroa.078.0
  %i.gx = add i64 %i.gw, %i.gl
  %i.gy = add i64 %i.gx, %.val.i67                ; 2 uses
  %i.gz = tail call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 43)
  %i.ha = add i64 %i.gv, %.val48
  %i.hb = add i64 %i.ha, %.val5.i66               ; 3 uses
  %i.hc = tail call i64 @llvm.fshl.i64(i64 %i.hb, i64 %i.hb, i64 20)
  %i.hd = add i64 %i.hb, %.val.i67                ; 2 uses
  %i.he = add i64 %i.hc, %i.gv
  %i.hf = add i64 %i.he, %i.gz                    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.043, i64 32
  %i.hh = add i64 %i.gr, %.sroa.7.0
  %i.hi = add i64 %i.go, %.val5.i66
  %.val7.i70 = load i64, ptr %i.hg, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.043, i64 56
  %.val.i73 = load i64, ptr %i.hj, align 1        ; 2 uses
  %i.hk = add i64 %i.hh, %.val7.i70               ; 3 uses
  %i.hl = add i64 %i.hi, %i.hk
  %i.hm = add i64 %i.hl, %.val.i73                ; 2 uses
  %i.hn = tail call i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 43)
  %i.ho = add i64 %i.hk, %.val46
  %i.hp = add i64 %i.ho, %.val47                  ; 3 uses
  %i.hq = tail call i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 20)
  %i.hr = add i64 %i.hp, %.val.i73                ; 3 uses
  %i.hs = add i64 %i.hq, %i.hk
  %i.ht = add i64 %i.hs, %i.hn                    ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.043, i64 64
  %i.hv = add i64 %.042, -64                      ; 2 uses
  %.not = icmp eq i64 %i.hv, 0
  br i1 %.not, label %bb.n, label %bb.m, !llvm.loop !10

bb.n:                                             ; preds = %bb.m
  %i.hw = xor i64 %i.hr, %i.hd
  %i.hx = mul i64 %i.hw, -7070675565921424023     ; 2 uses
  %i.hy = lshr i64 %i.hx, 47
  %i.hz = xor i64 %i.hr, %i.hy
  %i.ia = xor i64 %i.hz, %i.hx
  %i.ib = mul i64 %i.ia, -7070675565921424023     ; 2 uses
  %i.ic = lshr i64 %i.ib, 47
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = mul i64 %i.id, -7070675565921424023
  %i.if = lshr i64 %i.go, 47
  %i.ig = xor i64 %i.if, %i.go
  %i.ih = mul i64 %i.ig, -5435081209227447693
  %i.ii = add i64 %i.ih, %i.gl
  %i.ij = add i64 %i.ii, %i.ie
  %i.ik = xor i64 %i.ht, %i.hf
  %i.il = mul i64 %i.ik, -7070675565921424023     ; 2 uses
  %i.im = lshr i64 %i.il, 47
  %i.in = xor i64 %i.ht, %i.im
  %i.io = xor i64 %i.in, %i.il
  %i.ip = mul i64 %i.io, -7070675565921424023     ; 2 uses
  %i.iq = lshr i64 %i.ip, 47
  %i.ir = xor i64 %i.iq, %i.ip
  %i.is = mul i64 %i.ir, -7070675565921424023
  %i.it = add i64 %i.is, %i.gr                    ; 2 uses
  %i.iu = xor i64 %i.it, %i.ij
  %i.iv = mul i64 %i.iu, -7070675565921424023     ; 2 uses
  %i.iw = lshr i64 %i.iv, 47
  %i.ix = xor i64 %i.it, %i.iw
  %i.iy = xor i64 %i.ix, %i.iv
  %i.iz = mul i64 %i.iy, -7070675565921424023     ; 2 uses
  %i.ja = lshr i64 %i.iz, 47
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = mul i64 %i.jb, -7070675565921424023
  br label %_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit

_ZN4absl12lts_2024011613hash_internalL12HashLen0to16EPKcm.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.n, %bb.k, %bb.i
  %.044 = phi i64 [ %i.jc, %bb.n ], [ %i.cj, %bb.i ], [ %i.eg, %bb.k ], [ %i.w, %bb.d ], [ %i.ao, %bb.f ], [ %i.bi, %bb.h ], [ -7286425919675154353, %bb.g ]
  ret i64 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4absl12lts_2024011613hash_internal18CityHash64WithSeedEPKcmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal10CityHash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  %i.b = add i64 %i.a, 7286425919675154353
  %i.c = xor i64 %i.b, %2
  %i.d = mul i64 %i.c, -7070675565921424023       ; 2 uses
  %i.e = lshr i64 %i.d, 47
  %i.f = xor i64 %2, %i.e
  %i.g = xor i64 %i.f, %i.d
  %i.h = mul i64 %i.g, -7070675565921424023       ; 2 uses
  %i.i = lshr i64 %i.h, 47
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -7070675565921424023
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4absl12lts_2024011613hash_internal19CityHash64WithSeedsEPKcmmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal10CityHash64EPKcm(ptr noundef %0, i64 noundef %1)
  %i.b = sub i64 %i.a, %2
  %i.c = xor i64 %i.b, %3
  %i.d = mul i64 %i.c, -7070675565921424023       ; 2 uses
  %i.e = lshr i64 %i.d, 47
  %i.f = xor i64 %3, %i.e
  %i.g = xor i64 %i.f, %i.d
  %i.h = mul i64 %i.g, -7070675565921424023       ; 2 uses
  %i.i = lshr i64 %i.h, 47
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -7070675565921424023
  ret i64 %i.k
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
end_hunk_0
