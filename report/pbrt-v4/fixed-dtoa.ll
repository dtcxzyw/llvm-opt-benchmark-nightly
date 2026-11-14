Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN17double_conversion13FastFixedDtoaEdiNS_6VectorIcEEPiS2_:bb.a
  %i.gt = add nsw i32 %i.gs, %.02228.i102
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  store i8 %i.gr, ptr %i.gv, align 1, !tbaa !12
  %i.gw = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !11
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
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !12
  %i.he = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !12
  store i8 %i.hf, ptr %i.hc, align 1, !tbaa !12
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !12
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.hg = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.hg, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !11
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gy, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117, %bb.k
  %i.hh = phi i32 [ %.pre-phi.i107, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.hh, ptr %5, align 4, !tbaa !11
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %i.gl, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.hi = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.hi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !12
  store i32 0, ptr %4, align 4, !tbaa !11
  %i.hj = sub nsw i32 0, %1
  store i32 %i.hj, ptr %5, align 4, !tbaa !11
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !11
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !11   ; 5 uses
  %i.hk = icmp sgt i32 %.pr.i, 0
  br i1 %i.hk, label %.lr.ph.preheader.i, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hl = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.hl, -1 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !12
  %i.ho = icmp eq i8 %i.hn, 48
  br i1 %i.ho, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.hp = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.hp, ptr %4, align 4, !tbaa !11
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !14

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !14

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.hq = phi i32 [ %i.hp, %.lr.ph.i118.lr.ph ], [ %i.hu, %.lr.ph ]
  %indvars.iv.next.i120145173 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145173, -1 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !12
  %i.ht = icmp eq i8 %i.hs, 48
  br i1 %i.ht, label %.lr.ph, label %.critedge.i, !llvm.loop !14

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.hu = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.hu, ptr %4, align 4, !tbaa !11
  %i.hv = icmp samesign ugt i64 %indvars.iv.next.i120145173, 1
  br i1 %i.hv, label %.lr.ph.i118, label %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, !llvm.loop !14

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.hw = icmp sgt i64 %indvars.iv.next.i120145173, 0
  br i1 %i.hw, label %.lr.ph30.i.preheader, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa162 = phi i64 [ %indvars.iv.next.i120145173, %.critedge.i ], [ %i.hl, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139161 = phi i32 [ %i.hq, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !12
  %i.hz = icmp eq i8 %i.hy, 48
  br i1 %i.hz, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %indvars.iv.i119.lcssa162
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !15

.critedge2.i:                                     ; preds = %.lr.ph30.i, %bb.r
  %.020.lcssa.in.i = phi i64 [ %indvars.iv.i119.lcssa162, %bb.r ], [ %indvars.iv39.i, %.lr.ph30.i ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %i.ia = icmp sgt i32 %.lcssa139161, %.020.lcssa.i
  br i1 %i.ia, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %i.ib = and i64 %.020.lcssa.in.i, 4294967295    ; 2 uses
  br label %.lr.ph35.i

._crit_edge.i122:                                 ; preds = %.lr.ph35.i, %.preheader.i
  %.lcssa.i = phi i32 [ %.lcssa139161, %.preheader.i ], [ %i.ij, %.lr.ph35.i ]
  %i.ic = sub nsw i32 %.lcssa.i, %.020.lcssa.i
  store i32 %i.ic, ptr %4, align 4, !tbaa !11
  %i.id = load i32, ptr %5, align 4, !tbaa !11
  %i.ie = sub nsw i32 %i.id, %.020.lcssa.i
  store i32 %i.ie, ptr %5, align 4, !tbaa !11
  %.pre154 = load i32, ptr %4, align 4, !tbaa !11
  br label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv42.i = phi i64 [ %i.ib, %.lr.ph35.preheader.i ], [ %indvars.iv.next43.i, %.lr.ph35.i ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv42.i
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !12
  %i.ih = sub nuw nsw i64 %indvars.iv42.i, %i.ib
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 %i.ih
  store i8 %i.ig, ptr %i.ii, align 1, !tbaa !12
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.ij = load i32, ptr %4, align 4, !tbaa !11    ; 2 uses
  %i.ik = trunc nuw i64 %indvars.iv.next43.i to i32
  %i.il = icmp sgt i32 %i.ij, %i.ik
  br i1 %i.il, label %.lr.ph35.i, label %._crit_edge.i122, !llvm.loop !16

.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, !llvm.loop !14

_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit: ; preds = %.lr.ph.preheader, %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, %bb.q, %.critedge.i, %.critedge2.i, %._crit_edge.i122
  %i.im = phi i32 [ %.pre154, %._crit_edge.i122 ], [ %.pr.i, %bb.q ], [ 0, %.critedge.i ], [ %.lcssa139161, %.critedge2.i ], [ %i.hu, %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge ], [ %i.hp, %.lr.ph.preheader ]
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds i8, ptr %2, i64 %i.in
  store i8 0, ptr %i.io, align 1, !tbaa !12
  %i.ip = load i32, ptr %4, align 4, !tbaa !11
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit
  %i.ir = sub nsw i32 0, %1
  store i32 %i.ir, ptr %5, align 4, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, %bb.s, %bb.a
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %0, ptr nofree captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
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
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 6 uses
  %3 = urem i32 %i.g, 10
  %4 = udiv i32 %i.g, 10
  %5 = trunc nuw nsw i32 %3 to i8
  %6 = or disjoint i8 %5, 48
  %7 = load i32, ptr %2, align 4, !tbaa !11
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  store i8 %6, ptr %9, align 1, !tbaa !12
  %.not.i = icmp ult i64 %0, 1000000000000000
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b
  %10 = urem i32 %4, 10
  %11 = trunc nuw nsw i32 %10 to i8
  %12 = or disjoint i8 %11, 48
  %13 = load i32, ptr %2, align 4, !tbaa !11
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, ptr %1, i64 %14
  %16 = getelementptr i8, ptr %15, i64 1
  store i8 %12, ptr %16, align 1, !tbaa !12
  %.not.i.1 = icmp ult i64 %0, 10000000000000000
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %17 = udiv i32 %i.g, 100
  %18 = urem i32 %17, 10
  %19 = trunc nuw nsw i32 %18 to i8
  %20 = or disjoint i8 %19, 48
  %21 = load i32, ptr %2, align 4, !tbaa !11
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, ptr %1, i64 %22
  %24 = getelementptr i8, ptr %23, i64 2
  store i8 %20, ptr %24, align 1, !tbaa !12
  %.not.i.2 = icmp ult i64 %0, 100000000000000000
  br i1 %.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %25 = udiv i32 %i.g, 1000
  %26 = urem i32 %25, 10
  %27 = trunc nuw nsw i32 %26 to i8
  %28 = or disjoint i8 %27, 48
  %29 = load i32, ptr %2, align 4, !tbaa !11
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 3
  store i8 %28, ptr %32, align 1, !tbaa !12
  %.not.i.3 = icmp ult i64 %0, 1000000000000000000
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.3
  %33 = udiv i32 %i.g, 10000
  %i.h = urem i32 %33, 10
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = or disjoint i8 %i.i, 48
  %i.k = load i32, ptr %2, align 4, !tbaa !11
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %34 = getelementptr i8, ptr %i.m, i64 4
  store i8 %i.j, ptr %34, align 1, !tbaa !12
  %.not.i.a = icmp ult i64 %0, -8446744073709551616
  br i1 %.not.i.a, label %._crit_edge.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i
  %35 = udiv i32 %i.g, 100000
  %36 = trunc nuw nsw i32 %35 to i8
  %37 = or disjoint i8 %36, 48
  %38 = load i32, ptr %2, align 4, !tbaa !11
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, ptr %1, i64 %39
  %41 = getelementptr i8, ptr %40, i64 5
  store i8 %37, ptr %41, align 1, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.5, %.lr.ph.i, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %bb.b
  %.02228.i.lcssa = phi i32 [ 0, %bb.b ], [ 1, %.lr.ph.i.1 ], [ 2, %.lr.ph.i.2 ], [ 3, %.lr.ph.i.3 ], [ 4, %.lr.ph.i ], [ 5, %.lr.ph.i.5 ]
  %.lcssa4 = phi i32 [ 1, %bb.b ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ], [ 5, %.lr.ph.i ], [ 6, %.lr.ph.i.5 ]
  %i.n = load i32, ptr %2, align 4, !tbaa !11     ; 4 uses
  %.02030.i = add i32 %i.n, %.02228.i.lcssa       ; 2 uses
  %i.o = icmp slt i32 %i.n, %.02030.i
  br i1 %i.o, label %.lr.ph34.preheader.i, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.p = sext i32 %.02030.i to i64
  %i.q = sext i32 %i.n to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.q, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  store i8 %i.u, ptr %i.r, align 1, !tbaa !12
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.v, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %2, align 4, !tbaa !11
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre.i.pn = phi i32 [ %.pre.i, %._crit_edge35.loopexit.i ], [ %i.n, %._crit_edge.i ]
  %.pre-phi.i = add nsw i32 %.pre.i.pn, %.lcssa4  ; 2 uses
  store i32 %.pre-phi.i, ptr %2, align 4, !tbaa !11
  %i.w = urem i32 %i.e, 10
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = sext i32 %.pre-phi.i to i64
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 6
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !12
  %i.ac = udiv i32 %i.e, 10
  %i.ad = urem i32 %i.ac, 10
  %i.ae = trunc nuw nsw i32 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = load i32, ptr %2, align 4, !tbaa !11
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 5
  store i8 %i.af, ptr %i.aj, align 1, !tbaa !12
  %i.ak = udiv i32 %i.e, 100
  %i.al = urem i32 %i.ak, 10
  %i.am = trunc nuw nsw i32 %i.al to i8
  %i.an = or disjoint i8 %i.am, 48
  %i.ao = load i32, ptr %2, align 4, !tbaa !11
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  store i8 %i.an, ptr %i.ar, align 1, !tbaa !12
  %i.as = udiv i32 %i.e, 1000
  %.lhs.trunc103 = trunc nuw nsw i32 %i.as to i16
  %i.at = urem i16 %.lhs.trunc103, 10
  %i.au = trunc nuw nsw i16 %i.at to i8
  %i.av = or disjoint i8 %i.au, 48
  %i.aw = load i32, ptr %2, align 4, !tbaa !11
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %1, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 3
  store i8 %i.av, ptr %i.az, align 1, !tbaa !12
  %i.ba = udiv i32 %i.e, 10000
  %.lhs.trunc105 = trunc nuw nsw i32 %i.ba to i16
  %i.bb = urem i16 %.lhs.trunc105, 10
  %i.bc = trunc nuw nsw i16 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = load i32, ptr %2, align 4, !tbaa !11
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %1, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 2
  store i8 %i.bd, ptr %i.bh, align 1, !tbaa !12
  %i.bi = udiv i32 %i.e, 100000
  %.lhs.trunc107 = trunc nuw i32 %i.bi to i8
  %i.bj = urem i8 %.lhs.trunc107, 10
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = load i32, ptr %2, align 4, !tbaa !11
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %1, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 1
  store i8 %i.bk, ptr %i.bo, align 1, !tbaa !12
  %i.bp = udiv i32 %i.e, 1000000
  %i.bq = trunc nuw nsw i32 %i.bp to i8
  %i.br = or disjoint i8 %i.bq, 48
  %i.bs = load i32, ptr %2, align 4, !tbaa !11
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !12
  %i.bv = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.bw = add nsw i32 %i.bv, 7
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq i64 %i.d, 0
  br i1 %.not44, label %bb.d, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.c, %.lr.ph.i50
  %.029.i51 = phi i32 [ %i.by, %.lr.ph.i50 ], [ %i.e, %bb.c ] ; 3 uses
  %.02228.i52 = phi i32 [ %i.cf, %.lr.ph.i50 ], [ 0, %bb.c ] ; 3 uses
  %i.bx = urem i32 %.029.i51, 10
  %i.by = udiv i32 %.029.i51, 10
  %i.bz = trunc nuw nsw i32 %i.bx to i8
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = load i32, ptr %2, align 4, !tbaa !11
  %i.cc = add nsw i32 %i.cb, %.02228.i52
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %1, i64 %i.cd
  store i8 %i.ca, ptr %i.ce, align 1, !tbaa !12
  %i.cf = add nuw nsw i32 %.02228.i52, 1          ; 2 uses
  %.not.i53 = icmp samesign ult i32 %.029.i51, 10
  br i1 %.not.i53, label %._crit_edge.i54, label %.lr.ph.i50, !llvm.loop !0

._crit_edge.i54:                                  ; preds = %.lr.ph.i50
  %i.cg = load i32, ptr %2, align 4, !tbaa !11    ; 4 uses
  %.02030.i56 = add i32 %i.cg, %.02228.i52        ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %.02030.i56
  br i1 %i.ch, label %.lr.ph34.preheader.i58, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67

.lr.ph34.preheader.i58:                           ; preds = %._crit_edge.i54
  %i.ci = sext i32 %.02030.i56 to i64
  %i.cj = sext i32 %i.cg to i64
  br label %.lr.ph34.i59

.lr.ph34.i59:                                     ; preds = %.lr.ph34.i59, %.lr.ph34.preheader.i58
  %indvars.iv36.i60 = phi i64 [ %i.cj, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next37.i62, %.lr.ph34.i59 ] ; 2 uses
  %indvars.iv.i61 = phi i64 [ %i.ci, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next.i63, %.lr.ph34.i59 ] ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i60 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !12
  %i.cm = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i61 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  store i8 %i.cn, ptr %i.ck, align 1, !tbaa !12
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !12
  %indvars.iv.next37.i62 = add nsw i64 %indvars.iv36.i60, 1 ; 2 uses
  %indvars.iv.next.i63 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.co = icmp slt i64 %indvars.iv.next37.i62, %indvars.iv.next.i63
  br i1 %i.co, label %.lr.ph34.i59, label %._crit_edge35.loopexit.i64, !llvm.loop !1

._crit_edge35.loopexit.i64:                       ; preds = %.lr.ph34.i59
  %.pre.i65 = load i32, ptr %2, align 4, !tbaa !11
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67: ; preds = %._crit_edge.i54, %._crit_edge35.loopexit.i64
  %.pre.i65.pn = phi i32 [ %.pre.i65, %._crit_edge35.loopexit.i64 ], [ %i.cg, %._crit_edge.i54 ]
  %.pre-phi.i57 = add nsw i32 %.pre.i65.pn, %i.cf ; 2 uses
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split

bb.d:                                             ; preds = %bb.c
  %.not27.i72 = icmp eq i64 %i.a, 0
  br i1 %.not27.i72, label %._crit_edge.i77, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.d, %.lr.ph.i73
  %.029.i74 = phi i32 [ %i.cq, %.lr.ph.i73 ], [ %i.b, %bb.d ] ; 3 uses
  %.02228.i75 = phi i32 [ %i.cx, %.lr.ph.i73 ], [ 0, %bb.d ] ; 2 uses
  %i.cp = urem i32 %.029.i74, 10
  %i.cq = udiv i32 %.029.i74, 10
  %i.cr = trunc nuw nsw i32 %i.cp to i8
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = load i32, ptr %2, align 4, !tbaa !11
  %i.cu = add nsw i32 %i.ct, %.02228.i75
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  store i8 %i.cs, ptr %i.cw, align 1, !tbaa !12
  %i.cx = add nuw nsw i32 %.02228.i75, 1          ; 2 uses
  %.not.i76 = icmp samesign ult i32 %.029.i74, 10
  br i1 %.not.i76, label %._crit_edge.i77, label %.lr.ph.i73, !llvm.loop !0

._crit_edge.i77:                                  ; preds = %.lr.ph.i73, %bb.d
  %.022.lcssa.i78 = phi i32 [ 0, %bb.d ], [ %i.cx, %.lr.ph.i73 ] ; 2 uses
  %i.cy = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.cz = add nsw i32 %i.cy, %.022.lcssa.i78      ; 2 uses
  %.02030.i79 = add nsw i32 %i.cz, -1             ; 2 uses
  %i.da = icmp slt i32 %i.cy, %.02030.i79
  br i1 %i.da, label %.lr.ph34.preheader.i81, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90

.lr.ph34.preheader.i81:                           ; preds = %._crit_edge.i77
  %i.db = sext i32 %.02030.i79 to i64
  %i.dc = sext i32 %i.cy to i64
  br label %.lr.ph34.i82

.lr.ph34.i82:                                     ; preds = %.lr.ph34.i82, %.lr.ph34.preheader.i81
  %indvars.iv36.i83 = phi i64 [ %i.dc, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next37.i85, %.lr.ph34.i82 ] ; 2 uses
  %indvars.iv.i84 = phi i64 [ %i.db, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next.i86, %.lr.ph34.i82 ] ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i83 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !12
  %i.df = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i84 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !12
  store i8 %i.dg, ptr %i.dd, align 1, !tbaa !12
  store i8 %i.de, ptr %i.df, align 1, !tbaa !12
  %indvars.iv.next37.i85 = add nsw i64 %indvars.iv36.i83, 1 ; 2 uses
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i84, -1 ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv.next37.i85, %indvars.iv.next.i86
  br i1 %i.dh, label %.lr.ph34.i82, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split, !llvm.loop !1

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split: ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.sink171 = phi i32 [ %i.bw, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67 ]
  %.sink168 = phi i32 [ %i.bv, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67 ]
  %.sink166 = phi i64 [ 13, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit ], [ 6, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67 ]
  store i32 %.sink171, ptr %2, align 4, !tbaa !11
  %i.di = urem i32 %i.b, 10
  %i.dj = trunc nuw nsw i32 %i.di to i8
  %i.dk = or disjoint i8 %i.dj, 48
  %i.dl = sext i32 %.sink168 to i64
  %i.dm = getelementptr i8, ptr %1, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.sink166
  store i8 %i.dk, ptr %i.dn, align 1, !tbaa !12
  %i.do = udiv i32 %i.b, 10
  %i.dp = urem i32 %i.do, 10
  %i.dq = trunc nuw nsw i32 %i.dp to i8
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = load i32, ptr %2, align 4, !tbaa !11
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 5
  store i8 %i.dr, ptr %i.dv, align 1, !tbaa !12
  %i.dw = udiv i32 %i.b, 100
  %i.dx = urem i32 %i.dw, 10
  %i.dy = trunc nuw nsw i32 %i.dx to i8
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = load i32, ptr %2, align 4, !tbaa !11
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %1, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  store i8 %i.dz, ptr %i.ed, align 1, !tbaa !12
  %i.ee = udiv i32 %i.b, 1000
  %.lhs.trunc109 = trunc nuw nsw i32 %i.ee to i16
  %i.ef = urem i16 %.lhs.trunc109, 10
end_hunk_0
