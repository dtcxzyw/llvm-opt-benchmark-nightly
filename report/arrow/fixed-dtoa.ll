inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_:bb.a
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
  store i32 %i.fx, ptr %5, align 4, !tbaa !3
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.fy = icmp sgt i32 %.0.i98, -1
  br i1 %i.fy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fz = zext nneg i32 %.0.i98 to i64
  %i.ga = shl nuw i64 %.0.i, %i.fz
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.ga, ptr %2, ptr noundef nonnull %4)
  %i.gb = load i32, ptr %4, align 4, !tbaa !3
  store i32 %i.gb, ptr %5, align 4, !tbaa !3
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.gc = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.gc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gd = sub nsw i32 0, %.0.i98
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = lshr i64 %.0.i, %i.ge                   ; 5 uses
  %i.gg = shl i64 %i.gf, %i.ge
  %i.gh = sub i64 %.0.i, %i.gg
  %i.gi = icmp samesign ugt i64 %i.gf, 4294967295
  br i1 %i.gi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.gf, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !3
  br label %bb.m

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
  br i1 %i.gv, label %.lr.ph34.preheader.i108, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

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
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gu, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117, %bb.k
  %i.hd = phi i32 [ %.pre-phi.i107, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.hd, ptr %5, align 4, !tbaa !3
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %i.gh, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.he = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.he, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !7
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.hf = sub nsw i32 0, %1
  store i32 %i.hf, ptr %5, align 4, !tbaa !3
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !3
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
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
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  %i.ar = load i32, ptr %2, align 4, !tbaa !3
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  store i8 %i.aq, ptr %i.au, align 1, !tbaa !7
  %i.av = udiv i32 %i.e, 1000
  %.lhs.trunc103 = trunc nuw nsw i32 %i.av to i16
  %i.aw = urem i16 %.lhs.trunc103, 10
  %i.ax = trunc nuw nsw i16 %i.aw to i8
  %i.ay = or disjoint i8 %i.ax, 48
  %i.az = load i32, ptr %2, align 4, !tbaa !3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 3
  store i8 %i.ay, ptr %i.bc, align 1, !tbaa !7
  %i.bd = udiv i32 %i.e, 10000
  %.lhs.trunc105 = trunc nuw nsw i32 %i.bd to i16
  %i.be = urem i16 %.lhs.trunc105, 10
  %i.bf = trunc nuw nsw i16 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = load i32, ptr %2, align 4, !tbaa !3
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !7
  %i.bl = udiv i32 %i.e, 100000
  %.lhs.trunc107 = trunc nuw i32 %i.bl to i8
  %i.bm = urem i8 %.lhs.trunc107, 10
  %i.bn = or disjoint i8 %i.bm, 48
  %i.bo = load i32, ptr %2, align 4, !tbaa !3
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bn, ptr %i.br, align 1, !tbaa !7
  %i.bs = udiv i32 %i.e, 1000000
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = or disjoint i8 %i.bt, 48
  %i.bv = load i32, ptr %2, align 4, !tbaa !3
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw
  store i8 %i.bu, ptr %i.bx, align 1, !tbaa !7
  %i.by = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.bz = add nsw i32 %i.by, 7
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq i64 %i.d, 0
  br i1 %.not44, label %bb.d, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.c, %.lr.ph.i50
  %.029.i51 = phi i32 [ %i.cb, %.lr.ph.i50 ], [ %i.e, %bb.c ] ; 3 uses
  %.02228.i52 = phi i32 [ %i.ci, %.lr.ph.i50 ], [ 0, %bb.c ] ; 3 uses
  %i.ca = urem i32 %.029.i51, 10
  %i.cb = udiv i32 %.029.i51, 10
end_hunk_0
