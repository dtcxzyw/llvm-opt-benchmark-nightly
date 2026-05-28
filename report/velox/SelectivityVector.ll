inline.NumInlined: 426
inline.NumDeleted: 235
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.facebook::velox::SelectivityVector" = type <{ %"class.std::vector", i32, i32, i32, %"class.std::optional", [2 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"struct.facebook::velox::detail::VeloxCheckFailArgs" = type { ptr, i64, ptr, ptr, ptr, ptr, i8 }
%"class.folly::BasicFixedString" = type { [8 x i8], i64 }
%"class.folly::BasicFixedString.3" = type { [14 x i8], i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.fmt::v11::detail::format_arg_store" = type { [2 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.20 }
%union.anon.20 = type { i128 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.anon.14 = type <{ ptr, ptr, i8, [7 x i8] }>
%class.anon.15 = type <{ ptr, ptr, i8, [7 x i8] }>

$_ZN8facebook5velox17SelectivityVectorD2Ev = comdat any

$_ZNK8facebook5velox17SelectivityVector13countSelectedEv = comdat any

$_ZN8facebook5velox4bits8copyBitsEPKmmPmmm = comdat any

$_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm = comdat any

$_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = comdat any

$_ZN8facebook5velox10error_code13kInvalidStateE = comdat any

@_ZZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty = internal global %"class.facebook::velox::SelectivityVector" zeroinitializer, align 8
@_ZGVZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 36, ptr @.str.1, ptr @.str.2, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str = private unnamed_addr constant [63 x i8] c"/opt-bench/work/velox/velox/velox/vector/SelectivityVector.cpp\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"toString\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"maxSelectedRowsToPrint >= 0\00", align 1
@_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = linkonce_odr constant %"class.folly::BasicFixedString" { [8 x i8] c"RUNTIME\00", i64 7 }, comdat, align 8
@_ZN8facebook5velox10error_code13kInvalidStateE = linkonce_odr constant %"class.folly::BasicFixedString.3" { [14 x i8] c"INVALID_STATE\00", i64 13 }, comdat, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"({} vs. {})\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" out of \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c" rows selected between \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef nonnull align 8 dereferenceable(38) ptr @_ZN8facebook5velox17SelectivityVector5emptyEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) @_ZZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty, i8 0, i64 36, i1 false)
  store i16 256, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty, i64 36), align 4
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox17SelectivityVectorD2Ev, ptr nonnull @_ZZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN8facebook5velox17SelectivityVector5emptyEvE6kEmpty
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox17SelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(38) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox17SelectivityVector5emptyEi(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::SelectivityVector") align 8 initializes((0, 36), (37, 38)) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.b, align 1, !tbaa !13
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %0, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr null, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.g = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.f

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %1, ptr %i.o, align 8, !tbaa !18
  store i32 0, ptr %i.n, align 4, !tbaa !26
  store i32 0, ptr %i.m, align 8, !tbaa !27
  store i16 256, ptr %i.p, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox17SelectivityVector8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(38) %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.a = tail call noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %1) ; 2 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !28

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !29
  store i32 %2, ptr %3, align 16, !tbaa !32, !noalias !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.c, align 16, !tbaa !32, !noalias !29
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.3, i64 11, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !29
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.3) #20
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 16 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.a)
          to label %bb.f unwind label %bb.ai      ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.4, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.n)
          to label %bb.g unwind label %bb.ai      ; 2 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.5, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %i.r)
          to label %bb.h unwind label %bb.ai      ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.6, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %i.v)
          to label %bb.i unwind label %bb.ai      ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.x = icmp sgt i32 %i.a, 0
  %i.y = icmp ne i32 %2, 0
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.j, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13, !range !37, !noundef !38
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.k

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.0.in.pre.i.i = load i8, ptr %i.aa, align 4, !tbaa !39, !range !37
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !26
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !27  ; 6 uses
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !18
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ak = and i32 %i.ag, 2147483584               ; 3 uses
  %i.al = zext nneg i32 %i.ak to i64
  %.not37.i.i.not.i.i125.not = icmp eq i32 %i.ak, 0
  br i1 %.not37.i.i.not.i.i125.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i126, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %indvars.iv.i.i126 = phi i64 [ %indvars.iv.next.i.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.am = lshr exact i64 %indvars.iv.i.i126, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !40

.critedge.i.i.i.i:                                ; preds = %bb.o, %bb.n
  %.not38.i.i.i.i = icmp eq i32 %i.ag, %i.ak
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i
  %i.aq = lshr i32 %i.ag, 6
  %i.ar = and i32 %i.ag, 63
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.as
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %.demorgan.i.i = or i64 %i.av, %notmask.i40.i.i.i.i
  %i.aw = icmp eq i64 %.demorgan.i.i, -1
  %i.ax = zext i1 %i.aw to i16
  %i.ay = or disjoint i16 %i.ax, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.p, %.critedge.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.l ], [ 256, %bb.k ], [ 257, %bb.m ], [ 257, %.critedge.i.i.i.i ], [ %i.ay, %bb.p ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.aa, align 4
  %i.az = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.az, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ba = load i32, ptr %i.q, align 4, !tbaa !26  ; 3 uses
  %i.bb = load i32, ptr %i.u, align 8, !tbaa !27
  %.not.i = icmp slt i32 %i.ba, %i.bb
  br i1 %.not.i, label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel", label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel": ; preds = %bb.q
  %i.bc = add nsw i32 %2, -1                      ; 2 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.ba)
          to label %.noexc13.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

.noexc13.peel:                                    ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel"
  %exitcond74.peel.not = icmp eq i32 %i.bc, 0
  br i1 %exitcond74.peel.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.r

bb.r:                                             ; preds = %.noexc13.peel
  %i.be = add nsw i32 %i.ba, 1                    ; 2 uses
  %i.bf = load i32, ptr %i.u, align 8, !tbaa !27
  %.not18.i.peel = icmp slt i32 %i.be, %i.bf
  br i1 %.not18.i.peel, label %.lr.ph.i.peel.next, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.s:                                             ; preds = %.noexc13
  %i.bg = add nuw nsw i32 %.8, 1
  %i.bh = add nsw i32 %.0516.i, 1                 ; 2 uses
  %i.bi = load i32, ptr %i.u, align 8, !tbaa !27
  %.not18.i = icmp slt i32 %i.bh, %i.bi
  br i1 %.not18.i, label %.lr.ph.i.peel.next, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", !llvm.loop !42

.lr.ph.i.peel.next:                               ; preds = %bb.r, %bb.s
  %.8 = phi i32 [ %i.bg, %bb.s ], [ 1, %bb.r ]    ; 2 uses
  %.0516.i = phi i32 [ %i.bh, %bb.s ], [ %i.be, %bb.r ] ; 2 uses
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i" unwind label %.loopexit.loopexit ; 0 uses

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i": ; preds = %.lr.ph.i.peel.next
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %.0516.i)
          to label %.noexc13 unwind label %.loopexit.loopexit ; 0 uses

.noexc13:                                         ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i"
  %exitcond74.not = icmp eq i32 %.8, %i.bc
  br i1 %exitcond74.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.s

