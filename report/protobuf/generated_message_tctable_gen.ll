inline.NumInlined: 1028
inline.NumDeleted: 519
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"union.std::__detail::__variant::_Variadic_union.33" = type { %"struct.std::__detail::__variant::_Uninitialized.34" }
%"struct.std::__detail::__variant::_Uninitialized.34" = type { %"struct.google::protobuf::internal::TailCallTableInfo::FastFieldInfo::NonField" }
%"struct.google::protobuf::internal::TailCallTableInfo::FastFieldInfo::NonField" = type { i8, i16, i16 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.14" }
%"struct.std::_Head_base.14" = type { ptr }
%"class.absl::lts_20250512::FixedArray" = type { %"class.absl::lts_20250512::FixedArray<unsigned long>::Storage" }
%"class.absl::lts_20250512::FixedArray<unsigned long>::Storage" = type { %"class.absl::lts_20250512::FixedArray<unsigned long>::NonEmptyInlinedStorage", %"class.absl::lts_20250512::container_internal::CompressedTuple", ptr }
%"class.absl::lts_20250512::FixedArray<unsigned long>::NonEmptyInlinedStorage" = type { [256 x i8] }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" = type { i64 }
%"struct.google::protobuf::internal::TailCallTableInfo::NumToEntryTable" = type { i32, %"class.std::vector.20" }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.25" = type { %"struct.std::_Vector_base.26" }
%"struct.std::_Vector_base.26" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.google::protobuf::internal::TailCallTableInfo::FastFieldInfo" = type { %"class.std::variant" }
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type <{ %"union.std::__detail::__variant::_Variadic_union", i8 }>
%"union.std::__detail::__variant::_Variadic_union" = type { %"union.std::__detail::__variant::_Variadic_union.31" }
%"union.std::__detail::__variant::_Variadic_union.31" = type { %"struct.std::__detail::__variant::_Uninitialized.32" }
%"struct.std::__detail::__variant::_Uninitialized.32" = type { %"struct.google::protobuf::internal::TailCallTableInfo::FastFieldInfo::Field" }
%"struct.google::protobuf::internal::TailCallTableInfo::FastFieldInfo::Field" = type { i8, ptr, i16, i8, i8, float }
%"struct.google::protobuf::internal::TailCallTableInfo::SkipEntryBlock" = type { i32, %"class.std::vector.50" }
%"class.std::vector.50" = type { %"struct.std::_Vector_base.51" }
%"struct.std::_Vector_base.51" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntry16, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntry16>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntry16, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntry16>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntry16, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntry16>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntry16, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntry16>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev = comdat any

$_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_assign_auxIPS4_EEvT_S9_St20forward_iterator_tag = comdat any

@.str = private unnamed_addr constant [68 x i8] c"subtable_aux_idx - subtable_aux_idx_begin == num_non_cold_subtables\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/generated_message_tctable_gen.cc\00", align 1
@constinit = private unnamed_addr constant [1 x { { { { %"union.std::__detail::__variant::_Variadic_union.33", [18 x i8] } }, i8, [7 x i8] } }] [{ { { { %"union.std::__detail::__variant::_Variadic_union.33", [18 x i8] } }, i8, [7 x i8] } } { { { { %"union.std::__detail::__variant::_Variadic_union.33", [18 x i8] } }, i8, [7 x i8] } { { { %"union.std::__detail::__variant::_Variadic_union.33", [18 x i8] } } { { %"union.std::__detail::__variant::_Variadic_union.33", [18 x i8] } { %"union.std::__detail::__variant::_Variadic_union.33" { %"struct.std::__detail::__variant::_Uninitialized.34" { %"struct.google::protobuf::internal::TailCallTableInfo::FastFieldInfo::NonField" { i8 113, i16 0, i16 0 } } }, [18 x i8] undef } }, i8 2, [7 x i8] undef } }], align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"field_entries.size() == ordered_fields.size()\00", align 1
@_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"options.lazy_opt == field_layout::kTvEager || options.lazy_opt == field_layout::kTvLazy\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"fnum > last_skip_entry_start\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"picked != TcParseFunction::kNone\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN6google8protobuf8internal17TailCallTableInfoC1EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64), ptr @_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %i.c, label %_ZN6google8protobuf8internal10WireFormat7MakeTagEPKNS0_15FieldDescriptorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !19
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  br label %_ZN6google8protobuf8internal10WireFormat7MakeTagEPKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf8internal10WireFormat7MakeTagEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.h, %bb.b ], [ 2, %bb.a ]
  %i.i = shl i32 %i.b, 3
  %i.j = or i32 %.0.i.i, %i.i                     ; 3 uses
  %i.k = and i32 %i.j, -128                       ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  %i.l = add i32 %i.j, 128
  %i.m = add i32 %i.l, %i.k
  %.0.i = select i1 %.not.i, i32 %i.j, i32 %i.m
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge16, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %.not17 = icmp sgt i32 %i.e, 0
  br i1 %.not17, label %.lr.ph, label %.critedge16

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi i32 [ %i.e, %.lr.ph ], [ %i.t, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !19
  %i.l = icmp eq i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.d, align 8, !tbaa !33
  br label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = shl i32 %i.p, 3
  %i.r = zext i32 %i.q to i64
  %i.s = or disjoint i64 %i.r, 4294967300
  br label %.critedge16

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.t = phi i32 [ %.pre, %._crit_edge ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %.not, label %bb.b, label %.critedge16, !llvm.loop !35

.critedge16:                                      ; preds = %bb.d, %.preheader, %.critedge, %bb.a
  %.sroa.2.0 = phi i64 [ 0, %bb.a ], [ %i.s, %.critedge ], [ 0, %.preheader ], [ 0, %bb.d ]
  ret i64 %.sroa.2.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6google8protobuf8internal18FastParseTableSizeEmSt8optionalIjE(i64 noundef %0, i64 %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = add i64 %0, 1                              ; 2 uses
  %3 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i = icmp eq i64 %3, 1
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  %..i = select i1 %or.cond.i, i64 63, i64 64
  %i.c = sub nuw nsw i64 %..i, %i.b               ; 2 uses
  %i.d = shl nuw i64 1, %i.c
  %4 = icmp samesign ult i64 %i.c, 5
  %5 = trunc i64 %i.d to i32
  %6 = select i1 %4, i32 %5, i32 32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %6, %bb.b ], [ 32, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 24
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %bb.b, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 95
  %i.g = load i8, ptr %i.f, align 1, !tbaa !38, !range !39, !noundef !40
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = icmp slt i32 %i.j, 2048
  br label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %2, ptr nofree readonly captures(address) %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = icmp ugt i64 %4, 384307168202282325
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #16
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not448 = icmp eq i64 %4, 0                    ; 2 uses
  br i1 %.not448, label %._crit_edge, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = mul nuw nsw i64 %4, 24                   ; 2 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17
          to label %.lr.ph.preheader unwind label %bb.g ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8, !tbaa !41
  store ptr %i.f, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %4
  store ptr %i.h, ptr %i.d, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.e ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread", %bb.c
  %i.j = phi ptr [ %3, %bb.c ], [ %i.i, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ]
  %.0104.lcssa = phi i64 [ 0, %bb.c ], [ %i.ay, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 32 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 6 uses
  %i.r = add i64 %i.q, %.0104.lcssa               ; 3 uses
  %i.s = icmp ugt i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.0104.lcssa)
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit unwind label %bb.m

bb.e:                                             ; preds = %._crit_edge
  %i.t = icmp ult i64 %i.r, %i.q
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.u, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"
  %.0104400 = phi i64 [ %i.ay, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.0106399 = phi ptr [ %i.az, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ], [ %3, %.lr.ph.preheader ] ; 7 uses
  %i.w = load ptr, ptr %.0106399, align 8, !tbaa !50 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.y = load i8, ptr %i.x, align 2, !tbaa !19    ; 2 uses
  %i.z = and i8 %i.y, -2
  %switch.i = icmp eq i8 %i.z, 10
  br i1 %switch.i, label %bb.h, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

bb.h:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 16
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 95
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38, !range !39, !noundef !40
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i8 %i.y, 11
  br i1 %i.ai, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i: ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.0106399, i64 16
  %.val.i = load i16, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 32
  %.not.i.i128 = icmp eq i8 %i.am, 0
  %i.an = icmp ne i16 %.val.i, 0
  %spec.select.i.i = select i1 %.not.i.i128, i1 %i.an, i1 false
  %i.ao = getelementptr inbounds nuw i8, ptr %.0106399, i64 19
  %i.ap = load i8, ptr %i.ao, align 1, !range !39
  %i.aq = trunc nuw i8 %i.ap to i1
  %or.cond.i = select i1 %spec.select.i.i, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread", label %bb.k

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i: ; preds = %bb.j
  %.old.i = getelementptr inbounds nuw i8, ptr %.0106399, i64 19
  %.old1.i = load i8, ptr %.old.i, align 1, !tbaa !54, !range !39, !noundef !40
  %.old2.i = trunc nuw i8 %.old1.i to i1
  br i1 %.old2.i, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread", label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0106399, i64 20
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !55, !range !39, !noundef !40
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit", label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit": ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.0106399, i64 12
  %.val11.i = load float, ptr %i.au, align 4, !tbaa !56
  %.val11.i.fr = freeze float %.val11.i
  %i.av = fpext float %.val11.i.fr to double
  %i.aw = fcmp oge double %i.av, 5.000000e-03
  %i.ax = zext i1 %i.aw to i64
  %spec.select = add i64 %.0104400, %i.ax
  br label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread": ; preds = %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit", %.lr.ph, %bb.h, %bb.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i, %bb.k
  %i.ay = phi i64 [ %.0104400, %.lr.ph ], [ %spec.select, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit" ], [ %.0104400, %bb.k ], [ %.0104400, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i ], [ %.0104400, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i ], [ %.0104400, %bb.i ], [ %.0104400, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0106399, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  br i1 %.not448, label %._crit_edge408, label %.lr.ph407

.lr.ph407:                                        ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 15 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  br label %bb.n

._crit_edge408:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit176, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit
  %.0107.lcssa = phi i64 [ %i.q, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit ], [ %.2109, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit176 ]
  %i.bd = sub i64 %.0107.lcssa, %i.q              ; 2 uses
  %i.be = icmp eq i64 %i.bd, %.0104.lcssa
  br i1 %i.be, label %bb.fk, label %bb.l, !prof !57

bb.l:                                             ; preds = %._crit_edge408
  %i.bf = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.bd, i64 noundef %.0104.lcssa, ptr noundef nonnull @.str)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit unwind label %bb.fl

bb.m:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal12_GLOBAL__N_122GetEnumValidationRangeEPKNS0_14EnumDescriptorERiS6_:bb.a
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.v = getelementptr [48 x i8], ptr %i.i, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 196
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 292
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 340
  %i.ad = getelementptr i8, ptr %i.v, i64 388
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !88
  %i.af = load i32, ptr %i.x, align 4, !tbaa !88
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !88
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !88
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3 ; 2 uses
  %i.am = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !88
  %i.ao = load i32, ptr %i.ac, align 4, !tbaa !88
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !88
  %i.aq = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 1
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 2
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 3 ; 2 uses
  %i.au = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.al, <4 x i32> %vec.phi) ; 2 uses
  %i.av = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.at, <4 x i32> %vec.phi15) ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi16, <4 x i32> %i.al) ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi17, <4 x i32> %i.at) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.az = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax18 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aw, <4 x i32> %i.ax)
  %i.ba = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax18) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.n, %middle.block ]
  %.05863.i.ph = phi i32 [ %i.k, %.lr.ph.preheader.i ], [ %i.az, %middle.block ]
  %.05962.i.ph = phi i32 [ %i.k, %.lr.ph.preheader.i ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.b
  %.059.lcssa.i = phi i32 [ %i.k, %bb.b ], [ %i.ba, %middle.block ], [ %.sroa.speculated.i, %.lr.ph.i ] ; 2 uses
  %.058.lcssa.i = phi i32 [ %i.k, %bb.b ], [ %i.az, %middle.block ], [ %.sroa.speculated45.i, %.lr.ph.i ] ; 3 uses
  %i.bb = sext i32 %.059.lcssa.i to i64
  %i.bc = sext i32 %.058.lcssa.i to i64
  %i.bd = sub nsw i64 %i.bb, %i.bc                ; 4 uses
  %i.be = add nsw i64 %i.bd, 1
  %i.bf = sext i32 %i.e to i64
  %.not.i = icmp slt i64 %i.bd, %i.bf
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf8internal12_GLOBAL__N_126GetEnumValidationRangeSlowEPKNS0_14EnumDescriptorERiS6_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.05863.i = phi i32 [ %.sroa.speculated45.i, %.lr.ph.i ], [ %.05863.i.ph, %.lr.ph.i.preheader ]
  %.05962.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.05962.i.ph, %.lr.ph.i.preheader ]
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !88 ; 2 uses
  %.sroa.speculated45.i = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %.05863.i) ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.05962.i, i32 %i.bi) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !97

