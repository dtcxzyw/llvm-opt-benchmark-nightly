inline.NumInlined: 1716
inline.NumDeleted: 657
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::strings_internal::Splitter" = type <{ %"class.std::basic_string_view", %"class.absl::lts_20250512::ByChar", [7 x i8] }>
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::ByChar" = type { i8 }
%"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree" = type { %"struct.google::protobuf::util::(anonymous namespace)::FieldMaskTree::Node" }
%"struct.google::protobuf::util::(anonymous namespace)::FieldMaskTree::Node" = type { %"class.absl::lts_20250512::btree_map" }
%"class.absl::lts_20250512::btree_map" = type { %"class.absl::lts_20250512::container_internal::btree_map_container" }
%"class.absl::lts_20250512::container_internal::btree_map_container" = type { %"class.absl::lts_20250512::container_internal::btree_set_container" }
%"class.absl::lts_20250512::container_internal::btree_set_container" = type { %"class.absl::lts_20250512::container_internal::btree_container" }
%"class.absl::lts_20250512::container_internal::btree_container" = type { %"class.absl::lts_20250512::container_internal::btree" }
%"class.absl::lts_20250512::container_internal::btree" = type { ptr, %"class.absl::lts_20250512::container_internal::CompressedTuple", i64 }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.16" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.16" = type { ptr }
%"class.absl::lts_20250512::container_internal::btree_iterator" = type <{ ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.19" = type { %"struct.std::__uniq_ptr_data.20" }
%"struct.std::__uniq_ptr_data.20" = type { %"class.std::__uniq_ptr_impl.21" }
%"class.std::__uniq_ptr_impl.21" = type { %"class.std::tuple.22" }
%"class.std::tuple.22" = type { %"struct.std::_Tuple_impl.23" }
%"struct.std::_Tuple_impl.23" = type { %"struct.std::_Head_base.26" }
%"struct.std::_Head_base.26" = type { ptr }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.18" }
%"struct.std::_Head_base.18" = type { ptr }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"struct.std::array.69" = type { [16 x %struct.raw_view] }
%struct.raw_view = type { ptr, i64 }
%"class.absl::lts_20250512::strings_internal::SplitIterator" = type <{ i64, i32, [4 x i8], %"class.std::basic_string_view", ptr, %"class.absl::lts_20250512::ByChar", [7 x i8] }>

$_ZN4absl12lts_2025051216strings_internal9JoinRangeIN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESB_RKT_St17basic_string_viewIcS9_E = comdat any

$_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE = comdat any

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/util/field_mask_util.cc\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"source.GetDescriptor() == destination->GetDescriptor()\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"message->GetDescriptor()\00", align 1
@_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE = external local_unnamed_addr constant [19 x i32], align 16
@_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11 = internal constant { ptr, i8, i8, i8, i8 } { ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, i8 0, i8 0, i8 0, i8 1 }, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Cannot find field \22\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\22 in message \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Field \22\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c" is not a singular message field and cannot \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"have sub-fields.\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil8ToStringB5cxx11ERKNS0_9FieldMaskE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN4absl12lts_2025051216strings_internal9JoinRangeIN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESB_RKT_St17basic_string_viewIcS9_E(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 1, ptr nonnull @.str)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil10FromStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_9FieldMaskE(i64 %0, ptr %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  tail call void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %0, ptr %5, align 8, !tbaa !7, !alias.scope !9
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !12, !alias.scope !9
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 44, ptr %i.a, align 8, !tbaa !15, !alias.scope !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !16
  call void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.b = load ptr, ptr %4, align 8, !tbaa !19     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.011.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.011.016, align 8, !tbaa !7 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !12
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.t, %bb.f ]
  %i.u = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %.0.i.i.i)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.w, ptr noundef %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload)
          to label %_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit unwind label %bb.h ; 0 uses

_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit: ; preds = %.noexc
  %i.y = load i32, ptr %i.f, align 4, !tbaa !3
  %i.z = or i32 %i.y, 1
  store i32 %i.z, ptr %i.f, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.h:                                             ; preds = %.noexc, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %4, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit9

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.ab
}

declare void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil20SnakeCaseToCamelCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %0, ptr readonly captures(address) %1, ptr noundef initializes((8, 16)) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = load ptr, ptr %2, align 8, !tbaa !33
  store i8 0, ptr %i.b, align 1, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %.not41 = icmp samesign eq i64 %0, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.02843 = phi i8 [ 0, %.lr.ph ], [ %.230.ph, %bb.l ] ; 2 uses
  %.03242 = phi ptr [ %1, %.lr.ph ], [ %i.af, %bb.l ] ; 2 uses
  %i.e = load i8, ptr %.03242, align 1, !tbaa !15 ; 5 uses
  %i.f = add i8 %i.e, -65
  %or.cond = icmp ult i8 %i.f, 26
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw i8 %.02843 to i1
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = add i8 %i.e, -97
  %or.cond6 = icmp ult i8 %i.h, 26
  br i1 %or.cond6, label %bb.e, label %._crit_edge.loopexit

bb.e:                                             ; preds = %bb.d
  %narrow = add nsw i8 %i.e, -32
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d                   ; 2 uses
  br i1 %i.l, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.f, %bb.e
  %i.n = load i64, ptr %i.d, align 8
  %i.o = select i1 %i.l, i64 15, i64 %i.n
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.g
  %i.q = phi ptr [ %.pre.i, %bb.g ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 %narrow, ptr %i.r, align 1, !tbaa !15
  br label %.sink.split

bb.h:                                             ; preds = %bb.c
  %i.s = icmp eq i8 %i.e, 95
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d                   ; 2 uses
  br i1 %i.w, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34

bb.j:                                             ; preds = %bb.i
  %i.x = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34: ; preds = %bb.j, %bb.i
  %i.y = load i64, ptr %i.d, align 8
  %i.z = select i1 %i.w, i64 15, i64 %i.y
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit36

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.t, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i35 = load ptr, ptr %2, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34, %bb.k
  %i.ab = phi ptr [ %.pre.i35, %bb.k ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store i8 %i.e, ptr %i.ac, align 1, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit36
  %.sink = phi i64 [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit36 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !30
  %i.ad = load ptr, ptr %2, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink
  store i8 0, ptr %i.ae, align 1, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h
  %.230.ph = phi i8 [ 1, %bb.h ], [ 0, %.sink.split ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03242, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.d, %bb.l
  %.not.lcssa.ph = phi i1 [ true, %bb.l ], [ false, %bb.d ], [ false, %bb.b ]
  %.331.ph = phi i8 [ %.230.ph, %bb.l ], [ 1, %bb.d ], [ %.02843, %bb.b ]
  %i.ag = trunc nuw i8 %.331.ph to i1
  %i.ah = xor i1 %i.ag, true
  %i.ai = select i1 %.not.lcssa.ph, i1 %i.ah, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.ai, %._crit_edge.loopexit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil20CamelCaseToSnakeCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %0, ptr readonly captures(address) %1, ptr noundef initializes((8, 16)) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = load ptr, ptr %2, align 8, !tbaa !33
  store i8 0, ptr %i.b, align 1, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %.not31 = icmp samesign eq i64 %0, 0
  br i1 %.not31, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.02132 = phi ptr [ %1, %.lr.ph ], [ %i.al, %bb.l ] ; 2 uses
  %i.e = load i8, ptr %.02132, align 1, !tbaa !15 ; 4 uses
  %.not23.not.not = icmp ne i8 %i.e, 95           ; 3 uses
  br i1 %.not23.not.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = add i8 %i.e, -65
  %or.cond = icmp ult i8 %i.f, 26
  %i.g = load i64, ptr %i.a, align 8, !tbaa !30   ; 7 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !33     ; 3 uses
  %i.j = icmp eq ptr %i.i, %i.d                   ; 4 uses
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util13FieldMaskUtil12ToJsonStringERKNS0_9FieldMaskEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.av = load i64, ptr %i.a, align 8, !tbaa !30  ; 4 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.i                 ; 2 uses
  br i1 %i.ay, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.az = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.f, %bb.e
  %i.ba = load i64, ptr %i.i, align 8
  %i.bb = select i1 %i.ay, i64 15, i64 %i.ba
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.av, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit25.loopexit

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bd = phi ptr [ %.pre.i, %.noexc ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  store i8 44, ptr %i.be, align 1, !tbaa !15
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !30
  %i.bf = load ptr, ptr %1, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw
  store i8 0, ptr %i.bg, align 1, !tbaa !15
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !30
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bh
  br i1 %i.bk, label %.loopexit42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.loopexit42:                                      ; preds = %bb.h, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %.loopexit42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.h
  %i.bl = load ptr, ptr %2, align 8, !tbaa !33
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.bl, i64 noundef %i.bh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit25.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.bn = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.g
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.bp = load i64, ptr %i.g, align 8, !tbaa !15
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = load i32, ptr %i.c, align 8, !tbaa !34
  %i.bs = sext i32 %i.br to i64
  %.not36 = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %.not36, label %.peel.next, label %.loopexit, !llvm.loop !40

.critedge:                                        ; preds = %bb.d, %bb.b
  %i.bt = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.g
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.critedge
  %i.bv = load i64, ptr %i.g, align 8, !tbaa !15
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20.peel, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bx = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ true, %bb.a ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20.peel ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20 ]
  ret i1 %i.bx
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil14FromJsonStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_9FieldMaskE(i64 %0, ptr %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %0, ptr %5, align 8, !tbaa !7, !alias.scope !43
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !12, !alias.scope !43
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 44, ptr %i.a, align 8, !tbaa !15, !alias.scope !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !46
  call void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.b = load ptr, ptr %4, align 8, !tbaa !19     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not32 = icmp eq ptr %i.b, %i.d
  br i1 %.not32, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.sroa.025.033 = phi ptr [ %i.b, %.lr.ph ], [ %i.aj, %.thread ] ; 3 uses
  %.sroa.0.0.copyload23 = load i64, ptr %.sroa.025.033, align 8, !tbaa !7 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload23, 0
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.e, ptr %6, align 8, !tbaa !39
  store i64 0, ptr %i.f, align 8, !tbaa !30
  store i8 0, ptr %i.e, align 8, !tbaa !15
  %i.k = invoke noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil20CamelCaseToSnakeCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %.sroa.0.0.copyload23, ptr %.sroa.6.0.copyload, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.g, label %bb.j

bb.e:                                             ; preds = %.noexc, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %6, align 8, !tbaa !33     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.e, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.q = load ptr, ptr %4, align 8, !tbaa !21     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.g, align 8, !tbaa !24   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %.0.i.i.i)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN6google8protobuf9FieldMask9add_pathsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit unwind label %bb.e

_ZN6google8protobuf9FieldMask9add_pathsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit: ; preds = %.noexc
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !3
  %i.ae = or i32 %i.ad, 1
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf9FieldMask9add_pathsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit, %bb.d
  %i.af = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.j
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.k, label %.thread, label %.critedge.loopexit

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.d
  br i1 %.not, label %.critedge.loopexit, label %bb.b

.critedge.loopexit:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19, %.thread
  %.not.lcssa.ph = phi i1 [ true, %.thread ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19 ]
  %.pre = load ptr, ptr %4, align 8, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.ak = phi ptr [ %i.b, %bb.a ], [ %.pre, %.critedge.loopexit ] ; 3 uses
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not.lcssa.ph, %.critedge.loopexit ]
  %.not.i.i.i21 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit22, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit22

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit22: ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil19GetFieldDescriptorsEPKNS0_10DescriptorESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EE(ptr noundef %0, i64 %1, ptr %2, ptr noundef captures(address_is_null) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.a, ptr %i.b, align 8, !tbaa !53
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %1, ptr %6, align 8, !tbaa !7, !alias.scope !54
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !12, !alias.scope !54
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 46, ptr %i.d, align 8, !tbaa !15, !alias.scope !54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !57
  call void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(18) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.e = load ptr, ptr %5, align 8, !tbaa !19     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 5 uses
  %.not4550 = icmp eq ptr %i.e, %i.g              ; 2 uses
  %i.h = icmp eq ptr %0, null
  %or.cond51 = or i1 %.not4550, %i.h
  br i1 %or.cond51, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.02053.us = phi ptr [ %i.u, %bb.f ], [ %0, %.lr.ph ]
  %.sroa.037.052.us = phi ptr [ %i.w, %bb.f ], [ %i.e, %.lr.ph ] ; 4 uses
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.037.052.us, i64 8
  %.sroa.5.0.copyload.us = load ptr, ptr %.sroa.5.0..sroa_idx.us, align 8, !tbaa !12
  %.sroa.03.0.copyload.us = load i64, ptr %.sroa.037.052.us, align 8, !tbaa !7
  %i.k = invoke noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %.02053.us, i64 %.sroa.03.0.copyload.us, ptr %.sroa.5.0.copyload.us)
          to label %bb.c unwind label %.loopexit.split.us ; 4 uses

bb.c:                                             ; preds = %.lr.ph.split.us
  %.not46.us = icmp eq ptr %i.k, null
  br i1 %.not46.us, label %.critedge, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit.us

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit.us: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 32
  %.not47.us = icmp eq i8 %i.n, 0
  br i1 %.not47.us, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.p = load i8, ptr %i.o, align 2, !tbaa !60
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !70
  %i.t = icmp eq i32 %i.s, 10
  br i1 %i.t, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %bb.f unwind label %.loopexit.split.us ; 2 uses

.thread:                                          ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit.us, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.037.052.us, i64 16
  %.not45.us76 = icmp eq ptr %i.v, %i.g
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.037.052.us, i64 16 ; 2 uses
  %.not45.us = icmp eq ptr %i.w, %i.g             ; 2 uses
  %i.x = icmp eq ptr %i.u, null
  %or.cond.us = or i1 %.not45.us, %i.x
  br i1 %or.cond.us, label %.critedge, label %.lr.ph.split.us

.loopexit.split.us:                               ; preds = %bb.e, %.lr.ph.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.02053 = phi ptr [ %i.bh, %bb.q ], [ %0, %.lr.ph ]
  %.sroa.037.052 = phi ptr [ %i.bj, %bb.q ], [ %i.e, %.lr.ph ] ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.037.052, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12
  %.sroa.03.0.copyload = load i64, ptr %.sroa.037.052, align 8, !tbaa !7
  %i.y = invoke noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %.02053, i64 %.sroa.03.0.copyload, ptr %.sroa.5.0.copyload)
          to label %bb.g unwind label %.loopexit.split ; 6 uses

bb.g:                                             ; preds = %.lr.ph.split
  %.not46 = icmp eq ptr %i.y, null
  br i1 %.not46, label %.critedge, label %bb.i

.loopexit.split:                                  ; preds = %.lr.ph.split, %bb.p, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  %i.z = load ptr, ptr %5, align 8, !tbaa !21     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %lpad.phi

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !53  ; 4 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.y, ptr %i.af, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !53
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %3, align 8, !tbaa !49    ; 4 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 6 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.l, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.an = ashr exact i64 %i.al, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 1152921504606846975)
  %i.ar = select i1 %i.ap, i64 1152921504606846975, i64 %i.aq ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i29)
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #22
          to label %.noexc30 unwind label %.loopexit.split ; 4 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store ptr %i.y, ptr %i.au, align 8, !tbaa !73
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.m, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.m:                                             ; preds = %.noexc30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.m, %.noexc30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #20
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.at, ptr %3, align 8, !tbaa !49
  store ptr %i.aw, ptr %i.i, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ax, ptr %i.j, align 8, !tbaa !72
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, 32
  %.not47 = icmp eq i8 %i.ba, 0
  br i1 %.not47, label %bb.o, label %.thread79

bb.o:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !60
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !70
  %i.bg = icmp eq i32 %i.bf, 10
  br i1 %i.bg, label %bb.p, label %.thread79

bb.p:                                             ; preds = %bb.o
  %i.bh = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.y)
          to label %bb.q unwind label %.loopexit.split ; 2 uses

.thread79:                                        ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.037.052, i64 16
  %.not4581 = icmp eq ptr %i.bi, %i.g
  br label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.037.052, i64 16 ; 2 uses
  %.not45 = icmp eq ptr %i.bj, %i.g               ; 2 uses
  %i.bk = icmp eq ptr %i.bh, null
  %or.cond = or i1 %.not45, %i.bk
  br i1 %or.cond, label %.critedge, label %.lr.ph.split

.critedge:                                        ; preds = %bb.g, %bb.q, %bb.c, %bb.f, %.thread79, %.thread, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit
  %.not45.lcssa = phi i1 [ %.not4550, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit ], [ %.not45.us76, %.thread ], [ false, %bb.c ], [ %.not4581, %.thread79 ], [ %.not45.us, %bb.f ], [ false, %bb.g ], [ %.not45, %bb.q ]
  %i.bl = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit32, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !23
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit32

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit32: ; preds = %.critedge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.not45.lcssa
}

declare noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160), i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil24GetFieldMaskForAllFieldsEPKNS0_10DescriptorEPNS0_9FieldMaskE(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6google8protobuf9FieldMask9add_pathsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6google8protobuf9FieldMask9add_pathsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6google8protobuf9FieldMask9add_pathsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85   ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.k, align 1
  %i.l = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.m = xor i64 %i.l, -1
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  br label %_ZN6google8protobuf9FieldMask9add_pathsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZN6google8protobuf9FieldMask9add_pathsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit

_ZN6google8protobuf9FieldMask9add_pathsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.s, %bb.c ], [ %i.t, %bb.d ]
  %i.u = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %.0.i.i.i) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull %i.n, i64 noundef %i.l) ; 0 uses
  %i.y = load i32, ptr %i.f, align 4, !tbaa !3
  %i.z = or i32 %i.y, 1
  store i32 %i.z, ptr %i.f, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !75
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil15ToCanonicalFormERKNS0_9FieldMaskEPS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %2, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = add i64 %i.h, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.j, ptr %i.f, ptr %i.n
  %i.o = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.r, ptr %i.p)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !34
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, !llvm.loop !95

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit: ; preds = %.noexc, %bb.a
  invoke void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 0, ptr nonnull @.str.7, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull %1)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit unwind label %.loopexit.split-lp

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit: ; preds = %bb.c
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.v = icmp eq i64 %.val6, 0
  br i1 %i.v, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit
  %.val5 = load ptr, ptr %2, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val5), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.w = icmp eq i64 %.val4, 0
  br i1 %i.w, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %2, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit8

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit8: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil5UnionERKNS0_9FieldMaskES5_PS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %3, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = add i64 %i.h, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.j, ptr %i.f, ptr %i.n
  %i.o = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %i.r, ptr %i.p)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !34
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, !llvm.loop !95

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit: ; preds = %.noexc, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !34
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i8, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit13

.lr.ph.i8:                                        ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.noexc12, %.lr.ph.i8
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph.i8 ], [ %indvars.iv.next.i11, %.noexc12 ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = add i64 %i.aa, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i9
  %.0.i.i.i.i.i.i10 = select i1 %i.ac, ptr %i.y, ptr %i.ag
  %i.ah = load ptr, ptr %.0.i.i.i.i.i.i10, align 8, !tbaa !38 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %i.ak, ptr %i.ai)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.c
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i9, 1 ; 2 uses
  %i.al = load i32, ptr %i.v, align 8, !tbaa !34
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next.i11, %i.am
  br i1 %i.an, label %bb.c, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit13, !llvm.loop !95

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit13: ; preds = %.noexc12, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  invoke void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit13
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 0, ptr nonnull @.str.7, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull %2)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit: ; preds = %bb.d
  %.val7 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.ao = icmp eq i64 %.val7, 0
  br i1 %i.ao, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit
  %.val6 = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val6), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  store ptr %i.cz, ptr %.055226.i, align 8, !tbaa !103, !noalias !121
  br label %.preheader

.preheader:                                       ; preds = %.noexc106.i, %bb.q
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.x
  %.sroa.03.0.i.in.i.i.i.i.i = phi ptr [ %i.dt, %bb.x ], [ %.055226.i, %.preheader ]
  %.sroa.03.0.i.i.i.i.i.i = load ptr, ptr %.sroa.03.0.i.in.i.i.i.i.i, align 8, !tbaa !103, !noalias !121 ; 10 uses
  %i.db = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.db, align 1, !tbaa !15, !noalias !128 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.s
  %i.dc = zext i8 %.val.i.i.i.i.i.i.i.i to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 16
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.0198.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %.0207.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.de = add i64 %.0207.i.i.i.i.i.i.i.i.i, %.0198.i.i.i.i.i.i.i.i.i
  %i.df = lshr i64 %i.de, 1                       ; 4 uses
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30, !noalias !128 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.di) ; 2 uses
  %i.dj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !33, !noalias !128
  %i.dl = call i32 @memcmp(ptr noundef %i.dk, ptr noundef nonnull readonly %i.cx, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i) #19, !noalias !128 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  %i.dn = sub i64 %i.di, %i.cv
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dn, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.do = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i
  %i.dp = add nuw i64 %i.df, 1
  br label %bb.w

