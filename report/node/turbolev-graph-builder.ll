inline.NumInlined: 65941
inline.NumDeleted: 17507
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14GeneratorStoreERKNS4_15ProcessingStateE:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.l = lshr i32 %i.j, 16
  %5 = add nsw i32 %i.l, -2
  %i.m = getelementptr inbounds i8, ptr %1, i64 -8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit, %bb.a
end_hunk_0
