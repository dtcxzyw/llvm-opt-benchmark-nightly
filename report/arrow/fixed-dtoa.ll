Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef %0, i32 noundef %1, ptr nofree captures(none) %2, i32 %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
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
  store i32 0, ptr %4, align 4, !tbaa !8
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
  %i.ae = load i32, ptr %4, align 4, !tbaa !8
  %i.af = add nsw i32 %i.ae, %.02228.i
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !9
  %i.ai = add nuw nsw i32 %.02228.i, 1            ; 2 uses
  %.not.i = icmp ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.pre153 = load i32, ptr %4, align 4, !tbaa !8
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
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !9
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !9
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.as, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i = add nsw i32 %.pre.i, %.022.lcssa.i
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre-phi.i = phi i32 [ %.pre41.i, %._crit_edge35.loopexit.i ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  store i32 %.pre-phi.i, ptr %4, align 4, !tbaa !8
  %i.at = udiv i64 %.094, 100000000000000
  %.lhs.trunc = trunc nsw i64 %i.at to i16        ; 2 uses
  %i.au = urem i16 %.lhs.trunc, 10
  %i.av = trunc nuw nsw i16 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = sext i32 %.pre-phi.i to i64
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !9
  %i.ba = load i32, ptr %4, align 4, !tbaa !8
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
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !9
  %i.bl = extractelement <2 x i8> %i.bi, i64 1
  %i.bm = or disjoint i8 %i.bl, 48
  %i.bn = load i32, ptr %4, align 4, !tbaa !8
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !9
  %i.bq = udiv i64 %.094, 10000000
  %i.br = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.bs = add nsw i32 %i.br, 3
  store i32 %i.bs, ptr %4, align 4, !tbaa !8
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr i8, ptr %2, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 9
  %i.bw = urem i64 %.094, 10000000
  %6 = urem i64 %i.bq, 10000000
  %7 = trunc nuw nsw i64 %i.bw to i32             ; 6 uses
  %8 = trunc nuw nsw i64 %6 to i32                ; 5 uses
  %9 = udiv i32 %8, 100
  %10 = udiv i32 %8, 10
  %i.bx = insertelement <4 x i32> poison, i32 %8, i64 0 ; 2 uses
  %i.by = insertelement <4 x i32> %i.bx, i32 %10, i64 1
  %i.bz = insertelement <4 x i32> %i.by, i32 %9, i64 2
  %i.ca = insertelement <4 x i32> %i.bz, i32 %7, i64 3
  %i.cb = urem <4 x i32> %i.ca, splat (i32 10)    ; 4 uses
  %i.cc = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.cd = extractelement <16 x i8> %i.cc, i64 0
  %i.ce = or disjoint i8 %i.cd, 48
  store i8 %i.ce, ptr %i.bv, align 1, !tbaa !9
  %i.cf = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.cg = extractelement <16 x i8> %i.cf, i64 4
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = load i32, ptr %4, align 4, !tbaa !8
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 5
  store i8 %i.ch, ptr %i.cl, align 1, !tbaa !9
  %i.cm = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.cn = extractelement <16 x i8> %i.cm, i64 8
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = load i32, ptr %4, align 4, !tbaa !8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %2, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !9
  %i.ct = insertelement <4 x i32> %i.bx, i32 %7, i64 1
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cv = udiv <4 x i32> %i.cu, <i32 1000, i32 1000, i32 10000, i32 10000>
  %i.cw = trunc nuw nsw <4 x i32> %i.cv to <4 x i16>
  %i.cx = urem <4 x i16> %i.cw, splat (i16 10)    ; 4 uses
  %i.cy = bitcast <4 x i16> %i.cx to <8 x i8>
  %i.cz = extractelement <8 x i8> %i.cy, i64 0
  %i.da = or disjoint i8 %i.cz, 48
  %i.db = load i32, ptr %4, align 4, !tbaa !8
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr i8, ptr %2, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 3
  store i8 %i.da, ptr %i.de, align 1, !tbaa !9
  %i.df = bitcast <4 x i16> %i.cx to <8 x i8>
  %i.dg = extractelement <8 x i8> %i.df, i64 4
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = load i32, ptr %4, align 4, !tbaa !8
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr i8, ptr %2, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 2
  store i8 %i.dh, ptr %i.dl, align 1, !tbaa !9
  %i.dm = udiv i32 %8, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.dm to i8
  %i.dn = urem i8 %.lhs.trunc34.i, 10
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = load i32, ptr %4, align 4, !tbaa !8
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %2, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 1
  store i8 %i.do, ptr %i.ds, align 1, !tbaa !9
  %i.dt = udiv i32 %8, 1000000
  %i.du = trunc nuw nsw i32 %i.dt to i8
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = load i32, ptr %4, align 4, !tbaa !8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %2, i64 %i.dx
  store i8 %i.dv, ptr %i.dy, align 1, !tbaa !9
  %i.dz = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ea = add nsw i32 %i.dz, 7
  store i32 %i.ea, ptr %4, align 4, !tbaa !8
  %i.eb = bitcast <4 x i32> %i.cb to <16 x i8>
  %i.ec = extractelement <16 x i8> %i.eb, i64 12
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = sext i32 %i.dz to i64
  %i.ef = getelementptr i8, ptr %2, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 13
  store i8 %i.ed, ptr %i.eg, align 1, !tbaa !9
  %i.eh = load i32, ptr %4, align 4, !tbaa !8
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %2, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 5
  %i.el = udiv i32 %7, 100
  %i.em = udiv i32 %7, 10
  %i.en = insertelement <2 x i32> poison, i32 %i.em, i64 0
  %i.eo = insertelement <2 x i32> %i.en, i32 %i.el, i64 1
  %i.ep = urem <2 x i32> %i.eo, splat (i32 10)    ; 2 uses
  %i.eq = bitcast <2 x i32> %i.ep to <8 x i8>
  %i.er = extractelement <8 x i8> %i.eq, i64 0
  %i.es = or disjoint i8 %i.er, 48
  store i8 %i.es, ptr %i.ek, align 1, !tbaa !9
  %i.et = bitcast <2 x i32> %i.ep to <8 x i8>
  %i.eu = extractelement <8 x i8> %i.et, i64 4
  %i.ev = or disjoint i8 %i.eu, 48
  %i.ew = load i32, ptr %4, align 4, !tbaa !8
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %2, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 4
  store i8 %i.ev, ptr %i.ez, align 1, !tbaa !9
  %i.fa = bitcast <4 x i16> %i.cx to <8 x i8>
  %i.fb = extractelement <8 x i8> %i.fa, i64 2
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = load i32, ptr %4, align 4, !tbaa !8
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr i8, ptr %2, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 3
  store i8 %i.fc, ptr %i.fg, align 1, !tbaa !9
  %i.fh = bitcast <4 x i16> %i.cx to <8 x i8>
  %i.fi = extractelement <8 x i8> %i.fh, i64 6
  %i.fj = or disjoint i8 %i.fi, 48
  %i.fk = load i32, ptr %4, align 4, !tbaa !8
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr i8, ptr %2, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 2
  store i8 %i.fj, ptr %i.fn, align 1, !tbaa !9
  %i.fo = udiv i32 %7, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.fo to i8
  %i.fp = urem i8 %.lhs.trunc40.i, 10
  %i.fq = or disjoint i8 %i.fp, 48
  %i.fr = load i32, ptr %4, align 4, !tbaa !8
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr i8, ptr %2, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  store i8 %i.fq, ptr %i.fu, align 1, !tbaa !9
  %i.fv = udiv i32 %7, 1000000
  %i.fw = trunc nuw nsw i32 %i.fv to i8
  %i.fx = or disjoint i8 %i.fw, 48
  %i.fy = load i32, ptr %4, align 4, !tbaa !8
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %2, i64 %i.fz
  store i8 %i.fx, ptr %i.ga, align 1, !tbaa !9
  %i.gb = load i32, ptr %4, align 4, !tbaa !8
  %i.gc = add nsw i32 %i.gb, 7                    ; 2 uses
  store i32 %i.gc, ptr %4, align 4, !tbaa !8
  store i32 %i.gc, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.gd = icmp sgt i32 %.0.i98, -1
  br i1 %i.gd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ge = zext nneg i32 %.0.i98 to i64
  %i.gf = shl nuw i64 %.0.i, %i.ge
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.gf, ptr %2, ptr noundef nonnull %4)
  %i.gg = load i32, ptr %4, align 4, !tbaa !8
  store i32 %i.gg, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.gh = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.gh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gi = sub nsw i32 0, %.0.i98
  %i.gj = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gk = lshr i64 %.0.i, %i.gj                   ; 5 uses
  %i.gl = shl i64 %i.gk, %i.gj
  %i.gm = sub i64 %.0.i, %i.gl
  %i.gn = icmp samesign ugt i64 %i.gk, 4294967295
  br i1 %i.gn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.gk, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.gk, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.go = trunc nuw i64 %i.gk to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.gq, %.lr.ph.i100 ], [ %i.go, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gx, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.gp = urem i32 %.029.i101, 10
  %i.gq = udiv i32 %.029.i101, 10
  %i.gr = trunc nuw nsw i32 %i.gp to i8
  %i.gs = or disjoint i8 %i.gr, 48
  %i.gt = load i32, ptr %4, align 4, !tbaa !8
  %i.gu = add nsw i32 %i.gt, %.02228.i102
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %2, i64 %i.gv
  store i8 %i.gs, ptr %i.gw, align 1, !tbaa !9
  %i.gx = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.gy = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.gx, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gz = add nsw i32 %i.gy, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gz, -1            ; 2 uses
  %i.ha = icmp slt i32 %i.gy, %.02030.i106
  br i1 %i.ha, label %.lr.ph34.preheader.i108, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.hb = sext i32 %.02030.i106 to i64
  %i.hc = sext i32 %i.gy to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.hc, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.hb, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !9
  store i8 %i.hg, ptr %i.hd, align 1, !tbaa !9
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !9
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.hh = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.hh, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gz, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117, %bb.k
  %i.hi = phi i32 [ %.pre-phi.i107, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.hi, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %i.gm, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.hj = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.hj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !9
  store i32 0, ptr %4, align 4, !tbaa !8
  %i.hk = sub nsw i32 0, %1
  store i32 %i.hk, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !8    ; 5 uses
  %i.hl = icmp sgt i32 %.pr.i, 0
  br i1 %i.hl, label %.lr.ph.preheader.i, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hm = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.hm, -1 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9
  %i.hp = icmp eq i8 %i.ho, 48
  br i1 %i.hp, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.hq = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.hq, ptr %4, align 4, !tbaa !8
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !11

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !11

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.hr = phi i32 [ %i.hq, %.lr.ph.i118.lr.ph ], [ %i.hv, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !9
  %i.hu = icmp eq i8 %i.ht, 48
  br i1 %i.hu, label %.lr.ph, label %.critedge.i, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.hv = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.hv, ptr %4, align 4, !tbaa !8
  %i.hw = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.hw, label %.lr.ph.i118, label %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, !llvm.loop !11

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.hx = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.hx, label %.lr.ph30.i.preheader, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.hm, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.hr, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !9
  %i.ia = icmp eq i8 %i.hz, 48
  br i1 %i.ia, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %indvars.iv.i119.lcssa161
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !12

.critedge2.i:                                     ; preds = %.lr.ph30.i, %bb.r
  %.020.lcssa.in.i = phi i64 [ %indvars.iv.i119.lcssa161, %bb.r ], [ %indvars.iv39.i, %.lr.ph30.i ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %i.ib = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.ib, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.ic = ashr exact i64 %sext.i, 32              ; 2 uses
end_hunk_0