bb.v:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.222.i.i.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.df, %bb.v ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.u ], [ %.0198.i.i.i.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.t

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.w, %bb.s
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.222.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i.i = load i8, ptr %i.dq, align 1, !tbaa !15, !noalias !128 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %._crit_edge.i.i.i.i.i.i

bb.x:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 256
  %i.ds = and i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i, 255
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  br label %bb.s

bb.y:                                             ; preds = %bb.v
  %.pre.i.i = and i64 %i.df, 255
  br label %bb.al

._crit_edge.i.i.i.i.i.i:                          ; preds = %.loopexit.i.i.i.i.i.i
  %i.du = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 10 ; 3 uses
  %i.dv = trunc i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !121
  store ptr %.sroa.03.0.i.i.i.i.i.i, ptr %4, align 8, !noalias !121
  store i32 %i.dv, ptr %i.ah, align 8, !noalias !121
  %i.dw = icmp eq i8 %.val.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %i.dw, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dx = icmp ult i8 %.val.i.i.i.i.i.i.i.i, 6
  br i1 %i.dx, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dy = shl nuw nsw i8 %.val.i.i.i.i.i.i.i.i, 1
  %i.dz = call i8 @llvm.umin.i8(i8 %i.dy, i8 6)   ; 2 uses
  %narrow.i.i.i.i.i.i = mul nuw i8 %i.dz, 40
  %i.ea = zext i8 %narrow.i.i.i.i.i.i to i64
  %i.eb = add nuw nsw i64 %i.ea, 16
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #22
          to label %.noexc107.i unwind label %.loopexit.split-lp174.loopexit.split-lp.i ; 11 uses

.noexc107.i:                                      ; preds = %bb.aa
  store ptr %i.ec, ptr %i.ec, align 8, !tbaa !103, !noalias !121
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 0, ptr %i.ed, align 8, !tbaa !15, !noalias !121
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  store i8 0, ptr %i.ee, align 1, !tbaa !15, !noalias !121
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 10 ; 2 uses
  store i8 0, ptr %i.ef, align 2, !tbaa !15, !noalias !121
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 11
  store i8 %i.dz, ptr %i.eg, align 1, !tbaa !15, !noalias !121
  store ptr %i.ec, ptr %4, align 8, !tbaa !131, !noalias !121
  %.val13.i.i.i.i.i.i.i.i = load i8, ptr %i.du, align 1, !tbaa !15, !noalias !121 ; 2 uses
  %i.eh = zext i8 %.val13.i.i.i.i.i.i.i.i to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.eh, 40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val13.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc107.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  br label %.lr.ph.i.i.i11.i.i.i.i.i.i

.lr.ph.i.i.i11.i.i.i.i.i.i:                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ek, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.0122.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ff, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ei, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.el, ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !121
  %i.em = load ptr, ptr %.0122.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !30, !noalias !121 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19, !noalias !121
  store i64 %i.eo, ptr %i.e, align 8, !tbaa !7, !noalias !121
  %i.ep = icmp ugt i64 %i.eo, 15
  br i1 %i.ep, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i11.i.i.i.i.i.i
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc108.i unwind label %.loopexit.split-lp174.loopexit.i ; 2 uses

.noexc108.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.eq, ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121
  %i.er = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !121
  store i64 %i.er, ptr %i.el, align 8, !tbaa !15, !noalias !121
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.noexc108.i, %.lr.ph.i.i.i11.i.i.i.i.i.i
  %i.es = phi ptr [ %i.eq, %.noexc108.i ], [ %i.el, %.lr.ph.i.i.i11.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.eo, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = load i8, ptr %i.em, align 1, !tbaa !15, !noalias !121
  store i8 %i.et, ptr %i.es, align 1, !tbaa !15, !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.em, i64 %i.eo, i1 false), !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !121 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !30, !noalias !121
  %i.ew = load ptr, ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !15, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19, !noalias !121
  %i.ey = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ez, align 8, !tbaa !107, !noalias !121
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ey, align 8, !tbaa !107, !noalias !121
  store ptr null, ptr %i.ez, align 8, !tbaa !107, !noalias !121
  %i.fa = load ptr, ptr %.0122.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !15, !noalias !121
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #20, !noalias !121, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 40
  %.not.i.i.i12.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.ej
  br i1 %.not.i.i.i12.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i11.i.i.i.i.i.i, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.du, align 1, !tbaa !15, !noalias !121
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc107.i
  %.val.i.i13.i.i.i.i.i.i = phi i8 [ %.val.pre.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i ], [ 0, %.noexc107.i ]
  store i8 %.val.i.i13.i.i.i.i.i.i, ptr %i.ef, align 1, !tbaa !15, !noalias !121
  store i8 0, ptr %i.du, align 1, !tbaa !15, !noalias !121
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef nonnull %.sroa.03.0.i.i.i.i.i.i), !noalias !121
  store ptr %i.ec, ptr %i.co, align 8, !tbaa !103, !noalias !121
  store ptr %i.ec, ptr %.055226.i, align 8, !tbaa !103, !noalias !121
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %.055226.i, ptr noundef %4)
          to label %.noexc109.i unwind label %.loopexit.split-lp174.loopexit.split-lp.i

.noexc109.i:                                      ; preds = %bb.ad
  %.pre.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !131, !noalias !121
  %.pre20.i.i.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !135, !noalias !121
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc109.i, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.fh = phi i32 [ %.pre20.i.i.i.i.i, %.noexc109.i ], [ %i.dv, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i ], [ %i.dv, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fi = phi ptr [ %.pre.i.i.i.i.i, %.noexc109.i ], [ %i.ec, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i ], [ %.sroa.03.0.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %i.fj = trunc i32 %i.fh to i8                   ; 2 uses
  %i.fk = and i32 %i.fh, 255                      ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fi, i64 10     ; 3 uses
  %.val23.i.i.i.i.i.i.i = load i8, ptr %i.fl, align 1, !tbaa !15, !noalias !121 ; 2 uses
  %i.fm = icmp ugt i8 %.val23.i.i.i.i.i.i.i, %i.fj
  %i.fn = zext nneg i32 %i.fk to i64              ; 3 uses
  br i1 %i.fm, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %.loopexit177.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fp = getelementptr [40 x i8], ptr %i.fo, i64 %i.fn ; 3 uses
  %narrow.i.i.i.i.i.i.i = sub nuw i8 %.val23.i.i.i.i.i.i.i, %i.fj
  %i.fq = zext i8 %narrow.i.i.i.i.i.i.i to i64    ; 2 uses
  %.idx.i.i.i.i.i.i.i105.i = mul nuw nsw i64 %i.fq, 40
  %i.fr = getelementptr i8, ptr %i.fp, i64 40
  %i.fs = getelementptr [40 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = getelementptr i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i.i105.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.fu, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i ], [ %i.fs, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %.0142.i.i.i.i.i.i.i.i = phi ptr [ %i.fv, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i ], [ %i.ft, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fu = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -40 ; 5 uses
  %i.fv = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -40 ; 4 uses
  %i.fw = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -24 ; 3 uses
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !39, !noalias !121
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -32
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !30, !noalias !121 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !121
  store i64 %i.fz, ptr %i.d, align 8, !tbaa !7, !noalias !121
  %i.ga = icmp ugt i64 %i.fz, 15
  br i1 %i.ga, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc110.i unwind label %.loopexit173.i ; 2 uses

.noexc110.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.gb, ptr %i.fu, align 8, !tbaa !33, !noalias !121
  %i.gc = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !121
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !15, !noalias !121
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc110.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gd = phi ptr [ %i.gb, %.noexc110.i ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.fz, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = load i8, ptr %i.fx, align 1, !tbaa !15, !noalias !121
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !15, !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %i.fx, i64 %i.fz, i1 false), !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !121 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -32
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !30, !noalias !121
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !33, !noalias !121
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !15, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !121
  %i.gj = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -8
  %i.gk = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gk, align 8, !tbaa !107, !noalias !121
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gj, align 8, !tbaa !107, !noalias !121
  store ptr null, ptr %i.gk, align 8, !tbaa !107, !noalias !121
  %i.gl = load ptr, ptr %i.fv, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !15, !noalias !121
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #20, !noalias !121, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i16.i.i.i.i.i.i = icmp eq ptr %i.fv, %i.fp
  br i1 %.not.i.i16.i.i.i.i.i.i, label %.loopexit177.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !136

.loopexit177.i:                                   ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i, %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %i.fn ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 3 uses
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !39, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !121
  store i64 %i.cv, ptr %i.c, align 8, !tbaa !7, !noalias !121
  %i.gt = icmp ugt i16 %.0.copyload.i.i.i.i, 15
  br i1 %i.gt, label %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i:           ; preds = %.loopexit177.i
  %i.gu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc112.i unwind label %.loopexit.split-lp174.loopexit.split-lp.i ; 2 uses

.noexc112.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i
  store ptr %i.gu, ptr %i.gr, align 8, !tbaa !33, !noalias !121
  %i.gv = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !121
  store i64 %i.gv, ptr %i.gs, align 8, !tbaa !15, !noalias !121
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i:    ; preds = %.noexc112.i, %.loopexit177.i
  %i.gw = phi ptr [ %i.gu, %.noexc112.i ], [ %i.gs, %.loopexit177.i ] ; 2 uses
  switch i16 %.0.copyload.i.i.i.i, label %bb.ai [
    i16 1, label %bb.ah
    i16 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i
  %i.gx = load i8, ptr %i.cx, align 1, !tbaa !15, !noalias !121
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !15, !noalias !121
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr nonnull readonly align 1 %i.cx, i64 %i.cv, i1 false), !noalias !121
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i
  %i.gy = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !121 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !30, !noalias !121
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !33, !noalias !121
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  store i8 0, ptr %i.hb, align 1, !tbaa !15, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !121
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store ptr null, ptr %i.hc, align 8, !tbaa !137, !noalias !121
  %.val21.i.i.i.i.i.i.i = load i8, ptr %i.fl, align 1, !tbaa !15, !noalias !121
  %i.hd = add i8 %.val21.i.i.i.i.i.i.i, 1         ; 3 uses
  store i8 %i.hd, ptr %i.fl, align 1, !tbaa !15, !noalias !121
  %i.he = getelementptr i8, ptr %i.fi, i64 11
  %.val24.i.i.i.i.i.i.i = load i8, ptr %i.he, align 1, !tbaa !15, !noalias !121
  %.not.i26.i.i.i.i.i.i.i = icmp eq i8 %.val24.i.i.i.i.i.i.i, 0
  br i1 %.not.i26.i.i.i.i.i.i.i, label %bb.aj, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i
  %i.hf = zext i8 %i.hd to i32
  %i.hg = add nuw nsw i32 %i.fk, 1                ; 2 uses
  %i.hh = icmp samesign ult i32 %i.hg, %i.hf
  br i1 %i.hh, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fi, i64 256 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i = phi i8 [ %i.hd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.hj, %bb.ak ] ; 3 uses
  %i.hj = add i8 %.01.i.i.i.i.i.i.i, -1           ; 3 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !103, !noalias !121 ; 2 uses
  %i.hn = zext i8 %.01.i.i.i.i.i.i.i to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hn
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !103, !noalias !121
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i8 %.01.i.i.i.i.i.i.i, ptr %i.hp, align 1, !tbaa !15, !noalias !121
  %i.hq = zext i8 %i.hj to i32
  %i.hr = icmp samesign ult i32 %i.hg, %i.hq
  br i1 %i.hr, label %bb.ak, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i, !llvm.loop !139

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %bb.aj, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i
  %i.hs = load i64, ptr %i.ch, align 8, !tbaa !94, !noalias !121
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.ch, align 8, !tbaa !94, !noalias !121
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %4, align 8, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !121
  br label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i, %bb.y
  %.pre-phi14.i.i = phi i64 [ %.pre.i.i, %bb.y ], [ %i.fn, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.sink.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i.i, %bb.y ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i ]
  %i.hu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.sink.i.i.i.i.i, i64 %.pre-phi14.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 48 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !107 ; 4 uses
  store ptr %i.cp, ptr %i.hv, align 8, !tbaa !107
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a

bb.ax:                                            ; preds = %bb.aw, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i
  %.pre-phi279.i = phi i1 [ true, %bb.aw ], [ %i.jb, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ]
  %.pn3.i.i.i.i = phi ptr [ %.055.val89.i, %bb.aw ], [ %.sroa.03.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ] ; 2 uses
  %.pn1.i.i.i.i = phi i64 [ %i.jd, %bb.aw ], [ %i.il, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ]
  %i.je = icmp eq ptr %.pn3.i.i.i.i, %.055.val89.i
  %i.jf = select i1 %i.je, i1 %.pre-phi279.i, i1 false
  br i1 %i.jf, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, label %bb.az

bb.ay:                                            ; preds = %bb.ba
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.az:                                            ; preds = %bb.ax
  %i.jh = and i64 %.pn1.i.i.i.i, 255
  %i.ji = getelementptr inbounds nuw [40 x i8], ptr %.pn3.i.i.i.i, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %.val84.i = load ptr, ptr %i.jj, align 8, !tbaa !107
  %i.jk = load i8, ptr %i.bs, align 2, !tbaa !60
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !70
  %i.jo = icmp eq i32 %i.jn, 10
  br i1 %i.jo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jp = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bq)
          to label %._crit_edge.i unwind label %bb.ay

._crit_edge.i:                                    ; preds = %bb.ba
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !21
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i, %bb.az
  %i.jq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.id, %bb.az ] ; 2 uses
  %.261.ph.i = phi ptr [ %i.jp, %._crit_edge.i ], [ %.059225.i, %bb.az ]
  %indvars.iv.next270.i = add nuw nsw i64 %indvars.iv269.i, 1 ; 2 uses
  %i.jr = load ptr, ptr %i.ag, align 8, !tbaa !116
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = sub i64 %i.js, %i.jt                    ; 2 uses
  %i.jv = ashr exact i64 %i.ju, 4
  %.not77.i = icmp ugt i64 %i.jv, %indvars.iv.next270.i
  br i1 %.not77.i, label %.lr.ph227.i, label %.critedge.i, !llvm.loop !146

.critedge.i:                                      ; preds = %bb.bb
  %i.jw = lshr i64 %i.ju, 4
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit170.i, %.critedge.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %.loopexit170.i ], [ %i.jw, %.critedge.i ]
  %indvars.iv.next273.i = add i64 %indvars.iv272.i, -1 ; 3 uses
  %i.jx = and i64 %indvars.iv.next273.i, 2147483648
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.bd, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i

bb.bd:                                            ; preds = %bb.bc
  %i.jz = and i64 %indvars.iv.next273.i, 2147483647 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.jz ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !107 ; 7 uses
  %i.kc = load ptr, ptr %6, align 8, !tbaa !21
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %i.jz ; 2 uses
  %.val97.i = load i64, ptr %i.kd, align 8        ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 8
  %.val98.i = load ptr, ptr %i.ke, align 8
  %.val.i.i = load ptr, ptr %i.kb, align 8, !tbaa !87 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %.val5.i.i = load ptr, ptr %i.kf, align 8       ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bj, %bb.bd
  %.sroa.03.0.i.i.i.i.i.i.i = phi ptr [ %.val.i.i, %bb.bd ], [ %i.kz, %bb.bj ] ; 5 uses
  %i.kg = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i.i.i117.i = load i8, ptr %i.kg, align 1, !tbaa !15, !noalias !147 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i117.i, 0
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.be
  %i.kh = zext i8 %.val.i.i.i.i.i.i.i.i117.i to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.0198.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.bi ] ; 2 uses
  %.0207.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kh, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i.i.i.i, %bb.bi ] ; 2 uses
  %i.kj = add i64 %.0207.i.i.i.i.i.i.i.i.i.i, %.0198.i.i.i.i.i.i.i.i.i.i
  %i.kk = lshr i64 %i.kj, 1                       ; 4 uses
  %i.kl = getelementptr inbounds nuw [40 x i8], ptr %i.ki, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !30, !noalias !147 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val97.i, i64 %i.kn) ; 2 uses
  %i.ko = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ko, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !33, !noalias !147
  %i.kq = call i32 @memcmp(ptr noundef %i.kp, ptr noundef readonly %.val98.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i) #19, !noalias !147 ; 2 uses
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf
  %i.ks = sub i64 %i.kn, %.val97.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ks, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kt = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ku = add nuw i64 %i.kk, 1
  br label %bb.bi