bb.c:                                             ; preds = %._crit_edge.i
  store i32 %.058.lcssa.i, ptr %1, align 4, !tbaa !3
  store i32 %.059.lcssa.i, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bj = add nsw i64 %i.bd, 64
  %i.bk = sdiv i64 %i.bj, 64                      ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !98
  %i.bm = icmp ult i64 %i.bk, 33
  br i1 %i.bm, label %._crit_edge77.i, label %bb.d

._crit_edge77.i:                                  ; preds = %bb.c
  %.pre.i = shl nuw nsw i64 %i.bk, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bn = icmp ugt i64 %i.bk, 1152921504606846975
  br i1 %i.bn, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.bo = shl nuw nsw i64 %i.bk, 3                ; 2 uses
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #17
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %._crit_edge77.i
  %.idx.i.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge77.i ], [ %i.bo, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %3, %._crit_edge77.i ], [ %i.bp, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr %.0.i.i.i.i, ptr %i.bq, align 8, !tbaa !102
  %.not5.i.i.i.i.i = icmp ugt i64 %i.bd, -128
  br i1 %.not5.i.i.i.i.i, label %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE4fillERKm.exit.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i.i, i8 0, i64 %.idx.i.pre-phi.i, i1 false), !tbaa !108
  br label %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE4fillERKm.exit.i

_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE4fillERKm.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  %i.br = load i32, ptr %i.d, align 4, !tbaa !86  ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph68.preheader.i, label %._crit_edge69.i

.lr.ph68.preheader.i:                             ; preds = %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE4fillERKm.exit.i
  %wide.trip.count75.i = zext nneg i32 %i.br to i64
  br label %.lr.ph68.i

._crit_edge69.loopexit.i:                         ; preds = %.lr.ph68.i
  %i.bt = zext nneg i32 %i.cl to i64
  br label %._crit_edge69.i

._crit_edge69.i:                                  ; preds = %._crit_edge69.loopexit.i, %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE4fillERKm.exit.i
  %.027.lcssa.i = phi i64 [ 0, %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE4fillERKm.exit.i ], [ %i.bt, %._crit_edge69.loopexit.i ]
  %i.bu = icmp eq i64 %i.be, %.027.lcssa.i
  %i.bv = load i64, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 33
  br i1 %i.bw, label %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge69.i
  %i.bx = shl i64 %i.bv, 3
  call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i.i, i64 noundef %i.bx) #18
  br label %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEED2Ev.exit.i

_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEED2Ev.exit.i: ; preds = %bb.f, %._crit_edge69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_126GetEnumValidationRangeSlowEPKNS0_14EnumDescriptorERiS6_.exit

.lr.ph68.i:                                       ; preds = %.lr.ph68.i, %.lr.ph68.preheader.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph68.preheader.i ], [ %indvars.iv.next73.i, %.lr.ph68.i ] ; 2 uses
  %.02766.i = phi i32 [ 0, %.lr.ph68.preheader.i ], [ %i.cl, %.lr.ph68.i ]
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %indvars.iv72.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !88
  %i.cb = sub nsw i32 %i.ca, %.058.lcssa.i
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = lshr i64 %i.cc, 6
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.cd ; 2 uses
  %i.cf = and i64 %i.cc, 63
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !108 ; 2 uses
  %i.ch = shl nuw i64 1, %i.cf                    ; 2 uses
  %i.ci = and i64 %i.ch, %i.cg
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = add nuw nsw i32 %.02766.i, %i.ck        ; 2 uses
  %i.cm = or i64 %i.ch, %i.cg
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !108
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %._crit_edge69.loopexit.i, label %.lr.ph68.i, !llvm.loop !109

bb.g:                                             ; preds = %bb.a
  store i32 %i.k, ptr %1, align 4, !tbaa !3
  %i.cn = load i32, ptr %i.d, align 4, !tbaa !86
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [48 x i8], ptr %i.i, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -44
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !88
  store i32 %i.cr, ptr %2, align 4, !tbaa !3
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_126GetEnumValidationRangeSlowEPKNS0_14EnumDescriptorERiS6_.exit

_ZN6google8protobuf8internal12_GLOBAL__N_126GetEnumValidationRangeSlowEPKNS0_14EnumDescriptorERiS6_.exit: ; preds = %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEED2Ev.exit.i, %._crit_edge.i, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ %i.bu, %_ZN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEED2Ev.exit.i ], [ false, %._crit_edge.i ]
  ret i1 %.0
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE(ptr noundef nonnull align 8 dereferenceable(140) initializes((8, 80), (88, 136)) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %2, ptr nofree readonly captures(address) %3, i64 %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::NumToEntryTable", align 8 ; 8 uses
  %7 = alloca %"class.std::vector.25", align 16   ; 6 uses
  %8 = alloca %"class.std::vector", align 16      ; 6 uses
  %9 = alloca [32 x %"struct.google::protobuf::internal::TailCallTableInfo::FastFieldInfo"], align 16 ; 42 uses
  %10 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::NumToEntryTable", align 8 ; 8 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.25", align 16  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 51
  %i.l = load i8, ptr %i.k, align 1, !tbaa !38, !range !39, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.loopexit203, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !77, !range !39, !noundef !40
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.loopexit203

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %.loopexit204

.lr.ph.i:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit204, label %bb.e, !llvm.loop !111

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 95
  %i.z = load i8, ptr %i.y, align 1, !tbaa !38, !range !39, !noundef !40
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.loopexit203, label %bb.d

.loopexit204:                                     ; preds = %bb.d, %bb.c
  %i.ab = load i8, ptr %2, align 1, !tbaa !63, !range !39, !noundef !40
  %i.ac = or disjoint i8 %i.ab, 114
  br label %.loopexit203

.loopexit203:                                     ; preds = %bb.e, %bb.a, %bb.b, %.loopexit204
  %i.ad = phi i8 [ 117, %bb.a ], [ %i.ac, %.loopexit204 ], [ 116, %bb.b ], [ 116, %bb.e ]
  store i8 %i.ad, ptr %0, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !38, !range !39, !noundef !40
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.x

bb.f:                                             ; preds = %.loopexit203
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !77, !range !39, !noundef !40
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %2, align 1, !tbaa !63, !range !39, !noundef !40
  %i.al = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %bb.h unwind label %bb.j       ; 6 uses

bb.h:                                             ; preds = %bb.g
  %i.am = sub nuw nsw i8 112, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.am, ptr %i.al, align 8
  %.sroa.5296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i16 0, ptr %.sroa.5296.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i16 0, ptr %.sroa.6.0..sroa_idx297, align 4
  %.sroa.7298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 2, ptr %.sroa.7298.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.c, align 8, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !137
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !138
  %i.aq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EEaSESt16initializer_listIS4_E.exit unwind label %bb.k ; 4 uses

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EEaSESt16initializer_listIS4_E.exit: ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 7, ptr %i.aq, align 8
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr null, ptr %.sroa.5293.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !46
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !74
  br label %bb.n

bb.i:                                             ; preds = %bb.ah
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.j:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.k:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.l:                                             ; preds = %bb.f
  %i.ax = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EEaSESt16initializer_listIS4_E.exit73 unwind label %bb.m ; 3 uses

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EEaSESt16initializer_listIS4_E.exit73: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) @constinit, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !136
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !137
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !138
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.n:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EEaSESt16initializer_listIS4_E.exit73, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EEaSESt16initializer_listIS4_E.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.bc, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_119MakeNumToEntryTableEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo12FieldOptionsEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr %3, i64 %4)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %6, align 8, !tbaa !140
  store i32 %i.bd, ptr %i.f, align 8, !tbaa !140
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !141 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !142 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !143
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bl = load <2 x ptr>, ptr %i.be, align 8, !tbaa !144
  store <2 x ptr> %i.bl, ptr %i.g, align 8, !tbaa !144
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !143
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !143
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i ], [ %i.bf, %bb.o ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !148
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #18
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i, %bb.o
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.bw = ptrtoint ptr %i.bj to i64
  %i.bx = ptrtoint ptr %i.bf to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.by) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.q
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !141 ; 3 uses
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !142 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.dy, %bb.ad ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.dz = getelementptr i8, ptr %.1.i.i.i.i.i, i64 21
  %.1.val.i.i.i.i.i = load i8, ptr %i.dz, align 1, !tbaa !71, !range !39, !noundef !40
  %i.ea = trunc nuw i8 %.1.val.i.i.i.i.i to i1
  br i1 %i.ea, label %.loopexit202, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.eb, %bb.af ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ec = getelementptr i8, ptr %.2.i.i.i.i.i, i64 21
  %.2.val.i.i.i.i.i = load i8, ptr %i.ec, align 1, !tbaa !71, !range !39, !noundef !40
  %i.ed = trunc nuw i8 %.2.val.i.i.i.i.i to i1
  br i1 %i.ed, label %.loopexit202, label %.thread

.loopexit.split.loop.exit34.i.i.i.i.i:            ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  br label %.loopexit202

.loopexit.split.loop.exit36.i.i.i.i.i:            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 48
  br label %.loopexit202

.loopexit.split.loop.exit38.i.i.i.i.i:            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 72
  br label %.loopexit202

.loopexit202:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.split.loop.exit38.i.i.i.i.i, %.loopexit.split.loop.exit36.i.i.i.i.i, %.loopexit.split.loop.exit34.i.i.i.i.i, %bb.ag, %bb.ae, %bb.ac
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.ae ], [ %i.eg, %.loopexit.split.loop.exit38.i.i.i.i.i ], [ %.2.i.i.i.i.i, %bb.ag ], [ %.029.lcssa.i.i.i.i.i, %bb.ac ], [ %i.ef, %.loopexit.split.loop.exit36.i.i.i.i.i ], [ %i.ee, %.loopexit.split.loop.exit34.i.i.i.i.i ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.not = icmp eq ptr %i.dg, %.028.i.i.i.i.i
  br i1 %.not, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %.loopexit202
  invoke void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 2)
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit unwind label %bb.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit: ; preds = %bb.ah
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  store i32 1, ptr %.pre, align 8, !tbaa !75
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr null, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !38
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i32 2, ptr %i.ei, align 8, !tbaa !75
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store ptr null, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.ag, %._crit_edge.i.i.i.i.i, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit, %.loopexit202
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr nonnull poison, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ai unwind label %bb.fh

