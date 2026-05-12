inline.NumInlined: 24
inline.NumDeleted: 3
begin_hunk_0_@FinalizeSpareMBMap:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #17 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 8, ptr %i.k, align 4, !tbaa !21
  store i32 0, ptr %i.f, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %i.h, i8 0, i64 65496, i1 false)
  %i.m = load i32, ptr @seiSparePicturePayload, align 8, !tbaa !71
  %i.n = sub nsw i32 %i.c, %i.m                   ; 2 uses
  %i.o = lshr i32 %i.n, 23
end_hunk_0