bb.bh:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.222.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i.i.i.i, %bb.bg ], [ %i.kk, %bb.bh ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ku, %bb.bg ], [ %.0198.i.i.i.i.i.i.i.i.i.i, %bb.bh ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.bf

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bi, %bb.be
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i = phi i64 [ 0, %bb.be ], [ %.222.i.i.i.i.i.i.i.i.i.i, %bb.bi ] ; 2 uses
  %i.kv = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i.i.i = load i8, ptr %i.kv, align 1, !tbaa !15, !noalias !147
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bj, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i

bb.bj:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 256
  %i.kx = and i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i, 255
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !103, !noalias !147
  br label %bb.be

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %bb.bh
  %.lcssa.sink.i.i.i.i.i.i.i = phi i64 [ %i.kk, %bb.bh ], [ %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ]
  %i.la = phi i1 [ true, %bb.bh ], [ false, %.loopexit.i.i.i.i.i.i.i ]
  %i.lb = trunc i64 %.lcssa.sink.i.i.i.i.i.i.i to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i.i.i = phi i32 [ %i.lb, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i ], [ %i.lg, %bb.bl ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i ], [ %.val2.i.i.i.i.i.i.i, %bb.bl ] ; 4 uses
  %i.lc = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i118.i = load i8, ptr %i.lc, align 1, !tbaa !15, !noalias !158 ; 2 uses
  %i.ld = zext i8 %.val.i.i.i.i.i.i118.i to i32
  %i.le = icmp eq i32 %.sroa.7.0.i.i.i.i.i.i.i, %i.ld
  br i1 %i.le, label %bb.bl, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.lf = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  %.val3.i.i.i.i.i.i.i = load i8, ptr %i.lf, align 1, !tbaa !15, !noalias !158
  %i.lg = zext i8 %.val3.i.i.i.i.i.i.i to i32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !158 ; 2 uses
  %i.lh = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i, i64 11
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.lh, align 1, !tbaa !15, !noalias !158
  %.not.i7.i.i.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.bk, label %bb.bm, !llvm.loop !159

bb.bm:                                            ; preds = %bb.bl
  %i.li = getelementptr i8, ptr %.val5.i.i, i64 10
  %.val.i.i11.i.i.i.i.i = load i8, ptr %i.li, align 1, !tbaa !15, !noalias !160 ; 2 uses
  %i.lj = zext i8 %.val.i.i11.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i: ; preds = %bb.bk, %bb.bm
  %.val.i.i.i9.i.i.i.i = phi i8 [ %.val.i.i11.i.i.i.i.i, %bb.bm ], [ %.val.i.i.i.i.i.i118.i, %bb.bk ]
  %.pn3.i.i.i.i.i.i = phi ptr [ %.val5.i.i, %bb.bm ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.bk ] ; 13 uses
  %.pn1.i.i.i.i.i.i = phi i32 [ %i.lj, %bb.bm ], [ %.sroa.7.0.i.i.i.i.i.i.i, %bb.bk ] ; 11 uses
  br i1 %i.la, label %bb.bn, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

bb.bn:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i
  %i.lk = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val1.i.i.i7.i.i.i.i = load i8, ptr %i.lk, align 1, !tbaa !15, !noalias !161 ; 2 uses
  %.not.i.i.i8.i.i.i.i = icmp eq i8 %.val1.i.i.i7.i.i.i.i, 0
  br i1 %.not.i.i.i8.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ll = add nsw i32 %.pn1.i.i.i.i.i.i, 1        ; 3 uses
  %i.lm = zext i8 %.val.i.i.i9.i.i.i.i to i32
  %i.ln = icmp eq i32 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i.i.i.i.i.i.i124.i, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

.lr.ph.i.i.i.i.i.i.i124.i:                        ; preds = %bb.bo, %bb.bp
  %.01527.i.i.i.i.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i.i, %bb.bp ], [ %.pn3.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %.015.val19.i.i.i.i.i.i.i.i = load ptr, ptr %.01527.i.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !161 ; 4 uses
  %i.lo = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i.i, i64 11
  %.015.val19.val.i.i.i.i.i.i.i.i = load i8, ptr %i.lo, align 1, !tbaa !15, !noalias !161
  %.not22.i.i.i.i.i.i.i.i = icmp eq i8 %.015.val19.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i.i, label %bb.bp, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i124.i
  %i.lp = getelementptr i8, ptr %.01527.i.i.i.i.i.i.i.i, i64 8
  %.015.val20.i.i.i.i.i.i.i.i = load i8, ptr %i.lp, align 1, !tbaa !15, !noalias !161 ; 2 uses
  %i.lq = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i.i, i64 10
  %.015.val17.i.i.i.i.i.i.i.i = load i8, ptr %i.lq, align 1, !tbaa !15, !noalias !161
  %i.lr = icmp eq i8 %.015.val20.i.i.i.i.i.i.i.i, %.015.val17.i.i.i.i.i.i.i.i
  br i1 %i.lr, label %.lr.ph.i.i.i.i.i.i.i124.i, label %.critedge.loopexit29.i.i.i.i.i.i.i.i, !llvm.loop !162

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.bn
  %i.ls = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 256
  %i.lt = add i32 %.pn1.i.i.i.i.i.i, 1
  %i.lu = and i32 %i.lt, 255
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lv
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.thread.i.i.i.i.i.i.i
  %.116.in.i.i.i.i.i.i.i.i = phi ptr [ %i.lw, %.thread.i.i.i.i.i.i.i ], [ %i.ly, %bb.bq ]
  %.116.i.i.i.i.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !161 ; 3 uses
  %i.lx = getelementptr i8, ptr %.116.i.i.i.i.i.i.i.i, i64 11
  %.116.val.i.i.i.i.i.i.i.i = load i8, ptr %i.lx, align 1, !tbaa !15, !noalias !161
  %.not.i.i.i.i.i.i.i.i125.i = icmp eq i8 %.116.val.i.i.i.i.i.i.i.i, 0
  %i.ly = getelementptr i8, ptr %.116.i.i.i.i.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i.i.i.i.i125.i, label %bb.bq, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i, !llvm.loop !163

.critedge.loopexit29.i.i.i.i.i.i.i.i:             ; preds = %bb.bp
  %i.lz = zext i8 %.015.val20.i.i.i.i.i.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i: ; preds = %bb.bq, %.critedge.loopexit29.i.i.i.i.i.i.i.i
  %.sroa.024.0.sink.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i.i, %.critedge.loopexit29.i.i.i.i.i.i.i.i ], [ %.116.i.i.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  %.sroa.625.0.sink.i.i.i.i = phi i32 [ %i.lz, %.critedge.loopexit29.i.i.i.i.i.i.i.i ], [ 0, %bb.bq ] ; 2 uses
  %i.ma = icmp eq ptr %.sroa.024.0.sink.i.i.i.i, %.pn3.i.i.i.i.i.i
  br i1 %i.ma, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i, label %bb.bt

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i124.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i, %bb.bo, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i
  %.sroa.625.0.sink.i.i10.i.i = phi i32 [ %.sroa.625.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ], [ %.pn1.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i ], [ %i.ll, %bb.bo ], [ %i.ll, %.lr.ph.i.i.i.i.i.i.i124.i ] ; 4 uses
  %.sroa.024.0.sink.i.i8.i.i = phi ptr [ %.sroa.024.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ], [ %.pn3.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i ], [ %.pn3.i.i.i.i.i.i, %bb.bo ], [ %.pn3.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i124.i ] ; 2 uses
  %i.mb = getelementptr i8, ptr %.sroa.024.0.sink.i.i8.i.i, i64 11
  %.val.i.i.i119.i = load i8, ptr %i.mb, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i119.i, 0
  br i1 %.not.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i
  %i.mc = sub nsw i32 %.sroa.625.0.sink.i.i10.i.i, %.pn1.i.i.i.i.i.i
  %i.md = sext i32 %i.mc to i64
  br label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i

bb.bs:                                            ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i
  %i.me = icmp eq i32 %.sroa.625.0.sink.i.i10.i.i, %.pn1.i.i.i.i.i.i
  br i1 %i.me, label %.loopexit170.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bs
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val62.i.i.i.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !15, !noalias !164
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i
  %.val62.i.i.i.i.i = phi i8 [ %.val62.i.i.i.pre.i.i, %._crit_edge.i.i ], [ %.val1.i.i.i7.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ]
  %i.mf = phi i1 [ true, %._crit_edge.i.i ], [ false, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ]
  %.sroa.625.0.sink.i.i9.i.i = phi i32 [ %.sroa.625.0.sink.i.i10.i.i, %._crit_edge.i.i ], [ %.sroa.625.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ] ; 2 uses
  %.sroa.024.0.sink.i.i7.i.i = phi ptr [ %.sroa.024.0.sink.i.i8.i.i, %._crit_edge.i.i ], [ %.sroa.024.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ] ; 3 uses
  %.not4.i.i.i.i.i = icmp eq i8 %.val62.i.i.i.i.i, 0
  %i.mg = sub nsw i32 0, %.pn1.i.i.i.i.i.i
  %i.mh = sext i32 %i.mg to i64
  br i1 %.not4.i.i.i.i.i, label %bb.bu, label %._crit_edge.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.mi = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 256
  %i.mj = add i32 %.pn1.i.i.i.i.i.i, 1
  %i.mk = and i32 %i.mj, 255
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr i8, ptr %i.mn, i64 11
  %.148.val18.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !tbaa !15, !noalias !164
  %i.mo = icmp eq i8 %.148.val18.pre.i.i.i.i.i, 0
  br i1 %i.mo, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bu, %.lr.ph.i.i.i.i.i
  %.14820.i.i.i.i.i = phi ptr [ %.148.val72.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.mn, %bb.bu ]
  %i.mp = getelementptr i8, ptr %.14820.i.i.i.i.i, i64 256
  %.148.val72.i.i.i.i.i = load ptr, ptr %i.mp, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.mq = getelementptr i8, ptr %.148.val72.i.i.i.i.i, i64 11
  %.148.val.i.i.i.i.i = load i8, ptr %i.mq, align 1, !tbaa !15, !noalias !164
  %.not.i73.i.i.i.i.i = icmp eq i8 %.148.val.i.i.i.i.i, 0
  br i1 %.not.i73.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !167

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.bu, %bb.bt
  %.04442.i.i.i.i.i = phi i64 [ 1, %bb.bu ], [ %i.mh, %bb.bt ], [ 1, %.lr.ph.i.i.i.i.i ]
  %.148.lcssa.i.i.i.i.i = phi ptr [ %i.mn, %bb.bu ], [ %.pn3.i.i.i.i.i.i, %bb.bt ], [ %.148.val72.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.mr = getelementptr i8, ptr %.148.lcssa.i.i.i.i.i, i64 8
  %.148.val69.i.i.i.i.i = load i8, ptr %i.mr, align 1, !tbaa !15, !noalias !164
  %i.ms = zext i8 %.148.val69.i.i.i.i.i to i64
  %.148.val66.i.i.i.i.i = load ptr, ptr %.148.lcssa.i.i.i.i.i, align 8, !tbaa !103, !noalias !164
  %i.mt = sext i32 %.sroa.625.0.sink.i.i9.i.i to i64 ; 3 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.backedge, %._crit_edge.i.i.i.i.i
  %.246.i.i.i.i.i = phi i64 [ %.04442.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ni, %.backedge ] ; 2 uses
  %.142.i.i.i.i.i = phi i64 [ %i.ms, %._crit_edge.i.i.i.i.i ], [ %.142.i.i.i.i.i.be, %.backedge ] ; 2 uses
  %.1.i.i.i.i.i = phi ptr [ %.148.val66.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i.i.i.be, %.backedge ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 256
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %.142.i.i.i.i.i
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 11
  %.val63.i.i.i.i.i = load i8, ptr %i.mx, align 1, !tbaa !15, !noalias !164
  %.not.i74.i.i.i.i.i = icmp eq i8 %.val63.i.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %bb.bw

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.bv, %.lr.ph24.i.i.i.i.i
  %.24923.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %.lr.ph24.i.i.i.i.i ], [ %i.mw, %bb.bv ]
  %i.my = getelementptr i8, ptr %.24923.i.i.i.i.i, i64 256
  %.249.val71.i.i.i.i.i = load ptr, ptr %i.my, align 8, !tbaa !103, !noalias !164 ; 5 uses
  %i.mz = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 11
  %.249.val.i.i.i.i.i = load i8, ptr %i.mz, align 1, !tbaa !15, !noalias !164
  %.not.i75.i.i.i.i.i = icmp eq i8 %.249.val.i.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, !llvm.loop !168

._crit_edge25.i.i.i.i.i:                          ; preds = %.lr.ph24.i.i.i.i.i
  %i.na = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 8
  %.249.val68.i.i.i.i.i = load i8, ptr %i.na, align 1, !tbaa !15, !noalias !164
  %i.nb = zext i8 %.249.val68.i.i.i.i.i to i64
  %.249.val65.i.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i.i, align 8, !tbaa !103, !noalias !164
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge25.i.i.i.i.i, %bb.bv
  %.350.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %i.mw, %bb.bv ] ; 2 uses
  %.243.i.i.i.i.i = phi i64 [ %i.nb, %._crit_edge25.i.i.i.i.i ], [ %.142.i.i.i.i.i, %bb.bv ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %.249.val65.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.bv ] ; 4 uses
  %i.nc = icmp eq ptr %.350.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  br i1 %i.nc, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nd = icmp eq ptr %.2.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  %i.ne = icmp eq i64 %.243.i.i.i.i.i, %i.mt
  %or.cond.i.i.i.i.i = select i1 %i.nd, i1 %i.ne, i1 false
  %i.nf = getelementptr i8, ptr %.350.i.i.i.i.i, i64 10
  %.350.val70.i.i.i.i.i = load i8, ptr %i.nf, align 1, !tbaa !15, !noalias !164
  %i.ng = zext i8 %.350.val70.i.i.i.i.i to i64    ; 3 uses
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nh = add i64 %.246.i.i.i.i.i, 1
  %i.ni = add i64 %i.nh, %i.ng
  %i.nj = getelementptr i8, ptr %.2.i.i.i.i.i, i64 10
  %.2.val.i.i.i.i.i = load i8, ptr %i.nj, align 1, !tbaa !15, !noalias !164
  %i.nk = zext i8 %.2.val.i.i.i.i.i to i64
  %.not.not.i.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i.i, %i.nk
  br i1 %.not.not.i.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i.i

.backedge:                                        ; preds = %bb.bz, %bb.by
  %.142.i.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i.i, %bb.by ], [ %i.nm, %bb.bz ]
  %.1.i.i.i.i.i.be = phi ptr [ %.2.i.i.i.i.i, %bb.by ], [ %.3.val.i.i.i.i.i, %bb.bz ]
  %.142.i.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.i.be.in, 1
  br label %bb.bv, !llvm.loop !169

.preheader5.i.i.i.i.i:                            ; preds = %bb.by, %bb.bz
  %.3.i.i.i.i.i = phi ptr [ %.3.val.i.i.i.i.i, %bb.bz ], [ %.2.i.i.i.i.i, %bb.by ] ; 2 uses
  %i.nl = getelementptr i8, ptr %.3.i.i.i.i.i, i64 8
  %.3.val67.i.i.i.i.i = load i8, ptr %i.nl, align 1, !tbaa !15, !noalias !164 ; 2 uses
  %i.nm = zext i8 %.3.val67.i.i.i.i.i to i64      ; 2 uses
  %.3.val.i.i.i.i.i = load ptr, ptr %.3.i.i.i.i.i, align 8, !tbaa !103, !noalias !164 ; 4 uses
  %i.nn = icmp eq ptr %.3.val.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  %i.no = icmp eq i64 %i.nm, %i.mt
  %or.cond61.i.i.i.i.i = select i1 %i.nn, i1 %i.no, i1 false
  br i1 %or.cond61.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.preheader5.i.i.i.i.i
  %i.np = getelementptr i8, ptr %.3.val.i.i.i.i.i, i64 10
  %.val.i.i.i.i122.i = load i8, ptr %i.np, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i.i123.i = icmp ult i8 %.3.val67.i.i.i.i.i, %.val.i.i.i.i122.i
  br i1 %.not.i.i.i.i123.i, label %.backedge, label %.preheader5.i.i.i.i.i, !llvm.loop !170

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i: ; preds = %bb.bw, %bb.bx, %.preheader5.i.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.ng, %.preheader5.i.i.i.i.i ], [ %i.mt, %bb.bw ], [ %i.ng, %bb.bx ]
  %.051.i.i.i.i.i = add i64 %.pn.i.i.i.i.i, %.246.i.i.i.i.i
  br label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, %bb.br
  %i.nq = phi i1 [ true, %bb.br ], [ %i.mf, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ]
  %.sroa.625.0.sink.i.i11.i.i = phi i32 [ %.sroa.625.0.sink.i.i10.i.i, %bb.br ], [ %.sroa.625.0.sink.i.i9.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ]
  %.0.i.i.i.i = phi i64 [ %i.md, %bb.br ], [ %.051.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ] ; 5 uses
  %i.nr = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.nr, label %.loopexit170.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 9 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164 ; 4 uses
  %i.nu = icmp eq i64 %.0.i.i.i.i, %i.nt
  br i1 %i.nu, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i, label %bb.cb

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i: ; preds = %bb.ca
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val.i.i), !noalias !164, !inline_history !171
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.kb, align 8, !tbaa !103, !noalias !164
  store i64 0, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  br label %.loopexit170.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.nq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.nv = trunc i32 %.pn1.i.i.i.i.i.i to i8
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i: ; preds = %.lr.ph31.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.117.i.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i ] ; 4 uses
  %i.pk = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 10
  %.117.val.i.i.i.i.i.i.i = load i8, ptr %i.pk, align 1, !tbaa !15, !noalias !164
  %i.pl = zext i8 %.117.val.i.i.i.i.i.i.i to i32
  %i.pm = add nsw i32 %i.pl, -1                   ; 3 uses
  %i.pn = sext i32 %.sroa.13.091.i.i.i to i64
  %i.po = sext i32 %i.pm to i64
  %i.pp = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.pn ; 7 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 16
  %i.pr = getelementptr inbounds nuw [40 x i8], ptr %i.pq, i64 %i.po ; 5 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 16 ; 3 uses
  store ptr %i.ps, ptr %i.pp, align 8, !tbaa !39, !noalias !164
  %i.pt = load ptr, ptr %i.pr, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !30, !noalias !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !164
  store i64 %i.pv, ptr %i.b, align 8, !tbaa !7, !noalias !164
  %i.pw = icmp ugt i64 %i.pv, 15
  br i1 %i.pw, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.px = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.pp, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc130.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc130.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.px, ptr %i.pp, align 8, !tbaa !33, !noalias !164
  %i.py = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !164
  store i64 %i.py, ptr %i.ps, align 8, !tbaa !15, !noalias !164
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc130.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.pz = phi ptr [ %i.px, %.noexc130.i ], [ %i.ps, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.pv, label %bb.cj [
    i64 1, label %bb.ci
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  ]

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qa = load i8, ptr %i.pt, align 1, !tbaa !15, !noalias !164
  store i8 %i.qa, ptr %i.pz, align 1, !tbaa !15, !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pz, ptr align 1 %i.pt, i64 %i.pv, i1 false), !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %bb.ci, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qb = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !164 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !30, !noalias !164
  %i.qd = load ptr, ptr %i.pp, align 8, !tbaa !33, !noalias !164
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qb
  store i8 0, ptr %i.qe, align 1, !tbaa !15, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !164
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pr, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qg, align 8, !tbaa !107, !noalias !164
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.qf, align 8, !tbaa !107, !noalias !164
  store ptr null, ptr %i.qg, align 8, !tbaa !107, !noalias !164
  %i.qh = load ptr, ptr %i.pr, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %i.qj = icmp eq ptr %i.qh, %i.qi
  br i1 %i.qj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.qk = load i64, ptr %i.qi, align 8, !tbaa !15, !noalias !164
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.ql) #20, !noalias !164, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i

bb.ck:                                            ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i
  %i.qm = add i8 %i.op, 1                         ; 3 uses
  %i.qn = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 10
  %.val8.i.i.i.i = load i8, ptr %i.qn, align 1, !tbaa !15, !noalias !164 ; 2 uses
  %i.qo = sub i8 %.val8.i.i.i.i, %i.qm
  %i.qp = zext i8 %i.qo to i64
  %i.qq = zext i8 %i.qm to i64
  %i.qr = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.qq ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.qp, 40
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %.idx.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i, %i.qm
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.ck
  %i.qt = sext i32 %.sroa.13.091.i.i.i to i64
  %i.qu = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.qt
  br label %.lr.ph.i.i46.i.i.i

.lr.ph.i.i46.i.i.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.rq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ], [ %i.qu, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0122.i.i.i.i.i = phi ptr [ %i.rp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ], [ %i.qr, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.qv, ptr %.03.i.i.i.i.i, align 8, !tbaa !39, !noalias !164
  %i.qw = load ptr, ptr %.0122.i.i.i.i.i, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 8
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !30, !noalias !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !164
  store i64 %i.qy, ptr %i.a, align 8, !tbaa !7, !noalias !164
  %i.qz = icmp ugt i64 %i.qy, 15
  br i1 %i.qz, label %.noexc.i.i.i.i.i.i.i18.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i

.noexc.i.i.i.i.i.i.i18.i.i.i.i:                   ; preds = %.lr.ph.i.i46.i.i.i
  %i.ra = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc131.i unwind label %.loopexit.i ; 2 uses

.noexc131.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i18.i.i.i.i
  store ptr %i.ra, ptr %.03.i.i.i.i.i, align 8, !tbaa !33, !noalias !164
  %i.rb = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !164
  store i64 %i.rb, ptr %i.qv, align 8, !tbaa !15, !noalias !164
  br label %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i:            ; preds = %.noexc131.i, %.lr.ph.i.i46.i.i.i
  %i.rc = phi ptr [ %i.ra, %.noexc131.i ], [ %i.qv, %.lr.ph.i.i46.i.i.i ] ; 2 uses
  switch i64 %i.qy, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i
  %i.rd = load i8, ptr %i.qw, align 1, !tbaa !15, !noalias !164
  store i8 %i.rd, ptr %i.rc, align 1, !tbaa !15, !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rc, ptr align 1 %i.qw, i64 %i.qy, i1 false), !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i: ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i
  %i.re = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !164 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  store i64 %i.re, ptr %i.rf, align 8, !tbaa !30, !noalias !164
  %i.rg = load ptr, ptr %.03.i.i.i.i.i, align 8, !tbaa !33, !noalias !164
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.re
  store i8 0, ptr %i.rh, align 1, !tbaa !15, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !164
  %i.ri = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32
  %i.rj = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i14.i.i.i.i = load i64, ptr %i.rj, align 8, !tbaa !107, !noalias !164
  store i64 %.val.i.i.i.i.i.i.i.i.i14.i.i.i.i, ptr %i.ri, align 8, !tbaa !107, !noalias !164
  store ptr null, ptr %i.rj, align 8, !tbaa !107, !noalias !164
  %i.rk = load ptr, ptr %.0122.i.i.i.i.i, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 16 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !15, !noalias !164
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #20, !noalias !164, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 40 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 40
  %.not.i16.i.i.i.i = icmp eq ptr %i.rp, %i.qs
  br i1 %.not.i16.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, label %.lr.ph.i.i46.i.i.i, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi i32 [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pm, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.091.i.i.i, %bb.ck ], [ %.sroa.13.091.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.117.lcssa.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.117.lcssa.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.063.090.i.i.i, %bb.ck ], [ %.sroa.063.090.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ] ; 2 uses
  %i.rr = getelementptr i8, ptr %.sroa.0.0.i.i.i.i, i64 10 ; 2 uses
  %.val.i47.i.i.i = load i8, ptr %i.rr, align 1, !tbaa !15, !noalias !164
  %i.rs = add i8 %.val.i47.i.i.i, -1
  store i8 %i.rs, ptr %i.rr, align 1, !tbaa !15, !noalias !164
  %i.rt = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.ru = add i64 %i.rt, -1
  store i64 %i.ru, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.rv = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr nonnull %.sroa.0.0.i.i.i.i, i32 %.sroa.10.0.i.i.i.i)
          to label %.noexc132.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc132.i:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i32 } %i.rv, 0 ; 7 uses
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i32 } %i.rv, 1 ; 3 uses
  br i1 %.not.i.i45.i.i.i, label %bb.cn, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cn:                                            ; preds = %.noexc132.i
  %i.rw = getelementptr i8, ptr %.fca.0.extract.i.i.i.i, i64 11
  %.val1.i.i.i.i.i.i = load i8, ptr %i.rw, align 1, !tbaa !15, !noalias !164
  %.not.i.i19.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i.i19.i.i.i.i, label %.thread.i.i27.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rx = add nsw i32 %.fca.1.extract.i.i.i.i, 1  ; 3 uses
  %i.ry = getelementptr i8, ptr %.fca.0.extract.i.i.i.i, i64 10
  %.val.i.i20.i.i.i.i = load i8, ptr %i.ry, align 1, !tbaa !15, !noalias !164
  %i.rz = zext i8 %.val.i.i20.i.i.i.i to i32
  %i.sa = icmp eq i32 %i.rx, %i.rz
  br i1 %i.sa, label %.lr.ph.i.i.i25.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

