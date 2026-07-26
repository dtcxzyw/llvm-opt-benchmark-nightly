inline.NumInlined: 21
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTIN5boost9container3pmr15memory_resourceE = comdat any

$_ZTSN5boost9container3pmr15memory_resourceE = comdat any

@_ZTVN5boost9container3pmr26synchronized_pool_resourceE = unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost9container3pmr26synchronized_pool_resourceE, ptr @_ZN5boost9container3pmr26synchronized_pool_resourceD1Ev, ptr @_ZN5boost9container3pmr26synchronized_pool_resourceD0Ev, ptr @_ZN5boost9container3pmr26synchronized_pool_resource11do_allocateEmm, ptr @_ZN5boost9container3pmr26synchronized_pool_resource13do_deallocateEPvmm, ptr @_ZNK5boost9container3pmr26synchronized_pool_resource11do_is_equalERKNS1_15memory_resourceE] }, align 8
@_ZTIN5boost9container3pmr26synchronized_pool_resourceE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container3pmr26synchronized_pool_resourceE, ptr @_ZTIN5boost9container3pmr15memory_resourceE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost9container3pmr26synchronized_pool_resourceE = constant [51 x i8] c"N5boost9container3pmr26synchronized_pool_resourceE\00", align 1
@_ZTIN5boost9container3pmr15memory_resourceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9container3pmr15memory_resourceE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5boost9container3pmr15memory_resourceE = linkonce_odr constant [40 x i8] c"N5boost9container3pmr15memory_resourceE\00", comdat, align 1

@_ZN5boost9container3pmr26synchronized_pool_resourceC1ERKNS1_12pool_optionsEPNS1_15memory_resourceE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5boost9container3pmr26synchronized_pool_resourceC2ERKNS1_12pool_optionsEPNS1_15memory_resourceE
@_ZN5boost9container3pmr26synchronized_pool_resourceC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5boost9container3pmr26synchronized_pool_resourceC2Ev
@_ZN5boost9container3pmr26synchronized_pool_resourceC1EPNS1_15memory_resourceE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3pmr26synchronized_pool_resourceC2EPNS1_15memory_resourceE
@_ZN5boost9container3pmr26synchronized_pool_resourceC1ERKNS1_12pool_optionsE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3pmr26synchronized_pool_resourceC2ERKNS1_12pool_optionsE
@_ZN5boost9container3pmr26synchronized_pool_resourceD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5boost9container3pmr26synchronized_pool_resourceD2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resourceC2ERKNS1_12pool_optionsEPNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost9container3pmr26synchronized_pool_resourceE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef null) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost9container3pmr13pool_resourceC1ERKNS1_12pool_optionsEPNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) #6
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN5boost9container3pmr13pool_resourceC1ERKNS1_12pool_optionsEPNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resourceC2Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost9container3pmr26synchronized_pool_resourceE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef null) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost9container3pmr13pool_resourceC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost9container3pmr13pool_resourceC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resourceC2EPNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost9container3pmr26synchronized_pool_resourceE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef null) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost9container3pmr13pool_resourceC1EPNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost9container3pmr13pool_resourceC1EPNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resourceC2ERKNS1_12pool_optionsE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost9container3pmr26synchronized_pool_resourceE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef null) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost9container3pmr13pool_resourceC1ERKNS1_12pool_optionsE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost9container3pmr13pool_resourceC1ERKNS1_12pool_optionsE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resourceD2Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost9container3pmr26synchronized_pool_resourceE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost9container3pmr13pool_resourceD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #6 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost9container3pmr13pool_resourceD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resourceD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5boost9container3pmr26synchronized_pool_resourceD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resource7releaseEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5boost9container3pmr13pool_resource7releaseEv(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  resume { ptr, i32 } %i.e
}

declare void @_ZN5boost9container3pmr13pool_resource7releaseEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK5boost9container3pmr26synchronized_pool_resource17upstream_resourceEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef ptr @_ZNK5boost9container3pmr13pool_resource17upstream_resourceEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret ptr %i.b
}

declare noundef ptr @_ZNK5boost9container3pmr13pool_resource17upstream_resourceEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK5boost9container3pmr26synchronized_pool_resource7optionsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call { i64, i64 } @_ZNK5boost9container3pmr13pool_resource7optionsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret { i64, i64 } %i.b
}

declare { i64, i64 } @_ZNK5boost9container3pmr13pool_resource7optionsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5boost9container3pmr26synchronized_pool_resource11do_allocateEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = invoke noundef ptr @_ZN5boost9container3pmr13pool_resource11do_allocateEmm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %1, i64 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  resume { ptr, i32 } %i.f
}

declare noundef ptr @_ZN5boost9container3pmr13pool_resource11do_allocateEmm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5boost9container3pmr26synchronized_pool_resource13do_deallocateEPvmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5boost9container3pmr13pool_resource13do_deallocateEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef %1, i64 noundef %2, i64 noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #6 ; 0 uses
  resume { ptr, i32 } %i.e
}

declare void @_ZN5boost9container3pmr13pool_resource13do_deallocateEPvmm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK5boost9container3pmr26synchronized_pool_resource11do_is_equalERKNS1_15memory_resourceE(ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(104) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(8) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5boost9container3pmr26synchronized_pool_resource10pool_countEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef i64 @_ZNK5boost9container3pmr13pool_resource10pool_countEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret i64 %i.b
}

declare noundef i64 @_ZNK5boost9container3pmr13pool_resource10pool_countEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5boost9container3pmr26synchronized_pool_resource10pool_indexEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef i64 @_ZNK5boost9container3pmr13pool_resource10pool_indexEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %1)
  ret i64 %i.b
}

declare noundef i64 @_ZNK5boost9container3pmr13pool_resource10pool_indexEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5boost9container3pmr26synchronized_pool_resource26pool_next_blocks_per_chunkEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef i64 @_ZNK5boost9container3pmr13pool_resource26pool_next_blocks_per_chunkEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %1)
  ret i64 %i.b
}

declare noundef i64 @_ZNK5boost9container3pmr13pool_resource26pool_next_blocks_per_chunkEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5boost9container3pmr26synchronized_pool_resource10pool_blockEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef i64 @_ZNK5boost9container3pmr13pool_resource10pool_blockEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %1)
  ret i64 %i.b
}

declare noundef i64 @_ZNK5boost9container3pmr13pool_resource10pool_blockEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5boost9container3pmr26synchronized_pool_resource18pool_cached_blocksEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef i64 @_ZNK5boost9container3pmr13pool_resource18pool_cached_blocksEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %1)
  ret i64 %i.b
}

declare noundef i64 @_ZNK5boost9container3pmr13pool_resource18pool_cached_blocksEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
end_hunk_0
