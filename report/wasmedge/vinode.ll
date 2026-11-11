Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vinode?download=true
inline.NumInlined: 1231
inline.NumDeleted: 470
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::allocator.66" = type { i8 }
%"class.WasmEdge::Host::WASI::INode" = type { %"struct.WasmEdge::Host::WASI::FdHolder.base", [3 x i8], %"class.std::optional", %"struct.WasmEdge::Host::WASI::DirHolder" }
%"struct.WasmEdge::Host::WASI::FdHolder.base" = type <{ i32, i8 }>
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<stat>::_Storage", i8 }>
%"union.std::_Optional_payload_base<stat>::_Storage" = type { %struct.stat }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"struct.WasmEdge::Host::WASI::DirHolder" = type { ptr, i64, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cxx20::expected" = type { %"struct.cxx20::detail::expected_move_assign_base" }
%"struct.cxx20::detail::expected_move_assign_base" = type { %"struct.cxx20::detail::expected_copy_assign_base" }
%"struct.cxx20::detail::expected_copy_assign_base" = type { %"struct.cxx20::detail::expected_move_base" }
%"struct.cxx20::detail::expected_move_base" = type { %"struct.cxx20::detail::expected_copy_base" }
%"struct.cxx20::detail::expected_copy_base" = type { %"struct.cxx20::detail::expected_operations_base" }
%"struct.cxx20::detail::expected_operations_base" = type { %"struct.cxx20::detail::expected_view_base" }
%"struct.cxx20::detail::expected_view_base" = type { %"struct.cxx20::detail::expected_storage_base" }
%"struct.cxx20::detail::expected_storage_base" = type { i8, %union.anon.3 }
%union.anon.3 = type { %"class.std::shared_ptr" }
%"class.cxx20::expected.4" = type { %"struct.cxx20::detail::expected_move_assign_base.5" }
%"struct.cxx20::detail::expected_move_assign_base.5" = type { %"struct.cxx20::detail::expected_copy_assign_base.6" }
%"struct.cxx20::detail::expected_copy_assign_base.6" = type { %"struct.cxx20::detail::expected_move_base.7" }
%"struct.cxx20::detail::expected_move_base.7" = type { %"struct.cxx20::detail::expected_copy_base.8" }
%"struct.cxx20::detail::expected_copy_base.8" = type { %"struct.cxx20::detail::expected_operations_base.9" }
%"struct.cxx20::detail::expected_operations_base.9" = type { %"struct.cxx20::detail::expected_view_base.10" }
%"struct.cxx20::detail::expected_view_base.10" = type { %"struct.cxx20::detail::expected_storage_base.11" }
%"struct.cxx20::detail::expected_storage_base.11" = type { i8, %union.anon.12 }
%union.anon.12 = type { %"class.WasmEdge::Host::WASI::INode" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.cxx20::expected.36" = type { %"struct.cxx20::detail::expected_move_assign_base.37" }
%"struct.cxx20::detail::expected_move_assign_base.37" = type { %"struct.cxx20::detail::expected_copy_assign_base.38" }
%"struct.cxx20::detail::expected_copy_assign_base.38" = type { %"struct.cxx20::detail::expected_move_base.39" }
%"struct.cxx20::detail::expected_move_base.39" = type { %"struct.cxx20::detail::expected_copy_base.40" }
%"struct.cxx20::detail::expected_copy_base.40" = type { %"struct.cxx20::detail::expected_operations_base.41" }
%"struct.cxx20::detail::expected_operations_base.41" = type { %"struct.cxx20::detail::expected_view_base.42" }
%"struct.cxx20::detail::expected_view_base.42" = type { %"struct.cxx20::detail::expected_storage_base.43" }
%"struct.cxx20::detail::expected_storage_base.43" = type { i8, %union.anon.44 }
%union.anon.44 = type { %"class.std::vector.45" }
%"class.std::vector.45" = type { %"struct.std::_Vector_base.46" }
%"struct.std::_Vector_base.46" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.57" = type { %"struct.std::_Vector_base.58" }
%"struct.std::_Vector_base.58" = type { %"struct.std::_Vector_base<std::shared_ptr<WasmEdge::Host::WASI::VINode>, std::allocator<std::shared_ptr<WasmEdge::Host::WASI::VINode>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<WasmEdge::Host::WASI::VINode>, std::allocator<std::shared_ptr<WasmEdge::Host::WASI::VINode>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<WasmEdge::Host::WASI::VINode>, std::allocator<std::shared_ptr<WasmEdge::Host::WASI::VINode>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<WasmEdge::Host::WASI::VINode>, std::allocator<std::shared_ptr<WasmEdge::Host::WASI::VINode>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.__wasi_filestat_t = type { i64, i64, i8, i64, i64, i64, i64, i64 }
%"struct.cxx20::span.51" = type { %"class.cxx20::detail::span_storage.52" }
%"class.cxx20::detail::span_storage.52" = type { ptr, i64 }
%"struct.cxx20::span.53" = type { %"class.cxx20::detail::span_storage.54" }
%"class.cxx20::detail::span_storage.54" = type { ptr, i64 }
%"struct.cxx20::span.55" = type { %"class.cxx20::detail::span_storage.56" }
%"class.cxx20::detail::span_storage.56" = type { ptr, i64 }

$_ZN8WasmEdge4Host4WASI5INodeD2Ev = comdat any

$_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI5INodeE14__wasi_errno_tLb0ELb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJNS2_5INodeER15__wasi_rights_tSB_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJNS2_5INodeER15__wasi_rights_tSB_EEES4_DpOT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJNS2_5INodeER15__wasi_rights_tSB_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_ = comdat any

$_ZSt10_ConstructIN8WasmEdge4Host4WASI6VINodeEJNS2_5INodeER15__wasi_rights_tS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_DpOT0_ = comdat any

$_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [92 x i8] c"St23_Sp_counted_ptr_inplaceIN8WasmEdge4Host4WASI6VINodeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1

@_ZN8WasmEdge4Host4WASI6VINodeC1ENS1_5INodeE15__wasi_rights_tS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = hidden unnamed_addr alias void (ptr, ptr, i64, i64, ptr), ptr @_ZN8WasmEdge4Host4WASI6VINodeC2ENS1_5INodeE15__wasi_rights_tS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_ZN8WasmEdge4Host4WASI6VINodeC2ENS1_5INodeE15__wasi_rights_tS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 20), (24, 232)) %0, ptr nofreeobj noundef align 8 captures(none) dereferenceable(200) %1, i64 noundef %2, i64 noundef %3, ptr nofreeobj noundef align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %1, align 8, !tbaa !11
  store i32 -1, ptr %1, align 8, !tbaa !11
  store i32 %i.b, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, 1
  %i.g = load i8, ptr %i.c, align 4
  %i.h = and i8 %i.g, -2
  %i.i = or disjoint i8 %i.h, %i.f
  store i8 %i.i, ptr %i.c, align 4
  %i.j = load i8, ptr %i.d, align 4
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.d, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.m, i64 152, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 0, i64 40, i1 false)
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !17
  store ptr %i.q, ptr %i.n, align 8, !tbaa !17
  store ptr null, ptr %i.o, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  store i64 %i.s, ptr %i.p, align 8, !tbaa !19
  store i64 0, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %2, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %3, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !43
  %i.x = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.x, ptr %i.v, align 8, !tbaa !44
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !46
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !45
  store ptr %i.y, ptr %4, align 8, !tbaa !44
  store i64 0, ptr %i.af, align 8, !tbaa !45
  store i8 0, ptr %i.y, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge4Host4WASI6VINode5stdInE15__wasi_rights_tS3_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.66", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.WasmEdge::Host::WASI::INode", align 8 ; 11 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !47
  store i64 %2, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN8WasmEdge4Host4WASI5INode5stdInEv(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::Host::WASI::INode") align 8 %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !89
  invoke void @_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJNS2_5INodeER15__wasi_rights_tSB_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !89
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 160
  call void @_ZN8WasmEdge4Host4WASI9DirHolder5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge4Host4WASI9DirHolderD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZN8WasmEdge4Host4WASI9DirHolderD2Ev.exit.i

_ZN8WasmEdge4Host4WASI9DirHolderD2Ev.exit.i:      ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit

bb.d:                                             ; preds = %_ZN8WasmEdge4Host4WASI9DirHolderD2Ev.exit.i
  call void @_ZN8WasmEdge4Host4WASI8FdHolder5resetEv(ptr noundef nonnull align 8 dereferenceable(200) %4) #19
  br label %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit

_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit:            ; preds = %_ZN8WasmEdge4Host4WASI9DirHolderD2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge4Host4WASI5INodeD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge4Host4WASI6VINode10pathRenameESt10shared_ptrIS2_ESt17basic_string_viewIcSt11char_traitsIcEES4_S8_:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !45
  %i.al = load ptr, ptr %10, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.an = load ptr, ptr %3, align 8, !tbaa !66
  %.sroa.0.0.copyload.i16 = load i64, ptr %7, align 8, !tbaa !19 ; 5 uses
  %.sroa.2.0.copyload.i18 = load ptr, ptr %i.d, align 8, !tbaa !69 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ao, ptr %11, align 8, !tbaa !43
  %i.ap = icmp eq ptr %.sroa.2.0.copyload.i18, null
  %i.aq = icmp ne i64 %.sroa.0.0.copyload.i16, 0
  %or.cond.i.i.i19 = and i1 %i.aq, %i.ap
  br i1 %or.cond.i.i.i19, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #22
          to label %.noexc22 unwind label %bb.s

.noexc22:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.sroa.0.0.copyload.i16, ptr %i.a, align 8, !tbaa !19
  %i.ar = icmp ugt i64 %.sroa.0.0.copyload.i16, 15
  br i1 %i.ar, label %.noexc.i.i.i21, label %._crit_edge.i.i.i.i20

.noexc.i.i.i21:                                   ; preds = %bb.m
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.s   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i.i.i21
  store ptr %i.as, ptr %11, align 8, !tbaa !44
  %i.at = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i20

._crit_edge.i.i.i.i20:                            ; preds = %.noexc23, %bb.m
  %i.au = phi ptr [ %i.as, %.noexc23 ], [ %i.ao, %bb.m ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i16, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i20
  %i.av = load i8, ptr %.sroa.2.0.copyload.i18, align 1, !tbaa !46
  store i8 %i.av, ptr %i.au, align 1, !tbaa !46
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.sroa.2.0.copyload.i18, i64 %.sroa.0.0.copyload.i16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i20
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !45
  %i.ay = load ptr, ptr %11, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bb = call i32 @_ZN8WasmEdge4Host4WASI5INode10pathRenameERKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_SA_(ptr noundef nonnull align 8 dereferenceable(200) %i.aa, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(200) %i.ba, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %11) #19 ; 3 uses
  %.sroa.658.0.extract.shift = lshr i32 %i.bb, 16
  %.sroa.658.0.extract.trunc = trunc nuw i32 %.sroa.658.0.extract.shift to i16
  %i.bc = load ptr, ptr %11, align 8, !tbaa !44   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !46
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bg = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ab
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bk = ptrtoint ptr %i.y to i64
  %i.bl = ptrtoint ptr %i.w to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.bm) #20
  br label %bb.u

bb.r:                                             ; preds = %.noexc.i.i.i, %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.s:                                             ; preds = %.noexc.i.i.i21, %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ab
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.s
  %i.br = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.bo, %bb.s ] ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i31, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bt = ptrtoint ptr %i.y to i64
  %i.bu = ptrtoint ptr %i.w to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.bv) #20
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN8WasmEdge4Host4WASI6VINode11resolvePathERSt10shared_ptrIS2_ERSt17basic_string_viewIcSt11char_traitsIcEEb.exit
  %i.bw = load i16, ptr %i.u, align 8, !tbaa !55
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34