.lr.ph.i.i.i25.i.i.i.i:                           ; preds = %bb.co, %bb.cp
  %.01527.i.i.i.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i, %bb.cp ], [ %.fca.0.extract.i.i.i.i, %bb.co ] ; 2 uses
  %.015.val19.i.i.i.i.i.i.i = load ptr, ptr %.01527.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !164 ; 4 uses
  %i.sb = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i, i64 11
  %.015.val19.val.i.i.i.i.i.i.i = load i8, ptr %i.sb, align 1, !tbaa !15, !noalias !164
  %.not22.i.i.i26.i.i.i.i = icmp eq i8 %.015.val19.val.i.i.i.i.i.i.i, 0
  br i1 %.not22.i.i.i26.i.i.i.i, label %bb.cp, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cp:                                            ; preds = %.lr.ph.i.i.i25.i.i.i.i
  %i.sc = getelementptr i8, ptr %.01527.i.i.i.i.i.i.i, i64 8
  %.015.val20.i.i.i.i.i.i.i = load i8, ptr %i.sc, align 1, !tbaa !15, !noalias !164 ; 2 uses
  %i.sd = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i, i64 10
  %.015.val17.i.i.i.i.i.i.i = load i8, ptr %i.sd, align 1, !tbaa !15, !noalias !164
  %i.se = icmp eq i8 %.015.val20.i.i.i.i.i.i.i, %.015.val17.i.i.i.i.i.i.i
  br i1 %i.se, label %.lr.ph.i.i.i25.i.i.i.i, label %.critedge.loopexit29.i.i.i.i.i.i.i, !llvm.loop !162

.thread.i.i27.i.i.i.i:                            ; preds = %bb.cn
  %i.sf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 256
  %i.sg = add i32 %.fca.1.extract.i.i.i.i, 1
  %i.sh = and i32 %i.sg, 255
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.si
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.thread.i.i27.i.i.i.i
  %.116.in.i.i.i.i.i.i.i = phi ptr [ %i.sj, %.thread.i.i27.i.i.i.i ], [ %i.sl, %bb.cq ]
  %.116.i.i.i.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.sk = getelementptr i8, ptr %.116.i.i.i.i.i.i.i, i64 11
  %.116.val.i.i.i.i.i.i.i = load i8, ptr %i.sk, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i.i28.i.i.i.i = icmp eq i8 %.116.val.i.i.i.i.i.i.i, 0
  %i.sl = getelementptr i8, ptr %.116.i.i.i.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i28.i.i.i.i, label %bb.cq, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i, !llvm.loop !163

.critedge.loopexit29.i.i.i.i.i.i.i:               ; preds = %bb.cp
  %i.sm = zext i8 %.015.val20.i.i.i.i.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i: ; preds = %.lr.ph.i.i.i25.i.i.i.i, %bb.cq, %.critedge.loopexit29.i.i.i.i.i.i.i, %bb.co, %.noexc132.i, %.noexc129.i
  %.sroa.063.1.i.i.i = phi ptr [ %.fca.0.extract4.i.i.i, %.noexc129.i ], [ %.fca.0.extract.i.i.i.i, %.noexc132.i ], [ %.116.i.i.i.i.i.i.i, %bb.cq ], [ %.fca.0.extract.i.i.i.i, %bb.co ], [ %.015.val19.i.i.i.i.i.i.i, %.critedge.loopexit29.i.i.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i, %.lr.ph.i.i.i25.i.i.i.i ]
  %.sroa.13.1.i.i.i = phi i32 [ %.fca.1.extract5.i.i.i, %.noexc129.i ], [ %.fca.1.extract.i.i.i.i, %.noexc132.i ], [ 0, %bb.cq ], [ %i.rx, %bb.co ], [ %i.sm, %.critedge.loopexit29.i.i.i.i.i.i.i ], [ %i.rx, %.lr.ph.i.i.i25.i.i.i.i ]
  %i.sn = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164 ; 2 uses
  %i.so = icmp ugt i64 %i.sn, %i.ob
  br i1 %i.so, label %.lr.ph.i.i.i, label %.loopexit170.i, !llvm.loop !175

.loopexit170.i:                                   ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i, %bb.cd, %.noexc126.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i, %bb.bs
  %i.sp = load ptr, ptr %i.ka, align 8, !tbaa !107
  %i.sq = getelementptr i8, ptr %i.sp, i64 16
  %.val.i = load i64, ptr %i.sq, align 8, !tbaa !94
  %i.sr = icmp eq i64 %.val.i, 0
  br i1 %i.sr, label %bb.bc, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, !llvm.loop !176

.loopexit.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i18.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc128.i, %bb.ce
  %lpad.loopexit167.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.noexc126.i, %bb.cc
  %lpad.loopexit.split-lp168.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i: ; preds = %bb.ax, %.loopexit170.i, %bb.bc, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit.i, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #20
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !21
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, %.noexc22
  %i.ss = phi ptr [ %.pr.i, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i ], [ %i.ba, %.noexc22 ] ; 3 uses
  %.not.i.i.i134.i = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i134.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i
  %i.st = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.ss to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.sw) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i: ; preds = %bb.cr, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !34
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.ay, %bb.ap, %.thread160.i
  %.pn78163.i = phi { ptr, i32 } [ %i.cg, %.thread160.i ], [ %.pn72.i, %bb.ap ], [ %i.jg, %bb.ay ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit167.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp168.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #20
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit136.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit136.i: ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp.i
  %.pn78.pn.i = phi { ptr, i32 } [ %.pn78163.i, %.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.sx = load ptr, ptr %6, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i137.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i137.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit138.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit136.i
  %i.sy = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.tb) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit138.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit138.i: ; preds = %bb.cs, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, %.lr.ph.split
  %i.tc = phi i32 [ %.pre, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i ], [ %i.am, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.td = sext i32 %i.tc to i64
  %i.te = icmp slt i64 %indvars.iv.next, %i.td
  br i1 %i.te, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !177

bb.ct:                                            ; preds = %._crit_edge
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 0, ptr nonnull @.str.7, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, ptr noundef nonnull %3)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit unwind label %.loopexit.split-lp30

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit: ; preds = %bb.ct
  %.val17 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.tf = icmp eq i64 %.val17, 0
  br i1 %i.tf, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit
  %.val16 = load ptr, ptr %9, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val16), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, %bb.b
  ret void

.body:                                            ; preds = %.loopexit29, %.loopexit.split-lp30, %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit138.i
  %.pn = phi { ptr, i32 } [ %.pn78.pn.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit138.i ], [ %i.al, %bb.d ], [ %lpad.loopexit31, %.loopexit29 ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp30 ]
  %.val15 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.tg = icmp eq i64 %.val15, 0
  br i1 %i.tg, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24, label %bb.cw

bb.cw:                                            ; preds = %.body
  %.val = load ptr, ptr %9, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24: ; preds = %.body, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil17IsPathInFieldMaskESt17basic_string_viewIcSt11char_traitsIcEERKNS0_9FieldMaskE(i64 %0, ptr readonly captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fr100 = freeze i64 %0                         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %.fr = freeze ptr %i.e                          ; 3 uses
  %i.f = ptrtoint ptr %.fr to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.i = add i64 %i.f, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = icmp eq i64 %.fr100, 0
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count117 = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader
  %indvars.iv114 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next115, %.lr.ph.split.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv114
  %.0.i.i.i.i.i.us = select i1 %i.h, ptr %i.d, ptr %i.m
  %i.n = load ptr, ptr %.0.i.i.i.i.i.us, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  %or.cond = select i1 %i.q, i1 true, i1 %exitcond118.not
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split.us, !llvm.loop !179

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.h, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.r = load ptr, ptr %.fr, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30
  %.fr102 = freeze i64 %i.t                       ; 5 uses
  %i.u = icmp ult i64 %.fr102, %.fr100
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.fr102 ; 2 uses
  br i1 %i.u, label %.lr.ph.split.split.us.split.us.split, label %.lr.ph.split.split.us.split

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEEixIRSt17basic_string_viewIcS8_ELi0EEERSK_OT_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !103, !noalias !196
  store ptr %i.f, ptr %0, align 8, !tbaa !103, !noalias !196
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val8.i.i.i = load i64, ptr %1, align 8, !noalias !196 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val9.i.i.i = load ptr, ptr %i.i, align 8, !noalias !196
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.03.0.i.in.i.i.i = phi ptr [ %0, %bb.c ], [ %i.ab, %bb.i ]
  %.sroa.03.0.i.i.i.i = load ptr, ptr %.sroa.03.0.i.in.i.i.i, align 8, !tbaa !103, !noalias !196 ; 10 uses
  %i.j = getelementptr i8, ptr %.sroa.03.0.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i = load i8, ptr %i.j, align 1, !tbaa !15, !noalias !203 ; 5 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.k = zext i8 %.val.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.0198.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.0207.i.i.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.m = add i64 %.0207.i.i.i.i.i.i.i, %.0198.i.i.i.i.i.i.i
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30, !noalias !203 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val8.i.i.i, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !33, !noalias !203
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef readonly %.val9.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #19, !noalias !203 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.v = sub i64 %i.q, %.val8.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i
  %i.x = add nuw i64 %i.n, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.222.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i, %bb.f ], [ %i.n, %bb.g ] ; 3 uses
  %.2.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.f ], [ %.0198.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.e

.loopexit.i.i.i.i:                                ; preds = %bb.h, %bb.d
  %.sroa.018.2.i.i.i.ph.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.222.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.03.0.i.i.i.i, i64 11
  %.val4.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !15, !noalias !203 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.val4.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %.loopexit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 256
  %i.aa = and i64 %.sroa.018.2.i.i.i.ph.i.i.i.i, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %.pre = and i64 %i.n, 255
  br label %_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_.exit

._crit_edge.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i
  %i.ac = getelementptr i8, ptr %.sroa.03.0.i.i.i.i, i64 10 ; 3 uses
  %i.ad = trunc i64 %.sroa.018.2.i.i.i.ph.i.i.i.i to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !196
  store ptr %.sroa.03.0.i.i.i.i, ptr %2, align 8, !noalias !196
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 8, !noalias !196
  %i.af = icmp eq i8 %.val.i.i.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.af, label %bb.k, label %bb.p

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = icmp ult i8 %.val.i.i.i.i.i.i, 6
  br i1 %i.ag, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ah = shl nuw nsw i8 %.val.i.i.i.i.i.i, 1
  %i.ai = tail call i8 @llvm.umin.i8(i8 %i.ah, i8 6) ; 2 uses
  %narrow.i.i.i.i = mul nuw i8 %i.ai, 40
  %i.aj = zext i8 %narrow.i.i.i.i to i64
  %i.ak = add nuw nsw i64 %i.aj, 16
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22, !noalias !196 ; 11 uses
  store ptr %i.al, ptr %i.al, align 8, !tbaa !103, !noalias !196
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 0, ptr %i.am, align 8, !tbaa !15, !noalias !196
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  store i8 0, ptr %i.an, align 1, !tbaa !15, !noalias !196
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 10 ; 2 uses
  store i8 0, ptr %i.ao, align 2, !tbaa !15, !noalias !196
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 11
  store i8 %i.ai, ptr %i.ap, align 1, !tbaa !15, !noalias !196
  store ptr %i.al, ptr %2, align 8, !tbaa !131, !noalias !196
  %.val13.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !tbaa !15, !noalias !196 ; 2 uses
  %i.aq = zext i8 %.val13.i.i.i.i.i.i to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.aq, 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq i8 %.val13.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %.lr.ph.i.i.i11.i.i.i.i

.lr.ph.i.i.i11.i.i.i.i:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 8 uses
  %.0122.i.i.i.i.i.i.i = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.au, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !196
  %i.av = load ptr, ptr %.0122.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !30, !noalias !196 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !196
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !7, !noalias !196
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i11.i.i.i.i
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0), !noalias !196 ; 2 uses
  store ptr %i.az, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !196
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !15, !noalias !196
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i11.i.i.i.i
  %i.bb = phi ptr [ %i.az, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %.lr.ph.i.i.i11.i.i.i.i ] ; 2 uses
  switch i64 %i.ax, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !15, !noalias !196
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !15, !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.av, i64 %i.ax, i1 false), !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !196 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !30, !noalias !196
  %i.bf = load ptr, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !196
  %i.bh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !107, !noalias !196
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !107, !noalias !196
  store ptr null, ptr %i.bi, align 8, !tbaa !107, !noalias !196
  %i.bj = load ptr, ptr %.0122.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !15, !noalias !196
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #20, !noalias !196, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 40
  %.not.i.i.i12.i.i.i.i = icmp eq ptr %i.bo, %i.as
  br i1 %.not.i.i.i12.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i11.i.i.i.i, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !tbaa !15, !noalias !196
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i, %bb.l
  %.val.i.i13.i.i.i.i = phi i8 [ %.val.pre.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i ], [ 0, %bb.l ]
  store i8 %.val.i.i13.i.i.i.i, ptr %i.ao, align 1, !tbaa !15, !noalias !196
  store i8 0, ptr %i.ac, align 1, !tbaa !15, !noalias !196
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef nonnull %.sroa.03.0.i.i.i.i), !noalias !196
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.bq, align 8, !tbaa !103, !noalias !196
  store ptr %i.al, ptr %0, align 8, !tbaa !103, !noalias !196
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2), !noalias !196
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !131, !noalias !196
  %.pre20.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !135, !noalias !196
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.br = phi i32 [ %.pre20.i.i.i, %bb.o ], [ %i.ad, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i ], [ %i.ad, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bs = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.al, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i ], [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 5 uses
  %i.bt = trunc i32 %i.br to i8                   ; 2 uses
  %i.bu = and i32 %i.br, 255                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 10     ; 3 uses
  %.val23.i.i.i.i.i = load i8, ptr %i.bv, align 1, !tbaa !15, !noalias !196 ; 2 uses
  %i.bw = icmp ugt i8 %.val23.i.i.i.i.i, %i.bt
  %i.bx = zext nneg i32 %i.bu to i64              ; 3 uses
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bz = getelementptr [40 x i8], ptr %i.by, i64 %i.bx ; 3 uses
  %narrow.i.i.i.i.i = sub nuw i8 %.val23.i.i.i.i.i, %i.bt
  %i.ca = zext i8 %narrow.i.i.i.i.i to i64        ; 2 uses
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.ca, 40
  %i.cb = getelementptr i8, ptr %i.bz, i64 40
  %i.cc = getelementptr [40 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i ], [ %i.cc, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.0142.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i ], [ %i.cd, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -40 ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -40 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -24 ; 3 uses
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !39, !noalias !196
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !30, !noalias !196 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !196
  store i64 %i.cj, ptr %i.b, align 8, !tbaa !7, !noalias !196
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !196 ; 2 uses
  store ptr %i.cl, ptr %i.ce, align 8, !tbaa !33, !noalias !196
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !196
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !15, !noalias !196
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cn = phi ptr [ %i.cl, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.cj, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = load i8, ptr %i.ch, align 1, !tbaa !15, !noalias !196
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !15, !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.ch, i64 %i.cj, i1 false), !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !196 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -32
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !30, !noalias !196
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !33, !noalias !196
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.cs, align 1, !tbaa !15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !196
  %i.ct = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -8
  %i.cu = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !107, !noalias !196
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ct, align 8, !tbaa !107, !noalias !196
  store ptr null, ptr %i.cu, align 8, !tbaa !107, !noalias !196
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !15, !noalias !196
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #20, !noalias !196, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i16.i.i.i.i = icmp eq ptr %i.cf, %i.bz
  br i1 %.not.i.i16.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !136

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i, %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.da, i64 %i.bx ; 7 uses
  %.val.val.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !7, !noalias !196 ; 5 uses
  %.val.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !196 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !39, !noalias !196
  %i.dd = icmp eq ptr %.val.val6.i.i.i.i.i.i.i.i, null
  %i.de = icmp ne i64 %.val.val.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.de, %i.dd
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %bb.s

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #21, !noalias !196
  unreachable

bb.s:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !196
  store i64 %.val.val.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !7, !noalias !196
  %i.df = icmp ugt i64 %.val.val.i.i.i.i.i.i.i.i, 15
  br i1 %i.df, label %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i:               ; preds = %bb.s
  %i.dg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !196 ; 2 uses
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !33, !noalias !196
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !196
  store i64 %i.dh, ptr %i.dc, align 8, !tbaa !15, !noalias !196
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i:        ; preds = %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i, %bb.s
  %i.di = phi ptr [ %i.dg, %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  switch i64 %.val.val.i.i.i.i.i.i.i.i, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i
  %i.dj = load i8, ptr %.val.val6.i.i.i.i.i.i.i.i, align 1, !tbaa !15, !noalias !196
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !15, !noalias !196
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr readonly align 1 %.val.val6.i.i.i.i.i.i.i.i, i64 %.val.val.i.i.i.i.i.i.i.i, i1 false), !noalias !196
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !196 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !30, !noalias !196
  %i.dm = load ptr, ptr %i.db, align 8, !tbaa !33, !noalias !196
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk
  store i8 0, ptr %i.dn, align 1, !tbaa !15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !196
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store ptr null, ptr %i.do, align 8, !tbaa !137, !noalias !196
  %.val21.i.i.i.i.i = load i8, ptr %i.bv, align 1, !tbaa !15, !noalias !196
  %i.dp = add i8 %.val21.i.i.i.i.i, 1             ; 3 uses
  store i8 %i.dp, ptr %i.bv, align 1, !tbaa !15, !noalias !196
  %i.dq = getelementptr i8, ptr %i.bs, i64 11
  %.val24.i.i.i.i.i = load i8, ptr %i.dq, align 1, !tbaa !15, !noalias !196
  %.not.i26.i.i.i.i.i = icmp eq i8 %.val24.i.i.i.i.i, 0
  br i1 %.not.i26.i.i.i.i.i, label %bb.v, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i
  %i.dr = zext i8 %i.dp to i32
  %i.ds = add nuw nsw i32 %i.bu, 1                ; 2 uses
  %i.dt = icmp samesign ult i32 %i.ds, %i.dr
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.bs, i64 256 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i8 [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dv, %bb.w ] ; 3 uses
  %i.dv = add i8 %.01.i.i.i.i.i, -1               ; 3 uses
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103, !noalias !196 ; 2 uses
  %i.dz = zext i8 %.01.i.i.i.i.i to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dz
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !103, !noalias !196
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 %.01.i.i.i.i.i, ptr %i.eb, align 1, !tbaa !15, !noalias !196
  %i.ec = zext i8 %i.dv to i32
  %i.ed = icmp samesign ult i32 %i.ds, %i.ec
  br i1 %i.ed, label %bb.w, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i, !llvm.loop !206

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i: ; preds = %bb.w, %bb.v, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !94, !noalias !196
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.d, align 8, !tbaa !94, !noalias !196
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !196
  br label %_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_.exit

_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_.exit: ; preds = %bb.j, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i
  %.pre-phi14 = phi i64 [ %.pre, %bb.j ], [ %i.bx, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i ]
  %.sroa.0.0.copyload.i.sink.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %bb.j ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i ]
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.sink.i.i.i, i64 %.pre-phi14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  ret ptr %i.eh
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val.i.i4 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.c = icmp eq i64 %.val.i.i4, 0
  br i1 %i.c, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i5 = load ptr, ptr %i.a, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #20, !inline_history !207
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !103    ; 10 uses
  %.val98 = load ptr, ptr %i.b, align 8, !tbaa !103 ; 6 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !87
  %.not = icmp eq ptr %i.b, %.val117
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val105 = load i8, ptr %i.c, align 1, !tbaa !15 ; 5 uses
  %.not84 = icmp eq i8 %.val105, 0
  br i1 %.not84, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val105, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val98, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 2 uses
  %.val115 = load i8, ptr %i.i, align 1, !tbaa !15 ; 3 uses
  %i.j = icmp ult i8 %.val115, 6
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 6, %.val115
  %i.k = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 6
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n
  %.sroa.speculated126 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 3 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated126 to i32 ; 2 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow139 = add nuw nsw i8 %.sroa.speculated126, %.val115
  %i.r = icmp samesign ult i8 %narrow139, 6
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 noundef zeroext %.sroa.speculated126, ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.a, align 4, !tbaa !3
  %i.t = and i32 %i.s, 255
  %i.u = sub nsw i32 %i.t, %i.q                   ; 3 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !3
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.val112 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.w = zext i8 %.val112 to i32
  %i.x = add nsw i32 %i.u, 1
  %i.y = add nsw i32 %i.x, %i.w
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.z = getelementptr i8, ptr %.val98, i64 10
  %.val95 = load i8, ptr %i.z, align 1, !tbaa !15 ; 2 uses
  %i.aa = icmp ult i8 %.val105, %.val95
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = add nuw i8 %.val105, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.val98, i64 256
  %i.ad = zext i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 10
  %.val111 = load i8, ptr %i.ag, align 1, !tbaa !15 ; 3 uses
  %i.ah = icmp ult i8 %.val111, 6
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow140 = sub nuw nsw i8 6, %.val111
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.inv = icmp sgt i32 %i.ai, 0
  %i.aj = zext i1 %.inv to i8
  %i.ak = lshr i8 %narrow140, %i.aj
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ak, i8 1) ; 3 uses
  %i.al = and i32 %i.ai, 255
  %i.am = getelementptr i8, ptr %i.b, i64 10
  %.val94 = load i8, ptr %i.am, align 1, !tbaa !15
  %i.an = zext i8 %.val94 to i32
  %i.ao = zext nneg i8 %.sroa.speculated to i32
  %i.ap = sub nsw i32 %i.an, %i.ao
  %.not86 = icmp sle i32 %i.al, %i.ap
  %narrow141 = add nuw nsw i8 %.sroa.speculated, %.val111
  %i.aq = icmp samesign ult i8 %narrow141, 6
  %or.cond138 = select i1 %.not86, i1 true, i1 %i.aq
  br i1 %or.cond138, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.af)
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !103
  %i.at = getelementptr i8, ptr %i.as, i64 10
  %.val93 = load i8, ptr %i.at, align 1, !tbaa !15
  %i.au = zext i8 %.val93 to i32                  ; 2 uses
  %i.av = icmp sgt i32 %i.ar, %i.au
  br i1 %i.av, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aw = xor i32 %i.au, -1
  %i.ax = add nsw i32 %i.ar, %i.aw
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ay = icmp eq i8 %.val95, 6
  br i1 %i.ay, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.az = zext i8 %.val105 to i32
  store ptr %.val98, ptr %2, align 8, !tbaa !131
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !135
  call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2)
  %i.bb = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %.val97 = load ptr, ptr %i.bb, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 6 uses
  store ptr %.val98, ptr %i.bc, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  store i32 0, ptr %i.bd, align 8
  store ptr %i.b, ptr %i.be, align 8, !tbaa !103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.bf, align 1, !tbaa !15
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !103
  store ptr %i.bc, ptr %0, align 8, !tbaa !103
  %.pre = load ptr, ptr %1, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bg = phi ptr [ %i.bb, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %.val97, %bb.m ], [ %.val98, %bb.l ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 11
  %.val96 = load i8, ptr %i.bh, align 1, !tbaa !15
  %.not142 = icmp eq i8 %.val96, 0
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  %.val99 = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bj = add i8 %.val99, 1                       ; 2 uses
  br i1 %.not142, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #22 ; 9 uses
  store ptr %.082, ptr %i.bk, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bj, ptr %i.bl, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  store i8 0, ptr %i.bm, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  store i8 0, ptr %i.bn, align 2, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  store i8 6, ptr %i.bo, align 1, !tbaa !15
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i32 noundef %i.bp, ptr noundef nonnull %i.bk)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val118 = load ptr, ptr %i.bq, align 8, !tbaa !103
  %i.br = load ptr, ptr %1, align 8, !tbaa !103
  %i.bs = icmp eq ptr %.val118, %i.br
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !103
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bt = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 7 uses
  store ptr %.082, ptr %i.bt, align 8, !tbaa !103
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.bj, ptr %i.bu, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  store i8 0, ptr %i.bv, align 1, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  store i8 0, ptr %i.bw, align 2, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  store i8 0, ptr %i.bx, align 1, !tbaa !15
  %i.by = load i32, ptr %i.a, align 4, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i32 noundef %i.by, ptr noundef nonnull %i.bt)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.p ], [ %i.bt, %bb.r ]
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !103
  %i.cb = getelementptr i8, ptr %i.ca, i64 10
  %.val = load i8, ptr %i.cb, align 1, !tbaa !15
  %i.cc = zext i8 %.val to i32                    ; 2 uses
  %i.cd = icmp sgt i32 %i.bz, %i.cc
  br i1 %i.cd, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = xor i32 %i.cc, -1
  %i.cf = add nsw i32 %i.bz, %i.ce
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink149 = phi i32 [ %i.ax, %bb.k ], [ %i.y, %bb.f ], [ %i.cf, %bb.t ]
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.h, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink149, ptr %i.a, align 4, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !103
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11         ; 2 uses
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !15 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  %i.b = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.b, align 1, !tbaa !15 ; 3 uses
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = zext i8 %.val66 to i64
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.i5 = icmp eq i8 %.val66, 0
  br i1 %.not.i5, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i6 = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i6, i64 32
  tail call fastcc void @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #19, !inline_history !208
  %i.g = load ptr, ptr %.0.i6, align 8, !tbaa !33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i6, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit, label %.lr.ph, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.val63.pre = load i8, ptr %i.a, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit, %bb.b
  %.val63 = phi i8 [ %.val63.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit ], [ %.val55, %bb.b ] ; 2 uses
  %i.m = icmp eq i8 %.val63, 0
  %i.n = select i1 %i.m, i8 6, i8 %.val63
  %i.o = zext i8 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 40
  %i.q = add nuw nsw i64 %i.p, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %.val66, 0
  br i1 %i.r, label %.loopexit.sink.split, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %bb.c
  %.val59 = load ptr, ptr %0, align 8, !tbaa !103
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %.lr.ph10
  %.0499 = phi ptr [ %.049.val69, %.lr.ph10 ], [ %0, %.lr.ph10.preheader ]
  %i.s = getelementptr i8, ptr %.0499, i64 256
  %.049.val69 = load ptr, ptr %i.s, align 8, !tbaa !103 ; 4 uses
  %i.t = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val = load i8, ptr %i.t, align 1, !tbaa !15
  %.not.i70 = icmp eq i8 %.049.val, 0
  br i1 %.not.i70, label %.lr.ph10, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %.lr.ph10
  %i.u = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val62 = load i8, ptr %i.u, align 1, !tbaa !15
  %i.v = zext i8 %.049.val62 to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.v, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.147
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103  ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 11
  %.val56 = load i8, ptr %i.z, align 1, !tbaa !15
  %.not.i71 = icmp eq i8 %.val56, 0
  br i1 %.not.i71, label %.lr.ph14, label %bb.e

