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
  %i.bv = urem i64 %.094, 10000000
  %i.bw = urem i64 %i.bp, 10000000
  %i.bx = trunc nuw nsw i64 %i.bv to i32          ; 7 uses
  %i.by = trunc nuw nsw i64 %i.bw to i32          ; 7 uses
  %7 = udiv i32 %i.by, 100
  %8 = udiv i32 %i.by, 10
  %9 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %10 = insertelement <4 x i32> %9, i32 %8, i64 1
  %11 = insertelement <4 x i32> %10, i32 %7, i64 2
  %12 = insertelement <4 x i32> %11, i32 %i.bx, i64 3
  %13 = urem <4 x i32> %12, splat (i32 10)        ; 4 uses
  %14 = bitcast <4 x i32> %13 to <16 x i8>
  %15 = extractelement <16 x i8> %14, i64 0
  %16 = or disjoint i8 %15, 48
  store i8 %16, ptr %i.bu, align 1, !tbaa !11
  %17 = bitcast <4 x i32> %13 to <16 x i8>
  %18 = extractelement <16 x i8> %17, i64 4
  %19 = or disjoint i8 %18, 48
  %20 = load i32, ptr %4, align 4, !tbaa !10
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, ptr %2, i64 %21
  %23 = getelementptr i8, ptr %22, i64 5
  store i8 %19, ptr %23, align 1, !tbaa !11
  %24 = bitcast <4 x i32> %13 to <16 x i8>
  %i.bz = extractelement <16 x i8> %24, i64 8
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = load i32, ptr %4, align 4, !tbaa !10
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %2, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  store i8 %i.ca, ptr %i.ce, align 1, !tbaa !11
  %i.cf = udiv i32 %i.bx, 10000
  %i.cg = udiv i32 %i.bx, 1000
  %i.ch = udiv i32 %i.by, 10000
  %i.ci = udiv i32 %i.by, 1000
  %.lhs.trunc38.i = trunc nuw nsw i32 %i.cf to i16
  %.lhs.trunc36.i = trunc nuw nsw i32 %i.cg to i16
  %.lhs.trunc32.i = trunc nuw nsw i32 %i.ch to i16
  %.lhs.trunc30.i = trunc nuw nsw i32 %i.ci to i16
  %i.cj = insertelement <4 x i16> poison, i16 %.lhs.trunc30.i, i64 0
  %i.ck = insertelement <4 x i16> %i.cj, i16 %.lhs.trunc36.i, i64 1
  %i.cl = insertelement <4 x i16> %i.ck, i16 %.lhs.trunc32.i, i64 2
  %i.cm = insertelement <4 x i16> %i.cl, i16 %.lhs.trunc38.i, i64 3
  %i.cn = urem <4 x i16> %i.cm, splat (i16 10)    ; 4 uses
  %25 = bitcast <4 x i16> %i.cn to <8 x i8>
  %i.co = extractelement <8 x i8> %25, i64 0
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = load i32, ptr %4, align 4, !tbaa !10
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr i8, ptr %2, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 3
  store i8 %i.cp, ptr %i.ct, align 1, !tbaa !11
  %26 = bitcast <4 x i16> %i.cn to <8 x i8>
  %i.cu = extractelement <8 x i8> %26, i64 4
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = load i32, ptr %4, align 4, !tbaa !10
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %2, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 2
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !11
  %i.da = udiv i32 %i.by, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.da to i8
  %i.db = urem i8 %.lhs.trunc34.i, 10
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = load i32, ptr %4, align 4, !tbaa !10
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %2, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 1
  store i8 %i.dc, ptr %i.dg, align 1, !tbaa !11
  %i.dh = udiv i32 %i.by, 1000000
  %i.di = trunc nuw nsw i32 %i.dh to i8
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = load i32, ptr %4, align 4, !tbaa !10
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %2, i64 %i.dl
  store i8 %i.dj, ptr %i.dm, align 1, !tbaa !11
  %i.dn = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.do = add nsw i32 %i.dn, 7
  store i32 %i.do, ptr %4, align 4, !tbaa !10
  %27 = bitcast <4 x i32> %13 to <16 x i8>
  %i.dp = extractelement <16 x i8> %27, i64 12
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = sext i32 %i.dn to i64
  %i.ds = getelementptr i8, ptr %2, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 13
  store i8 %i.dq, ptr %i.dt, align 1, !tbaa !11
  %28 = udiv i32 %i.bx, 10
  %29 = urem i32 %28, 10
  %30 = trunc nuw nsw i32 %29 to i8
  %i.du = or disjoint i8 %30, 48
  %i.dv = load i32, ptr %4, align 4, !tbaa !10
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr i8, ptr %2, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 5
  store i8 %i.du, ptr %i.dy, align 1, !tbaa !11
  %31 = udiv i32 %i.bx, 100
  %32 = urem i32 %31, 10
  %33 = trunc nuw nsw i32 %32 to i8
  %i.dz = or disjoint i8 %33, 48
  %i.ea = load i32, ptr %4, align 4, !tbaa !10
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %2, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  store i8 %i.dz, ptr %i.ed, align 1, !tbaa !11
  %34 = bitcast <4 x i16> %i.cn to <8 x i8>
  %i.ee = extractelement <8 x i8> %34, i64 2
  %i.ef = or disjoint i8 %i.ee, 48
  %i.eg = load i32, ptr %4, align 4, !tbaa !10
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr %2, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 3
  store i8 %i.ef, ptr %i.ej, align 1, !tbaa !11
  %35 = bitcast <4 x i16> %i.cn to <8 x i8>
  %i.ek = extractelement <8 x i8> %35, i64 6
  %i.el = or disjoint i8 %i.ek, 48
  %i.em = load i32, ptr %4, align 4, !tbaa !10
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr i8, ptr %2, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 2
  store i8 %i.el, ptr %i.ep, align 1, !tbaa !11
  %i.eq = udiv i32 %i.bx, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.eq to i8
  %i.er = urem i8 %.lhs.trunc40.i, 10
  %i.es = or disjoint i8 %i.er, 48
  %i.et = load i32, ptr %4, align 4, !tbaa !10
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %2, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 1
  store i8 %i.es, ptr %i.ew, align 1, !tbaa !11
  %i.ex = udiv i32 %i.bx, 1000000
  %i.ey = trunc nuw nsw i32 %i.ex to i8
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = load i32, ptr %4, align 4, !tbaa !10
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %2, i64 %i.fb
  store i8 %i.ez, ptr %i.fc, align 1, !tbaa !11
  %i.fd = load i32, ptr %4, align 4, !tbaa !10
  %i.fe = add nsw i32 %i.fd, 7                    ; 2 uses
  store i32 %i.fe, ptr %4, align 4, !tbaa !10
  store i32 %i.fe, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.ff = icmp sgt i32 %.0.i98, -1
  br i1 %i.ff, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fg = zext nneg i32 %.0.i98 to i64
  %i.fh = shl nuw i64 %.0.i, %i.fg
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.fh, ptr %2, ptr noundef nonnull %4)
  %i.fi = load i32, ptr %4, align 4, !tbaa !10
  store i32 %i.fi, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.fj = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.fj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fk = sub nsw i32 0, %.0.i98
  %i.fl = zext nneg i32 %i.fk to i64              ; 2 uses
  %i.fm = lshr i64 %.0.i, %i.fl                   ; 5 uses
  %i.fn = shl i64 %i.fm, %i.fl
  %i.fo = sub i64 %.0.i, %i.fn
  %i.fp = icmp samesign ugt i64 %i.fm, 4294967295
  br i1 %i.fp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.fm, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.fm, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.fq = trunc nuw i64 %i.fm to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.fs, %.lr.ph.i100 ], [ %i.fq, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.fz, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.fr = urem i32 %.029.i101, 10
  %i.fs = udiv i32 %.029.i101, 10
  %i.ft = trunc nuw nsw i32 %i.fr to i8
  %i.fu = or disjoint i8 %i.ft, 48
  %i.fv = load i32, ptr %4, align 4, !tbaa !10
  %i.fw = add nsw i32 %i.fv, %.02228.i102
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %2, i64 %i.fx
  store i8 %i.fu, ptr %i.fy, align 1, !tbaa !11
  %i.fz = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !10
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.ga = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.fz, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gb = add nsw i32 %i.ga, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gb, -1            ; 2 uses
  %i.gc = icmp slt i32 %i.ga, %.02030.i106
  br i1 %i.gc, label %.lr.ph34.preheader.i108, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.gd = sext i32 %.02030.i106 to i64
  %i.ge = sext i32 %i.ga to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.ge, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.gd, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11
  %i.gh = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !11
  store i8 %i.gi, ptr %i.gf, align 1, !tbaa !11
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !11
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.gj = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.gj, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !10
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gb, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117, %bb.k
  %i.gk = phi i32 [ %.pre-phi.i107, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.gk, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %i.fo, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.gl = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.gl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !11
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.gm = sub nsw i32 0, %1
  store i32 %i.gm, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !10   ; 5 uses
  %i.gn = icmp sgt i32 %.pr.i, 0
  br i1 %i.gn, label %.lr.ph.preheader.i, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.go = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.go, -1 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !11
  %i.gr = icmp eq i8 %i.gq, 48
  br i1 %i.gr, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.gs = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.gs, ptr %4, align 4, !tbaa !10
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !13

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !13

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.gt = phi i32 [ %i.gs, %.lr.ph.i118.lr.ph ], [ %i.gx, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !11
  %i.gw = icmp eq i8 %i.gv, 48
  br i1 %i.gw, label %.lr.ph, label %.critedge.i, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.gx = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.gx, ptr %4, align 4, !tbaa !10
  %i.gy = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.gy, label %.lr.ph.i118, label %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, !llvm.loop !13

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.gz = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.gz, label %.lr.ph30.i.preheader, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.go, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.gt, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !11
  %i.hc = icmp eq i8 %i.hb, 48
  br i1 %i.hc, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
end_hunk_0
