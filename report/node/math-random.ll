begin_hunk_0
%"class.v8::internal::FlagValue.454" = type { i32 }
%"class.v8::internal::FlagValue.453" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"struct.v8::internal::MathRandom::State" = type { i64, i64 }

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MathRandom17InitializeContextEPNS0_7IsolateENS0_12DirectHandleINS0_7ContextEEE(ptr noundef nonnull %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::MathRandom::State", align 8 ; 4 uses
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFixedDoubleArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 64, i8 noundef zeroext 0) #7 ; 5 uses
  br label %bb.m

bb.b:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2
  br i1 %.not39.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.d, i64 %i.c) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal7Context21set_math_random_cacheENS0_6TaggedINS0_16FixedDoubleArrayEEE.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.d, i64 %i.c) #7
  br label %_ZN2v88internal7Context21set_math_random_cacheENS0_6TaggedINS0_16FixedDoubleArrayEEE.exit

_ZN2v88internal7Context21set_math_random_cacheENS0_6TaggedINS0_16FixedDoubleArrayEEE.exit: ; preds = %bb.b, %bb.f, %bb.g
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 16, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %i.p = load i64, ptr %1, align 8                ; 4 uses
  %i.q = load i64, ptr %i.o, align 8              ; 5 uses
  %i.r = add i64 %i.p, 1343                       ; 3 uses
end_hunk_2
begin_hunk_3
  br i1 %.not39.i.i.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.p, i64 noundef %i.r, i64 %i.q) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i12, label %_ZN2v88internal7Context21set_math_random_stateENS0_6TaggedINS0_9ByteArrayEEE.exit, label %bb.l, !prof !5

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.p, i64 %i.r, i64 %i.q) #7
  br label %_ZN2v88internal7Context21set_math_random_stateENS0_6TaggedINS0_9ByteArrayEEE.exit

_ZN2v88internal7Context21set_math_random_stateENS0_6TaggedINS0_9ByteArrayEEE.exit: ; preds = %_ZN2v88internal7Context21set_math_random_cacheENS0_6TaggedINS0_16FixedDoubleArrayEEE.exit, %bb.k, %bb.l
end_hunk_3
begin_hunk_4
  %i.ad = add i64 %i.ac, 1335
  %i.ae = inttoptr i64 %i.ad to ptr
  store atomic volatile i64 0, ptr %i.ae release, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.af = add i64 %i.ac, 1343
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = add i64 %i.ah, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void

bb.m:                                             ; preds = %bb.m, %bb.a
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal10MathRandom12ResetContextENS0_6TaggedINS0_7ContextEEE(i64 %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::MathRandom::State", align 8 ; 4 uses
  %i.a = add i64 %0, 1335
  %i.b = inttoptr i64 %i.a to ptr
  store atomic volatile i64 0, ptr %i.b release, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = add i64 %0, 1343
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal10MathRandom11RefillCacheEPNS0_7IsolateEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
end_hunk_5
begin_hunk_6
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1568), align 32 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c
end_hunk_6
begin_hunk_7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN2v88internal7Isolate23random_number_generatorEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #7
  call void @_ZN2v84base21RandomNumberGenerator9NextBytesEPvm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %i.a, i64 noundef 8) #7
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %.pre, %bb.d ], [ %i.k, %bb.c ]
  %i.n = call noundef i64 @_ZN2v84base21RandomNumberGenerator11MurmurHash3Em(i64 noundef %i.m) #7 ; 2 uses
  %i.o = load i64, ptr %i.a, align 8
  %i.p = xor i64 %i.o, -1
  %i.q = call noundef i64 @_ZN2v84base21RandomNumberGenerator11MurmurHash3Em(i64 noundef %i.p) #7 ; 2 uses
  %i.r = or i64 %i.q, %i.n
  %.not11 = icmp eq i64 %i.r, 0
  br i1 %.not11, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
end_hunk_7
begin_hunk_8
declare noundef i64 @_ZN2v84base21RandomNumberGenerator11MurmurHash3Em(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

end_hunk_8
begin_hunk_9
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_9
