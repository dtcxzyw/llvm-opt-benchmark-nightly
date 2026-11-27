Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/coded_stream?download=true
inline.NumInlined: 268
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i8 }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::Cord::ChunkIterator" = type { %"class.std::basic_string_view", ptr, i64, %"class.absl::lts_20250512::cord_internal::CordRepBtreeReader" }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::cord_internal::CordRepBtreeReader" = type { i64, %"class.absl::lts_20250512::cord_internal::CordRepBtreeNavigator" }
%"class.absl::lts_20250512::cord_internal::CordRepBtreeNavigator" = type { i32, [12 x i8], [12 x ptr] }

$__clang_call_terminate = comdat any

@_ZN6google8protobuf2io16CodedInputStream24default_recursion_limit_E = local_unnamed_addr global i32 100, align 4, !guid !14
@.str = private unnamed_addr constant [73 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/io/coded_stream.cc\00", align 1, !guid !15
@.str.1 = private unnamed_addr constant [67 x i8] c"A protocol message was rejected because it was too big (more than \00", align 1, !guid !16
@.str.2 = private unnamed_addr constant [150 x i8] c" bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in third_party/protobuf/io/coded_stream.h.\00", align 1, !guid !17
@.str.4 = private unnamed_addr constant [17 x i8] c"buffer_size >= 0\00", align 1, !guid !18
@_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E = local_unnamed_addr global %"struct.std::atomic" zeroinitializer, align 1, !guid !19
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !20

@_ZN6google8protobuf2io16CodedInputStreamD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf2io16CodedInputStreamD2Ev
@_ZN6google8protobuf2io17CodedOutputStreamD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf2io17CodedOutputStreamD2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io16CodedInputStreamD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !69 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = add i32 %i.m, %i.k
  %i.o = add i32 %i.n, %i.i                       ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.o)
          to label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit unwind label %bb.d, !inline_history !35

_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 !guid !70 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %i.l = add i32 %i.k, %i.i
  %i.m = add i32 %i.l, %i.g                       ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.m)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.u = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %.neg4 = sub i64 %i.w, %i.v
  %.neg5 = trunc i64 %.neg4 to i32
  %i.x = load i32, ptr %i.h, align 4, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !36
  %.neg3 = sub i32 %i.z, %i.x
  %i.aa = add i32 %.neg3, %.neg5
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !36
  store ptr %i.u, ptr %i.a, align 8, !tbaa !29
  store i32 0, ptr %i.h, align 4, !tbaa !31
  store i32 0, ptr %i.j, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !guid !71 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN6google8protobuf2io16CodedInputStream9PushLimitEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !guid !72 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg3.i = sub i64 %i.g, %i.f
  %.neg4.i = trunc i64 %.neg3.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31   ; 2 uses
  %.neg2.i = sub i32 %i.b, %i.i
  %i.j = add i32 %.neg2.i, %.neg4.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = icmp sgt i32 %1, -1
  %i.n = sub nsw i32 2147483647, %i.j
  %.not = icmp samesign ule i32 %1, %i.n
  %or.cond.not = select i1 %i.m, i1 %.not, i1 false, !prof !38
  %i.o = sub nsw i32 %i.l, %i.j
  %i.p = icmp slt i32 %1, %i.o
  %i.q = select i1 %or.cond.not, i1 %i.p, i1 false, !prof !38
  br i1 %i.q, label %bb.b, label %bb.d, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %i.j, %1                     ; 2 uses
  store i32 %i.r, ptr %i.k, align 8, !tbaa !37
  %i.s = sext i32 %i.i to i64
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !13
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.r) ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.b
  br i1 %i.x, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.y = sub nsw i32 %i.b, %i.w                   ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.aa
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !29
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ %i.y, %bb.c ], [ 0, %bb.b ]
  store i32 %.sink.i, ptr %i.h, align 4, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit, %bb.a
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io16CodedInputStream8PopLimitEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((36, 37), (40, 44)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !guid !73 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %1) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.l, %i.j                   ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.p
  store ptr %i.q, ptr %i.d, align 8, !tbaa !29
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  store i32 %.sink.i, ptr %i.b, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.r, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @_ZN6google8protobuf2io16CodedInputStream35IncrementRecursionDepthAndPushLimitEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !guid !74 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg3.i.i = sub i64 %i.g, %i.f
  %.neg4.i.i = trunc i64 %.neg3.i.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31   ; 2 uses
  %.neg2.i.i = sub i32 %i.b, %i.i
  %i.j = add i32 %.neg2.i.i, %.neg4.i.i           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = icmp sgt i32 %1, -1
  %i.n = sub nsw i32 2147483647, %i.j
  %.not.i = icmp samesign ule i32 %1, %i.n
  %or.cond.not.i = select i1 %i.m, i1 %.not.i, i1 false, !prof !38
  %i.o = sub nsw i32 %i.l, %i.j
  %i.p = icmp slt i32 %1, %i.o
  %i.q = select i1 %or.cond.not.i, i1 %i.p, i1 false, !prof !38
  br i1 %i.q, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %i.j, %1                     ; 2 uses
  store i32 %i.r, ptr %i.k, align 8, !tbaa !37
  %i.s = sext i32 %i.i to i64
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !13
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.r) ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.b
  br i1 %i.x, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.y = sub nsw i32 %i.b, %i.w                   ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.aa
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !29
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i: ; preds = %bb.c, %bb.b
  %.sink.i.i = phi i32 [ %i.y, %bb.c ], [ 0, %bb.b ]
  store i32 %.sink.i.i, ptr %i.h, align 4, !tbaa !31
  br label %_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit

_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit: ; preds = %bb.a, %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !41
  %.sroa.2.0.insert.ext.i = zext i32 %i.ae to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf2io16CodedInputStream22ReadLengthAndPushLimitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 !guid !75 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = icmp ult ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !42    ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io16CodedInputStream10ReadStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %2 to i64                  ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i8 noundef signext 0)
  %i.j = load ptr, ptr %1, align 8, !tbaa !52
  %i.k = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.k, i64 %i.i, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream18ReadStringFallbackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ %i.n, %bb.d ], [ false, %bb.a ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream18ReadStringFallbackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !90 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !91
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %i.d = load ptr, ptr %1, align 8, !tbaa !52
  store i8 0, ptr %i.d, align 1, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13
  %i.h = load i32, ptr %i.e, align 8, !tbaa !13
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %.not = icmp eq i32 %i.i, 2147483647
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = load ptr, ptr %0, align 8, !tbaa !30
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %.neg3.i.neg = sub i64 %i.o, %i.p
  %.neg4.i.neg = trunc i64 %.neg3.i.neg to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31
  %.neg2.i.neg = sub i32 %i.i, %i.k
  %.neg = add i32 %.neg2.i.neg, %i.r
  %i.s = add i32 %.neg, %.neg4.i.neg              ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  %i.u = icmp slt i32 %2, 1
  %or.cond.not36 = or i1 %i.u, %i.t
  %.not29 = icmp sgt i32 %2, %i.s
  %or.cond31 = or i1 %.not29, %or.cond.not36
  br i1 %or.cond31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i32 %2 to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.v)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.split, %bb.f
  %.0 = phi i32 [ %2, %bb.f ], [ %i.al, %.split ] ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %.not45.not.not.not.not = icmp sle i32 %.0, %i.ac ; 2 uses
  br i1 %.not45.not.not.not.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not30 = icmp eq i32 %i.ac, 0
  br i1 %.not30, label %.split, label %.split24

.split24:                                         ; preds = %bb.h
  %sext = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %sext, 32                ; 3 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !91
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %.split24
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %.split24
  %i.ah = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.y, i64 noundef %i.ad) ; 0 uses
  %i.ai = sub nsw i32 %.0, %i.ac
  %i.aj = load ptr, ptr %0, align 8, !tbaa !30
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ad
  store ptr %i.ak, ptr %0, align 8, !tbaa !30
  br label %.split

.split:                                           ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.al = phi i32 [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.0, %bb.h ]
  %i.am = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.am, label %bb.g, label %.loopexit, !llvm.loop !89

bb.j:                                             ; preds = %bb.g
  %i.an = sext i32 %.0 to i64                     ; 3 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !91
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32: ; preds = %bb.j
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.y, i64 noundef %i.an) ; 0 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !30
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.an
  store ptr %i.at, ptr %0, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32
  ret i1 %.not45.not.not.not.not
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream8ReadCordEPN4absl12lts_202505124CordEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !guid !92 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505124Cord5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp samesign ult i32 %2, 512
  %or.cond = or i1 %i.e, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.l) ; 2 uses
  %i.m = sext i32 %.sroa.speculated to i64        ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.m, ptr %i.g) ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !30
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.m
  store ptr %i.p, ptr %0, align 8, !tbaa !30
  %i.q = sub nsw i32 %2, %.sroa.speculated
  %.not = icmp sgt i32 %2, %i.l
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = add nsw i32 %i.w, %i.u
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit, label %.thread

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_202505124Cord5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = add i32 %i.aj, %i.ae                    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef %i.ak), !inline_history !35
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.ar = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %.neg4.i = sub i64 %i.at, %i.as
  %.neg5.i = trunc i64 %.neg4.i to i32
  %i.au = load i32, ptr %i.af, align 4, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !36
  %.neg3.i = sub i32 %i.aw, %i.au
  %i.ax = add i32 %.neg3.i, %.neg5.i
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !36
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !29
  store i32 0, ptr %i.af, align 4, !tbaa !31
  store i32 0, ptr %i.ah, align 4, !tbaa !32
  br label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit

_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit: ; preds = %bb.h, %bb.g, %bb.f
  %.026 = phi i32 [ %i.q, %bb.f ], [ %2, %bb.g ], [ %2, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !13
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !13
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.bb) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.bf = sub nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bg = icmp sgt i32 %.026, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.j, !prof !48

bb.i:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !36
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %1, i32 noundef %i.bf) ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit
  %i.bm = add nsw i32 %i.be, %.026
  store i32 %i.bm, ptr %i.bd, align 8, !tbaa !36
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %1, i32 noundef %.026)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.i, %bb.j, %bb.f, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.i ], [ %i.br, %bb.j ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.2
}

declare void @_ZN4absl12lts_202505124Cord5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian16FallbackEPt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 !guid !93 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.d

.preheader:                                       ; preds = %bb.a, %bb.c
  %.012.i = phi ptr [ %i.r, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %.0.i = phi i32 [ %i.s, %bb.c ], [ 2, %bb.a ]   ; 3 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not.not.not.i.not = icmp sgt i32 %.0.i, %i.p
  br i1 %.not.not.not.i.not, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread

bb.c:                                             ; preds = %.preheader
  %sext.i = shl i64 %i.o, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.012.i, ptr align 1 %i.l, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.012.i, i64 %i.q
  %i.s = sub nsw i32 %.0.i, %i.p
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.q
  store ptr %i.t, ptr %0, align 8, !tbaa !30
  %i.u = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.u, label %.preheader, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit, !llvm.loop !0

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread: ; preds = %.preheader
  %i.v = zext nneg i32 %.0.i to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.012.i, ptr align 1 %i.l, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread, %bb.b
  %storemerge = phi ptr [ %i.w, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.j, %bb.b ]
  %.0 = phi ptr [ %i.a, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.d, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !30
  %i.x = load i16, ptr %.0, align 1
  store i16 %i.x, ptr %1, align 2, !tbaa !95
  br label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit: ; preds = %bb.c, %bb.d
  %.04 = phi i1 [ true, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian32FallbackEPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 !guid !96 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.d

.preheader:                                       ; preds = %bb.a, %bb.c
  %.012.i = phi ptr [ %i.r, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %.0.i = phi i32 [ %i.s, %bb.c ], [ 4, %bb.a ]   ; 3 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not.not.not.i.not = icmp sgt i32 %.0.i, %i.p
  br i1 %.not.not.not.i.not, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread

bb.c:                                             ; preds = %.preheader
  %sext.i = shl i64 %i.o, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.012.i, ptr align 1 %i.l, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.012.i, i64 %i.q
  %i.s = sub nsw i32 %.0.i, %i.p
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.q
  store ptr %i.t, ptr %0, align 8, !tbaa !30
  %i.u = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.u, label %.preheader, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit, !llvm.loop !0

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread: ; preds = %.preheader
  %i.v = zext nneg i32 %.0.i to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.012.i, ptr align 1 %i.l, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread, %bb.b
  %storemerge = phi ptr [ %i.w, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.j, %bb.b ]
  %.0 = phi ptr [ %i.a, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.d, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !30
  %i.x = load i32, ptr %.0, align 1
  store i32 %i.x, ptr %1, align 4, !tbaa !13
  br label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit: ; preds = %bb.c, %bb.d
  %.04 = phi i1 [ true, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 !guid !97 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 7
  br i1 %i.i, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

.preheader:                                       ; preds = %bb.a, %bb.c
  %.012.i = phi ptr [ %i.r, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %.0.i = phi i32 [ %i.s, %bb.c ], [ 8, %bb.a ]   ; 3 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not.not.not.i.not = icmp sgt i32 %.0.i, %i.p
  br i1 %.not.not.not.i.not, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread

bb.c:                                             ; preds = %.preheader
  %sext.i = shl i64 %i.o, 32
end_hunk_1
