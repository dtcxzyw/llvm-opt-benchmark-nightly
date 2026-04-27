inline.NumInlined: 445
inline.NumDeleted: 256
begin_hunk_0_@_ZN33OpenImageIO_v3_1_IlmThread__3_3_512_GLOBAL__N_125DefaultThreadPoolProvider13setNumThreadsEi:bb.a
  %.val11.i = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %.val11.i, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.018.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %.noexc26 unwind label %.loopexit

end_hunk_0
begin_hunk_1_@_ZN33OpenImageIO_v3_1_IlmThread__3_3_512_GLOBAL__N_125DefaultThreadPoolProvider13setNumThreadsEi:bb.a
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.bw = getelementptr inbounds nuw i8, ptr %.val17, i64 144
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.039 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.by, align 8, !tbaa !105
  %.not.i31 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i31, label %_ZNSt6threadD2Ev.exit, label %bb.t
end_hunk_1
begin_hunk_2_@_ZN33OpenImageIO_v3_1_IlmThread__3_3_512_GLOBAL__N_125DefaultThreadPoolProvider6finishEv:bb.a
  %.val11.i = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %.val11.i, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.018.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc2 unwind label %.loopexit

end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
