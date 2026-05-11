inline.NumInlined: 150
inline.NumDeleted: 100
begin_hunk_0
%"class.v8::internal::FlagValue.454" = type { i32 }
%"class.v8::internal::FlagValue.453" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MathRandom17InitializeContextEPNS0_7IsolateENS0_12DirectHandleINS0_7ContextEEE(ptr noundef nonnull %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFixedDoubleArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 64, i8 noundef zeroext 0) #6 ; 5 uses
  br label %bb.m

end_hunk_1
begin_hunk_2_@_ZN2v88internal10MathRandom17InitializeContextEPNS0_7IsolateENS0_12DirectHandleINS0_7ContextEEE:bb.a
  %i.ad = add i64 %i.ac, 1335
  %i.ae = inttoptr i64 %i.ad to ptr
  store atomic volatile i64 0, ptr %i.ae release, align 8
  %i.af = add i64 %i.ac, 1343
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = add i64 %i.ah, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  ret void

bb.m:                                             ; preds = %bb.m, %bb.a
end_hunk_2
begin_hunk_3_@llvm.lifetime.end.p0
; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal10MathRandom12ResetContextENS0_6TaggedINS0_7ContextEEE(i64 %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %0, 1335
  %i.b = inttoptr i64 %i.a to ptr
  store atomic volatile i64 0, ptr %i.b release, align 8
  %i.c = add i64 %0, 1343
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  ret void
}

end_hunk_3
begin_hunk_4_@_ZN2v84base21RandomNumberGenerator11MurmurHash3Em
; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2
end_hunk_4
