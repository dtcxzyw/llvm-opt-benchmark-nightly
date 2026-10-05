Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/null_iterators_test?download=true
inline.NumInlined: 1047
inline.NumDeleted: 544
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.boost::detail::test_result" = type { i8, i32 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.boost::container::stable_vector" = type { %"class.boost::container::stable_vector<int>::ebo_holder", %"class.boost::container::vector.12" }
%"class.boost::container::stable_vector<int>::ebo_holder" = type { i64, %"struct.boost::container::stable_vector_detail::node_base" }
%"struct.boost::container::stable_vector_detail::node_base" = type { ptr }
%"class.boost::container::vector.12" = type { %"struct.boost::container::vector_alloc_holder.13" }
%"struct.boost::container::vector_alloc_holder.13" = type { ptr, i64, i64 }
%"class.boost::container::stable_vector_iterator.7" = type { ptr }
%"class.boost::container::stable_vector_iterator" = type { ptr }

$_ZN5boost13report_errorsEv = comdat any

$_ZN5boost6detail11test_resultD2Ev = comdat any

$__clang_call_terminate = comdat any

$_Z15check_plus_zeroIN5boost9container6vectorIivvEEEvRKSt26random_access_iterator_tag = comdat any

$_Z15check_plus_zeroIN5boost9container5dequeIivvEEEvRKSt26random_access_iterator_tag = comdat any

$_Z15check_plus_zeroIN5boost9container13stable_vectorIivEEEvRKSt26random_access_iterator_tag = comdat any

$_ZN5boost9container13stable_vectorIivED2Ev = comdat any

$_ZN5boost9container13stable_vectorIivE5eraseENS0_22stable_vector_iteratorIPiLb1EEES5_ = comdat any

$_Z15check_plus_zeroIN5boost9container13static_vectorIiLm1EvEEEvRKSt26random_access_iterator_tag = comdat any

$_Z15check_plus_zeroIN5boost9container12basic_stringIcSt11char_traitsIcEvvEEEvRKSt26random_access_iterator_tag = comdat any

$_Z15check_plus_zeroIN5boost9container8flat_setIiSt4lessIiEvEEEvRKSt26random_access_iterator_tag = comdat any

$_Z15check_plus_zeroIN5boost9container13flat_multisetIiSt4lessIiEvEEEvRKSt26random_access_iterator_tag = comdat any

$_Z15check_plus_zeroIN5boost9container8flat_mapIiiSt4lessIiEvEEEvRKSt26random_access_iterator_tag = comdat any

$_Z15check_plus_zeroIN5boost9container13flat_multimapIiiSt4lessIiEvEEEvRKSt26random_access_iterator_tag = comdat any

$_ZZN5boost6detail12test_resultsEvE8instance = comdat any

$_ZGVZN5boost6detail12test_resultsEvE8instance = comdat any

@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [20 x i8] c"No errors detected.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" error\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" detected.\00", align 1
@_ZZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global %"class.boost::detail::test_result" zeroinitializer, comdat, align 4
@_ZGVZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.5 = private unnamed_addr constant [37 x i8] c"main() should return report_errors()\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %1 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %2 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %7 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %8 = alloca %"struct.std::random_access_iterator_tag", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i5 = icmp eq i32 %i.c, 0
  br i1 %.not.i.i5, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, !prof !9

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i3, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, %bb.d, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, !prof !9

bb.f:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i1 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i1, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, %bb.f, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_Z15check_plus_zeroIN5boost9container6vectorIivvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit14, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i13 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i13, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit14

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit14:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.j, %bb.k
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit12, !prof !9

bb.l:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit14
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i11 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i11, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit12, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit12

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit12:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit14, %bb.l, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit10, !prof !9

bb.n:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit12
  %i.aa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i9 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i9, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit10, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit10

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit10:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit12, %bb.n, %bb.o
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, !prof !9

bb.p:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit10
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i7 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i7, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit10, %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_Z15check_plus_zeroIN5boost9container5dequeIivvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ag = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
end_hunk_0
begin_hunk_1_@_Z15check_plus_zeroIN5boost9container13stable_vectorIivEEEvRKSt26random_access_iterator_tag:bb.a
  br i1 %i.j, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit5, !prof !9

bb.f:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit3
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i4 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i4, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit5

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit5:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit3, %bb.f, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit5
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i6 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i6, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit5, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i8 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i8, label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit

_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit: ; preds = %bb.k, %bb.j, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit, !prof !9

bb.l:                                             ; preds = %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i10 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i10, label %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit: ; preds = %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit, %bb.l, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit, !prof !9