bb.ai:                                            ; preds = %.thread
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !41  ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !45
  %i.en = load <2 x ptr>, ptr %8, align 16, !tbaa !154
  store <2 x ptr> %i.en, ptr %i.d, align 8, !tbaa !154
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ep = load ptr, ptr %i.eo, align 16, !tbaa !45
  store ptr %i.ep, ptr %i.el, align 8, !tbaa !45
  %.not.i.i.i.i.i74 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i74, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.ej to i64
  %i.es = sub i64 %i.eq, %i.er
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.es) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !22 ; 3 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !33 ; 2 uses
  %.not17.i = icmp sgt i32 %i.ex, 0
  br i1 %.not17.i, label %.lr.ph.i76, label %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit

.lr.ph.i76:                                       ; preds = %.preheader.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i76
  %i.ez = phi i32 [ %i.ex, %.lr.ph.i76 ], [ %i.fm, %bb.am ]
  %indvars.iv.i77 = phi i64 [ 0, %.lr.ph.i76 ], [ %indvars.iv.next.i78, %bb.am ] ; 2 uses
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !34
  %i.fb = getelementptr inbounds nuw [88 x i8], ptr %i.fa, i64 %indvars.iv.i77 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fd = load i8, ptr %i.fc, align 2, !tbaa !19
  %i.fe = icmp eq i8 %i.fd, 10
  br i1 %i.fe, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ff = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fb)
          to label %.noexc79 unwind label %bb.fi

.noexc79:                                         ; preds = %bb.al
  %i.fg = icmp eq ptr %i.ff, %1
  br i1 %i.fg, label %.critedge.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc79
  %.pre.i = load i32, ptr %i.ew, align 8, !tbaa !33
  br label %bb.am

.critedge.i:                                      ; preds = %.noexc79
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !7
  %i.fj = shl i32 %i.fi, 3
  %i.fk = zext i32 %i.fj to i64
  %i.fl = or disjoint i64 %i.fk, 4294967300
  br label %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit

bb.am:                                            ; preds = %._crit_edge.i, %bb.ak
  %i.fm = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ez, %bb.ak ] ; 2 uses
  %indvars.iv.next.i78 = add nuw nsw i64 %indvars.iv.i77, 1 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i78, %i.fn
  br i1 %.not.i, label %bb.ak, label %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit, !llvm.loop !35

_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit: ; preds = %bb.am, %.critedge.i, %.preheader.i, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit
  %.sroa.2.0.i = phi i64 [ 0, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit ], [ %i.fl, %.critedge.i ], [ 0, %.preheader.i ], [ 0, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.fo, align 8, !tbaa !155
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 0, ptr %i.fp, align 8, !tbaa !155
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i8 0, ptr %i.fq, align 8, !tbaa !155
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i8 0, ptr %i.fr, align 8, !tbaa !155
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 152
  store i8 0, ptr %i.fs, align 8, !tbaa !155
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 184
  store i8 0, ptr %i.ft, align 8, !tbaa !155
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 216
  store i8 0, ptr %i.fu, align 8, !tbaa !155
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 248
  store i8 0, ptr %i.fv, align 8, !tbaa !155
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 280
  store i8 0, ptr %i.fw, align 8, !tbaa !155
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 312
  store i8 0, ptr %i.fx, align 8, !tbaa !155
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 344
  store i8 0, ptr %i.fy, align 8, !tbaa !155
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 376
  store i8 0, ptr %i.fz, align 8, !tbaa !155
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 408
  store i8 0, ptr %i.ga, align 8, !tbaa !155
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 440
  store i8 0, ptr %i.gb, align 8, !tbaa !155
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 472
  store i8 0, ptr %i.gc, align 8, !tbaa !155
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 504
  store i8 0, ptr %i.gd, align 8, !tbaa !155
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 536
  store i8 0, ptr %i.ge, align 8, !tbaa !155
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 568
  store i8 0, ptr %i.gf, align 8, !tbaa !155
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 600
  store i8 0, ptr %i.gg, align 8, !tbaa !155
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 632
  store i8 0, ptr %i.gh, align 8, !tbaa !155
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 664
  store i8 0, ptr %i.gi, align 8, !tbaa !155
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 696
  store i8 0, ptr %i.gj, align 8, !tbaa !155
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 728
  store i8 0, ptr %i.gk, align 8, !tbaa !155
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 760
  store i8 0, ptr %i.gl, align 8, !tbaa !155
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 792
  store i8 0, ptr %i.gm, align 8, !tbaa !155
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 824
  store i8 0, ptr %i.gn, align 8, !tbaa !155
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 856
  store i8 0, ptr %i.go, align 8, !tbaa !155
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 888
  store i8 0, ptr %i.gp, align 8, !tbaa !155
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 920
  store i8 0, ptr %i.gq, align 8, !tbaa !155
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 952
  store i8 0, ptr %i.gr, align 8, !tbaa !155
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 984
  store i8 0, ptr %i.gs, align 8, !tbaa !155
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 1016
  store i8 0, ptr %i.gt, align 8, !tbaa !155
  %i.gu = and i64 %.sroa.2.0.i, 4294967296
  %.not.i80 = icmp eq i64 %i.gu, 0
  br i1 %.not.i80, label %bb.an, label %_ZN6google8protobuf8internal18FastParseTableSizeEmSt8optionalIjE.exit

bb.an:                                            ; preds = %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit
  %13 = add i64 %4, 1                             ; 2 uses
  %14 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %13)
  %or.cond.i.i = icmp eq i64 %14, 1
  %i.gv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %13, i1 false)
  %..i.i = select i1 %or.cond.i.i, i64 63, i64 64
  %i.gw = sub nuw nsw i64 %..i.i, %i.gv           ; 2 uses
  %i.gx = shl nuw i64 1, %i.gw
  %15 = icmp samesign ult i64 %i.gw, 5
  %16 = trunc i64 %i.gx to i32
  %17 = select i1 %15, i32 %16, i32 32
  br label %_ZN6google8protobuf8internal18FastParseTableSizeEmSt8optionalIjE.exit

_ZN6google8protobuf8internal18FastParseTableSizeEmSt8optionalIjE.exit: ; preds = %bb.an, %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit
  %i.gy = phi i32 [ %17, %bb.an ], [ 32, %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit ] ; 4 uses
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = and i64 %.sroa.2.0.i, 8589918208
  %or.cond.i = icmp eq i64 %i.ha, 4294967296
  br i1 %or.cond.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZN6google8protobuf8internal18FastParseTableSizeEmSt8optionalIjE.exit
  %.sroa.013.0.extract.trunc.i = trunc i64 %.sroa.2.0.i to i32 ; 4 uses
  %i.hb = and i32 %.sroa.013.0.extract.trunc.i, 16256 ; 2 uses
  %.not.i.i89 = icmp eq i32 %i.hb, 0
  %i.hc = add nuw nsw i32 %.sroa.013.0.extract.trunc.i, 128
  %i.hd = add nuw nsw i32 %i.hc, %i.hb
  %.0.i.i = select i1 %.not.i.i89, i32 %.sroa.013.0.extract.trunc.i, i32 %i.hd ; 2 uses
  %i.he = add i32 %i.gy, 536870911
  %i.hf = lshr i32 %.0.i.i, 3
  %i.hg = and i32 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %i.hh ; 4 uses
  %i.hj = icmp samesign ult i32 %.sroa.013.0.extract.trunc.i, 128
  %i.hk = select i1 %i.hj, i8 109, i8 110
  %i.hl = trunc nuw nsw i32 %.0.i.i to i16
  %i.hm = trunc i64 %.sroa.2.0.i to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !155
  %i.hp = icmp eq i8 %i.ho, 2
  br i1 %i.hp, label %_ZNSt7variantIJN6google8protobuf8internal17TailCallTableInfo13FastFieldInfo5EmptyENS4_5FieldENS4_8NonFieldEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S6_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 2, ptr %i.hn, align 8, !tbaa !155
  br label %_ZNSt7variantIJN6google8protobuf8internal17TailCallTableInfo13FastFieldInfo5EmptyENS4_5FieldENS4_8NonFieldEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S6_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit.i

_ZNSt7variantIJN6google8protobuf8internal17TailCallTableInfo13FastFieldInfo5EmptyENS4_5FieldENS4_8NonFieldEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S6_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit.i: ; preds = %bb.ap, %bb.ao
  store i8 %i.hk, ptr %i.hi, align 16, !tbaa !157
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  store i16 %i.hl, ptr %i.hq, align 2, !tbaa !60
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store i16 %i.hm, ptr %i.hr, align 4, !tbaa !60
  %i.hs = shl nuw i32 1, %i.hg
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7variantIJN6google8protobuf8internal17TailCallTableInfo13FastFieldInfo5EmptyENS4_5FieldENS4_8NonFieldEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S6_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit.i, %_ZN6google8protobuf8internal18FastParseTableSizeEmSt8optionalIjE.exit
  %.1 = phi i32 [ %i.hs, %_ZNSt7variantIJN6google8protobuf8internal17TailCallTableInfo13FastFieldInfo5EmptyENS4_5FieldENS4_8NonFieldEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S6_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit.i ], [ 0, %_ZN6google8protobuf8internal18FastParseTableSizeEmSt8optionalIjE.exit ] ; 2 uses
  %i.ht = load ptr, ptr %i.ek, align 8, !tbaa !44
  %i.hu = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %.not23.i = icmp eq ptr %i.ht, %i.hu
  br i1 %.not23.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %bb.aq
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.hw = add i32 %i.gy, 536870911
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i, %.lr.ph.i81
  %.2 = phi i32 [ %.1, %.lr.ph.i81 ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i ] ; 10 uses
  %i.hx = phi ptr [ %i.hu, %.lr.ph.i81 ], [ %i.wn, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i ]
  %.022.i = phi i64 [ 0, %.lr.ph.i81 ], [ %i.wl, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %.022.i ; 5 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.022.i ; 13 uses
  %.val.i = load i8, ptr %i.hv, align 1
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !158 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 3
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = and i8 %i.ic, 24
  %or.cond = icmp eq i8 %i.id, 0
  br i1 %or.cond, label %bb.as, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !37
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 95
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !38, !range !39, !noundef !40
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i, label %_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE.exit.i.i

_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.as
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !7  ; 2 uses
  %i.il = icmp sgt i32 %i.ik, 2047
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 19
  %i.in = load i8, ptr %i.im, align 1, !range !39
  %i.io = trunc nuw i8 %i.in to i1
  %or.cond.i.i86 = select i1 %i.il, i1 true, i1 %i.io
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 21
  %i.iq = load i8, ptr %i.ip, align 1, !range !39
  %i.ir = trunc nuw i8 %i.iq to i1
  %or.cond6.i.i = select i1 %or.cond.i.i86, i1 true, i1 %i.ir
  br i1 %or.cond6.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE.exit.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %.val13.i.i = load i16, ptr %i.is, align 8      ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ia, i64 2 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 2, !tbaa !19
  %i.iv = icmp eq i8 %i.iu, 11
  br i1 %i.iv, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i.i: ; preds = %bb.at
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = and i8 %i.ix, 32                        ; 2 uses
  %.not.i14.i.i = icmp ne i8 %i.iy, 0
  %i.iz = icmp eq i16 %.val13.i.i, 0
  %spec.select.i.not9.i.i = select i1 %.not.i14.i.i, i1 true, i1 %i.iz
  %i.ja = trunc nuw i8 %.val.i to i1
  %or.cond7.i.i = select i1 %spec.select.i.not9.i.i, i1 true, i1 %i.ja
  br i1 %or.cond7.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.i.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i.i
  %.not.i15.i.i = icmp eq i8 %i.iy, 0
  %i.jb = icmp eq i16 %.val13.i.i, 1024
  %or.cond8.i.i = select i1 %.not.i15.i.i, i1 %i.jb, i1 false
  br i1 %or.cond8.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.i.i, %bb.at
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !67
  %i.je = icmp sgt i32 %i.jd, 31
  br i1 %i.je, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hy, i64 12 ; 2 uses
  %i.jg = load i16, ptr %i.jf, align 4, !tbaa !73
  %i.jh = icmp ult i16 %i.jg, 256
  br i1 %i.jh, label %bb.au, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i

bb.au:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i
  %i.ji = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ia)
          to label %.noexc90 unwind label %.loopexit