.lr.ph14:                                         ; preds = %bb.d, %.lr.ph14
  %.15013 = phi ptr [ %.150.val68, %.lr.ph14 ], [ %i.y, %bb.d ]
  %i.aa = getelementptr i8, ptr %.15013, i64 256
  %.150.val68 = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 5 uses
  %i.ab = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val = load i8, ptr %i.ab, align 1, !tbaa !15
  %.not.i72 = icmp eq i8 %.150.val, 0
  br i1 %.not.i72, label %.lr.ph14, label %._crit_edge15, !llvm.loop !211

._crit_edge15:                                    ; preds = %.lr.ph14
  %i.ac = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val61 = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ad = zext i8 %.150.val61 to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge15, %bb.d
  %.251 = phi ptr [ %.150.val68, %._crit_edge15 ], [ %i.y, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.ad, %._crit_edge15 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %.150.val57, %._crit_edge15 ], [ %.1, %bb.d ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.251, i64 10
  %.251.val65 = load i8, ptr %i.ae, align 1, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.ag = zext i8 %.251.val65 to i64
  %.idx25 = mul nuw nsw i64 %i.ag, 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx25
  %.not.i7417 = icmp eq i8 %.251.val65, 0
  br i1 %.not.i7417, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.0.i7318 = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.af, %bb.e ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107 ; 4 uses
  %.not.i82 = icmp eq ptr %i.aj, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph20
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val.i.i4.i = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.al = icmp eq i64 %.val.i.i4.i, 0
  br i1 %i.al, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i5.i = load ptr, ptr %i.aj, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 24) #20, !inline_history !212
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit: ; preds = %.lr.ph20, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i
  store ptr null, ptr %i.ai, align 8, !tbaa !107
  %i.am = load ptr, ptr %.0.i7318, align 8, !tbaa !33 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 40 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ar, %i.ah
  br i1 %.not.i74, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, label %.lr.ph20, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.e
  %i.as = getelementptr i8, ptr %.251, i64 11
  %.251.val = load i8, ptr %i.as, align 1, !tbaa !15 ; 2 uses
  %i.at = icmp eq i8 %.251.val, 0
  %i.au = select i1 %i.at, i8 6, i8 %.251.val
  %i.av = zext i8 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ax) #20
  %i.ay = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.ay, align 1, !tbaa !15 ; 2 uses
  %i.az = zext i8 %.2.val to i64
  %.not.not = icmp ult i64 %.248, %i.az
  br i1 %.not.not, label %.backedge, label %.preheader2

.backedge:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, %bb.k
  %.147.be.in = phi i64 [ %.248, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %i.bq, %bb.k ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %.3.val, %bb.k ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !213

.preheader2:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, %bb.j
  %.3.val64 = phi i8 [ %.val, %bb.j ], [ %.2.val, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 2 uses
  %.3 = phi ptr [ %.3.val, %bb.j ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 4 uses
  %i.ba = getelementptr i8, ptr %.3, i64 8
  %.3.val60 = load i8, ptr %i.ba, align 1, !tbaa !15 ; 2 uses
  %.3.val = load ptr, ptr %.3, align 8, !tbaa !103 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.bc = zext i8 %.3.val64 to i64
  %.idx26 = mul nuw nsw i64 %i.bc, 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx26
  %.not.i7721 = icmp eq i8 %.3.val64, 0
  br i1 %.not.i7721, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.0.i7622 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.bb, %.preheader2 ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107 ; 4 uses
  %.not.i86 = icmp eq ptr %i.bf, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, label %bb.h

bb.h:                                             ; preds = %.lr.ph24
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %.val.i.i4.i87 = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bh = icmp eq i64 %.val.i.i4.i87, 0
  br i1 %i.bh, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i5.i88 = load ptr, ptr %i.bf, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i88)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95: ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 24) #20, !inline_history !212
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96: ; preds = %.lr.ph24, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95
  store ptr null, ptr %i.be, align 8, !tbaa !107
  %i.bi = load ptr, ptr %.0.i7622, align 8, !tbaa !33 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 40 ; 2 uses
  %.not.i77 = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i77, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %.preheader2
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 312) #20
  %i.bo = icmp eq ptr %.3.val, %.val59
  br i1 %i.bo, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78
  %i.bp = getelementptr i8, ptr %.3.val, i64 10
  %.val = load i8, ptr %i.bp, align 1, !tbaa !15  ; 2 uses
  %.not = icmp ult i8 %.3.val60, %.val
  br i1 %.not, label %bb.k, label %.preheader2, !llvm.loop !214

