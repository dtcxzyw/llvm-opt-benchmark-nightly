Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN17double_conversion13FastFixedDtoaEdiNS_6VectorIcEEPiS2_:bb.a
  %i.ds = or disjoint i8 %i.dr, 48
  %i.dt = load i32, ptr %4, align 4, !tbaa !10
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %2, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 1
  store i8 %i.ds, ptr %i.dw, align 1, !tbaa !11
  %i.dx = udiv i32 %i.by, 1000000
  %i.dy = trunc nuw nsw i32 %i.dx to i8
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = load i32, ptr %4, align 4, !tbaa !10
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %2, i64 %i.eb
  store i8 %i.dz, ptr %i.ec, align 1, !tbaa !11
  %i.ed = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ee = add nsw i32 %i.ed, 7
  store i32 %i.ee, ptr %4, align 4, !tbaa !10
  %i.ef = urem i32 %i.cv, 10
  %i.eg = trunc nuw nsw i32 %i.ef to i8
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = sext i32 %i.ed to i64
  %i.ej = getelementptr i8, ptr %2, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 13
  store i8 %i.eh, ptr %i.ek, align 1, !tbaa !11
  %i.el = udiv i32 %i.cv, 10
  %i.em = urem i32 %i.el, 10
  %i.en = trunc nuw nsw i32 %i.em to i8
  %i.eo = or disjoint i8 %i.en, 48
  %i.ep = load i32, ptr %4, align 4, !tbaa !10
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %2, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 5
  store i8 %i.eo, ptr %i.es, align 1, !tbaa !11
  %i.et = udiv i32 %i.cv, 100
  %i.eu = urem i32 %i.et, 10
  %i.ev = trunc nuw nsw i32 %i.eu to i8
  %i.ew = or disjoint i8 %i.ev, 48
  %i.ex = load i32, ptr %4, align 4, !tbaa !10
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %2, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  store i8 %i.ew, ptr %i.fa, align 1, !tbaa !11
  %i.fb = extractelement <4 x i8> %i.dd, i64 1
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = load i32, ptr %4, align 4, !tbaa !10
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr i8, ptr %2, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 3
  store i8 %i.fc, ptr %i.fg, align 1, !tbaa !11
  %i.fh = extractelement <4 x i8> %i.dd, i64 3
  %i.fi = or disjoint i8 %i.fh, 48
  %i.fj = load i32, ptr %4, align 4, !tbaa !10
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr i8, ptr %2, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 2
  store i8 %i.fi, ptr %i.fm, align 1, !tbaa !11
  %i.fn = udiv i32 %i.cv, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.fn to i8
  %i.fo = urem i8 %.lhs.trunc40.i, 10
  %i.fp = or disjoint i8 %i.fo, 48
  %i.fq = load i32, ptr %4, align 4, !tbaa !10
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr i8, ptr %2, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 1
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !11
  %i.fu = udiv i32 %i.cv, 1000000
  %i.fv = trunc nuw nsw i32 %i.fu to i8
  %i.fw = or disjoint i8 %i.fv, 48
  %i.fx = load i32, ptr %4, align 4, !tbaa !10
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %2, i64 %i.fy
  store i8 %i.fw, ptr %i.fz, align 1, !tbaa !11
  %i.ga = load i32, ptr %4, align 4, !tbaa !10
  %i.gb = add nsw i32 %i.ga, 7                    ; 2 uses
  store i32 %i.gb, ptr %4, align 4, !tbaa !10
  store i32 %i.gb, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.gc = icmp sgt i32 %.0.i98, -1
  br i1 %i.gc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gd = zext nneg i32 %.0.i98 to i64
  %i.ge = shl nuw i64 %.0.i, %i.gd
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.ge, ptr %2, ptr noundef nonnull %4)
  %i.gf = load i32, ptr %4, align 4, !tbaa !10
  store i32 %i.gf, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.gg = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.gg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gh = sub nsw i32 0, %.0.i98
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = lshr i64 %.0.i, %i.gi                   ; 5 uses
  %i.gk = shl i64 %i.gj, %i.gi
  %i.gl = sub i64 %.0.i, %i.gk
  %i.gm = icmp samesign ugt i64 %i.gj, 4294967295
  br i1 %i.gm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.gj, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.gj, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.gn = trunc nuw i64 %i.gj to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.gp, %.lr.ph.i100 ], [ %i.gn, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gw, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.go = urem i32 %.029.i101, 10
  %i.gp = udiv i32 %.029.i101, 10
  %i.gq = trunc nuw nsw i32 %i.go to i8
  %i.gr = or disjoint i8 %i.gq, 48
  %i.gs = load i32, ptr %4, align 4, !tbaa !10
  %i.gt = add nsw i32 %i.gs, %.02228.i102
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  store i8 %i.gr, ptr %i.gv, align 1, !tbaa !11
  %i.gw = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !10
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
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !11
  %i.he = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !11
  store i8 %i.hf, ptr %i.hc, align 1, !tbaa !11
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !11
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.hg = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.hg, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !10
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gy, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117, %bb.k
  %i.hh = phi i32 [ %.pre-phi.i107, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.hh, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %i.gl, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.hi = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.hi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !11
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.hj = sub nsw i32 0, %1
  store i32 %i.hj, ptr %5, align 4, !tbaa !10
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !10
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !10   ; 5 uses
  %i.hk = icmp sgt i32 %.pr.i, 0
  br i1 %i.hk, label %.lr.ph.preheader.i, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hl = zext nneg i32 %.pr.i to i64
  %indvars.iv.next.i120143 = add nsw i64 %i.hl, -1 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  %i.ho = icmp eq i8 %i.hn, 48
  br i1 %i.ho, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.hp = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.hp, ptr %4, align 4, !tbaa !10
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !13

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !13

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.hq = phi i32 [ %i.hp, %.lr.ph.i118.lr.ph ], [ %i.hu, %.lr.ph ] ; 2 uses
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 3 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11
  %i.ht = icmp eq i8 %i.hs, 48
  br i1 %i.ht, label %.lr.ph, label %.critedge.i, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.hu = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.hu, ptr %4, align 4, !tbaa !10
  %i.hv = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.hv, label %.lr.ph.i118, label %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, !llvm.loop !13

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.hw = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.hw, label %.lr.ph30.i.preheader, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %.lcssa26.i165 = phi i32 [ %i.hq, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.lcssa26.i165 to i64
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.r, %.lr.ph30.i.preheader
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph30.i.preheader ], [ %indvars.iv.next40.i, %bb.r ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !11
  %i.hz = icmp eq i8 %i.hy, 48
  br i1 %i.hz, label %bb.r, label %.critedge2.split.loop.exit.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !14

.critedge2.split.loop.exit.i:                     ; preds = %.lr.ph30.i
  %6 = trunc nuw nsw i64 %indvars.iv39.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.r, %.critedge2.split.loop.exit.i
  %.020.lcssa.i = phi i32 [ %6, %.critedge2.split.loop.exit.i ], [ %.lcssa26.i165, %bb.r ] ; 5 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %7 = icmp slt i32 %.020.lcssa.i, %.lcssa26.i165
  br i1 %7, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %8 = sext i32 %.020.lcssa.i to i64              ; 2 uses
  br label %.lr.ph35.i

._crit_edge.i122:                                 ; preds = %.lr.ph35.i, %.preheader.i
  %.lcssa.i = phi i32 [ %.lcssa26.i165, %.preheader.i ], [ %i.ih, %.lr.ph35.i ]
  %i.ia = sub nsw i32 %.lcssa.i, %.020.lcssa.i
  store i32 %i.ia, ptr %4, align 4, !tbaa !10
  %i.ib = load i32, ptr %5, align 4, !tbaa !10
  %i.ic = sub nsw i32 %i.ib, %.020.lcssa.i
  store i32 %i.ic, ptr %5, align 4, !tbaa !10
  %.pre154 = load i32, ptr %4, align 4, !tbaa !10
  br label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv42.i = phi i64 [ %8, %.lr.ph35.preheader.i ], [ %indvars.iv.next43.i, %.lr.ph35.i ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv42.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !11
  %i.if = sub nuw nsw i64 %indvars.iv42.i, %8
  %i.ig = getelementptr inbounds i8, ptr %2, i64 %i.if
  store i8 %i.ie, ptr %i.ig, align 1, !tbaa !11
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.ih = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next43.i, %i.ii
  br i1 %i.ij, label %.lr.ph35.i, label %._crit_edge.i122, !llvm.loop !15

.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit, !llvm.loop !13

_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit: ; preds = %.lr.ph.preheader, %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge, %bb.q, %.critedge.i, %.critedge2.i, %._crit_edge.i122
  %i.ik = phi i32 [ %i.hq, %.critedge.i ], [ %.lcssa26.i165, %.critedge2.i ], [ %.pre154, %._crit_edge.i122 ], [ %.pr.i, %bb.q ], [ %i.hu, %.lr.ph._ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit.loopexit_crit_edge ], [ %i.hp, %.lr.ph.preheader ]
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %2, i64 %i.il
  store i8 0, ptr %i.im, align 1, !tbaa !11
  %i.in = load i32, ptr %4, align 4, !tbaa !10
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN17double_conversionL9TrimZerosENS_6VectorIcEEPiS2_.exit
  %i.ip = sub nsw i32 0, %1
  store i32 %i.ip, ptr %5, align 4, !tbaa !10
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
  %i.l = load i32, ptr %2, align 4, !tbaa !10
  %i.m = add nsw i32 %i.l, %.02228.i
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1, !tbaa !11
  %i.p = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %.not.i = icmp samesign ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = load i32, ptr %2, align 4, !tbaa !10     ; 4 uses
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
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  store i8 %i.x, ptr %i.u, align 1, !tbaa !11
  store i8 %i.v, ptr %i.w, align 1, !tbaa !11
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %2, align 4, !tbaa !10
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre.i.pn = phi i32 [ %.pre.i, %._crit_edge35.loopexit.i ], [ %i.q, %._crit_edge.i ]
  %.pre-phi.i = add nsw i32 %.pre.i.pn, %i.p      ; 2 uses
  store i32 %.pre-phi.i, ptr %2, align 4, !tbaa !10
  %i.z = urem i32 %i.e, 10
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = sext i32 %.pre-phi.i to i64
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 6
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !11
  %i.af = udiv i32 %i.e, 10
  %i.ag = urem i32 %i.af, 10
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = load i32, ptr %2, align 4, !tbaa !10
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 5
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !11
  %i.an = udiv i32 %i.e, 100
  %i.ao = urem i32 %i.an, 10
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  %i.ar = load i32, ptr %2, align 4, !tbaa !10
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  store i8 %i.aq, ptr %i.au, align 1, !tbaa !11
  %i.av = udiv i32 %i.e, 1000
  %.lhs.trunc103 = trunc nuw nsw i32 %i.av to i16
  %i.aw = urem i16 %.lhs.trunc103, 10
  %i.ax = trunc nuw nsw i16 %i.aw to i8
  %i.ay = or disjoint i8 %i.ax, 48
  %i.az = load i32, ptr %2, align 4, !tbaa !10
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 3
  store i8 %i.ay, ptr %i.bc, align 1, !tbaa !11
  %i.bd = udiv i32 %i.e, 10000
  %.lhs.trunc105 = trunc nuw nsw i32 %i.bd to i16
  %i.be = urem i16 %.lhs.trunc105, 10
  %i.bf = trunc nuw nsw i16 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = load i32, ptr %2, align 4, !tbaa !10
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !11
  %i.bl = udiv i32 %i.e, 100000
  %.lhs.trunc107 = trunc nuw i32 %i.bl to i8
  %i.bm = urem i8 %.lhs.trunc107, 10
  %i.bn = or disjoint i8 %i.bm, 48
  %i.bo = load i32, ptr %2, align 4, !tbaa !10
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bn, ptr %i.br, align 1, !tbaa !11
  %i.bs = udiv i32 %i.e, 1000000
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = or disjoint i8 %i.bt, 48
  %i.bv = load i32, ptr %2, align 4, !tbaa !10
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw
  store i8 %i.bu, ptr %i.bx, align 1, !tbaa !11
  %i.by = load i32, ptr %2, align 4, !tbaa !10    ; 2 uses
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
  %i.ce = load i32, ptr %2, align 4, !tbaa !10
  %i.cf = add nsw i32 %i.ce, %.02228.i52
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !11
  %i.ci = add nuw nsw i32 %.02228.i52, 1          ; 2 uses
  %.not.i53 = icmp samesign ult i32 %.029.i51, 10
  br i1 %.not.i53, label %._crit_edge.i54, label %.lr.ph.i50, !llvm.loop !0

._crit_edge.i54:                                  ; preds = %.lr.ph.i50
  %i.cj = load i32, ptr %2, align 4, !tbaa !10    ; 4 uses
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

end_hunk_0
