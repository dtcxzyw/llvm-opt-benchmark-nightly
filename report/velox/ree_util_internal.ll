inline.NumInlined: 576
inline.NumDeleted: 305
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::Status" = type { ptr }
%"class.arrow::internal::AlignedStorage" = type { %"union.std::aligned_storage<16, 8>::type" }
%"union.std::aligned_storage<16, 8>::type" = type { [16 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.14" }
%"struct.std::_Head_base.14" = type { ptr }
%"class.arrow::Result.4" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.7" }
%"class.arrow::internal::AlignedStorage.7" = type { %"union.std::aligned_storage<8, 8>::type" }
%"union.std::aligned_storage<8, 8>::type" = type { [8 x i8] }
%"class.arrow::Result.9" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.12" }
%"class.arrow::internal::AlignedStorage.12" = type { %"union.std::aligned_storage<16, 8>::type" }
%"class.std::shared_ptr.15" = type { %"class.std::__shared_ptr.16" }
%"class.std::__shared_ptr.16" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.23" = type { %"class.std::__shared_ptr.24" }
%"class.std::__shared_ptr.24" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.48" = type { i8 }
%"class.std::vector.31" = type { %"struct.std::_Vector_base.32" }
%"struct.std::_Vector_base.32" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::ArrayData>, std::allocator<std::shared_ptr<arrow::ArrayData>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::ArrayData>, std::allocator<std::shared_ptr<arrow::ArrayData>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::ArrayData>, std::allocator<std::shared_ptr<arrow::ArrayData>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::ArrayData>, std::allocator<std::shared_ptr<arrow::ArrayData>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.62" = type { i8 }
%"class.std::shared_ptr.39" = type { %"class.std::__shared_ptr.40" }
%"class.std::__shared_ptr.40" = type { ptr, %"class.std::__shared_count" }

$_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE = comdat any

$_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRKSt10shared_ptrINS0_8DataTypeEESB_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZSt10_ConstructIN5arrow17RunEndEncodedTypeEJRKSt10shared_ptrINS0_8DataTypeEES6_EEvPT_DpOT0_ = comdat any

$_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt14default_deleteIN5arrow6BufferEE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow6BufferEE = linkonce_odr constant [36 x i8] c"St14default_deleteIN5arrow6BufferEE\00", comdat, align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [91 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@switch.table._ZN5arrow7compute8internal8ree_util22PreallocateValuesArrayERKSt10shared_ptrINS_8DataTypeEEblPNS_10MemoryPoolEl = private unnamed_addr constant [23 x i64] [i64 4, i64 4, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 8, i64 8], align 8

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal8ree_util20AllocateValuesBufferElRKNS_8DataTypeEPNS_10MemoryPoolEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %7 = alloca %"class.arrow::Result.4", align 8   ; 10 uses
  %8 = alloca %"class.arrow::Result.4", align 8   ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, i64 noundef %1, ptr noundef %3)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  switch i32 %i.g, label %_ZN5arrow14is_fixed_widthENS_4Type4typeE.exit [
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 8, label %bb.d
    i32 9, label %bb.d
    i32 10, label %bb.d
    i32 11, label %bb.d
    i32 12, label %bb.d
    i32 16, label %bb.d
    i32 17, label %bb.d
    i32 19, label %bb.d
    i32 20, label %bb.d
    i32 18, label %bb.d
    i32 33, label %bb.d
    i32 21, label %bb.d
    i32 37, label %bb.d
    i32 22, label %bb.d
    i32 29, label %bb.d
    i32 43, label %bb.d
    i32 44, label %bb.d
    i32 23, label %bb.d
    i32 24, label %bb.d
    i32 15, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.h = load ptr, ptr %2, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %1, %i.l
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.4") align 8 %7, i64 noundef %i.m, ptr noundef %3)
  store ptr null, ptr %0, align 8, !tbaa !28
  %i.n = load ptr, ptr %7, align 8, !tbaa !28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusaSEOS0_.exit.i, label %bb.f, !prof !31

_ZN5arrow6StatusaSEOS0_.exit.i:                   ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !32
  store i64 %i.q, ptr %6, align 8, !tbaa !35, !alias.scope !32
  store ptr null, ptr %i.p, align 8, !tbaa !35, !noalias !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusaSEOS0_.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #17
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i: ; preds = %_ZN5arrow6StatusaSEOS0_.exit.i
  %i.u = load ptr, ptr %6, align 8, !tbaa !35     ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.u) #16, !inline_history !37
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #17
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit: ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i, %bb.f
  %i.aa = load ptr, ptr %7, align 8, !tbaa !28
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !31

bb.h:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ad) #16, !inline_history !38
  %.pr.pre.i = load ptr, ptr %7, align 8, !tbaa !28
  %i.ah = icmp eq ptr %.pr.pre.i, null
  br i1 %i.ah, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !39

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.h, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.m

_ZN5arrow14is_fixed_widthENS_4Type4typeE.exit:    ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.4") align 8 %8, i64 noundef %4, ptr noundef %3)
  store ptr null, ptr %0, align 8, !tbaa !28
  %i.ai = load ptr, ptr %8, align 8, !tbaa !28
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN5arrow6StatusaSEOS0_.exit.i8, label %bb.j, !prof !31

_ZN5arrow6StatusaSEOS0_.exit.i8:                  ; preds = %_ZN5arrow14is_fixed_widthENS_4Type4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35, !noalias !40
  store i64 %i.al, ptr %5, align 8, !tbaa !35, !alias.scope !40
  store ptr null, ptr %i.ak, align 8, !tbaa !35, !noalias !40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i9 unwind label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusaSEOS0_.exit.i8
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #17
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i9: ; preds = %_ZN5arrow6StatusaSEOS0_.exit.i8
  %i.ap = load ptr, ptr %5, align 8, !tbaa !35    ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i10, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i12, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i11

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i11: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i9
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ap) #16, !inline_history !37
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i12

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i12: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i11, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE14ConstructValueISt10unique_ptrIS2_St14default_deleteIS2_EEEEvOT_.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit13

