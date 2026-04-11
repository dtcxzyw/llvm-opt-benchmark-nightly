inline.NumInlined: 436
inline.NumDeleted: 211
begin_hunk_0_@_ZN5folly12json_pointer8unescapeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.027 = phi ptr [ %.0.be, %.backedge ], [ %i.a, %bb.a ] ; 3 uses
  %.02126 = phi ptr [ %.021.be, %.backedge ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = load i8, ptr %.027, align 1, !tbaa !18   ; 2 uses
  %.not = icmp eq i8 %i.f, 126
  br i1 %.not, label %bb.b, label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.c, %.lr.ph
  %storemerge35 = phi i8 [ %i.f, %.lr.ph ], [ 126, %bb.d ], [ 47, %bb.c ]
  %.pn = phi i64 [ 1, %.lr.ph ], [ 2, %bb.d ], [ 2, %bb.c ]
  store i8 %storemerge35, ptr %.02126, align 1, !tbaa !18
  %.0.be = getelementptr inbounds nuw i8, ptr %.027, i64 %.pn ; 2 uses
  %.021.be = getelementptr inbounds nuw i8, ptr %.02126, i64 1 ; 2 uses
  %.not29 = icmp ult ptr %.0.be, %i.d
  br i1 %.not29, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !31

bb.b:                                             ; preds = %.lr.ph
  %1 = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  %i.g = icmp eq ptr %1, %i.d
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !18
  switch i8 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit [
    i8 49, label %.backedge
    i8 48, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.backedge

._crit_edge.loopexit:                             ; preds = %.backedge
end_hunk_0
