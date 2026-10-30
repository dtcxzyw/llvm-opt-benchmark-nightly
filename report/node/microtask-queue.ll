Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/microtask-queue?download=true
inline.NumInlined: 467
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr.454" = type { %"struct.std::__uniq_ptr_data.455" }
%"struct.std::__uniq_ptr_data.455" = type { %"class.std::__uniq_ptr_impl.456" }
%"class.std::__uniq_ptr_impl.456" = type { %"class.std::tuple.457" }
%"class.std::tuple.457" = type { %"struct.std::_Tuple_impl.458" }
%"struct.std::_Tuple_impl.458" = type { %"struct.std::_Head_base.461" }
%"struct.std::_Head_base.461" = type { ptr }
%"class.std::optional.475" = type { %"struct.std::_Optional_base.476" }
%"struct.std::_Optional_base.476" = type { %"struct.std::_Optional_payload.478" }
%"struct.std::_Optional_payload.478" = type { %"struct.std::_Optional_payload.base.482", [7 x i8] }
%"struct.std::_Optional_payload.base.482" = type { %"struct.std::_Optional_payload_base.base.481" }
%"struct.std::_Optional_payload_base.base.481" = type { %"union.std::_Optional_payload_base<v8::MicrotasksScope>::_Storage", i8 }
%"union.std::_Optional_payload_base<v8::MicrotasksScope>::_Storage" = type { %"class.v8::MicrotasksScope" }
%"class.v8::MicrotasksScope" = type <{ ptr, ptr, i8, [7 x i8] }>
%"class.std::unique_ptr.504" = type { %"struct.std::__uniq_ptr_data.505" }
%"struct.std::__uniq_ptr_data.505" = type { %"class.std::__uniq_ptr_impl.506" }
%"class.std::__uniq_ptr_impl.506" = type { %"class.std::tuple.507" }
%"class.std::tuple.507" = type { %"struct.std::_Tuple_impl.508" }
%"struct.std::_Tuple_impl.508" = type { %"struct.std::_Head_base.511" }
%"struct.std::_Head_base.511" = type { ptr }
%"class.v8::Isolate::SuppressMicrotaskExecutionScope" = type { ptr, ptr, i64 }
%"struct.std::pair" = type { ptr, ptr }

$_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEaSEOS9_ = comdat any

$_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5resetEv = comdat any

$_ZN2v88internal14MicrotaskQueue17PerformCheckpointEPNS_7IsolateE = comdat any

$_ZNK2v88internal14MicrotaskQueue19IsRunningMicrotasksEv = comdat any

$_ZNK2v88internal14MicrotaskQueue23GetMicrotasksScopeDepthEv = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIKS9_EEET_SJ_SJ_T0_St26random_access_iterator_tag = comdat any

