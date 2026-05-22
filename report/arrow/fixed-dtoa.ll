inline.NumInlined: 53
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef %0, i32 noundef %1, ptr captures(none) %2, i32 %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = and i64 %i.a, 4503599627370495           ; 2 uses
  %i.c = and i64 %i.a, 9218868437227405312
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.e = or disjoint i64 %i.b, 4503599627370496
  %.0.i = select i1 %i.d, i64 %i.b, i64 %i.e      ; 7 uses
  %i.f = lshr i64 %i.a, 52
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 2047
  %i.i = add nsw i32 %i.h, -1075
  %.0.i98 = select i1 %i.d, i32 -1074, i32 %i.i   ; 12 uses
  %i.j = icmp slt i32 %.0.i98, 21
  %i.k = icmp slt i32 %1, 21
  %or.cond.not = and i1 %i.k, %i.j                ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.l = icmp sgt i32 %.0.i98, 11
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i32 %.0.i98, 17
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %.0.i98, -17
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 %.0.i, %i.o              ; 2 uses
  %i.q = udiv i64 %i.p, 762939453125
  %i.r = urem i64 %i.p, 762939453125
  %i.s = shl nuw nsw i64 %i.r, 17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = sub nuw nsw i32 17, %.0.i98
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 762939453125, %i.u       ; 2 uses
  %i.w = udiv i64 %.0.i, %i.v
  %i.x = urem i64 %.0.i, %i.v
  %i.y = zext nneg i32 %.0.i98 to i64
  %i.z = shl nuw nsw i64 %i.x, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.094 = phi i64 [ %i.s, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %.093.in = phi i64 [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %.not27.i = icmp eq i64 %.093.in, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %.093 = trunc nuw nsw i64 %.093.in to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.029.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %.093, %.lr.ph.i.preheader ] ; 3 uses
  %.02228.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.aa = urem i32 %.029.i, 10
  %i.ab = udiv i32 %.029.i, 10
  %i.ac = trunc nuw nsw i32 %i.aa to i8
  %i.ad = or disjoint i8 %i.ac, 48
  %i.ae = load i32, ptr %4, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ae, %.02228.i
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !7
  %i.ai = add nuw nsw i32 %.02228.i, 1            ; 2 uses
  %.not.i = icmp ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.pre153 = load i32, ptr %4, align 4, !tbaa !3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.aj = phi i32 [ 0, %bb.f ], [ %.pre153, %._crit_edge.i.loopexit ] ; 3 uses
  %.022.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.ai, %._crit_edge.i.loopexit ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, %.022.lcssa.i        ; 2 uses
  %.02030.i = add nsw i32 %i.ak, -1               ; 2 uses
  %i.al = icmp slt i32 %i.aj, %.02030.i
  br i1 %i.al, label %.lr.ph34.preheader.i, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.am = sext i32 %.02030.i to i64
  %i.an = sext i32 %i.aj to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.an, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.am, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !7
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !7
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.as, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !10

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %4, align 4, !tbaa !3
  %.pre41.i = add nsw i32 %.pre.i, %.022.lcssa.i
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre-phi.i = phi i32 [ %.pre41.i, %._crit_edge35.loopexit.i ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  store i32 %.pre-phi.i, ptr %4, align 4, !tbaa !3
  %i.at = udiv i64 %.094, 100000000000000
  %.lhs.trunc = trunc nuw nsw i64 %i.at to i16    ; 3 uses
  %i.au = urem i16 %.lhs.trunc, 10
  %i.av = trunc nuw nsw i16 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = sext i32 %.pre-phi.i to i64
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !7
  %i.ba = udiv i16 %.lhs.trunc, 10
  %i.bb = urem i16 %i.ba, 10
  %i.bc = trunc nuw nsw i16 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = load i32, ptr %4, align 4, !tbaa !3
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %2, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  store i8 %i.bd, ptr %i.bh, align 1, !tbaa !7
  %i.bi = udiv i16 %.lhs.trunc, 100
  %i.bj = urem i16 %i.bi, 10
  %i.bk = trunc nuw nsw i16 %i.bj to i8
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = load i32, ptr %4, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !7
  %i.bp = udiv i64 %.094, 10000000
  %i.bq = urem i64 %i.bp, 10000000
  %i.br = trunc nuw nsw i64 %i.bq to i32          ; 7 uses
  %i.bs = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.bt = add nsw i32 %i.bs, 3
  store i32 %i.bt, ptr %4, align 4, !tbaa !3
  %i.bu = urem i32 %i.br, 10
  %i.bv = trunc nuw nsw i32 %i.bu to i8
  %i.bw = or disjoint i8 %i.bv, 48
  %i.bx = sext i32 %i.bs to i64
  %i.by = getelementptr i8, ptr %2, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 9
  store i8 %i.bw, ptr %i.bz, align 1, !tbaa !7
  %i.ca = udiv i32 %i.br, 10
  %i.cb = urem i32 %i.ca, 10
  %i.cc = trunc nuw nsw i32 %i.cb to i8
  %i.cd = or disjoint i8 %i.cc, 48
  %i.ce = load i32, ptr %4, align 4, !tbaa !3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %2, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 5
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !7
  %i.ci = udiv i32 %i.br, 100
  %i.cj = urem i32 %i.ci, 10
  %i.ck = trunc nuw nsw i32 %i.cj to i8
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = load i32, ptr %4, align 4, !tbaa !3
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %2, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  store i8 %i.cl, ptr %i.cp, align 1, !tbaa !7
  %i.cq = udiv i32 %i.br, 1000
  %.lhs.trunc30.i = trunc nuw nsw i32 %i.cq to i16
  %i.cr = urem i16 %.lhs.trunc30.i, 10
  %i.cs = trunc nuw nsw i16 %i.cr to i8
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = load i32, ptr %4, align 4, !tbaa !3
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %2, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 3
  store i8 %i.ct, ptr %i.cx, align 1, !tbaa !7
  %i.cy = udiv i32 %i.br, 10000
  %.lhs.trunc32.i = trunc nuw nsw i32 %i.cy to i16
  %i.cz = urem i16 %.lhs.trunc32.i, 10
  %i.da = trunc nuw nsw i16 %i.cz to i8
  %i.db = or disjoint i8 %i.da, 48
  %i.dc = load i32, ptr %4, align 4, !tbaa !3
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 2
  store i8 %i.db, ptr %i.df, align 1, !tbaa !7
  %i.dg = udiv i32 %i.br, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.dg to i8
  %i.dh = urem i8 %.lhs.trunc34.i, 10
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = load i32, ptr %4, align 4, !tbaa !3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr %2, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  store i8 %i.di, ptr %i.dm, align 1, !tbaa !7
  %i.dn = udiv i32 %i.br, 1000000
  %i.do = trunc nuw nsw i32 %i.dn to i8
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = load i32, ptr %4, align 4, !tbaa !3
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %2, i64 %i.dr
  store i8 %i.dp, ptr %i.ds, align 1, !tbaa !7
  %i.dt = urem i64 %.094, 10000000
  %i.du = trunc nuw nsw i64 %i.dt to i32          ; 7 uses
  %i.dv = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.dw = add nsw i32 %i.dv, 7
  store i32 %i.dw, ptr %4, align 4, !tbaa !3
  %i.dx = urem i32 %i.du, 10
  %i.dy = trunc nuw nsw i32 %i.dx to i8
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = sext i32 %i.dv to i64
  %i.eb = getelementptr i8, ptr %2, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 13
  store i8 %i.dz, ptr %i.ec, align 1, !tbaa !7
  %i.ed = udiv i32 %i.du, 10
  %i.ee = urem i32 %i.ed, 10
  %i.ef = trunc nuw nsw i32 %i.ee to i8
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = load i32, ptr %4, align 4, !tbaa !3
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %2, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 5
  store i8 %i.eg, ptr %i.ek, align 1, !tbaa !7
  %i.el = udiv i32 %i.du, 100
  %i.em = urem i32 %i.el, 10
  %i.en = trunc nuw nsw i32 %i.em to i8
  %i.eo = or disjoint i8 %i.en, 48
  %i.ep = load i32, ptr %4, align 4, !tbaa !3
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %2, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 4
  store i8 %i.eo, ptr %i.es, align 1, !tbaa !7
  %i.et = udiv i32 %i.du, 1000
  %.lhs.trunc36.i = trunc nuw nsw i32 %i.et to i16
  %i.eu = urem i16 %.lhs.trunc36.i, 10
  %i.ev = trunc nuw nsw i16 %i.eu to i8
  %i.ew = or disjoint i8 %i.ev, 48
  %i.ex = load i32, ptr %4, align 4, !tbaa !3
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %2, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 3
  store i8 %i.ew, ptr %i.fa, align 1, !tbaa !7
  %i.fb = udiv i32 %i.du, 10000
  %.lhs.trunc38.i = trunc nuw nsw i32 %i.fb to i16
  %i.fc = urem i16 %.lhs.trunc38.i, 10
  %i.fd = trunc nuw nsw i16 %i.fc to i8
  %i.fe = or disjoint i8 %i.fd, 48
  %i.ff = load i32, ptr %4, align 4, !tbaa !3
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr i8, ptr %2, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 2
  store i8 %i.fe, ptr %i.fi, align 1, !tbaa !7
  %i.fj = udiv i32 %i.du, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.fj to i8
  %i.fk = urem i8 %.lhs.trunc40.i, 10
  %i.fl = or disjoint i8 %i.fk, 48
  %i.fm = load i32, ptr %4, align 4, !tbaa !3
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr i8, ptr %2, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 1
  store i8 %i.fl, ptr %i.fp, align 1, !tbaa !7
  %i.fq = udiv i32 %i.du, 1000000
  %i.fr = trunc nuw nsw i32 %i.fq to i8
  %i.fs = or disjoint i8 %i.fr, 48
  %i.ft = load i32, ptr %4, align 4, !tbaa !3
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %2, i64 %i.fu
  store i8 %i.fs, ptr %i.fv, align 1, !tbaa !7
  %i.fw = load i32, ptr %4, align 4, !tbaa !3
  %i.fx = add nsw i32 %i.fw, 7                    ; 2 uses
  store i32 %i.fx, ptr %4, align 4, !tbaa !3
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.fy = icmp sgt i32 %.0.i98, -1
  br i1 %i.fy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fz = zext nneg i32 %.0.i98 to i64
  %i.ga = shl nuw i64 %.0.i, %i.fz
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.ga, ptr %2, ptr noundef nonnull %4)
  %i.gb = load i32, ptr %4, align 4, !tbaa !3
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.gc = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.gc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gd = sub nsw i32 0, %.0.i98
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = lshr i64 %.0.i, %i.ge                   ; 5 uses
  %i.gg = shl i64 %i.gf, %i.ge
  %i.gh = sub i64 %.0.i, %i.gg                    ; 2 uses
  %i.gi = icmp samesign ugt i64 %i.gf, 4294967295
  br i1 %i.gi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.gf, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !3
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.gf, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.gj = trunc nuw i64 %i.gf to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.gl, %.lr.ph.i100 ], [ %i.gj, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gs, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.gk = urem i32 %.029.i101, 10
  %i.gl = udiv i32 %.029.i101, 10
  %i.gm = trunc nuw nsw i32 %i.gk to i8
  %i.gn = or disjoint i8 %i.gm, 48
  %i.go = load i32, ptr %4, align 4, !tbaa !3
  %i.gp = add nsw i32 %i.go, %.02228.i102
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %2, i64 %i.gq
  store i8 %i.gn, ptr %i.gr, align 1, !tbaa !7
  %i.gs = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !8

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !3
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.gt = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.gs, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gu = add nsw i32 %i.gt, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gu, -1            ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %.02030.i106
  br i1 %i.gv, label %.lr.ph34.preheader.i108, label %bb.m

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.gw = sext i32 %.02030.i106 to i64
  %i.gx = sext i32 %i.gt to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.gx, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.gw, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !7
  %i.ha = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !7
  store i8 %i.hb, ptr %i.gy, align 1, !tbaa !7
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !7
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.hc, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !10

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !3
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %i.hd = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gu, %._crit_edge.i104 ] ; 2 uses
  store i32 %i.hd, ptr %4, align 4, !tbaa !3
  br label %bb.p

