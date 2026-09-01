Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/memory?download=true
inline.NumInlined: 36
inline.NumDeleted: 9
begin_hunk_0_@_Z31mem_getLocalQuregMemoryRequiredibi:bb.a
  %i.b = zext i1 %1 to i32                        ; 2 uses
  %.1.i.i = lshr i32 %spec.select.i.i, %i.b
  %.not.i = icmp slt i32 %0, %.1.i.i
  br i1 %.not.i, label %_Z22getLocalMemoryRequirediibb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z36error_memSizeQueriedButWouldOverflowv()
  br label %_Z22getLocalMemoryRequirediibb.exit

_Z22getLocalMemoryRequirediibb.exit:              ; preds = %bb.a, %bb.b
  %.v.v.i = shl nsw i32 %0, %i.b
  %.v.i = zext nneg i32 %.v.v.i to i64
  %i.c = shl nuw i64 1, %.v.i
  %i.d = sext i32 %2 to i64
  %i.e = sdiv i64 %i.c, %i.d
  %i.f = zext i1 %i.a to i64
  %spec.select.i = shl nsw i64 %i.e, %i.f
  %i.g = shl i64 %spec.select.i, 4
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -15) i64 @_Z32mem_getLocalMatrixMemoryRequiredibi(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i1 %1 to i32                        ; 2 uses
  %.1.i.i = lshr exact i32 60, %i.a
  %.not.i = icmp slt i32 %0, %.1.i.i
  br i1 %.not.i, label %_Z22getLocalMemoryRequirediibb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z36error_memSizeQueriedButWouldOverflowv()
  br label %_Z22getLocalMemoryRequirediibb.exit

_Z22getLocalMemoryRequirediibb.exit:              ; preds = %bb.a, %bb.b
  %.v.v.i = shl nsw i32 %0, %i.a
  %.v.i = zext nneg i32 %.v.v.i to i64
  %i.b = shl nuw i64 1, %.v.i
  %i.c = sext i32 %2 to i64
  %i.d = sdiv i64 %i.b, %i.c
  %i.e = shl i64 %i.d, 4
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -15) i64 @_Z33mem_getLocalSuperOpMemoryRequiredi(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %.not.i.i = icmp slt i32 %0, 15
  br i1 %.not.i.i, label %_Z32mem_getLocalMatrixMemoryRequiredibi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z36error_memSizeQueriedButWouldOverflowv()
  br label %_Z32mem_getLocalMatrixMemoryRequiredibi.exit

_Z32mem_getLocalMatrixMemoryRequiredibi.exit:     ; preds = %bb.a, %bb.b
  %i.a = shl i32 %0, 2
  %.v.i.i = zext nneg i32 %i.a to i64
  %i.b = shl i64 16, %.v.i.i
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define noundef zeroext i1 @_Z23mem_canQuregFitInMemoryibix(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  %spec.select.v.i.i = select i1 %i.a, i64 5, i64 4
  %spec.select.i.i = lshr i64 %3, %spec.select.v.i.i
  %i.b = uitofp nneg i64 %spec.select.i.i to double
  %i.c = tail call noundef double @log2(double noundef %i.b) #12
  %i.d = and i32 %2, 1
  %.not.i.not14.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.not14.i.i, label %.lr.ph.preheader.i.i, label %_Z43mem_getMaxNumQuregQubitsWhichCanFitInMemorybix.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.0.i16.i.i = phi i32 [ %i.f, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %.04.i15.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.e, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.f = add nuw nsw i32 %.0.i16.i.i, 1           ; 2 uses
  %i.g = ashr exact i64 %.04.i15.i.i, 1
  %i.h = and i64 %.04.i15.i.i, 2
  %.not.i.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.not.i.i, label %.lr.ph.i.i, label %_Z43mem_getMaxNumQuregQubitsWhichCanFitInMemorybix.exit, !llvm.loop !9

_Z43mem_getMaxNumQuregQubitsWhichCanFitInMemorybix.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.0.i.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.f, %.lr.ph.i.i ]
  %i.i = tail call double @llvm.floor.f64(double %i.c)
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = sdiv i32 %i.j, 2
  %.013.i.i = select i1 %1, i32 %i.k, i32 %i.j
  %i.l = add nsw i32 %.0.i.lcssa.i.i, %.013.i.i
  %i.m = icmp sle i32 %0, %i.l
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define noundef zeroext i1 @_Z24mem_canMatrixFitInMemoryibix(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not.i.not8 = icmp eq i32 %i.a, 0
  br i1 %.not.i.not8, label %.lr.ph.preheader, label %_Z8logBase2x.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.i10 = phi i32 [ %i.c, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.04.i9 = phi i64 [ %i.d, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.c = add nuw nsw i32 %.0.i10, 1               ; 2 uses
  %i.d = ashr exact i64 %.04.i9, 1
  %i.e = and i64 %.04.i9, 2
  %.not.i.not = icmp eq i64 %i.e, 0
  br i1 %.not.i.not, label %.lr.ph, label %_Z8logBase2x.exit, !llvm.loop !9

_Z8logBase2x.exit:                                ; preds = %.lr.ph, %bb.a
  %.0.i.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.lr.ph ]
  %i.f = lshr i64 %3, 4
  %i.g = uitofp nneg i64 %i.f to double
  %i.h = tail call noundef double @log2(double noundef %i.g) #12
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = sdiv i32 %i.j, 2
  %.0 = select i1 %1, i32 %i.k, i32 %i.j
  %i.l = sub nsw i32 %0, %.0.i.lcssa
  %i.m = icmp sle i32 %i.l, %.0
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef zeroext i1 @_Z25mem_canSuperOpFitInMemoryix(i32 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = shl nsw i32 %0, 1
  %i.b = lshr i64 %1, 4
  %i.c = uitofp nneg i64 %i.b to double
  %i.d = tail call noundef double @log2(double noundef %i.c) #12
  %i.e = tail call double @llvm.floor.f64(double %i.d)
  %i.f = fptosi double %i.e to i32
  %i.g = sdiv i32 %i.f, 2
  %i.h = icmp sle i32 %i.a, %i.g
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z29mem_canPauliStrSumFitInMemoryxx(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %1, 5
  %i.b = icmp sle i64 %0, %i.a
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z20mem_isOuterAllocatedPSt7complexIdE(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z20mem_isOuterAllocatedPPSt7complexIdE(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z20mem_isOuterAllocatedPPPSt7complexIdE(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z15mem_isAllocatedP8PauliStr(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z15mem_isAllocatedPPSt7complexIdEx(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp slt i64 %1, 1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0710 = phi i64 [ %i.e, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0710
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  %i.e = add nuw nsw i64 %.0710, 1                ; 2 uses
  %exitcond.not = icmp ne i64 %i.e, %1
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_Z15mem_isAllocatedPPPSt7complexIdExi(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_Z15mem_isAllocatedPPSt7complexIdEx.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = icmp slt i32 %2, 1
  br i1 %i.c, label %_Z15mem_isAllocatedPPSt7complexIdEx.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = icmp slt i64 %1, 1
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0813.us = phi i64 [ %i.g, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0813.us
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %.not30 = icmp ne ptr %i.f, null                ; 2 uses
  %i.g = add nuw nsw i64 %.0813.us, 1             ; 2 uses
  %exitcond21.not = icmp ne i64 %i.g, %i.b
  %or.cond.not = select i1 %.not30, i1 %exitcond21.not, i1 false
  br i1 %or.cond.not, label %.lr.ph.split.us, label %_Z15mem_isAllocatedPPSt7complexIdEx.exit, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %.0813 = phi i64 [ %i.m, %.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0813
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not.not = icmp ne ptr %i.i, null              ; 3 uses
  br i1 %.not.not, label %.lr.ph.i, label %_Z15mem_isAllocatedPPSt7complexIdEx.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i64 %.0710.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %1
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !26

.lr.ph.i:                                         ; preds = %.lr.ph.split, %bb.b
  %.0710.i = phi i64 [ %i.j, %bb.b ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0710.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_Z15mem_isAllocatedPPSt7complexIdEx.exit, label %bb.b

.loopexit:                                        ; preds = %bb.b
  %i.m = add nuw nsw i64 %.0813, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %_Z15mem_isAllocatedPPSt7complexIdEx.exit, label %.lr.ph.split, !llvm.loop !30

_Z15mem_isAllocatedPPSt7complexIdEx.exit:         ; preds = %.lr.ph.split, %.loopexit, %.lr.ph.i, %.lr.ph.split.us, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %.lr.ph.i ], [ true, %.preheader ], [ %.not30, %.lr.ph.split.us ], [ %.not.not, %.loopexit ], [ %.not.not, %.lr.ph.split ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !13, i64 32}
!12 = !{!"_ZTS7sysinfo", !13, i64 0, !7, i64 8, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !14, i64 80, !14, i64 82, !13, i64 88, !13, i64 96, !6, i64 104, !7, i64 108}
!13 = !{!"long", !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!12, !6, i64 104}
!16 = !{!17, !17, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!19, !20, i64 48}
!19 = !{!"_ZTS5Qureg", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96}
!20 = !{!"long long", !7, i64 0}
!21 = !{!"p1 _ZTSSt7complexIdE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!21, !21, i64 0}
!24 = !{!19, !6, i64 8}
!25 = !{!19, !6, i64 16}
!26 = distinct !{!26, !10}
!27 = !{!28, !28, i64 0}
!28 = !{!"p2 _ZTSSt7complexIdE", !29, i64 0}
!29 = !{!"any p2 pointer", !22, i64 0}
!30 = distinct !{!30, !10}
end_hunk_0
