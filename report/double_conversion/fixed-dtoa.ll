Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN17double_conversion13FastFixedDtoaEdiNS_6VectorIcEEPiS2_(double noundef %0, i32 noundef %1, ptr nofree captures(none) %2, i32 %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
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
  %.0.i98 = select i1 %i.d, i32 -1074, i32 %i.i   ; 13 uses
  %i.j = icmp slt i32 %.0.i98, 21
  %i.k = icmp slt i32 %1, 21
  %or.cond.not = and i1 %i.k, %i.j                ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !10
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
  %i.ae = load i32, ptr %4, align 4, !tbaa !10
  %i.af = add nsw i32 %i.ae, %.02228.i
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !11
  %i.ai = add nuw nsw i32 %.02228.i, 1            ; 2 uses
  %.not.i = icmp ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.pre153 = load i32, ptr %4, align 4, !tbaa !10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.aj = phi i32 [ 0, %bb.f ], [ %.pre153, %._crit_edge.i.loopexit ] ; 3 uses
  %.022.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.ai, %._crit_edge.i.loopexit ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, %.022.lcssa.i        ; 2 uses
  %.02030.i = add nsw i32 %i.ak, -1               ; 2 uses
  %i.al = icmp slt i32 %i.aj, %.02030.i
  br i1 %i.al, label %.lr.ph34.preheader.i, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.am = sext i32 %.02030.i to i64
  %i.an = sext i32 %i.aj to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.an, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.am, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !11
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !11
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.as, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %4, align 4, !tbaa !10
  %.pre41.i = add nsw i32 %.pre.i, %.022.lcssa.i
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre-phi.i = phi i32 [ %.pre41.i, %._crit_edge35.loopexit.i ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  store i32 %.pre-phi.i, ptr %4, align 4, !tbaa !10
  %i.at = udiv i64 %.094, 100000000000000
  %.lhs.trunc = trunc nsw i64 %i.at to i16        ; 2 uses
  %i.au = urem i16 %.lhs.trunc, 10
  %i.av = trunc nuw nsw i16 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = sext i32 %.pre-phi.i to i64
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !11
  %i.ba = load i32, ptr %4, align 4, !tbaa !10
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %2, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  %i.be = insertelement <2 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.bf = shufflevector <2 x i16> %i.be, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bg = udiv <2 x i16> %i.bf, <i16 10, i16 100>
  %i.bh = urem <2 x i16> %i.bg, splat (i16 10)
  %i.bi = trunc nuw nsw <2 x i16> %i.bh to <2 x i8> ; 2 uses
  %i.bj = extractelement <2 x i8> %i.bi, i64 0
  %i.bk = or disjoint i8 %i.bj, 48
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !11
  %i.bl = extractelement <2 x i8> %i.bi, i64 1
  %i.bm = or disjoint i8 %i.bl, 48
  %i.bn = load i32, ptr %4, align 4, !tbaa !10
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !11
  %i.bq = udiv i64 %.094, 10000000
  %i.br = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.bs = add nsw i32 %i.br, 3
  store i32 %i.bs, ptr %4, align 4, !tbaa !10
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr i8, ptr %2, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 9
  %i.bw = urem i64 %i.bq, 10000000
  %6 = trunc nuw nsw i64 %i.bw to i32             ; 7 uses
  %7 = udiv i32 %6, 10
  %8 = udiv i32 %6, 100
  %9 = urem i64 %.094, 10000000
  %10 = trunc nuw nsw i64 %9 to i32               ; 7 uses
  %i.bx = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.by = insertelement <4 x i32> %i.bx, i32 %7, i64 1
  %i.bz = insertelement <4 x i32> %i.by, i32 %8, i64 2
  %i.ca = insertelement <4 x i32> %i.bz, i32 %10, i64 3
  %i.cb = urem <4 x i32> %i.ca, splat (i32 10)    ; 4 uses
  %i.cc = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.cd = extractelement <16 x i8> %i.cc, i64 0
  %i.ce = or disjoint i8 %i.cd, 48
  store i8 %i.ce, ptr %i.bv, align 1, !tbaa !11
  %i.cf = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.cg = extractelement <16 x i8> %i.cf, i64 4
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = load i32, ptr %4, align 4, !tbaa !10
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 5
  store i8 %i.ch, ptr %i.cl, align 1, !tbaa !11
  %i.cm = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.cn = extractelement <16 x i8> %i.cm, i64 8
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = load i32, ptr %4, align 4, !tbaa !10
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %2, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !11
  %i.ct = udiv i32 %6, 1000
  %.lhs.trunc30.i = trunc nuw nsw i32 %i.ct to i16
  %i.cu = udiv i32 %6, 10000
  %.lhs.trunc32.i = trunc nuw nsw i32 %i.cu to i16
  %11 = udiv i32 %10, 1000
  %.lhs.trunc36.i = trunc nuw nsw i32 %11 to i16
  %12 = udiv i32 %10, 10000
  %.lhs.trunc30.i.a = trunc nuw nsw i32 %12 to i16
  %i.cv = insertelement <4 x i16> poison, i16 %.lhs.trunc30.i, i64 0
  %i.cw = insertelement <4 x i16> %i.cv, i16 %.lhs.trunc36.i, i64 1
  %i.cx = insertelement <4 x i16> %i.cw, i16 %.lhs.trunc32.i, i64 2
  %i.cy = insertelement <4 x i16> %i.cx, i16 %.lhs.trunc30.i.a, i64 3
  %i.cz = urem <4 x i16> %i.cy, splat (i16 10)    ; 4 uses
  %i.da = bitcast <4 x i16> %i.cz to <8 x i8>
  %i.db = extractelement <8 x i8> %i.da, i64 0
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = load i32, ptr %4, align 4, !tbaa !10
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %2, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 3
  store i8 %i.dc, ptr %i.dg, align 1, !tbaa !11
  %i.dh = bitcast <4 x i16> %i.cz to <8 x i8>
  %i.di = extractelement <8 x i8> %i.dh, i64 4
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = load i32, ptr %4, align 4, !tbaa !10
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %2, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 2
  store i8 %i.dj, ptr %i.dn, align 1, !tbaa !11
  %i.do = udiv i32 %6, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.do to i8
  %i.dp = urem i8 %.lhs.trunc34.i, 10
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = load i32, ptr %4, align 4, !tbaa !10
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %2, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 1
  store i8 %i.dq, ptr %i.du, align 1, !tbaa !11
  %i.dv = udiv i32 %6, 1000000
  %i.dw = trunc nuw nsw i32 %i.dv to i8
  %i.dx = or disjoint i8 %i.dw, 48
  %i.dy = load i32, ptr %4, align 4, !tbaa !10
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %2, i64 %i.dz
  store i8 %i.dx, ptr %i.ea, align 1, !tbaa !11
  %i.eb = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ec = add nsw i32 %i.eb, 7
  store i32 %i.ec, ptr %4, align 4, !tbaa !10
  %i.ed = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.ee = extractelement <16 x i8> %i.ed, i64 12
  %i.ef = or disjoint i8 %i.ee, 48
  %i.eg = sext i32 %i.eb to i64
  %i.eh = getelementptr i8, ptr %2, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 13
  store i8 %i.ef, ptr %i.ei, align 1, !tbaa !11
  %i.ej = udiv i32 %10, 10
  %i.ek = urem i32 %i.ej, 10
  %i.el = trunc nuw nsw i32 %i.ek to i8
  %i.em = or disjoint i8 %i.el, 48
  %i.en = load i32, ptr %4, align 4, !tbaa !10
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr i8, ptr %2, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 5
  store i8 %i.em, ptr %i.eq, align 1, !tbaa !11
  %i.er = udiv i32 %10, 100
  %i.es = urem i32 %i.er, 10
  %i.et = trunc nuw nsw i32 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = load i32, ptr %4, align 4, !tbaa !10
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr i8, ptr %2, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 4
  store i8 %i.eu, ptr %i.ey, align 1, !tbaa !11
  %i.ez = bitcast <4 x i16> %i.cz to <8 x i8>
  %i.fa = extractelement <8 x i8> %i.ez, i64 2
  %i.fb = or disjoint i8 %i.fa, 48
  %i.fc = load i32, ptr %4, align 4, !tbaa !10
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr i8, ptr %2, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 3
  store i8 %i.fb, ptr %i.ff, align 1, !tbaa !11
  %i.fg = bitcast <4 x i16> %i.cz to <8 x i8>
  %i.fh = extractelement <8 x i8> %i.fg, i64 6
  %i.fi = or disjoint i8 %i.fh, 48
  %i.fj = load i32, ptr %4, align 4, !tbaa !10
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr i8, ptr %2, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 2
  store i8 %i.fi, ptr %i.fm, align 1, !tbaa !11
  %i.fn = udiv i32 %10, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.fn to i8
  %i.fo = urem i8 %.lhs.trunc40.i, 10
  %i.fp = or disjoint i8 %i.fo, 48
  %i.fq = load i32, ptr %4, align 4, !tbaa !10
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr i8, ptr %2, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 1
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !11
  %i.fu = udiv i32 %10, 1000000
  %i.fv = trunc nuw nsw i32 %i.fu to i8
  %i.fw = or disjoint i8 %i.fv, 48
  %i.fx = load i32, ptr %4, align 4, !tbaa !10
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %2, i64 %i.fy
  store i8 %i.fw, ptr %i.fz, align 1, !tbaa !11
  %i.ga = load i32, ptr %4, align 4, !tbaa !10
  %i.gb = add nsw i32 %i.ga, 7                    ; 2 uses
  store i32 %i.gb, ptr %4, align 4, !tbaa !10
  store i32 %i.gb, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.gc = icmp sgt i32 %.0.i98, -1
  br i1 %i.gc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gd = zext nneg i32 %.0.i98 to i64
  %i.ge = shl nuw i64 %.0.i, %i.gd
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.ge, ptr %2, ptr noundef nonnull %4)
  %i.gf = load i32, ptr %4, align 4, !tbaa !10
  store i32 %i.gf, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.gg = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.gg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gh = sub nsw i32 0, %.0.i98
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = lshr i64 %.0.i, %i.gi                   ; 5 uses
  %i.gk = shl i64 %i.gj, %i.gi
  %i.gl = sub i64 %.0.i, %i.gk
  %i.gm = icmp samesign ugt i64 %i.gj, 4294967295
  br i1 %i.gm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.gj, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.gj, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.gn = trunc nuw i64 %i.gj to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.gp, %.lr.ph.i100 ], [ %i.gn, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gw, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.go = urem i32 %.029.i101, 10
  %i.gp = udiv i32 %.029.i101, 10
  %i.gq = trunc nuw nsw i32 %i.go to i8
  %i.gr = or disjoint i8 %i.gq, 48
  %i.gs = load i32, ptr %4, align 4, !tbaa !10
  %i.gt = add nsw i32 %i.gs, %.02228.i102
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  store i8 %i.gr, ptr %i.gv, align 1, !tbaa !11
  %i.gw = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !10
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.gx = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.gw, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gy = add nsw i32 %i.gx, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gy, -1            ; 2 uses
  %i.gz = icmp slt i32 %i.gx, %.02030.i106
  br i1 %i.gz, label %.lr.ph34.preheader.i108, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.ha = sext i32 %.02030.i106 to i64
  %i.hb = sext i32 %i.gx to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.hb, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.ha, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !11
  %i.he = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !11
  store i8 %i.hf, ptr %i.hc, align 1, !tbaa !11
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !11
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.hg = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.hg, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !10
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gy, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117, %bb.k
  %i.hh = phi i32 [ %.pre-phi.i107, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.hh, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %i.gl, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.hi = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.hi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !11
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.hj = sub nsw i32 0, %1
  store i32 %i.hj, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !10   ; 5 uses
  %i.hk = icmp sgt i32 %.pr.i, 0
  br i1 %i.hk, label %.lr.ph.preheader.i, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hl = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.hl, -1 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  %i.ho = icmp eq i8 %i.hn, 48
  br i1 %i.ho, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.hp = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.hp, ptr %4, align 4, !tbaa !10
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !13

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !13

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.hq = phi i32 [ %i.hp, %.lr.ph.i118.lr.ph ], [ %i.hu, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11
  %i.ht = icmp eq i8 %i.hs, 48
  br i1 %i.ht, label %.lr.ph, label %.critedge.i, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.hu = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.hu, ptr %4, align 4, !tbaa !10
  %i.hv = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.hv, label %.lr.ph.i118, label %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, !llvm.loop !13

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.hw = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.hw, label %.lr.ph30.i.preheader, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.hl, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.hq, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !11
  %i.hz = icmp eq i8 %i.hy, 48
  br i1 %i.hz, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %indvars.iv.i119.lcssa161
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !14

.critedge2.i:                                     ; preds = %.lr.ph30.i, %bb.r
  %.020.lcssa.in.i = phi i64 [ %indvars.iv.i119.lcssa161, %bb.r ], [ %indvars.iv39.i, %.lr.ph30.i ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %i.ia = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.ia, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.ib = ashr exact i64 %sext.i, 32              ; 2 uses
end_hunk_0
