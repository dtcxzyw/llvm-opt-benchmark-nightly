inline.NumInlined: 173
inline.NumDeleted: 95
begin_hunk_0_@_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE:bb.a

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.v = phi ptr [ %i.ae, %bb.g ], [ %i.u, %bb.e ]
  %.sroa.09.015 = phi ptr [ %i.af, %bb.g ], [ %i.s, %bb.e ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.015) ]
  %i.w = load ptr, ptr %.sroa.09.015, align 8     ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, %2
end_hunk_0
begin_hunk_1_@_ZN6Assimp13DefaultLogger12attachStreamEPNS_9LogStreamEj:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.011.019 = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.019) ]
  %i.h = load ptr, ptr %.sroa.011.019, align 8    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj:bb.a
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.l
  %.sroa.011.026 = phi ptr [ %i.ap, %bb.l ], [ %i.d, %bb.b ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.026) ]
  %i.g = load ptr, ptr %.sroa.011.026, align 8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp13DefaultLoggerD2Ev:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.k = phi ptr [ %i.t, %bb.e ], [ %i.d, %bb.a ]
  %.sroa.01.05 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.05) ]
  %i.l = load ptr, ptr %.sroa.01.05, align 8      ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.c
end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
