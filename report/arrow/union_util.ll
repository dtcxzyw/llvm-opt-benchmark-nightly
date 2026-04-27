inline.NumInlined: 18
inline.NumDeleted: 13
begin_hunk_0_@_ZN5arrow10union_util27LogicalSparseUnionNullCountERKNS_9ArraySpanE:bb.a
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = sext i8 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64
  %sext = shl i64 %i.t, 56
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.v = ashr exact i64 %sext, 49
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
end_hunk_0
begin_hunk_1_@_ZN5arrow10union_util26LogicalDenseUnionNullCountERKNS_9ArraySpanE:bb.a
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23
  %i.s = sext i8 %i.r to i64
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.h, i64 %i.o
end_hunk_1
begin_hunk_2_@_ZN5arrow10union_util26LogicalDenseUnionNullCountERKNS_9ArraySpanE:bb.a
  %sext = shl i64 %i.w, 56
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = ashr exact i64 %sext, 49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab ; 8 uses
  %i.ad = sext i32 %i.z to i64                    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK5arrow9ArraySpan16IsNullDenseUnionEl

declare noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_3