bb.j:                                             ; preds = %_ZN5arrow14is_fixed_widthENS_4Type4typeE.exit
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit13 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #17
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit13: ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i12, %bb.j
  %i.av = load ptr, ptr %8, align 8, !tbaa !28
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i14, !prof !31

bb.l:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ISt10unique_ptrIS2_St14default_deleteIS2_EEvEEONS0_IT_EE.exit13
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal8ree_util22PreallocateValuesArrayERKSt10shared_ptrINS_8DataTypeEEblPNS_10MemoryPoolEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.9") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.18", align 16   ; 14 uses
  %7 = alloca %"class.std::shared_ptr.23", align 16 ; 13 uses
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  %9 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %10 = alloca %"class.std::shared_ptr.23", align 8 ; 8 uses
  %11 = alloca %"class.arrow::Result.4", align 8  ; 12 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %13 = alloca [3 x %"class.std::shared_ptr.23"], align 16 ; 15 uses
  %14 = alloca [2 x %"class.std::shared_ptr.23"], align 16 ; 12 uses
  %15 = alloca %"class.std::shared_ptr.15", align 16 ; 5 uses
  %16 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %17 = alloca %"class.std::vector.18", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %2, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %3, ptr noundef %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %8, align 8, !tbaa !28
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !55, !noalias !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.e, ptr %7, align 16, !tbaa !55
  br label %bb.e

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %.pre = load ptr, ptr %8, align 8, !tbaa !28
  %i.f = icmp eq ptr %.pre, null
  br i1 %i.f, label %bb.e, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !96

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 8 uses
  %.not.i.i.i.i.i51 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i51, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.i, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !67
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #16, !inline_history !97
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #16, !inline_history !97
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.i ], [ %i.v, %bb.j ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.k, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !69

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #16
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %bb.e
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !28
  %.not.i.i52 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i52, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !39

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br i1 %i.b, label %bb.l, label %bb.cl

bb.l:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.x = load ptr, ptr %1, align 8, !tbaa !44
  invoke void @_ZN5arrow7compute8internal8ree_util20AllocateValuesBufferElRKNS_8DataTypeEPNS_10MemoryPoolEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef %4, i64 noundef %5)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %9, align 8, !tbaa !28
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.p, label %bb.n, !prof !31

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  br label %bb.cd

bb.o:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !104, !noalias !106 ; 3 uses
  store ptr %i.ac, ptr %10, align 8, !tbaa !104, !alias.scope !106
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54, !noalias !106 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !54, !noalias !106
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !54, !alias.scope !106
  store ptr null, ptr %i.ab, align 8, !tbaa !104, !noalias !106
  %i.ag = load ptr, ptr %1, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !9
  %switch.tableidx = add i32 %i.ai, -13           ; 3 uses
  %i.aj = icmp ult i32 %switch.tableidx, 23
  %switch.shifted = lshr i32 6291459, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.aj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit

