Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/incremental-marking-schedule?download=true
inline.NumInlined: 72
inline.NumDeleted: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.v8::base::TimeDelta" = type { i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.heap::base::IncrementalMarkingSchedule::StepInfo" = type { i64, i64, i64, i64, %"class.v8::base::TimeDelta" }

$_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE = comdat any

$_ZN4heap4base26IncrementalMarkingSchedule38kEphemeronPairsFlushingRatioIncrementsE = comdat any

@_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE = linkonce_odr hidden constant %"class.v8::base::TimeDelta" { i64 500000 }, comdat, align 8
@_ZN4heap4base26IncrementalMarkingSchedule38kEphemeronPairsFlushingRatioIncrementsE = weak_odr hidden local_unnamed_addr constant double 2.500000e-01, comdat, align 8

@_ZN4heap4base26IncrementalMarkingScheduleC1Emb = hidden unnamed_addr alias void (ptr, i64, i1), ptr @_ZN4heap4base26IncrementalMarkingScheduleC2Emb

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingSchedule6CreateEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #8 ; 8 uses
  %i.b = zext i1 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 32, i1 false)
  store double 2.500000e-01, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  store i8 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br i1 %1, label %bb.b, label %_ZN4heap4base26IncrementalMarkingScheduleC2Emb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 1000, ptr %i.h, align 8
  store i8 1, ptr %i.f, align 8
  br label %_ZN4heap4base26IncrementalMarkingScheduleC2Emb.exit

_ZN4heap4base26IncrementalMarkingScheduleC2Emb.exit: ; preds = %bb.a, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingSchedule38CreateWithMarkedBytesPerStepForTestingEmb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #8 ; 9 uses
  %i.b = zext i1 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 32, i1 false)
  store double 2.500000e-01, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br i1 %2, label %bb.b, label %_ZN4heap4base26IncrementalMarkingScheduleC2Emb.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 1000, ptr %i.i, align 8
  store i8 1, ptr %i.g, align 8
  br label %_ZN4heap4base26IncrementalMarkingScheduleC2Emb.exit

_ZN4heap4base26IncrementalMarkingScheduleC2Emb.exit: ; preds = %bb.a, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingScheduleC2Emb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((0, 89), (104, 105), (112, 128)) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store double 2.500000e-01, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 1000, ptr %i.h, align 8
  store i8 1, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingSchedule29NotifyIncrementalMarkingStartEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #9
  store i64 %i.c, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingSchedule28NotifyConcurrentMarkingStartEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #9
  store i64 %i.d, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingSchedule27AddMutatorThreadMarkedBytesEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingSchedule26AddConcurrentlyMarkedBytesEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = atomicrmw add ptr %i.a, i64 %1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK4heap4base26IncrementalMarkingSchedule21GetOverallMarkedBytesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, %i.b
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK4heap4base26IncrementalMarkingSchedule26GetConcurrentlyMarkedBytesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4heap4base26IncrementalMarkingSchedule31GetElapsedTimeSinceMarkingStartEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, label %bb.c

_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit: ; preds = %bb.b
  store i64 1000, ptr %i.a, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #9
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.i = sub nsw i64 %i.h, %.sroa.0.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, %bb.c, %bb.d
  %.sroa.01.0 = phi i64 [ %.sroa.01.0.copyload, %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit ], [ %.sroa.01.0.copyload, %bb.c ], [ %i.i, %bb.d ]
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK4heap4base26IncrementalMarkingSchedule18GetCurrentStepInfoEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.heap::base::IncrementalMarkingSchedule::StepInfo") align 8 captures(none) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4heap4base26IncrementalMarkingSchedule30GetNextIncrementalStepDurationEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((24, 32)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %i.b, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit.i, label %bb.c

_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit.i: ; preds = %bb.b
  store i64 1000, ptr %i.b, align 8
  br label %_ZN4heap4base26IncrementalMarkingSchedule31GetElapsedTimeSinceMarkingStartEv.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 8
  br label %_ZN4heap4base26IncrementalMarkingSchedule31GetElapsedTimeSinceMarkingStartEv.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #9
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.j = sub nsw i64 %i.i, %.sroa.0.0.copyload.i
  br label %_ZN4heap4base26IncrementalMarkingSchedule31GetElapsedTimeSinceMarkingStartEv.exit

_ZN4heap4base26IncrementalMarkingSchedule31GetElapsedTimeSinceMarkingStartEv.exit: ; preds = %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit.i, %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload.i, %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit.i ], [ %.sroa.01.0.copyload.i, %bb.c ], [ %i.j, %bb.d ]
  store i64 %.sroa.01.0.i, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, %i.q                       ; 4 uses
  %i.u = uitofp i64 %1 to double
  %i.v = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %i.w = fmul double %i.v, %i.u
  %i.x = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE) #9
  %i.y = fdiv double %i.w, %i.x
  %i.z = call double @llvm.ceil.f64(double %i.y)
  %i.aa = fptoui double %i.z to i64               ; 3 uses
  %i.ab = load i64, ptr %i.p, align 8
  %i.ac = load atomic i64, ptr %i.r monotonic, align 8
  %.sroa.7.32.copyload = load i64, ptr %2, align 8
  store i64 %i.ab, ptr %i.k, align 8
  store i64 %i.ac, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.not = icmp uge i64 %i.t, %i.o
  %i.ad = sub nuw i64 %i.t, %i.o
  %i.ae = icmp ult i64 %i.ad, 65536
  %or.cond = select i1 %.not, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4heap4base26IncrementalMarkingSchedule31GetElapsedTimeSinceMarkingStartEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = call i64 @llvm.umax.i64(i64 %i.ag, i64 65536)
  br label %bb.i

bb.f:                                             ; preds = %_ZN4heap4base26IncrementalMarkingSchedule31GetElapsedTimeSinceMarkingStartEv.exit
  %i.ai = icmp ugt i64 %i.t, %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = sub nuw i64 %i.aa, %i.t
  %i.am = load i64, ptr %i.aj, align 8
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.am, i64 %i.al)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.0 = phi i64 [ %i.ah, %bb.e ], [ %i.ak, %bb.g ], [ %.sroa.speculated, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i64 %.0
}

declare noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN4heap4base26IncrementalMarkingSchedule25ShouldFlushEphemeronPairsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, %i.b
  %i.f = uitofp i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load double, ptr %i.g, align 8           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = uitofp i64 %i.j to double
  %i.l = fmul double %i.h, %i.k
  %i.m = fcmp ule double %i.l, %i.f               ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = fadd double %i.h, 2.500000e-01
  store double %i.n, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4heap4base26IncrementalMarkingSchedule39GetTimeSinceLastConcurrentMarkingUpdateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.c, align 8
  %i.f = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.f, ptr %i.g, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #9
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8
  %i.l = sub nsw i64 %i.k, %.sroa.0.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.03.0 = phi i64 [ 0, %bb.b ], [ %i.l, %bb.d ], [ 0, %bb.c ]
  ret i64 %.sroa.03.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4heap4base26IncrementalMarkingSchedule24SetElapsedTimeForTestingEN2v84base9TimeDeltaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((96, 105)) %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %1, ptr %i.a, align 8
  store i8 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
end_hunk_0
