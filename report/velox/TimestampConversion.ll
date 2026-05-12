inline.NumInlined: 489
inline.NumDeleted: 183
begin_hunk_0_@_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_:bb.a
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN8facebook5velox6StatusC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 6 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !225
  store i8 %i.d, ptr %i.c, align 8, !tbaa !225
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !149
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !151  ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.c, label %._crit_edge.i.i.i.i
end_hunk_0