bb.u:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bx = and i32 %i.bb, 65280
  %i.by = and i32 %i.bb, 255
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34: ; preds = %bb.u, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %.sroa.658.066 = phi i16 [ %i.bw, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %.sroa.658.0.extract.trunc, %bb.u ] ; 2 uses
  %.sroa.657.064 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.bx, %bb.u ] ; 2 uses
  %.sroa.056.062 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.by, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.not.i.i.i35 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i35, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit42, label %bb.v

bb.v:                                             ; preds = %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34
  %i.bz = ptrtoint ptr %i.r to i64
  %i.ca = ptrtoint ptr %i.p to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.cb) #20
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit42

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.not.i.i.i37 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i37, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit40, label %bb.w

bb.w:                                             ; preds = %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit
  %i.cc = ptrtoint ptr %i.r to i64
  %i.cd = ptrtoint ptr %i.p to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ce) #20
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit40

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit40: ; preds = %bb.w, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  resume { ptr, i32 } %.pn.pn.pn

_ZNSt6vectorIcSaIcEED2Ev.exit36:                  ; preds = %bb.c
  %i.cf = load i16, ptr %i.o, align 8, !tbaa !55
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit42

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit42: ; preds = %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34, %bb.v, %_ZNSt6vectorIcSaIcEED2Ev.exit36
  %.sroa.658.175 = phi i16 [ %i.cf, %_ZNSt6vectorIcSaIcEED2Ev.exit36 ], [ %.sroa.658.066, %bb.v ], [ %.sroa.658.066, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34 ]
  %.sroa.657.173 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit36 ], [ %.sroa.657.064, %bb.v ], [ %.sroa.657.064, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34 ]
  %.sroa.056.171 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit36 ], [ %.sroa.056.062, %bb.v ], [ %.sroa.056.062, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.cg = zext i16 %.sroa.658.175 to i32
  %i.ch = shl nuw i32 %i.cg, 16
  %i.ci = or disjoint i32 %.sroa.657.173, %i.ch
  %i.cj = or disjoint i32 %i.ci, %.sroa.056.171
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit42
  %.sroa.658.2 = phi i32 [ %i.cj, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit42 ], [ 4980736, %bb.a ], [ 4980736, %bb.b ]
  ret i32 %.sroa.658.2
}

