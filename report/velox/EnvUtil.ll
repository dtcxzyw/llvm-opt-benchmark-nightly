inline.NumInlined: 531
inline.NumDeleted: 271
begin_hunk_0_@_ZN5folly12experimental16EnvironmentState23setAsCurrentEnvironmentEv:bb.a
  %1 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = tail call i32 @clearenv() #22
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %.critedge25, label %bb.b, !prof !54
end_hunk_0
begin_hunk_1_@_ZN5folly12experimental16EnvironmentState23setAsCurrentEnvironmentEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.031.035 = load ptr, ptr %i.f, align 8, !tbaa !29 ; 2 uses
  %i.g = icmp eq ptr %.sroa.031.035, null
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge25
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %.critedge28, %.critedge25
  ret void
end_hunk_1
begin_hunk_2_@_ZN5folly12experimental16EnvironmentState23setAsCurrentEnvironmentEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %.critedge28
  %.sroa.031.036 = phi ptr [ %.sroa.031.035, %.lr.ph ], [ %.sroa.031.0, %.critedge28 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.036, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.036, i64 40
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !47
end_hunk_2
begin_hunk_3_@_ZN5folly12experimental16EnvironmentState23setAsCurrentEnvironmentEv:bb.a
bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.b, align 8, !tbaa !41
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !41
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.7, i32 noundef 52, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
end_hunk_3
