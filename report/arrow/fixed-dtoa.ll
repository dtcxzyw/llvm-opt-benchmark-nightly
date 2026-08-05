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
  %6 = udiv i16 %.lhs.trunc, 10
  %7 = urem i16 %6, 10
  %8 = trunc nuw nsw i16 %7 to i8
  %9 = or disjoint i8 %8, 48
  %10 = load i32, ptr %4, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, ptr %2, i64 %11
  %13 = getelementptr i8, ptr %12, i64 1
  store i8 %9, ptr %13, align 1, !tbaa !7
  %14 = udiv i16 %.lhs.trunc, 100
  %15 = urem i16 %14, 10
  %16 = trunc nuw nsw i16 %15 to i8
  %i.ba = or disjoint i8 %16, 48
  %i.bb = load i32, ptr %4, align 4, !tbaa !3
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  store i8 %i.ba, ptr %i.bd, align 1, !tbaa !7
  %i.be = udiv i64 %.094, 10000000
  %17 = urem i64 %i.be, 10000000
  %18 = trunc nuw nsw i64 %17 to i32              ; 7 uses
  %19 = load i32, ptr %4, align 4, !tbaa !3       ; 2 uses
  %20 = add nsw i32 %19, 3
  store i32 %20, ptr %4, align 4, !tbaa !3
  %21 = urem i32 %18, 10
  %22 = trunc nuw nsw i32 %21 to i8
  %23 = or disjoint i8 %22, 48
  %24 = sext i32 %19 to i64
  %25 = getelementptr i8, ptr %2, i64 %24
  %26 = getelementptr i8, ptr %25, i64 9
  store i8 %23, ptr %26, align 1, !tbaa !7
  %i.bf = udiv i32 %18, 10
  %i.bg = urem i32 %i.bf, 10
  %i.bh = trunc nuw nsw i32 %i.bg to i8
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = load i32, ptr %4, align 4, !tbaa !3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %2, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 5
  store i8 %i.bi, ptr %i.bm, align 1, !tbaa !7
  %27 = udiv i32 %18, 100
  %28 = urem i32 %27, 10
  %29 = trunc nuw nsw i32 %28 to i8
  %i.bn = or disjoint i8 %29, 48
  %i.bo = load i32, ptr %4, align 4, !tbaa !3
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %2, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  store i8 %i.bn, ptr %i.br, align 1, !tbaa !7
  %30 = udiv i32 %18, 1000
  %.lhs.trunc30.i = trunc nuw nsw i32 %30 to i16
  %31 = urem i16 %.lhs.trunc30.i, 10
  %32 = trunc nuw nsw i16 %31 to i8
  %i.bs = or disjoint i8 %32, 48
  %i.bt = load i32, ptr %4, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 3
  store i8 %i.bs, ptr %i.bw, align 1, !tbaa !7
  %33 = udiv i32 %18, 10000
  %.lhs.trunc32.i = trunc nuw nsw i32 %33 to i16
  %34 = urem i16 %.lhs.trunc32.i, 10
  %35 = trunc nuw nsw i16 %34 to i8
  %i.bx = or disjoint i8 %35, 48
  %i.by = load i32, ptr %4, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr i8, ptr %2, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 2
  store i8 %i.bx, ptr %i.cb, align 1, !tbaa !7
  %i.cc = udiv i32 %18, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.cc to i8
  %i.cd = urem i8 %.lhs.trunc34.i, 10
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = load i32, ptr %4, align 4, !tbaa !3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %2, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  store i8 %i.ce, ptr %i.ci, align 1, !tbaa !7
  %i.cj = udiv i32 %18, 1000000
  %i.ck = trunc nuw nsw i32 %i.cj to i8
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = load i32, ptr %4, align 4, !tbaa !3
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !7
  %36 = urem i64 %.094, 10000000
  %37 = trunc nuw nsw i64 %36 to i32              ; 7 uses
  %i.cp = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.cq = add nsw i32 %i.cp, 7
  store i32 %i.cq, ptr %4, align 4, !tbaa !3
  %38 = urem i32 %37, 10
  %39 = trunc nuw nsw i32 %38 to i8
  %i.cr = or disjoint i8 %39, 48
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 13
  store i8 %i.cr, ptr %i.cu, align 1, !tbaa !7
  %40 = udiv i32 %37, 10
  %41 = urem i32 %40, 10
  %42 = trunc nuw nsw i32 %41 to i8
  %i.cv = or disjoint i8 %42, 48
  %i.cw = load i32, ptr %4, align 4, !tbaa !3
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %2, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 5
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !7
  %43 = udiv i32 %37, 100
  %44 = urem i32 %43, 10
  %45 = trunc nuw nsw i32 %44 to i8
  %i.da = or disjoint i8 %45, 48
  %i.db = load i32, ptr %4, align 4, !tbaa !3
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr i8, ptr %2, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  store i8 %i.da, ptr %i.de, align 1, !tbaa !7
  %46 = udiv i32 %37, 1000
  %.lhs.trunc36.i = trunc nuw nsw i32 %46 to i16
  %47 = urem i16 %.lhs.trunc36.i, 10
  %48 = trunc nuw nsw i16 %47 to i8
  %i.df = or disjoint i8 %48, 48
  %i.dg = load i32, ptr %4, align 4, !tbaa !3
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr i8, ptr %2, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 3
  store i8 %i.df, ptr %i.dj, align 1, !tbaa !7
  %49 = udiv i32 %37, 10000
  %.lhs.trunc38.i = trunc nuw nsw i32 %49 to i16
  %50 = urem i16 %.lhs.trunc38.i, 10
  %51 = trunc nuw nsw i16 %50 to i8
  %i.dk = or disjoint i8 %51, 48
  %i.dl = load i32, ptr %4, align 4, !tbaa !3
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %2, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 2
  store i8 %i.dk, ptr %i.do, align 1, !tbaa !7
  %i.dp = udiv i32 %37, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.dp to i8
  %i.dq = urem i8 %.lhs.trunc40.i, 10
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = load i32, ptr %4, align 4, !tbaa !3
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr i8, ptr %2, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 1
  store i8 %i.dr, ptr %i.dv, align 1, !tbaa !7
  %i.dw = udiv i32 %37, 1000000
  %i.dx = trunc nuw nsw i32 %i.dw to i8
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = load i32, ptr %4, align 4, !tbaa !3
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %2, i64 %i.ea
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !7
  %i.ec = load i32, ptr %4, align 4, !tbaa !3
  %i.ed = add nsw i32 %i.ec, 7                    ; 2 uses
  store i32 %i.ed, ptr %4, align 4, !tbaa !3
  store i32 %i.ed, ptr %5, align 4, !tbaa !3
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.ee = icmp sgt i32 %.0.i98, -1
  br i1 %i.ee, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ef = zext nneg i32 %.0.i98 to i64
  %i.eg = shl nuw i64 %.0.i, %i.ef
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.eg, ptr %2, ptr noundef nonnull %4)
  %i.eh = load i32, ptr %4, align 4, !tbaa !3
  store i32 %i.eh, ptr %5, align 4, !tbaa !3
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.ei = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.ei, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ej = sub nsw i32 0, %.0.i98
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = lshr i64 %.0.i, %i.ek                   ; 5 uses
  %i.em = shl i64 %i.el, %i.ek
  %i.en = sub i64 %.0.i, %i.em
  %i.eo = icmp samesign ugt i64 %i.el, 4294967295
  br i1 %i.eo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.el, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !3
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.el, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.ep = trunc nuw i64 %i.el to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.er, %.lr.ph.i100 ], [ %i.ep, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.ey, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.eq = urem i32 %.029.i101, 10
  %i.er = udiv i32 %.029.i101, 10
  %i.es = trunc nuw nsw i32 %i.eq to i8
  %i.et = or disjoint i8 %i.es, 48
  %i.eu = load i32, ptr %4, align 4, !tbaa !3
  %i.ev = add nsw i32 %i.eu, %.02228.i102
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %2, i64 %i.ew
  store i8 %i.et, ptr %i.ex, align 1, !tbaa !7
  %i.ey = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !8

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !3
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.ez = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.ey, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.fa = add nsw i32 %i.ez, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.fa, -1            ; 2 uses
  %i.fb = icmp slt i32 %i.ez, %.02030.i106
  br i1 %i.fb, label %.lr.ph34.preheader.i108, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.fc = sext i32 %.02030.i106 to i64
  %i.fd = sext i32 %i.ez to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.fd, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.fc, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !7
  %i.fg = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !7
  store i8 %i.fh, ptr %i.fe, align 1, !tbaa !7
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !7
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.fi = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.fi, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !10

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !3
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.fa, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117, %bb.k
  %i.fj = phi i32 [ %.pre-phi.i107, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.fj, ptr %5, align 4, !tbaa !3
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %i.en, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.fk = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.fk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !7
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.fl = sub nsw i32 0, %1
  store i32 %i.fl, ptr %5, align 4, !tbaa !3
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !3
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !3    ; 5 uses
  %i.fm = icmp sgt i32 %.pr.i, 0
  br i1 %i.fm, label %.lr.ph.preheader.i, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.fn = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.fn, -1 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !7
  %i.fq = icmp eq i8 %i.fp, 48
  br i1 %i.fq, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.fr = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.fr, ptr %4, align 4, !tbaa !3
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !11

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !11

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.fs = phi i32 [ %i.fr, %.lr.ph.i118.lr.ph ], [ %i.fw, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !7
  %i.fv = icmp eq i8 %i.fu, 48
  br i1 %i.fv, label %.lr.ph, label %.critedge.i, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.fw = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.fw, ptr %4, align 4, !tbaa !3
  %i.fx = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.fx, label %.lr.ph.i118, label %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, !llvm.loop !11

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.fy = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.fy, label %.lr.ph30.i.preheader, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.fn, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.fs, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !7
  %i.gb = icmp eq i8 %i.ga, 48
  br i1 %i.gb, label %bb.r, label %.critedge2.i

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
  %i.gc = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.gc, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.gd = ashr exact i64 %sext.i, 32              ; 2 uses
end_hunk_0