@_ZN2v88internal14MicrotaskQueue17kRingBufferOffsetE = hidden local_unnamed_addr constant i64 32, align 8
@_ZN2v88internal14MicrotaskQueue15kCapacityOffsetE = hidden local_unnamed_addr constant i64 16, align 8
@_ZN2v88internal14MicrotaskQueue11kSizeOffsetE = hidden local_unnamed_addr constant i64 8, align 8
@_ZN2v88internal14MicrotaskQueue12kStartOffsetE = hidden local_unnamed_addr constant i64 24, align 8
@_ZN2v88internal14MicrotaskQueue29kFinishedMicrotaskCountOffsetE = hidden local_unnamed_addr constant i64 40, align 8
@_ZN2v88internal14MicrotaskQueue16kMinimumCapacityE = hidden local_unnamed_addr constant i64 8, align 8
@_ZTVN2v88internal14MicrotaskQueueE = hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal14MicrotaskQueueD2Ev, ptr @_ZN2v88internal14MicrotaskQueueD0Ev, ptr @_ZN2v88internal14MicrotaskQueue16EnqueueMicrotaskEPNS_7IsolateENS_5LocalINS_8FunctionEEE, ptr @_ZN2v88internal14MicrotaskQueue16EnqueueMicrotaskEPNS_7IsolateEPFvPvES4_, ptr @_ZN2v88internal14MicrotaskQueue30AddMicrotasksCompletedCallbackEPFvPNS_7IsolateEPvES4_, ptr @_ZN2v88internal14MicrotaskQueue33RemoveMicrotasksCompletedCallbackEPFvPNS_7IsolateEPvES4_, ptr @_ZN2v88internal14MicrotaskQueue17PerformCheckpointEPNS_7IsolateE, ptr @_ZNK2v88internal14MicrotaskQueue19IsRunningMicrotasksEv, ptr @_ZNK2v88internal14MicrotaskQueue23GetMicrotasksScopeDepthEv] }, align 8
@_ZZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateEE28trace_event_unique_atomic182 = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"v8.execute\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"RunMicrotasks\00", align 1
@_ZZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateEE28trace_event_unique_atomic190 = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"microtask_count\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN2v88internal14MicrotaskQueueC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal14MicrotaskQueueC2Ev
@_ZN2v88internal14MicrotaskQueueD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal14MicrotaskQueueD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue26SetUpDefaultMicrotaskQueueEPNS0_7IsolateE(ptr nofree noundef writeonly captures(none) initializes((59816, 59824)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #12 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal14MicrotaskQueueE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  store i32 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i8 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 77
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 59816
  store ptr %i.a, ptr %i.j, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue3NewEPNS0_7IsolateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.454") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #12 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal14MicrotaskQueueE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  store i32 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i8 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 77
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 0, ptr %i.g, align 8
  store ptr %i.a, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 59816
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.k, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.a, ptr %i.q, align 8
  store ptr %i.a, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal14MicrotaskQueueC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 78), (80, 104), (128, 129)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal14MicrotaskQueueE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i32 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueueD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(136) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.k, align 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #13
  br label %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #13
  br label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueueD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.k, align 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #13
  br label %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal14MicrotaskQueueD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #13
  br label %_ZN2v88internal14MicrotaskQueueD2Ev.exit

_ZN2v88internal14MicrotaskQueueD2Ev.exit:         ; preds = %_ZNSt14_Optional_baseISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EELb0ELb0EED2Ev.exit.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal14MicrotaskQueue20CallEnqueueMicrotaskEPNS0_7IsolateElm(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8
  br label %_ZN2v88internal14MicrotaskQueue16EnqueueMicrotaskENS0_6TaggedINS0_9MicrotaskEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %i.c, 1                          ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.g, i64 8) ; 3 uses
  %i.h = icmp sgt i64 %i.g, 2305843009213693951
  %i.i = shl nuw i64 %.sroa.speculated.i, 3
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12 ; 5 uses
  %i.l = load i64, ptr %i.b, align 8              ; 6 uses
  %i.m = icmp sgt i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = load i64, ptr %i.d, align 8              ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.s = icmp eq i64 %i.l, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.t = icmp eq ptr %i.o, null
  br i1 %i.t, label %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i, label %._crit_edge.thread.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.af, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.u = add nsw i64 %.09.i.i, %i.q
  %i.v = srem i64 %i.u, %i.r
  %i.w = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.09.i.i
  store i64 %i.x, ptr %i.y, align 8
  %i.z = or disjoint i64 %.09.i.i, 1              ; 2 uses
  %i.aa = add nsw i64 %i.z, %i.q
  %i.ab = srem i64 %i.aa, %i.r
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.z
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.i.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !0

._crit_edge.thread.i.i.loopexit.unr-lcssa:        ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.af, %._crit_edge.thread.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.ag = add nsw i64 %.09.i.i.epil.init, %i.q
  %i.ah = srem i64 %i.ag, %i.r
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.09.i.i.epil.init
  store i64 %i.aj, ptr %i.ak, align 8
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.epil.preheader, %._crit_edge.thread.i.i.loopexit.unr-lcssa, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #13
  %.pre4.pre.i = load i64, ptr %i.b, align 8
  br label %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i

_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i: ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.pre4.i = phi i64 [ %i.l, %._crit_edge.i.i ], [ %.pre4.pre.i, %._crit_edge.thread.i.i ]
  store ptr %i.k, ptr %i.n, align 8
  store i64 %.sroa.speculated.i, ptr %i.d, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.al, align 8
  br label %_ZN2v88internal14MicrotaskQueue16EnqueueMicrotaskENS0_6TaggedINS0_9MicrotaskEEE.exit

_ZN2v88internal14MicrotaskQueue16EnqueueMicrotaskENS0_6TaggedINS0_9MicrotaskEEE.exit: ; preds = %._crit_edge.i, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i
  %i.am = phi i64 [ %i.e, %._crit_edge.i ], [ %.sroa.speculated.i, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.an = phi i64 [ %i.c, %._crit_edge.i ], [ %.pre4.i, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.ao = phi i64 [ %.pre3.i, %._crit_edge.i ], [ 0, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.ap = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.k, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.aq = add nsw i64 %i.ao, %i.an
  %i.ar = srem i64 %i.aq, %i.am
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ar
  store i64 %2, ptr %i.as, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add nsw i64 %i.at, 1
  store i64 %i.au, ptr %i.b, align 8
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue16EnqueueMicrotaskENS0_6TaggedINS0_9MicrotaskEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre3 = load i64, ptr %.phi.trans.insert2, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.b, 1                          ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.f, i64 8) ; 3 uses
  %i.g = icmp sgt i64 %i.f, 2305843009213693951
  %i.h = shl nuw i64 %.sroa.speculated, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #12 ; 5 uses
  %i.k = load i64, ptr %i.a, align 8              ; 6 uses
  %i.l = icmp sgt i64 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = load i64, ptr %i.c, align 8              ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.r = icmp eq i64 %i.k, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.k, 9223372036854775806
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %i.s = icmp eq ptr %i.n, null
  br i1 %i.s, label %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit, label %._crit_edge.thread.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ae, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.t = add nsw i64 %.09.i, %i.p
  %i.u = srem i64 %i.t, %i.q
  %i.v = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.u
end_hunk_0
begin_hunk_1_@_ZN2v88internal14MicrotaskQueue16EnqueueMicrotaskEPNS_7IsolateEPFvPvES4_:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i64, ptr %i.bo, align 8            ; 3 uses
  %i.bq = load i64, ptr %i.bc, align 8            ; 3 uses
  %xtraiter = and i64 %i.bk, 1
  %i.br = icmp eq i64 %i.bk, 1
  br i1 %i.br, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.bk, 9223372036854775806
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.bs = icmp eq ptr %i.bn, null
  br i1 %i.bs, label %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i, label %._crit_edge.thread.i.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ce, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.bt = add nsw i64 %.09.i.i, %i.bp
  %i.bu = srem i64 %i.bt, %i.bq
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.09.i.i
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = or disjoint i64 %.09.i.i, 1             ; 2 uses
  %i.bz = add nsw i64 %i.by, %i.bp
  %i.ca = srem i64 %i.bz, %i.bq
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.by
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !0

._crit_edge.thread.i.i.loopexit.unr-lcssa:        ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ce, %._crit_edge.thread.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod24 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.cf = add nsw i64 %.09.i.i.epil.init, %i.bp
  %i.cg = srem i64 %i.cf, %i.bq
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.09.i.i.epil.init
  store i64 %i.ci, ptr %i.cj, align 8
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.epil.preheader, %._crit_edge.thread.i.i.loopexit.unr-lcssa, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.bn) #13
  %.pre4.pre.i = load i64, ptr %i.ba, align 8
  br label %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i

_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i: ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.pre4.i = phi i64 [ %i.bk, %._crit_edge.i.i ], [ %.pre4.pre.i, %._crit_edge.thread.i.i ]
  store ptr %i.bj, ptr %i.bm, align 8
  store i64 %.sroa.speculated.i, ptr %i.bc, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ck, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i, %._crit_edge.i
  %i.cl = phi i64 [ %i.bd, %._crit_edge.i ], [ %.sroa.speculated.i, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.cm = phi i64 [ %i.bb, %._crit_edge.i ], [ %.pre4.i, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.cn = phi i64 [ %.pre3.i, %._crit_edge.i ], [ 0, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.co = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bj, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit.i ]
  %i.cp = add nsw i64 %i.cn, %i.cm
  %i.cq = srem i64 %i.cp, %i.cl
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cq
  store i64 %i.az, ptr %i.cr, align 8
  %i.cs = load i64, ptr %i.ba, align 8
  %i.ct = add nsw i64 %i.cs, 1
  store i64 %i.ct, ptr %i.ba, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.cu = load i32, ptr %i.e, align 8
  %i.cv = add nsw i32 %i.cu, -1
  store i32 %i.cv, ptr %i.e, align 8
  %i.cw = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.cw, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %1) #14
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.i, %bb.h
  ret void
}

declare ptr @_ZN2v88internal7Factory15NewCallbackTaskENS0_12DirectHandleINS0_7ForeignEEES4_(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue12ResizeBufferEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  %i.b = shl nuw i64 %1, 3
  %i.c = select i1 %i.a, i64 -1, i64 %i.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp sgt i64 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.n = icmp eq i64 %i.f, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, 9223372036854775806
  br label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.o = icmp eq ptr %i.i, null
  br i1 %i.o, label %bb.c, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.09 = phi i64 [ 0, %.lr.ph.new ], [ %i.aa, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.p = add nsw i64 %i.k, %.09
  %i.q = srem i64 %i.p, %i.m
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09
  store i64 %i.s, ptr %i.t, align 8
  %i.u = or disjoint i64 %.09, 1                  ; 2 uses
  %i.v = add nsw i64 %i.k, %i.u
  %i.w = srem i64 %i.v, %i.m
  %i.x = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.u
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %.09, 2                 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph
  %.09.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aa, %._crit_edge.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ab = add nsw i64 %i.k, %.09.epil.init
  %i.ac = srem i64 %i.ab, %i.m
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.epil.init
  store i64 %i.ae, ptr %i.af, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.epil.preheader, %._crit_edge.thread.loopexit.unr-lcssa, %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #13
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue25PerformCheckpointInternalEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.475", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZNSt8optionalIN2v815MicrotasksScopeEE7emplaceIJRPNS0_7IsolateEPNS0_8internal14MicrotaskQueueENS1_4TypeEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOSC_.exit, label %bb.b

_ZNSt8optionalIN2v815MicrotasksScopeEE7emplaceIJRPNS0_7IsolateEPNS0_8internal14MicrotaskQueueENS1_4TypeEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOSC_.exit: ; preds = %bb.a
  call void @_ZN2v815MicrotasksScopeC1EPNS_7IsolateEPNS_14MicrotaskQueueENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef 1) #14
  store i8 1, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalIN2v815MicrotasksScopeEE7emplaceIJRPNS0_7IsolateEPNS0_8internal14MicrotaskQueueENS1_4TypeEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOSC_.exit, %bb.a
  %i.e = call noundef i32 @_ZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) ; 0 uses
  call void @_ZN2v88internal7Isolate16ClearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #14
  %i.f = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNSt14_Optional_baseIN2v815MicrotasksScopeELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 8
  call void @_ZN2v815MicrotasksScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(32) %2) #14
  br label %_ZNSt14_Optional_baseIN2v815MicrotasksScopeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v815MicrotasksScopeELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(136) initializes((76, 77)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_ptr.504"], align 16 ; 6 uses
  %3 = alloca [2 x %"class.std::unique_ptr.504"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.v8::Isolate::SuppressMicrotaskExecutionScope", align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i8 1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v87Isolate31SuppressMicrotaskExecutionScopeC1EPS0_PNS_14MicrotaskQueueE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %1, ptr noundef nonnull %0) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  store i8 1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  store i8 0, ptr %i.g, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i8, ptr %i.m, align 8, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit.i, label %_ZN2v88internal14MicrotaskQueue11OnCompletedEPNS0_7IsolateE.exit, !prof !10

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.06.09.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.p(ptr noundef %1, ptr noundef %i.r) #14, !inline_history !14
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %._crit_edge.i, label %.lr.ph.i

_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit.i: ; preds = %._crit_edge.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEaSEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #14 ; 0 uses
  call void @_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5resetEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #14
  br label %_ZN2v88internal14MicrotaskQueue11OnCompletedEPNS0_7IsolateE.exit

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 8
  %i.ag = icmp eq ptr %i.z, %i.ab
  br i1 %i.ag, label %bb.d, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.ah = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #14
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.ah, %bb.d ], [ %i.z, %bb.c ] ; 3 uses
  %i.ai = ptrtoint ptr %.0.i.i to i64
  %i.aj = add i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ak, ptr %i.y, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %.0.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.am = load i64, ptr %i.al, align 8
  store i64 %i.am, ptr %i.af, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 58816
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = load atomic volatile i64, ptr @_ZZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateEE28trace_event_unique_atomic182 acquire, align 8 ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %.not33 = icmp eq i64 %i.ar, 0
  br i1 %.not33, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.at = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #14 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str) #14 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  store atomic volatile i64 %i.ay, ptr @_ZZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateEE28trace_event_unique_atomic182 release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.029 = phi ptr [ %i.as, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.ax, %bb.e ] ; 2 uses
  %i.az = load atomic volatile i8, ptr %.029 monotonic, align 1
  %i.ba = and i8 %i.az, 5
  %.not34 = icmp eq i8 %i.ba, 0
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bb = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #14 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef signext 66, ptr noundef nonnull %.029, ptr noundef nonnull @.str.1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, i32 noundef 0) #14, !inline_history !12 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.not.i41 = icmp eq ptr %i.bh, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.g
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #14, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.bl = load ptr, ptr %2, align 16              ; 3 uses
  %.not.i41.1 = icmp eq ptr %i.bl, null
  br i1 %.not.i41.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #14, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.f
  %i.bp = call ptr @_ZN2v88internal9Execution16TryRunMicrotasksEPNS0_7IsolateEPNS0_14MicrotaskQueueE(ptr noundef nonnull %1, ptr noundef nonnull %0) #14 ; 0 uses
  %i.bq = load i64, ptr %i.w, align 8
  %i.br = sub nsw i64 %i.bq, %i.x                 ; 2 uses
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = load atomic volatile i64, ptr @_ZZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateEE28trace_event_unique_atomic190 acquire, align 8 ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr
  %.not35 = icmp eq i64 %i.bt, 0
  br i1 %.not35, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #14 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str) #14 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  store atomic volatile i64 %i.ca, ptr @_ZZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateEE28trace_event_unique_atomic190 release, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.028 = phi ptr [ %i.bu, %bb.h ], [ %i.bz, %bb.i ] ; 2 uses
  %i.cb = load atomic volatile i8, ptr %.028 monotonic, align 1
  %i.cc = and i8 %i.cb, 5
  %.not36 = icmp eq i8 %i.cc, 0
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i8 3, ptr %i.b, align 1
  %sext = shl i64 %i.br, 32
  %i.cd = ashr exact i64 %sext, 32
  store i64 %i.cd, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ce = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #14 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef signext 69, ptr noundef nonnull %.028, ptr noundef nonnull @.str.1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %3, i32 noundef 0) #14, !inline_history !12 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %.not.i42 = icmp eq ptr %i.ck, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43: ; preds = %bb.k
end_hunk_1
begin_hunk_2_@_ZN2v88internal14MicrotaskQueue11OnCompletedEPNS0_7IsolateE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store i8 0, ptr %i.a, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i8, ptr %i.g, align 8, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit, label %bb.b, !prof !10

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.09 = phi ptr [ %i.m, %.lr.ph ], [ %i.c, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.06.09, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.j(ptr noundef %1, ptr noundef %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %._crit_edge, label %.lr.ph

_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit: ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEaSEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #14 ; 0 uses
  tail call void @_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5resetEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o) #14
  br label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit, %._crit_edge
  ret void
}

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #5

declare ptr @_ZN2v88internal9Execution16TryRunMicrotasksEPNS0_7IsolateEPNS0_14MicrotaskQueueE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal7Isolate32OnTerminationDuringRunMicrotasksEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2v87Isolate31SuppressMicrotaskExecutionScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue17IterateMicrotasksEPNS0_11RootVisitorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add nsw i64 %i.f, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.sroa.speculated15 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %i.i)
  %i.l = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.sroa.speculated15
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 11, ptr noundef null, i64 %i.h, i64 %i.m) #14
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = load i64, ptr %i.e, align 8
  %i.t = load i64, ptr %i.a, align 8
  %i.u = add nsw i64 %i.t, %i.s
  %i.v = load i64, ptr %i.j, align 8
  %i.w = sub i64 %i.u, %i.v
  %.sroa.speculated8 = tail call i64 @llvm.smax.i64(i64 %i.w, i64 0)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.speculated8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 11, ptr noundef null, i64 %i.r, i64 %i.y) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp slt i64 %i.ad, 9
  br i1 %i.ae, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.af = load i64, ptr %i.a, align 8
  %i.ag = shl nsw i64 %i.af, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %storemerge = phi i64 [ %i.ai, %bb.d ], [ %i.ad, %.preheader ] ; 4 uses
  %i.ah = icmp sgt i64 %storemerge, %i.ag
  %i.ai = lshr i64 %storemerge, 1
  br i1 %i.ah, label %bb.d, label %bb.e, !llvm.loop !15

