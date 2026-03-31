begin_hunk_0

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !15
  switch i8 %i.cc, label %bb.l [
    i8 0, label %.thread233.i
    i8 45, label %bb.k
  ]

.thread233.i:                                     ; preds = %bb.j, %bb.i
end_hunk_0
begin_hunk_1
  %i.co = add nsw i32 %.067479.i, -1
  br label %bb.bw

bb.k:                                             ; preds = %bb.j
  %26 = getelementptr inbounds nuw i8, ptr %i.bz, i64 2 ; 2 uses
  %.pr.i = load i8, ptr %26, align 1, !tbaa !15
  %i.cp = icmp eq i8 %.pr.i, 0
  br i1 %i.cp, label %.thread.i.a, label %bb.l

.thread.i.a:                                      ; preds = %bb.k
  %i.cq = add nsw i32 %.067479.i, 1
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.064231.i = phi ptr [ %26, %bb.k ], [ %i.cb, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  store ptr %i.ay, ptr %12, align 8, !tbaa !65
  store i64 0, ptr %i.az, align 8, !tbaa !66
end_hunk_1
begin_hunk_2
  store i64 0, ptr %i.bb, align 8, !tbaa !66
  store i8 0, ptr %i.ba, align 8, !tbaa !15
  %i.cr = load ptr, ptr %22, align 8, !tbaa !98
  %i.cs = invoke fastcc noundef ptr @_ZN6google12_GLOBAL__N_112FlagRegistry19SplitArgumentLockedEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS3_SA_(ptr noundef nonnull align 8 dereferenceable(104) %i.cr, ptr noundef nonnull %.064231.i, ptr noundef %12, ptr noundef %i.a, ptr noundef %13)
          to label %bb.m unwind label %.loopexit241.i ; 6 uses

bb.m:                                             ; preds = %bb.l
end_hunk_2