bb.n:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i12 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i12, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit, %bb.n, %bb.o
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit, !prof !9

bb.p:                                             ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i14 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i14, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit, %bb.p, %bb.q
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::stable_vector_iterator.7", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.7", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !74
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN5boost9container13stable_vectorIivE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21, !noalias !74
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !74
  br label %_ZN5boost9container13stable_vectorIivE5clearEv.exit

_ZN5boost9container13stable_vectorIivE5clearEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i.i, ptr %1, align 8, !tbaa !25, !alias.scope !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !25, !alias.scope !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN5boost9container13stable_vectorIivE5eraseENS0_22stable_vector_iteratorIPiLb1EEES5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorIivE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i1, label %_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !23
  store ptr null, ptr %i.m, align 8, !tbaa !32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.q = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.r = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !32
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #15
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !71

_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !29
  br label %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit: ; preds = %_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i, %bb.d, %_ZN5boost9container13stable_vectorIivE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i2, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.w) #15
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit: ; preds = %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIivE5eraseENS0_22stable_vector_iteratorIPiLb1EEES5_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::stable_vector_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3 = alloca ptr, align 8                  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !93 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21, !noalias !93
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !93
  br label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit

_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = load ptr, ptr %2, align 8, !tbaa !25
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = load ptr, ptr %storemerge.i.i, align 8, !tbaa !94
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = sub nsw i64 %i.r, %i.m                   ; 7 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  store ptr null, ptr %.sroa.3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21, !noalias !95 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.l ; 8 uses
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %.031.prol = phi i64 [ %i.x, %.prol.preheader ], [ %i.s, %bb.d ]
  %.sroa.016.030.prol = phi ptr [ %i.y, %.prol.preheader ], [ %i.v, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.z, %.prol.preheader ], [ %.sroa.3, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  %i.x = add i64 %.031.prol, -1                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.030.prol, i64 8 ; 2 uses
  %i.z = load ptr, ptr %.sroa.016.030.prol, align 8, !tbaa !23 ; 5 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !32
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !32
  store ptr %i.z, ptr %i.w, align 8, !tbaa !32
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !84

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.lcssa.unr = phi ptr [ poison, %bb.d ], [ %i.z, %.prol.preheader ]
  %.031.unr = phi i64 [ %i.s, %bb.d ], [ %i.x, %.prol.preheader ]
  %.sroa.016.030.unr = phi ptr [ %i.v, %bb.d ], [ %i.y, %.prol.preheader ]
  %.unr = phi ptr [ %.sroa.3, %bb.d ], [ %i.z, %.prol.preheader ]
  %i.ab = sub nsw i64 %i.m, %i.r
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.031 = phi i64 [ %i.an, %.new ], [ %.031.unr, %.prol.loopexit ]
  %.sroa.016.030 = phi ptr [ %i.ao, %.new ], [ %.sroa.016.030.unr, %.prol.loopexit ] ; 5 uses
  %i.ad = phi ptr [ %i.ap, %.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 8
  %i.af = load ptr, ptr %.sroa.016.030, align 8, !tbaa !23 ; 4 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !32
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !32
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 16
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 4 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !32
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !32
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 24
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 4 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !32
  store ptr %i.am, ptr %i.al, align 8, !tbaa !32
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !32
  %i.an = add i64 %.031, -4                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 32
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !23 ; 4 uses
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !32
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !32
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !32
  %.not11.3 = icmp eq i64 %i.an, 0
  br i1 %.not11.3, label %.unr-lcssa, label %.new, !llvm.loop !85

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.ap, %.new ]
  %.idx = shl nsw i64 %i.s, 3                     ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %.idx
  %i.as = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.b ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 -8     ; 2 uses
  %i.av = load i64, ptr %1, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i.a, label %bb.e

bb.e:                                             ; preds = %.unr-lcssa
  %4 = load ptr, ptr %i.au, align 8, !tbaa !23
  %5 = load ptr, ptr %i.at, align 8, !tbaa !23
  %.sroa.3.0..sroa.3.8.37 = load ptr, ptr %.sroa.3, align 8, !tbaa !32
  store ptr %5, ptr %.sroa.3, align 8, !tbaa !32
  store ptr %.sroa.3.0..sroa.3.8.37, ptr %4, align 8, !tbaa !32
  %i.aw = add i64 %i.s, %i.av
  br label %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i.a

_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i.a: ; preds = %.unr-lcssa, %bb.e
  %6 = phi i64 [ %i.aw, %bb.e ], [ %i.s, %.unr-lcssa ]
  store i64 %6, ptr %1, align 8, !tbaa !29
  %.sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.3.0..sroa.3.8., null
  %spec.select = select i1 %.not.i.i.i.i.i, ptr null, ptr %.lcssa, !prof !97
  store ptr %.sroa.3.0..sroa.3.8., ptr %i.at, align 8, !tbaa !23
  store ptr %spec.select, ptr %i.au, align 8, !tbaa !23
  %.idx25 = shl nuw nsw i64 %i.b, 3               ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx25
  %i.ay = add i64 %.idx, %i.l                     ; 2 uses
  %.not26 = icmp eq i64 %i.ay, %.idx25
  %i.az = ptrtoint ptr %i.ax to i64
  br i1 %.not26, label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i, label %bb.f, !prof !97

bb.f:                                             ; preds = %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i.a
  %gepdiff = sub i64 %.idx25, %i.ay               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 8 %i.ar, i64 %gepdiff, i1 false), !noalias !98
  %i.ba = getelementptr inbounds i8, ptr %i.v, i64 %gepdiff
  %.pre.i12 = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !98
  br label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i

