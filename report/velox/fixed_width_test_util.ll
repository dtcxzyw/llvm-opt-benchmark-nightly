inline.NumInlined: 482
inline.NumDeleted: 245
begin_hunk_0_@_ZN5arrow4util8internal19NestedListGenerator16AppendNestedListEPNS_12ArrayBuilderEPKiPl:bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !44, !alias.scope !137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %.critedge66

bb.c:                                             ; preds = %bb.s
  %i.j = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal19NestedListGenerator16AppendNestedListEPNS_12ArrayBuilderEPKiPl:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.m = sext i32 %i.l to i64
end_hunk_1
begin_hunk_2_@_ZN5arrow4util8internal19NestedListGenerator16AppendNestedListEPNS_12ArrayBuilderEPKiPl:bb.a
  %i.am = load i64, ptr %i.al, align 8, !tbaa !60, !noalias !140
  %i.an = add nsw i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !60, !noalias !140
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !165, !noalias !140 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24, !noalias !140
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
end_hunk_2
begin_hunk_3_@_ZN5arrow4util8internal19NestedListGenerator16AppendNestedListEPNS_12ArrayBuilderEPKiPl:bb.a
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !167
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit84
  %i.ay = phi i32 [ %i.l, %_ZN5arrow6StatusD2Ev.exit84 ], [ %i.g, %_ZN5arrow6StatusD2Ev.exit ] ; 2 uses
  %.pn = phi i64 [ 200, %_ZN5arrow6StatusD2Ev.exit84 ], [ 168, %_ZN5arrow6StatusD2Ev.exit ]
  %.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !165
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.not.not145 = icmp sgt i32 %i.ay, 0
end_hunk_3