.noexc90:                                         ; preds = %bb.au
  br i1 %i.ji, label %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i, label %bb.av

bb.av:                                            ; preds = %.noexc90
  %i.jj = load i8, ptr %i.it, align 2, !tbaa !19
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !20
  br label %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.av, %.noexc90
  %.0.i.i.i.i = phi i32 [ %i.jm, %bb.av ], [ 2, %.noexc90 ]
  %i.jn = shl i32 %i.ik, 3
  %i.jo = or i32 %.0.i.i.i.i, %i.jn               ; 3 uses
  %i.jp = and i32 %i.jo, -128                     ; 2 uses
  %.not.i.i43.i = icmp eq i32 %i.jp, 0
  %i.jq = add i32 %i.jo, 128
  %i.jr = add i32 %i.jq, %i.jp
  %.0.i.i.i = select i1 %.not.i.i43.i, i32 %i.jo, i32 %i.jr ; 2 uses
  %i.js = lshr i32 %.0.i.i.i, 3
  %i.jt = and i32 %i.js, %i.hw                    ; 2 uses
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %i.ju ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !155
  switch i8 %i.jx, label %.critedge.i88 [
    i8 2, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i
    i8 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !159
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !56
  %i.kc = fcmp ult float %i.jz, %i.kb
  br i1 %i.kc, label %.critedge.i88, label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i

.critedge.i88:                                    ; preds = %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i, %bb.aw
  %i.kd = load ptr, ptr %i.hy, align 8, !tbaa !158, !noalias !161 ; 79 uses
  %i.ke = load i16, ptr %i.jf, align 4, !tbaa !73, !noalias !161
  %i.kf = trunc i16 %i.ke to i8                   ; 57 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !19, !noalias !161
  switch i8 %i.kh, label %bb.ff [
    i8 8, label %bb.ax
    i8 5, label %bb.bc
    i8 13, label %bb.bc
    i8 17, label %bb.bh
    i8 3, label %bb.bm
    i8 4, label %bb.bm
    i8 18, label %bb.br
    i8 2, label %bb.bw
    i8 7, label %bb.bw
    i8 15, label %bb.bw
    i8 1, label %bb.cb
    i8 6, label %bb.cb
    i8 16, label %bb.cb
    i8 14, label %bb.cg
    i8 12, label %bb.dj
    i8 9, label %bb.du
    i8 11, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i
    i8 10, label %bb.ey
  ]

bb.ax:                                            ; preds = %.critedge.i88
  %i.ki = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kd)
          to label %.noexc91 unwind label %.loopexit

.noexc91:                                         ; preds = %bb.ax
  br i1 %i.ki, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc91
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !7, !noalias !161
  %i.kl = icmp slt i32 %i.kk, 16
  %i.km = select i1 %i.kl, i8 5, i8 6
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.az:                                            ; preds = %.noexc91
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !noalias !161
  %i.kp = and i8 %i.ko, 32
  %.not30.i.i = icmp eq i8 %i.kp, 0
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !7, !noalias !161
  %i.ks = icmp slt i32 %i.kr, 16                  ; 2 uses
  br i1 %.not30.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kt = select i1 %i.ks, i8 3, i8 4
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.ku = select i1 %i.ks, i8 1, i8 2
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bc:                                            ; preds = %.critedge.i88, %.critedge.i88
  %i.kv = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kd)
          to label %.noexc92 unwind label %.loopexit

.noexc92:                                         ; preds = %bb.bc
  br i1 %i.kv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.noexc92
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !7, !noalias !161
  %i.ky = icmp slt i32 %i.kx, 16
  %i.kz = select i1 %i.ky, i8 11, i8 12
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.be:                                            ; preds = %.noexc92
  %i.la = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !noalias !161
  %i.lc = and i8 %i.lb, 32
  %.not29.i.i = icmp eq i8 %i.lc, 0
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !7, !noalias !161
  %i.lf = icmp slt i32 %i.le, 16                  ; 2 uses
  br i1 %.not29.i.i, label %bb.bg, label %bb.bf

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
  %i.ts = icmp slt i32 %i.tr, 16                  ; 2 uses
  br i1 %.not13.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.tt = select i1 %i.ts, i8 81, i8 82
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ej:                                            ; preds = %bb.eh
  %i.tu = select i1 %i.ts, i8 79, i8 80
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ek:                                            ; preds = %bb.eg
  %i.tv = getelementptr inbounds nuw i8, ptr %i.hz, i64 22
  %i.tw = load i8, ptr %i.tv, align 2, !tbaa !70, !range !39, !noalias !161, !noundef !40
  %i.tx = trunc nuw i8 %i.tw to i1
  br i1 %i.tx, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ty = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !7, !noalias !161
  %i.ua = icmp slt i32 %i.tz, 16
  %i.ub = select i1 %i.ua, i8 87, i8 88
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.em:                                            ; preds = %bb.ek, %bb.eg
  %i.uc = getelementptr inbounds nuw i8, ptr %i.hz, i64 18
  %i.ud = load i8, ptr %i.uc, align 2, !tbaa !164, !range !39, !noalias !161, !noundef !40
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.uf = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !7, !noalias !161
  %i.uh = icmp slt i32 %i.ug, 16
  %i.ui = select i1 %i.uh, i8 75, i8 76
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.eo:                                            ; preds = %bb.em
  %i.uj = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !161
  %i.ul = and i8 %i.uk, 32
  %.not14.i.i = icmp eq i8 %i.ul, 0
  %i.um = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.un = load i32, ptr %i.um, align 4, !tbaa !7, !noalias !161
  %i.uo = icmp slt i32 %i.un, 16                  ; 2 uses
  br i1 %.not14.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.up = select i1 %i.uo, i8 69, i8 70
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.eq:                                            ; preds = %bb.eo
  %i.uq = select i1 %i.uo, i8 67, i8 68
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i: ; preds = %.critedge.i88
  %.val.i.i = load i16, ptr %i.is, align 8, !noalias !161
  %i.ur = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.us = load i8, ptr %i.ur, align 1, !noalias !161
  %i.ut = and i8 %i.us, 32
  %.not.i129.i.i = icmp eq i8 %i.ut, 0            ; 3 uses
  %i.uu = icmp ne i16 %.val.i.i, 0
  %spec.select.i.i.i = select i1 %.not.i129.i.i, i1 %i.uu, i1 false
  br i1 %spec.select.i.i.i, label %bb.er, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i

bb.er:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !7, !noalias !161
  %i.ux = icmp slt i32 %i.uw, 16
  %i.uy = select i1 %i.ux, i8 107, i8 108
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %i.va = load i8, ptr %i.uz, align 4, !tbaa !55, !range !39, !noalias !161, !noundef !40
  %i.vb = trunc nuw i8 %i.va to i1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !7, !noalias !161
  %i.ve = icmp slt i32 %i.vd, 16                  ; 4 uses
  br i1 %i.vb, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i
  br i1 %.not.i129.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vf = select i1 %i.ve, i8 105, i8 106
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.eu:                                            ; preds = %bb.es
  %i.vg = select i1 %i.ve, i8 103, i8 104
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ev:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i
  br i1 %.not.i129.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vh = select i1 %i.ve, i8 101, i8 102
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ex:                                            ; preds = %bb.ev
  %i.vi = select i1 %i.ve, i8 99, i8 100
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ey:                                            ; preds = %.critedge.i88
  %i.vj = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %i.vk = load i8, ptr %i.vj, align 4, !tbaa !55, !range !39, !noalias !161, !noundef !40
  %i.vl = trunc nuw i8 %i.vk to i1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.vn = load i8, ptr %i.vm, align 1, !noalias !161
  %i.vo = and i8 %i.vn, 32
  %.not10.i.i = icmp eq i8 %i.vo, 0               ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !7, !noalias !161
  %i.vr = icmp slt i32 %i.vq, 16                  ; 4 uses
  br i1 %i.vl, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  br i1 %.not10.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vs = select i1 %i.vr, i8 97, i8 98
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fb:                                            ; preds = %bb.ez
  %i.vt = select i1 %i.vr, i8 95, i8 96
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fc:                                            ; preds = %bb.ey
  br i1 %.not10.i.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vu = select i1 %i.vr, i8 93, i8 94
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fe:                                            ; preds = %bb.fc
  %i.vv = select i1 %i.vr, i8 91, i8 92
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ff:                                            ; preds = %bb.du, %.critedge.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !161
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef nonnull @.str.12) #20
          to label %.noexc107 unwind label %.loopexit.split-lp

.noexc107:                                        ; preds = %bb.ff
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.fg, !noalias !161

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %.noexc107
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21, !noalias !161
  unreachable

bb.fg:                                            ; preds = %.noexc107
  %i.vw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21, !noalias !161
  unreachable