; Function Attrs: nounwind
declare i32 @_ZN8WasmEdge4Host4WASI5INode10pathRenameERKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_SA_(ptr noundef nonnull align 8 dereferenceable(200), ptr nofreeobj noundef align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(200), ptr nofreeobj noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden i32 @_ZN8WasmEdge4Host4WASI6VINode11pathSymlinkESt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIS2_ES6_(i64 %0, ptr %1, ptr nofreeobj noundef align 8 captures(none) dereferenceable(16) %2, i64 %3, ptr %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.cxx20::expected.36", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i64 %3, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %4, ptr %i.d, align 8
  %i.e = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  %i.h = and i64 %i.g, 16777216
  %.not48 = icmp eq i64 %i.h, 0
  br i1 %.not48, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN8WasmEdge4Host4WASI6VINode11resolvePathERSt10shared_ptrIS2_ERSt17basic_string_viewIcSt11char_traitsIcEE20__wasi_lookupflags_tNS1_3VFS5FlagsEhbPj(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.36") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext true, ptr noundef nonnull %i.c)
  %i.i = load i8, ptr %6, align 8, !tbaa !72, !range !52, !noundef !53
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIcSaIcEED2Ev.exit23.thread

_ZNSt6vectorIcSaIcEED2Ev.exit23.thread:           ; preds = %bb.c
  %9 = load i16, ptr %i.k, align 8, !tbaa !55
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit25

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not56.i = icmp eq i64 %0, 0
  br i1 %.not56.i, label %._crit_edge.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.d
  %10 = load ptr, ptr %2, align 8, !tbaa !66
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %12, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !tbaa !19
  br label %bb.j

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader.i: ; preds = %bb.d
  %13 = load i32, ptr %i.c, align 4, !tbaa !11
  %14 = zext i32 %13 to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %43, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader.i
  %.0753.i = phi i64 [ %.1.i, %43 ], [ %14, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader.i ] ; 5 uses
  %.sroa.021.052.i = phi i64 [ %.sroa.0.039.i, %43 ], [ %0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader.i ] ; 6 uses
  %.sroa.8.051.i = phi ptr [ %.sroa.5.041.i, %43 ], [ %1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader.i ] ; 7 uses
  %15 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.8.051.i, i32 noundef 47, i64 noundef %.sroa.021.052.i) #19 ; 3 uses
  %.not.i.i = icmp eq ptr %15, null
  br i1 %.not.i.i, label %.thread33.i, label %16

16:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %.sroa.8.051.i to i64
  %19 = sub i64 %17, %18                          ; 4 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.021.052.i, i64 %19)
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = add nuw i64 %19, 1                        ; 3 uses
  %.not.i = icmp ult i64 %19, %.sroa.021.052.i
  br i1 %.not.i, label %24, label %23

23:                                               ; preds = %21
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i64 noundef %22, i64 noundef %.sroa.021.052.i) #22
          to label %.noexc.i unwind label %44

