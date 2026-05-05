inline.NumInlined: 142
inline.NumDeleted: 51
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_511hufCompressEPKtiPc:bb.a
  br i1 %.not.i, label %bb.c, label %.lr.ph.i30.preheader, !llvm.loop !15

.lr.ph.i30.preheader:                             ; preds = %bb.c
  %lsr.iv276.lcssa = phi i64 [ %lsr.iv276, %bb.c ]
  %lsr.iv262.lcssa = phi ptr [ %lsr.iv262, %bb.c ]
  %indvars.iv.i28.lcssa = phi i64 [ %lsr.iv.next, %bb.c ] ; 5 uses
  %i.ao = sub nsw i64 65537, %indvars.iv.i28.lcssa ; 2 uses
  %xtraiter187 = and i64 %i.ao, 1
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_511hufCompressEPKtiPc:bb.a
  br i1 %i.ap, label %.lr.ph.i30.epil.preheader, label %.lr.ph.i30.preheader.new

.lr.ph.i30.preheader.new:                         ; preds = %.lr.ph.i30.preheader
  %i.aq = lshr i64 %lsr.iv276.lcssa, 1
  %i.ar = shl nuw i64 %i.aq, 1
  br label %.lr.ph.i30

end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_511hufCompressEPKtiPc:bb.a

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.i30.preheader.new
  %lsr.iv278 = phi i64 [ %lsr.iv.next279, %bb.n ], [ %i.ar, %.lr.ph.i30.preheader.new ]
  %lsr.iv264 = phi ptr [ %scevgep265, %bb.n ], [ %lsr.iv262.lcssa, %.lr.ph.i30.preheader.new ] ; 3 uses
  %.1 = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.2.1, %bb.n ]
  %indvars.iv141.i = phi i64 [ %indvars.iv.i28.lcssa, %.lr.ph.i30.preheader.new ], [ %indvars.iv.next142.i.1, %bb.n ] ; 9 uses
  %.057133.i = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.158.i.1, %bb.n ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_511hufCompressEPKtiPc:bb.a
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %bb.ah
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i34, %bb.ah ], [ %i.kn, %.lr.ph.i32.preheader ] ; 5 uses
  %.02081.i = phi i32 [ %i.kx, %bb.ah ], [ 1, %.lr.ph.i32.preheader ] ; 3 uses
  %i.kt = add i64 %indvars.iv.i33, 1
  %i.ku = shl nsw i64 %indvars.iv.i33, 3
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_511hufCompressEPKtiPc:bb.a
  br label %._crit_edge.i35

.lr.ph.i32.._crit_edge.i35_crit_edge:             ; preds = %.lr.ph.i32
  %indvars.iv.i33.lcssa = phi i64 [ %indvars.iv.i33, %.lr.ph.i32 ]
  %indvars.iv.i33.lcssa.a = phi i64 [ %indvars.iv.i33, %.lr.ph.i32 ] ; 0 uses
  %.02081.i.lcssa = phi i32 [ %.02081.i, %.lr.ph.i32 ]
  br label %._crit_edge.i35

._crit_edge.i35:                                  ; preds = %._crit_edge.i35split, %.lr.ph.i32.._crit_edge.i35_crit_edge
  %.1.lcssa.ph.in.i = phi i64 [ %indvars.iv.i33.lcssa, %.lr.ph.i32.._crit_edge.i35_crit_edge ], [ %indvars.iv.next.i34.lcssa298, %._crit_edge.i35split ]
  %.020.lcssa.ph.i = phi i32 [ %.02081.i.lcssa, %.lr.ph.i32.._crit_edge.i35_crit_edge ], [ %.lcssa296, %._crit_edge.i35split ] ; 4 uses
  %.1.lcssa.ph.i = trunc i64 %.1.lcssa.ph.in.i to i32 ; 5 uses
  %i.lb = icmp samesign ult i32 %.020.lcssa.ph.i, 2
end_hunk_4
