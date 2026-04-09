inline.NumInlined: 519
inline.NumDeleted: 257
begin_hunk_0_@_ZN4geos9geomgraph20EdgeIntersectionList15createSplitEdgeEPKNS0_16EdgeIntersectionES4_:bb.a
  %3 = alloca %"class.std::vector.16", align 8    ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %4 = add i64 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26
  %i.e = sub i64 %4, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
end_hunk_0
begin_hunk_1_@_ZN4geos9geomgraph20EdgeIntersectionList15createSplitEdgeEPKNS0_16EdgeIntersectionES4_:bb.a
  %i.u = extractelement <2 x i1> %i.s, i64 1
  %.0.i.not = select i1 %i.t, i1 true, i1 %i.u
  %cond.fr = freeze i1 %.0.i.not                  ; 2 uses
  %not.cond.fr = xor i1 %cond.fr, true
  %5 = sext i1 %not.cond.fr to i64
  %spec.select = add i64 %i.e, %5
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.v = phi i1 [ %cond.fr, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.w = phi i64 [ %spec.select, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.x = icmp ugt i64 %i.w, 384307168202282325
end_hunk_1