switch.lookup:                                    ; preds = %bb.p
  %i.ak = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow7compute8internal8ree_util22PreallocateValuesArrayERKSt10shared_ptrINS_8DataTypeEEblPNS_10MemoryPoolEl, i64 %i.ak
  %switch.load = load i64, ptr %switch.gep, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.al = add nsw i64 %3, 1
  %i.am = mul nsw i64 %switch.load, %i.al
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.4") align 8 %11, i64 noundef %i.am, ptr noundef %4)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %switch.lookup
  %i.an = load ptr, ptr %11, align 8, !tbaa !28
  %i.ao = icmp eq ptr %i.an, null                 ; 2 uses
  br i1 %i.ao, label %bb.t, label %bb.r, !prof !31

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  br label %bb.an

bb.s:                                             ; preds = %switch.lookup
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !35, !noalias !113 ; 2 uses
  store i64 %i.ar, ptr %12, align 8, !tbaa !35, !alias.scope !113
  store ptr null, ptr %i.aq, align 8, !tbaa !35, !noalias !113
  %.cast = inttoptr i64 %i.ar to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 0, i64 %switch.load, i1 false)
  %i.au = load ptr, ptr %12, align 8, !tbaa !35   ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !122, !range !123, !noundef !124
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !range !123
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false, !prof !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = select i1 %i.bd, ptr %i.bf, ptr null, !prof !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !125 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  %i.bk = sub nsw i64 %i.aw, %i.bi
  call void @llvm.memset.p0.i64(ptr align 1 %i.bj, i8 0, i64 %i.bk, i1 false)
  br label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

_ZN5arrow6Buffer11ZeroPaddingEv.exit:             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bm = load <2 x ptr>, ptr %7, align 16, !tbaa !55
  store ptr null, ptr %i.bl, align 8, !tbaa !54
  store <2 x ptr> %i.bm, ptr %13, align 16, !tbaa !55
  store ptr null, ptr %7, align 16, !tbaa !104
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit unwind label %.loopexit.loopexit119

_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %_ZN5arrow6Buffer11ZeroPaddingEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.ac, ptr %i.bo, align 16, !tbaa !104
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr null, ptr %i.ad, align 8, !tbaa !54
  store ptr %i.af, ptr %i.bp, align 8, !tbaa !54
  store ptr null, ptr %10, align 8, !tbaa !104
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 48
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %13, ptr noundef nonnull %i.bq)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %.loopexit.loopexit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !54 ; 8 uses
  %.not.i.i54 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i54, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bt, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !67
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #16, !inline_history !72
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #16, !inline_history !72
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58

bb.x:                                             ; preds = %bb.v
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i55 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56

bb.z:                                             ; preds = %bb.x
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i57 = phi i32 [ %i.bw, %bb.y ], [ %i.cg, %bb.z ]
  %i.ch = icmp eq i32 %.0.i.i.i.i57, 1
  br i1 %i.ch, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58, !prof !69

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #16
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56, %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !54 ; 8 uses
  %.not.i.i54.1 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i54.1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.1, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i55.1 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i55.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.1

bb.ae:                                            ; preds = %bb.ac
  %i.cq = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.1: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i57.1 = phi i32 [ %i.cn, %bb.ad ], [ %i.cq, %bb.ae ]
  %i.cr = icmp eq i32 %.0.i.i.i.i57.1, 1
  br i1 %i.cr, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.1, !prof !69

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #16
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.1

bb.ag:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ck, align 8, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !67
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #16, !inline_history !72
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #16, !inline_history !72
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.1

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.1: ; preds = %bb.ag, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.1, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !54 ; 8 uses
  %.not.i.i54.2 = icmp eq ptr %i.da, null
  br i1 %.not.i.i54.2, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.2, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.1
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i55.2 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i55.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.2

bb.ak:                                            ; preds = %bb.ai
  %i.dh = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.2

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.2: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i57.2 = phi i32 [ %i.de, %bb.aj ], [ %i.dh, %bb.ak ]
  %i.di = icmp eq i32 %.0.i.i.i.i57.2, 1
  br i1 %i.di, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.2, !prof !69

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.2
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #16
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.2

bb.am:                                            ; preds = %bb.ah
  store i32 0, ptr %i.db, align 8, !tbaa !65
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !67
  %i.dk = load ptr, ptr %i.da, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #16, !inline_history !72
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #16, !inline_history !72
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.2

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.2: ; preds = %bb.am, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.2, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit58.1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.dq = load ptr, ptr %12, align 8, !tbaa !35   ; 3 uses
  %.not.i59 = icmp eq ptr %i.dq, null
end_hunk_1