.noexc.i:                                         ; preds = %23
  unreachable

24:                                               ; preds = %21
  %25 = sub nuw i64 %.sroa.021.052.i, %22
  %26 = getelementptr inbounds nuw i8, ptr %.sroa.8.051.i, i64 %22
  br label %27

27:                                               ; preds = %24, %16
  %.sroa.0.0.i = phi i64 [ %25, %24 ], [ 0, %16 ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %26, %24 ], [ null, %16 ] ; 2 uses
  %28 = icmp eq ptr %15, %.sroa.8.051.i
  br i1 %28, label %43, label %.thread33.i, !llvm.loop !129

.thread33.i:                                      ; preds = %27, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.sroa.5.040.i = phi ptr [ %.sroa.5.0.i, %27 ], [ null, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 3 uses
  %.sroa.0.038.i = phi i64 [ %.sroa.0.0.i, %27 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 3 uses
  %.sroa.speculated.i3137.i = phi i64 [ %.sroa.speculated.i.i, %27 ], [ %.sroa.021.052.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  switch i64 %.sroa.speculated.i3137.i, label %.thread42.i [
    i64 1, label %29
    i64 2, label %32
  ]

29:                                               ; preds = %.thread33.i
  %30 = load i8, ptr %.sroa.8.051.i, align 1, !tbaa !46
  %31 = icmp eq i8 %30, 46
  br i1 %31, label %43, label %.thread42.i, !llvm.loop !129

32:                                               ; preds = %.thread33.i
  %33 = load i8, ptr %.sroa.8.051.i, align 1, !tbaa !46
  %34 = icmp eq i8 %33, 46
  br i1 %34, label %35, label %.thread42.i

35:                                               ; preds = %32
  %36 = getelementptr inbounds nuw i8, ptr %.sroa.8.051.i, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !46
  %38 = icmp eq i8 %37, 46
  br i1 %38, label %39, label %.thread42.i

39:                                               ; preds = %35
  %40 = add nsw i64 %.0753.i, -1
  %41 = icmp slt i64 %.0753.i, 1
  br i1 %41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %43

.thread42.i:                                      ; preds = %35, %32, %29, %.thread33.i
  %42 = add nsw i64 %.0753.i, 1
  br label %43

43:                                               ; preds = %.thread42.i, %39, %29, %27
  %.sroa.5.041.i = phi ptr [ %.sroa.5.040.i, %.thread42.i ], [ %.sroa.5.040.i, %39 ], [ %.sroa.5.0.i, %27 ], [ %.sroa.5.040.i, %29 ]
  %.sroa.0.039.i = phi i64 [ %.sroa.0.038.i, %.thread42.i ], [ %.sroa.0.038.i, %39 ], [ %.sroa.0.0.i, %27 ], [ %.sroa.0.038.i, %29 ] ; 2 uses
  %.1.i = phi i64 [ %42, %.thread42.i ], [ %40, %39 ], [ %.0753.i, %27 ], [ %.0753.i, %29 ]
  %.not57.i = icmp eq i64 %.sroa.0.039.i, 0
  br i1 %.not57.i, label %bb.e, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

44:                                               ; preds = %23
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #23
  unreachable

bb.e:                                             ; preds = %43
  %i.o = load ptr, ptr %2, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !43
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #22
          to label %.noexc5 unwind label %bb.p

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %0, ptr %i.b, align 8, !tbaa !19
  %i.s = icmp ugt i64 %0, 15
  br i1 %i.s, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc6 unwind label %bb.p    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i.i
  store ptr %i.t, ptr %7, align 8, !tbaa !44
  %i.u = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.u, ptr %i.q, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc6, %bb.g
  %i.v = phi ptr [ %i.t, %.noexc6 ], [ %i.q, %bb.g ] ; 2 uses
  %cond = icmp eq i64 %0, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.w, ptr %i.v, align 1, !tbaa !46
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %1, i64 %0, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.thread
  %47 = phi ptr [ %12, %._crit_edge.i.i.i.i.thread ], [ %i.q, %bb.i ], [ %i.q, %bb.h ] ; 4 uses
  %48 = phi ptr [ %11, %._crit_edge.i.i.i.i.thread ], [ %i.p, %bb.i ], [ %i.p, %bb.h ]
  %i.x = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !45
  %i.z = load ptr, ptr %7, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.sroa.0.0.copyload.i7 = load i64, ptr %5, align 8, !tbaa !19 ; 5 uses
  %.sroa.2.0.copyload.i9 = load ptr, ptr %i.d, align 8, !tbaa !69 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.ab, ptr %8, align 8, !tbaa !43
  %i.ac = icmp eq ptr %.sroa.2.0.copyload.i9, null
  %i.ad = icmp ne i64 %.sroa.0.0.copyload.i7, 0
  %or.cond.i.i.i10 = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i.i10, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #22
          to label %.noexc13 unwind label %bb.q

.noexc13:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.sroa.0.0.copyload.i7, ptr %i.a, align 8, !tbaa !19
  %i.ae = icmp ugt i64 %.sroa.0.0.copyload.i7, 15
  br i1 %i.ae, label %.noexc.i.i.i12, label %._crit_edge.i.i.i.i11

.noexc.i.i.i12:                                   ; preds = %bb.l
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.q   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i.i.i12
  store ptr %i.af, ptr %8, align 8, !tbaa !44
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i11

._crit_edge.i.i.i.i11:                            ; preds = %.noexc14, %bb.l
  %i.ah = phi ptr [ %i.af, %.noexc14 ], [ %i.ab, %bb.l ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i7, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i11
  %i.ai = load i8, ptr %.sroa.2.0.copyload.i9, align 1, !tbaa !46
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !46
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.sroa.2.0.copyload.i9, i64 %.sroa.0.0.copyload.i7, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i11
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !45
  %i.al = load ptr, ptr %8, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.an = call i32 @_ZNK8WasmEdge4Host4WASI5INode11pathSymlinkENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(200) %48, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %8) #19 ; 4 uses
  %.sroa.637.0.extract.shift = lshr i32 %i.an, 8  ; 2 uses
  %.sroa.638.0.extract.shift = lshr i32 %i.an, 16
  %.sroa.638.0.extract.trunc = trunc nuw i32 %.sroa.638.0.extract.shift to i16 ; 2 uses
  %i.ao = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.as = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.at = icmp eq ptr %i.as, %47
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %47, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.p:                                             ; preds = %.noexc.i.i.i, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.q:                                             ; preds = %.noexc.i.i.i12, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %47
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.q
  %i.ba = load i64, ptr %47, align 8, !tbaa !46
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.p
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.ax, %bb.q ]
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bc = ptrtoint ptr %i.n to i64
  %i.bd = ptrtoint ptr %i.l to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.be) #20
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %.sroa.036.0 = phi i32 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %39 ]
  %.sroa.637.0 = phi i32 [ %.sroa.637.0.extract.shift, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.sroa.637.0.extract.shift, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %39 ]
  %.sroa.638.0 = phi i16 [ %.sroa.638.0.extract.trunc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.sroa.638.0.extract.trunc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 63, %39 ]
  %.not.i.i.i22 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i22, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bf = ptrtoint ptr %i.n to i64
  %i.bg = ptrtoint ptr %i.l to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.bh) #20
  br label %bb.t

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.s
  %i.bi = shl nuw i32 %.sroa.637.0, 8
  %i.bj = and i32 %i.bi, 65280
  %i.bk = and i32 %.sroa.036.0, 255
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit25

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit25: ; preds = %bb.t, %_ZNSt6vectorIcSaIcEED2Ev.exit23.thread
  %.sroa.638.146 = phi i16 [ %9, %_ZNSt6vectorIcSaIcEED2Ev.exit23.thread ], [ %.sroa.638.0, %bb.t ]
  %.sroa.637.144 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit23.thread ], [ %i.bj, %bb.t ]
  %.sroa.036.142 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit23.thread ], [ %i.bk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bl = zext i16 %.sroa.638.146 to i32
  %i.bm = shl nuw i32 %i.bl, 16
  %i.bn = or disjoint i32 %.sroa.637.144, %i.bm
  %i.bo = or disjoint i32 %i.bn, %.sroa.036.142
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.a, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit25
  %.sroa.638.2 = phi i32 [ 524288, %bb.a ], [ %i.bo, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit25 ], [ 4980736, %bb.b ]
  ret i32 %.sroa.638.2
}

