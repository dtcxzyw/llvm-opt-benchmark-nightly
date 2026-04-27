inline.NumInlined: 24
inline.NumDeleted: 14
begin_hunk_0_@_ZN4llvh13StringMapImplC2Ejj:bb.a
  %i.s = add nuw i32 %i.r, 1                      ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.t = add nuw nsw i64 %i.q, 2
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 12) #10 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %_ZN4llvh13StringMapImpl4initEj.exit

end_hunk_0
begin_hunk_1_@_ZN4llvh13StringMapImplC2Ejj:bb.a
  br label %_ZN4llvh13StringMapImpl4initEj.exit

_ZN4llvh13StringMapImpl4initEj.exit:              ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  store ptr %i.u, ptr %0, align 8, !tbaa !13
  store i32 %i.s, ptr %i.a, align 8, !tbaa !14
  %i.w = zext i32 %i.s to i64
end_hunk_1
begin_hunk_2_@_ZN4llvh13StringMapImpl4initEj:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.d = add i32 %i.a, 1
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 12) #10 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN4llvh11safe_callocEmm.exit

end_hunk_2
begin_hunk_3_@_ZN4llvh13StringMapImpl4initEj:bb.a
  br label %_ZN4llvh11safe_callocEmm.exit

_ZN4llvh11safe_callocEmm.exit:                    ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %i.h, align 8, !tbaa !14
end_hunk_3
begin_hunk_4_@_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE:bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !12
  %i.f = tail call noalias dereferenceable_or_null(204) ptr @calloc(i64 noundef 17, i64 noundef 12) #10 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN4llvh13StringMapImpl4initEj.exit

end_hunk_4
begin_hunk_5_@_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE:bb.a
  br label %_ZN4llvh13StringMapImpl4initEj.exit

_ZN4llvh13StringMapImpl4initEj.exit:              ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  store i32 16, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128
end_hunk_5
begin_hunk_6_@calloc

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
begin_hunk_7_@llvm.assume/@bcmp
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }

end_hunk_7
