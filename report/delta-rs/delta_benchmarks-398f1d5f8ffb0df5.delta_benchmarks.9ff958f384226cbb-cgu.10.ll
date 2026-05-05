inline.NumInlined: 3170
inline.NumDeleted: 887
begin_hunk_0_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks:bb.a
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
begin_hunk_1_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %bb.h
  %lsr.iv30 = phi ptr [ %lsr.iv29.lcssa, %.lr.ph20.preheader ], [ %scevgep31, %bb.h ] ; 2 uses
  %lsr.iv25 = phi i64 [ %i.g, %.lr.ph20.preheader ], [ %lsr.iv.next26, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(984) %lsr.iv30) #40
          to label %bb.h unwind label %bb.j
end_hunk_1