_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i: ; preds = %bb.fe, %bb.fd, %bb.fb, %bb.fa, %bb.ex, %bb.ew, %bb.eu, %bb.et, %bb.er, %bb.eq, %bb.ep, %bb.en, %bb.el, %bb.ej, %bb.ei, %bb.ef, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dx, %bb.dt, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dl, %bb.di, %bb.dh, %bb.df, %bb.dd, %bb.dc, %bb.da, %bb.cy, %bb.cx, %bb.cv, %bb.ct, %bb.cs, %bb.cq, %bb.cm, %bb.cl, %bb.cj, %bb.cf, %bb.ce, %bb.cc, %bb.ca, %bb.bz, %bb.bx, %bb.bv, %bb.bu, %bb.bs, %bb.bq, %bb.bp, %bb.bn, %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ay
  %.sroa.51.0.i = phi i8 [ %i.kf, %bb.ay ], [ %i.kf, %bb.bb ], [ %i.kf, %bb.ba ], [ %i.kf, %bb.bd ], [ %i.kf, %bb.bg ], [ %i.kf, %bb.bf ], [ %i.kf, %bb.bi ], [ %i.kf, %bb.bl ], [ %i.kf, %bb.bk ], [ %i.kf, %bb.bn ], [ %i.kf, %bb.bq ], [ %i.kf, %bb.bp ], [ %i.kf, %bb.bs ], [ %i.kf, %bb.bv ], [ %i.kf, %bb.bu ], [ %i.kf, %bb.bx ], [ %i.kf, %bb.ca ], [ %i.kf, %bb.bz ], [ %i.kf, %bb.cc ], [ %i.kf, %bb.cf ], [ %i.kf, %bb.ce ], [ %i.kf, %bb.cj ], [ %i.kf, %bb.cm ], [ %i.kf, %bb.cl ], [ %i.ot, %bb.da ], [ %i.ot, %bb.dd ], [ %i.ot, %bb.dc ], [ %i.ot, %bb.df ], [ %i.ot, %bb.di ], [ %i.ot, %bb.dh ], [ %i.kf, %bb.cv ], [ %i.kf, %bb.cy ], [ %i.kf, %bb.cx ], [ %i.kf, %bb.cq ], [ %i.kf, %bb.ct ], [ %i.kf, %bb.cs ], [ %i.kf, %bb.dq ], [ %i.kf, %bb.dt ], [ %i.kf, %bb.ds ], [ %i.kf, %bb.dm ], [ %i.kf, %bb.dl ], [ %i.kf, %bb.do ], [ %i.kf, %bb.ec ], [ %i.kf, %bb.ef ], [ %i.kf, %bb.ee ], [ %i.kf, %bb.dy ], [ %i.kf, %bb.dx ], [ %i.kf, %bb.ea ], [ %i.kf, %bb.en ], [ %i.kf, %bb.eq ], [ %i.kf, %bb.ep ], [ %i.kf, %bb.ej ], [ %i.kf, %bb.ei ], [ %i.kf, %bb.el ], [ %i.kf, %bb.er ], [ %i.kf, %bb.eu ], [ %i.kf, %bb.et ], [ %i.kf, %bb.ex ], [ %i.kf, %bb.ew ], [ %i.kf, %bb.fb ], [ %i.kf, %bb.fa ], [ %i.kf, %bb.fe ], [ %i.kf, %bb.fd ]
  %.0.ph.i.i = phi i8 [ %i.km, %bb.ay ], [ %i.ku, %bb.bb ], [ %i.kt, %bb.ba ], [ %i.kz, %bb.bd ], [ %i.lh, %bb.bg ], [ %i.lg, %bb.bf ], [ %i.lm, %bb.bi ], [ %i.lu, %bb.bl ], [ %i.lt, %bb.bk ], [ %i.lz, %bb.bn ], [ %i.mh, %bb.bq ], [ %i.mg, %bb.bp ], [ %i.mm, %bb.bs ], [ %i.mu, %bb.bv ], [ %i.mt, %bb.bu ], [ %i.mz, %bb.bx ], [ %i.nh, %bb.ca ], [ %i.ng, %bb.bz ], [ %i.nm, %bb.cc ], [ %i.nu, %bb.cf ], [ %i.nt, %bb.ce ], [ %i.of, %bb.cj ], [ %i.on, %bb.cm ], [ %i.om, %bb.cl ], [ %i.pz, %bb.da ], [ %i.qh, %bb.dd ], [ %i.qg, %bb.dc ], [ %i.ql, %bb.df ], [ %i.qt, %bb.di ], [ %i.qs, %bb.dh ], [ %i.pn, %bb.cv ], [ %i.pv, %bb.cy ], [ %i.pu, %bb.cx ], [ %i.pa, %bb.cq ], [ %i.pi, %bb.ct ], [ %i.ph, %bb.cs ], [ %i.rs, %bb.dq ], [ %i.sa, %bb.dt ], [ %i.rz, %bb.ds ], [ %i.re, %bb.dm ], [ %i.rd, %bb.dl ], [ %i.rl, %bb.do ], [ %i.tb, %bb.ec ], [ %i.tj, %bb.ef ], [ %i.ti, %bb.ee ], [ %i.sn, %bb.dy ], [ %i.sm, %bb.dx ], [ %i.su, %bb.ea ], [ %i.ui, %bb.en ], [ %i.uq, %bb.eq ], [ %i.up, %bb.ep ], [ %i.tu, %bb.ej ], [ %i.tt, %bb.ei ], [ %i.ub, %bb.el ], [ %i.uy, %bb.er ], [ %i.vg, %bb.eu ], [ %i.vf, %bb.et ], [ %i.vi, %bb.ex ], [ %i.vh, %bb.ew ], [ %i.vt, %bb.fb ], [ %i.vs, %bb.fa ], [ %i.vv, %bb.fe ], [ %i.vu, %bb.fd ]
  %i.vx = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !56, !noalias !161 ; 2 uses
  store i8 %.0.ph.i.i, ptr %i.jv, align 16, !tbaa !157
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.sroa.5.0..sroa_idx.i, i8 0, i64 18, i1 false)
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 19
  store i8 %.sroa.51.0.i, ptr %.sroa.51.0..sroa_idx.i, align 1, !tbaa !38
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  store float %i.vy, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !165
  store i8 1, ptr %i.jw, align 8, !tbaa !155
  %i.vz = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.ia, ptr %i.vz, align 8, !tbaa !166
  %i.wa = trunc i32 %.0.i.i.i to i16
  %i.wb = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i16 %i.wa, ptr %i.wb, align 16, !tbaa !167
  %i.wc = load i32, ptr %i.jc, align 8, !tbaa !67 ; 2 uses
  %i.wd = icmp sgt i32 %i.wc, -1
  %i.we = trunc i32 %i.wc to i8
  %i.wf = select i1 %i.wd, i8 %i.we, i8 63
  %i.wg = getelementptr inbounds nuw i8, ptr %i.jv, i64 18
  store i8 %i.wf, ptr %i.wg, align 2, !tbaa !168
  %i.wh = fcmp oge float %i.vy, 5.000000e-02
  %i.wi = zext i1 %i.wh to i32
  %i.wj = shl nuw i32 %i.wi, %i.jt
  %i.wk = or i32 %i.wj, %.2
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i

_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i: ; preds = %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i, %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i, %bb.aw, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i.i, %_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE.exit.i.i, %bb.as, %bb.ar
  %.3 = phi i32 [ %.2, %bb.as ], [ %.2, %_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE.exit.i.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.i.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i ], [ %i.wk, %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i ], [ %.2, %bb.aw ], [ %.2, %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i.i ], [ %.2, %bb.ar ] ; 2 uses
  %i.wl = add nuw i64 %.022.i, 1                  ; 2 uses
  %i.wm = load ptr, ptr %i.ek, align 8, !tbaa !44
  %i.wn = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %i.wr = sdiv exact i64 %i.wq, 24
  %i.ws = icmp ult i64 %i.wl, %i.wr
  br i1 %i.ws, label %bb.ar, label %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit, !llvm.loop !169

_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i, %bb.aq
  %.4 = phi i32 [ %.1, %bb.aq ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i ]
  %i.wt = icmp ugt i32 %i.gy, 1
  br i1 %i.wt, label %.lr.ph216.a, label %.critedge

.lr.ph216.a:                                      ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit, %._crit_edge.a
  %.060215 = phi i64 [ %18, %._crit_edge.a ], [ %i.gz, %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit ] ; 3 uses
  %.0214 = phi i32 [ %i.wx, %._crit_edge.a ], [ %.4, %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit ] ; 4 uses
  %18 = lshr i64 %.060215, 1                      ; 6 uses
  %i.wu = trunc nuw nsw i64 %18 to i32
  %19 = lshr i32 %.0214, %i.wu                    ; 2 uses
  %i.wv = and i32 %19, %.0214
  %i.ww = icmp eq i32 %i.wv, 0
  br i1 %i.ww, label %.preheader.a, label %.critedge

.preheader.a:                                     ; preds = %.lr.ph216.a
  %.not219.a = icmp eq i64 %18, 0
  br i1 %.not219.a, label %._crit_edge.a, label %.lr.ph

._crit_edge.a:                                    ; preds = %bb.fl, %.preheader.a
  %i.wx = or i32 %19, %.0214
  %i.wy = icmp samesign ugt i64 %.060215, 3
  br i1 %i.wy, label %.lr.ph216.a, label %.critedge, !llvm.loop !170

bb.fh:                                            ; preds = %.thread
  %i.wz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.gd

bb.fi:                                            ; preds = %bb.al
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit:                                        ; preds = %bb.au, %bb.ax, %bb.bc, %bb.bh, %bb.bm, %bb.br, %bb.bw, %bb.cb, %bb.cg, %bb.ch, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i, %.noexc102, %bb.co, %bb.cp, %bb.cu
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.loopexit.split-lp:                               ; preds = %bb.ff, %.critedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.lr.ph:                                           ; preds = %.preheader.a, %bb.fl
  %.061213 = phi i64 [ %i.xl, %bb.fl ], [ 0, %.preheader.a ] ; 4 uses
  %i.xb = add nuw nsw i64 %.061213, %18           ; 2 uses
  %i.xc = trunc nuw i64 %i.xb to i32
  %i.xd = shl nuw i32 1, %i.xc
  %i.xe = and i32 %i.xd, %.0214
  %.not69 = icmp eq i32 %i.xe, 0
  br i1 %.not69, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.lr.ph
  %i.xf = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %.061213
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  %i.xh = load i8, ptr %i.xg, align 8, !tbaa !155
  %i.xi = icmp eq i8 %i.xh, 0
  br i1 %i.xi, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj, %.lr.ph
  %i.xj = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %i.xb
  %i.xk = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %.061213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.xk, ptr noundef nonnull align 16 dereferenceable(32) %i.xj, i64 32, i1 false)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.xl = add nuw nsw i64 %.061213, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.xl, %18
  br i1 %exitcond.not, label %._crit_edge.a, label %.lr.ph, !llvm.loop !171

.critedge:                                        ; preds = %.lr.ph216.a, %._crit_edge.a, %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit
  %.060.lcssa = phi i64 [ %i.gz, %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit ], [ %18, %._crit_edge.a ], [ %.060215, %.lr.ph216.a ] ; 2 uses
  %i.xm = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %.060.lcssa
  invoke void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_assign_auxIPS4_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %9, ptr noundef nonnull %i.xm)
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit unwind label %.loopexit.split-lp

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit: ; preds = %.critedge
  %i.xn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.060.lcssa, i1 false)
  %i.xo = trunc nuw nsw i64 %i.xn to i32
  %i.xp = sub nsw i32 63, %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.xp, ptr %i.xq, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_119MakeNumToEntryTableEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo12FieldOptionsEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr %3, i64 %4)
          to label %bb.fm unwind label %bb.ft

bb.fm:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit
  %i.xr = load i32, ptr %10, align 8, !tbaa !140
  store i32 %i.xr, ptr %i.f, align 8, !tbaa !140
  %i.xs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.xt = load ptr, ptr %i.g, align 8, !tbaa !141 ; 5 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !142 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !143
  %i.xy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.xz = load <2 x ptr>, ptr %i.xs, align 8, !tbaa !144
  store <2 x ptr> %i.xz, ptr %i.g, align 8, !tbaa !144
  %i.ya = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !143
  store ptr %i.yb, ptr %i.xw, align 8, !tbaa !143
  %.not4.i.i.i.i.i.i109 = icmp eq ptr %i.xt, %i.xv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xs, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i109, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i110

.lr.ph.i.i.i.i.i.i110:                            ; preds = %bb.fm, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113
  %.05.i.i.i.i.i.i111 = phi ptr [ %i.yj, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113 ], [ %i.xt, %bb.fm ] ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i111, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i112 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i112, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113, label %bb.fn

bb.fn:                                            ; preds = %.lr.ph.i.i.i.i.i.i110
  %i.ye = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i111, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !148
  %i.yg = ptrtoint ptr %i.yf to i64
  %i.yh = ptrtoint ptr %i.yd to i64
  %i.yi = sub i64 %i.yg, %i.yh
  call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef %i.yi) #18
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113: ; preds = %bb.fn, %.lr.ph.i.i.i.i.i.i110
  %i.yj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i111, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i114 = icmp eq ptr %i.yj, %i.xv
  br i1 %.not.i.i.i.i.i.i114, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i110, !llvm.loop !149

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113, %bb.fm
  %.not.i.i1.i.i.i.i116 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i1.i.i.i.i116, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117, label %bb.fo

