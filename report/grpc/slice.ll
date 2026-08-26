Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/slice?download=true
inline.NumInlined: 164
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.grpc_slice = type { ptr, %"union.grpc_slice::grpc_slice_data" }
%"union.grpc_slice::grpc_slice_data" = type { %"struct.grpc_slice::grpc_slice_data::grpc_slice_refcounted", [8 x i8] }
%"struct.grpc_slice::grpc_slice_data::grpc_slice_refcounted" = type { i64, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr.2" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }

$_ZNSt10unique_ptrIcN9grpc_core17DefaultDeleteCharEED2Ev = comdat any

$_Z36grpc_slice_split_tail_maybe_ref_implILb1EE10grpc_slicePS0_m19grpc_slice_ref_whom = comdat any

$_Z36grpc_slice_split_tail_maybe_ref_implILb0EE10grpc_slicePS0_m19grpc_slice_ref_whom = comdat any

$_Z26grpc_slice_split_head_implILb1EE10grpc_slicePS0_m = comdat any

$_Z26grpc_slice_split_head_implILb0EE10grpc_slicePS0_m = comdat any

$_ZN9grpc_core16NewSliceRefcount7DestroyEP19grpc_slice_refcount = comdat any

$__clang_call_terminate = comdat any

$_ZN9grpc_core23NewWithLenSliceRefcount7DestroyEP19grpc_slice_refcount = comdat any

$_ZN9grpc_core24MovedStringSliceRefCount7DestroyEP19grpc_slice_refcount = comdat any

$_ZN9grpc_core27MovedCppStringSliceRefCount7DestroyEP19grpc_slice_refcount = comdat any

@.str = private unnamed_addr constant [54 x i8] c"/opt-bench/work/grpc/grpc/src/core/lib/slice/slice.cc\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"end >= begin\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"source.data.refcounted.length >= end\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"source.data.inlined.length >= end\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"source->data.inlined.length >= split\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"source->data.refcounted.length >= split\00", align 1

; Function Attrs: mustprogress uwtable
define ptr @grpc_slice_to_c_string(ptr nofree noundef readonly byval(%struct.grpc_slice) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = select i1 %.not, i64 %i.d, i64 %i.c      ; 3 uses
  %i.f = add i64 %i.e, 1
  %i.g = tail call ptr @gpr_malloc(i64 noundef %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.k = select i1 %.not, ptr %i.j, ptr %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.k, i64 %i.e, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.l, align 1, !tbaa !12
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @gpr_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @grpc_empty_slice(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 32)) %0) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @grpc_slice_copy(ptr dead_on_unwind noalias nofree writable sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef readonly byval(%struct.grpc_slice) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = select i1 %.not, i64 %i.d, i64 %i.c      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.f = icmp ult i64 %i.e, 24
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw nsw i64 %i.e to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !12, !alias.scope !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %grpc_slice_malloc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.i = add i64 %i.e, 16
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #23, !noalias !22 ; 4 uses
  store i64 1, ptr %i.j, align 8, !tbaa !23, !noalias !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZZ23grpc_slice_malloc_largeEN3$_08__invokeEP19grpc_slice_refcount", ptr %i.k, align 8, !tbaa !26, !noalias !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !12, !alias.scope !22
  store i64 %i.e, ptr %i.m, align 8, !tbaa !12, !alias.scope !22
  br label %grpc_slice_malloc.exit

grpc_slice_malloc.exit:                           ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  %.sink.i = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  store ptr %.sink.i, ptr %0, align 8, !tbaa !8, !alias.scope !16
  %.not1 = icmp eq ptr %.sink.i, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.q = select i1 %.not1, ptr %i.p, ptr %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.u = select i1 %.not, ptr %i.t, ptr %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.u, i64 %i.e, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @grpc_slice_malloc(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 9)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 24
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.d = add i64 %1, 16
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #23, !noalias !29 ; 4 uses
  store i64 1, ptr %i.e, align 8, !tbaa !23, !noalias !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZZ23grpc_slice_malloc_largeEN3$_08__invokeEP19grpc_slice_refcount", ptr %i.f, align 8, !tbaa !26, !noalias !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8, !tbaa !12, !alias.scope !29
  store i64 %1, ptr %i.h, align 8, !tbaa !12, !alias.scope !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  store ptr %.sink, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_Z23grpc_slice_memory_usage10grpc_slice(ptr nofree noundef readonly byval(%struct.grpc_slice) align 8 captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %switch = icmp ult ptr %i.a, inttoptr (i64 2 to ptr)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.0 = select i1 %switch, i64 0, i64 %i.c
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @grpc_slice_from_static_buffer(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @grpc_slice_from_static_string(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !33
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @grpc_slice_new_with_user_data(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  store i64 1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN9grpc_core16NewSliceRefcount7DestroyEP19grpc_slice_refcount, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !38
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !12
  store i64 %2, ptr %i.e, align 8, !tbaa !12
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @grpc_slice_new(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23, !noalias !39 ; 5 uses
  store i64 1, ptr %i.a, align 8, !tbaa !23, !noalias !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN9grpc_core16NewSliceRefcount7DestroyEP19grpc_slice_refcount, ptr %i.b, align 8, !tbaa !26, !noalias !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !36, !noalias !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !38, !noalias !39
  store ptr %i.a, ptr %0, align 8, !tbaa !8, !alias.scope !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !12, !alias.scope !39
  store i64 %2, ptr %i.e, align 8, !tbaa !12, !alias.scope !39
  ret void
}

; Function Attrs: mustprogress uwtable
define void @grpc_slice_new_with_len(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 6 uses
  store i64 1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN9grpc_core23NewWithLenSliceRefcount7DestroyEP19grpc_slice_refcount, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %3, ptr %i.e, align 8, !tbaa !45
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !12
  store i64 %2, ptr %i.f, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define void @grpc_slice_from_copied_buffer(ptr dead_on_unwind noalias nofree writable sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !46
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.b = icmp ult i64 %2, 24
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !12, !alias.scope !51
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %grpc_slice_malloc.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.e = add i64 %2, 16
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #23, !noalias !57 ; 4 uses
  store i64 1, ptr %i.f, align 8, !tbaa !23, !noalias !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZZ23grpc_slice_malloc_largeEN3$_08__invokeEP19grpc_slice_refcount", ptr %i.g, align 8, !tbaa !26, !noalias !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.j, align 8, !tbaa !12, !alias.scope !57
  store i64 %2, ptr %i.i, align 8, !tbaa !12, !alias.scope !57
  br label %grpc_slice_malloc.exit

grpc_slice_malloc.exit:                           ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %.pre, %bb.d ], [ %i.h, %bb.e ]
  %.sink.i = phi ptr [ null, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  store ptr %.sink.i, ptr %0, align 8, !tbaa !8, !alias.scope !51
  %.not = icmp eq ptr %.sink.i, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.m = select i1 %.not, ptr %i.l, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %grpc_slice_malloc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @grpc_slice_from_copied_string(ptr dead_on_unwind noalias nofree writable sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !61
  br label %grpc_slice_from_copied_buffer.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.c = icmp ult i64 %i.a, 24
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nuw nsw i64 %i.a to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8, !tbaa !12, !alias.scope !69
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !58
  br label %grpc_slice_malloc.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.f = add i64 %i.a, 16
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #23, !noalias !73 ; 4 uses
  store i64 1, ptr %i.g, align 8, !tbaa !23, !noalias !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZZ23grpc_slice_malloc_largeEN3$_08__invokeEP19grpc_slice_refcount", ptr %i.h, align 8, !tbaa !26, !noalias !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !12, !alias.scope !73
  store i64 %i.a, ptr %i.j, align 8, !tbaa !12, !alias.scope !73
  br label %grpc_slice_malloc.exit.i

grpc_slice_malloc.exit.i:                         ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %bb.e ]
  %.sink.i.i = phi ptr [ null, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  store ptr %.sink.i.i, ptr %0, align 8, !tbaa !8, !alias.scope !69
  %.not.i = icmp eq ptr %.sink.i.i, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.n = select i1 %.not.i, ptr %i.m, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull readonly align 1 %1, i64 %i.a, i1 false)
  br label %grpc_slice_from_copied_buffer.exit

grpc_slice_from_copied_buffer.exit:               ; preds = %bb.b, %grpc_slice_malloc.exit.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_Z28grpc_slice_from_moved_bufferSt10unique_ptrIcN9grpc_core17DefaultDeleteCharEEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.grpc_slice) align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef align 8 captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.b = icmp ult i64 %2, 24
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.a, i64 %2, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 4 uses
  store i64 1, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZN9grpc_core24MovedStringSliceRefCount7DestroyEP19grpc_slice_refcount, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %1, align 8, !tbaa !74
end_hunk_0