bb.e:                                             ; preds = %bb.d
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %storemerge, i64 8) ; 3 uses
  %i.aj = icmp samesign ult i64 %.sroa.speculated, %i.ad
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i64 %storemerge, 2305843009213693951
  %i.al = shl nuw i64 %.sroa.speculated, 3
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #12 ; 4 uses
  %i.ao = load i64, ptr %i.a, align 8             ; 5 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 5 uses
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = load i64, ptr %i.ac, align 8            ; 3 uses
  %xtraiter = and i64 %i.ao, 1
  %i.av = icmp eq i64 %i.ao, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ao, 9223372036854775806
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %i.aw = icmp eq ptr %i.ar, null
  br i1 %i.aw, label %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit, label %._crit_edge.thread.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bi, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.ax = add nsw i64 %.09.i, %i.at
  %i.ay = srem i64 %i.ax, %i.au
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.09.i
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = or disjoint i64 %.09.i, 1               ; 2 uses
  %i.bd = add nsw i64 %i.bc, %i.at
  %i.be = srem i64 %i.bd, %i.au
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bc
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !0

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %.lr.ph.i
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bi, %._crit_edge.thread.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod22 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.bj = add nsw i64 %.09.i.epil.init, %i.at
  %i.bk = srem i64 %i.bj, %i.au
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.09.i.epil.init
  store i64 %i.bm, ptr %i.bn, align 8
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.epil.preheader, %._crit_edge.thread.i.loopexit.unr-lcssa, %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #13
  br label %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit

