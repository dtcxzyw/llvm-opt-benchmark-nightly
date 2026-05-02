inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@OSSL_STORE_open_ex:bb.a
.thread.peel:                                     ; preds = %loader_set_params.exit.thread141.peel, %bb.k, %bb.j, %bb.i
  %.294.peel = phi ptr [ %.193.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.j ] ; 3 uses
  %.3.peel = phi ptr [ %.291138.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.285.peel = phi i32 [ 0, %loader_set_params.exit.thread141.peel ], [ 1, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %.1.peel = phi ptr [ %.193.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ %i.u, %bb.i ], [ %i.u, %bb.j ]
  %i.ax = icmp eq ptr %.3.peel, null              ; 2 uses
  %i.ay = and i1 %i.ax, %.182
end_hunk_0
begin_hunk_1_@OSSL_STORE_open_ex:bb.a
.loopexit:                                        ; preds = %loader_set_params.exit.thread141, %bb.x, %bb.v, %bb.w
  %.294 = phi ptr [ %.193, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %.294.peel, %bb.v ], [ %.294.peel, %bb.w ]
  %.3 = phi ptr [ %.291138, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %i.bg, %bb.v ], [ %i.bj, %bb.w ] ; 2 uses
  %.285 = phi i32 [ 0, %loader_set_params.exit.thread141 ], [ %.285.peel, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ]
  %.1 = phi ptr [ %.193, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %i.bc, %bb.v ], [ %i.bc, %bb.w ]
  %i.cf = icmp eq ptr %.3, null
  br label %bb.ah
end_hunk_1
begin_hunk_2_@OSSL_STORE_open_ex:bb.a
bb.ah:                                            ; preds = %.loopexit, %.thread.peel
  %.294.lcssa = phi ptr [ %.294.peel, %.thread.peel ], [ %.294, %.loopexit ] ; 5 uses
  %.3.lcssa = phi ptr [ %.3.peel, %.thread.peel ], [ %.3, %.loopexit ] ; 4 uses
  %.285.lcssa = phi i32 [ %.285.peel, %.thread.peel ], [ %.285, %.loopexit ]
  %.1.lcssa = phi ptr [ %.1.peel, %.thread.peel ], [ %.1, %.loopexit ] ; 4 uses
  %.lcssa = phi i1 [ %i.ax, %.thread.peel ], [ %i.cf, %.loopexit ] ; 2 uses
  %12 = icmp ne i32 %.285.lcssa, 0
  %or.cond = or i1 %.lcssa, %12
  br i1 %or.cond, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
end_hunk_2
