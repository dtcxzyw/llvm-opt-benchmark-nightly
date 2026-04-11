inline.NumInlined: 137
inline.NumDeleted: 72
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal9CordzInfoC2EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierEl:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %5

5:                                                ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 584
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1096 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35
  br label %bb.e
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213cord_internal9CordzInfoC2EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierEl:bb.a
  store i32 %3, ptr %i.o, align 8, !tbaa !33
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_.exit

bb.e:                                             ; preds = %5, %bb.d
  %.sink16.a = phi i64 [ %i.l, %5 ], [ %i.n, %bb.d ]
  %.sink.a = phi ptr [ %6, %5 ], [ %7, %bb.d ]
  %.0.i.ph.in = phi ptr [ %i.k, %5 ], [ %i.m, %bb.d ]
  %i.p = shl i64 %.sink16.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 8 %.sink.a, i64 %i.p, i1 false)
  %.0.i.ph = load i64, ptr %.0.i.ph.in, align 8, !tbaa !36
  store i64 %.0.i.ph, ptr %i.h, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %3, ptr %i.q, align 8, !tbaa !33
end_hunk_1