bb.fo:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115
  %i.yk = ptrtoint ptr %i.xx to i64
  %i.yl = ptrtoint ptr %i.xt to i64
  %i.ym = sub i64 %i.yk, %i.yl
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.ym) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115, %bb.fo
  %i.yn = load ptr, ptr %i.xs, align 8, !tbaa !141 ; 3 uses
  %i.yo = load ptr, ptr %i.xy, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i118 = icmp eq ptr %i.yn, %i.yo
  br i1 %.not4.i.i.i.i118, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126, label %.lr.ph.i.i.i.i119

.lr.ph.i.i.i.i119:                                ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122
  %.05.i.i.i.i120 = phi ptr [ %i.yw, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122 ], [ %i.yn, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117 ] ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i121 = icmp eq ptr %i.yq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i121, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph.i.i.i.i119
  %i.yr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 24
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !148
  %i.yt = ptrtoint ptr %i.ys to i64
  %i.yu = ptrtoint ptr %i.yq to i64
  %i.yv = sub i64 %i.yt, %i.yu
  call void @_ZdlPvm(ptr noundef nonnull %i.yq, i64 noundef %i.yv) #18
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122: ; preds = %bb.fp, %.lr.ph.i.i.i.i119
  %i.yw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 32 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.yw, %i.yo
  br i1 %.not.i.i.i.i123, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124, label %.lr.ph.i.i.i.i119, !llvm.loop !149

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122
  %.pr.i.i125 = load ptr, ptr %i.xs, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117
  %i.yx = phi ptr [ %.pr.i.i125, %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124 ], [ %i.yn, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117 ] ; 3 uses
  %.not.i.i1.i.i127 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i1.i.i127, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128, label %bb.fq

bb.fq:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126
  %i.yy = load ptr, ptr %i.ya, align 8, !tbaa !143
  %i.yz = ptrtoint ptr %i.yy to i64
  %i.za = ptrtoint ptr %i.yx to i64
  %i.zb = sub i64 %i.yz, %i.za
  call void @_ZdlPvm(ptr noundef nonnull %i.yx, i64 noundef %i.zb) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.zc = load ptr, ptr %i.ek, align 8, !tbaa !44
  %i.zd = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %i.ze = ptrtoint ptr %i.zc to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf
  %i.zh = sdiv exact i64 %i.zg, 24                ; 2 uses
  %i.zi = icmp eq i64 %i.zh, %4
  br i1 %i.zi, label %bb.fs, label %bb.fr, !prof !57

bb.fr:                                            ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128
  %i.zj = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.zh, i64 noundef %4, ptr noundef nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit unwind label %bb.fu

bb.fs:                                            ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %1, ptr %i.zd, i64 %4)
          to label %bb.fy unwind label %bb.gb

bb.ft:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.gc

bb.fu:                                            ; preds = %bb.fr
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.1, i32 noundef 952, ptr noundef nonnull %i.zj) #20
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.fx

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.fv
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  unreachable

bb.fw:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  %i.zm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.gc

bb.fx:                                            ; preds = %bb.fv
  %i.zn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  unreachable

bb.fy:                                            ; preds = %bb.fs
  %i.zo = load ptr, ptr %i.h, align 8, !tbaa !150 ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !151
  %i.zr = load <2 x ptr>, ptr %12, align 16, !tbaa !152
  store <2 x ptr> %i.zr, ptr %i.h, align 8, !tbaa !152
  %i.zs = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.zt = load ptr, ptr %i.zs, align 16, !tbaa !151
  store ptr %i.zt, ptr %i.zp, align 8, !tbaa !151
  %.not.i.i.i.i.i131 = icmp eq ptr %i.zo, null
  br i1 %.not.i.i.i.i.i131, label %_ZNSt6vectorIhSaIhEED2Ev.exit134, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.zu = ptrtoint ptr %i.zq to i64
  %i.zv = ptrtoint ptr %i.zo to i64
  %i.zw = sub i64 %i.zu, %i.zv
  call void @_ZdlPvm(ptr noundef nonnull %i.zo, i64 noundef %i.zw) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit134

_ZNSt6vectorIhSaIhEED2Ev.exit134:                 ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit134, %_ZNSt6vectorIhSaIhEED2Ev.exit
  ret void

bb.gb:                                            ; preds = %bb.fs
  %i.zx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.gc

bb.gc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.fu, %bb.fw, %bb.gb, %bb.ft
  %.pn.pn = phi { ptr, i32 } [ %i.zl, %bb.fu ], [ %i.zx, %bb.gb ], [ %i.zk, %bb.ft ], [ %i.zm, %bb.fw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fi, %bb.gc, %bb.fh, %bb.w, %bb.v, %bb.m, %bb.k, %bb.j, %bb.i
  %.pn70 = phi { ptr, i32 } [ %i.df, %bb.w ], [ %i.de, %bb.v ], [ %i.aw, %bb.k ], [ %i.av, %bb.j ], [ %i.bb, %bb.m ], [ %i.au, %bb.i ], [ %i.wz, %bb.fh ], [ %.pn.pn, %bb.gc ], [ %i.xa, %bb.fi ]
  %i.zy = load ptr, ptr %i.h, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIhSaIhEED2Ev.exit136, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !151
  %i.aab = ptrtoint ptr %i.aaa to i64
  %i.aac = ptrtoint ptr %i.zy to i64
  %i.aad = sub i64 %i.aab, %i.aac
  call void @_ZdlPvm(ptr noundef nonnull %i.zy, i64 noundef %i.aad) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit136

_ZNSt6vectorIhSaIhEED2Ev.exit136:                 ; preds = %bb.gd, %bb.ge
  call void @_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.f) #19
  %i.aae = load ptr, ptr %i.e, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit136
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !74
  %i.aah = ptrtoint ptr %i.aag to i64
  %i.aai = ptrtoint ptr %i.aae to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  call void @_ZdlPvm(ptr noundef nonnull %i.aae, i64 noundef %i.aaj) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit136, %bb.gf
  %i.aak = load ptr, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i138 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139, label %bb.gg

bb.gg:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !45
  %i.aan = ptrtoint ptr %i.aam to i64
  %i.aao = ptrtoint ptr %i.aak to i64
  %i.aap = sub i64 %i.aan, %i.aao
  call void @_ZdlPvm(ptr noundef nonnull %i.aak, i64 noundef %i.aap) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, %bb.gg
  %i.aaq = load ptr, ptr %i.c, align 8, !tbaa !136 ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !138
  %i.aat = ptrtoint ptr %i.aas to i64
  %i.aau = ptrtoint ptr %i.aaq to i64
  %i.aav = sub i64 %i.aat, %i.aau
  call void @_ZdlPvm(ptr noundef nonnull %i.aaq, i64 noundef %i.aav) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139, %bb.gh
  resume { ptr, i32 } %.pn70
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_119MakeNumToEntryTableEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo12FieldOptionsEEE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 4), (8, 32)) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %4 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::SkipEntryBlock", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i32 -1, ptr %0, align 8, !tbaa !140
  %i.b = trunc i64 %2 to i16                      ; 3 uses
  %.not99 = icmp eq i16 %i.b, 0
  br i1 %.not99, label %.thread81, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = and i64 %2, 65535
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.d = phi i32 [ -1, %.lr.ph.preheader ], [ %i.p, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 32
  br i1 %i.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %i.j = trunc nuw i64 %indvars.iv to i16         ; 2 uses
  %.not52104 = icmp eq i16 %i.j, %i.b
  br i1 %.not52104, label %.thread81, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %i.h, -1
  %.neg = shl nsw i32 -1, %i.o
  %i.p = add i32 %i.d, %.neg                      ; 2 uses
  store i32 %i.p, ptr %0, align 8, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %.not, label %.thread81, label %.lr.ph, !llvm.loop !172

bb.c:                                             ; preds = %.lr.ph109, %._crit_edge
  %.1108 = phi i16 [ %i.j, %.lr.ph109 ], [ %i.ck, %._crit_edge ] ; 3 uses
  %.045107 = phi ptr [ null, %.lr.ph109 ], [ %.146, %._crit_edge ]
  %.047106 = phi i1 [ true, %.lr.ph109 ], [ false, %._crit_edge ]
  %i.q = phi i1 [ false, %.lr.ph109 ], [ true, %._crit_edge ]
  %.049105 = phi i32 [ 0, %.lr.ph109 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %i.r = zext i16 %.1108 to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 7 uses
  %i.w = icmp ugt i32 %i.v, %.049105
  br i1 %i.w, label %bb.e, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  %i.x = zext i32 %i.v to i64
  %i.y = zext i32 %.049105 to i64
  %i.z = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = sub nuw i32 %i.v, %.049105
  %i.ab = icmp ugt i32 %i.aa, 96
  %or.cond = select i1 %i.q, i1 %i.ab, i1 false
  %i.ac = or i1 %.047106, %or.cond
  br i1 %i.ac, label %bb.j, label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull %i.z) #20
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  unreachable

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.v, ptr %4, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !142 ; 5 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i, label %bb.k, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.j
  store i32 %i.v, ptr %i.ag, align 8, !tbaa !173
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !142
  br label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit unwind label %bb.m

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.k
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %.pr to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.an) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit

_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !144
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -32
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i61, label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62

_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.v

