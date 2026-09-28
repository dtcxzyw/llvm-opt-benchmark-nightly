Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/alloc?download=true
inline.NumInlined: 29
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::utils::(anonymous namespace)::AllocatorStatistics" = type { %"class.cv::utils::AllocatorStatisticsInterface", %"struct.std::atomic", %"struct.std::atomic", %"struct.std::atomic", %"struct.std::atomic" }
%"class.cv::utils::AllocatorStatisticsInterface" = type { ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN2cv5utils28AllocatorStatisticsInterfaceD2Ev = comdat any

$_ZTIN2cv5utils28AllocatorStatisticsInterfaceE = comdat any

$_ZTSN2cv5utils28AllocatorStatisticsInterfaceE = comdat any

@_ZN2cvL15allocator_statsE = internal global %"class.cv::utils::(anonymous namespace)::AllocatorStatistics" zeroinitializer, align 8
@_ZN2cvL36g_force_initialization_memalign_flagE = internal global i8 0, align 1
@_ZTVN2cv5utils12_GLOBAL__N_119AllocatorStatisticsE = internal constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN2cv5utils12_GLOBAL__N_119AllocatorStatisticsE, ptr @_ZN2cv5utils28AllocatorStatisticsInterfaceD2Ev, ptr @_ZN2cv5utils12_GLOBAL__N_119AllocatorStatisticsD0Ev, ptr @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics15getCurrentUsageEv, ptr @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics13getTotalUsageEv, ptr @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics22getNumberOfAllocationsEv, ptr @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics12getPeakUsageEv, ptr @_ZN2cv5utils12_GLOBAL__N_119AllocatorStatistics14resetPeakUsageEv] }, align 8
@_ZTIN2cv5utils12_GLOBAL__N_119AllocatorStatisticsE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv5utils12_GLOBAL__N_119AllocatorStatisticsE, ptr @_ZTIN2cv5utils28AllocatorStatisticsInterfaceE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv5utils12_GLOBAL__N_119AllocatorStatisticsE = internal constant [47 x i8] c"N2cv5utils12_GLOBAL__N_119AllocatorStatisticsE\00", align 1
@_ZTIN2cv5utils28AllocatorStatisticsInterfaceE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv5utils28AllocatorStatisticsInterfaceE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2cv5utils28AllocatorStatisticsInterfaceE = linkonce_odr hidden constant [42 x i8] c"N2cv5utils28AllocatorStatisticsInterfaceE\00", comdat, align 1
@_ZZN2cvL26isAlignedAllocationEnabledEvE11useMemalign = internal unnamed_addr global i8 0, align 1
@_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"OPENCV_ENABLE_MEMALIGN\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to allocate %llu bytes\00", align 1
@__func__._ZN2cvL16OutOfMemoryErrorEm = private unnamed_addr constant [17 x i8] c"OutOfMemoryError\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/opencv/opencv/modules/core/src/alloc.cpp\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_alloc.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils28AllocatorStatisticsInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv22getAllocatorStatisticsEv() local_unnamed_addr #1 {
bb.a:
  ret ptr @_ZN2cvL15allocator_statsE
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN2cv10fastMallocEm(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load atomic i8, ptr @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN2cvL26isAlignedAllocationEnabledEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN2cvL26isAlignedAllocationEnabledEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef zeroext i1 @_ZN2cv5utils29getConfigurationParameterBoolEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
          to label %_ZN2cvL28readMemoryAlignmentParameterEv.exit.i unwind label %bb.d

_ZN2cvL28readMemoryAlignmentParameterEv.exit.i:   ; preds = %bb.c
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr @_ZZN2cvL26isAlignedAllocationEnabledEvE11useMemalign, align 1, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  br label %_ZN2cvL26isAlignedAllocationEnabledEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  br label %common.resume

_ZN2cvL26isAlignedAllocationEnabledEv.exit:       ; preds = %bb.a, %bb.b, %_ZN2cvL28readMemoryAlignmentParameterEv.exit.i
  %i.h = load i8, ptr @_ZZN2cvL26isAlignedAllocationEnabledEvE11useMemalign, align 1, !tbaa !10, !range !11, !noundef !12
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN2cvL26isAlignedAllocationEnabledEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %0) #14
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not12 = icmp eq ptr %.pr, null
  br i1 %.not12, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.2, i64 noundef %0)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cvL16OutOfMemoryErrorEm, ptr noundef nonnull @.str.3, i32 noundef 73) #15
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %common.resume

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.n

