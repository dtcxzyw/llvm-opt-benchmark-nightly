begin_hunk_0
  ]

switch.edge.thread:                               ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %14, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1
bb.d:                                             ; preds = %switch.edge.thread, %switch.early.test, %switch.early.test
  %i.ab = phi ptr [ %i.v, %switch.edge.thread ], [ %i.aa, %switch.early.test ], [ %i.aa, %switch.early.test ] ; 2 uses
  %i.ac = phi ptr [ %i.u, %switch.edge.thread ], [ %i.z, %switch.early.test ], [ %i.z, %switch.early.test ] ; 2 uses
  %i.ad = phi i1 [ false, %switch.edge.thread ], [ %i.y, %switch.early.test ], [ %i.y, %switch.early.test ]
  %i.ae = phi i1 [ false, %switch.edge.thread ], [ %i.w, %switch.early.test ], [ %i.w, %switch.early.test ]
  %i.af = zext i1 %i.ad to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
end_hunk_1
