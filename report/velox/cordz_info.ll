inline.NumInlined: 132
inline.NumDeleted: 69
begin_hunk_0_@_ZN4absl12lts_2024011613cord_internal9CordzInfoC2EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1096 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  br label %bb.e
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613cord_internal9CordzInfoC2EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierE:bb.a
  store i32 %3, ptr %i.o, align 8, !tbaa !32
  br label %_ZN4absl12lts_2024011613cord_internal9CordzInfo15GetParentMethodEPKS2_.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink15 = phi i64 [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  %.sink15.a = phi i64 [ 72, %bb.d ], [ 584, %bb.c ]
  %.sink.a = phi ptr [ %i.m, %bb.d ], [ %i.k, %bb.c ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 %.sink15.a
  %i.p = shl i64 %.sink15, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 8 %.sink, i64 %i.p, i1 false)
  %.0.i.ph = load i64, ptr %.sink.a, align 8, !tbaa !35
  store i64 %.0.i.ph, ptr %i.h, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %3, ptr %i.q, align 8, !tbaa !32
end_hunk_1
