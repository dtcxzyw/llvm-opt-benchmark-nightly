inline.NumInlined: 175
inline.NumDeleted: 39
begin_hunk_0_@hamt_node_without:bb.a
  br i1 %i.jn, label %bb.bt, label %hamt_node_bitmap_without.exit.loopexit, !llvm.loop !46

hamt_node_collision_find_index.exit.i:            ; preds = %bb.bu
  %.01319.i.i.lcssa115 = phi i64 [ %.01319.i.i, %bb.bu ] ; 3 uses
  %.val48.i = load i64, ptr %i.je, align 8, !tbaa !44 ; 2 uses
  %i.jo = sdiv i64 %.val48.i, 2
end_hunk_0
begin_hunk_1_@hamt_node_without:bb.a
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.nw
  store ptr %i.ns, ptr %scevgep121, align 8, !tbaa !45
  %i.nx = add nuw nsw i64 %.066.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.01319.i.i, %i.nx
  br i1 %exitcond.not.i.1, label %._crit_edge.i.loopexit, label %bb.cg, !llvm.loop !55

._crit_edge.i.loopexit:                           ; preds = %_Py_NewRef.exit54.i.1
end_hunk_1
begin_hunk_2_@hamt_node_without:bb.a
  br label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader, %_Py_NewRef.exit55.i
  %lsr.iv124 = phi i64 [ %lsr.iv, %.lr.ph70.i.preheader ], [ %lsr.iv.next125, %_Py_NewRef.exit55.i ] ; 3 uses
  %.val74.i = phi i64 [ %.val.i25, %_Py_NewRef.exit55.i ], [ %.val67.i, %.lr.ph70.i.preheader ]
  %i.oa = shl i64 %lsr.iv124, 3
  %scevgep128.a = getelementptr i8, ptr %0, i64 %i.oa
end_hunk_2
begin_hunk_3_@hamt_node_bitmap_assoc:bb.a
  br i1 %i.em, label %bb.au, label %bb.bj

bb.au:                                            ; preds = %bb.at
  %i.en = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyHamt_ArrayNode_Type) #12 ; 11 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_Py_NewRef.exit, label %.preheader.i

end_hunk_3
begin_hunk_4_@hamt_node_bitmap_assoc:bb.a
  br i1 %exitcond254.not, label %..thread.loopexit_crit_edge, label %bb.ax, !llvm.loop !81

.thread.loopexitsplit:                            ; preds = %hamt_hash.exit, %bb.bb
  br label %.thread.loopexit

..thread.loopexit_crit_edge:                      ; preds = %bb.bd
  br label %.thread.loopexit, !llvm.loop !81

.thread.loopexit:                                 ; preds = %.thread.loopexitsplit, %..thread.loopexit_crit_edge
  %.0158.ph.ph = phi ptr [ %i.en, %..thread.loopexit_crit_edge ], [ null, %.thread.loopexitsplit ]
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.aw
end_hunk_4
