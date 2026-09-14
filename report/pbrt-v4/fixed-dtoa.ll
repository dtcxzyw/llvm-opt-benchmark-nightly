Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN17double_conversion13FastFixedDtoaEdiNS_6VectorIcEEPiS2_:bb.a
  %i.dz = getelementptr i8, ptr %2, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 1
  store i8 %i.dw, ptr %i.ea, align 1, !tbaa !12
  %i.eb = udiv i32 %i.ca, 1000000
  %i.ec = trunc nuw nsw i32 %i.eb to i8
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = load i32, ptr %4, align 4, !tbaa !11
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %2, i64 %i.ef
  store i8 %i.ed, ptr %i.eg, align 1, !tbaa !12
  %i.eh = load i32, ptr %4, align 4, !tbaa !11    ; 2 uses
  %i.ei = add nsw i32 %i.eh, 7
  store i32 %i.ei, ptr %4, align 4, !tbaa !11
  %i.ej = extractelement <4 x i8> %i.cr, i64 1
  %i.ek = or disjoint i8 %i.ej, 48
  %i.el = sext i32 %i.eh to i64
  %i.em = getelementptr i8, ptr %2, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 13
  store i8 %i.ek, ptr %i.en, align 1, !tbaa !12
  %i.eo = extractelement <4 x i8> %i.cr, i64 2
  %i.ep = or disjoint i8 %i.eo, 48
  %i.eq = load i32, ptr %4, align 4, !tbaa !11
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %2, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 5
  store i8 %i.ep, ptr %i.et, align 1, !tbaa !12
  %i.eu = extractelement <4 x i8> %i.cr, i64 3
  %i.ev = or disjoint i8 %i.eu, 48
  %i.ew = load i32, ptr %4, align 4, !tbaa !11
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %2, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 4
  store i8 %i.ev, ptr %i.ez, align 1, !tbaa !12
  %i.fa = extractelement <4 x i8> %i.dh, i64 1
  %i.fb = or disjoint i8 %i.fa, 48
  %i.fc = load i32, ptr %4, align 4, !tbaa !11
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr i8, ptr %2, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 3
  store i8 %i.fb, ptr %i.ff, align 1, !tbaa !12
  %i.fg = extractelement <4 x i8> %i.dh, i64 3
  %i.fh = or disjoint i8 %i.fg, 48
  %i.fi = load i32, ptr %4, align 4, !tbaa !11
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %2, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 2
  store i8 %i.fh, ptr %i.fl, align 1, !tbaa !12
  %i.fm = udiv i32 %i.bz, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.fm to i8
  %i.fn = urem i8 %.lhs.trunc40.i, 10
  %i.fo = or disjoint i8 %i.fn, 48
  %i.fp = load i32, ptr %4, align 4, !tbaa !11
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr i8, ptr %2, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 1
  store i8 %i.fo, ptr %i.fs, align 1, !tbaa !12
  %i.ft = udiv i32 %i.bz, 1000000
  %i.fu = trunc nuw nsw i32 %i.ft to i8
  %i.fv = or disjoint i8 %i.fu, 48
  %i.fw = load i32, ptr %4, align 4, !tbaa !11
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %2, i64 %i.fx
  store i8 %i.fv, ptr %i.fy, align 1, !tbaa !12
  %i.fz = load i32, ptr %4, align 4, !tbaa !11
  %i.ga = add nsw i32 %i.fz, 7                    ; 2 uses
  store i32 %i.ga, ptr %4, align 4, !tbaa !11
  store i32 %i.ga, ptr %5, align 4, !tbaa !11
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.gb = icmp sgt i32 %.0.i98, -1
  br i1 %i.gb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gc = zext nneg i32 %.0.i98 to i64
  %i.gd = shl nuw i64 %.0.i, %i.gc
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.gd, ptr %2, ptr noundef nonnull %4)
  %i.ge = load i32, ptr %4, align 4, !tbaa !11
  store i32 %i.ge, ptr %5, align 4, !tbaa !11
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.gf = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.gf, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gg = sub nsw i32 0, %.0.i98
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = lshr i64 %.0.i, %i.gh                   ; 5 uses
  %i.gj = shl i64 %i.gi, %i.gh
  %i.gk = sub i64 %.0.i, %i.gj
  %i.gl = icmp samesign ugt i64 %i.gi, 4294967295
  br i1 %i.gl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.gi, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !11
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.gi, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.gm = trunc nuw i64 %i.gi to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.go, %.lr.ph.i100 ], [ %i.gm, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gv, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.gn = urem i32 %.029.i101, 10
  %i.go = udiv i32 %.029.i101, 10
  %i.gp = trunc nuw nsw i32 %i.gn to i8
  %i.gq = or disjoint i8 %i.gp, 48
  %i.gr = load i32, ptr %4, align 4, !tbaa !11
  %i.gs = add nsw i32 %i.gr, %.02228.i102
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %2, i64 %i.gt
  store i8 %i.gq, ptr %i.gu, align 1, !tbaa !12
  %i.gv = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !11
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.gw = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.gv, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gx = add nsw i32 %i.gw, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gx, -1            ; 2 uses
  %i.gy = icmp slt i32 %i.gw, %.02030.i106
  br i1 %i.gy, label %.lr.ph34.preheader.i108, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.gz = sext i32 %.02030.i106 to i64
  %i.ha = sext i32 %i.gw to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.ha, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.gz, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !12
  %i.hd = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !12
  store i8 %i.he, ptr %i.hb, align 1, !tbaa !12
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !12
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.hf = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.hf, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !11
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gx, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117, %bb.k
  %i.hg = phi i32 [ %.pre-phi.i107, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.hg, ptr %5, align 4, !tbaa !11
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %i.gk, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.hh = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.hh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !12
  store i32 0, ptr %4, align 4, !tbaa !11
  %i.hi = sub nsw i32 0, %1
  store i32 %i.hi, ptr %5, align 4, !tbaa !11
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !11
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !11   ; 5 uses
  %i.hj = icmp sgt i32 %.pr.i, 0
  br i1 %i.hj, label %.lr.ph.preheader.i, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hk = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.hk, -1 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !12
  %i.hn = icmp eq i8 %i.hm, 48
  br i1 %i.hn, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.ho = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 2 uses
  store i32 %i.ho, ptr %4, align 4, !tbaa !11
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !14

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !14

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.hp = phi i32 [ %i.ho, %.lr.ph.i118.lr.ph ], [ %i.ht, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 3 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !12
  %i.hs = icmp eq i8 %i.hr, 48
  br i1 %i.hs, label %.lr.ph, label %.lr.ph30.i.preheader, !llvm.loop !14

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.ht = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 2 uses
  store i32 %i.ht, ptr %4, align 4, !tbaa !11
  %6 = icmp sgt i64 %indvars.iv.next.i120145172, 1
  br i1 %6, label %.lr.ph.i118, label %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, !llvm.loop !14

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.i118, %.lr.ph.preheader.i
  %.lcssa139 = phi i32 [ %.pr.i, %.lr.ph.preheader.i ], [ %i.hp, %.lr.ph.i118 ] ; 3 uses
  %indvars.iv.i119.lcssa = phi i64 [ %i.hk, %.lr.ph.preheader.i ], [ %indvars.iv.next.i120145172, %.lr.ph.i118 ] ; 2 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !12
  %i.hw = icmp eq i8 %i.hv, 48
  br i1 %i.hw, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %indvars.iv.i119.lcssa
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !15

.critedge2.i:                                     ; preds = %.lr.ph30.i, %bb.r
  %.020.lcssa.in.i = phi i64 [ %indvars.iv.i119.lcssa, %bb.r ], [ %indvars.iv39.i, %.lr.ph30.i ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %i.hx = icmp sgt i32 %.lcssa139, %.020.lcssa.i
  br i1 %i.hx, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.hy = ashr exact i64 %sext.i, 32              ; 2 uses
  br label %.lr.ph35.i

._crit_edge.i122:                                 ; preds = %.lr.ph35.i, %.preheader.i
  %.lcssa.i = phi i32 [ %.lcssa139, %.preheader.i ], [ %i.ig, %.lr.ph35.i ]
  %i.hz = sub nsw i32 %.lcssa.i, %.020.lcssa.i
  store i32 %i.hz, ptr %4, align 4, !tbaa !11
  %i.ia = load i32, ptr %5, align 4, !tbaa !11
  %i.ib = sub nsw i32 %i.ia, %.020.lcssa.i
  store i32 %i.ib, ptr %5, align 4, !tbaa !11
  %.pre154 = load i32, ptr %4, align 4, !tbaa !11
  br label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv42.i = phi i64 [ %i.hy, %.lr.ph35.preheader.i ], [ %indvars.iv.next43.i, %.lr.ph35.i ] ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv42.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !12
  %i.ie = sub nuw nsw i64 %indvars.iv42.i, %i.hy
  %i.if = getelementptr inbounds i8, ptr %2, i64 %i.ie
  store i8 %i.id, ptr %i.if, align 1, !tbaa !12
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.ig = load i32, ptr %4, align 4, !tbaa !11    ; 2 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp slt i64 %indvars.iv.next43.i, %i.ih
  br i1 %i.ii, label %.lr.ph35.i, label %._crit_edge.i122, !llvm.loop !16

.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, !llvm.loop !14

_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit: ; preds = %.lr.ph.preheader, %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, %bb.q, %.critedge2.i, %._crit_edge.i122
  %7 = phi i32 [ %.lcssa139, %.critedge2.i ], [ %.pr.i, %bb.q ], [ %.pre154, %._crit_edge.i122 ], [ 0, %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.ij = sext i32 %7 to i64
  %i.ik = getelementptr inbounds i8, ptr %2, i64 %i.ij
  store i8 0, ptr %i.ik, align 1, !tbaa !12
  %i.il = load i32, ptr %4, align 4, !tbaa !11
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit
  %i.in = sub nsw i32 0, %1
  store i32 %i.in, ptr %5, align 4, !tbaa !11
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
  %i.g = trunc nuw nsw i64 %i.f to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.029.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.g, %bb.b ] ; 3 uses
  %.02228.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.h = urem i32 %.029.i, 10
  %i.i = udiv i32 %.029.i, 10
  %i.j = trunc nuw nsw i32 %i.h to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load i32, ptr %2, align 4, !tbaa !11
  %i.m = add nsw i32 %i.l, %.02228.i
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1, !tbaa !12
  %i.p = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %.not.i = icmp samesign ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = load i32, ptr %2, align 4, !tbaa !11     ; 4 uses
  %.02030.i = add i32 %i.q, %.02228.i             ; 2 uses
  %i.r = icmp slt i32 %i.q, %.02030.i
  br i1 %i.r, label %.lr.ph34.preheader.i, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.s = sext i32 %.02030.i to i64
  %i.t = sext i32 %i.q to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.t, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.s, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %i.w = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  store i8 %i.x, ptr %i.u, align 1, !tbaa !12
  store i8 %i.v, ptr %i.w, align 1, !tbaa !12
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %2, align 4, !tbaa !11
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre.i.pn = phi i32 [ %.pre.i, %._crit_edge35.loopexit.i ], [ %i.q, %._crit_edge.i ]
  %.pre-phi.i = add nsw i32 %.pre.i.pn, %i.p      ; 2 uses
  store i32 %.pre-phi.i, ptr %2, align 4, !tbaa !11
  %i.z = urem i32 %i.e, 10
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = sext i32 %.pre-phi.i to i64
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 6
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !12
  %i.af = udiv i32 %i.e, 10
  %i.ag = urem i32 %i.af, 10
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = load i32, ptr %2, align 4, !tbaa !11
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 5
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !12
  %i.an = udiv i32 %i.e, 100
  %i.ao = urem i32 %i.an, 10
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  %i.ar = load i32, ptr %2, align 4, !tbaa !11
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  store i8 %i.aq, ptr %i.au, align 1, !tbaa !12
  %i.av = udiv i32 %i.e, 1000
  %.lhs.trunc103 = trunc nuw nsw i32 %i.av to i16
  %i.aw = urem i16 %.lhs.trunc103, 10
  %i.ax = trunc nuw nsw i16 %i.aw to i8
  %i.ay = or disjoint i8 %i.ax, 48
  %i.az = load i32, ptr %2, align 4, !tbaa !11
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 3
  store i8 %i.ay, ptr %i.bc, align 1, !tbaa !12
  %i.bd = udiv i32 %i.e, 10000
  %.lhs.trunc105 = trunc nuw nsw i32 %i.bd to i16
  %i.be = urem i16 %.lhs.trunc105, 10
  %i.bf = trunc nuw nsw i16 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = load i32, ptr %2, align 4, !tbaa !11
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !12
  %i.bl = udiv i32 %i.e, 100000
  %.lhs.trunc107 = trunc nuw i32 %i.bl to i8
  %i.bm = urem i8 %.lhs.trunc107, 10
  %i.bn = or disjoint i8 %i.bm, 48
  %i.bo = load i32, ptr %2, align 4, !tbaa !11
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bn, ptr %i.br, align 1, !tbaa !12
  %i.bs = udiv i32 %i.e, 1000000
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = or disjoint i8 %i.bt, 48
  %i.bv = load i32, ptr %2, align 4, !tbaa !11
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw
  store i8 %i.bu, ptr %i.bx, align 1, !tbaa !12
  %i.by = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.bz = add nsw i32 %i.by, 7
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq i64 %i.d, 0
  br i1 %.not44, label %bb.d, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.c, %.lr.ph.i50
  %.029.i51 = phi i32 [ %i.cb, %.lr.ph.i50 ], [ %i.e, %bb.c ] ; 3 uses
  %.02228.i52 = phi i32 [ %i.ci, %.lr.ph.i50 ], [ 0, %bb.c ] ; 3 uses
  %i.ca = urem i32 %.029.i51, 10
  %i.cb = udiv i32 %.029.i51, 10
  %i.cc = trunc nuw nsw i32 %i.ca to i8
  %i.cd = or disjoint i8 %i.cc, 48
  %i.ce = load i32, ptr %2, align 4, !tbaa !11
  %i.cf = add nsw i32 %i.ce, %.02228.i52
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !12
  %i.ci = add nuw nsw i32 %.02228.i52, 1          ; 2 uses
  %.not.i53 = icmp samesign ult i32 %.029.i51, 10
  br i1 %.not.i53, label %._crit_edge.i54, label %.lr.ph.i50, !llvm.loop !0

._crit_edge.i54:                                  ; preds = %.lr.ph.i50
  %i.cj = load i32, ptr %2, align 4, !tbaa !11    ; 4 uses
  %.02030.i56 = add i32 %i.cj, %.02228.i52        ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %.02030.i56
  br i1 %i.ck, label %.lr.ph34.preheader.i58, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67

.lr.ph34.preheader.i58:                           ; preds = %._crit_edge.i54
  %i.cl = sext i32 %.02030.i56 to i64
  %i.cm = sext i32 %i.cj to i64
  br label %.lr.ph34.i59

.lr.ph34.i59:                                     ; preds = %.lr.ph34.i59, %.lr.ph34.preheader.i58
  %indvars.iv36.i60 = phi i64 [ %i.cm, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next37.i62, %.lr.ph34.i59 ] ; 2 uses
  %indvars.iv.i61 = phi i64 [ %i.cl, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next.i63, %.lr.ph34.i59 ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i60 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !12
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i61 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !12
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !12
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !12
  %indvars.iv.next37.i62 = add nsw i64 %indvars.iv36.i60, 1 ; 2 uses
  %indvars.iv.next.i63 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next37.i62, %indvars.iv.next.i63
  br i1 %i.cr, label %.lr.ph34.i59, label %._crit_edge35.loopexit.i64, !llvm.loop !1

._crit_edge35.loopexit.i64:                       ; preds = %.lr.ph34.i59
  %.pre.i65 = load i32, ptr %2, align 4, !tbaa !11
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit67: ; preds = %._crit_edge.i54, %._crit_edge35.loopexit.i64
  %.pre.i65.pn = phi i32 [ %.pre.i65, %._crit_edge35.loopexit.i64 ], [ %i.cj, %._crit_edge.i54 ]
  %.pre-phi.i57 = add nsw i32 %.pre.i65.pn, %i.ci ; 2 uses
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit90.sink.split.sink.split

bb.d:                                             ; preds = %bb.c
end_hunk_0