bb.k:                                             ; preds = %bb.j
  %i.bq = zext i8 %.3.val60 to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %.sink = phi i64 [ %i.q, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit ], [ 312, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #20
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, %.loopexit.sink.split
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 10         ; 7 uses
  %.val48 = load i8, ptr %i.e, align 1, !tbaa !15
  %i.f = zext i8 %.val48 to i64
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val53 = load i8, ptr %i.g, align 1, !tbaa !15
  %i.h = zext i8 %.val53 to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.f ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val51, i64 16
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.h ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.p, ptr %i.d, align 8, !tbaa !7
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !33
  %i.s = load i64, ptr %i.d, align 8, !tbaa !7
  store i64 %i.s, ptr %i.m, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.a
  %i.t = phi ptr [ %i.r, %.noexc.i.i.i.i.i.i.i ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !15
  store i8 %i.u, ptr %i.t, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !30
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !107
  store ptr null, ptr %i.aa, align 8, !tbaa !107
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !33  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ag = zext i8 %1 to i32                       ; 3 uses
  %i.ah = add nsw i32 %i.ag, -1                   ; 3 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.ai, 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  %.not1.i = icmp eq i32 %i.ah, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.val47 = load i8, ptr %i.e, align 1, !tbaa !15
  %i.al = zext i8 %.val47 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.al
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i.pn = phi ptr [ %.03.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.am, %.lr.ph.preheader.i ] ; 4 uses
  %.0122.i = phi ptr [ %i.bh, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.aj, %.lr.ph.preheader.i ] ; 6 uses
  %.03.i = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 40 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 56 ; 3 uses
  store ptr %i.an, ptr %.03.i, align 8, !tbaa !39
  %i.ao = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !7
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i.i.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i.i.i.i55

.noexc.i.i.i.i.i.i.i60:                           ; preds = %.lr.ph.i
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %.03.i, align 8, !tbaa !33
  %i.at = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.at, ptr %i.an, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i55

._crit_edge.i.i.i.i.i.i.i.i55:                    ; preds = %.noexc.i.i.i.i.i.i.i60, %.lr.ph.i
  %i.au = phi ptr [ %i.as, %.noexc.i.i.i.i.i.i.i60 ], [ %i.an, %.lr.ph.i ] ; 2 uses
  switch i64 %i.aq, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !15
  store i8 %i.av, ptr %i.au, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i55
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 48
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !30
  %i.ay = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i57 = load i64, ptr %i.bb, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i57, ptr %i.ba, align 8, !tbaa !107
  store ptr null, ptr %i.bb, align 8, !tbaa !107
  %i.bc = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58
  %i.bh = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %i.ak
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.val50 = load ptr, ptr %0, align 8, !tbaa !103
  %.val52 = load i8, ptr %i.g, align 8, !tbaa !15
  %i.bi = zext i8 %.val52 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bi ; 7 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !39
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !7
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i.i.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i.i.i.i61

.noexc.i.i.i.i.i.i.i67:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.br, ptr %i.bk, align 8, !tbaa !33
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i61:                    ; preds = %.noexc.i.i.i.i.i.i.i67, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.bt = phi ptr [ %i.br, %.noexc.i.i.i.i.i.i.i67 ], [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.bp, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i61
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !15
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bn, i64 %i.bp, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i61
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !30
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i63 = load i64, ptr %i.ca, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i63, ptr %i.bz, align 8, !tbaa !107
  store ptr null, ptr %i.ca, align 8, !tbaa !107
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64
  %i.cg = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %.val54 = load i8, ptr %i.cg, align 1, !tbaa !15 ; 2 uses
  %i.ch = zext i8 %.val54 to i32
  %i.ci = sub nsw i32 %i.ch, %i.ag
  %i.cj = zext i8 %1 to i64                       ; 3 uses
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.cj ; 2 uses
  %narrow = mul nsw i32 %i.ci, 40
  %.idx.i69 = sext i32 %narrow to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i69
  %.not1.i70 = icmp eq i8 %.val54, %1
  br i1 %.not1.i70, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79
  %.03.i73 = phi ptr [ %i.dh, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79 ], [ %i.aj, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68 ] ; 8 uses
  %.0122.i74 = phi ptr [ %i.dg, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79 ], [ %i.ck, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68 ] ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.03.i73, i64 16 ; 3 uses
  store ptr %i.cm, ptr %.03.i73, align 8, !tbaa !39
  %i.cn = load ptr, ptr %.0122.i74, align 8, !tbaa !33 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !7
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i.i.i.i.i.i.i82, label %._crit_edge.i.i.i.i.i.i.i.i75

.noexc.i.i.i.i.i.i.i82:                           ; preds = %.lr.ph.i72
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i73, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cr, ptr %.03.i73, align 8, !tbaa !33
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i75

._crit_edge.i.i.i.i.i.i.i.i75:                    ; preds = %.noexc.i.i.i.i.i.i.i82, %.lr.ph.i72
  %i.ct = phi ptr [ %i.cr, %.noexc.i.i.i.i.i.i.i82 ], [ %i.cm, %.lr.ph.i72 ] ; 2 uses
  switch i64 %i.cp, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i75
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !15
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i75
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03.i73, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !30
  %i.cx = load ptr, ptr %.03.i73, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %.03.i73, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i77 = load i64, ptr %i.da, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i77, ptr %i.cz, align 8, !tbaa !107
  store ptr null, ptr %i.da, align 8, !tbaa !107
  %i.db = load ptr, ptr %.0122.i74, align 8, !tbaa !33 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !15
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78
  %i.dg = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 40 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03.i73, i64 40
  %.not.i80 = icmp eq ptr %i.dg, %i.cl
  br i1 %.not.i80, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83, label %.lr.ph.i72, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68
  %i.di = getelementptr i8, ptr %0, i64 11
  %.val49 = load i8, ptr %i.di, align 1, !tbaa !15
  %.not.i84 = icmp eq i8 %.val49, 0
  br i1 %.not.i84, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.cj, 1
  %i.dl = icmp eq i32 %i.ah, 0
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cj, 254
  br label %bb.j

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i8 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %.val46.epil = load i8, ptr %i.e, align 1, !tbaa !15
  %i.dm = trunc i64 %indvars.iv.epil.init to i8
  %i.dn = add i8 %i.dm, 1
  %i.do = add i8 %.val46.epil, %i.dn              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.epil.init
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !103 ; 3 uses
  %i.dr = zext i8 %i.do to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !103
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.do, ptr %i.dt, align 1, !tbaa !15
  store ptr %0, ptr %i.dq, align 8, !tbaa !103
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.cg, align 1, !tbaa !15
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %.val46 = load i8, ptr %i.e, align 1, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next to i8
  %i.dw = add i8 %.val46, %i.dv                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103 ; 3 uses
  %i.dz = zext i8 %i.dw to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dz
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !103
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 %i.dw, ptr %i.eb, align 1, !tbaa !15
  store ptr %0, ptr %i.dy, align 8, !tbaa !103
  %.val46.1 = load i8, ptr %i.e, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ec = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ed = add i8 %.val46.1, %i.ec                 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !103 ; 3 uses
  %i.eg = zext i8 %i.ed to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !103
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.ed, ptr %i.ei, align 1, !tbaa !15
  store ptr %0, ptr %i.ef, align 8, !tbaa !103
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.j, !llvm.loop !215

bb.k:                                             ; preds = %.lr.ph6, %bb.k
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.eq, %bb.k ] ; 4 uses
  %i.ej = add i8 %.05, %1
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !103 ; 3 uses
  %i.en = zext i8 %.05 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.en
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !103
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %.05, ptr %i.ep, align 1, !tbaa !15
  store ptr %2, ptr %i.em, align 8, !tbaa !103
  %i.eq = add i8 %.05, 1                          ; 2 uses
  %i.er = zext i8 %i.eq to i32
  %.val45 = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.es = zext i8 %.val45 to i32
  %i.et = sub nsw i32 %i.es, %i.ag
  %.not = icmp slt i32 %i.et, %i.er
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !216

.loopexit:                                        ; preds = %bb.k, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83
  %.val44 = load i8, ptr %i.e, align 1, !tbaa !15
  %i.eu = add i8 %.val44, %1
  store i8 %i.eu, ptr %i.e, align 1, !tbaa !15
  %.val = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ev = sub i8 %.val, %1
  store i8 %i.ev, ptr %i.cg, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.e, align 1, !tbaa !15 ; 2 uses
  %i.f = zext i8 %1 to i32                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = zext i8 %.val58 to i64                   ; 2 uses
  %i.i = zext i8 %1 to i64
  %.idx.i = mul nuw nsw i64 %i.h, 40
  %i.j = getelementptr [40 x i8], ptr %i.g, i64 %i.i
  %i.k = getelementptr [40 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 4 uses
  %.0142.i = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.l, %.lr.ph.preheader.i ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.03.i, i64 -40 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.0142.i, i64 -40 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.03.i, i64 -24 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.0142.i, i64 -32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.r, ptr %i.d, align 8, !tbaa !7
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !33
  %i.u = load i64, ptr %i.d, align 8, !tbaa !7
  store i64 %i.u, ptr %i.o, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i ] ; 2 uses
  switch i64 %i.r, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !15
  store i8 %i.w, ptr %i.v, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = load i64, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.03.i, i64 -32
  store i64 %i.x, ptr %i.y, align 8, !tbaa !30
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ab = getelementptr inbounds i8, ptr %.03.i, i64 -8
  %i.ac = getelementptr inbounds i8, ptr %.0142.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !107
  store ptr null, ptr %i.ac, align 8, !tbaa !107
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.0142.i, i64 -24 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit, label %.lr.ph.i, !llvm.loop !136

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %bb.a
  %i.ai = add nsw i32 %i.f, -1                    ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val57 = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.al = zext i8 %.val57 to i64
  %.val55 = load ptr, ptr %0, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.aj ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val55, i64 16
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.al ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !39
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.as, ptr %i.c, align 8, !tbaa !7
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i.i.i.i.i.i.i65, label %._crit_edge.i.i.i.i.i.i.i.i59

.noexc.i.i.i.i.i.i.i65:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %i.am, align 8, !tbaa !33
  %i.av = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i59

._crit_edge.i.i.i.i.i.i.i.i59:                    ; preds = %.noexc.i.i.i.i.i.i.i65, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit
  %i.aw = phi ptr [ %i.au, %.noexc.i.i.i.i.i.i.i65 ], [ %i.ap, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.as, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i59
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !15
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i59
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !30
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i61 = load i64, ptr %i.bd, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i61, ptr %i.bc, align 8, !tbaa !107
  store ptr null, ptr %i.bd, align 8, !tbaa !107
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62
  %i.bj = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bk = zext i8 %.val52 to i32                  ; 2 uses
  %i.bl = sub nsw i32 %i.bk, %i.ai
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %.idx.i66 = mul nuw nsw i64 %i.aj, 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i66
  %.not1.i67 = icmp eq i32 %i.ai, 0
  br i1 %.not1.i67, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75
  %.03.i70 = phi ptr [ %i.cl, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75 ], [ %i.g, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit ] ; 8 uses
  %.0122.i = phi ptr [ %i.ck, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75 ], [ %i.bo, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03.i70, i64 16 ; 3 uses
  store ptr %i.bq, ptr %.03.i70, align 8, !tbaa !39
  %i.br = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !7
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i.i.i.i.i.i.i78, label %._crit_edge.i.i.i.i.i.i.i.i71

.noexc.i.i.i.i.i.i.i78:                           ; preds = %.lr.ph.i69
  %i.bv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i70, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bv, ptr %.03.i70, align 8, !tbaa !33
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i71

._crit_edge.i.i.i.i.i.i.i.i71:                    ; preds = %.noexc.i.i.i.i.i.i.i78, %.lr.ph.i69
  %i.bx = phi ptr [ %i.bv, %.noexc.i.i.i.i.i.i.i78 ], [ %i.bq, %.lr.ph.i69 ] ; 2 uses
  switch i64 %i.bt, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i71
  %i.by = load i8, ptr %i.br, align 1, !tbaa !15
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.br, i64 %i.bt, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i71
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03.i70, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !30
  %i.cb = load ptr, ptr %.03.i70, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.cd = getelementptr inbounds nuw i8, ptr %.03.i70, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i73 = load i64, ptr %i.ce, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i73, ptr %i.cd, align 8, !tbaa !107
  store ptr null, ptr %i.ce, align 8, !tbaa !107
  %i.cf = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i74: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i74
  %i.ck = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.03.i70, i64 40
  %.not.i76 = icmp eq ptr %i.ck, %i.bp
  br i1 %.not.i76, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, label %.lr.ph.i69, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75
  %.val51.pre = load i8, ptr %i.bj, align 1, !tbaa !15
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit ], [ %i.bk, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit ]
  %.val54 = load ptr, ptr %0, align 8, !tbaa !103
  %.val56 = load i8, ptr %i.ak, align 8, !tbaa !15
  %i.cm = zext i8 %.val56 to i64
  %i.cn = sub nsw i32 %.pre-phi, %i.f
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.val54, i64 16
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.cm ; 7 uses
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.co ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !39
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !7
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i.i.i.i.i.i85, label %._crit_edge.i.i.i.i.i.i.i.i79

.noexc.i.i.i.i.i.i.i85:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cx, ptr %i.cq, align 8, !tbaa !33
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i79

._crit_edge.i.i.i.i.i.i.i.i79:                    ; preds = %.noexc.i.i.i.i.i.i.i85, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.cz = phi ptr [ %i.cx, %.noexc.i.i.i.i.i.i.i85 ], [ %i.cs, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.cv, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i79
  %i.da = load i8, ptr %i.ct, align 1, !tbaa !15
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i79
  %i.db = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !30
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i81 = load i64, ptr %i.dg, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i81, ptr %i.df, align 8, !tbaa !107
  store ptr null, ptr %i.dg, align 8, !tbaa !107
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82
  %i.dm = getelementptr i8, ptr %0, i64 11
  %.val53 = load i8, ptr %i.dm, align 1, !tbaa !15
  %.not.i87 = icmp eq i8 %.val53, 0
  br i1 %.not.i87, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86
  %.val50 = load i8, ptr %i.e, align 1, !tbaa !15 ; 5 uses
  %i.dn = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.dn, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.dp = zext i8 %i.dn to i64                    ; 2 uses
  %i.dq = and i8 %.val50, 1
  %lcmp.mod.not.not = icmp eq i8 %i.dq, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.dr = add i8 %.val50, %1                      ; 2 uses
  %i.ds = zext i8 %.val50 to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !103 ; 3 uses
  %i.dv = zext i8 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dv
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !103
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 %i.dr, ptr %i.dx, align 1, !tbaa !15
  store ptr %2, ptr %i.du, align 8, !tbaa !103
  %indvars.iv.next.prol = add nsw i64 %i.dp, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.dp, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i8 %.val50, 0
  br i1 %i.dy, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.j
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.eb = add i8 %1, 1                            ; 2 uses
  %umax = call i8 @llvm.umax.i8(i8 %i.eb, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.ec = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter23 = and i64 %i.ec, 1
  %i.ed = icmp ult i8 %i.eb, 3
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.ec, -2
  %invariant.op = sub i8 1, %1
  br label %bb.k

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ee = trunc nuw i64 %indvars.iv to i8
  %i.ef = add i8 %i.ee, -1                        ; 2 uses
  %i.eg = add i8 %i.ef, %1                        ; 2 uses
  %i.eh = zext i8 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !103 ; 3 uses
  %i.ek = zext i8 %i.eg to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ek
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !103
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i8 %i.eg, ptr %i.em, align 1, !tbaa !15
  store ptr %2, ptr %i.ej, align 8, !tbaa !103
  %i.en = trunc i64 %indvars.iv to i8
  %i.eo = add i8 %i.en, -2                        ; 2 uses
  %i.ep = add i8 %i.eo, %1                        ; 2 uses
  %i.eq = zext i8 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !103 ; 3 uses
  %i.et = zext i8 %i.ep to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.et
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !103
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i8 %i.ep, ptr %i.ev, align 1, !tbaa !15
  store ptr %2, ptr %i.es, align 8, !tbaa !103
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ew = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !217

bb.k:                                             ; preds = %bb.k, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.k ]
  %i.ex = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.ey = trunc nuw i64 %indvars.iv7 to i8
  %i.ez = sub i8 %i.ey, %1
  %i.fa = add i8 %i.ez, %.val49
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !103 ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ex
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !103
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = trunc nuw i64 %i.ex to i8
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !15
  store ptr %2, ptr %i.fd, align 8, !tbaa !103
  %.val49.1 = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.fh = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.fh, %invariant.op
  %i.fi = add i8 %.reass, %.val49.1
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !103 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv7
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !103
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !15
  store ptr %2, ptr %i.fl, align 8, !tbaa !103
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !218

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ec to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.fp = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.fq = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.fr = sub i8 %i.fq, %1
  %i.fs = add i8 %i.fr, %.val49.epil
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !103 ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fp
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !103
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = trunc nuw i64 %i.fp to i8
  store i8 %i.fy, ptr %i.fx, align 1, !tbaa !15
  store ptr %2, ptr %i.fv, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86
  %.val47 = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.fz = sub i8 %.val47, %1
  store i8 %i.fz, ptr %i.bj, align 1, !tbaa !15
  %.val = load i8, ptr %i.e, align 1, !tbaa !15
  %i.ga = add i8 %.val, %1
  store i8 %i.ga, ptr %i.e, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 captures(address) dereferenceable(1) %0, i32 noundef %1, ptr noundef initializes((10, 11)) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 10
  %.val31 = load i8, ptr %i.d, align 1, !tbaa !15
  %i.e = add i8 %.val31, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 10
  %.val39 = load i8, ptr %i.f, align 1, !tbaa !15
  %i.g = lshr i8 %.val39, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.h, align 1, !tbaa !15
  %i.i = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %.val30 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.j = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.k = sub i8 %.val30, %.sink                   ; 3 uses
  store i8 %i.k, ptr %i.i, align 1, !tbaa !15
  %.val37 = load i8, ptr %i.j, align 1, !tbaa !15 ; 2 uses
  %i.l = zext i8 %.val37 to i64
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.l, 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not1.i = icmp eq i8 %.val37, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i = phi ptr [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.q, %.lr.ph.preheader.i ] ; 8 uses
  %.0122.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.o, %.lr.ph.preheader.i ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.03.i, align 8, !tbaa !39
  %i.s = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.u, ptr %i.c, align 8, !tbaa !7
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %.03.i, align 8, !tbaa !33
  %i.x = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.x, ptr %i.r, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i
  %i.y = phi ptr [ %i.w, %.noexc.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !15
  store i8 %i.z, ptr %i.y, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !30
  %i.ac = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.03.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !107
  store ptr null, ptr %i.af, align 8, !tbaa !107
  %i.ag = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i, i64 40
  %.not.i = icmp eq ptr %i.al, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, label %.lr.ph.i, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i
  %.pre = load i8, ptr %i.i, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, %bb.d
  %i.an = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ao = add i8 %i.an, -1                        ; 2 uses
  store i8 %i.ao, ptr %i.i, align 1, !tbaa !15
  %.val34 = load ptr, ptr %0, align 8, !tbaa !103 ; 5 uses
  %i.ap = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val36 = load i8, ptr %i.ap, align 8, !tbaa !15 ; 4 uses
  %i.aq = zext i8 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.aq ; 3 uses
  %i.as = zext i8 %.val36 to i32
  %i.at = getelementptr i8, ptr %.val34, i64 10   ; 3 uses
  %.val21.i = load i8, ptr %i.at, align 1, !tbaa !15 ; 2 uses
  %i.au = icmp ult i8 %.val36, %.val21.i
  %i.av = zext i8 %.val36 to i64                  ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.ax = getelementptr [40 x i8], ptr %i.aw, i64 %i.av ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val36
  %i.ay = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ay, 40
  %i.az = getelementptr i8, ptr %i.ax, i64 40
  %i.ba = getelementptr [40 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.ax, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %.lr.ph.preheader.i.i
  %.03.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0142.i.i = phi ptr [ %i.bd, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.bb, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.03.i.i, i64 -40 ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.03.i.i, i64 -24 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !39
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !7
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !33
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.bl = phi ptr [ %i.bj, %.noexc.i.i.i.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i ] ; 2 uses
  switch i64 %i.bh, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bm = load i8, ptr %i.bf, align 1, !tbaa !15
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !30
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.br, align 8, !tbaa !107
  store ptr null, ptr %i.bs, align 8, !tbaa !107
  %i.bt = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.bd, %i.ax
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i, label %.lr.ph.i.i, !llvm.loop !136

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %i.av ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !39
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !7
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i
  %i.cf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cf, ptr %i.bz, align 8, !tbaa !33
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i
  %i.ch = phi ptr [ %i.cf, %.noexc.i.i.i.i.i.i ], [ %i.ca, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i ] ; 2 uses
  switch i64 %i.cd, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !15
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cb, i64 %i.cd, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !30
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.cn, align 8, !tbaa !107
  store ptr null, ptr %i.co, align 8, !tbaa !107
  %.val19.i = load i8, ptr %i.at, align 1, !tbaa !15
  %i.cp = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cp, ptr %i.at, align 1, !tbaa !15
  %i.cq = getelementptr i8, ptr %.val34, i64 11
  %.val22.i = load i8, ptr %i.cq, align 1, !tbaa !15
  %.not.i24.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i24.i, label %bb.k, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = add nuw nsw i32 %i.as, 1                ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph.i41, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.val34, i64 256 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i41
  %.01.i = phi i8 [ %i.cp, %.lr.ph.i41 ], [ %i.cv, %bb.l ] ; 3 uses
  %i.cv = add i8 %.01.i, -1                       ; 3 uses
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !103 ; 2 uses
  %i.cz = zext i8 %.01.i to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !103
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.01.i, ptr %i.db, align 1, !tbaa !15
  %i.dc = zext i8 %i.cv to i32
  %i.dd = icmp samesign ult i32 %i.cs, %i.dc
  br i1 %i.dd, label %bb.l, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit, !llvm.loop !219

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit: ; preds = %bb.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i, %bb.k
  %.val28 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.de = zext i8 %.val28 to i64
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !107 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %.val.i.i4.i.i.i = load i64, ptr %i.di, align 8, !tbaa !94
  %i.dj = icmp eq i64 %.val.i.i4.i.i.i, 0
  br i1 %i.dj, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i5.i.i.i = load ptr, ptr %i.dh, align 8, !tbaa !87
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i) #23, !inline_history !172
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i: ; preds = %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 24) #20, !inline_history !172
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !33 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #20, !inline_history !173
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.val33 = load ptr, ptr %0, align 8, !tbaa !103
  %.val35 = load i8, ptr %i.ap, align 8, !tbaa !15
  %i.dp = add i8 %.val35, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.val33, i64 256
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  store ptr %2, ptr %i.ds, align 8, !tbaa !103
  %i.dt = getelementptr i8, ptr %0, i64 11
  %.val32 = load i8, ptr %i.dt, align 1, !tbaa !15
  %.not.i42 = icmp eq i8 %.val32, 0
  br i1 %.not.i42, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit
  %.val27 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.p
  %.0.in3 = phi i8 [ %.val27, %bb.o ], [ %.0, %bb.p ]
  %.0252 = phi i8 [ 0, %bb.o ], [ %i.ec, %bb.p ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.dw = zext i8 %.0 to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103 ; 3 uses
  %i.dz = zext i8 %.0252 to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dz
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !103
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 %.0252, ptr %i.eb, align 1, !tbaa !15
  store ptr %2, ptr %i.dy, align 8, !tbaa !103
  %i.ec = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.j, align 1, !tbaa !15
  %.not = icmp ugt i8 %i.ec, %.val
  br i1 %.not, label %.loopexit, label %bb.p, !llvm.loop !220

.loopexit:                                        ; preds = %bb.p, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 %0, ptr %1, ptr noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !94
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = inttoptr i64 %i.f to ptr
  br label %_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit

_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef %.0.i.i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 0, i64 noundef %i.p, ptr noundef %1, i64 noundef %0) ; 0 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !3
  %i.s = or i32 %i.r, 1
  store i32 %i.s, ptr %i.l, align 4, !tbaa !3
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %.val20 = load ptr, ptr %2, align 8, !tbaa !87
  %.val20.val = load ptr, ptr %.val20, align 8, !tbaa !103 ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 8
  %.val21 = load ptr, ptr %i.t, align 8, !tbaa !103 ; 3 uses
  %i.u = getelementptr i8, ptr %.val21, i64 10
  %.val.i.i = load i8, ptr %i.u, align 1, !tbaa !15 ; 2 uses
  %i.v = zext i8 %.val.i.i to i32
  %i.w = icmp ne ptr %.val20.val, %.val21
  %i.x = icmp ne i8 %.val.i.i, 0
  %.not6.i11 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %.not6.i11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.y = icmp eq i64 %0, 0
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit
  %.sroa.8.013 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 3 uses
  %.sroa.01.012 = phi ptr [ %.val20.val, %.lr.ph ], [ %.sroa.01.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 7 uses
  %i.ad = and i32 %.sroa.8.013, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 16
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.ae ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %i.ab, ptr %4, align 8, !tbaa !39
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !7
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !33
  %i.am = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.am, ptr %i.ab, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.h
  %i.an = phi ptr [ %i.al, %.noexc.i ], [ %i.ab, %bb.h ] ; 2 uses
  switch i64 %i.aj, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !15
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  store i64 %i.ap, ptr %i.ac, align 8, !tbaa !30
  %i.aq = load ptr, ptr %4, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  store i64 %0, ptr %5, align 8, !tbaa !7
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  store i64 1, ptr %6, align 8
  store ptr @.str.1, ptr %i.z, align 8
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !30
  store i64 %i.au, ptr %7, align 8
  store ptr %i.as, ptr %i.aa, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.av = load ptr, ptr %4, align 8, !tbaa !33
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.val19 = load ptr, ptr %i.ax, align 8, !tbaa !107
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 %i.aw, ptr %i.av, ptr noundef %.val19, ptr noundef %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ab
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ba = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bc = getelementptr i8, ptr %.sroa.01.012, i64 11
  %.val1.i.i = load i8, ptr %i.bc, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %.val1.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = add nsw i32 %.sroa.8.013, 1             ; 3 uses
  %i.be = getelementptr i8, ptr %.sroa.01.012, i64 10
  %.val.i.i30 = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bf = zext i8 %.val.i.i30 to i32
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.o
  %.01527.i.i.i = phi ptr [ %.015.val19.i.i.i, %bb.o ], [ %.sroa.01.012, %bb.n ] ; 2 uses
  %.015.val19.i.i.i = load ptr, ptr %.01527.i.i.i, align 8, !tbaa !103 ; 4 uses
  %i.bh = getelementptr i8, ptr %.015.val19.i.i.i, i64 11
  %.015.val19.val.i.i.i = load i8, ptr %i.bh, align 1, !tbaa !15
  %.not22.i.i.i = icmp eq i8 %.015.val19.val.i.i.i, 0
  br i1 %.not22.i.i.i, label %bb.o, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr i8, ptr %.01527.i.i.i, i64 8
  %.015.val20.i.i.i = load i8, ptr %i.bi, align 1, !tbaa !15 ; 2 uses
  %i.bj = getelementptr i8, ptr %.015.val19.i.i.i, i64 10
  %.015.val17.i.i.i = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bk = icmp eq i8 %.015.val20.i.i.i, %.015.val17.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i, label %.critedge.loopexit29.i.i.i, !llvm.loop !221

.thread.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 256
  %i.bm = add i32 %.sroa.8.013, 1
  %i.bn = and i32 %i.bm, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bo
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bp, %.thread.i.i ], [ %i.br, %bb.p ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !103 ; 3 uses
  %i.bq = getelementptr i8, ptr %.116.i.i.i, i64 11
  %.116.val.i.i.i = load i8, ptr %i.bq, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %.116.val.i.i.i, 0
  %i.br = getelementptr i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, !llvm.loop !222

.critedge.loopexit29.i.i.i:                       ; preds = %bb.o
  %i.bs = zext i8 %.015.val20.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.p, %.critedge.loopexit29.i.i.i, %bb.n
  %.sroa.01.1 = phi ptr [ %.116.i.i.i, %bb.p ], [ %.sroa.01.012, %bb.n ], [ %.015.val19.i.i.i, %.critedge.loopexit29.i.i.i ], [ %.sroa.01.012, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.p ], [ %i.bd, %bb.n ], [ %i.bs, %.critedge.loopexit29.i.i.i ], [ %i.bd, %.lr.ph.i.i.i ] ; 2 uses
  %i.bt = icmp ne ptr %.sroa.01.1, %.val21
  %i.bu = icmp ne i32 %.sroa.8.1, %i.v
  %.not6.i = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %.not6.i, label %bb.g, label %.loopexit

bb.q:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ab
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.q
  %i.by = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.bv

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, %bb.f, %bb.b, %_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree20MergeLeafNodesToTreeESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPS3_(i64 %0, ptr %1, ptr noundef readonly captures(none) %2, ptr noundef nonnull captures(address) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !94
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %0, ptr %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val22 = load ptr, ptr %2, align 8, !tbaa !87
  %.val22.val = load ptr, ptr %.val22, align 8, !tbaa !103 ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 8
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !103 ; 3 uses
  %i.e = getelementptr i8, ptr %.val23, i64 10
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !15 ; 2 uses
  %i.f = zext i8 %.val.i.i to i32
  %i.g = icmp ne ptr %.val22.val, %.val23
  %i.h = icmp ne i8 %.val.i.i, 0
  %.not6.i9 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.not6.i9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.i = icmp eq i64 %0, 0
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit
  %.sroa.8.011 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 3 uses
  %.sroa.01.010 = phi ptr [ %.val22.val, %.lr.ph ], [ %.sroa.01.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 7 uses
  %i.n = and i32 %.sroa.8.011, 255
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.010, i64 16
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.o ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %4, align 8, !tbaa !39
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.t, ptr %i.a, align 8, !tbaa !7
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !33
  %i.w = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.w, ptr %i.l, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.x = phi ptr [ %i.v, %.noexc.i ], [ %i.l, %bb.e ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !15
  store i8 %i.y, ptr %i.x, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.z = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  store i64 %i.z, ptr %i.m, align 8, !tbaa !30
  %i.aa = load ptr, ptr %4, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 %0, ptr %5, align 8, !tbaa !7
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  store i64 1, ptr %6, align 8
  store ptr @.str.1, ptr %i.j, align 8
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30
  store i64 %i.ae, ptr %7, align 8
  store ptr %i.ac, ptr %i.k, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.af = load ptr, ptr %4, align 8, !tbaa !33
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.val21 = load ptr, ptr %i.ah, align 8, !tbaa !107
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree20MergeLeafNodesToTreeESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPS3_(i64 %i.ag, ptr %i.af, ptr noundef %.val21, ptr noundef %3)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.l
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.am = getelementptr i8, ptr %.sroa.01.010, i64 11
  %.val1.i.i = load i8, ptr %i.am, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %.val1.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = add nsw i32 %.sroa.8.011, 1             ; 3 uses
  %i.ao = getelementptr i8, ptr %.sroa.01.010, i64 10
  %.val.i.i32 = load i8, ptr %i.ao, align 1, !tbaa !15
  %i.ap = zext i8 %.val.i.i32 to i32
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.01527.i.i.i = phi ptr [ %.015.val19.i.i.i, %bb.l ], [ %.sroa.01.010, %bb.k ] ; 2 uses
  %.015.val19.i.i.i = load ptr, ptr %.01527.i.i.i, align 8, !tbaa !103 ; 4 uses
  %i.ar = getelementptr i8, ptr %.015.val19.i.i.i, i64 11
  %.015.val19.val.i.i.i = load i8, ptr %i.ar, align 1, !tbaa !15
  %.not22.i.i.i = icmp eq i8 %.015.val19.val.i.i.i, 0
  br i1 %.not22.i.i.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr i8, ptr %.01527.i.i.i, i64 8
  %.015.val20.i.i.i = load i8, ptr %i.as, align 1, !tbaa !15 ; 2 uses
  %i.at = getelementptr i8, ptr %.015.val19.i.i.i, i64 10
  %.015.val17.i.i.i = load i8, ptr %i.at, align 1, !tbaa !15
  %i.au = icmp eq i8 %.015.val20.i.i.i, %.015.val17.i.i.i
  br i1 %i.au, label %.lr.ph.i.i.i, label %.critedge.loopexit29.i.i.i, !llvm.loop !221

.thread.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.010, i64 256
  %i.aw = add i32 %.sroa.8.011, 1
  %i.ax = and i32 %i.aw, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.az, %.thread.i.i ], [ %i.bb, %bb.m ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !103 ; 3 uses
  %i.ba = getelementptr i8, ptr %.116.i.i.i, i64 11
  %.116.val.i.i.i = load i8, ptr %i.ba, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %.116.val.i.i.i, 0
  %i.bb = getelementptr i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, !llvm.loop !222

.critedge.loopexit29.i.i.i:                       ; preds = %bb.l
  %i.bc = zext i8 %.015.val20.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.m, %.critedge.loopexit29.i.i.i, %bb.k
  %.sroa.01.1 = phi ptr [ %.116.i.i.i, %bb.m ], [ %.sroa.01.010, %bb.k ], [ %.015.val19.i.i.i, %.critedge.loopexit29.i.i.i ], [ %.sroa.01.010, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.m ], [ %i.an, %bb.k ], [ %i.bc, %.critedge.loopexit29.i.i.i ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %i.bd = icmp ne ptr %.sroa.01.1, %.val23
  %i.be = icmp ne i32 %.sroa.8.1, %i.f
  %.not6.i = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %.not6.i, label %bb.d, label %._crit_edge

bb.n:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.l
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.n
  %i.bi = load i64, ptr %i.l, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.bf
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i8 %1 to i64                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = zext i8 %2 to i64                        ; 2 uses
  %.idx35.i = add nuw nsw i64 %i.d, %i.b
  %i.e = mul nuw nsw i64 %.idx35.i, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not1.i = icmp eq i8 %2, 0                     ; 2 uses
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %i.b, 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, %.lr.ph.preheader.i
  %.02.i = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i ], [ %i.g, %.lr.ph.preheader.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val.i.i4.i.i.i = load i64, ptr %i.j, align 8, !tbaa !94
  %i.k = icmp eq i64 %.val.i.i4.i.i.i, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i5.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i) #23, !inline_history !223
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #20, !inline_history !223
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, %.lr.ph.i
  %i.l = load ptr, ptr %.02.i, align 8, !tbaa !33 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20, !inline_history !224
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.02.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph.i, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, %bb.a
  %i.r = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %.val = load i8, ptr %i.r, align 1, !tbaa !15   ; 4 uses
  %i.s = zext i8 %1 to i32
  %i.t = zext i8 %2 to i32
  %i.u = add nuw nsw i32 %i.t, %i.s               ; 2 uses
  %i.v = zext i8 %.val to i32                     ; 2 uses
  %i.w = and i32 %i.u, 255                        ; 3 uses
  %i.x = sub nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %narrow = mul nsw i32 %i.x, 40
  %.idx.i32 = sext i32 %narrow to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i32
  %.not1.i33 = icmp eq i32 %i.w, %i.v
  br i1 %.not1.i33, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i34

.lr.ph.preheader.i34:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.b
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i34
  %.03.i = phi ptr [ %i.ax, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.ab, %.lr.ph.preheader.i34 ] ; 8 uses
  %.0122.i = phi ptr [ %i.aw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.z, %.lr.ph.preheader.i34 ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.03.i, align 8, !tbaa !39
  %i.ad = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.af, ptr %i.a, align 8, !tbaa !7
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i35
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %.03.i, align 8, !tbaa !33
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i35
  %i.aj = phi ptr [ %i.ah, %.noexc.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i35 ] ; 2 uses
  switch i64 %i.af, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !15
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !30
  %i.an = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %.03.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !107
  store ptr null, ptr %i.aq, align 8, !tbaa !107
  %i.ar = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03.i, i64 40
  %.not.i36 = icmp eq ptr %i.aw, %i.aa
  br i1 %.not.i36, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i35, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  br label %.thread

bb.k:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.w)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel: ; preds = %bb.d, %bb.k
  %.sroa.023.2.peel = phi ptr [ %1, %bb.k ], [ %i.i, %bb.d ] ; 9 uses
  %.sroa.10.2.peel = phi i32 [ %2, %bb.k ], [ %i.p, %bb.d ] ; 7 uses
  %.val7.peel = load ptr, ptr %.sroa.023.2.peel, align 8, !tbaa !103 ; 2 uses
  %.val10.peel = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  %i.au = icmp eq ptr %.val7.peel, %.val10.peel
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel, %bb.a
  %.sroa.9.0.lcssa = phi i32 [ %2, %bb.a ], [ %.sroa.10.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.sroa.10.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ]
  %.val10.lcssa = phi ptr [ %.val1047, %bb.a ], [ %.val10.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.val10, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ] ; 4 uses
  %i.av = getelementptr i8, ptr %.val10.lcssa, i64 10
  %.val7.i = load i8, ptr %i.av, align 1, !tbaa !15
  %.not.i = icmp eq i8 %.val7.i, 0
  br i1 %.not.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit

bb.l:                                             ; preds = %._crit_edge
  %i.aw = getelementptr i8, ptr %.val10.lcssa, i64 11
  %.val.i = load i8, ptr %i.aw, align 1, !tbaa !15
  %.not10.i = icmp eq i8 %.val.i, 0
  br i1 %.not10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.ax, align 8, !tbaa !103
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %.val10.lcssa, i64 256
  %.val9.i = load ptr, ptr %i.ay, align 8, !tbaa !103 ; 3 uses
  %.val1.i.i = load ptr, ptr %.val9.i, align 8, !tbaa !103
  %.val.i.i = load ptr, ptr %.val1.i.i, align 8, !tbaa !103
  store ptr %.val.i.i, ptr %.val9.i, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge.i = phi ptr [ %.val9.i, %bb.n ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, %bb.m ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !103
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef nonnull %.val10.lcssa)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit: ; preds = %._crit_edge, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.az, align 8, !tbaa !94
  %i.ba = icmp eq i64 %.val, 0
  br i1 %i.ba, label %bb.p, label %.thread

bb.p:                                             ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %i.bc = getelementptr i8, ptr %.val12, i64 10
  %.val.i13 = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.bd = zext i8 %.val.i13 to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit
  %.sroa.023.2.pn = phi ptr [ %.sroa.023.2, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ]
  %.sroa.023.048 = phi ptr [ %.val7, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ], [ %.val7.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ] ; 8 uses
  %.sroa.10.049.in.in = getelementptr i8, ptr %.sroa.023.2.pn, i64 8
  %.sroa.10.049.in = load i8, ptr %.sroa.10.049.in.in, align 1, !tbaa !15 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.023.048, i64 10
  %.val9 = load i8, ptr %i.be, align 1, !tbaa !15 ; 7 uses
  %i.bf = icmp ugt i8 %.val9, 2
  br i1 %i.bf, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %.val55.i = load ptr, ptr %.sroa.023.048, align 8, !tbaa !103 ; 4 uses
  %i.bg = getelementptr i8, ptr %.sroa.023.048, i64 8
  %.val61.i = load i8, ptr %i.bg, align 8, !tbaa !15 ; 5 uses
  %.not.i14 = icmp eq i8 %.val61.i, 0             ; 2 uses
  br i1 %.not.i14, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = add i8 %.val61.i, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %.val55.i, i64 256
  %i.bj = zext i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !103 ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 10
  %.val76.i = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bn = zext i8 %.val76.i to i32
  %i.bo = add nuw nsw i32 %i.bn, 1
  %i.bp = zext nneg i8 %.val9 to i32
  %i.bq = add nuw nsw i32 %i.bo, %i.bp
  %i.br = icmp samesign ugt i32 %i.bq, 6
  br i1 %i.br, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.bl, ptr noundef nonnull %.sroa.023.048)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit

.critedge.i:                                      ; preds = %bb.r, %bb.q
  %i.bs = getelementptr i8, ptr %.val55.i, i64 10
  %.val54.i = load i8, ptr %i.bs, align 1, !tbaa !15
  %i.bt = icmp ult i8 %.val61.i, %.val54.i
  br i1 %i.bt, label %bb.t, label %.thread.i.loopexit

bb.t:                                             ; preds = %.critedge.i
  %i.bu = add nuw i8 %.val61.i, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.val55.i, i64 256
  %i.bw = zext i8 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !103 ; 3 uses
  %narrow = add nuw nsw i8 %.val9, 1
  %i.bz = zext nneg i8 %narrow to i32
  %i.ca = getelementptr i8, ptr %i.by, i64 10
  %.val72.i = load i8, ptr %i.ca, align 1, !tbaa !15 ; 3 uses
  %i.cb = zext i8 %.val72.i to i32
  %i.cc = add nuw nsw i32 %i.cb, %i.bz
  %i.cd = icmp samesign ult i32 %i.cc, 7
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.sroa.023.048, ptr noundef nonnull %i.by)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit

bb.v:                                             ; preds = %bb.t
  %i.ce = freeze i8 %.sroa.10.049.in              ; 2 uses
  %i.cf = icmp eq i8 %.val9, 0
  %i.cg = icmp ne i8 %i.ce, 0
  %or.cond = or i1 %i.cf, %i.cg
  br i1 %or.cond, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %.lhs.trunc = sub i8 %.val72.i, %.val9
  %i.ch = lshr i8 %.lhs.trunc, 1
  %i.ci = add i8 %.val72.i, -1
  %.sroa.speculated82.i = tail call i8 @llvm.umin.i8(i8 %i.ci, i8 %i.ch)
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.023.048, i8 noundef zeroext %.sroa.speculated82.i, ptr noundef nonnull %i.by)
  br label %.thread

.thread.i.loopexit:                               ; preds = %.critedge.i
  %i.cj = freeze i8 %.sroa.10.049.in
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %bb.v
  %i.ck = phi i8 [ %i.cj, %.thread.i.loopexit ], [ %i.ce, %bb.v ]
  br i1 %.not.i14, label %.thread, label %bb.x

bb.x:                                             ; preds = %.thread.i
  %i.cl = add i8 %.val61.i, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %.val55.i, i64 256
  %i.cn = zext i8 %i.cl to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !103 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 10
  %.val66.i = load i8, ptr %i.cq, align 1, !tbaa !15 ; 3 uses
  %i.cr = icmp ult i8 %.val66.i, 4
  %i.cs = add nsw i8 %.val9, -1
  %or.cond39.not = icmp ult i8 %i.cs, %i.ck
  %or.cond90 = select i1 %i.cr, i1 true, i1 %or.cond39.not
  br i1 %or.cond90, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.lhs.trunc93.i = sub nuw i8 %.val66.i, %.val9
  %i.ct = lshr i8 %.lhs.trunc93.i, 1
  %i.cu = add i8 %.val66.i, -1
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %i.cu, i8 %i.ct)
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, i8 noundef zeroext %.sroa.speculated.i, ptr noundef nonnull %.sroa.023.048)
  br label %.thread

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit: ; preds = %bb.u, %bb.s
  %.sroa.023.2 = phi ptr [ %.sroa.023.048, %bb.u ], [ %i.bl, %bb.s ] ; 2 uses
  %.val7 = load ptr, ptr %.sroa.023.2, align 8, !tbaa !103 ; 2 uses
  %.val10 = load ptr, ptr %0, align 8, !tbaa !87  ; 2 uses
  %i.cv = icmp eq ptr %.val7, %.val10
  br i1 %i.cv, label %._crit_edge, label %.lr.ph, !llvm.loop !227

.thread:                                          ; preds = %.lr.ph, %bb.x, %bb.y, %.thread.i, %bb.w, %bb.g, %bb.h, %bb.i, %.thread.i.peel, %bb.j, %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit
  %.sroa.9.2 = phi i32 [ %.sroa.9.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %2, %.lr.ph.preheader ], [ %.sroa.10.2.peel, %bb.x ], [ %2, %bb.j ], [ %2, %bb.g ], [ %2, %bb.h ], [ %i.ar, %bb.i ], [ %2, %.thread.i.peel ], [ %.sroa.10.2.peel, %bb.w ], [ %.sroa.10.2.peel, %.thread.i ], [ %.sroa.10.2.peel, %bb.y ], [ %.sroa.10.2.peel, %.lr.ph ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %1, %.lr.ph.preheader ], [ %.sroa.023.2.peel, %bb.x ], [ %1, %bb.j ], [ %1, %bb.g ], [ %1, %bb.h ], [ %1, %bb.i ], [ %1, %.thread.i.peel ], [ %.sroa.023.2.peel, %bb.w ], [ %.sroa.023.2.peel, %.thread.i ], [ %.sroa.023.2.peel, %bb.y ], [ %.sroa.023.2.peel, %.lr.ph ] ; 6 uses
  %i.cw = getelementptr i8, ptr %.sroa.0.2, i64 10
  %.val6 = load i8, ptr %i.cw, align 1, !tbaa !15 ; 2 uses
  %i.cx = zext i8 %.val6 to i32
  %i.cy = icmp eq i32 %.sroa.9.2, %i.cx
  br i1 %i.cy, label %bb.z, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

bb.z:                                             ; preds = %.thread
  %i.cz = getelementptr i8, ptr %.sroa.0.2, i64 11
  %.val1.i.i15 = load i8, ptr %i.cz, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %.val1.i.i15, 0
  br i1 %.not.i.i, label %.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %bb.aa
  %.01527.i.i.i = phi ptr [ %.015.val19.i.i.i, %bb.aa ], [ %.sroa.0.2, %bb.z ] ; 2 uses
  %.015.val19.i.i.i = load ptr, ptr %.01527.i.i.i, align 8, !tbaa !103 ; 4 uses
  %i.da = getelementptr i8, ptr %.015.val19.i.i.i, i64 11
  %.015.val19.val.i.i.i = load i8, ptr %i.da, align 1, !tbaa !15
  %.not22.i.i.i = icmp eq i8 %.015.val19.val.i.i.i, 0
  br i1 %.not22.i.i.i, label %bb.aa, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.db = getelementptr i8, ptr %.01527.i.i.i, i64 8
  %.015.val20.i.i.i = load i8, ptr %i.db, align 1, !tbaa !15 ; 2 uses
  %i.dc = getelementptr i8, ptr %.015.val19.i.i.i, i64 10
  %.015.val17.i.i.i = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.dd = icmp eq i8 %.015.val20.i.i.i, %.015.val17.i.i.i
  br i1 %i.dd, label %.lr.ph.i.i.i, label %.critedge.loopexit29.i.i.i, !llvm.loop !162

.thread.i.i:                                      ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 256
  %i.df = zext i8 %.val6 to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.dg, %.thread.i.i ], [ %i.di, %bb.ab ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !103 ; 3 uses
  %i.dh = getelementptr i8, ptr %.116.i.i.i, i64 11
  %.116.val.i.i.i = load i8, ptr %i.dh, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %.116.val.i.i.i, 0
  %i.di = getelementptr i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.ab, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit, !llvm.loop !163

.critedge.loopexit29.i.i.i:                       ; preds = %bb.aa
  %i.dj = zext i8 %.015.val20.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.ab, %.thread, %.critedge.loopexit29.i.i.i, %bb.p
  %.val12.pn = phi ptr [ %.val12, %bb.p ], [ %.sroa.0.2, %.thread ], [ %.116.i.i.i, %bb.ab ], [ %.015.val19.i.i.i, %.critedge.loopexit29.i.i.i ], [ %.sroa.0.2, %.lr.ph.i.i.i ]
  %.pn = phi i32 [ %i.bd, %bb.p ], [ %.sroa.9.2, %.thread ], [ 0, %bb.ab ], [ %i.dj, %.critedge.loopexit29.i.i.i ], [ %.sroa.9.2, %.lr.ph.i.i.i ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.val12.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef captures(address) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr i8, ptr %1, i64 10         ; 5 uses
  %.val22.i = load i8, ptr %i.c, align 1, !tbaa !15
  %.val25.i = load ptr, ptr %1, align 8, !tbaa !103
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val27.i = load i8, ptr %i.d, align 8, !tbaa !15
  %i.e = zext i8 %.val27.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %i.h = zext i8 %.val22.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !39
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.n, ptr %i.b, align 8, !tbaa !7
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !33
  %i.q = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.q, ptr %i.k, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i, %bb.a
  %i.r = phi ptr [ %i.p, %.noexc.i.i.i.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.n, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !15
  store i8 %i.s, ptr %i.r, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i
  %i.t = load i64, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !107
  store ptr null, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val30.i = load i8, ptr %i.z, align 1, !tbaa !15 ; 2 uses
  %i.aa = zext i8 %.val30.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.aa, 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i8 %.val30.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  %.val21.i = load i8, ptr %i.c, align 1, !tbaa !15
  %i.ad = zext i8 %.val21.i to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ad
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %.lr.ph.preheader.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.ae, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.az, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 6 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56 ; 3 uses
  store ptr %i.af, ptr %.03.i.i, align 8, !tbaa !39
  %i.ag = load ptr, ptr %.0122.i.i, align 8, !tbaa !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !7
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ak, ptr %.03.i.i, align 8, !tbaa !33
  %i.al = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.al, ptr %i.af, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.am = phi ptr [ %i.ak, %.noexc.i.i.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  switch i64 %i.ai, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !15
  store i8 %i.an, ptr %i.am, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !30
  %i.aq = load ptr, ptr %.03.i.i, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.as = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !107
  store ptr null, ptr %i.at, align 8, !tbaa !107
  %i.au = load ptr, ptr %.0122.i.i, align 8, !tbaa !33 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.ac
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i, label %.lr.ph.i.i, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  %i.ba = getelementptr i8, ptr %1, i64 11
  %.val23.i = load i8, ptr %i.ba, align 1, !tbaa !15
  %.not.i32.i = icmp eq i8 %.val23.i, 0
  br i1 %.not.i32.i, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i
  %.val28.pre.i = load i8, ptr %i.z, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i
  %.val20.i = load i8, ptr %i.c, align 1, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.in3.i = phi i8 [ %.val20.i, %bb.f ], [ %.0.i, %bb.g ]
  %.0192.i = phi i8 [ 0, %bb.f ], [ %i.bj, %bb.g ] ; 2 uses
  %.0.i = add i8 %.0.in3.i, 1                     ; 3 uses
  %i.bd = zext i8 %.0192.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103 ; 3 uses
  %i.bg = zext i8 %.0.i to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 %.0.i, ptr %i.bi, align 1, !tbaa !15
  store ptr %1, ptr %i.bf, align 8, !tbaa !103
  %i.bj = add i8 %.0192.i, 1                      ; 2 uses
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !15 ; 2 uses
  %.not.i = icmp ugt i8 %i.bj, %.val.i
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit, label %bb.g, !llvm.loop !228

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit: ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i
  %.val28.i = phi i8 [ %.val28.pre.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i ], [ %.val.i, %bb.g ]
  %.val29.i = load i8, ptr %i.c, align 1, !tbaa !15
  %i.bk = add i8 %.val28.i, 1
  %i.bl = add i8 %i.bk, %.val29.i
  store i8 %i.bl, ptr %i.c, align 1, !tbaa !15
  store i8 0, ptr %i.z, align 1, !tbaa !15
  %.val24.i = load ptr, ptr %1, align 8, !tbaa !103
  %.val26.i = load i8, ptr %i.d, align 8, !tbaa !15
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.val24.i, i8 noundef zeroext %.val26.i, i8 noundef zeroext 1)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !103
  %i.bn = icmp eq ptr %.val, %2
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit
  store ptr %1, ptr %i.bm, align 8, !tbaa !103
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageEPKNS3_4NodeERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS7_(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(2) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 41 uses
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.d = extractvalue { ptr, ptr } %i.c, 1        ; 32 uses
  %i.e = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %.val316 = load ptr, ptr %0, align 8, !tbaa !87
  %.val316.val = load ptr, ptr %.val316, align 8, !tbaa !103 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val317 = load ptr, ptr %i.g, align 8, !tbaa !103 ; 3 uses
  %i.h = getelementptr i8, ptr %.val317, i64 10
  %.val.i.i = load i8, ptr %i.h, align 1, !tbaa !15 ; 2 uses
  %i.i = zext i8 %.val.i.i to i32
  %i.j = icmp ne ptr %.val316.val, %.val317
  %i.k = icmp ne i8 %.val.i.i, 0
  %.not6.i38 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.not6.i38, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph41, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit
  %.sroa.8.040 = phi i32 [ 0, %.lr.ph41 ], [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 3 uses
  %.sroa.03.039 = phi ptr [ %.val316.val, %.lr.ph41 ], [ %.sroa.03.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 7 uses
  %i.p = and i32 %.sroa.8.040, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.039, i64 16
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.val315 = load ptr, ptr %i.w, align 8, !tbaa !107 ; 2 uses
  %i.x = call noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 %i.v, ptr %i.t) ; 78 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.2, i32 noundef 441) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 19, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.v, ptr %i.t)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 13, ptr nonnull @.str.12)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !85  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 %i.ac, ptr nonnull %i.ae)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

bb.h:                                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %.val315, i64 16
  %.val = load i64, ptr %i.ah, align 8, !tbaa !94
  %i.ai = icmp eq i64 %.val, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, 32
  %.not7 = icmp eq i8 %i.al, 0                    ; 2 uses
  br i1 %i.ai, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !60
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !70
  %.not = icmp eq i32 %i.aq, 10
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.2, i32 noundef 449) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 7, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit: ; preds = %bb.k
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.v, ptr %i.t)
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 13, ptr nonnull @.str.12)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !85  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.0.copyload.i.i.i327 = load i16, ptr %i.at, align 1
  %i.au = zext i16 %.0.copyload.i.i.i327 to i64   ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 %i.au, ptr nonnull %i.aw)
          to label %bb.n unwind label %bb.o       ; 3 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 44, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit: ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, ptr nonnull @.str.15)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit330 unwind label %bb.o

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit330: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit, %bb.n, %bb.l, %bb.k, %bb.m, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