bb.t:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bl = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.bm = load i32, ptr %i.q, align 4, !tbaa !26  ; 6 uses
  %i.bn = load i32, ptr %i.u, align 8, !tbaa !27  ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bm, %i.bn
  br i1 %.not.i.i.i.i, label %bb.u, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.u:                                             ; preds = %bb.t
  %i.bo = add i32 %i.bm, 63                       ; 2 uses
  %i.bp = srem i32 %i.bo, 64
  %i.bq = sub nsw i32 %i.bo, %i.bp                ; 6 uses
  %i.br = and i32 %i.bn, -64                      ; 7 uses
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bt = ashr i32 %i.bn, 6
  %i.bu = and i32 %i.bn, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bv
  %i.bw = xor i64 %notmask.i.i.i.i.i, -1
  %i.bx = sub nsw i32 %i.bq, %i.bm                ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.by
  %i.bz = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ca = sub nsw i32 64, %i.bx
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.bz, %i.cb
  %i.cd = and i64 %i.cc, %i.bw
  %i.ce = sext i32 %i.bt to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !16
  %i.ch = and i64 %i.cd, %i.cg                    ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i.peel"

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i.peel": ; preds = %bb.v
  %i.ci = add nsw i32 %2, -1                      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector8toStringB5cxx11Ei:bb.a
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or disjoint i32 %i.di, %i.ds
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.dt)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc17:                                         ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i"
  %exitcond.not = icmp eq i32 %.0, %i.dj
  br i1 %exitcond.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.ab

bb.ab:                                            ; preds = %.noexc17
  %i.dv = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.dw = add i64 %.013.i44.i.i.i.i, -2
  %i.dx = and i64 %i.dw, %.013.i44.i.i.i.i        ; 2 uses
  %.not12.i47.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not12.i47.i.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i", label %.peel.next, !llvm.loop !45

"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i": ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.1 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 1, %bb.aa ], [ %i.dv, %bb.ab ] ; 2 uses
  %i.dy = add nsw i32 %i.bq, 64                   ; 2 uses
  %.not3769.i.i.i.i = icmp sgt i32 %i.dy, %i.br
  br i1 %.not3769.i.i.i.i, label %.critedge.i.i.i7.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i", %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %.2 = phi i32 [ %.4, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %.1, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i" ] ; 2 uses
  %i.dz = phi i32 [ %i.ep, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.dy, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i" ] ; 2 uses
  %.070.i.i.i.i = phi i32 [ %i.dz, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.bq, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i" ]
  %i.ea = sdiv i32 %.070.i.i.i.i, 64              ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !16 ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i49.i.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i
  %i.ee = shl nsw i32 %i.ea, 6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.preheader.i50.i.i.i.i
  %.3 = phi i32 [ %.2, %.preheader.i50.i.i.i.i ], [ %i.el, %bb.ae ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.ed, %.preheader.i50.i.i.i.i ], [ %i.eo, %bb.ae ] ; 3 uses
  %i.ef = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = icmp sgt i32 %.3, 0
  br i1 %i.ei, label %bb.ad, label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i52.i.i.i.i"

bb.ad:                                            ; preds = %bb.ac
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i52.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i52.i.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.eh)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc19:                                         ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i52.i.i.i.i"
  %i.el = add nsw i32 %.3, 1                      ; 3 uses
  %i.em = icmp slt i32 %i.el, %2
  br i1 %i.em, label %bb.ae, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.ae:                                            ; preds = %.noexc19
  %i.en = add i64 %.012.i.i.i.i.i, -1
  %i.eo = and i64 %i.en, %.012.i.i.i.i.i          ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not11.i.i.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.ac, !llvm.loop !46

"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %bb.ae, %.lr.ph.i.i.i.i
  %.4 = phi i32 [ %.2, %.lr.ph.i.i.i.i ], [ %i.el, %bb.ae ] ; 2 uses
  %i.ep = add nsw i32 %i.dz, 64                   ; 2 uses
  %.not37.i.i.i.i = icmp sgt i32 %i.ep, %i.br
  br i1 %.not37.i.i.i.i, label %.critedge.i.i.i7.i, label %.lr.ph.i.i.i.i, !llvm.loop !47

.critedge.i.i.i7.i:                               ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i"
  %.5 = phi i32 [ %.1, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i" ], [ %.4, %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ]
  %.not38.i.i.i8.i = icmp eq i32 %i.bn, %i.br
  br i1 %.not38.i.i.i8.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.i7.i
  %i.eq = ashr i32 %i.bn, 6
  %i.er = and i32 %i.bn, 63
  %i.es = zext nneg i32 %i.er to i64
  %notmask.i53.i.i.i.i = shl nsw i64 -1, %i.es
  %i.et = xor i64 %notmask.i53.i.i.i.i, -1
  %i.eu = sext i32 %i.eq to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.ex = and i64 %i.ew, %i.et                    ; 2 uses
  %.not.i54.i.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i54.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %.preheader.i55.i.i.i.i

.preheader.i55.i.i.i.i:                           ; preds = %bb.af, %bb.ah
  %.6 = phi i32 [ %i.fe, %bb.ah ], [ %.5, %bb.af ] ; 2 uses
  %.013.i58.i.i.i.i = phi i64 [ %i.fh, %bb.ah ], [ %i.ex, %bb.af ] ; 3 uses
  %i.ey = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.013.i58.i.i.i.i, i1 true)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = or disjoint i32 %i.br, %i.ez
  %i.fb = icmp sgt i32 %.6, 0
  br i1 %i.fb, label %bb.ag, label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i"

bb.ag:                                            ; preds = %.preheader.i55.i.i.i.i
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i": ; preds = %bb.ag, %.preheader.i55.i.i.i.i
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.fa)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc21:                                         ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i"
  %i.fe = add nsw i32 %.6, 1                      ; 2 uses
  %i.ff = icmp slt i32 %i.fe, %2
  br i1 %i.ff, label %bb.ah, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.ah:                                            ; preds = %.noexc21
  %i.fg = add nsw i64 %.013.i58.i.i.i.i, -1
  %i.fh = and i64 %i.fg, %.013.i58.i.i.i.i        ; 2 uses
  %.not12.i61.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not12.i61.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %.preheader.i55.i.i.i.i, !llvm.loop !48

bb.ai:                                            ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit:                               ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i", %.lr.ph.i.peel.next
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit.split-lp:                      ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel"
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit:             ; preds = %.preheader.i.i.i.i.i.peel.next, %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i"
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i.peel"
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ag, %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i"
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i52.i.i.i.i", %bb.ad
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.peel.next, %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i"
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i.peel"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit": ; preds = %.noexc17, %.noexc19, %.noexc21, %bb.ah, %.noexc15, %bb.x, %bb.s, %.noexc13, %.noexc17.peel, %.noexc15.peel, %bb.w, %.noexc13.peel, %bb.r, %bb.q, %bb.t, %bb.v, %.critedge.i.i.i7.i, %bb.af, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fj, ptr %0, align 8, !tbaa !55, !alias.scope !56
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fk, align 8, !tbaa !57, !alias.scope !56
  store i8 0, ptr %i.fj, align 8, !tbaa !32, !alias.scope !56
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58, !noalias !56 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fm, null
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !56 ; 2 uses
  %i.fp = icmp ugt ptr %i.fm, %i.fo
  %.08.i.i.i = select i1 %i.fp, ptr %i.fm, ptr %i.fo ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !62, !noalias !56 ; 2 uses
  %i.fs = ptrtoint ptr %.08.i.i.i to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fr, i64 noundef %i.fu)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !56 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fj
  br i1 %i.fy, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ak
  %i.fz = load i64, ptr %i.fj, align 8, !tbaa !32, !alias.scope !56
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #19
  br label %.body