_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i: ; preds = %bb.f, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i.a
  %i.bb = phi i64 [ %.pre.i12, %bb.f ], [ %i.b, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i.a ]
  %.0.i.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.v, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i.a ]
  %i.bc = ptrtoint ptr %.0.i.i.i to i64
  %i.bd = sub i64 %i.az, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = sub i64 %i.bb, %i.be                    ; 2 uses
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !99, !noalias !98
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !21, !noalias !100
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.v, %i.bi
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i, %.lr.ph.i.i
  %i.bj = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.v, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i ] ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.bi
  br i1 %.not.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !92

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit: ; preds = %.lr.ph.i.i, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  %.pre = load ptr, ptr %3, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit
  %i.bm = phi ptr [ %.pre, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit ], [ %i.n, %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit ]
  store ptr %i.bm, ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15check_plus_zeroIN5boost9container13static_vectorIiLm1EvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, !prof !9

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i1, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, !prof !9

bb.f:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i3 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i3, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, %bb.f, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i5 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i5, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, %bb.h, %bb.i
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i7 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i7, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit: ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, %bb.j, %bb.k
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit, !prof !9

bb.l:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i9 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i9, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, %bb.l, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit, !prof !9

bb.n:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i11 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i11, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit, %bb.n, %bb.o
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit, !prof !9

bb.p:                                             ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i13 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i13, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit, %bb.p, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15check_plus_zeroIN5boost9container12basic_stringIcSt11char_traitsIcEvvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_Z20check_plus_zero_implIPcEvT_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_Z20check_plus_zero_implIPcEvT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIPcEvT_.exit

_Z20check_plus_zero_implIPcEvT_.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_Z20check_plus_zero_implIPKcEvT_.exit, !prof !9

bb.d:                                             ; preds = %_Z20check_plus_zero_implIPcEvT_.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i1, label %_Z20check_plus_zero_implIPKcEvT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIPKcEvT_.exit

_Z20check_plus_zero_implIPKcEvT_.exit:            ; preds = %_Z20check_plus_zero_implIPcEvT_.exit, %bb.d, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !9

bb.f:                                             ; preds = %_Z20check_plus_zero_implIPKcEvT_.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
end_hunk_1
begin_hunk_2_@_Z15check_plus_zeroIN5boost9container13flat_multimapIiiSt4lessIiEvEEEvRKSt26random_access_iterator_tag:bb.a
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i7 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i7, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, %bb.h, %bb.i
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb0EEEEvT_.exit, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i9 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i9, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb0EEEEvT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb0EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb0EEEEvT_.exit: ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, %bb.j, %bb.k
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb1EEEEvT_.exit, !prof !9

bb.l:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb0EEEEvT_.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i11 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i11, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb1EEEEvT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb1EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb1EEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb0EEEEvT_.exit, %bb.l, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEvT_.exit, !prof !9

bb.n:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb1EEEEvT_.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i13 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i13, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEvT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPSt4pairIiiELb1EEEEvT_.exit, %bb.n, %bb.o
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit, !prof !9

bb.p:                                             ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEvT_.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i15 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i15, label %_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit

