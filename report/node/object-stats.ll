inline.NumInlined: 2047
inline.NumDeleted: 1036
begin_hunk_0_@_ZN2v88internal24ObjectStatsCollectorImplC2EPNS0_4HeapEPNS0_11ObjectStatsE:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i64 %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %1, -1
end_hunk_0
begin_hunk_1_@_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %2, 1
  br i1 %i.h, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8
  %.pre25 = ptrtoint ptr %.pre to i64
  %.pre26 = add i64 %.pre25, -55464
  %.pre28 = inttoptr i64 %.pre26 to ptr
end_hunk_1
begin_hunk_2_@_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic volatile i64, ptr %i.b monotonic, align 8
  %3 = load ptr, ptr %0, align 8
  %i.j = ptrtoint ptr %3 to i64
  %i.k = add i64 %i.j, -55464
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 736
end_hunk_2
begin_hunk_3_@_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl10IsCowArrayENS0_6TaggedINS0_14FixedArrayBaseEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i64 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %1, -1
end_hunk_3
begin_hunk_4_@_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %6, 1
  br i1 %i.j, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %0, align 8
  %.pre25.i = ptrtoint ptr %.pre.i to i64
  %.pre26.i = add i64 %.pre25.i, -55464
  %.pre28.i = inttoptr i64 %.pre26.i to ptr
end_hunk_4
begin_hunk_5_@_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.k = load atomic volatile i64, ptr %i.d monotonic, align 8
  %9 = load ptr, ptr %0, align 8
  %i.l = ptrtoint ptr %9 to i64
  %i.m = add i64 %i.l, -55464
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 736
end_hunk_5
begin_hunk_6_@_ZN2v88internal24ObjectStatsCollectorImpl42RecordPotentialDescriptorArraySavingsStatsENS0_6TaggedINS0_15DescriptorArrayEEE:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.k = add i64 %1, -1
  %i.l = add i64 %1, 15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.068 = phi i32 [ %i.h, %.lr.ph ], [ %.3.ph, %bb.e ] ; 2 uses
  %.sroa.033.067 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.e ] ; 2 uses
  %i.m = mul i64 %.sroa.033.067, 103079215104
end_hunk_6
begin_hunk_7_@_ZN2v88internal24ObjectStatsCollectorImpl42RecordPotentialDescriptorArraySavingsStatsENS0_6TaggedINS0_15DescriptorArrayEEE:bb.a
  %i.o = add i64 %i.k, %i.n
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %2 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 10624
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
end_hunk_7
begin_hunk_8_@_ZN2v88internal24ObjectStatsCollectorImpl42RecordPotentialDescriptorArraySavingsStatsENS0_6TaggedINS0_15DescriptorArrayEEE:bb.a
  %i.ae = icmp eq i64 %i.ac, %i.ad
  %i.af = zext i1 %i.ae to i32
  %spec.select = add nsw i32 %.068, %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.3.ph = phi i32 [ %.068, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.ag = add i64 %.sroa.033.067, 1               ; 2 uses
  %.not63 = icmp eq i64 %i.ag, %i.j
end_hunk_8
begin_hunk_9_@_ZN2v88internal24ObjectStatsCollectorImpl34RecordVirtualFeedbackVectorDetailsENS0_6TaggedINS0_14FeedbackVectorEEE:bb.a
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load atomic volatile i16, ptr %i.hb monotonic, align 2
  %i.hd = icmp eq i16 %i.hc, 205
  br i1 %i.hd, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread
  %i.he = load atomic volatile i64, ptr %i.ef monotonic, align 8
  %9 = load ptr, ptr %0, align 8
  %i.hf = ptrtoint ptr %9 to i64
  %i.hg = add i64 %i.hf, -55464
  %i.hh = inttoptr i64 %i.hg to ptr               ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 736
end_hunk_9
begin_hunk_10_@_ZN2v88internal24ObjectStatsCollectorImpl34RecordVirtualFeedbackVectorDetailsENS0_6TaggedINS0_14FeedbackVectorEEE:bb.a
  br i1 %.not15.i.i.i, label %_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE.exit, label %_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE.exit.i

bb.ae:                                            ; preds = %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread
  %10 = load ptr, ptr %0, align 8
  %i.hp = ptrtoint ptr %10 to i64
  %i.hq = add i64 %i.hp, -55464
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 856
end_hunk_10
begin_hunk_11_@llvm.umin.i32
attributes #7 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_11
