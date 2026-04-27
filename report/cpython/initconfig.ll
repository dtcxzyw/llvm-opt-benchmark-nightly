inline.NumInlined: 296
inline.NumDeleted: 85
begin_hunk_0_@_PyConfig_Read:bb.a
  br label %warnoptions_append.exit.i.i.a

warnoptions_append.exit.i.i.a:                    ; preds = %bb.dw, %bb.dz, %bb.dt
  %.promoted82.i.i = phi ptr [ %i.lv, %bb.dz ], [ null, %bb.dt ], [ null, %bb.dw ] ; 2 uses
  %.promoted.i.i = phi i64 [ 1, %bb.dz ], [ 0, %bb.dt ], [ 0, %bb.dw ] ; 2 uses
  %.not102.i.i.i = icmp sgt i64 %.sroa.069.0.i, 0
  br i1 %.not102.i.i.i, label %.lr.ph.i.i.i, label %bb.eh

end_hunk_0
begin_hunk_1_@_PyConfig_Read:bb.a
  br label %warnoptions_extend.exit.i.i

warnoptions_extend.exit.i.i:                      ; preds = %warnoptions_extend.exit.loopexit73.i.i, %warnoptions_extend.exit.loopexit69.i.i, %warnoptions_extend.exit.loopexit.i.i, %.warnoptions_extend.exit_crit_edge.i.i, %bb.fe, %bb.ew, %bb.eu, %bb.eo, %bb.eg
  %i.rf = phi i64 [ %.pre.i37.i, %.warnoptions_extend.exit_crit_edge.i.i ], [ %i.nk, %bb.eo ], [ %i.op, %bb.ew ], [ %i.mc, %warnoptions_extend.exit.loopexit73.i.i ], [ %i.op, %bb.eu ], [ %i.pz, %bb.fe ], [ %i.nk, %warnoptions_extend.exit.loopexit69.i.i ], [ %i.mc, %bb.eg ], [ %i.pz, %warnoptions_extend.exit.loopexit.i.i ] ; 2 uses
  %.sroa.15.sroa.14.0.i.i = phi ptr [ %.sroa.15.sroa.14.0.copyload.i.i, %.warnoptions_extend.exit_crit_edge.i.i ], [ @.str, %bb.eo ], [ @.str, %bb.ew ], [ %.sroa.15.sroa.14.0.ph74.i.i, %warnoptions_extend.exit.loopexit73.i.i ], [ @.str, %bb.eu ], [ @.str, %bb.fe ], [ %.sroa.15.sroa.14.0.ph70.i.i, %warnoptions_extend.exit.loopexit69.i.i ], [ @.str, %bb.eg ], [ %.sroa.15.sroa.14.0.ph.i.i, %warnoptions_extend.exit.loopexit.i.i ] ; 2 uses
  %.sroa.15.sroa.9.0.i.i = phi ptr [ %.sroa.15.sroa.9.0.copyload.i.i, %.warnoptions_extend.exit_crit_edge.i.i ], [ @__func__.PyWideStringList_Insert, %bb.eo ], [ @__func__.PyWideStringList_Insert, %bb.ew ], [ @__func__.PyWideStringList_Insert, %warnoptions_extend.exit.loopexit73.i.i ], [ @__func__.PyWideStringList_Insert, %bb.eu ], [ @__func__.PyWideStringList_Insert, %bb.fe ], [ @__func__.PyWideStringList_Insert, %warnoptions_extend.exit.loopexit69.i.i ], [ @__func__.PyWideStringList_Insert, %bb.eg ], [ @__func__.PyWideStringList_Insert, %warnoptions_extend.exit.loopexit.i.i ] ; 2 uses
  %.sroa.15.sroa.0.0.i.i = phi i32 [ %.sroa.15.sroa.0.0.copyload.i.i, %.warnoptions_extend.exit_crit_edge.i.i ], [ 0, %bb.eo ], [ 0, %bb.ew ], [ 0, %warnoptions_extend.exit.loopexit73.i.i ], [ 0, %bb.eu ], [ 0, %bb.fe ], [ 0, %warnoptions_extend.exit.loopexit69.i.i ], [ 0, %bb.eg ], [ 0, %warnoptions_extend.exit.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.0.copyload10.i.i, %.warnoptions_extend.exit_crit_edge.i.i ], [ 1, %bb.eo ], [ 1, %bb.ew ], [ 1, %warnoptions_extend.exit.loopexit73.i.i ], [ 1, %bb.eu ], [ 1, %bb.fe ], [ 1, %warnoptions_extend.exit.loopexit69.i.i ], [ 1, %bb.eg ], [ 1, %warnoptions_extend.exit.loopexit.i.i ] ; 2 uses
  %i.rg = phi <2 x i32> [ %i.re, %.warnoptions_extend.exit_crit_edge.i.i ], [ zeroinitializer, %bb.eo ], [ zeroinitializer, %bb.ew ], [ zeroinitializer, %warnoptions_extend.exit.loopexit73.i.i ], [ zeroinitializer, %bb.eu ], [ zeroinitializer, %bb.fe ], [ zeroinitializer, %warnoptions_extend.exit.loopexit69.i.i ], [ zeroinitializer, %bb.eg ], [ zeroinitializer, %warnoptions_extend.exit.loopexit.i.i ] ; 2 uses
  %i.rh = icmp sgt i64 %i.rf, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !28, !noalias !375 ; 2 uses
