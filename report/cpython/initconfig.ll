inline.NumInlined: 296
inline.NumDeleted: 85
begin_hunk_0_@_PyConfig_Read:bb.a
  %lsr.iv = phi i64 [ 8, %.lr.ph.i.i.preheader.preheader ], [ %lsr.iv.next, %.lr.ph.i.i ] ; 2 uses
  %.061.i.i593 = phi ptr [ %i.le, %.lr.ph.i.i ], [ %i.kv, %.lr.ph.i.i.preheader.preheader ]
  %.sroa.1073.2.i592 = phi ptr [ %i.kz, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.preheader.preheader ] ; 3 uses
  %.sroa.069.2.i591 = phi i64 [ %i.lc, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader.preheader ] ; 5 uses
  %i.kx = call ptr @_PyMem_RawWcsdup(ptr noundef nonnull %.061.i.i593) #28, !noalias !372 ; 3 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %.lr.ph.i.i.preheader.config_init_env_warnoptions.exit.i.thread169.loopexit_crit_edge, label %bb.dq
end_hunk_0
begin_hunk_1_@_PyConfig_Read:bb.a

config_init_env_warnoptions.exit.i.thread169.loopexitsplit: ; preds = %.lr.ph.i.i
  %.lcssa848 = phi i64 [ %i.lc, %.lr.ph.i.i ]
  br label %config_init_env_warnoptions.exit.i.thread169.loopexit

.lr.ph.i.i.preheader.config_init_env_warnoptions.exit.i.thread169.loopexit_crit_edge: ; preds = %.lr.ph.i.i.preheader
  %.sroa.069.2.i591.lcssa.a = phi i64 [ %.sroa.069.2.i591, %.lr.ph.i.i.preheader ]
  br label %config_init_env_warnoptions.exit.i.thread169.loopexit

config_init_env_warnoptions.exit.i.thread169.loopexit: ; preds = %config_init_env_warnoptions.exit.i.thread169.loopexitsplit, %.lr.ph.i.i.preheader.config_init_env_warnoptions.exit.i.thread169.loopexit_crit_edge
  %.sroa.069.2.i540.ph = phi i64 [ %.sroa.069.2.i591.lcssa.a, %.lr.ph.i.i.preheader.config_init_env_warnoptions.exit.i.thread169.loopexit_crit_edge ], [ %.lcssa848, %config_init_env_warnoptions.exit.i.thread169.loopexitsplit ]
  %.sroa.1073.2.i537.ph = phi ptr [ %.sroa.1073.2.i592, %.lr.ph.i.i.preheader.config_init_env_warnoptions.exit.i.thread169.loopexit_crit_edge ], [ %i.kz, %config_init_env_warnoptions.exit.i.thread169.loopexitsplit ]
  br label %config_init_env_warnoptions.exit.i.thread169

config_init_env_warnoptions.exit.i.thread169:     ; preds = %config_init_env_warnoptions.exit.i.thread169.loopexit, %bb.dr
end_hunk_1
begin_hunk_2_@PyInitConfig_GetStrList:bb.a
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.032.lcssa = phi i64 [ %.032, %bb.f ]
  %.lcssa = phi ptr [ %i.r, %bb.f ]
  %.not.i = icmp eq i64 %.032.lcssa, 0
end_hunk_2
begin_hunk_3_@PyInitConfig_GetStrList:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05.i = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %.05.i, 3
  %scevgep48 = getelementptr i8, ptr %i.r, i64 %i.u
  %i.v = load ptr, ptr %scevgep48, align 8, !tbaa !259
  tail call void @free(ptr noundef %i.v) #28
  %i.w = add nuw nsw i64 %.05.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %.032, %i.w
  br i1 %exitcond.not.i, label %PyInitConfig_FreeStrList.exit.loopexit, label %.lr.ph.i, !llvm.loop !547

PyInitConfig_FreeStrList.exit.loopexit:           ; preds = %.lr.ph.i
end_hunk_3
begin_hunk_4_@PyInitConfig_SetStrList:bb.a
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %.01737.i.lcssa = phi i64 [ %.01737.i, %.lr.ph.i ]
  %.not44.i = icmp eq i64 %.01737.i.lcssa, 0
  br i1 %.not44.i, label %.loopexit.i, label %.lr.ph.i.i.preheader
end_hunk_4
begin_hunk_5_@PyInitConfig_SetStrList:bb.a
  %i.p = load ptr, ptr %scevgep31, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.p) #28
  %i.q = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %exitcond40.not.i = icmp eq i64 %.01737.i, %i.q
  br i1 %exitcond40.not.i, label %.loopexit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !536

bb.g:                                             ; preds = %.lr.ph.i
end_hunk_5
