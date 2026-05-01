inline.NumInlined: 708
inline.NumDeleted: 300
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readDeepTileINS_18DeepTiledInputFileEEEbRT_bb:bb.a

.preheader334.us.preheader:                       ; preds = %.preheader334.lr.ph
  %wide.trip.count614 = zext nneg i32 %i.i to i64
  %wide.trip.count609 = zext nneg i32 %i.i to i64
  %wide.trip.count624 = zext i32 %i.g to i64      ; 4 uses
  %wide.trip.count640 = zext nneg i32 %i.i to i64
  %wide.trip.count635 = zext nneg i32 %i.g to i64
  %wide.trip.count673 = zext nneg i32 %i.i to i64
  %wide.trip.count657 = zext nneg i32 %i.g to i64
  %i.ce = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter = and i64 %wide.trip.count624, 3      ; 3 uses
  %i.cf = icmp ult i32 %i.g, 4
  %unroll_iter = and i64 %wide.trip.count624, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod813 = icmp ne i64 %xtraiter, 0
  %xtraiter815 = and i64 %wide.trip.count624, 1
  %i.cg = icmp eq i32 %i.g, 1
  %unroll_iter821 = and i64 %wide.trip.count624, 2147483646
  %lcmp.mod817.not = icmp eq i64 %xtraiter815, 0
  %lcmp.mod820 = trunc i32 %i.g to i1
  %xtraiter824 = and i64 %i.ac, 1
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readDeepTileINS_18DeepTiledInputFileEEEbRT_bb:bb.a
  %.lcssa779 = phi i64 [ %i.fu, %._crit_edge416.split.us428.us.us.unr-lcssa ], [ %i.gb, %.epil.preheader814 ] ; 2 uses
  %.2146.us431.us.us.lcssa = phi i64 [ %.2146.us431.us.us.1, %._crit_edge416.split.us428.us.us.unr-lcssa ], [ %.2146.us431.us.us.epil, %.epil.preheader814 ] ; 2 uses
  %indvars.iv.next622 = add nuw nsw i64 %indvars.iv621, 1 ; 2 uses
  %exitcond625.not = icmp eq i64 %indvars.iv.next622, %wide.trip.count609
  br i1 %exitcond625.not, label %._crit_edge422.us, label %.preheader329.us.us.us, !llvm.loop !237

.preheader328.lr.ph.split.us.us:                  ; preds = %bb.az, %bb.ba, %bb.bc, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.us, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i.us
end_hunk_1
