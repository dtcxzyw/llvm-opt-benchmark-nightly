inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@PyType_GetBaseByToken:bb.a
  store i32 %i.af, ptr %.028.i, align 8, !tbaa !112
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.p, %.loopexit.i, %bb.m, %bb.l, %bb.i, %bb.q, %_PyType_GetBaseByToken_Borrow.exit, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ 1, %bb.q ], [ 0, %bb.i ], [ 1, %_PyType_GetBaseByToken_Borrow.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %.loopexit.i ], [ 0, %bb.p ]
  ret i32 %.0
}
end_hunk_0
begin_hunk_1_@type_ready:bb.a
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !118 ; 3 uses
  %i.cq = and i64 %i.cp, 2                        ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %2 = icmp ne i32 %1, 0                          ; 4 uses
  %or.cond.i29 = or i1 %2, %i.cr
  br i1 %or.cond.i29, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %type_ready_set_type.exit
end_hunk_1
begin_hunk_2_@type_ready:bb.a
  %.pre-phi = phi i64 [ %i.cq, %type_ready_set_type.exit ], [ %.pre148.pre-phi, %set_tp_bases.exit.i ], [ %i.cq, %bb.u ]
  %i.cz = phi i64 [ %i.cp, %type_ready_set_type.exit ], [ %.pre146, %set_tp_bases.exit.i ], [ %i.cp, %bb.u ]
  %i.da = icmp eq i64 %.pre-phi, 0
  %or.cond.i33 = or i1 %2, %i.da
  br i1 %or.cond.i33, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
end_hunk_2
begin_hunk_3_@type_ready:bb.a
bb.ah:                                            ; preds = %.loopexit
  %i.dz = and i64 %i.dt, 512
  %i.ea = icmp eq i64 %i.dz, 0
  %or.cond5.i = and i1 %2, %i.ea
  br i1 %or.cond5.i, label %.thread.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ah, %.loopexit
end_hunk_3
