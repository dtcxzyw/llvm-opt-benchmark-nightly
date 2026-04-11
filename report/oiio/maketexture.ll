inline.NumInlined: 6400
inline.NumDeleted: 1723
begin_hunk_0_@_ZN11OpenImageIO4v3_1L18resize_block_2passIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !167
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 4 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !246 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L18resize_block_2passIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb:bb.a
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.as
  %.not.i68 = icmp eq i32 %i.k, %i.l
  %4 = icmp slt i32 %i.i, 1
  %i.au = sext i32 %i.i to i64                    ; 2 uses
  %i.av = zext nneg i32 %i.i to i64               ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %brmerge = or i1 %.not.i68, %4
  br label %bb.o

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge117, %bb.j
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L18resize_block_2passIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb:bb.a

bb.o:                                             ; preds = %.lr.ph, %._crit_edge117
  %.050121 = phi i64 [ 0, %.lr.ph ], [ %i.gm, %._crit_edge117 ]
  %.057120 = phi ptr [ %i.ap, %.lr.ph ], [ %5, %._crit_edge117 ] ; 3 uses
  %.058119 = phi ptr [ %i.at, %.lr.ph ], [ %.159.lcssa, %._crit_edge117 ] ; 2 uses
  br i1 %brmerge, label %._crit_edge117, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.o, %._crit_edge.us.i
  %.01329.us.i = phi i64 [ %i.cq, %._crit_edge.us.i ], [ 0, %bb.o ]
  %.01428.us.i = phi ptr [ %i.co, %._crit_edge.us.i ], [ %i.s, %bb.o ]
  %.01527.us.i = phi ptr [ %i.cr, %._crit_edge.us.i ], [ %.057120, %bb.o ]
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9Imath_3_14halfcvfEv.exit22.us.i, %.preheader.us.i
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L18resize_block_2passIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb:bb.a
  %i.ek = add nuw i64 %.01329.us.i72, 2           ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.av
  %i.em = icmp ult i64 %i.ek, %i.aj
  br i1 %i.em, label %.preheader.us.i71, label %.preheader.us, !llvm.loop !1341

.preheader.us:                                    ; preds = %._crit_edge.us.i87, %._crit_edge.us
  %.046116.us = phi i64 [ %i.gl, %._crit_edge.us ], [ 0, %._crit_edge.us.i87 ]
  %.047115.us = phi ptr [ %i.gj, %._crit_edge.us ], [ %i.t, %._crit_edge.us.i87 ]
  %.048114.us = phi ptr [ %i.gi, %._crit_edge.us ], [ %i.s, %._crit_edge.us.i87 ]
  %.159113.us = phi ptr [ %i.gk, %._crit_edge.us ], [ %.058119, %._crit_edge.us.i87 ]
  br label %bb.al

bb.al:                                            ; preds = %.preheader.us, %_ZN9Imath_3_14halfC2Ef.exit.us
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_1L18resize_block_2passIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb:bb.a
  %exitcond131.not = icmp eq i64 %i.gl, %umax
  br i1 %exitcond131.not, label %._crit_edge117, label %.preheader.us, !llvm.loop !1343

._crit_edge117:                                   ; preds = %._crit_edge.us, %bb.o
  %.159.lcssa = phi ptr [ %.058119, %bb.o ], [ %i.gk, %._crit_edge.us ]
  %.pn = getelementptr inbounds nuw [2 x i8], ptr %.057120, i64 %i.af
  %5 = getelementptr inbounds nuw [2 x i8], ptr %.pn, i64 %i.af
  %i.gm = add nuw i64 %.050121, 1                 ; 2 uses
  %exitcond133.not = icmp eq i64 %i.gm, %i.al
  br i1 %exitcond133.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %bb.o, !llvm.loop !1344
end_hunk_4
