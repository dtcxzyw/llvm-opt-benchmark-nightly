begin_hunk_0
  br i1 %.not44, label %bb.p, label %.critedge, !llvm.loop !19

bb.i:                                             ; preds = %bb.f, %upb_MiniTableField_HasPresence.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  switch i8 %i.n, label %default.unreachable [
    i8 0, label %bb.j
end_hunk_0
begin_hunk_1

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq i8 %lhsc.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %i.at, label %bb.p, label %bb.m, !llvm.loop !19

bb.k:                                             ; preds = %bb.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(8) %i.l, ptr noundef nonnull readonly dereferenceable(8) %i.a, i64 8)
  %i.au = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %i.au, label %bb.p, label %bb.m, !llvm.loop !19

bb.l:                                             ; preds = %bb.i
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.42.0.copyload.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.av = icmp eq i64 %.sroa.42.0.copyload.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %i.av, label %bb.p, label %bb.m, !llvm.loop !19

_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.i
  %bcmp12.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(4) %i.l, ptr noundef nonnull readonly dereferenceable(4) %i.a, i64 4)
  %i.aw = icmp eq i32 %bcmp12.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %i.aw, label %bb.p, label %bb.m, !llvm.loop !19

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit
end_hunk_1
begin_hunk_2
  br i1 %i.az, label %bb.p, label %.critedge, !llvm.loop !19

bb.o:                                             ; preds = %bb.m
  %i.ba = tail call i64 @upb_Map_Size(ptr noundef %.sroa.0.1) #6
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %.critedge, !llvm.loop !19

end_hunk_2
begin_hunk_3
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_3
