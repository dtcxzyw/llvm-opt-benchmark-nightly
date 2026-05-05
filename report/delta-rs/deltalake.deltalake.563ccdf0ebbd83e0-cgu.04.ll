inline.NumInlined: 6517
inline.NumDeleted: 2392
begin_hunk_0_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
bb.h:                                             ; preds = %.lr.ph20
  %lsr.iv.next26 = add i64 %lsr.iv25, -1          ; 2 uses
  %scevgep31 = getelementptr i8, ptr %lsr.iv30, i64 984
  %i.ah = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next26
  br i1 %i.ah, label %.body.loopexit, label %.lr.ph20

bb.i:                                             ; preds = %bb.g
  %lsr.iv29.lcssa = phi ptr [ %lsr.iv28, %bb.g ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.g ]
  %.lcssa = phi i64 [ %lsr.iv, %bb.g ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %bb.h
  %lsr.iv30 = phi ptr [ %lsr.iv29.lcssa, %.lr.ph20.preheader ], [ %scevgep31, %bb.h ] ; 2 uses
  %lsr.iv25 = phi i64 [ %i.g, %.lr.ph20.preheader ], [ %lsr.iv.next26, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(984) %lsr.iv30) #39
          to label %bb.h unwind label %bb.j
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.i:                                             ; preds = %bb.h
  %lsr.iv32.lcssa = phi ptr [ %lsr.iv31, %bb.h ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.h ]
  %.lcssa = phi i64 [ %lsr.iv, %bb.h ]
  %i.ak = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit8.i
  %lsr.iv33 = phi ptr [ %lsr.iv32.lcssa, %.lr.ph.i.preheader ], [ %scevgep34, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit8.i ] ; 3 uses
  %lsr.iv28 = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %lsr.iv.next29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit8.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16438)
end_hunk_3
begin_hunk_4_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit8.i: ; preds = %bb.j, %.lr.ph.i
  %lsr.iv.next29 = add i64 %lsr.iv28, -1          ; 2 uses
  %scevgep34 = getelementptr i8, ptr %lsr.iv33, i64 24
  %i.ap = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next29
  br i1 %i.ap, label %.body.loopexit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.j
end_hunk_4