_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  store ptr %i.an, ptr %i.aq, align 8
  store i64 %.sroa.speculated, ptr %i.ac, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bo, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN2v88internal14MicrotaskQueue12ResizeBufferEl.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue30AddMicrotasksCompletedCallbackEPFvPNS_7IsolateEPvES4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit, label %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.o = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #12
  %.pre = load ptr, ptr %i.a, align 8
  %.pre10 = load ptr, ptr %i.i, align 8
  br label %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.q = phi ptr [ %.pre10, %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.j, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i ] ; 2 uses
  %i.r = phi ptr [ %.pre, %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.k, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i ] ; 2 uses
  %i.s = phi ptr [ %i.p, %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i ] ; 5 uses
  store ptr %i.s, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.u, ptr %i.v, align 8
  %i.w = icmp eq ptr %i.r, %i.q
  br i1 %i.w, label %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.q
  br i1 %i.z, label %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8
  store i8 1, ptr %i.f, align 8
  br label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit

_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit: ; preds = %bb.b, %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.e, %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %1, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %.0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIKS9_EEET_SJ_SJ_T0_St26random_access_iterator_tag(ptr %i.ab, ptr %i.ad, ptr nonnull align 8 dereferenceable(16) %3) ; 5 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE9push_backERKS7_.exit