bb.k:                                             ; preds = %_ZN2cvL26isAlignedAllocationEnabledEv.exit
  %i.q = add i64 %0, 72
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #17 ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZN2cvL16OutOfMemoryErrorEm(i64 noundef %0)
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 63
  %i.v = and i64 %i.u, -64
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  store ptr %i.r, ptr %i.x, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.2 = phi ptr [ %.pr, %bb.j ], [ %i.w, %bb.m ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN2cvL16OutOfMemoryErrorEm(i64 noundef %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.2, i64 noundef %0)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cvL16OutOfMemoryErrorEm, ptr noundef nonnull @.str.3, i32 noundef 73) #15
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8fastFreeEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2cvL26isAlignedAllocationEnabledEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cvL26isAlignedAllocationEnabledEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN2cv5utils29getConfigurationParameterBoolEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
          to label %_ZN2cvL28readMemoryAlignmentParameterEv.exit.i unwind label %bb.d

_ZN2cvL28readMemoryAlignmentParameterEv.exit.i:   ; preds = %bb.c
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN2cvL26isAlignedAllocationEnabledEvE11useMemalign, align 1, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  br label %_ZN2cvL26isAlignedAllocationEnabledEv.exit

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  resume { ptr, i32 } %i.f

_ZN2cvL26isAlignedAllocationEnabledEv.exit:       ; preds = %bb.a, %bb.b, %_ZN2cvL28readMemoryAlignmentParameterEv.exit.i
  %i.g = load i8, ptr @_ZZN2cvL26isAlignedAllocationEnabledEvE11useMemalign, align 1, !tbaa !10, !range !11, !noundef !12
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %_ZN2cvL26isAlignedAllocationEnabledEv.exit
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds i8, ptr %0, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN2cvL26isAlignedAllocationEnabledEv.exit, %bb.f
  %.sink = phi ptr [ %i.j, %bb.f ], [ %0, %_ZN2cvL26isAlignedAllocationEnabledEv.exit ]
  tail call void @free(ptr noundef %.sink) #14
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2cv5utils12_GLOBAL__N_119AllocatorStatisticsD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics15getCurrentUsageEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics13getTotalUsageEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics22getNumberOfAllocationsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i64 @_ZNK2cv5utils12_GLOBAL__N_119AllocatorStatistics12getPeakUsageEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal void @_ZN2cv5utils12_GLOBAL__N_119AllocatorStatistics14resetPeakUsageEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  store atomic i64 %i.c, ptr %i.a seq_cst, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN2cv5utils29getConfigurationParameterBoolEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_alloc.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN2cv5utils12_GLOBAL__N_119AllocatorStatisticsE, i64 16), ptr @_ZN2cvL15allocator_statsE, align 8, !tbaa !23
  %i.a = load atomic i8, ptr @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %__cxx_global_var_init.1.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %__cxx_global_var_init.1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN2cv5utils29getConfigurationParameterBoolEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
          to label %_ZN2cvL28readMemoryAlignmentParameterEv.exit.i.i unwind label %bb.d

_ZN2cvL28readMemoryAlignmentParameterEv.exit.i.i: ; preds = %bb.c
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN2cvL26isAlignedAllocationEnabledEvE11useMemalign, align 1, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  br label %__cxx_global_var_init.1.exit

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL26isAlignedAllocationEnabledEvE11useMemalign) #14
  resume { ptr, i32 } %i.f

__cxx_global_var_init.1.exit:                     ; preds = %bb.a, %bb.b, %_ZN2cvL28readMemoryAlignmentParameterEv.exit.i.i
  %i.g = load i8, ptr @_ZZN2cvL26isAlignedAllocationEnabledEvE11useMemalign, align 1, !tbaa !10, !range !11, !noundef !12
  store i8 %i.g, ptr @_ZN2cvL36g_force_initialization_memalign_flagE, align 1, !tbaa !10
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN2cvL36g_force_initialization_memalign_flagE) ; 0 uses
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!"bool", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !4, i64 16}
!18 = !{!17, !14, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!14, !14, i64 0}
!21 = !{!13, !13, i64 0}
!22 = !{!"vtable pointer", !3, i64 0}
!23 = !{!22, !22, i64 0}
end_hunk_0