; Function Attrs: nounwind
declare i32 @_ZNK8WasmEdge4Host4WASI5INode11pathSymlinkENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(200), ptr nofreeobj noundef align 8 dereferenceable(32), ptr nofreeobj noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden i32 @_ZN8WasmEdge4Host4WASI6VINode14pathUnlinkFileESt10shared_ptrIS2_ESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofreeobj noundef align 8 captures(none) dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %4 = alloca %"class.cxx20::expected.36", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i64 %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = and i64 %i.e, 67108864
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN8WasmEdge4Host4WASI6VINode11resolvePathERSt10shared_ptrIS2_ERSt17basic_string_viewIcSt11char_traitsIcEE20__wasi_lookupflags_tNS1_3VFS5FlagsEhbPj(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.36") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext true, ptr noundef null)
  %i.g = load i8, ptr %4, align 8, !tbaa !72, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !66
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !19 ; 5 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !69 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !43
  %i.o = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.p = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.p, %i.o
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #22
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !19
  %i.q = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.q, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i.i.i
  store ptr %i.r, ptr %5, align 8, !tbaa !44
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.s, ptr %i.n, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc4, %bb.e
  %i.t = phi ptr [ %i.r, %.noexc4 ], [ %i.n, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !46
  store i8 %i.u, ptr %i.t, align 1, !tbaa !46
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = load ptr, ptr %5, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aa = call i32 @_ZNK8WasmEdge4Host4WASI5INode14pathUnlinkFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(200) %i.z, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5) #19 ; 3 uses
  %.sroa.415.0.extract.shift = lshr i32 %i.aa, 16
  %i.ab = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !46
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = ptrtoint ptr %i.l to i64
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ah) #20
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i.i.i, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i5, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = ptrtoint ptr %i.l to i64
  %i.ak = ptrtoint ptr %i.j to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.al) #20
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.ai

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.b
  %i.am = load i16, ptr %i.i, align 8, !tbaa !55
  %i.an = zext i16 %i.am to i32
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit8