bb.e:                                             ; preds = %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i = icmp eq ptr %i.ae, %i.ai
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ac, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ak, ptr %i.ac, align 8
  br label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE9push_backERKS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %.0, align 8              ; 5 uses
  %i.am = ptrtoint ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %bb.h, label %_ZNKSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aq = ashr exact i64 %i.ao, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 576460752303423487)
  %i.au = select i1 %i.as, i64 576460752303423487, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #12 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.al, %i.ae
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.aw, %_ZNKSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.al, %_ZNKSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !20
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ae
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aw, %_ZNKSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.bb = load ptr, ptr %i.ah, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bd) #13
  br label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.aw, ptr %.0, align 8
  store ptr %i.ba, ptr %i.ac, align 8
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.be, ptr %i.ah, align 8
  br label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE9push_backERKS7_.exit

_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.f, %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MicrotaskQueue33RemoveMicrotasksCompletedCallbackEPFvPNS_7IsolateEPvES4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit, label %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.o = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #12
  %.pre = load ptr, ptr %i.a, align 8
  %.pre11 = load ptr, ptr %i.i, align 8
  br label %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.q = phi ptr [ %.pre11, %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.j, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i ] ; 2 uses
  %i.r = phi ptr [ %.pre, %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.k, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i ] ; 2 uses
  %i.s = phi ptr [ %i.p, %_ZNSt15__new_allocatorISt4pairIPFvPN2v87IsolateEPvES4_EE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit.i ] ; 5 uses
  store ptr %i.s, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.u, ptr %i.v, align 8
  %i.w = icmp eq ptr %i.r, %i.q
  br i1 %i.w, label %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.q
  br i1 %i.z, label %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt12_Vector_baseISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8
  store i8 1, ptr %i.f, align 8
  br label %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit

