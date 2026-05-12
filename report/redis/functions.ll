inline.NumInlined: 33
inline.NumDeleted: 8
begin_hunk_0_@functionsLibCtxCreate:bb.a
  %i.c = tail call ptr @dictCreate(ptr noundef nonnull @functionDictType) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !39
  %i.e = tail call ptr @dictCreate(ptr noundef nonnull @engineStatsDictType) #11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.g = load ptr, ptr @engines, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@functionsLibCtxCreate:bb.a
  %i.i = phi ptr [ %i.n, %.lr.ph ], [ %i.h, %bb.a ]
  %i.j = call ptr @dictGetVal(ptr noundef nonnull %i.i) #11
  %i.k = call noalias dereferenceable_or_null(16) ptr @zcalloc(i64 noundef 16) #12
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.m = call i32 @dictAdd(ptr noundef %i.e, ptr noundef %i.l, ptr noundef %i.k) #11 ; 0 uses
  %i.n = call ptr @dictNext(ptr noundef nonnull %0) #11 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49
end_hunk_1
