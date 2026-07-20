inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi:bb.a

.lr.ph34.i59:                                     ; preds = %.lr.ph34.i59, %.lr.ph34.preheader.i58
  %indvars.iv36.i60 = phi i64 [ %i.cm, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next37.i62, %.lr.ph34.i59 ] ; 2 uses
  %indvars.iv.i61 = phi i64 [ %i.cl, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next.i63, %.lr.ph34.i59 ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i60 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !7
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i61 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !7
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !7
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7
  %indvars.iv.next37.i62 = add nsw i64 %indvars.iv36.i60, 1 ; 2 uses
  %indvars.iv.next.i63 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next37.i62, %indvars.iv.next.i63
  br i1 %i.cr, label %.lr.ph34.i59, label %._crit_edge35.loopexit.i64, !llvm.loop !10

._crit_edge35.loopexit.i64:                       ; preds = %.lr.ph34.i59
  %.pre.i65 = load i32, ptr %2, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67: ; preds = %._crit_edge.i54, %._crit_edge35.loopexit.i64
  %.pre.i65.pn = phi i32 [ %.pre.i65, %._crit_edge35.loopexit.i64 ], [ %i.cj, %._crit_edge.i54 ]
  %.pre-phi.i57 = add nsw i32 %.pre.i65.pn, %i.ci ; 2 uses
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split

bb.d:                                             ; preds = %bb.c
  %.not27.i72 = icmp eq i64 %i.a, 0
  br i1 %.not27.i72, label %._crit_edge.i77, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.d, %.lr.ph.i73
  %.029.i74 = phi i32 [ %i.ct, %.lr.ph.i73 ], [ %i.b, %bb.d ] ; 3 uses
  %.02228.i75 = phi i32 [ %i.da, %.lr.ph.i73 ], [ 0, %bb.d ] ; 2 uses
  %i.cs = urem i32 %.029.i74, 10
  %i.ct = udiv i32 %.029.i74, 10
  %i.cu = trunc nuw nsw i32 %i.cs to i8
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = load i32, ptr %2, align 4, !tbaa !3
  %i.cx = add nsw i32 %i.cw, %.02228.i75
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !7
  %i.da = add nuw nsw i32 %.02228.i75, 1          ; 2 uses
  %.not.i76 = icmp samesign ult i32 %.029.i74, 10
  br i1 %.not.i76, label %._crit_edge.i77, label %.lr.ph.i73, !llvm.loop !8

._crit_edge.i77:                                  ; preds = %.lr.ph.i73, %bb.d
  %.022.lcssa.i78 = phi i32 [ 0, %bb.d ], [ %i.da, %.lr.ph.i73 ] ; 2 uses
  %i.db = load i32, ptr %2, align 4, !tbaa !3     ; 3 uses
  %i.dc = add nsw i32 %i.db, %.022.lcssa.i78      ; 2 uses
  %.02030.i79 = add nsw i32 %i.dc, -1             ; 2 uses
  %i.dd = icmp slt i32 %i.db, %.02030.i79
  br i1 %i.dd, label %.lr.ph34.preheader.i81, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90

.lr.ph34.preheader.i81:                           ; preds = %._crit_edge.i77
  %i.de = sext i32 %.02030.i79 to i64
  %i.df = sext i32 %i.db to i64
  br label %.lr.ph34.i82

.lr.ph34.i82:                                     ; preds = %.lr.ph34.i82, %.lr.ph34.preheader.i81
  %indvars.iv36.i83 = phi i64 [ %i.df, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next37.i85, %.lr.ph34.i82 ] ; 2 uses
  %indvars.iv.i84 = phi i64 [ %i.de, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next.i86, %.lr.ph34.i82 ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i83 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !7
  %i.di = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i84 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !7
  store i8 %i.dj, ptr %i.dg, align 1, !tbaa !7
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !7
  %indvars.iv.next37.i85 = add nsw i64 %indvars.iv36.i83, 1 ; 2 uses
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i84, -1 ; 2 uses
  %i.dk = icmp slt i64 %indvars.iv.next37.i85, %indvars.iv.next.i86
  br i1 %i.dk, label %.lr.ph34.i82, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split, !llvm.loop !10

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.sink171 = phi i32 [ %i.bz, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  %.sink168 = phi i32 [ %i.by, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  %.sink166 = phi i64 [ 13, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ 6, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  store i32 %.sink171, ptr %2, align 4, !tbaa !3
  %i.dl = urem i32 %i.b, 10
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  %i.dn = or disjoint i8 %i.dm, 48
  %i.do = sext i32 %.sink168 to i64
  %i.dp = getelementptr i8, ptr %1, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 %.sink166
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !7
  %i.dr = udiv i32 %i.b, 10
  %i.ds = urem i32 %i.dr, 10
  %i.dt = trunc nuw nsw i32 %i.ds to i8
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = load i32, ptr %2, align 4, !tbaa !3
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr i8, ptr %1, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 5
  store i8 %i.du, ptr %i.dy, align 1, !tbaa !7
  %i.dz = udiv i32 %i.b, 100
  %i.ea = urem i32 %i.dz, 10
  %i.eb = trunc nuw nsw i32 %i.ea to i8
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = load i32, ptr %2, align 4, !tbaa !3
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr i8, ptr %1, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  store i8 %i.ec, ptr %i.eg, align 1, !tbaa !7
  %i.eh = udiv i32 %i.b, 1000
  %.lhs.trunc109 = trunc nuw nsw i32 %i.eh to i16
  %i.ei = urem i16 %.lhs.trunc109, 10
  %i.ej = trunc nuw nsw i16 %i.ei to i8
  %i.ek = or disjoint i8 %i.ej, 48
  %i.el = load i32, ptr %2, align 4, !tbaa !3
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr i8, ptr %1, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 3
  store i8 %i.ek, ptr %i.eo, align 1, !tbaa !7
  %i.ep = udiv i32 %i.b, 10000
  %.lhs.trunc111 = trunc nuw nsw i32 %i.ep to i16
  %i.eq = urem i16 %.lhs.trunc111, 10
  %i.er = trunc nuw nsw i16 %i.eq to i8
  %i.es = or disjoint i8 %i.er, 48
  %i.et = load i32, ptr %2, align 4, !tbaa !3
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %1, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 2
  store i8 %i.es, ptr %i.ew, align 1, !tbaa !7
  %i.ex = udiv i32 %i.b, 100000
  %.lhs.trunc113 = trunc nuw i32 %i.ex to i8
  %i.ey = urem i8 %.lhs.trunc113, 10
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = load i32, ptr %2, align 4, !tbaa !3
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %1, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 1
  store i8 %i.ez, ptr %i.fd, align 1, !tbaa !7
  %i.fe = udiv i32 %i.b, 1000000
  %i.ff = trunc nuw nsw i32 %i.fe to i8
  %i.fg = or disjoint i8 %i.ff, 48
  %i.fh = load i32, ptr %2, align 4, !tbaa !3
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %1, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split: ; preds = %.lr.ph34.i82, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split
  %.022.lcssa.i78.sink = phi i32 [ 7, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split ], [ %.022.lcssa.i78, %.lr.ph34.i82 ]
  %.pre.i88 = load i32, ptr %2, align 4, !tbaa !3
  %.pre41.i89 = add nsw i32 %.pre.i88, %.022.lcssa.i78.sink
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90: ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split, %._crit_edge.i77
  %.sink = phi i32 [ %i.dc, %._crit_edge.i77 ], [ %.pre41.i89, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
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
  %i.j = load i32, ptr %4, align 4, !tbaa !3
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %3, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !7
  %i.m = load i32, ptr %4, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %4, align 4, !tbaa !3
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
  %6 = lshr i64 %.0.lcssa, %i.t
  %7 = trunc nuw i64 %6 to i1
  br i1 %7, label %bb.d, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %4, align 4, !tbaa !3      ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 49, ptr %3, align 1, !tbaa !7
  store i32 1, ptr %5, align 4, !tbaa !3
  store i32 1, ptr %4, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr i8, ptr %3, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -1       ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !7
  %i.aa = add i8 %i.z, 1
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !7
  %i.ab = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.ad = zext nneg i32 %i.ab to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ad, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.af, 58
  br i1 %.not.i, label %bb.g, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.g:                                             ; preds = %.lr.ph.i
  store i8 48, ptr %i.ae, align 1, !tbaa !7
  %i.ag = getelementptr i8, ptr %3, i64 %indvars.iv.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -2     ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7
  %i.aj = add i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !7
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.al = load i8, ptr %3, align 1, !tbaa !7
  %i.am = icmp eq i8 %i.al, 58
  br i1 %i.am, label %bb.h, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.h:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %3, align 1, !tbaa !7
  %i.an = load i32, ptr %5, align 4, !tbaa !3
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %5, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.i:                                             ; preds = %bb.a
  %i.ap = sub nsw i32 -64, %1                     ; 2 uses
  switch i32 %i.ap, label %bb.k [
    i32 0, label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
    i32 64, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add nsw i32 %1, 128
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %0, %i.as
  %i.au = lshr i64 %0, %i.aq
  br label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit

_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.17.1 = phi i64 [ %0, %bb.j ], [ %i.at, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.j ], [ %i.au, %bb.k ], [ %0, %bb.i ] ; 2 uses
  %i.av = icmp sgt i32 %2, 0
  br i1 %i.av, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
  %i.aw = sub nuw nsw i32 128, %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit
  %indvars.iv = phi i64 [ 128, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %.03877 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bx, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.sroa.0.075 = phi i64 [ %.sroa.0.1, %.lr.ph.preheader ], [ %i.bp, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 2 uses
  %.sroa.17.074 = phi i64 [ %.sroa.17.1, %.lr.ph.preheader ], [ %i.bi, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %i.ax = icmp eq i64 %.sroa.0.075, 0
  %i.ay = icmp eq i64 %.sroa.17.074, 0
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %._crit_edge.loopexit.split.loop.exit, label %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit

_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit: ; preds = %.lr.ph
  %i.ba = and i64 %.sroa.17.074, 4294967295
  %i.bb = mul nuw nsw i64 %i.ba, 5                ; 2 uses
  %i.bc = lshr i64 %i.bb, 32
  %i.bd = lshr i64 %.sroa.17.074, 32
  %i.be = mul nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bc, %i.be            ; 2 uses
  %i.bg = shl i64 %i.bf, 32
  %i.bh = and i64 %i.bb, 4294967295
  %i.bi = or disjoint i64 %i.bg, %i.bh            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bj = lshr i64 %i.bf, 32
  %reass.mul.i = mul i64 %.sroa.0.075, 5
  %i.bk = add i64 %i.bj, %reass.mul.i             ; 2 uses
  %i.bl = add nsw i64 %indvars.iv, -65            ; 2 uses
  %i.bm = lshr i64 %i.bk, %i.bl                   ; 2 uses
  %sext.i = shl i64 %i.bm, 32
  %i.bn = ashr exact i64 %sext.i, 32
  %i.bo = shl i64 %i.bn, %i.bl
  %i.bp = sub i64 %i.bk, %i.bo                    ; 2 uses
  %i.bq = trunc i64 %i.bm to i8
  %i.br = add i8 %i.bq, 48
  %i.bs = load i32, ptr %4, align 4, !tbaa !3
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !7
  %i.bv = load i32, ptr %4, align 4, !tbaa !3
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %4, align 4, !tbaa !3
  %i.bx = add nuw nsw i32 %.03877, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit, %._crit_edge.loopexit.split.loop.exit, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
  %.sroa.17.0.lcssa = phi i64 [ %.sroa.17.1, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit ], [ 0, %._crit_edge.loopexit.split.loop.exit ], [ %i.bi, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.1, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit ], [ 0, %._crit_edge.loopexit.split.loop.exit ], [ %i.bp, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.039.lcssa = phi i32 [ 128, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit ], [ %i.by, %._crit_edge.loopexit.split.loop.exit ], [ %i.aw, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 2 uses
  %i.bz = icmp sgt i32 %.039.lcssa, 64            ; 2 uses
  %.sink7.i.v = select i1 %i.bz, i32 -65, i32 -1
  %.sink7.i = add nsw i32 %.sink7.i.v, %.039.lcssa
  %.sink.i42 = select i1 %i.bz, i64 %.sroa.0.0.lcssa, i64 %.sroa.17.0.lcssa
  %i.ca = zext nneg i32 %.sink7.i to i64
  %8 = lshr i64 %.sink.i42, %i.ca
  %9 = trunc i64 %8 to i1
  br i1 %9, label %bb.l, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.l:                                             ; preds = %._crit_edge
  %i.cb = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 49, ptr %3, align 1, !tbaa !7
  store i32 1, ptr %5, align 4, !tbaa !3
  store i32 1, ptr %4, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr i8, ptr %3, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1     ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !7
  %i.ch = add i8 %i.cg, 1
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !7
  %i.ci = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %.lr.ph.preheader.i46, label %._crit_edge.i45

.lr.ph.preheader.i46:                             ; preds = %bb.n
  %i.ck = zext nneg i32 %i.ci to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.o, %.lr.ph.preheader.i46
  %indvars.iv.i48 = phi i64 [ %i.ck, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i49, %bb.o ] ; 3 uses
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i49 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7
  %.not.i50 = icmp eq i8 %i.cm, 58
  br i1 %.not.i50, label %bb.o, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.o:                                             ; preds = %.lr.ph.i47
  store i8 48, ptr %i.cl, align 1, !tbaa !7
  %i.cn = getelementptr i8, ptr %3, i64 %indvars.iv.i48
  %i.co = getelementptr i8, ptr %i.cn, i64 -2     ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !7
  %i.cq = add i8 %i.cp, 1
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !7
  %i.cr = icmp samesign ugt i64 %indvars.iv.i48, 2
  br i1 %i.cr, label %.lr.ph.i47, label %._crit_edge.i45, !llvm.loop !15

._crit_edge.i45:                                  ; preds = %bb.o, %bb.n
  %i.cs = load i8, ptr %3, align 1, !tbaa !7
  %i.ct = icmp eq i8 %i.cs, 58
  br i1 %i.ct, label %bb.p, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.p:                                             ; preds = %._crit_edge.i45
  store i8 49, ptr %3, align 1, !tbaa !7
  %i.cu = load i32, ptr %5, align 4, !tbaa !3
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %5, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit: ; preds = %.lr.ph.i47, %.lr.ph87, %.lr.ph.i, %._crit_edge, %bb.m, %._crit_edge.i45, %bb.p, %bb.h, %._crit_edge.i, %bb.e, %._crit_edge88, %bb.c
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

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
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
end_hunk_0