bb.p:                                             ; preds = %bb.j
  %i.az = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, ptr noundef null)
  %i.ba = call noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, ptr noundef null)
  call fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageEPKNS3_4NodeERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS7_(ptr noundef nonnull %.val315, ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.h
  br i1 %.not7, label %bb.r, label %bb.az

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !60
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !70
  switch i32 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit [
    i32 7, label %bb.s
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageEPKNS3_4NodeERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS7_:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !60
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !70
  switch i32 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit [
    i32 7, label %bb.bc
    i32 1, label %bb.bd
    i32 2, label %bb.be
    i32 3, label %bb.bf
    i32 4, label %bb.bg
    i32 6, label %bb.bh
    i32 5, label %bb.bi
    i32 8, label %bb.bj
    i32 9, label %bb.bk
    i32 10, label %bb.bn
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.cs = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph37:                                         ; preds = %bb.bc, %.lr.ph37
  %.030736 = phi i32 [ %i.cv, %.lr.ph37 ], [ 0, %bb.bc ] ; 2 uses
  %i.cu = call noundef zeroext i1 @_ZNK6google8protobuf10Reflection15GetRepeatedBoolERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.030736)
  call void @_ZNK6google8protobuf10Reflection7AddBoolEPNS0_7MessageEPKNS0_15FieldDescriptorEb(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, i1 noundef zeroext %i.cu)
  %i.cv = add nuw nsw i32 %.030736, 1             ; 2 uses
  %exitcond61.not = icmp eq i32 %i.cv, %i.cs
  br i1 %exitcond61.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph37, !llvm.loop !232

bb.bd:                                            ; preds = %bb.bb
  %i.cw = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph35, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph35:                                         ; preds = %bb.bd, %.lr.ph35
  %.030934 = phi i32 [ %i.cz, %.lr.ph35 ], [ 0, %bb.bd ] ; 2 uses
  %i.cy = call noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.030934)
  call void @_ZNK6google8protobuf10Reflection8AddInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, i32 noundef %i.cy)
  %i.cz = add nuw nsw i32 %.030934, 1             ; 2 uses
  %exitcond60.not = icmp eq i32 %i.cz, %i.cw
  br i1 %exitcond60.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph35, !llvm.loop !233