end_hunk_1
begin_hunk_2_@_PyConfig_Read:bb.a
  br i1 %exitcond.not.i41.i, label %config_init_warnoptions.exit.i, label %.lr.ph.split.i.i.i39.i, !llvm.loop !31

config_init_warnoptions.exit.i:                   ; preds = %.lr.ph.split.i.i.i39.i, %.loopexit.i.thread.i.i, %bb.dy, %.loopexit.i67.thread.i.i, %warnoptions_extend.exit.i.i
  %.sroa.0.0196.i.i = phi i32 [ 1, %.loopexit.i67.thread.i.i ], [ %.sroa.0.0.i.i, %warnoptions_extend.exit.i.i ], [ 1, %bb.dy ], [ 1, %.loopexit.i.thread.i.i ], [ %.sroa.0.0210.i.i, %.lr.ph.split.i.i.i39.i ]
  %.sroa.15.sroa.0.0194.i.i = phi i32 [ 0, %.loopexit.i67.thread.i.i ], [ %.sroa.15.sroa.0.0.i.i, %warnoptions_extend.exit.i.i ], [ 0, %bb.dy ], [ 0, %.loopexit.i.thread.i.i ], [ %.sroa.15.sroa.0.0209.i.i, %.lr.ph.split.i.i.i39.i ]
  %.sroa.15.sroa.9.0192.i.i = phi ptr [ @__func__.PyWideStringList_Insert, %.loopexit.i67.thread.i.i ], [ %.sroa.15.sroa.9.0.i.i, %warnoptions_extend.exit.i.i ], [ @__func__.PyWideStringList_Insert, %bb.dy ], [ @__func__.PyWideStringList_Insert, %.loopexit.i.thread.i.i ], [ %.sroa.15.sroa.9.0208.i.i, %.lr.ph.split.i.i.i39.i ]
  %.sroa.15.sroa.14.0190.i.i = phi ptr [ @.str.5, %.loopexit.i67.thread.i.i ], [ %.sroa.15.sroa.14.0.i.i, %warnoptions_extend.exit.i.i ], [ @.str, %bb.dy ], [ @.str, %.loopexit.i.thread.i.i ], [ %.sroa.15.sroa.14.0207.i.i, %.lr.ph.split.i.i.i39.i ]
  %i.ro = phi ptr [ %i.oo, %.loopexit.i67.thread.i.i ], [ %.pre.i, %warnoptions_extend.exit.i.i ], [ null, %bb.dy ], [ null, %.loopexit.i.thread.i.i ], [ %i.ri, %.lr.ph.split.i.i.i39.i ]
  %i.rp = phi <2 x i32> [ zeroinitializer, %.loopexit.i67.thread.i.i ], [ %i.rg, %warnoptions_extend.exit.i.i ], [ zeroinitializer, %bb.dy ], [ zeroinitializer, %.loopexit.i.thread.i.i ], [ %i.rk, %.lr.ph.split.i.i.i39.i ]
  call void @PyMem_RawFree(ptr noundef %i.ro) #29, !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !375
  br label %.thread96.i
end_hunk_2