_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit: ; preds = %bb.q, %bb.p, %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEvT_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"_ZTSN5boost6detail11test_resultE", !10, i64 0, !6, i64 4}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !6, i64 4}
!14 = !{!"long", !5, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 _ZTSN5boost9container20stable_vector_detail9node_baseIPvEE", !16, i64 0}
!18 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEEE", !17, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_ZTSN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvEE", !18, i64 0}
!20 = !{!19, !14, i64 8}
!21 = !{!18, !17, i64 0}
!22 = !{!"p1 _ZTSN5boost9container20stable_vector_detail9node_baseIPvEE", !15, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN5boost9container22stable_vector_iteratorIPiLb1EEE", !22, i64 0}
!25 = !{!24, !22, i64 0}
!26 = !{!"_ZTSN5boost9container20stable_vector_detail9node_baseIPvEE", !17, i64 0}
!27 = !{!"_ZTSN5boost9container13stable_vectorIivE10ebo_holderE", !14, i64 0, !26, i64 8}
!28 = !{!"_ZTSN5boost9container13stable_vectorIivEE", !27, i64 0, !19, i64 16}
!29 = !{!28, !14, i64 0}
!30 = !{!"p1 _ZTSN5boost9intrusive10slist_nodeIPvEE", !15, i64 0}
!31 = !{!"_ZTSN5boost9intrusive10slist_nodeIPvEE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!35 = !{!6, !6, i64 0}
!36 = !{!"vtable pointer", !4, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !14, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!44 = !{!"_ZTSSt6locale", !43, i64 0}
!45 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !41, i64 48, !5, i64 64, !6, i64 192, !42, i64 200, !44, i64 208}
!46 = !{!"p1 _ZTSSo", !15, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!51 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !45, i64 0, !46, i64 216, !5, i64 224, !10, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!52 = !{!51, !48, i64 240}
!53 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!54 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!55 = !{!"p1 int", !15, i64 0}
!56 = !{!"p1 short", !15, i64 0}
!57 = !{!"_ZTSSt5ctypeIcE", !53, i64 0, !54, i64 16, !10, i64 24, !55, i64 32, !55, i64 40, !56, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!58 = !{!57, !5, i64 56}
!59 = !{!5, !5, i64 0}
!60 = distinct !{null}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = distinct !{!63, i1 false, !"_ZNK5boost9container13stable_vectorIivE6cbeginEv"}
!64 = distinct !{!64, !63, !"_ZNK5boost9container13stable_vectorIivE6cbeginEv: argument 0"}
!65 = distinct !{!65, i1 false, !"_ZNK5boost9container13stable_vectorIivE5beginEv"}
!66 = distinct !{!66, !65, !"_ZNK5boost9container13stable_vectorIivE5beginEv: argument 0"}
!67 = distinct !{!67, i1 false, !"_ZNK5boost9container13stable_vectorIivE4cendEv"}
!68 = distinct !{!68, !67, !"_ZNK5boost9container13stable_vectorIivE4cendEv: argument 0"}
!69 = distinct !{!69, i1 false, !"_ZNK5boost9container13stable_vectorIivE3endEv"}
!70 = distinct !{!70, !69, !"_ZNK5boost9container13stable_vectorIivE3endEv: argument 0"}
!71 = distinct !{!71, !33}
!72 = !{!64}
!73 = !{!66}
!74 = !{!66, !64}
!75 = !{!70, !68}
!76 = !{!18, !14, i64 16}
!77 = !{!17, !17, i64 0}
!78 = distinct !{!78, i1 false, !"_ZNK5boost9container13stable_vectorIivE6cbeginEv"}
!79 = distinct !{!79, !78, !"_ZNK5boost9container13stable_vectorIivE6cbeginEv: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZNK5boost9container13stable_vectorIivE5beginEv"}
!81 = distinct !{!81, !80, !"_ZNK5boost9container13stable_vectorIivE5beginEv: argument 0"}
!82 = distinct !{!82, i1 false, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE5beginEv"}
!83 = distinct !{!83, !82, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE5beginEv: argument 0"}
!84 = distinct !{!84, !96}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, i1 false, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_"}
!87 = distinct !{!87, !86, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_: argument 0"}
!88 = distinct !{!88, i1 false, !"_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE14get_fix_up_endERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEE"}
!89 = distinct !{!89, !88, !"_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE14get_fix_up_endERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEE: argument 0"}
!90 = distinct !{!90, i1 false, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE3endEv"}
!91 = distinct !{!91, !90, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE3endEv: argument 0"}
!92 = distinct !{!92, !33}
!93 = !{!81, !79}
!94 = !{!26, !17, i64 0}
!95 = !{!83}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!98 = !{!87}
!99 = !{!18, !14, i64 8}
!100 = !{!91, !89}
!101 = !{!"_ZTSN5boost9container22stable_vector_iteratorIPiLb0EEE", !22, i64 0}
!102 = !{!101, !22, i64 0}
end_hunk_2
