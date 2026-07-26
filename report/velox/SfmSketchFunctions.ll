inline.NumInlined: 81
inline.NumDeleted: 64
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.facebook::velox::functions::sfm::SfmSketch" = type { i32, i32, i32, double, %"class.std::vector", ptr, %"class.std::optional.0" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<signed char, facebook::velox::StlAllocator<signed char>>::_Vector_impl" }
%"struct.std::_Vector_base<signed char, facebook::velox::StlAllocator<signed char>>::_Vector_impl" = type { %"struct.facebook::velox::StlAllocator", %"struct.std::_Vector_base<signed char, facebook::velox::StlAllocator<signed char>>::_Vector_impl_data" }
%"struct.facebook::velox::StlAllocator" = type { ptr }
%"struct.std::_Vector_base<signed char, facebook::velox::StlAllocator<signed char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional.0" = type { %"struct.std::_Optional_base.1" }
%"struct.std::_Optional_base.1" = type { %"struct.std::_Optional_payload.3" }
%"struct.std::_Optional_payload.3" = type { %"struct.std::_Optional_payload.base.7", [7 x i8] }
%"struct.std::_Optional_payload.base.7" = type { %"struct.std::_Optional_payload_base.base.6" }
%"struct.std::_Optional_payload_base.base.6" = type <{ %"union.std::_Optional_payload_base<facebook::velox::functions::sfm::MersenneTwisterRandomizationStrategy>::_Storage", i8 }>
%"union.std::_Optional_payload_base<facebook::velox::functions::sfm::MersenneTwisterRandomizationStrategy>::_Storage" = type { %"class.facebook::velox::functions::sfm::MersenneTwisterRandomizationStrategy" }
%"class.facebook::velox::functions::sfm::MersenneTwisterRandomizationStrategy" = type { %"class.facebook::velox::functions::sfm::RandomizationStrategy", %"class.std::mersenne_twister_engine" }
%"class.facebook::velox::functions::sfm::RandomizationStrategy" = type { ptr }
%"class.std::mersenne_twister_engine" = type { [312 x i64], i64 }

$_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev = comdat any

$__clang_call_terminate = comdat any

@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions20createEmptySfmSketchB5cxx11EPNS0_19HashStringAllocatorEdSt8optionalIlES5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, double noundef %2, i64 %3, i8 %4, i64 %5, i8 %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNRSt8optionalIlE5valueEv.exit:
  %7 = alloca %"class.facebook::velox::functions::sfm::SfmSketch", align 8 ; 13 uses
  %i.a = trunc nuw i8 %4 to i1
  %i.b = trunc i64 %3 to i32
  %spec.select = select i1 %i.a, i32 %i.b, i32 4096
  %i.c = trunc nuw i8 %6 to i1
  %i.d = trunc i64 %5 to i32
  %i.e = select i1 %i.c, i32 %i.d, i32 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN8facebook5velox9functions3sfm9SfmSketchC1EPNS0_19HashStringAllocatorESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(2584) %7, ptr noundef %1, i64 0)
  invoke void @_ZN8facebook5velox9functions3sfm9SfmSketch10initializeEii(ptr noundef nonnull align 8 dereferenceable(2584) %7, i32 noundef %spec.select, i32 noundef %i.e)
          to label %bb.a unwind label %bb.i

bb.a:                                             ; preds = %_ZNRSt8optionalIlE5valueEv.exit
  invoke void @_ZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEd(ptr noundef nonnull align 8 dereferenceable(2584) %7, double noundef %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef i32 @_ZNK8facebook5velox9functions3sfm9SfmSketch14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(2584) %7)
          to label %bb.c unwind label %bb.j       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7
  %i.i = icmp ugt i32 %i.f, 15
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %.noexc.i, label %.thread7.i.i

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.k = add nuw nsw i64 %i.g, 1
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #12
          to label %.noexc13 unwind label %bb.k   ; 2 uses

.noexc13:                                         ; preds = %.thread7.i.i
  store ptr %i.l, ptr %0, align 8, !tbaa !11
  store i64 %i.g, ptr %i.h, align 8, !tbaa !14
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  switch i32 %i.f, label %bb.g [
    i32 0, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.h, align 8, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %.noexc13
  %i.m = phi ptr [ %i.l, %.noexc13 ], [ %i.h, %bb.e ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.g, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.n = phi ptr [ %i.h, %bb.e ], [ %i.m, %bb.g ], [ %i.h, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !14
  %i.q = load ptr, ptr %0, align 8, !tbaa !11
  invoke void @_ZNK8facebook5velox9functions3sfm9SfmSketch9serializeEPc(ptr noundef nonnull align 8 dereferenceable(2584) %7, ptr noundef %i.q)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %bb.a, %_ZNRSt8optionalIlE5valueEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %.thread7.i.i, %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.x = load i64, ptr %i.h, align 8, !tbaa !14
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 2576
  store i8 0, ptr %8, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = icmp ugt i64 %i.af, 3072
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384) %i.ai, ptr noundef nonnull %i.aa, i64 noundef %i.af)
          to label %_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds i8, ptr %i.aa, i64 -4
  invoke void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384) %i.ai, ptr noundef nonnull %i.aj)
          to label %_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #14
  unreachable

_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit: ; preds = %bb.m, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %bb.k, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.s, %bb.j ], [ %i.t, %bb.k ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.l ]
  call void @_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev(ptr noundef nonnull align 8 dead_on_return(2584) dereferenceable(2584) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN8facebook5velox9functions3sfm9SfmSketchC1EPNS0_19HashStringAllocatorESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(2584), ptr noundef, i64) unnamed_addr #2

declare void @_ZN8facebook5velox9functions3sfm9SfmSketch10initializeEii(ptr noundef nonnull align 8 dereferenceable(2584), i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEd(ptr noundef nonnull align 8 dereferenceable(2584), double noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK8facebook5velox9functions3sfm9SfmSketch14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(2584)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK8facebook5velox9functions3sfm9SfmSketch9serializeEPc(ptr noundef nonnull align 8 dereferenceable(2584), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev(ptr noundef nonnull align 8 dead_on_return(2584) dereferenceable(2584) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i8 0, ptr %1, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp ugt i64 %i.g, 3072
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384) %i.j, ptr noundef nonnull %i.b, i64 noundef %i.g)
          to label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -4
  invoke void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384) %i.j, ptr noundef nonnull %i.k)
          to label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #14
  unreachable

_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !13, i64 8}
!16 = !{!17, !18, i64 2512}
!17 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEE", !5, i64 0, !18, i64 2512}
!18 = !{!"bool", !5, i64 0}
!19 = !{!20, !9, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIaN8facebook5velox12StlAllocatorIaEEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!21 = !{!20, !9, i64 16}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSN8facebook5velox12StlAllocatorIaEE", !24, i64 0}
!24 = !{!"p1 _ZTSN8facebook5velox19HashStringAllocatorE", !10, i64 0}
end_hunk_0