bb.o:                                             ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit, %bb.e
  %.146 = phi ptr [ %i.ap, %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit ], [ %.045107, %bb.e ] ; 5 uses
  %i.aw = load i32, ptr %.146, align 8, !tbaa !173
  %i.ax = sub i32 %i.v, %i.aw                     ; 2 uses
  %i.ay = lshr i32 %i.ax, 4
  %i.az = and i32 %i.ax, 15                       ; 2 uses
  %i.ba = zext nneg i32 %i.ay to i64              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.146, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.146, i64 16 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !178 ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !145 ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = ashr exact i64 %i.bh, 2                 ; 2 uses
  %.not54101 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not54101, label %._crit_edge, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.146, i64 24 ; 2 uses
  %.sroa.6.0.insert.ext = zext i16 %.1108 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, 65535 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph102, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit
  %i.bk = phi i64 [ %i.bi, %.lr.ph102 ], [ %i.ce, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.bl = phi i64 [ %i.bh, %.lr.ph102 ], [ %i.cd, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.bm = phi ptr [ %i.be, %.lr.ph102 ], [ %i.bz, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.bn = phi ptr [ %i.bd, %.lr.ph102 ], [ %i.ca, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !148
  %.not.i.i63 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.sroa.0.0.insert.insert, ptr %i.bn, align 2
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !178
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  store ptr %i.bq, ptr %i.bc, align 8, !tbaa !178
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !145
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit

bb.r:                                             ; preds = %bb.p
  %i.br = icmp eq i64 %i.bl, 9223372036854775804
  br i1 %i.br, label %bb.s, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bs = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.bk ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #17
          to label %.noexc66 unwind label %.loopexit ; 5 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bl ; 2 uses
  store i32 %.sroa.0.0.insert.insert, ptr %i.bv, align 2
  %i.bw = icmp sgt i64 %i.bl, 0
  br i1 %i.bw, label %bb.t, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.t:                                             ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bu, ptr align 2 %i.bm, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.t, %.noexc66
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bl) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !145
  store ptr %i.bx, ptr %i.bc, align 8, !tbaa !178
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.by, ptr %i.bj, align 8, !tbaa !148
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.q
  %i.bz = phi ptr [ %i.bu, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre, %bb.q ] ; 3 uses
  %i.ca = phi ptr [ %i.bx, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bq, %bb.q ] ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = ashr exact i64 %i.cd, 2                 ; 2 uses
  %.not54 = icmp ugt i64 %i.ce, %i.ba
  br i1 %.not54, label %._crit_edge, label %bb.p, !llvm.loop !179

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit, %bb.o
  %.lcssa = phi ptr [ %i.be, %bb.o ], [ %i.bz, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ]
  %.neg55 = shl nsw i32 -1, %i.az
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.ba ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !180
  %i.ch = trunc nsw i32 %.neg55 to i16
  %i.ci = add i16 %i.cg, %i.ch
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !180
  %i.cj = sub i32 %i.v, %i.az
  %i.ck = add i16 %.1108, 1                       ; 2 uses
  %.not52 = icmp eq i16 %i.ck, %i.b
  br i1 %.not52, label %.thread81, label %bb.c, !llvm.loop !182

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %bb.h, %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62 ], [ %i.ad, %bb.f ], [ %i.ae, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #19
  resume { ptr, i32 } %.pn.pn

.thread81:                                        ; preds = %bb.b, %._crit_edge, %bb.a, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #18
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(address) %2, i64 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.idx.i = mul i64 %3, 24                        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 2 uses
  %.not1.i = icmp eq i64 %3, 0
  br i1 %.not1.i, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.thread", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = add i64 %.idx.i, -24                     ; 3 uses
  %i.c = udiv i64 %i.b, 24                        ; 3 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = icmp ult i64 %i.b, 24
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i.preheader.new
  %.0 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %.1.1, %bb.d ] ; 2 uses
  %.02.i = phi ptr [ %2, %.lr.ph.i.preheader.new ], [ %i.u, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !65
  %.not9.i = icmp eq i8 %i.g, 2
  br i1 %.not9.i, label %.lr.ph.i.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %.02.i, align 8, !tbaa !158
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %.0.copyload.i.i.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i.i.i to i64
  %i.l = add i64 %.0, %i.k
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %.1 = phi i64 [ %.0, %.lr.ph.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02.i, i64 40
  %i.n = load i8, ptr %i.m, align 8, !tbaa !65
  %.not9.i.1 = icmp eq i8 %i.n, 2
  br i1 %.not9.i.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.o = getelementptr inbounds nuw i8, ptr %.02.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !183
  %.0.copyload.i.i.i.i.1 = load i16, ptr %i.r, align 1
  %i.s = zext i16 %.0.copyload.i.i.i.i.1 to i64
  %i.t = add i64 %.1, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %.1.1 = phi i64 [ %.1, %.lr.ph.i.1 ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02.i, i64 48 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.unr-lcssa", label %.lr.ph.i

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.unr-lcssa": ; preds = %bb.d
  %i.v = and i64 %i.c, 1
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit"

.lr.ph.i.epil.preheader:                          ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.unr-lcssa", %.lr.ph.i.preheader
  %.0.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %.1.1, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.unr-lcssa" ] ; 2 uses
  %.02.i.epil.init = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.u, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.unr-lcssa" ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.w = getelementptr inbounds nuw i8, ptr %.02.i.epil.init, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !65
  %.not9.i.epil = icmp eq i8 %i.x, 2
  br i1 %.not9.i.epil, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.y = load ptr, ptr %.02.i.epil.init, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !183
  %.0.copyload.i.i.i.i.epil = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i.i.i.i.epil to i64
  %i.ac = add i64 %.0.epil.init, %i.ab
  br label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit"

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit": ; preds = %.lr.ph.i.epil.preheader, %bb.e, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.unr-lcssa"
  %.1.lcssa = phi i64 [ %.1.1, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.unr-lcssa" ], [ %.0.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ad = icmp eq i64 %.1.lcssa, 0
  br i1 %i.ad, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.thread", label %bb.f

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.thread": ; preds = %bb.a, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit"
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_5ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_6EEDaT_T0_.exit"

bb.f:                                             ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.ag, align 1 ; 4 uses
  %i.ah = zext i16 %.0.copyload.i.i.i to i64      ; 3 uses
  %i.ai = xor i64 %i.ah, -1
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = icmp ugt i16 %.0.copyload.i.i.i, 255
  %.sroa.speculated48 = tail call i16 @llvm.umin.i16(i16 %.0.copyload.i.i.i, i16 255) ; 2 uses
  %.sroa.speculated = zext nneg i16 %.sroa.speculated48 to i64
  %i.al = and i64 %3, -8
  %i.am = add i64 %i.al, 8
  %i.an = add i64 %i.am, %.1.lcssa
  %i.ao = add i64 %i.an, %.sroa.speculated        ; 5 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aq, align 8
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc25

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.g

.noexc25:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #17 ; 4 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !150
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !151
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 0, i64 %i.ao, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.noexc25, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.au = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.ar, %.noexc25 ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.as, %.noexc25 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !184
  %i.aw = trunc nuw i16 %.sroa.speculated48 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !38
  %i.ay = and i64 %i.c, 1
  %lcmp.mod58.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod58.not.not, label %.lr.ph.i27.prol, label %.lr.ph.i27.prol.loopexit

.lr.ph.i27.prol:                                  ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !65
  %.not9.i28.prol = icmp eq i8 %i.ba, 2
  br i1 %.not9.i28.prol, label %.lr.ph.i27.prol.loopexit.unr-lcssa, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i27.prol
  %i.bb = load ptr, ptr %2, align 8, !tbaa !158
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %.0.copyload.i.i.i.i29.prol = load i16, ptr %i.bd, align 1
  %i.be = trunc i16 %.0.copyload.i.i.i.i29.prol to i8
  store i8 %i.be, ptr %i.ax, align 1, !tbaa !38
  br label %.lr.ph.i27.prol.loopexit.unr-lcssa

.lr.ph.i27.prol.loopexit.unr-lcssa:               ; preds = %bb.h, %.lr.ph.i27.prol
  %.145.prol = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i27.prol.loopexit

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol.loopexit.unr-lcssa, %bb.g
  %.145.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.145.prol, %.lr.ph.i27.prol.loopexit.unr-lcssa ]
  %.044.unr = phi ptr [ %i.ax, %bb.g ], [ %.145.prol, %.lr.ph.i27.prol.loopexit.unr-lcssa ]
  %.04.i.unr = phi ptr [ %2, %bb.g ], [ %i.bf, %.lr.ph.i27.prol.loopexit.unr-lcssa ]
  %i.bg = icmp ult i64 %i.b, 24
  br i1 %i.bg, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit", label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.prol.loopexit, %bb.k
  %.044 = phi ptr [ %.145.1, %bb.k ], [ %.044.unr, %.lr.ph.i27.prol.loopexit ] ; 3 uses
  %.04.i = phi ptr [ %i.bu, %bb.k ], [ %.04.i.unr, %.lr.ph.i27.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04.i, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !65
  %.not9.i28 = icmp eq i8 %i.bi, 2
  br i1 %.not9.i28, label %.lr.ph.i27.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i27
  %i.bj = load ptr, ptr %.04.i, align 8, !tbaa !158
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !183
  %.0.copyload.i.i.i.i29 = load i16, ptr %i.bl, align 1
  %i.bm = trunc i16 %.0.copyload.i.i.i.i29 to i8
  store i8 %i.bm, ptr %.044, align 1, !tbaa !38
  br label %.lr.ph.i27.1

.lr.ph.i27.1:                                     ; preds = %.lr.ph.i27, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i, i64 40
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !65
  %.not9.i28.1 = icmp eq i8 %i.bo, 2
  br i1 %.not9.i28.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i27.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.04.i, i64 24
  %.145 = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !158
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !183
  %.0.copyload.i.i.i.i29.1 = load i16, ptr %i.bs, align 1
  %i.bt = trunc i16 %.0.copyload.i.i.i.i29.1 to i8
  store i8 %i.bt, ptr %.145, align 1, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i27.1
  %.145.1 = getelementptr inbounds nuw i8, ptr %.044, i64 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04.i, i64 48 ; 2 uses
  %.not.i30.1 = icmp eq ptr %i.bu, %i.a
  br i1 %.not.i30.1, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit", label %.lr.ph.i27

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit": ; preds = %bb.k, %.lr.ph.i27.prol.loopexit
  %.145.lcssa = phi ptr [ %.145.lcssa.unr, %.lr.ph.i27.prol.loopexit ], [ %.145.1, %bb.k ]
  %i.bv = add i64 %.idx.i, -24
  %i.bw = udiv i64 %i.bv, 24
  %i.bx = sub nsw i64 6, %i.bw
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr %.145.lcssa, i64 %i.by ; 7 uses
  br i1 %i.ak, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit", label %bb.l

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit": ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %i.bz, ptr noundef nonnull readonly align 1 dereferenceable(126) %i.aj, i64 126, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ca, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 129
  %i.cc = getelementptr inbounds i8, ptr %i.af, i64 -127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %i.cb, ptr noundef nonnull readonly align 1 dereferenceable(126) %i.cc, i64 126, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 255
  br label %.lr.ph.i40.preheader

bb.l:                                             ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit"
  %i.ce = icmp eq i16 %.0.copyload.i.i.i, 0
  br i1 %i.ce, label %.lr.ph.i40.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %i.aj, i64 %i.ah, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ah
  br label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %bb.m, %bb.l, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit"
  %.8.ph = phi ptr [ %i.bz, %bb.l ], [ %i.cf, %bb.m ], [ %i.cd, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit" ]
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i"
  %.8 = phi ptr [ %.9, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i" ], [ %.8.ph, %.lr.ph.i40.preheader ] ; 4 uses
  %.02.i41 = phi ptr [ %i.cq, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i" ], [ %2, %.lr.ph.i40.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02.i41, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !65
  %.not9.i42 = icmp eq i8 %i.ch, 2
  br i1 %.not9.i42, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i40
  %i.ci = load ptr, ptr %.02.i41, align 8, !tbaa !158
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183 ; 2 uses
  %.0.copyload.i.i.i.i43 = load i16, ptr %i.ck, align 1 ; 2 uses
  %i.cl = icmp eq i16 %.0.copyload.i.i.i.i43, 0
  br i1 %i.cl, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = zext i16 %.0.copyload.i.i.i.i43 to i64  ; 3 uses
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.8, ptr nonnull readonly align 1 %i.co, i64 %i.cm, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.8, i64 %i.cm
  br label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i"

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i": ; preds = %bb.o, %bb.n, %.lr.ph.i40
  %.9 = phi ptr [ %.8, %.lr.ph.i40 ], [ %.8, %bb.n ], [ %i.cp, %bb.o ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.02.i41, i64 24 ; 2 uses
  %.not.i44 = icmp eq ptr %i.cq, %i.a
  br i1 %.not.i44, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_5ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_6EEDaT_T0_.exit", label %.lr.ph.i40

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_5ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_6EEDaT_T0_.exit": ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i", %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.thread"
  ret void
}

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !173
  store i32 %i.r, ptr %i.q, align 8, !tbaa !173
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !185
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !185
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148
  store ptr %i.x, ptr %i.v, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.y = load i32, ptr %.0911.i.i.i, align 8, !tbaa !173, !alias.scope !189, !noalias !186
  store i32 %i.y, ptr %.012.i.i.i, align 8, !tbaa !173, !alias.scope !186, !noalias !189
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !185, !alias.scope !189, !noalias !186
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !185, !alias.scope !186, !noalias !189
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !148, !alias.scope !189, !noalias !186
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !148, !alias.scope !186, !noalias !189
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !189, !noalias !186
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !191

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.aq, %.lr.ph.i.i.i17 ], [ %i.ah, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.ap, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.ai = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !173, !alias.scope !195, !noalias !192
  store i32 %i.ai, ptr %.012.i.i.i18, align 8, !tbaa !173, !alias.scope !192, !noalias !195
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !185, !alias.scope !195, !noalias !192
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !185, !alias.scope !192, !noalias !195
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148, !alias.scope !195, !noalias !192
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !148, !alias.scope !192, !noalias !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false), !alias.scope !195, !noalias !192
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !191

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.aq, %.lr.ph.i.i.i17 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !143
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #18
  br label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !142
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !143
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !198

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !200

_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #16
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #17 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !201

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !200

_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.aw = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #18
  br label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ay, ptr %i.h, align 8, !tbaa !74
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_assign_auxIPS4_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = load ptr, ptr %0, align 8, !tbaa !136    ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775776
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #17 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i
  %i.m = and i64 %i.c, 9223372036854775776
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %1, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #18
  br label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit, %bb.d
  store ptr %i.l, ptr %0, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !137
  store ptr %i.o, ptr %i.d, align 8, !tbaa !138
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.s, %i.c
  br i1 %.not, label %_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp sgt i64 %i.c, 32
  br i1 %i.t, label %bb.g, label %bb.h, !prof !57

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %i.c, 32
  br i1 %i.u, label %bb.i, label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !137
  %.not.i16 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i16, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit
  store ptr %i.v, ptr %i.p, align 8, !tbaa !137
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit

_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.s ; 2 uses
  %i.x = icmp sgt i64 %i.s, 32
  br i1 %i.x, label %bb.j, label %bb.k, !prof !57

bb.j:                                             ; preds = %_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.s, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit
  %i.y = icmp eq i64 %i.s, 32
  br i1 %i.y, label %bb.l, label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17

_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !137  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0810.i.i.i.i, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !202

_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.z, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17 ], [ %i.ab, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !137
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES4_EvT_S6_RSaIT0_E.exit.i, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }

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
!7 = !{!8, !4, i64 4}
!8 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !10, i64 3, !10, i64 3, !5, i64 3, !4, i64 4, !11, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !5, i64 40, !5, i64 48, !17, i64 56, !18, i64 64, !18, i64 72, !5, i64 80}
!9 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !13, i64 0}
!15 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !13, i64 0}
!16 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !13, i64 0}
!17 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !13, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !13, i64 0}
!19 = !{!8, !5, i64 2}
!20 = !{!21, !21, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal14WireFormatLite8WireTypeE", !5, i64 0}
!22 = !{!23, !16, i64 32}
!23 = !{!"_ZTSN6google8protobuf10DescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !5, i64 1, !5, i64 2, !24, i64 4, !4, i64 8, !11, i64 16, !14, i64 24, !16, i64 32, !25, i64 40, !18, i64 48, !18, i64 56, !26, i64 64, !27, i64 72, !16, i64 80, !28, i64 88, !29, i64 96, !26, i64 104, !30, i64 112, !31, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!24 = !{!"short", !5, i64 0}
!25 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !13, i64 0}
!26 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !13, i64 0}
!27 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !13, i64 0}
!28 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !13, i64 0}
!29 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !13, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !13, i64 0}
!31 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!32 = !{!"any p2 pointer", !13, i64 0}
!33 = !{!23, !4, i64 8}
!34 = !{!23, !26, i64 64}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!8, !17, i64 56}
!38 = !{!5, !5, i64 0}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTSN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoE", !13, i64 0}
!44 = !{!42, !43, i64 8}
!45 = !{!42, !43, i64 16}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 _ZTSN6google8protobuf8internal17TailCallTableInfo8AuxEntryE", !13, i64 0}
!49 = !{!47, !48, i64 0}
!50 = !{!51, !26, i64 0}
!51 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo12FieldOptionsE", !26, i64 0, !4, i64 8, !52, i64 12, !53, i64 16, !10, i64 18, !10, i64 19, !10, i64 20, !10, i64 21, !10, i64 22}
!52 = !{!"float", !5, i64 0}
!53 = !{!"_ZTSN6google8protobuf8internal12field_layout19TransformValidationE", !5, i64 0}
!54 = !{!51, !10, i64 19}
!55 = !{!51, !10, i64 20}
!56 = !{!51, !52, i64 12}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = !{!51, !4, i64 8}
!59 = !{!26, !26, i64 0}
!60 = !{!24, !24, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"_ZTSN6google8protobuf8internal3cpp13Utf8CheckModeE", !5, i64 0}
!63 = !{!64, !10, i64 0}
!64 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo14MessageOptionsE", !10, i64 0, !10, i64 1}
!65 = !{!66, !62, i64 16}
!66 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoE", !26, i64 0, !4, i64 8, !24, i64 12, !24, i64 14, !62, i64 16}
!67 = !{!66, !4, i64 8}
!68 = !{!8, !16, i64 32}
!69 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!70 = !{!51, !10, i64 22}
!71 = !{!51, !10, i64 21}
!72 = !{!66, !24, i64 14}
!73 = !{!66, !24, i64 12}
!74 = !{!47, !48, i64 16}
!75 = !{!76, !76, i64 0}
!76 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo7AuxTypeE", !5, i64 0}
!77 = !{!64, !10, i64 1}
!78 = !{!51, !53, i64 16}
!79 = !{!80, !76, i64 0}
!80 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo8AuxEntryE", !76, i64 0, !5, i64 8}
!81 = !{!82, !24, i64 2}
!82 = !{!"_ZTSN6google8protobuf14EnumDescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !5, i64 1, !24, i64 2, !4, i64 4, !11, i64 8, !14, i64 16, !16, i64 24, !83, i64 32, !18, i64 40, !18, i64 48, !84, i64 56, !4, i64 64, !4, i64 68, !85, i64 72, !31, i64 80}
!83 = !{!"p1 _ZTSN6google8protobuf11EnumOptionsE", !13, i64 0}
!84 = !{!"p1 _ZTSN6google8protobuf19EnumValueDescriptorE", !13, i64 0}
!85 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptor13ReservedRangeE", !13, i64 0}
!86 = !{!82, !4, i64 4}
!87 = !{!82, !84, i64 56}
!88 = !{!89, !4, i64 4}
!89 = !{!"_ZTSN6google8protobuf19EnumValueDescriptorE", !90, i64 0, !91, i64 1, !4, i64 4, !92, i64 8, !28, i64 16, !93, i64 24, !18, i64 32, !18, i64 40}
!90 = !{!"_ZTSN6google8protobuf8internal11SymbolBaseNILi0EEE", !9, i64 0}
!91 = !{!"_ZTSN6google8protobuf8internal11SymbolBaseNILi1EEE", !9, i64 0}
!92 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!93 = !{!"p1 _ZTSN6google8protobuf16EnumValueOptionsE", !13, i64 0}
!94 = distinct !{!94, !36, !95, !96}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = distinct !{!97, !36, !96, !95}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageImLm0ELb0EEE", !100, i64 0}
!100 = !{!"long", !5, i64 0}
!101 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!102 = !{!103, !107, i64 264}
!103 = !{!"_ZTSN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE7StorageE", !104, i64 0, !105, i64 256, !107, i64 264}
!104 = !{!"_ZTSN4absl12lts_2025051210FixedArrayImLm18446744073709551615ESaImEE22NonEmptyInlinedStorageE", !5, i64 0}
!105 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJmSaImEEEE", !106, i64 0}
!106 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJmSaImEEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !99, i64 0}
!107 = !{!"p1 long", !13, i64 0}
!108 = !{!100, !100, i64 0}
!109 = distinct !{!109, !36}
!110 = !{!23, !25, i64 40}
!111 = distinct !{!111, !36}
!112 = !{!113, !114, i64 0}
!113 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfoE", !114, i64 0, !115, i64 8, !120, i64 32, !123, i64 56, !126, i64 80, !132, i64 112, !4, i64 136}
!114 = !{!"_ZTSN6google8protobuf8internal15TcParseFunctionE", !5, i64 0}
!115 = !{!"_ZTSSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE", !116, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE12_Vector_implE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!119 = !{!"p1 _ZTSN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoE", !13, i64 0}
!120 = !{!"_ZTSSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE", !121, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE", !122, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE12_Vector_implE", !42, i64 0}
!123 = !{!"_ZTSSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE", !124, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_Vector_implE", !47, i64 0}
!126 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableE", !4, i64 0, !127, i64 8}
!127 = !{!"_ZTSSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE", !128, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE", !129, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_Vector_implE", !130, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!131 = !{!"p1 _ZTSN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockE", !13, i64 0}
!132 = !{!"_ZTSSt6vectorIhSaIhEE", !133, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !134, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !135, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!136 = !{!118, !119, i64 0}
!137 = !{!118, !119, i64 8}
!138 = !{!118, !119, i64 16}
!139 = !{!113, !4, i64 136}
!140 = !{!126, !4, i64 0}
!141 = !{!130, !131, i64 0}
!142 = !{!130, !131, i64 8}
!143 = !{!130, !131, i64 16}
!144 = !{!131, !131, i64 0}
!145 = !{!146, !147, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!147 = !{!"p1 _ZTSN6google8protobuf8internal17TailCallTableInfo11SkipEntry16E", !13, i64 0}
!148 = !{!146, !147, i64 16}
!149 = distinct !{!149, !36}
!150 = !{!135, !12, i64 0}
!151 = !{!135, !12, i64 16}
!152 = !{!12, !12, i64 0}
!153 = distinct !{!153, !36}
!154 = !{!43, !43, i64 0}
!155 = !{!156, !5, i64 24}
!156 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN6google8protobuf8internal17TailCallTableInfo13FastFieldInfo5EmptyENS6_5FieldENS6_8NonFieldEEEE", !5, i64 0, !5, i64 24}
!157 = !{!114, !114, i64 0}
!158 = !{!66, !26, i64 0}
!159 = !{!160, !52, i64 20}
!160 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo13FastFieldInfo5FieldE", !114, i64 0, !26, i64 8, !24, i64 16, !5, i64 18, !5, i64 19, !52, i64 20}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE: argument 0"}
!163 = distinct !{!163, !"_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE"}
!164 = !{!51, !10, i64 18}
!165 = !{!52, !52, i64 0}
!166 = !{!160, !26, i64 8}
!167 = !{!160, !24, i64 16}
!168 = !{!160, !5, i64 18}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, !36}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !36}
!173 = !{!174, !4, i64 0}
!174 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockE", !4, i64 0, !175, i64 8}
!175 = !{!"_ZTSSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE", !176, i64 0}
!176 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE", !177, i64 0}
!177 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_Vector_implE", !146, i64 0}
!178 = !{!146, !147, i64 8}
!179 = distinct !{!179, !36}
!180 = !{!181, !24, i64 0}
!181 = !{!"_ZTSN6google8protobuf8internal17TailCallTableInfo11SkipEntry16E", !24, i64 0, !24, i64 2}
!182 = distinct !{!182, !36}
!183 = !{!11, !12, i64 0}
!184 = !{!135, !12, i64 8}
!185 = !{!147, !147, i64 0}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZSt19__relocate_object_aIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!188 = distinct !{!188, !"_ZSt19__relocate_object_aIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_SaIS4_EEvPT_PT0_RT1_"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZSt19__relocate_object_aIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!191 = distinct !{!191, !36}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZSt19__relocate_object_aIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!194 = distinct !{!194, !"_ZSt19__relocate_object_aIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_SaIS4_EEvPT_PT0_RT1_"}
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZSt19__relocate_object_aIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!197 = !{i64 0, i64 4, !75, i64 8, i64 8, !38}
!198 = distinct !{!198, !199}
!199 = !{!"llvm.loop.unroll.disable"}
!200 = distinct !{!200, !36}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !36}
end_hunk_3
