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
  %i.bh = urem <2 x i16> %i.bg, splat (i16 10)    ; 2 uses
  %6 = bitcast <2 x i16> %i.bh to <4 x i8>
  %i.bi = extractelement <4 x i8> %6, i64 0
  %i.bj = or disjoint i8 %i.bi, 48
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !9
  %7 = bitcast <2 x i16> %i.bh to <4 x i8>
  %i.bk = extractelement <4 x i8> %7, i64 2
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = load i32, ptr %4, align 4, !tbaa !8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !9
  %i.bp = udiv i64 %.094, 10000000
  %i.bq = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.br = add nsw i32 %i.bq, 3
  store i32 %i.br, ptr %4, align 4, !tbaa !8
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr i8, ptr %2, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 9
  %i.bv = urem i64 %.094, 10000000
  %i.bw = urem i64 %i.bp, 10000000
  %i.bx = trunc nuw nsw i64 %i.bv to i32          ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bw to i32          ; 5 uses
  %8 = urem i32 %i.by, 10
  %9 = trunc nuw nsw i32 %8 to i8
  %10 = or disjoint i8 %9, 48
  store i8 %10, ptr %i.bu, align 1, !tbaa !9
  %11 = udiv i32 %i.by, 10
  %12 = urem i32 %11, 10
  %13 = trunc nuw nsw i32 %12 to i8
  %14 = or disjoint i8 %13, 48
  %15 = load i32, ptr %4, align 4, !tbaa !8
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, ptr %2, i64 %16
  %18 = getelementptr i8, ptr %17, i64 5
  store i8 %14, ptr %18, align 1, !tbaa !9
  %19 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %20 = insertelement <4 x i32> %19, i32 %i.bx, i64 1 ; 2 uses
  %21 = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %22 = udiv <4 x i32> %21, <i32 100, i32 1, i32 10, i32 100>
  %23 = urem <4 x i32> %22, splat (i32 10)
  %24 = trunc nuw nsw <4 x i32> %23 to <4 x i8>   ; 4 uses
  %i.bz = extractelement <4 x i8> %24, i64 0
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = load i32, ptr %4, align 4, !tbaa !8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %2, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  store i8 %i.ca, ptr %i.ce, align 1, !tbaa !9
  %i.cf = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cg = udiv <4 x i32> %i.cf, <i32 1000, i32 1000, i32 10000, i32 10000>
  %i.ch = trunc nuw nsw <4 x i32> %i.cg to <4 x i16>
  %i.ci = urem <4 x i16> %i.ch, splat (i16 10)
  %25 = trunc nuw nsw <4 x i16> %i.ci to <4 x i8> ; 4 uses
  %i.cj = extractelement <4 x i8> %25, i64 0
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = load i32, ptr %4, align 4, !tbaa !8
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 3
  store i8 %i.ck, ptr %i.co, align 1, !tbaa !9
  %i.cp = extractelement <4 x i8> %25, i64 2
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = load i32, ptr %4, align 4, !tbaa !8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 2
  store i8 %i.cq, ptr %i.cu, align 1, !tbaa !9
  %i.cv = udiv i32 %i.by, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.cv to i8
  %i.cw = urem i8 %.lhs.trunc34.i, 10
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = load i32, ptr %4, align 4, !tbaa !8
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 1
  store i8 %i.cx, ptr %i.db, align 1, !tbaa !9
  %i.dc = udiv i32 %i.by, 1000000
  %i.dd = trunc nuw nsw i32 %i.dc to i8
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = load i32, ptr %4, align 4, !tbaa !8
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %2, i64 %i.dg
  store i8 %i.de, ptr %i.dh, align 1, !tbaa !9
  %i.di = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.dj = add nsw i32 %i.di, 7
  store i32 %i.dj, ptr %4, align 4, !tbaa !8
  %i.dk = extractelement <4 x i8> %24, i64 1
  %i.dl = or disjoint i8 %i.dk, 48
  %i.dm = sext i32 %i.di to i64
  %i.dn = getelementptr i8, ptr %2, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 13
  store i8 %i.dl, ptr %i.do, align 1, !tbaa !9
  %26 = extractelement <4 x i8> %24, i64 2
  %27 = or disjoint i8 %26, 48
  %i.dp = load i32, ptr %4, align 4, !tbaa !8
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %2, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 5
  store i8 %27, ptr %i.ds, align 1, !tbaa !9
  %i.dt = extractelement <4 x i8> %24, i64 3
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = load i32, ptr %4, align 4, !tbaa !8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr i8, ptr %2, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  store i8 %i.du, ptr %i.dy, align 1, !tbaa !9
  %i.dz = extractelement <4 x i8> %25, i64 1
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = load i32, ptr %4, align 4, !tbaa !8
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr %2, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 3
  store i8 %i.ea, ptr %i.ee, align 1, !tbaa !9
  %i.ef = extractelement <4 x i8> %25, i64 3
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = load i32, ptr %4, align 4, !tbaa !8
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %2, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 2
  store i8 %i.eg, ptr %i.ek, align 1, !tbaa !9
  %i.el = udiv i32 %i.bx, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.el to i8
  %i.em = urem i8 %.lhs.trunc40.i, 10
  %i.en = or disjoint i8 %i.em, 48
  %i.eo = load i32, ptr %4, align 4, !tbaa !8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr i8, ptr %2, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 1
  store i8 %i.en, ptr %i.er, align 1, !tbaa !9
  %i.es = udiv i32 %i.bx, 1000000
  %i.et = trunc nuw nsw i32 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = load i32, ptr %4, align 4, !tbaa !8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %2, i64 %i.ew
  store i8 %i.eu, ptr %i.ex, align 1, !tbaa !9
  %i.ey = load i32, ptr %4, align 4, !tbaa !8
  %i.ez = add nsw i32 %i.ey, 7                    ; 2 uses
  store i32 %i.ez, ptr %4, align 4, !tbaa !8
  store i32 %i.ez, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.fa = icmp sgt i32 %.0.i98, -1
  br i1 %i.fa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fb = zext nneg i32 %.0.i98 to i64
  %i.fc = shl nuw i64 %.0.i, %i.fb
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.fc, ptr %2, ptr noundef nonnull %4)
  %i.fd = load i32, ptr %4, align 4, !tbaa !8
  store i32 %i.fd, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.fe = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.fe, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ff = sub nsw i32 0, %.0.i98
  %i.fg = zext nneg i32 %i.ff to i64              ; 2 uses
  %i.fh = lshr i64 %.0.i, %i.fg                   ; 5 uses
  %i.fi = shl i64 %i.fh, %i.fg
  %i.fj = sub i64 %.0.i, %i.fi
  %i.fk = icmp samesign ugt i64 %i.fh, 4294967295
  br i1 %i.fk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.fh, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.fh, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.fl = trunc nuw i64 %i.fh to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.fn, %.lr.ph.i100 ], [ %i.fl, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.fu, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.fm = urem i32 %.029.i101, 10
  %i.fn = udiv i32 %.029.i101, 10
  %i.fo = trunc nuw nsw i32 %i.fm to i8
  %i.fp = or disjoint i8 %i.fo, 48
  %i.fq = load i32, ptr %4, align 4, !tbaa !8
  %i.fr = add nsw i32 %i.fq, %.02228.i102
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %2, i64 %i.fs
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !9
  %i.fu = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.fv = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.fu, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.fw = add nsw i32 %i.fv, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.fw, -1            ; 2 uses
  %i.fx = icmp slt i32 %i.fv, %.02030.i106
  br i1 %i.fx, label %.lr.ph34.preheader.i108, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.fy = sext i32 %.02030.i106 to i64
  %i.fz = sext i32 %i.fv to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.fz, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.fy, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9
  %i.gc = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !9
  store i8 %i.gd, ptr %i.ga, align 1, !tbaa !9
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !9
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.ge = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.ge, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.fw, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117, %bb.k
  %i.gf = phi i32 [ %.pre-phi.i107, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.gf, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %i.fj, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.gg = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.gg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !9
  store i32 0, ptr %4, align 4, !tbaa !8
  %i.gh = sub nsw i32 0, %1
  store i32 %i.gh, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !8    ; 5 uses
  %i.gi = icmp sgt i32 %.pr.i, 0
  br i1 %i.gi, label %.lr.ph.preheader.i, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.gj = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.gj, -1 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gm = icmp eq i8 %i.gl, 48
  br i1 %i.gm, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.gn = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.gn, ptr %4, align 4, !tbaa !8
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !11

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !11

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.go = phi i32 [ %i.gn, %.lr.ph.i118.lr.ph ], [ %i.gs, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gr = icmp eq i8 %i.gq, 48
  br i1 %i.gr, label %.lr.ph, label %.critedge.i, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.gs = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.gs, ptr %4, align 4, !tbaa !8
  %i.gt = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.gt, label %.lr.ph.i118, label %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, !llvm.loop !11

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.gu = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.gu, label %.lr.ph30.i.preheader, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.gj, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.go, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9
  %i.gx = icmp eq i8 %i.gw, 48
  br i1 %i.gx, label %bb.r, label %.critedge2.i

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
  %i.gy = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.gy, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.gz = ashr exact i64 %sext.i, 32              ; 2 uses
  br label %.lr.ph35.i

._crit_edge.i122:                                 ; preds = %.lr.ph35.i, %.preheader.i
  %.lcssa.i = phi i32 [ %.lcssa139160, %.preheader.i ], [ %i.hh, %.lr.ph35.i ]
  %i.ha = sub nsw i32 %.lcssa.i, %.020.lcssa.i
  store i32 %i.ha, ptr %4, align 4, !tbaa !8
  %i.hb = load i32, ptr %5, align 4, !tbaa !8
  %i.hc = sub nsw i32 %i.hb, %.020.lcssa.i
  store i32 %i.hc, ptr %5, align 4, !tbaa !8
  %.pre154 = load i32, ptr %4, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv42.i = phi i64 [ %i.gz, %.lr.ph35.preheader.i ], [ %indvars.iv.next43.i, %.lr.ph35.i ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv42.i
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = sub nuw nsw i64 %indvars.iv42.i, %i.gz
  %i.hg = getelementptr inbounds i8, ptr %2, i64 %i.hf
  store i8 %i.he, ptr %i.hg, align 1, !tbaa !9
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.hh = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp slt i64 %indvars.iv.next43.i, %i.hi
  br i1 %i.hj, label %.lr.ph35.i, label %._crit_edge.i122, !llvm.loop !13

.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, !llvm.loop !11

_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit: ; preds = %.lr.ph.preheader, %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, %bb.q, %.critedge.i, %.critedge2.i, %._crit_edge.i122
  %i.hk = phi i32 [ %.pre154, %._crit_edge.i122 ], [ %.pr.i, %bb.q ], [ 0, %.critedge.i ], [ %.lcssa139160, %.critedge2.i ], [ %i.gs, %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge ], [ %i.gn, %.lr.ph.preheader ]
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %2, i64 %i.hl
  store i8 0, ptr %i.hm, align 1, !tbaa !9
  %i.hn = load i32, ptr %4, align 4, !tbaa !8
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit
  %i.hp = sub nsw i32 0, %1
  store i32 %i.hp, ptr %5, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, %bb.s, %bb.a
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %0, ptr nofree captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
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
  %i.l = load i32, ptr %2, align 4, !tbaa !8
  %i.m = add nsw i32 %i.l, %.02228.i
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1, !tbaa !9
  %i.p = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %.not.i = icmp samesign ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = load i32, ptr %2, align 4, !tbaa !8      ; 4 uses
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
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  store i8 %i.x, ptr %i.u, align 1, !tbaa !9
  store i8 %i.v, ptr %i.w, align 1, !tbaa !9
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %2, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre.i.pn = phi i32 [ %.pre.i, %._crit_edge35.loopexit.i ], [ %i.q, %._crit_edge.i ]
  %.pre-phi.i = add nsw i32 %.pre.i.pn, %i.p      ; 2 uses
  store i32 %.pre-phi.i, ptr %2, align 4, !tbaa !8
  %i.z = urem i32 %i.e, 10
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = sext i32 %.pre-phi.i to i64
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 6
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !9
  %i.af = udiv i32 %i.e, 10
  %3 = urem i32 %i.af, 10
  %4 = trunc nuw nsw i32 %3 to i8
  %5 = or disjoint i8 %4, 48
  %6 = load i32, ptr %2, align 4, !tbaa !8
  %7 = sext i32 %6 to i64
  %8 = getelementptr i8, ptr %1, i64 %7
  %9 = getelementptr i8, ptr %8, i64 5
  store i8 %5, ptr %9, align 1, !tbaa !9
  %10 = udiv i32 %i.e, 100
  %11 = urem i32 %10, 10
  %12 = trunc nuw nsw i32 %11 to i8
  %i.ag = or disjoint i8 %12, 48
  %i.ah = load i32, ptr %2, align 4, !tbaa !8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  store i8 %i.ag, ptr %i.ak, align 1, !tbaa !9
  %i.al = udiv i32 %i.e, 1000
  %.lhs.trunc103 = trunc nuw nsw i32 %i.al to i16
  %i.am = urem i16 %.lhs.trunc103, 10
  %i.an = trunc nuw nsw i16 %i.am to i8
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = load i32, ptr %2, align 4, !tbaa !8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 3
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !9
  %i.at = udiv i32 %i.e, 10000
  %.lhs.trunc105 = trunc nuw nsw i32 %i.at to i16
  %i.au = urem i16 %.lhs.trunc105, 10
  %i.av = trunc nuw nsw i16 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = load i32, ptr %2, align 4, !tbaa !8
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 2
  store i8 %i.aw, ptr %i.ba, align 1, !tbaa !9
  %i.bb = udiv i32 %i.e, 100000
  %.lhs.trunc107 = trunc nuw i32 %i.bb to i8
  %i.bc = urem i8 %.lhs.trunc107, 10
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = load i32, ptr %2, align 4, !tbaa !8
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %1, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  store i8 %i.bd, ptr %i.bh, align 1, !tbaa !9
  %i.bi = udiv i32 %i.e, 1000000
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = load i32, ptr %2, align 4, !tbaa !8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !9
  %i.bo = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.bp = add nsw i32 %i.bo, 7
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq i64 %i.d, 0
  br i1 %.not44, label %bb.d, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.c, %.lr.ph.i50
  %.029.i51 = phi i32 [ %i.br, %.lr.ph.i50 ], [ %i.e, %bb.c ] ; 3 uses
  %.02228.i52 = phi i32 [ %i.by, %.lr.ph.i50 ], [ 0, %bb.c ] ; 3 uses
  %i.bq = urem i32 %.029.i51, 10
  %i.br = udiv i32 %.029.i51, 10
  %i.bs = trunc nuw nsw i32 %i.bq to i8
  %i.bt = or disjoint i8 %i.bs, 48
  %i.bu = load i32, ptr %2, align 4, !tbaa !8
  %i.bv = add nsw i32 %i.bu, %.02228.i52
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw
  store i8 %i.bt, ptr %i.bx, align 1, !tbaa !9
  %i.by = add nuw nsw i32 %.02228.i52, 1          ; 2 uses
  %.not.i53 = icmp samesign ult i32 %.029.i51, 10
  br i1 %.not.i53, label %._crit_edge.i54, label %.lr.ph.i50, !llvm.loop !0

._crit_edge.i54:                                  ; preds = %.lr.ph.i50
  %i.bz = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.02030.i56 = add i32 %i.bz, %.02228.i52        ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.02030.i56
  br i1 %i.ca, label %.lr.ph34.preheader.i58, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67

.lr.ph34.preheader.i58:                           ; preds = %._crit_edge.i54
  %i.cb = sext i32 %.02030.i56 to i64
  %i.cc = sext i32 %i.bz to i64
  br label %.lr.ph34.i59

.lr.ph34.i59:                                     ; preds = %.lr.ph34.i59, %.lr.ph34.preheader.i58
  %indvars.iv36.i60 = phi i64 [ %i.cc, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next37.i62, %.lr.ph34.i59 ] ; 2 uses
  %indvars.iv.i61 = phi i64 [ %i.cb, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next.i63, %.lr.ph34.i59 ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i60 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i61 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !9
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !9
  %indvars.iv.next37.i62 = add nsw i64 %indvars.iv36.i60, 1 ; 2 uses
  %indvars.iv.next.i63 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.ch = icmp slt i64 %indvars.iv.next37.i62, %indvars.iv.next.i63
  br i1 %i.ch, label %.lr.ph34.i59, label %._crit_edge35.loopexit.i64, !llvm.loop !1

._crit_edge35.loopexit.i64:                       ; preds = %.lr.ph34.i59
  %.pre.i65 = load i32, ptr %2, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67: ; preds = %._crit_edge.i54, %._crit_edge35.loopexit.i64
  %.pre.i65.pn = phi i32 [ %.pre.i65, %._crit_edge35.loopexit.i64 ], [ %i.bz, %._crit_edge.i54 ]
  %.pre-phi.i57 = add nsw i32 %.pre.i65.pn, %i.by ; 2 uses
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split

bb.d:                                             ; preds = %bb.c
  %.not27.i72 = icmp eq i64 %i.a, 0
  br i1 %.not27.i72, label %._crit_edge.i77, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.d, %.lr.ph.i73
  %.029.i74 = phi i32 [ %i.cj, %.lr.ph.i73 ], [ %i.b, %bb.d ] ; 3 uses
  %.02228.i75 = phi i32 [ %i.cq, %.lr.ph.i73 ], [ 0, %bb.d ] ; 2 uses
  %i.ci = urem i32 %.029.i74, 10
  %i.cj = udiv i32 %.029.i74, 10
  %i.ck = trunc nuw nsw i32 %i.ci to i8
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = load i32, ptr %2, align 4, !tbaa !8
  %i.cn = add nsw i32 %i.cm, %.02228.i75
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  store i8 %i.cl, ptr %i.cp, align 1, !tbaa !9
  %i.cq = add nuw nsw i32 %.02228.i75, 1          ; 2 uses
  %.not.i76 = icmp samesign ult i32 %.029.i74, 10
  br i1 %.not.i76, label %._crit_edge.i77, label %.lr.ph.i73, !llvm.loop !0

._crit_edge.i77:                                  ; preds = %.lr.ph.i73, %bb.d
  %.022.lcssa.i78 = phi i32 [ 0, %bb.d ], [ %i.cq, %.lr.ph.i73 ] ; 2 uses
  %i.cr = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %i.cs = add nsw i32 %i.cr, %.022.lcssa.i78      ; 2 uses
  %.02030.i79 = add nsw i32 %i.cs, -1             ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %.02030.i79
  br i1 %i.ct, label %.lr.ph34.preheader.i81, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90

.lr.ph34.preheader.i81:                           ; preds = %._crit_edge.i77
  %i.cu = sext i32 %.02030.i79 to i64
  %i.cv = sext i32 %i.cr to i64
  br label %.lr.ph34.i82

.lr.ph34.i82:                                     ; preds = %.lr.ph34.i82, %.lr.ph34.preheader.i81
  %indvars.iv36.i83 = phi i64 [ %i.cv, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next37.i85, %.lr.ph34.i82 ] ; 2 uses
  %indvars.iv.i84 = phi i64 [ %i.cu, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next.i86, %.lr.ph34.i82 ] ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i83 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !9
  %i.cy = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i84 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  store i8 %i.cz, ptr %i.cw, align 1, !tbaa !9
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !9
  %indvars.iv.next37.i85 = add nsw i64 %indvars.iv36.i83, 1 ; 2 uses
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i84, -1 ; 2 uses
  %i.da = icmp slt i64 %indvars.iv.next37.i85, %indvars.iv.next.i86
  br i1 %i.da, label %.lr.ph34.i82, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split, !llvm.loop !1

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.sink171 = phi i32 [ %i.bp, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  %.sink168 = phi i32 [ %i.bo, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  %.sink166 = phi i64 [ 13, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ 6, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  store i32 %.sink171, ptr %2, align 4, !tbaa !8
  %i.db = urem i32 %i.b, 10
  %i.dc = trunc nuw nsw i32 %i.db to i8
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = sext i32 %.sink168 to i64
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 %.sink166
  store i8 %i.dd, ptr %i.dg, align 1, !tbaa !9
  %i.dh = udiv i32 %i.b, 10
  %13 = urem i32 %i.dh, 10
  %14 = trunc nuw nsw i32 %13 to i8
  %15 = or disjoint i8 %14, 48
  %16 = load i32, ptr %2, align 4, !tbaa !8
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, ptr %1, i64 %17
  %19 = getelementptr i8, ptr %18, i64 5
  store i8 %15, ptr %19, align 1, !tbaa !9
  %20 = udiv i32 %i.b, 100
  %21 = urem i32 %20, 10
  %22 = trunc nuw nsw i32 %21 to i8
  %i.di = or disjoint i8 %22, 48
  %i.dj = load i32, ptr %2, align 4, !tbaa !8
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr %1, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  store i8 %i.di, ptr %i.dm, align 1, !tbaa !9
  %i.dn = udiv i32 %i.b, 1000
  %.lhs.trunc109 = trunc nuw nsw i32 %i.dn to i16
  %i.do = urem i16 %.lhs.trunc109, 10
  %i.dp = trunc nuw nsw i16 %i.do to i8
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = load i32, ptr %2, align 4, !tbaa !8
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %1, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 3
  store i8 %i.dq, ptr %i.du, align 1, !tbaa !9
  %i.dv = udiv i32 %i.b, 10000
  %.lhs.trunc111 = trunc nuw nsw i32 %i.dv to i16
  %i.dw = urem i16 %.lhs.trunc111, 10
  %i.dx = trunc nuw nsw i16 %i.dw to i8
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = load i32, ptr %2, align 4, !tbaa !8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr %1, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 2
  store i8 %i.dy, ptr %i.ec, align 1, !tbaa !9
  %i.ed = udiv i32 %i.b, 100000
  %.lhs.trunc113 = trunc nuw i32 %i.ed to i8
  %i.ee = urem i8 %.lhs.trunc113, 10
  %i.ef = or disjoint i8 %i.ee, 48
  %i.eg = load i32, ptr %2, align 4, !tbaa !8
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr %1, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 1
  store i8 %i.ef, ptr %i.ej, align 1, !tbaa !9
  %i.ek = udiv i32 %i.b, 1000000
  %i.el = trunc nuw nsw i32 %i.ek to i8
  %i.em = or disjoint i8 %i.el, 48
  %i.en = load i32, ptr %2, align 4, !tbaa !8
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %1, i64 %i.eo
  store i8 %i.em, ptr %i.ep, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split: ; preds = %.lr.ph34.i82, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split
  %.022.lcssa.i78.sink = phi i32 [ 7, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split ], [ %.022.lcssa.i78, %.lr.ph34.i82 ]
  %.pre.i88 = load i32, ptr %2, align 4, !tbaa !8
  %.pre41.i89 = add nsw i32 %.pre.i88, %.022.lcssa.i78.sink
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90: ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split, %._crit_edge.i77
  %.sink = phi i32 [ %i.cs, %._crit_edge.i77 ], [ %.pre41.i89, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split ]
  store i32 %.sink, ptr %2, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %0, i32 noundef range(i32 -128, 0) %1, i32 noundef range(i32 -2147483648, 21) %2, ptr nofree captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 0, %1                        ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 65
  br i1 %i.b, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.preheader, %bb.b
  %.086 = phi i64 [ %i.q, %bb.b ], [ %0, %.preheader ] ; 2 uses
  %.03685 = phi i32 [ %i.e, %bb.b ], [ %i.a, %.preheader ]
  %.03784 = phi i32 [ %i.r, %bb.b ], [ 0, %.preheader ]
  %cond = icmp eq i64 %.086, 0
  br i1 %cond, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph87
  %i.d = mul i64 %.086, 5                         ; 2 uses
  %i.e = add nsw i32 %.03685, -1                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.d, %i.f                      ; 2 uses
  %i.h = trunc i64 %i.g to i8
  %i.i = add i8 %i.h, 48
  %i.j = load i32, ptr %4, align 4, !tbaa !8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %3, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !9
  %i.m = load i32, ptr %4, align 4, !tbaa !8
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %4, align 4, !tbaa !8
  %sext = shl i64 %i.g, 32
  %i.o = ashr exact i64 %sext, 32
  %i.p = shl i64 %i.o, %i.f
  %i.q = sub i64 %i.d, %i.p                       ; 2 uses
  %i.r = add nuw nsw i32 %.03784, 1               ; 2 uses
  %exitcond95.not = icmp eq i32 %i.r, %2
  br i1 %exitcond95.not, label %._crit_edge88, label %.lr.ph87, !llvm.loop !14

._crit_edge88:                                    ; preds = %bb.b, %.preheader
  %.036.lcssa = phi i32 [ %i.a, %.preheader ], [ %i.e, %bb.b ]
  %.0.lcssa = phi i64 [ %0, %.preheader ], [ %i.q, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.0.lcssa, 0
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge88
  %i.s = add nsw i32 %.036.lcssa, -1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = and i64 %i.u, %.0.lcssa
  %.not41 = icmp eq i64 %i.v, 0
  br i1 %.not41, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %4, align 4, !tbaa !8      ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 49, ptr %3, align 1, !tbaa !9
  store i32 1, ptr %5, align 4, !tbaa !8
  store i32 1, ptr %4, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr i8, ptr %3, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = add i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !9
  %i.ad = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.af = zext nneg i32 %i.ad to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.ah, 58
  br i1 %.not.i, label %bb.g, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.g:                                             ; preds = %.lr.ph.i
  store i8 48, ptr %i.ag, align 1, !tbaa !9
  %i.ai = getelementptr i8, ptr %3, i64 %indvars.iv.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 -2     ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = add i8 %i.ak, 1
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !9
  %i.am = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.an = load i8, ptr %3, align 1, !tbaa !9
  %i.ao = icmp eq i8 %i.an, 58
  br i1 %i.ao, label %bb.h, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.h:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %3, align 1, !tbaa !9
  %i.ap = load i32, ptr %5, align 4, !tbaa !8
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %5, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.i:                                             ; preds = %bb.a
  %i.ar = sub nsw i32 -64, %1                     ; 2 uses
  switch i32 %i.ar, label %bb.k [
    i32 0, label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
    i32 64, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit

bb.k:                                             ; preds = %bb.i
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nsw i32 %1, 128
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %0, %i.au
  %i.aw = lshr i64 %0, %i.as
  br label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit

_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.17.1 = phi i64 [ %0, %bb.j ], [ %i.av, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.j ], [ %i.aw, %bb.k ], [ %0, %bb.i ] ; 2 uses
  %i.ax = icmp sgt i32 %2, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
  %i.ay = sub nuw nsw i32 128, %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit
  %indvars.iv = phi i64 [ 128, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %.03877 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bz, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.sroa.0.075 = phi i64 [ %.sroa.0.1, %.lr.ph.preheader ], [ %i.br, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 2 uses
  %.sroa.17.074 = phi i64 [ %.sroa.17.1, %.lr.ph.preheader ], [ %i.bk, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %i.az = icmp eq i64 %.sroa.0.075, 0
  %i.ba = icmp eq i64 %.sroa.17.074, 0
end_hunk_0
