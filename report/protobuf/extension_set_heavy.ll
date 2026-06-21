inline.NumInlined: 1229
inline.NumDeleted: 578
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::atomic.69" = type { %"struct.std::__atomic_base.70" }
%"struct.std::__atomic_base.70" = type { i8 }
%"struct.google::protobuf::internal::ThreadSafeArena::ThreadCache" = type { i64, i64, ptr, [8 x i8] }
%class.anon = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.4" }
%"struct.std::_Head_base.4" = type { ptr }
%"class.google::protobuf::internal::GeneratedExtensionFinder" = type { ptr }
%"class.google::protobuf::internal::DescriptorPoolExtensionFinder" = type { ptr, ptr, ptr }
%"struct.google::protobuf::internal::ExtensionInfo" = type { ptr, i32, i8, i8, i8, i8, %union.anon.42, ptr, ptr }
%union.anon.42 = type { %"struct.google::protobuf::internal::ExtensionInfo::EnumValidityCheck" }
%"struct.google::protobuf::internal::ExtensionInfo::EnumValidityCheck" = type { ptr, ptr }
%class.anon.100 = type <{ ptr, %"struct.google::protobuf::internal::ExtensionInfo::EnumValidityCheck", ptr, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.67 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.67 = type { i64, [8 x i8] }
%"class.google::protobuf::internal::ParseContext" = type { %"class.google::protobuf::internal::EpsCopyInputStream", i32, i32, %"struct.google::protobuf::internal::ParseContext::Data" }
%"class.google::protobuf::internal::EpsCopyInputStream" = type { ptr, ptr, ptr, i32, i32, ptr, [32 x i8], i64, i32, i32 }
%"struct.google::protobuf::internal::ParseContext::Data" = type { ptr, ptr }
%"class.google::protobuf::io::EpsCopyOutputStream" = type <{ ptr, ptr, [32 x i8], ptr, i8, i8, i8, i8, [4 x i8] }>

$_ZN6google8protobuf8internal12ExtensionSet27ParseFieldWithExtensionInfoINS0_15UnknownFieldSetEEEPKcibRKNS1_13ExtensionInfoEPNS1_16InternalMetadataES6_PNS1_12ParseContextE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet23ParseMessageSetItemTmplINS0_7MessageENS0_15UnknownFieldSetEEEPKcS7_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE = comdat any

$_ZNK6google8protobuf8internal20RepeatedPtrFieldBase26SpaceUsedExcludingSelfLongINS1_18GenericTypeHandlerINS0_7MessageEEEEEmv = comdat any

$_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase24AddAllocatedSlowWithCopyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPNT_4TypeEPNS0_5ArenaESB_ = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPNS0_5ArenaEPNT_4TypeE = comdat any

$_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIiEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIlEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIjEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddImEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIbEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIfEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIdEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_19PackedEnumParserArgINS0_15UnknownFieldSetENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvS9_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_ZNS2_16ReadPackedVarintISG_EES9_S9_T_EUliE_EES9_S9_SI_SD_ = comdat any

$_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIlEEEERNS2_9ExtensionES7_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIjEEEERNS2_9ExtensionES7_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldImEEEERNS2_9ExtensionES7_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIbEEEERNS2_9ExtensionES7_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIfEEEERNS2_9ExtensionES7_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIdEEEERNS2_9ExtensionES7_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZNK6google8protobuf8internal20RepeatedPtrFieldBase26SpaceUsedExcludingSelfLongINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmv = comdat any

@.str = private unnamed_addr constant [77 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/extension_set_heavy.cc\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"prototype != nullptr\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"output->message_info.prototype != nullptr\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Extension factory's GetPrototype() returned nullptr; extension: \00", align 1
@_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE = external local_unnamed_addr constant [19 x i32], align 16
@_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E = external local_unnamed_addr global %"struct.std::atomic.69", align 1
@_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE = external local_unnamed_addr constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/extension_set_inl.h\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Non-primitive types can't be packed.\00", align 1
@_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E = external thread_local local_unnamed_addr global %"struct.google::protobuf::internal::ThreadSafeArena::ThreadCache", align 32

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon, align 8                ; 8 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !10  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %.sroa.3.0..sroa_idx, align 8
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val3, align 8, !tbaa !14
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISV_EEE3$_0NS2_8PrefetchEEEvT_S11_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr noundef nonnull byval(%class.anon) align 8 %4)
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EEE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 %.idx.i ; 5 uses
  %.not34.i.i = icmp eq i16 %.val, 0
  br i1 %.not34.i.i, label %.preheader23.i.i, label %.lr.ph.i.i

.preheader23.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val3, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.val3, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.n
  call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 32 ; 3 uses
  %i.t = add nuw nsw i32 %.025.i.i, 1
  %i.u = icmp ne ptr %i.s, %i.m
  %i.v = icmp samesign ult i32 %.025.i.i, 15
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader23.i.i, !llvm.loop !23

.preheader.i.i:                                   ; preds = %.lr.ph29.i.i, %.preheader23.i.i
  %.019.lcssa.i.i = phi ptr [ %.val3, %.preheader23.i.i ], [ %i.ae, %.lr.ph29.i.i ] ; 2 uses
  %.not2131.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2131.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %.128.i.i = phi ptr [ %i.af, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.ae, %.lr.ph29.i.i ], [ %.val3, %.preheader23.i.i ] ; 3 uses
  %i.x = load i32, ptr %.01927.i.i, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  call fastcc void @"_ZZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EEENK3$_0clEiRKNS2_9ExtensionE"(ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.ab = load i8, ptr %i.aa, align 2
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = load ptr, ptr %i.z, align 8
  %spec.select.i22.i.i = select i1 %i.ac, ptr %i.ad, ptr %i.z
  call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !31

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.12032.i.i = phi ptr [ %i.ai, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.ag = load i32, ptr %.12032.i.i, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  call fastcc void @"_ZZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EEENK3$_0clEiRKNS2_9ExtensionE"(ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ai, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !32

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EEE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %.preheader.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf8internal12ExtensionSet10GetMessageEPNS0_5ArenaEiPKNS0_10DescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.d = load i8, ptr %i.c, align 2               ; 2 uses
  %i.e = and i8 %i.d, 2
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = and i8 %i.d, 4
  %.not14 = icmp eq i8 %i.j, 0
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %4, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %3)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ %i.s, %bb.e ], [ %i.k, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet14MutableMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = call noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet17MaybeNewExtensionEPNS0_5ArenaEiPKNS0_15FieldDescriptorEPPNS2_9ExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !45
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.f, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 10 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 0, ptr %i.m, align 1, !tbaa !50
  %i.n = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.o = load ptr, ptr %3, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.n)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 10 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2
  %i.v = and i8 %i.u, -5
  store i8 %i.v, ptr %i.t, align 2
  %i.w = call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef %1)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !46
  store ptr %i.w, ptr %i.x, align 8, !tbaa !22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, -3
  store i8 %i.ab, ptr %i.z, align 2
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !22
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 2             ; 2 uses
  %i.ag = and i8 %i.af, -3
  store i8 %i.ag, ptr %i.ae, align 2
  %i.ah = and i8 %i.af, 4
  %.not = icmp eq i8 %i.ah, 0
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.ak = load ptr, ptr %3, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.aj)
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.ac, %bb.b ], [ %i.ar, %bb.d ], [ %i.ai, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet17MaybeNewExtensionEPNS0_5ArenaEiPKNS0_15FieldDescriptorEPPNS2_9ExtensionE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet14ReleaseMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.b) ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, 4
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.i = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.j = load ptr, ptr %3, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.i)
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef %1) ; 3 uses
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #16
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %.not22 = icmp eq ptr %1, null
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef null) ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @_ZN6google8protobuf11MessageLite21CheckTypeAndMergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.e, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.c ], [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !35
  tail call void @_ZN6google8protobuf8internal12ExtensionSet5EraseEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.aa)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.019 = phi ptr [ %.0, %bb.h ], [ null, %bb.a ]
  ret ptr %.019
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

end_hunk_0