bb.be:                                            ; preds = %bb.bb
  %i.da = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph33, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph33:                                         ; preds = %bb.be, %.lr.ph33
  %.031132 = phi i32 [ %i.dd, %.lr.ph33 ], [ 0, %bb.be ] ; 2 uses
  %i.dc = call noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.031132)
  call void @_ZNK6google8protobuf10Reflection8AddInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEl(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, i64 noundef %i.dc)
  %i.dd = add nuw nsw i32 %.031132, 1             ; 2 uses
  %exitcond59.not = icmp eq i32 %i.dd, %i.da
  br i1 %exitcond59.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph33, !llvm.loop !234

bb.bf:                                            ; preds = %bb.bb
  %i.de = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph31:                                         ; preds = %bb.bf, %.lr.ph31
  %.031230 = phi i32 [ %i.dh, %.lr.ph31 ], [ 0, %bb.bf ] ; 2 uses
  %i.dg = call noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.031230)
  call void @_ZNK6google8protobuf10Reflection9AddUInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEj(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, i32 noundef %i.dg)
  %i.dh = add nuw nsw i32 %.031230, 1             ; 2 uses
  %exitcond58.not = icmp eq i32 %i.dh, %i.de
  br i1 %exitcond58.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph31, !llvm.loop !235

bb.bg:                                            ; preds = %bb.bb
  %i.di = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph29:                                         ; preds = %bb.bg, %.lr.ph29
  %.031028 = phi i32 [ %i.dl, %.lr.ph29 ], [ 0, %bb.bg ] ; 2 uses
  %i.dk = call noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.031028)
  call void @_ZNK6google8protobuf10Reflection9AddUInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEm(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, i64 noundef %i.dk)
  %i.dl = add nuw nsw i32 %.031028, 1             ; 2 uses
  %exitcond57.not = icmp eq i32 %i.dl, %i.di
  br i1 %exitcond57.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph29, !llvm.loop !236

bb.bh:                                            ; preds = %bb.bb
  %i.dm = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph27:                                         ; preds = %bb.bh, %.lr.ph27
  %.030826 = phi i32 [ %i.dp, %.lr.ph27 ], [ 0, %bb.bh ] ; 2 uses
  %i.do = call noundef float @_ZNK6google8protobuf10Reflection16GetRepeatedFloatERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.030826)
  call void @_ZNK6google8protobuf10Reflection8AddFloatEPNS0_7MessageEPKNS0_15FieldDescriptorEf(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, float noundef %i.do)
  %i.dp = add nuw nsw i32 %.030826, 1             ; 2 uses
  %exitcond56.not = icmp eq i32 %i.dp, %i.dm
  br i1 %exitcond56.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph27, !llvm.loop !237

bb.bi:                                            ; preds = %bb.bb
  %i.dq = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph25:                                         ; preds = %bb.bi, %.lr.ph25
  %.030624 = phi i32 [ %i.dt, %.lr.ph25 ], [ 0, %bb.bi ] ; 2 uses
  %i.ds = call noundef double @_ZNK6google8protobuf10Reflection17GetRepeatedDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.030624)
  call void @_ZNK6google8protobuf10Reflection9AddDoubleEPNS0_7MessageEPKNS0_15FieldDescriptorEd(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, double noundef %i.ds)
  %i.dt = add nuw nsw i32 %.030624, 1             ; 2 uses
  %exitcond55.not = icmp eq i32 %i.dt, %i.dq
  br i1 %exitcond55.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph25, !llvm.loop !238

bb.bj:                                            ; preds = %bb.bb
  %i.du = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph23:                                         ; preds = %bb.bj, %.lr.ph23
  %.030422 = phi i32 [ %i.dx, %.lr.ph23 ], [ 0, %bb.bj ] ; 2 uses
  %i.dw = call noundef ptr @_ZNK6google8protobuf10Reflection15GetRepeatedEnumERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.030422)
  call void @_ZNK6google8protobuf10Reflection7AddEnumEPNS0_7MessageEPKNS0_15FieldDescriptorEPKNS0_19EnumValueDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, ptr noundef %i.dw)
  %i.dx = add nuw nsw i32 %.030422, 1             ; 2 uses
  %exitcond54.not = icmp eq i32 %i.dx, %i.du
  br i1 %exitcond54.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph23, !llvm.loop !239

bb.bk:                                            ; preds = %bb.bb
  %i.dy = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph21, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph21:                                         ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %.030220 = phi i32 [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ 0, %bb.bk ] ; 2 uses
  call void @_ZNK6google8protobuf10Reflection17GetRepeatedStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.030220)
  invoke void @_ZNK6google8protobuf10Reflection9AddStringEPNS0_7MessageEPKNS0_15FieldDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, ptr noundef nonnull %7)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.lr.ph21
  %i.ea = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.n
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %bb.bl
  %i.ec = load i64, ptr %i.n, align 8, !tbaa !15
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
  %i.ee = add nuw nsw i32 %.030220, 1             ; 2 uses
  %exitcond53.not = icmp eq i32 %i.ee, %i.dy
  br i1 %exitcond53.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph21, !llvm.loop !240

bb.bm:                                            ; preds = %.lr.ph21
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.n
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.bm
  %i.ei = load i64, ptr %i.n, align 8, !tbaa !15
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

bb.bn:                                            ; preds = %bb.bb
  %i.ek = call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph:                                           ; preds = %bb.bn, %.lr.ph
  %.019 = phi i32 [ %i.eo, %.lr.ph ], [ 0, %bb.bn ] ; 2 uses
  %i.em = call noundef ptr @_ZNK6google8protobuf10Reflection10AddMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.x, ptr noundef null)
  %i.en = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, i32 noundef %.019)
  call void @_ZN6google8protobuf7Message9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.en)
  %i.eo = add nuw nsw i32 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eo, %i.ek
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph, !llvm.loop !241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %.lr.ph23, %.lr.ph25, %.lr.ph27, %.lr.ph29, %.lr.ph31, %.lr.ph33, %.lr.ph35, %.lr.ph37, %bb.as, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ax, %bb.ay, %bb.au, %bb.ao, %bb.ap, %bb.al, %bb.am, %bb.ai, %bb.aj, %bb.af, %bb.ag, %bb.ac, %bb.ad, %bb.z, %bb.aa, %bb.w, %bb.x, %bb.t, %bb.u, %bb.r, %bb.bb, %bb.p, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit330, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %i.ep = getelementptr i8, ptr %.sroa.03.039, i64 11
  %.val1.i.i = load i8, ptr %i.ep, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %.val1.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eq = add nsw i32 %.sroa.8.040, 1             ; 3 uses
  %i.er = getelementptr i8, ptr %.sroa.03.039, i64 10
  %.val.i.i340 = load i8, ptr %i.er, align 1, !tbaa !15
  %i.es = zext i8 %.val.i.i340 to i32
  %i.et = icmp eq i32 %i.eq, %i.es
  br i1 %i.et, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.bo, %bb.bp
  %.01527.i.i.i = phi ptr [ %.015.val19.i.i.i, %bb.bp ], [ %.sroa.03.039, %bb.bo ] ; 2 uses
  %.015.val19.i.i.i = load ptr, ptr %.01527.i.i.i, align 8, !tbaa !103 ; 4 uses
  %i.eu = getelementptr i8, ptr %.015.val19.i.i.i, i64 11
  %.015.val19.val.i.i.i = load i8, ptr %i.eu, align 1, !tbaa !15
  %.not22.i.i.i = icmp eq i8 %.015.val19.val.i.i.i, 0
  br i1 %.not22.i.i.i, label %bb.bp, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.ev = getelementptr i8, ptr %.01527.i.i.i, i64 8
  %.015.val20.i.i.i = load i8, ptr %i.ev, align 1, !tbaa !15 ; 2 uses
  %i.ew = getelementptr i8, ptr %.015.val19.i.i.i, i64 10
  %.015.val17.i.i.i = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.ex = icmp eq i8 %.015.val20.i.i.i, %.015.val17.i.i.i
  br i1 %i.ex, label %.lr.ph.i.i.i, label %.critedge.loopexit29.i.i.i, !llvm.loop !221

.thread.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.03.039, i64 256
  %i.ez = add i32 %.sroa.8.040, 1
  %i.fa = and i32 %i.ez, 255
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.fc, %.thread.i.i ], [ %i.fe, %bb.bq ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !103 ; 3 uses
  %i.fd = getelementptr i8, ptr %.116.i.i.i, i64 11
  %.116.val.i.i.i = load i8, ptr %i.fd, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %.116.val.i.i.i, 0
  %i.fe = getelementptr i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.bq, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, !llvm.loop !222

.critedge.loopexit29.i.i.i:                       ; preds = %bb.bp
  %i.ff = zext i8 %.015.val20.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.bq, %.critedge.loopexit29.i.i.i, %bb.bo
  %.sroa.03.1 = phi ptr [ %.116.i.i.i, %bb.bq ], [ %.sroa.03.039, %bb.bo ], [ %.015.val19.i.i.i, %.critedge.loopexit29.i.i.i ], [ %.sroa.03.039, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.bq ], [ %i.eq, %bb.bo ], [ %i.ff, %.critedge.loopexit29.i.i.i ], [ %i.eq, %.lr.ph.i.i.i ] ; 2 uses
  %i.fg = icmp ne ptr %.sroa.03.1, %.val317
  %i.fh = icmp ne i32 %.sroa.8.1, %i.i
  %.not6.i = select i1 %i.fg, i1 true, i1 %i.fh
  br i1 %.not6.i, label %bb.b, label %._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.bm, %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.o, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %i.ay, %bb.o ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %i.cb, %bb.at ], [ %i.ef, %bb.bm ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection7SetBoolEPNS0_7MessageEPKNS0_15FieldDescriptorEb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection7GetBoolERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection8SetInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection8SetInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEl(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9SetUInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9SetUInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEm(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection8SetFloatEPNS0_7MessageEPKNS0_15FieldDescriptorEf(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare noundef float @_ZNK6google8protobuf10Reflection8GetFloatERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9SetDoubleEPNS0_7MessageEPKNS0_15FieldDescriptorEd(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, double noundef) local_unnamed_addr #1

declare noundef double @_ZNK6google8protobuf10Reflection9GetDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection7SetEnumEPNS0_7MessageEPKNS0_15FieldDescriptorEPKNS0_19EnumValueDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection7GetEnumERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9SetStringEPNS0_7MessageEPKNS0_15FieldDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9GetStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf7Message9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection7AddBoolEPNS0_7MessageEPKNS0_15FieldDescriptorEb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection15GetRepeatedBoolERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection8AddInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection8AddInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEl(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9AddUInt32EPNS0_7MessageEPKNS0_15FieldDescriptorEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9AddUInt64EPNS0_7MessageEPKNS0_15FieldDescriptorEm(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection8AddFloatEPNS0_7MessageEPKNS0_15FieldDescriptorEf(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare noundef float @_ZNK6google8protobuf10Reflection16GetRepeatedFloatERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9AddDoubleEPNS0_7MessageEPKNS0_15FieldDescriptorEd(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, double noundef) local_unnamed_addr #1

declare noundef double @_ZNK6google8protobuf10Reflection17GetRepeatedDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection7AddEnumEPNS0_7MessageEPKNS0_15FieldDescriptorEPKNS0_19EnumValueDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection15GetRepeatedEnumERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection9AddStringEPNS0_7MessageEPKNS0_15FieldDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection17GetRepeatedStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection10AddMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPKNS3_4NodeEPNS0_7MessageE(ptr noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 8 uses
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph13, label %._crit_edge

.lr.ph13:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = getelementptr i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.4, %.loopexit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph13, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.012 = phi i1 [ false, %.lr.ph13 ], [ %.4, %.loopexit ] ; 7 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %indvars.iv ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85   ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.m, align 1
  %i.n = zext i16 %.0.copyload.i.i.i to i64       ; 3 uses
  %i.o = xor i64 %i.n, -1
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %.val56 = load ptr, ptr %i.i, align 8           ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.03.0.i.i.i.i.in = phi ptr [ %0, %bb.b ], [ %i.ai, %bb.h ]
  %.sroa.03.0.i.i.i.i = load ptr, ptr %.sroa.03.0.i.i.i.i.in, align 8, !tbaa !103 ; 5 uses
  %i.q = getelementptr i8, ptr %.sroa.03.0.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i = load i8, ptr %i.q, align 1, !tbaa !15, !noalias !242 ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.r = zext i8 %.val.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %.0198.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %.0207.i.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.t = add i64 %.0207.i.i.i.i.i.i.i, %.0198.i.i.i.i.i.i.i
  %i.u = lshr i64 %i.t, 1                         ; 5 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30, !noalias !242 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.x) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !33, !noalias !242
end_hunk_7