bb.l:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = and i32 %i.aa, 65280
  %i.ap = and i32 %i.aa, 255
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit8

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit8: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %.sroa.415.023 = phi i32 [ %i.an, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %.sroa.415.0.extract.shift, %bb.l ]
  %.sroa.4.021 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.ao, %bb.l ]
  %.sroa.014.019 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.ap, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.aq = shl nuw i32 %.sroa.415.023, 16
  %i.ar = or disjoint i32 %.sroa.4.021, %i.aq
  %i.as = or disjoint i32 %i.ar, %.sroa.014.019
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit8
  %.sroa.014.0.insert.insert = phi i32 [ %i.as, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit8 ], [ 4980736, %bb.a ]
  ret i32 %.sroa.014.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @_ZNK8WasmEdge4Host4WASI5INode14pathUnlinkFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(200), ptr nofreeobj noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN8WasmEdge4Host4WASI6VINode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 noundef %5, ptr nofree noundef readonly byval(%"struct.cxx20::span.51") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"struct.cxx20::span.53") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"struct.cxx20::span.55") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"struct.cxx20::span.55") align 8 captures(none) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.cxx20::span.51", align 8  ; 3 uses
  %12 = alloca %"struct.cxx20::span.53", align 8  ; 3 uses
  %13 = alloca %"struct.cxx20::span.55", align 8  ; 3 uses
  %14 = alloca %"struct.cxx20::span.55", align 8  ; 3 uses
  %i.a = load ptr, ptr %6, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !134
  store ptr %i.a, ptr %11, align 8, !tbaa !133
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !134
  %i.e = load ptr, ptr %7, align 8, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !138
  store ptr %i.e, ptr %12, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !138
  %i.i = load ptr, ptr %8, align 8, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !142
  store ptr %i.i, ptr %13, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !142
  %i.m = load ptr, ptr %9, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !142
  store ptr %i.m, ptr %14, align 8, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !142
  %i.q = tail call i32 @_ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 noundef %5, ptr noundef nonnull byval(%"struct.cxx20::span.51") align 8 %11, ptr noundef nonnull byval(%"struct.cxx20::span.53") align 8 %12, ptr noundef nonnull byval(%"struct.cxx20::span.55") align 8 %13, ptr noundef nonnull byval(%"struct.cxx20::span.55") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %10) #19
  ret i32 %i.q
}

; Function Attrs: nounwind
declare i32 @_ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj(i64, ptr, i64, ptr, ptr noundef nonnull align 4 dereferenceable(28), i32 noundef, ptr noundef byval(%"struct.cxx20::span.51") align 8, ptr noundef byval(%"struct.cxx20::span.53") align 8, ptr noundef byval(%"struct.cxx20::span.55") align 8, ptr noundef byval(%"struct.cxx20::span.55") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
end_hunk_1