_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit: ; preds = %bb.b, %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.e, %_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE7emplaceIJRSA_EEENSt9enable_ifIX18is_constructible_vISA_DpT_EESD_E4typeEDpOSF_.exit ], [ %i.e, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %1, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %.0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIKS9_EEET_SJ_SJ_T0_St26random_access_iterator_tag(ptr %i.ab, ptr %i.ad, ptr nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit
  %i.ah = load ptr, ptr %.0, align 8              ; 2 uses
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 4 uses
  %i.an = icmp eq ptr %i.am, %i.af
  br i1 %i.an, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4                 ; 5 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EE.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.at = load ptr, ptr %.0910.i.i.i.i.i.i.i.prol, align 8
  store ptr %i.at, ptr %.0811.i.i.i.i.i.i.i.prol, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.prol, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.prol, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.az = add nsw i64 %.012.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !21

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.unr = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.i.unr = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ba = icmp ult i64 %i.ar, 4
  br i1 %i.ba, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.bb = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr %i.bb, ptr %.0811.i.i.i.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16
  %i.bh = load ptr, ptr %i.bf, align 8
  store ptr %i.bh, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bl, align 8
  store ptr %i.bn, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 40
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 48
  %i.bt = load ptr, ptr %i.br, align 8
  store ptr %i.bt, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 56
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 64
  %i.bz = add nsw i64 %.012.i.i.i.i.i.i.i, -4
  %i.ca = icmp sgt i64 %.012.i.i.i.i.i.i.i, 4
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.loopexit.i.i, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  %.pre.i.i = load ptr, ptr %i.ac, align 8
  br label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EE.exit

_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EE.exit: ; preds = %bb.e, %bb.f, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.loopexit.i.i
  %i.cb = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.loopexit.i.i ], [ %i.af, %bb.f ], [ %i.af, %bb.e ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  store ptr %i.cc, ptr %i.ac, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNRSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5valueEv.exit, %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS7_S9_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EEaSEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  store ptr %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.c, align 8
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE14_M_move_assignEOS9_St17integral_constantIbLb1EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.l) #13
  br label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE14_M_move_assignEOS9_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPvES4_ESaIS7_EE14_M_move_assignEOS9_St17integral_constantIbLb1EE.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8optionalISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EEE5resetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #13
  br label %_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implISt6vectorISt4pairIPFvPN2v87IsolateEPvES5_ESaIS8_EESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal14MicrotaskQueue3getEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add nsw i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = srem i64 %i.e, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  ret i64 %i.j
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14MicrotaskQueue17PerformCheckpointEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.475", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i32, ptr %i.d, align 8
  %.not.i = icmp eq i32 %i.e, 0
  %not. = xor i1 %i.c, true
  %or.cond.not.i = select i1 %not., i1 %.not.i, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4
  %.not3.i = icmp eq i32 %i.g, 0
  %or.cond = select i1 %or.cond.not.i, i1 %.not3.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK2v88internal14MicrotaskQueue22ShouldPerfomCheckpointEv.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %_ZNSt8optionalIN2v815MicrotasksScopeEE7emplaceIJRPNS0_7IsolateEPNS0_8internal14MicrotaskQueueENS1_4TypeEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOSC_.exit.i, label %bb.c

_ZNSt8optionalIN2v815MicrotasksScopeEE7emplaceIJRPNS0_7IsolateEPNS0_8internal14MicrotaskQueueENS1_4TypeEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOSC_.exit.i: ; preds = %bb.b
  call void @_ZN2v815MicrotasksScopeC1EPNS_7IsolateEPNS_14MicrotaskQueueENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef 1) #14
  store i8 1, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8optionalIN2v815MicrotasksScopeEE7emplaceIJRPNS0_7IsolateEPNS0_8internal14MicrotaskQueueENS1_4TypeEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOSC_.exit.i, %bb.b
  %i.l = call noundef i32 @_ZN2v88internal14MicrotaskQueue13RunMicrotasksEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) ; 0 uses
  call void @_ZN2v88internal7Isolate16ClearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #14
  %i.m = load i8, ptr %i.h, align 8, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN2v88internal14MicrotaskQueue25PerformCheckpointInternalEPNS_7IsolateE.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 8
  call void @_ZN2v815MicrotasksScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(32) %2) #14
  br label %_ZN2v88internal14MicrotaskQueue25PerformCheckpointInternalEPNS_7IsolateE.exit