bb.n:                                             ; preds = %bb.i
  %i.he = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.he, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !7
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.hf = sub nsw i32 0, %1
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit, %bb.o, %bb.h
  %.sink = phi i32 [ %i.gb, %bb.h ], [ %i.hf, %bb.o ], [ %i.fx, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ]
  store i32 %.sink, ptr %5, align 4, !tbaa !3
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.k, %bb.m
  %.sink168 = phi i32 [ %.pre152, %bb.k ], [ %i.hd, %bb.m ], [ 0, %bb.n ]
  %.0.i.sink = phi i64 [ %i.gh, %bb.k ], [ %i.gh, %bb.m ], [ %.0.i, %bb.n ]
  store i32 %.sink168, ptr %5, align 4, !tbaa !3
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i.sink, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.sink.split
  %.pr.i = load i32, ptr %4, align 4, !tbaa !3    ; 5 uses
  %i.hg = icmp sgt i32 %.pr.i, 0
  br i1 %i.hg, label %.lr.ph.preheader.i, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hh = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.hh, -1 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !7
  %i.hk = icmp eq i8 %i.hj, 48
  br i1 %i.hk, label %.lr.ph.preheader, label %.lr.ph30.preheader.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.hl = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.hl, ptr %4, align 4, !tbaa !3
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !11

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !11

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.hm = phi i32 [ %i.hl, %.lr.ph.i118.lr.ph ], [ %i.hq, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !7
  %i.hp = icmp eq i8 %i.ho, 48
  br i1 %i.hp, label %.lr.ph, label %.critedge.i, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.hq = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.hq, ptr %4, align 4, !tbaa !3
  %i.hr = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.hr, label %.lr.ph.i118, label %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, !llvm.loop !11

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.hs = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.hs, label %.lr.ph30.preheader.i, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph30.preheader.i:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.hh, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.hm, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  %wide.trip.count.i = and i64 %indvars.iv.i119.lcssa161, 4294967295
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.r, %.lr.ph30.preheader.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph30.preheader.i ], [ %indvars.iv.next40.i, %bb.r ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !7
  %i.hv = icmp eq i8 %i.hu, 48
  br i1 %i.hv, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !12

.critedge2.i:                                     ; preds = %.lr.ph30.i, %bb.r
  %.020.lcssa.in.i = phi i64 [ %indvars.iv.i119.lcssa161, %bb.r ], [ %indvars.iv39.i, %.lr.ph30.i ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %i.hw = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.hw, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.hx = ashr exact i64 %sext.i, 32              ; 2 uses
  br label %.lr.ph35.i

._crit_edge.i122:                                 ; preds = %.lr.ph35.i, %.preheader.i
  %.lcssa.i = phi i32 [ %.lcssa139160, %.preheader.i ], [ %i.if, %.lr.ph35.i ]
  %i.hy = sub nsw i32 %.lcssa.i, %.020.lcssa.i
  store i32 %i.hy, ptr %4, align 4, !tbaa !3
  %i.hz = load i32, ptr %5, align 4, !tbaa !3
  %i.ia = sub nsw i32 %i.hz, %.020.lcssa.i
  store i32 %i.ia, ptr %5, align 4, !tbaa !3
  %.pre154 = load i32, ptr %4, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv42.i = phi i64 [ %i.hx, %.lr.ph35.preheader.i ], [ %indvars.iv.next43.i, %.lr.ph35.i ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv42.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !7
  %i.id = sub nuw nsw i64 %indvars.iv42.i, %i.hx
  %i.ie = getelementptr inbounds i8, ptr %2, i64 %i.id
  store i8 %i.ic, ptr %i.ie, align 1, !tbaa !7
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.if = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = icmp slt i64 %indvars.iv.next43.i, %i.ig
  br i1 %i.ih, label %.lr.ph35.i, label %._crit_edge.i122, !llvm.loop !13

.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, !llvm.loop !11

_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit: ; preds = %.lr.ph.preheader, %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, %bb.q, %.critedge.i, %.critedge2.i, %._crit_edge.i122
  %i.ii = phi i32 [ %.pre154, %._crit_edge.i122 ], [ %.pr.i, %bb.q ], [ 0, %.critedge.i ], [ %.lcssa139160, %.critedge2.i ], [ %i.hq, %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge ], [ %i.hl, %.lr.ph.preheader ]
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %2, i64 %i.ij
  store i8 0, ptr %i.ik, align 1, !tbaa !7
  %i.il = load i32, ptr %4, align 4, !tbaa !3
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit
  %i.in = sub nsw i32 0, %1
  store i32 %i.in, ptr %5, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, %bb.s, %bb.a
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %0, ptr captures(none) %1, ptr noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = urem i64 %0, 10000000                    ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32            ; 8 uses
  %i.c = udiv i64 %0, 10000000
  %i.d = urem i64 %i.c, 10000000                  ; 2 uses
  %i.e = trunc nuw nsw i64 %i.d to i32            ; 8 uses
  %.not = icmp ult i64 %0, 100000000000000
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = udiv i64 %0, 100000000000000
  %i.g = trunc nuw nsw i64 %i.f to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.029.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.g, %bb.b ] ; 3 uses
  %.02228.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.h = urem i32 %.029.i, 10
  %i.i = udiv i32 %.029.i, 10
  %i.j = trunc nuw nsw i32 %i.h to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load i32, ptr %2, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, %.02228.i
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1, !tbaa !7
  %i.p = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %.not.i = icmp samesign ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = load i32, ptr %2, align 4, !tbaa !3      ; 4 uses
  %.02030.i = add i32 %i.q, %.02228.i             ; 2 uses
  %i.r = icmp slt i32 %i.q, %.02030.i
  br i1 %i.r, label %.lr.ph34.preheader.i, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.s = sext i32 %.02030.i to i64
  %i.t = sext i32 %i.q to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.t, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.s, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %i.w = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  store i8 %i.x, ptr %i.u, align 1, !tbaa !7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !7
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !10

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %2, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre.i.pn = phi i32 [ %.pre.i, %._crit_edge35.loopexit.i ], [ %i.q, %._crit_edge.i ]
  %.pre-phi.i = add nsw i32 %.pre.i.pn, %i.p      ; 2 uses
  store i32 %.pre-phi.i, ptr %2, align 4, !tbaa !3
  %i.z = urem i32 %i.e, 10
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = sext i32 %.pre-phi.i to i64
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 6
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !7
  %i.af = udiv i32 %i.e, 10
  %i.ag = urem i32 %i.af, 10
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = load i32, ptr %2, align 4, !tbaa !3
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 5
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !7
  %i.an = udiv i32 %i.e, 100
  %i.ao = urem i32 %i.an, 10
end_hunk_0