bb.al:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ak

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.al, %bb.aj
  %i.gc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gc, ptr %5, align 8, !tbaa !63
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ge = getelementptr i8, ptr %i.gc, i64 -24
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds i8, ptr %5, i64 %i.gf
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !63
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.gh, ptr %i.j, align 8, !tbaa !63
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gi, align 8, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !33 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gi, align 8, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gp) #18
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gq, ptr %5, align 8, !tbaa !63
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gs = getelementptr i8, ptr %i.gq, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr %5, i64 %i.gt
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.gv, align 8, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body:                                            ; preds = %bb.ak, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ai
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fi, %bb.ai ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp77, %.loopexit.loopexit.split-lp ], [ %lpad.loopexit49, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit52, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit76, %.loopexit.loopexit ], [ %lpad.loopexit70, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.fw, %bb.ak ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.am

bb.am:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr %i.a, align 4, !range !37
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27   ; 7 uses
  %.not.i.i = icmp slt i32 %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.k, 63                         ; 2 uses
  %i.o = srem i32 %i.n, 64                        ; 3 uses
  %i.p = sub nsw i32 %i.n, %i.o                   ; 10 uses
  %i.q = and i32 %i.m, -64                        ; 5 uses
  %i.r = icmp slt i32 %i.q, %i.p
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = ashr i32 %i.m, 6
  %i.t = and i32 %i.m, 63
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i, -1
  %i.w = sub nsw i32 %i.p, %i.k                   ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i.i.i.i, -1
  %i.z = sub nsw i32 64, %i.w
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl i64 %i.y, %i.aa
  %i.ac = and i64 %i.ab, %i.v
  %i.ad = sext i32 %i.s to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = and i64 %i.ac, %i.af
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %.not32.i.i = icmp eq i32 %i.k, %i.p
  br i1 %.not32.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sdiv i32 %i.k, 64
  %i.ai = sub nsw i32 %i.p, %i.k                  ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35.i.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35.i.i, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = sext i32 %i.ah to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = and i64 %i.aq, %i.an
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar)
  %i.at = trunc nuw nsw i64 %i.as to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.at, %bb.g ]  ; 4 uses
  %i.au = add nsw i32 %i.p, 64                    ; 4 uses
  %.not3342.i.i = icmp sgt i32 %i.au, %i.q
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.av = add i32 %i.k, 191
  %i.aw = sub i32 %i.av, %i.o
  %i.ax = or disjoint i32 %i.q, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.ax)
  %i.ay = add i32 %i.o, %smax
  %i.az = add i32 %i.ay, -128
  %i.ba = sub i32 %i.az, %i.k                     ; 3 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ba, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %i.ba, 960
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bc, 12
  %n.vec = and i32 %i.bc, 134217712               ; 4 uses
  %i.bd = shl i32 %n.vec, 6                       ; 2 uses
  %i.be = add i32 %i.au, %i.bd
  %i.bf = add i32 %i.p, %i.bd
  %i.bg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bg, %vector.ph ], [ %i.fe, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ff, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fg, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %i.bh = shl i32 %index, 6
  %i.bi = add i32 %i.p, %i.bh                     ; 5 uses
  %i.bj = add i32 %i.bi, 64
  %i.bk = add i32 %i.bi, 128
  %i.bl = add i32 %i.bi, 192
  %i.bm = sdiv i32 %i.bi, 64
  %i.bn = sdiv i32 %i.bj, 64
  %i.bo = sdiv i32 %i.bk, 64
  %i.bp = sdiv i32 %i.bl, 64
  %i.bq = sext i32 %i.bm to i64
  %i.br = sext i32 %i.bn to i64
  %i.bs = sext i32 %i.bo to i64
  %i.bt = sext i32 %i.bp to i64
  %i.bu = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %i.bv = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bw = add <4 x i32> %i.bv, <i32 256, i32 320, i32 384, i32 448>
  %i.bx = sdiv <4 x i32> %i.bw, splat (i32 64)    ; 4 uses
  %i.by = add <4 x i32> %i.bv, <i32 512, i32 576, i32 640, i32 704>
  %i.bz = sdiv <4 x i32> %i.by, splat (i32 64)    ; 4 uses
  %i.ca = add <4 x i32> %i.bv, <i32 768, i32 832, i32 896, i32 960>
  %i.cb = sdiv <4 x i32> %i.ca, splat (i32 64)    ; 4 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bq
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.br
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bs
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bt
  %i.cg = extractelement <4 x i32> %i.bx, i64 0
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ch
  %i.cj = extractelement <4 x i32> %i.bx, i64 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ck
  %i.cm = extractelement <4 x i32> %i.bx, i64 2
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cn
  %i.cp = extractelement <4 x i32> %i.bx, i64 3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cq
  %i.cs = extractelement <4 x i32> %i.bz, i64 0
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ct
  %i.cv = extractelement <4 x i32> %i.bz, i64 1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cw
  %i.cy = extractelement <4 x i32> %i.bz, i64 2
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cz
  %i.db = extractelement <4 x i32> %i.bz, i64 3
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dc
  %i.de = extractelement <4 x i32> %i.cb, i64 0
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.df
  %i.dh = extractelement <4 x i32> %i.cb, i64 1
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.di
  %i.dk = extractelement <4 x i32> %i.cb, i64 2
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dl
  %i.dn = extractelement <4 x i32> %i.cb, i64 3
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.do
  %i.dq = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.dr = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.ds = load i64, ptr %i.ce, align 8, !tbaa !16
  %i.dt = load i64, ptr %i.cf, align 8, !tbaa !16
  %i.du = insertelement <4 x i64> poison, i64 %i.dq, i64 0
  %i.dv = insertelement <4 x i64> %i.du, i64 %i.dr, i64 1
  %i.dw = insertelement <4 x i64> %i.dv, i64 %i.ds, i64 2
  %i.dx = insertelement <4 x i64> %i.dw, i64 %i.dt, i64 3
  %i.dy = load i64, ptr %i.ci, align 8, !tbaa !16
  %i.dz = load i64, ptr %i.cl, align 8, !tbaa !16
  %i.ea = load i64, ptr %i.co, align 8, !tbaa !16
  %i.eb = load i64, ptr %i.cr, align 8, !tbaa !16
  %i.ec = insertelement <4 x i64> poison, i64 %i.dy, i64 0
  %i.ed = insertelement <4 x i64> %i.ec, i64 %i.dz, i64 1
  %i.ee = insertelement <4 x i64> %i.ed, i64 %i.ea, i64 2
  %i.ef = insertelement <4 x i64> %i.ee, i64 %i.eb, i64 3
  %i.eg = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.eh = load i64, ptr %i.cx, align 8, !tbaa !16
  %i.ei = load i64, ptr %i.da, align 8, !tbaa !16
  %i.ej = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.ek = insertelement <4 x i64> poison, i64 %i.eg, i64 0
  %i.el = insertelement <4 x i64> %i.ek, i64 %i.eh, i64 1
  %i.em = insertelement <4 x i64> %i.el, i64 %i.ei, i64 2
  %i.en = insertelement <4 x i64> %i.em, i64 %i.ej, i64 3
  %i.eo = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.ep = load i64, ptr %i.dj, align 8, !tbaa !16
  %i.eq = load i64, ptr %i.dm, align 8, !tbaa !16
  %i.er = load i64, ptr %i.dp, align 8, !tbaa !16
  %i.es = insertelement <4 x i64> poison, i64 %i.eo, i64 0
  %i.et = insertelement <4 x i64> %i.es, i64 %i.ep, i64 1
  %i.eu = insertelement <4 x i64> %i.et, i64 %i.eq, i64 2
  %i.ev = insertelement <4 x i64> %i.eu, i64 %i.er, i64 3
  %i.ew = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.dx)
  %i.ex = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ef)
  %i.ey = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.en)
  %i.ez = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ev)
  %i.fa = trunc nuw nsw <4 x i64> %i.ew to <4 x i32>
  %i.fb = trunc nuw nsw <4 x i64> %i.ex to <4 x i32>
  %i.fc = trunc nuw nsw <4 x i64> %i.ey to <4 x i32>
  %i.fd = trunc nuw nsw <4 x i64> %i.ez to <4 x i32>
  %i.fe = add <4 x i32> %vec.phi, %i.fa           ; 2 uses
  %i.ff = add <4 x i32> %vec.phi10, %i.fb         ; 2 uses
  %i.fg = add <4 x i32> %vec.phi11, %i.fc         ; 2 uses
  %i.fh = add <4 x i32> %vec.phi12, %i.fd         ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.fi = icmp eq i32 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ff, %i.fe
  %bin.rdx13 = add <4 x i32> %i.fg, %bin.rdx
  %bin.rdx14 = add <4 x i32> %i.fh, %bin.rdx13
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx14) ; 3 uses
  %cmp.n = icmp eq i32 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.fj, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec17 = and i32 %i.bc, 134217724             ; 3 uses
  %i.fk = shl i32 %n.vec17, 6                     ; 2 uses
  %i.fl = add i32 %i.au, %i.fk
  %i.fm = add i32 %i.p, %i.fk
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi19 = phi <4 x i32> [ %i.fn, %vec.epilog.ph ], [ %i.gp, %vec.epilog.vector.body ]
  %i.fo = shl i32 %index18, 6
  %i.fp = add i32 %i.p, %i.fo                     ; 4 uses
  %i.fq = add i32 %i.fp, 64
  %i.fr = add i32 %i.fp, 128
  %i.fs = add i32 %i.fp, 192
  %i.ft = sdiv i32 %i.fp, 64
  %i.fu = sdiv i32 %i.fq, 64
  %i.fv = sdiv i32 %i.fr, 64
  %i.fw = sdiv i32 %i.fs, 64
  %i.fx = sext i32 %i.ft to i64
  %i.fy = sext i32 %i.fu to i64
  %i.fz = sext i32 %i.fv to i64
  %i.ga = sext i32 %i.fw to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fx
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fy
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fz
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ga
  %i.gf = load i64, ptr %i.gb, align 8, !tbaa !16
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !16
  %i.gh = load i64, ptr %i.gd, align 8, !tbaa !16
  %i.gi = load i64, ptr %i.ge, align 8, !tbaa !16
  %i.gj = insertelement <4 x i64> poison, i64 %i.gf, i64 0
  %i.gk = insertelement <4 x i64> %i.gj, i64 %i.gg, i64 1
  %i.gl = insertelement <4 x i64> %i.gk, i64 %i.gh, i64 2
  %i.gm = insertelement <4 x i64> %i.gl, i64 %i.gi, i64 3
  %i.gn = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.gm)
  %i.go = trunc nuw nsw <4 x i64> %i.gn to <4 x i32>
  %i.gp = add <4 x i32> %vec.phi19, %i.go         ; 2 uses
  %index.next20 = add nuw i32 %index18, 4         ; 2 uses
  %i.gq = icmp eq i32 %index.next20, %n.vec17
  br i1 %i.gq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gp) ; 2 uses
  %cmp.n21 = icmp eq i32 %i.bc, %n.vec17
  br i1 %cmp.n21, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %.0.i, %iter.check ], [ %i.fj, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  %.ph25 = phi i32 [ %i.au, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ]
  %.043.i.i.ph = phi i32 [ %i.p, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.1.i = phi i32 [ %.0.i, %bb.h ], [ %i.gr, %vec.epilog.middle.block ], [ %i.fj, %middle.block ], [ %i.ha, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %i.m, %i.q
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %bb.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.gs = phi i32 [ %i.ha, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.gt = phi i32 [ %i.hb, %.lr.ph.i.i ], [ %.ph25, %.lr.ph.i.i.preheader ] ; 2 uses
  %.043.i.i = phi i32 [ %i.gt, %.lr.ph.i.i ], [ %.043.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.gu = sdiv i32 %.043.i.i, 64
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !16
  %i.gy = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gx)
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = add nsw i32 %i.gs, %i.gz                ; 2 uses
  %i.hb = add nsw i32 %i.gt, 64                   ; 2 uses
  %.not33.i.i = icmp sgt i32 %i.hb, %i.q
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !72

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.hc = ashr i32 %i.m, 6
  %i.hd = and i32 %i.m, 63
  %i.he = zext nneg i32 %i.hd to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.he
  %i.hf = xor i64 %notmask.i36.i.i, -1
  %i.hg = sext i32 %i.hc to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !16
  %i.hj = and i64 %i.hi, %i.hf
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.e
  %.2.i = phi i32 [ 0, %bb.e ], [ %.1.i, %bb.i ]
  %.sink50.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.hj, %bb.i ]
  %i.hk = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %.sink50.i.i)
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = add nsw i32 %.2.i, %i.hl
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %bb.c, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.hm, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !18
  %i.hp = icmp eq i32 %.3.i, %i.ho
  %.sroa.0.0.insert.ext = zext i1 %i.hp to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %.3.i, %_ZN8facebook5velox4bits9countBitsEPKmii.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox17SelectivityVector9copyNullsEPmPKm(ptr noundef nonnull align 8 captures(none) dereferenceable(38) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !39, !range !37
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i26.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i26.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i27, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i27, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !40

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %2, i64 noundef 0, ptr noundef %1, i64 noundef 0, i64 noundef %i.af)
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27 ; 7 uses
  %.not.i = icmp slt i32 %i.ai, %i.ak
  br i1 %.not.i, label %bb.j, label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %i.ai, 63                       ; 2 uses
  %i.am = srem i32 %i.al, 64
  %i.an = sub nsw i32 %i.al, %i.am                ; 6 uses
  %i.ao = and i32 %i.ak, -64                      ; 4 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = ashr i32 %i.ak, 6
  %i.ar = and i32 %i.ak, 63
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i, -1
  %i.au = sub nsw i32 %i.an, %i.ai                ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i.i, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = and i64 %i.az, %i.at                    ; 3 uses
  %i.bb = sext i32 %i.aq to i64                   ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %i.be = xor i64 %i.ba, -1                       ; 2 uses
  %i.bf = and i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bb ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bi = xor i64 %i.bh, -1
  %i.bj = and i64 %i.bd, %i.bi                    ; 2 uses
  %i.bk = and i64 %i.bj, %i.ba
  %i.bl = or disjoint i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !16
  %i.bm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bp = or i64 %i.bo, %i.be
  %i.bq = and i64 %i.bp, %i.bn
  %i.br = or i64 %i.bq, %i.bj
  %i.bs = and i64 %i.br, %i.ba
  %i.bt = or disjoint i64 %i.bs, %i.bf
  store i64 %i.bt, ptr %i.bc, align 8, !tbaa !16
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.l:                                             ; preds = %bb.j
  %.not32.i = icmp eq i32 %i.ai, %i.an
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = sdiv i32 %i.ai, 64
  %i.bv = sub nsw i32 %i.an, %i.ai                ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i.i35.i, -1
  %i.by = sub nsw i32 64, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %i.bx, %i.bz                    ; 3 uses
  %i.cb = sext i32 %i.bu to i64                   ; 3 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %i.ce = xor i64 %i.ca, -1                       ; 2 uses
  %i.cf = and i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cb ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.ci = xor i64 %i.ch, -1
  %i.cj = and i64 %i.cd, %i.ci                    ; 2 uses
  %i.ck = and i64 %i.cj, %i.ca
  %i.cl = or disjoint i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.cc, align 8, !tbaa !16
  %i.cm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cb
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !16
  %i.co = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.cp = or i64 %i.co, %i.ce
  %i.cq = and i64 %i.cp, %i.cn
  %i.cr = or i64 %i.cq, %i.cj
  %i.cs = and i64 %i.cr, %i.ca
  %i.ct = or disjoint i64 %i.cs, %i.cf
  store i64 %i.ct, ptr %i.cc, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cu = add nsw i32 %i.an, 64                   ; 2 uses
  %.not3337.i = icmp sgt i32 %i.cu, %i.ao
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.not34.i = icmp eq i32 %i.ak, %i.ao
  br i1 %.not34.i, label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit", label %bb.o

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.cv = phi i32 [ %i.dj, %.lr.ph.i ], [ %i.cu, %bb.n ] ; 2 uses
  %.038.i = phi i32 [ %i.cv, %.lr.ph.i ], [ %i.an, %bb.n ]
  %i.cw = sdiv i32 %.038.i, 64
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cx ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cx ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dc = xor i64 %i.db, -1
  %i.dd = and i64 %i.cz, %i.dc                    ; 2 uses
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !16
  %i.de = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cx
  %i.df = load i64, ptr %i.de, align 8, !tbaa !16
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dh = and i64 %i.dg, %i.df
  %i.di = or i64 %i.dh, %i.dd
  store i64 %i.di, ptr %i.cy, align 8, !tbaa !16
  %i.dj = add nsw i32 %i.cv, 64                   ; 2 uses
  %.not33.i = icmp sgt i32 %i.dj, %i.ao
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !73

bb.o:                                             ; preds = %._crit_edge.i
  %i.dk = ashr i32 %i.ak, 6
  %i.dl = and i32 %i.ak, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i36.i = shl nsw i64 -1, %i.dm          ; 3 uses
  %i.dn = xor i64 %notmask.i36.i, -1              ; 2 uses
  %i.do = sext i32 %i.dk to i64                   ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.do ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !16 ; 2 uses
  %i.dr = and i64 %i.dq, %notmask.i36.i           ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.do ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.du = xor i64 %i.dt, -1
  %i.dv = and i64 %i.dq, %i.du                    ; 2 uses
  %i.dw = and i64 %i.dv, %i.dn
  %i.dx = or disjoint i64 %i.dw, %i.dr
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !16
  %i.dy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.ea = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.eb = or i64 %i.ea, %notmask.i36.i
  %i.ec = and i64 %i.eb, %i.dz
  %i.ed = or i64 %i.ec, %i.dv
  %i.ee = and i64 %i.ed, %i.dn
  %i.ef = or disjoint i64 %i.ee, %i.dr
  store i64 %i.ef, ptr %i.dp, align 8, !tbaa !16
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit": ; preds = %bb.o, %._crit_edge.i, %bb.k, %bb.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat {
bb.a:
  %.not64 = icmp ult i64 %4, 64
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = and i64 %1, 7                            ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.d = and i64 %3, 7                            ; 6 uses
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1                         ; 2 uses
  %.not61 = icmp eq i64 %i.d, 0
  %i.g = trunc nuw nsw i64 %i.d to i32
  %notmask23.i = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask23.i, 255
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = xor i64 %i.i, -1                         ; 2 uses
  %i.k = sub nuw nsw i64 64, %i.d                 ; 2 uses
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us
  %i.l = phi i64 [ %i.v, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us.us = phi i64 [ %i.l, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.m = add i64 %.065.us.us, %1
  %i.n = lshr exact i64 %i.m, 3
  %i.o = add i64 %i.n, %i.a
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %.065.us.us, %3
  %i.s = lshr exact i64 %i.r, 3
  %i.t = add i64 %i.s, %i.c
  %i.u = inttoptr i64 %i.t to ptr
  store i64 %i.q, ptr %i.u, align 8, !tbaa !16
  %i.v = add i64 %i.l, 64                         ; 2 uses
  %.not.us.us = icmp ugt i64 %i.v, %4
  br i1 %.not.us.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, !llvm.loop !74

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us
  %i.w = phi i64 [ %i.ak, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us = phi i64 [ %i.w, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.x = add i64 %.065.us, %1
  %i.y = lshr i64 %i.x, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !32
  %i.ae = zext i8 %i.ad to i64
  %i.af = tail call i64 @llvm.fshr.i64(i64 %i.ae, i64 %i.ab, i64 %i.b)
  %i.ag = add i64 %.065.us, %3
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = add i64 %i.ah, %i.c
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !16
  %i.ak = add i64 %i.w, 64                        ; 2 uses
  %.not.us = icmp ugt i64 %i.ak, %4
  br i1 %.not.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us, !llvm.loop !74

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67: ; preds = %.lr.ph.split, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67
  %i.al = phi i64 [ %i.bh, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ 64, %.lr.ph.split ] ; 3 uses
  %.065.us66 = phi i64 [ %i.al, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.am = add i64 %.065.us66, %1
  %i.an = lshr exact i64 %i.am, 3
  %i.ao = add i64 %i.an, %i.a
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16 ; 2 uses
  %i.ar = add i64 %.065.us66, %3
  %i.as = lshr i64 %i.ar, 3
  %i.at = add i64 %i.as, %i.c
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = and i64 %i.av, %i.f
  %i.ax = shl i64 %i.aq, %i.d
  %i.ay = or i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.au, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !32
  %i.bb = zext i8 %i.ba to i64
  %i.bc = and i64 %i.bb, %i.j
  %i.bd = lshr i64 %i.aq, %i.k
  %i.be = and i64 %i.bd, %i.i
  %i.bf = or disjoint i64 %i.bc, %i.be
  %i.bg = trunc nuw i64 %i.bf to i8
  store i8 %i.bg, ptr %i.az, align 8, !tbaa !32
  %i.bh = add i64 %i.al, 64                       ; 2 uses
  %.not.us69 = icmp ugt i64 %i.bh, %4
  br i1 %.not.us69, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, !llvm.loop !74

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit: ; preds = %.lr.ph.split, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit
  %i.bi = phi i64 [ %i.ci, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ], [ 64, %.lr.ph.split ] ; 3 uses
  %.065 = phi i64 [ %i.bi, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.bj = add i64 %.065, %1
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add i64 %i.bk, %i.a
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !32
  %i.bq = zext i8 %i.bp to i64
  %i.br = tail call i64 @llvm.fshr.i64(i64 %i.bq, i64 %i.bn, i64 %i.b) ; 2 uses
  %i.bs = add i64 %.065, %3
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add i64 %i.bt, %i.c
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.bx = and i64 %i.bw, %i.f
  %i.by = shl i64 %i.br, %i.d
  %i.bz = or i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bv, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !32
  %i.cc = zext i8 %i.cb to i64
  %i.cd = and i64 %i.cc, %i.j
  %i.ce = lshr i64 %i.br, %i.k
  %i.cf = and i64 %i.ce, %i.i
  %i.cg = or disjoint i64 %i.cd, %i.cf
  %i.ch = trunc nuw i64 %i.cg to i8
  store i8 %i.ch, ptr %i.ca, align 8, !tbaa !32
  %i.ci = add i64 %i.bi, 64                       ; 2 uses
  %.not = icmp ugt i64 %i.ci, %4
  br i1 %.not, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit, !llvm.loop !74

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.al, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ %i.w, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ %i.l, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ %i.bi, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ] ; 4 uses
  %i.cj = or disjoint i64 %.0.lcssa, 32           ; 3 uses
  %.not47 = icmp ugt i64 %i.cj, %4
  br i1 %.not47, label %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ck = add i64 %.0.lcssa, %1
  %i.cl = ptrtoint ptr %0 to i64
  %i.cm = lshr i64 %i.ck, 3
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = and i64 %1, 7                           ; 2 uses
  %.not.i49 = icmp eq i64 %i.cq, 0
  br i1 %.not.i49, label %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !32
  %i.ct = zext i8 %i.cs to i32
  %i.cu = trunc nuw nsw i64 %i.cq to i32
  %i.cv = tail call i32 @llvm.fshr.i32(i32 %i.ct, i32 %i.cp, i32 %i.cu)
  br label %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit: ; preds = %bb.b, %bb.c
  %.0.i50 = phi i32 [ %i.cp, %bb.b ], [ %i.cv, %bb.c ]
  %i.cw = add i64 %.0.lcssa, %3
  %i.cx = zext i32 %.0.i50 to i64                 ; 2 uses
  %i.cy = ptrtoint ptr %2 to i64
  %i.cz = lshr i64 %i.cw, 3
  %i.da = add i64 %i.cz, %i.cy
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = and i64 %3, 7                           ; 5 uses
  %i.dd = shl nuw nsw i64 4294967295, %i.dc
  %i.de = load i32, ptr %i.db, align 4, !tbaa !3
  %i.df = zext i32 %i.de to i64
  %i.dg = xor i64 %i.dd, -1
  %i.dh = and i64 %i.df, %i.dg
  %i.di = shl nuw nsw i64 %i.cx, %i.dc
  %i.dj = or i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr %i.db, align 4, !tbaa !3
  %.not62 = icmp eq i64 %i.dc, 0
  br i1 %.not62, label %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dc to i32
  %notmask23.i51 = shl nsw i32 -1, %i.dm
  %i.dn = load i8, ptr %i.dl, align 4, !tbaa !32
  %i.do = zext i8 %i.dn to i64
  %i.dp = xor i32 %notmask23.i51, 255
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = xor i64 %i.dq, -1
  %i.ds = and i64 %i.do, %i.dr
  %i.dt = sub nuw nsw i64 32, %i.dc
  %i.du = lshr i64 %i.cx, %i.dt
  %i.dv = and i64 %i.du, %i.dq
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = trunc nuw i64 %i.dw to i8
  store i8 %i.dx, ptr %i.dl, align 4, !tbaa !32
  br label %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit

_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit: ; preds = %bb.d, %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %i.cj, %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit ], [ %i.cj, %bb.d ] ; 4 uses
  %i.dy = add nuw i64 %.1, 16                     ; 3 uses
  %.not48 = icmp ugt i64 %i.dy, %4
  br i1 %.not48, label %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_:bb.a
  %i.hb = and i64 %.023.i.i.i.i.i, 63
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = and i64 %i.ha, %i.hc
  %.not.i.i.i45.i.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i45.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph24.i.i.i.i.i.split
  %sext.i.i.i.i.i = shl i64 %.023.i.i.i.i.i, 32
  %i.he = ashr exact i64 %sext.i.i.i.i.i, 30
  %i.hf = getelementptr inbounds i8, ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3  ; 2 uses
  %i.hh = load ptr, ptr %3, align 8, !tbaa !8
  %i.hi = sext i32 %i.hg to i64
  %i.hj = lshr i64 %i.hi, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !32
  %i.hm = trunc i32 %i.hg to i8
  %i.hn = and i8 %i.hm, 7
  %i.ho = shl nuw i8 1, %i.hn
  %i.hp = or i8 %i.ho, %i.hl
  store i8 %i.hp, ptr %i.hk, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i": ; preds = %bb.w, %.lr.ph24.i.i.i.i.i.split
  %i.hq = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.gh
  br i1 %i.hr, label %.lr.ph24.i.i.i.i.i.split, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !80

bb.x:                                             ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i ], [ %i.ip, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i" ] ; 3 uses
  %i.hs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = or disjoint i32 %i.ge, %i.ht            ; 2 uses
  br i1 %.not.i.i44.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = lshr i64 %i.hv, 6
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !16
  %i.hz = and i64 %i.hv, 63
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.hy, %i.ia
  %.not.i.i18.i.i.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i18.i.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ic = sext i32 %i.hu to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3  ; 2 uses
  %i.if = load ptr, ptr %3, align 8, !tbaa !8
  %i.ig = sext i32 %i.ie to i64
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !32
  %i.ik = trunc i32 %i.ie to i8
  %i.il = and i8 %i.ik, 7
  %i.im = shl nuw i8 1, %i.il
  %i.in = or i8 %i.im, %i.ij
  store i8 %i.in, ptr %i.ii, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i": ; preds = %bb.z, %bb.y
  %i.io = add i64 %.01522.i.i.i.i.i, -1
  %i.ip = and i64 %i.io, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i47.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.x, !llvm.loop !81

"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", %bb.v, %bb.u
  %i.iq = add nsw i32 %i.fz, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.iq, %i.cw
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.u, !llvm.loop !82

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ir = ashr i32 %i.cs, 6
  %i.is = and i32 %i.cs, 63
  %i.it = zext nneg i32 %i.is to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.it
  %i.iu = xor i64 %notmask.i48.i.i.i.i, -1
  %i.iv = sext i32 %i.ir to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !16
  %i.iy = and i64 %i.ix, %i.iu                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.aa
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 37
  %.not.i.i52.i.i.i.i = icmp eq ptr %2, null
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i
  %.011.i51.i.i.i.i = phi i64 [ %i.iy, %.preheader.i50.i.i.i.i ], [ %i.jx, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i" ] ; 3 uses
  %i.ja = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i, i1 true)
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = or disjoint i32 %i.cw, %i.jb            ; 2 uses
  br i1 %.not.i.i52.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = lshr i64 %i.jd, 6
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !16
  %i.jh = and i64 %i.jd, 63
  %i.ji = shl nuw i64 1, %i.jh
  %i.jj = and i64 %i.jg, %i.ji
  %.not.i.i.i53.i.i.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i.i53.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jk = sext i32 %i.jc to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3  ; 2 uses
  %i.jn = load ptr, ptr %3, align 8, !tbaa !8
  %i.jo = sext i32 %i.jm to i64
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !32
  %i.js = trunc i32 %i.jm to i8
  %i.jt = and i8 %i.js, 7
  %i.ju = shl nuw i8 1, %i.jt
  %i.jv = or i8 %i.ju, %i.jr
  store i8 %i.jv, ptr %i.jq, align 1, !tbaa !32
  store i8 0, ptr %i.iz, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.jw = add nsw i64 %.011.i51.i.i.i.i, -1
  %i.jx = and i64 %i.jw, %.011.i51.i.i.i.i        ; 2 uses
  %.not10.i55.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not10.i55.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %bb.ab, !llvm.loop !79

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us", %bb.h, %bb.j, %bb.l, %._crit_edge.i.i.i.i, %bb.aa
  %i.jy = load ptr, ptr %3, align 8, !tbaa !8     ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !18 ; 6 uses
  %.not.i.i.i3 = icmp sgt i32 %i.ka, 0
  br i1 %.not.i.i.i3, label %bb.ae, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.ae:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"
  %i.kb = and i32 %i.ka, 2147483584               ; 4 uses
  %i.kc = zext nneg i32 %i.kb to i64
  %.not37.i.i.not.i65.not = icmp eq i32 %i.kb, 0
  br i1 %.not37.i.i.not.i65.not, label %.critedge.i.i.i, label %.lr.ph67

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph67
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i466, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i5, %i.kc
  br i1 %.not37.i.i.not.i, label %.lr.ph67, label %.critedge.i.i.i, !llvm.loop !83

.lr.ph67:                                         ; preds = %bb.ae, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i466 = phi i64 [ %indvars.iv.next.i5, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.ae ] ; 3 uses
  %i.kd = lshr exact i64 %indvars.iv.i466, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !16 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !83

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.ae
  %.not38.i.i.i = icmp eq i32 %i.ka, %i.kb
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.i
  %i.kg = lshr i32 %i.ka, 6
  %i.kh = and i32 %i.ka, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.ki
  %i.kj = xor i64 %notmask.i43.i.i.i, -1
  %i.kk = zext nneg i32 %i.kg to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !16
  %i.kn = and i64 %i.km, %i.kj                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.kn, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.af, %.critedge.i.i.i, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ko, align 4, !tbaa !26
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.kp, align 8, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i16 256, ptr %i.kq, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph67
  %i.kr = trunc nuw nsw i64 %indvars.iv.i466 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.af
  %.sink67.i.i.i = phi i64 [ %i.kn, %bb.af ], [ %i.kf, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.kb, %bb.af ], [ %i.kr, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.ks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = or disjoint i32 %.sink65.i.i.i, %i.kt   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.jy, ptr %4, align 8, !tbaa !84
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.kw, align 8, !tbaa !87
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.kx, align 8, !tbaa !88
  store ptr %i.jy, ptr %5, align 8, !tbaa !89
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.ky, align 8, !tbaa !87
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.kz, align 8, !tbaa !91
  %i.la = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ku, i32 noundef %i.ka, ptr noundef nonnull byval(%class.anon.14) align 8 %4, ptr noundef nonnull byval(%class.anon.15) align 8 %5) ; 0 uses
  %i.lb = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.lc = add nsw i32 %i.lb, 1
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.lc, ptr %i.ld, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.le, align 1, !tbaa !13
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !16     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !93

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !16
  store i64 %i.s, ptr %i.d, align 8, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !92
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !93

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %iter.check168

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %iter.check168

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !16
  br label %iter.check168

iter.check168:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check153 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check168
  %min.iters.check155 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check155, label %vec.epilog.ph172, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %n.mod.vf157 = and i64 %i.ag, 12
  %n.vec158 = and i64 %i.ag, 4611686018427387888  ; 4 uses
  %i.ah = shl i64 %n.vec158, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert159 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i64> %broadcast.splatinsert159, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.aj = shl i64 %index162, 3
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.aj ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep163, i64 32
  %i.al = getelementptr i8, ptr %next.gep163, i64 64
  %i.am = getelementptr i8, ptr %next.gep163, i64 96
  store <4 x i64> %broadcast.splat160, ptr %next.gep163, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.ak, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.al, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.am, align 8, !tbaa !16
  %index.next164 = add nuw i64 %index162, 16      ; 2 uses
  %i.an = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.an, label %middle.block165, label %vector.body161, !llvm.loop !94

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.ag, %n.vec158
  br i1 %cmp.n166, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check170

vec.epilog.iter.check170:                         ; preds = %middle.block165
  %min.epilog.iters.check171 = icmp eq i64 %n.mod.vf157, 0
  br i1 %min.epilog.iters.check171, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph172, !prof !70

vec.epilog.ph172:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check170
  %vec.epilog.resume.val167 = phi i64 [ %n.vec158, %vec.epilog.iter.check170 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec174 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ao = shl i64 %n.vec174, 3
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  %broadcast.splatinsert175 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat176 = shufflevector <4 x i64> %broadcast.splatinsert175, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph172
  %index178 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph172 ], [ %index.next180, %vec.epilog.vector.body177 ] ; 2 uses
  %i.aq = shl i64 %index178, 3
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.aq
  store <4 x i64> %broadcast.splat176, ptr %next.gep179, align 8, !tbaa !16
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.ar, label %vec.epilog.middle.block181, label %vec.epilog.vector.body177, !llvm.loop !95

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body177
  %cmp.n182 = icmp eq i64 %i.ag, %n.vec174
  br i1 %cmp.n182, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check168, %vec.epilog.iter.check170, %vec.epilog.middle.block181
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check168 ], [ %i.ai, %vec.epilog.iter.check170 ], [ %i.ap, %vec.epilog.middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !96

bb.k:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %2, %i.l
  br i1 %i.at, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.au = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.aw = shl i64 %2, 3
  %i.ax = add i64 %i.aw, -8
  %i.ay = sub i64 %i.ax, %i.k                     ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.ay, 120
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ba, 12
  %n.vec = and i64 %i.ba, 4611686018427387888     ; 4 uses
  %i.bb = shl i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.d, i64 %i.bb
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bd ; 4 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 32
  %i.bf = getelementptr i8, ptr %next.gep, i64 64
  %i.bg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat, ptr %i.be, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat, ptr %i.bf, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bi = shl i64 %n.vec114, 3
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %broadcast.splatinsert115 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i64> %broadcast.splatinsert115, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = shl i64 %index117, 3
  %next.gep118 = getelementptr i8, ptr %i.d, i64 %i.bk
  store <4 x i64> %broadcast.splat116, ptr %next.gep118, align 8, !tbaa !16
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.ba, %n.vec114
  br i1 %cmp.n120, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !99

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.av, %middle.block ], [ %i.av, %vec.epilog.middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !92
  %i.bn = icmp sgt i64 %i.k, 8
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !93

bb.l:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bo = icmp eq i64 %i.k, 8
  br i1 %i.bo, label %bb.n, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.n:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.bp, ptr %.0.i.i.i.i.i, align 8, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.n, %bb.m, %bb.l
  %i.bq = phi ptr [ %.0.i.i.i.i.i, %bb.n ], [ %.0.i.i.i.i.i, %bb.m ], [ %.pre, %bb.l ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.k
  store ptr %i.br, ptr %i.c, align 8, !tbaa !92
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %iter.check137

iter.check137:                                    ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %i.bs = add i64 %i.f, -8
  %i.bt = sub i64 %i.bs, %i.j                     ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check122 = icmp ult i64 %i.bt, 24
  br i1 %min.iters.check122, label %.lr.ph.i.i.i71.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check137
  %min.iters.check124 = icmp ult i64 %i.bt, 120
  br i1 %min.iters.check124, label %vec.epilog.ph141, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %i.bv, 12
  %n.vec127 = and i64 %i.bv, 4611686018427387888  ; 4 uses
  %i.bw = shl i64 %n.vec127, 3
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %broadcast.splatinsert128 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat129 = shufflevector <4 x i64> %broadcast.splatinsert128, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body130 ] ; 2 uses
  %i.by = shl i64 %index131, 3
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep132, i64 32
  %i.ca = getelementptr i8, ptr %next.gep132, i64 64
  %i.cb = getelementptr i8, ptr %next.gep132, i64 96
  store <4 x i64> %broadcast.splat129, ptr %next.gep132, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat129, ptr %i.bz, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat129, ptr %i.ca, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat129, ptr %i.cb, align 8, !tbaa !16
  %index.next133 = add nuw i64 %index131, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.cc, label %middle.block134, label %vector.body130, !llvm.loop !100

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %i.bv, %n.vec127
  br i1 %cmp.n135, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block134
  %min.epilog.iters.check140 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.i.i.i71.preheader, label %vec.epilog.ph141, !prof !70

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check139
  %vec.epilog.resume.val136 = phi i64 [ %n.vec127, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.bv, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec143, 3
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert144 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i64> %broadcast.splatinsert144, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph141
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body146 ] ; 2 uses
  %i.cf = shl i64 %index147, 3
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.cf
  store <4 x i64> %broadcast.splat145, ptr %next.gep148, align 8, !tbaa !16
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cg, label %vec.epilog.middle.block150, label %vec.epilog.vector.body146, !llvm.loop !101

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body146
  %cmp.n151 = icmp eq i64 %i.bv, %n.vec143
  br i1 %cmp.n151, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block150
  %.06.i.i.i72.ph = phi ptr [ %1, %iter.check137 ], [ %i.bx, %vec.epilog.iter.check139 ], [ %i.ce, %vec.epilog.middle.block150 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ch, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ch, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !102

bb.o:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8, !tbaa !8     ; 5 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.ck = sub i64 %i.f, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3                 ; 4 uses
  %i.cm = sub nsw i64 1152921504606846975, %i.cl
  %i.cn = icmp ult i64 %i.cm, %2
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %2)
  %i.co = add nsw i64 %.sroa.speculated.i, %i.cl  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cl
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %i.cs = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ct = sub i64 %i.cs, %i.cj                    ; 4 uses
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %iter.check199, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.cr, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #21
  br label %iter.check199

iter.check199:                                    ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cw = phi ptr [ %i.cv, %bb.q ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.ct ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.i.i.i75
  %i.cz = load i64, ptr %3, align 8, !tbaa !16    ; 3 uses
  %i.da = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 3 uses
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 5 uses
  %min.iters.check184 = icmp ult i64 %i.da, 24
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check199
  %min.iters.check186 = icmp ult i64 %i.da, 120
  br i1 %min.iters.check186, label %vec.epilog.ph203, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %n.mod.vf188 = and i64 %i.dc, 12
  %n.vec189 = and i64 %i.dc, 4611686018427387888  ; 4 uses
  %i.dd = shl i64 %n.vec189, 3
  %i.de = getelementptr i8, ptr %i.cx, i64 %i.dd
  %broadcast.splatinsert190 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat191 = shufflevector <4 x i64> %broadcast.splatinsert190, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph187
  %index193 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.df = shl i64 %index193, 3
  %next.gep194 = getelementptr i8, ptr %i.cx, i64 %i.df ; 4 uses
  %i.dg = getelementptr i8, ptr %next.gep194, i64 32
  %i.dh = getelementptr i8, ptr %next.gep194, i64 64
  %i.di = getelementptr i8, ptr %next.gep194, i64 96
  store <4 x i64> %broadcast.splat191, ptr %next.gep194, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat191, ptr %i.dg, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat191, ptr %i.dh, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat191, ptr %i.di, align 8, !tbaa !16
  %index.next195 = add nuw i64 %index193, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.dj, label %middle.block196, label %vector.body192, !llvm.loop !103

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.dc, %n.vec189
  br i1 %cmp.n197, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  %min.epilog.iters.check202 = icmp eq i64 %n.mod.vf188, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph203, !prof !70

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec189, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec205 = and i64 %i.dc, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec205, 3
  %i.dl = getelementptr i8, ptr %i.cx, i64 %i.dk
  %broadcast.splatinsert206 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat207 = shufflevector <4 x i64> %broadcast.splatinsert206, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph203
  %index209 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next211, %vec.epilog.vector.body208 ] ; 2 uses
  %i.dm = shl i64 %index209, 3
  %next.gep210 = getelementptr i8, ptr %i.cx, i64 %i.dm
  store <4 x i64> %broadcast.splat207, ptr %next.gep210, align 8, !tbaa !16
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.dn, label %vec.epilog.middle.block212, label %vec.epilog.vector.body208, !llvm.loop !104

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body208
  %cmp.n213 = icmp eq i64 %i.dc, %n.vec205
  br i1 %cmp.n213, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block212
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cx, %iter.check199 ], [ %i.de, %vec.epilog.iter.check201 ], [ %i.dl, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cz, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.do, %i.cy
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !105

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block212, %middle.block196
  %i.dp = icmp sgt i64 %i.ct, 8
  br i1 %i.dp, label %bb.r, label %bb.s, !prof !93

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.ci, i64 %i.ct, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.dq = icmp eq i64 %i.ct, 8
  br i1 %i.dq, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dr = load i64, ptr %i.ci, align 8, !tbaa !16
  store i64 %i.dr, ptr %i.cw, align 8, !tbaa !16
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %2 ; 3 uses
  %i.dt = sub i64 %i.f, %i.cs                     ; 4 uses
  %i.du = icmp sgt i64 %i.dt, 8
  br i1 %i.du, label %bb.u, label %bb.v, !prof !93

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %1, i64 %i.dt, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.dv = icmp eq i64 %i.dt, 8
  br i1 %i.dv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.dw, ptr %i.ds, align 8, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  %.not.i82 = icmp eq ptr %i.ci, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = sub i64 %i.e, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dy) #19
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cw, ptr %0, align 8, !tbaa !8
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !92
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cr
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !12
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block134, %vec.epilog.middle.block150, %middle.block165, %vec.epilog.middle.block181, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.14) align 8 %2, ptr noundef byval(%class.anon.15) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !88, !range !37, !noundef !38
  %i.s = load ptr, ptr %2, align 8, !tbaa !84
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !88, !range !37, !noundef !38
  %i.al = load ptr, ptr %2, align 8, !tbaa !84
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !37
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !88, !range !37, !noundef !38
  %i.bw = load ptr, ptr %2, align 8, !tbaa !84
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !16
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87, !nonnull !38, !align !106
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !93

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !32
  store i8 %i.v, ptr %i.t, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !32
  store i8 %i.w, ptr %i.m, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !57
  %i.x = load ptr, ptr %0, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !32
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !32
  store i8 %i.t, ptr %i.s, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !32
  store i8 %i.x, ptr %i.w, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !33
  store i64 %.0, ptr %i.h, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #19
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  store i64 %.0, ptr %i.d, align 8, !tbaa !32
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !57
  store i8 0, ptr %i.c, align 1, !tbaa !32
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !32
  store i8 %i.s, ptr %i.q, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !57
  %i.u = load ptr, ptr %0, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { cold }

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
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 long", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !15, i64 1}
!14 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !15, i64 1}
!15 = !{!"bool", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!19, !4, i64 24}
!19 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !20, i64 0, !4, i64 24, !4, i64 28, !4, i64 32, !23, i64 36}
!20 = !{!"_ZTSSt6vectorImSaImEE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseImSaImEE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !9, i64 0}
!23 = !{!"_ZTSSt8optionalIbE", !24, i64 0}
!24 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !25, i64 0}
!25 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !14, i64 0}
!26 = !{!19, !4, i64 28}
!27 = !{!19, !4, i64 32}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!31 = distinct !{!31, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !36, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !17, i64 8, !5, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!15, !15, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41, !43}
!43 = !{!"llvm.loop.peeled.count", i32 1}
!44 = distinct !{!44, !41, !43}
!45 = distinct !{!45, !41, !43}
!46 = distinct !{!46, !41}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !41}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!51 = distinct !{!51, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!35, !36, i64 0}
!56 = !{!53, !50}
!57 = !{!34, !17, i64 8}
!58 = !{!59, !36, i64 40}
!59 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !60, i64 56}
!60 = !{!"_ZTSSt6locale", !61, i64 0}
!61 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!62 = !{!59, !36, i64 32}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !6, i64 0}
!65 = !{!66, !17, i64 8}
!66 = !{!"_ZTSSi", !17, i64 8}
!67 = distinct !{!67, !41, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 12}
!71 = distinct !{!71, !41, !68, !69}
!72 = distinct !{!72, !41, !69, !68}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !5, i64 0}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !41}
!83 = distinct !{!83, !41}
!84 = !{!85, !10, i64 0}
!85 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUlimE_", !10, i64 0, !86, i64 8, !15, i64 16}
!86 = !{!"p1 int", !11, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!85, !15, i64 16}
!89 = !{!90, !10, i64 0}
!90 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUliE_", !10, i64 0, !86, i64 8, !15, i64 16}
!91 = !{!90, !15, i64 16}
!92 = !{!9, !10, i64 8}
!93 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!94 = distinct !{!94, !41, !68, !69}
!95 = distinct !{!95, !41, !68, !69}
!96 = distinct !{!96, !41, !69, !68}
!97 = distinct !{!97, !41, !68, !69}
!98 = distinct !{!98, !41, !68, !69}
!99 = distinct !{!99, !41, !69, !68}
!100 = distinct !{!100, !41, !68, !69}
!101 = distinct !{!101, !41, !68, !69}
!102 = distinct !{!102, !41, !69, !68}
!103 = distinct !{!103, !41, !68, !69}
!104 = distinct !{!104, !41, !68, !69}
!105 = distinct !{!105, !41, !69, !68}
!106 = !{i64 4}
end_hunk_2
