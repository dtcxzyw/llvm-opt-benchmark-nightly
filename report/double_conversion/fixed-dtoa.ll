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
  %6 = trunc nuw nsw <2 x i16> %i.bh to <2 x i8>  ; 2 uses
  %i.bi = extractelement <2 x i8> %6, i64 0
  %i.bj = or disjoint i8 %i.bi, 48
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !11
  %i.bk = extractelement <2 x i8> %6, i64 1
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = load i32, ptr %4, align 4, !tbaa !10
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !11
  %i.bp = udiv i64 %.094, 10000000
  %i.bq = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.br = add nsw i32 %i.bq, 3
  store i32 %i.br, ptr %4, align 4, !tbaa !10
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr i8, ptr %2, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 9
  %7 = urem i64 %i.bp, 10000000
  %8 = trunc nuw nsw i64 %7 to i32                ; 7 uses
  %9 = udiv i32 %8, 10
  %10 = udiv i32 %8, 100
  %i.bv = urem i64 %.094, 10000000
  %i.bw = trunc nuw nsw i64 %i.bv to i32          ; 7 uses
  %11 = insertelement <4 x i32> poison, i32 %8, i64 0
  %12 = insertelement <4 x i32> %11, i32 %9, i64 1
  %13 = insertelement <4 x i32> %12, i32 %10, i64 2
  %14 = insertelement <4 x i32> %13, i32 %i.bw, i64 3
  %15 = urem <4 x i32> %14, splat (i32 10)        ; 4 uses
  %16 = bitcast <4 x i32> %15 to <16 x i8>
  %17 = extractelement <16 x i8> %16, i64 0
  %18 = or disjoint i8 %17, 48
  store i8 %18, ptr %i.bu, align 1, !tbaa !11
  %19 = bitcast <4 x i32> %15 to <16 x i8>
  %20 = extractelement <16 x i8> %19, i64 4
  %i.bx = or disjoint i8 %20, 48
  %i.by = load i32, ptr %4, align 4, !tbaa !10
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr i8, ptr %2, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 5
  store i8 %i.bx, ptr %i.cb, align 1, !tbaa !11
  %21 = bitcast <4 x i32> %15 to <16 x i8>
  %22 = extractelement <16 x i8> %21, i64 8
  %i.cc = or disjoint i8 %22, 48
  %i.cd = load i32, ptr %4, align 4, !tbaa !10
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  store i8 %i.cc, ptr %i.cg, align 1, !tbaa !11
  %i.ch = udiv i32 %8, 1000
  %.lhs.trunc30.i = trunc nuw nsw i32 %i.ch to i16
  %i.ci = udiv i32 %8, 10000
  %.lhs.trunc32.i = trunc nuw nsw i32 %i.ci to i16
  %i.cj = udiv i32 %i.bw, 1000
  %.lhs.trunc36.i = trunc nuw nsw i32 %i.cj to i16
  %i.ck = udiv i32 %i.bw, 10000
  %.lhs.trunc38.i = trunc nuw nsw i32 %i.ck to i16
  %i.cl = insertelement <4 x i16> poison, i16 %.lhs.trunc30.i, i64 0
  %i.cm = insertelement <4 x i16> %i.cl, i16 %.lhs.trunc36.i, i64 1
  %i.cn = insertelement <4 x i16> %i.cm, i16 %.lhs.trunc32.i, i64 2
  %i.co = insertelement <4 x i16> %i.cn, i16 %.lhs.trunc38.i, i64 3
  %i.cp = urem <4 x i16> %i.co, splat (i16 10)    ; 4 uses
  %23 = bitcast <4 x i16> %i.cp to <8 x i8>
  %i.cq = extractelement <8 x i8> %23, i64 0
  %i.cr = or disjoint i8 %i.cq, 48
  %i.cs = load i32, ptr %4, align 4, !tbaa !10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr %2, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 3
  store i8 %i.cr, ptr %i.cv, align 1, !tbaa !11
  %24 = bitcast <4 x i16> %i.cp to <8 x i8>
  %i.cw = extractelement <8 x i8> %24, i64 4
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = load i32, ptr %4, align 4, !tbaa !10
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 2
  store i8 %i.cx, ptr %i.db, align 1, !tbaa !11
  %i.dc = udiv i32 %8, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.dc to i8
  %i.dd = urem i8 %.lhs.trunc34.i, 10
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = load i32, ptr %4, align 4, !tbaa !10
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr i8, ptr %2, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 1
  store i8 %i.de, ptr %i.di, align 1, !tbaa !11
  %i.dj = udiv i32 %8, 1000000
  %i.dk = trunc nuw nsw i32 %i.dj to i8
  %i.dl = or disjoint i8 %i.dk, 48
  %i.dm = load i32, ptr %4, align 4, !tbaa !10
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %2, i64 %i.dn
  store i8 %i.dl, ptr %i.do, align 1, !tbaa !11
  %i.dp = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.dq = add nsw i32 %i.dp, 7
  store i32 %i.dq, ptr %4, align 4, !tbaa !10
  %25 = bitcast <4 x i32> %15 to <16 x i8>
  %26 = extractelement <16 x i8> %25, i64 12
  %i.dr = or disjoint i8 %26, 48
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr i8, ptr %2, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 13
  store i8 %i.dr, ptr %i.du, align 1, !tbaa !11
  %i.dv = udiv i32 %i.bw, 10
  %i.dw = urem i32 %i.dv, 10
  %i.dx = trunc nuw nsw i32 %i.dw to i8
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = load i32, ptr %4, align 4, !tbaa !10
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr %2, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 5
  store i8 %i.dy, ptr %i.ec, align 1, !tbaa !11
  %i.ed = udiv i32 %i.bw, 100
  %i.ee = urem i32 %i.ed, 10
  %i.ef = trunc nuw nsw i32 %i.ee to i8
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = load i32, ptr %4, align 4, !tbaa !10
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %2, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  store i8 %i.eg, ptr %i.ek, align 1, !tbaa !11
  %27 = bitcast <4 x i16> %i.cp to <8 x i8>
  %i.el = extractelement <8 x i8> %27, i64 2
  %i.em = or disjoint i8 %i.el, 48
  %i.en = load i32, ptr %4, align 4, !tbaa !10
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr i8, ptr %2, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 3
  store i8 %i.em, ptr %i.eq, align 1, !tbaa !11
  %28 = bitcast <4 x i16> %i.cp to <8 x i8>
  %i.er = extractelement <8 x i8> %28, i64 6
  %i.es = or disjoint i8 %i.er, 48
  %i.et = load i32, ptr %4, align 4, !tbaa !10
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %2, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 2
  store i8 %i.es, ptr %i.ew, align 1, !tbaa !11
  %i.ex = udiv i32 %i.bw, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.ex to i8
  %i.ey = urem i8 %.lhs.trunc40.i, 10
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = load i32, ptr %4, align 4, !tbaa !10
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %2, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 1
  store i8 %i.ez, ptr %i.fd, align 1, !tbaa !11
  %i.fe = udiv i32 %i.bw, 1000000
  %i.ff = trunc nuw nsw i32 %i.fe to i8
  %i.fg = or disjoint i8 %i.ff, 48
  %i.fh = load i32, ptr %4, align 4, !tbaa !10
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %2, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !11
  %i.fk = load i32, ptr %4, align 4, !tbaa !10
  %i.fl = add nsw i32 %i.fk, 7                    ; 2 uses
  store i32 %i.fl, ptr %4, align 4, !tbaa !10
  store i32 %i.fl, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.fm = icmp sgt i32 %.0.i98, -1
  br i1 %i.fm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fn = zext nneg i32 %.0.i98 to i64
  %i.fo = shl nuw i64 %.0.i, %i.fn
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.fo, ptr %2, ptr noundef nonnull %4)
  %i.fp = load i32, ptr %4, align 4, !tbaa !10
  store i32 %i.fp, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.fq = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.fq, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fr = sub nsw i32 0, %.0.i98
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.ft = lshr i64 %.0.i, %i.fs                   ; 5 uses
  %i.fu = shl i64 %i.ft, %i.fs
  %i.fv = sub i64 %.0.i, %i.fu
  %i.fw = icmp samesign ugt i64 %i.ft, 4294967295
  br i1 %i.fw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.ft, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.ft, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.fx = trunc nuw i64 %i.ft to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.fz, %.lr.ph.i100 ], [ %i.fx, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gg, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.fy = urem i32 %.029.i101, 10
  %i.fz = udiv i32 %.029.i101, 10
  %i.ga = trunc nuw nsw i32 %i.fy to i8
  %i.gb = or disjoint i8 %i.ga, 48
  %i.gc = load i32, ptr %4, align 4, !tbaa !10
  %i.gd = add nsw i32 %i.gc, %.02228.i102
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %2, i64 %i.ge
  store i8 %i.gb, ptr %i.gf, align 1, !tbaa !11
  %i.gg = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !10
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.gh = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.gg, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gi = add nsw i32 %i.gh, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gi, -1            ; 2 uses
  %i.gj = icmp slt i32 %i.gh, %.02030.i106
  br i1 %i.gj, label %.lr.ph34.preheader.i108, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.gk = sext i32 %.02030.i106 to i64
  %i.gl = sext i32 %i.gh to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.gl, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.gk, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !11
  %i.go = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11
  store i8 %i.gp, ptr %i.gm, align 1, !tbaa !11
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !11
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.gq = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.gq, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !10
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gi, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117, %bb.k
  %i.gr = phi i32 [ %.pre-phi.i107, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.gr, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %i.fv, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.gs = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.gs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !11
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.gt = sub nsw i32 0, %1
  store i32 %i.gt, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !10   ; 5 uses
  %i.gu = icmp sgt i32 %.pr.i, 0
  br i1 %i.gu, label %.lr.ph.preheader.i, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.gv = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.gv, -1 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !11
  %i.gy = icmp eq i8 %i.gx, 48
  br i1 %i.gy, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.gz = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.gz, ptr %4, align 4, !tbaa !10
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !13

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !13

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.ha = phi i32 [ %i.gz, %.lr.ph.i118.lr.ph ], [ %i.he, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !11
  %i.hd = icmp eq i8 %i.hc, 48
  br i1 %i.hd, label %.lr.ph, label %.critedge.i, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.he = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.he, ptr %4, align 4, !tbaa !10
  %i.hf = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.hf, label %.lr.ph.i118, label %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, !llvm.loop !13

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.hg = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.hg, label %.lr.ph30.i.preheader, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.gv, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.ha, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !11
  %i.hj = icmp eq i8 %i.hi, 48
  br i1 %i.hj, label %bb.r, label %.critedge2.i

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
  %i.hk = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.hk, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.hl = ashr exact i64 %sext.i, 32              ; 2 uses
end_hunk_0