_ZN2v88internal14MicrotaskQueue25PerformCheckpointInternalEPNS_7IsolateE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZNK2v88internal14MicrotaskQueue22ShouldPerfomCheckpointEv.exit.thread

_ZNK2v88internal14MicrotaskQueue22ShouldPerfomCheckpointEv.exit.thread: ; preds = %bb.a, %_ZN2v88internal14MicrotaskQueue25PerformCheckpointInternalEPNS_7IsolateE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal14MicrotaskQueue19IsRunningMicrotasksEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal14MicrotaskQueue23GetMicrotasksScopeDepthEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2v815MicrotasksScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17)) unnamed_addr #6

declare void @_ZN2v815MicrotasksScopeC1EPNS_7IsolateEPNS_14MicrotaskQueueENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPvES6_ESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIKS9_EEET_SJ_SJ_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 6                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = and i64 %i.c, -64
  %scevgep = getelementptr i8, ptr %0, i64 %i.i   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.d, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %bb.f ] ; 13 uses
  %i.j = load ptr, ptr %.sroa.032.051, align 8
  %i.k = icmp eq ptr %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, %i.h
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.h
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, %i.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, %i.h
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %i.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, %i.h
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 64
  %i.al = add nsw i64 %.052, -1
  %i.am = icmp sgt i64 %.052, 1
  br i1 %i.am, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre62 = ptrtoint ptr %scevgep to i64
  %.pre63 = sub i64 %i.a, %.pre62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi64 = phi i64 [ %.pre63, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.an = ashr exact i64 %.pre-phi64, 4
  switch i64 %i.an, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge58
  ]

