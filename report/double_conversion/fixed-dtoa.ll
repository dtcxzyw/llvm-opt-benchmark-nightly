Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi:bb.a

.lr.ph34.i59:                                     ; preds = %.lr.ph34.i59, %.lr.ph34.preheader.i58
  %indvars.iv36.i60 = phi i64 [ %i.cm, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next37.i62, %.lr.ph34.i59 ] ; 2 uses
  %indvars.iv.i61 = phi i64 [ %i.cl, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next.i63, %.lr.ph34.i59 ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i60 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i61 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !11
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !11
  %indvars.iv.next37.i62 = add nsw i64 %indvars.iv36.i60, 1 ; 2 uses
  %indvars.iv.next.i63 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next37.i62, %indvars.iv.next.i63
  br i1 %i.cr, label %.lr.ph34.i59, label %._crit_edge35.loopexit.i64, !llvm.loop !1

._crit_edge35.loopexit.i64:                       ; preds = %.lr.ph34.i59
  %.pre.i65 = load i32, ptr %2, align 4, !tbaa !10
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67: ; preds = %._crit_edge.i54, %._crit_edge35.loopexit.i64
  %.pre.i65.pn = phi i32 [ %.pre.i65, %._crit_edge35.loopexit.i64 ], [ %i.cj, %._crit_edge.i54 ]
  %.pre-phi.i57 = add nsw i32 %.pre.i65.pn, %i.ci ; 2 uses
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split

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
  %i.cw = load i32, ptr %2, align 4, !tbaa !10
  %i.cx = add nsw i32 %i.cw, %.02228.i75
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !11
  %i.da = add nuw nsw i32 %.02228.i75, 1          ; 2 uses
  %.not.i76 = icmp samesign ult i32 %.029.i74, 10
  br i1 %.not.i76, label %._crit_edge.i77, label %.lr.ph.i73, !llvm.loop !0

._crit_edge.i77:                                  ; preds = %.lr.ph.i73, %bb.d
  %.022.lcssa.i78 = phi i32 [ 0, %bb.d ], [ %i.da, %.lr.ph.i73 ] ; 2 uses
  %i.db = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.dc = add nsw i32 %i.db, %.022.lcssa.i78      ; 2 uses
  %.02030.i79 = add nsw i32 %i.dc, -1             ; 2 uses
  %i.dd = icmp slt i32 %i.db, %.02030.i79
  br i1 %i.dd, label %.lr.ph34.preheader.i81, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90

.lr.ph34.preheader.i81:                           ; preds = %._crit_edge.i77
  %i.de = sext i32 %.02030.i79 to i64
  %i.df = sext i32 %i.db to i64
  br label %.lr.ph34.i82

.lr.ph34.i82:                                     ; preds = %.lr.ph34.i82, %.lr.ph34.preheader.i81
  %indvars.iv36.i83 = phi i64 [ %i.df, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next37.i85, %.lr.ph34.i82 ] ; 2 uses
  %indvars.iv.i84 = phi i64 [ %i.de, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next.i86, %.lr.ph34.i82 ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i83 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i84 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !11
  store i8 %i.dj, ptr %i.dg, align 1, !tbaa !11
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !11
  %indvars.iv.next37.i85 = add nsw i64 %indvars.iv36.i83, 1 ; 2 uses
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i84, -1 ; 2 uses
  %i.dk = icmp slt i64 %indvars.iv.next37.i85, %indvars.iv.next.i86
  br i1 %i.dk, label %.lr.ph34.i82, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split, !llvm.loop !1

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split: ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.sink171 = phi i32 [ %i.bz, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67 ]
  %.sink168 = phi i32 [ %i.by, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67 ]
  %.sink166 = phi i64 [ 13, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit ], [ 6, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67 ]
  store i32 %.sink171, ptr %2, align 4, !tbaa !10
  %i.dl = urem i32 %i.b, 10
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  %i.dn = or disjoint i8 %i.dm, 48
  %i.do = sext i32 %.sink168 to i64
  %i.dp = getelementptr i8, ptr %1, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 %.sink166
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !11
  %i.dr = udiv i32 %i.b, 10
  %i.ds = urem i32 %i.dr, 10
  %i.dt = trunc nuw nsw i32 %i.ds to i8
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = load i32, ptr %2, align 4, !tbaa !10
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr i8, ptr %1, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 5
  store i8 %i.du, ptr %i.dy, align 1, !tbaa !11
  %i.dz = udiv i32 %i.b, 100
  %i.ea = urem i32 %i.dz, 10
  %i.eb = trunc nuw nsw i32 %i.ea to i8
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = load i32, ptr %2, align 4, !tbaa !10
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr i8, ptr %1, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  store i8 %i.ec, ptr %i.eg, align 1, !tbaa !11
  %i.eh = udiv i32 %i.b, 1000
  %.lhs.trunc109 = trunc nuw nsw i32 %i.eh to i16
  %i.ei = urem i16 %.lhs.trunc109, 10
  %i.ej = trunc nuw nsw i16 %i.ei to i8
  %i.ek = or disjoint i8 %i.ej, 48
  %i.el = load i32, ptr %2, align 4, !tbaa !10
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr i8, ptr %1, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 3
  store i8 %i.ek, ptr %i.eo, align 1, !tbaa !11
  %i.ep = udiv i32 %i.b, 10000
  %.lhs.trunc111 = trunc nuw nsw i32 %i.ep to i16
  %i.eq = urem i16 %.lhs.trunc111, 10
  %i.er = trunc nuw nsw i16 %i.eq to i8
  %i.es = or disjoint i8 %i.er, 48
  %i.et = load i32, ptr %2, align 4, !tbaa !10
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %1, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 2
  store i8 %i.es, ptr %i.ew, align 1, !tbaa !11
  %i.ex = udiv i32 %i.b, 100000
  %.lhs.trunc113 = trunc nuw i32 %i.ex to i8
  %i.ey = urem i8 %.lhs.trunc113, 10
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = load i32, ptr %2, align 4, !tbaa !10
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %1, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 1
  store i8 %i.ez, ptr %i.fd, align 1, !tbaa !11
  %i.fe = udiv i32 %i.b, 1000000
  %i.ff = trunc nuw nsw i32 %i.fe to i8
  %i.fg = or disjoint i8 %i.ff, 48
  %i.fh = load i32, ptr %2, align 4, !tbaa !10
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %1, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !11
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split: ; preds = %.lr.ph34.i82, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split
  %.022.lcssa.i78.sink = phi i32 [ 7, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split ], [ %.022.lcssa.i78, %.lr.ph34.i82 ]
  %.pre.i88 = load i32, ptr %2, align 4, !tbaa !10
  %.pre41.i89 = add nsw i32 %.pre.i88, %.022.lcssa.i78.sink
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90: ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split, %._crit_edge.i77
  %.sink = phi i32 [ %i.dc, %._crit_edge.i77 ], [ %.pre41.i89, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split ]
  store i32 %.sink, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %0, i32 noundef range(i32 -128, 0) %1, i32 noundef range(i32 -2147483648, 21) %2, ptr nofree captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 0, %1                        ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 65
  br i1 %i.b, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.preheader, %bb.b
  %.086 = phi i64 [ %i.r, %bb.b ], [ %0, %.preheader ] ; 2 uses
  %.03685 = phi i32 [ %i.e, %bb.b ], [ %i.a, %.preheader ]
  %.03784 = phi i32 [ %i.s, %bb.b ], [ 0, %.preheader ]
  %cond = icmp eq i64 %.086, 0
  br i1 %cond, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph87
  %i.d = mul i64 %.086, 5                         ; 2 uses
  %i.e = add nsw i32 %.03685, -1                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.d, %i.f                      ; 2 uses
  %i.h = trunc i64 %i.g to i8
  %i.i = add i8 %i.h, 48
  %i.j = load i32, ptr %4, align 4, !tbaa !10
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %3, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !11
  %i.m = load i32, ptr %4, align 4, !tbaa !10
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %4, align 4, !tbaa !10
  %i.o = shl i64 %i.g, 32
  %i.p = ashr exact i64 %i.o, 32
  %i.q = shl i64 %i.p, %i.f
  %i.r = sub i64 %i.d, %i.q                       ; 2 uses
  %i.s = add nuw nsw i32 %.03784, 1               ; 2 uses
  %exitcond95.not = icmp eq i32 %i.s, %2
  br i1 %exitcond95.not, label %._crit_edge88, label %.lr.ph87, !llvm.loop !16

._crit_edge88:                                    ; preds = %bb.b, %.preheader
  %.036.lcssa = phi i32 [ %i.a, %.preheader ], [ %i.e, %bb.b ]
  %.0.lcssa = phi i64 [ %0, %.preheader ], [ %i.r, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.0.lcssa, 0
  br i1 %.not, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge88
  %i.t = add nsw i32 %.036.lcssa, -1
  %i.u = zext nneg i32 %i.t to i64
  %6 = shl nuw i64 1, %i.u
  %7 = and i64 %6, %.0.lcssa
  %.not41 = icmp eq i64 %7, 0
  br i1 %.not41, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %4, align 4, !tbaa !10     ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 49, ptr %3, align 1, !tbaa !11
  store i32 1, ptr %5, align 4, !tbaa !10
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr i8, ptr %3, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -1       ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = add i8 %i.aa, 1
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !11
  %i.ac = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.ae = zext nneg i32 %i.ac to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ae, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %.not.i = icmp eq i8 %i.ag, 58
  br i1 %.not.i, label %bb.g, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

bb.g:                                             ; preds = %.lr.ph.i
  store i8 48, ptr %i.af, align 1, !tbaa !11
  %i.ah = getelementptr i8, ptr %3, i64 %indvars.iv.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2     ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = add i8 %i.aj, 1
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !11
  %i.al = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.am = load i8, ptr %3, align 1, !tbaa !11
  %i.an = icmp eq i8 %i.am, 58
  br i1 %i.an, label %bb.h, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

bb.h:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %3, align 1, !tbaa !11
  %i.ao = load i32, ptr %5, align 4, !tbaa !10
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %5, align 4, !tbaa !10
  br label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

bb.i:                                             ; preds = %bb.a
  %i.aq = sub nsw i32 -64, %1                     ; 2 uses
  switch i32 %i.aq, label %bb.k [
    i32 0, label %_ZN17double_conversion7UInt1285ShiftEi.exit
    i32 64, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN17double_conversion7UInt1285ShiftEi.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = add nsw i32 %1, 128
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %0, %i.at
  %i.av = lshr i64 %0, %i.ar
  br label %_ZN17double_conversion7UInt1285ShiftEi.exit

_ZN17double_conversion7UInt1285ShiftEi.exit:      ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.17.1 = phi i64 [ %0, %bb.j ], [ %i.au, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.j ], [ %i.av, %bb.k ], [ %0, %bb.i ] ; 2 uses
  %i.aw = icmp sgt i32 %2, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN17double_conversion7UInt1285ShiftEi.exit
  %i.ax = sub nuw nsw i32 128, %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit
  %indvars.iv = phi i64 [ 128, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %.03877 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.by, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.sroa.0.075 = phi i64 [ %.sroa.0.1, %.lr.ph.preheader ], [ %i.bq, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 2 uses
  %.sroa.17.074 = phi i64 [ %.sroa.17.1, %.lr.ph.preheader ], [ %i.bj, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %i.ay = icmp eq i64 %.sroa.0.075, 0
  %i.az = icmp eq i64 %.sroa.17.074, 0
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %i.ba, label %._crit_edge.loopexit.split.loop.exit, label %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit

_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit: ; preds = %.lr.ph
  %i.bb = and i64 %.sroa.17.074, 4294967295
  %i.bc = mul nuw nsw i64 %i.bb, 5                ; 2 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = lshr i64 %.sroa.17.074, 32
  %i.bf = mul nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.bd, %i.bf            ; 2 uses
  %i.bh = shl i64 %i.bg, 32
  %i.bi = and i64 %i.bc, 4294967295
  %i.bj = or disjoint i64 %i.bh, %i.bi            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bk = lshr i64 %i.bg, 32
  %reass.mul.i = mul i64 %.sroa.0.075, 5
  %i.bl = add i64 %i.bk, %reass.mul.i             ; 2 uses
  %i.bm = add nsw i64 %indvars.iv, -65            ; 2 uses
  %i.bn = lshr i64 %i.bl, %i.bm                   ; 2 uses
  %sext.i = shl i64 %i.bn, 32
  %i.bo = ashr exact i64 %sext.i, 32
  %i.bp = shl i64 %i.bo, %i.bm
  %i.bq = sub i64 %i.bl, %i.bp                    ; 2 uses
  %i.br = trunc i64 %i.bn to i8
  %i.bs = add i8 %i.br, 48
  %i.bt = load i32, ptr %4, align 4, !tbaa !10
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  store i8 %i.bs, ptr %i.bv, align 1, !tbaa !11
  %i.bw = load i32, ptr %4, align 4, !tbaa !10
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %4, align 4, !tbaa !10
  %i.by = add nuw nsw i32 %.03877, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit, %._crit_edge.loopexit.split.loop.exit, %_ZN17double_conversion7UInt1285ShiftEi.exit
  %.sroa.17.0.lcssa = phi i64 [ %.sroa.17.1, %_ZN17double_conversion7UInt1285ShiftEi.exit ], [ 0, %._crit_edge.loopexit.split.loop.exit ], [ %i.bj, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.1, %_ZN17double_conversion7UInt1285ShiftEi.exit ], [ 0, %._crit_edge.loopexit.split.loop.exit ], [ %i.bq, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.039.lcssa = phi i32 [ 128, %_ZN17double_conversion7UInt1285ShiftEi.exit ], [ %i.bz, %._crit_edge.loopexit.split.loop.exit ], [ %i.ax, %_ZN17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 2 uses
  %i.ca = icmp sgt i32 %.039.lcssa, 64            ; 2 uses
  %.sink7.i.v = select i1 %i.ca, i32 -65, i32 -1
  %.sink7.i = add nsw i32 %.sink7.i.v, %.039.lcssa
  %.sink.i42 = select i1 %i.ca, i64 %.sroa.0.0.lcssa, i64 %.sroa.17.0.lcssa
  %i.cb = zext nneg i32 %.sink7.i to i64
  %8 = shl nuw i64 1, %i.cb
  %9 = and i64 %8, %.sink.i42
  %.not68 = icmp eq i64 %9, 0
  br i1 %.not68, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cc = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 49, ptr %3, align 1, !tbaa !11
  store i32 1, ptr %5, align 4, !tbaa !10
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr i8, ptr %3, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -1     ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !11
  %i.cj = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph.preheader.i46, label %._crit_edge.i45

.lr.ph.preheader.i46:                             ; preds = %bb.n
  %i.cl = zext nneg i32 %i.cj to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.o, %.lr.ph.preheader.i46
  %indvars.iv.i48 = phi i64 [ %i.cl, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i49, %bb.o ] ; 3 uses
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i49 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %.not.i50 = icmp eq i8 %i.cn, 58
  br i1 %.not.i50, label %bb.o, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

bb.o:                                             ; preds = %.lr.ph.i47
  store i8 48, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %3, i64 %indvars.iv.i48
  %i.cp = getelementptr i8, ptr %i.co, i64 -2     ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cr = add i8 %i.cq, 1
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !11
  %i.cs = icmp samesign ugt i64 %indvars.iv.i48, 2
  br i1 %i.cs, label %.lr.ph.i47, label %._crit_edge.i45, !llvm.loop !17

._crit_edge.i45:                                  ; preds = %bb.o, %bb.n
  %i.ct = load i8, ptr %3, align 1, !tbaa !11
  %i.cu = icmp eq i8 %i.ct, 58
  br i1 %i.cu, label %bb.p, label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

bb.p:                                             ; preds = %._crit_edge.i45
  store i8 49, ptr %3, align 1, !tbaa !11
  %i.cv = load i32, ptr %5, align 4, !tbaa !10
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %5, align 4, !tbaa !10
  br label %_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit

_ZN17double_conversionL7RoundUpENS_6VectorIcEEPiS2_.exit: ; preds = %.lr.ph.i47, %.lr.ph87, %.lr.ph.i, %._crit_edge, %bb.m, %._crit_edge.i45, %bb.p, %bb.h, %._crit_edge.i, %bb.e, %._crit_edge88, %bb.c
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
end_hunk_0