._crit_edge._crit_edge58:                         ; preds = %._crit_edge
  %.pre59 = load ptr, ptr %2, align 8
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre61 = load ptr, ptr %.phi.trans.insert60, align 8
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %2, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre57 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %.sroa.032.0.lcssa, align 8
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  %i.aw = select i1 %i.aq, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ay = phi ptr [ %i.au, %bb.h ], [ %.pre57, %._crit_edge._crit_edge ] ; 2 uses
  %i.az = phi ptr [ %i.ap, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.ax, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.ba = load ptr, ptr %.sroa.032.1, align 8
  %i.bb = icmp eq ptr %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, %i.ay
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge58, %bb.j
  %i.bh = phi ptr [ %i.ay, %bb.j ], [ %.pre61, %._crit_edge._crit_edge58 ]
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre59, %._crit_edge._crit_edge58 ]
  %.sroa.032.2 = phi ptr [ %i.bg, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge58 ] ; 3 uses
  %i.bj = load ptr, ptr %.sroa.032.2, align 8
  %i.bk = icmp eq ptr %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bm, %i.bh
  %i.bo = select i1 %i.bk, i1 %i.bn, i1 false
  %spec.select = select i1 %i.bo, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.br, %.loopexit.loopexit.split.loop.exit67 ], [ %i.bp, %.loopexit.loopexit.split.loop.exit ], [ %i.bq, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

end_hunk_2
